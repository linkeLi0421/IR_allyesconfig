; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/gamecon.c_pt.bc'
source_filename = "../drivers/input/joystick/gamecon.c"
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
%struct.gc_config = type { [6 x i32], i32 }
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
%struct.gc = type { ptr, [5 x %struct.gc_pad], %struct.timer_list, [10 x i32], i32, i32, %struct.mutex }
%struct.gc_pad = type { ptr, i32, [32 x i8] }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.69 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.69 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author223 = internal constant [47 x i8] c"gamecon.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [68 x i8] c"gamecon.description=NES, SNES, N64, MultiSystem, PSX gamepad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [44 x i8] c"gamecon.file=drivers/input/joystick/gamecon\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [20 x i8] c"gamecon.license=GPL\00", section ".modinfo", align 1
@__param_str_map = internal constant [12 x i8] c"gamecon.map\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_map = internal constant %struct.kparam_array { i32 6, i32 4, ptr getelementptr (i8, ptr @gc_cfg, i64 24), ptr @param_ops_int, ptr @gc_cfg }, align 4
@__param_map = internal constant %struct.kernel_param { ptr @__param_str_map, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_map } }, section "__param", align 4
@__UNIQUE_ID_maptype227 = internal constant [34 x i8] c"gamecon.parmtype=map:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_map228 = internal constant [84 x i8] c"gamecon.parm=map:Describes first set of devices (<parport#>,<pad1>,<pad2>,..<pad5>)\00", section ".modinfo", align 1
@__param_str_map2 = internal constant [13 x i8] c"gamecon.map2\00", align 1
@__param_arr_map2 = internal constant %struct.kparam_array { i32 6, i32 4, ptr getelementptr (i8, ptr @gc_cfg, i64 52), ptr @param_ops_int, ptr getelementptr (i8, ptr @gc_cfg, i64 28) }, align 4
@__param_map2 = internal constant %struct.kernel_param { ptr @__param_str_map2, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_map2 } }, section "__param", align 4
@__UNIQUE_ID_map2type229 = internal constant [35 x i8] c"gamecon.parmtype=map2:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_map2230 = internal constant [50 x i8] c"gamecon.parm=map2:Describes second set of devices\00", section ".modinfo", align 1
@__param_str_map3 = internal constant [13 x i8] c"gamecon.map3\00", align 1
@__param_arr_map3 = internal constant %struct.kparam_array { i32 6, i32 4, ptr getelementptr (i8, ptr @gc_cfg, i64 80), ptr @param_ops_int, ptr getelementptr (i8, ptr @gc_cfg, i64 56) }, align 4
@__param_map3 = internal constant %struct.kernel_param { ptr @__param_str_map3, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_map3 } }, section "__param", align 4
@__UNIQUE_ID_map3type231 = internal constant [35 x i8] c"gamecon.parmtype=map3:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_map3232 = internal constant [49 x i8] c"gamecon.parm=map3:Describes third set of devices\00", section ".modinfo", align 1
@__param_str_psx_delay = internal constant [18 x i8] c"gamecon.psx_delay\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@gc_psx_delay = internal global { i32, [28 x i8] } { i32 25, [28 x i8] zeroinitializer }, align 32
@__param_psx_delay = internal constant %struct.kernel_param { ptr @__param_str_psx_delay, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @gc_psx_delay } }, section "__param", align 4
@__UNIQUE_ID_psx_delaytype233 = internal constant [32 x i8] c"gamecon.parmtype=psx_delay:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_psx_delay234 = internal constant [72 x i8] c"gamecon.parm=psx_delay:Delay when accessing Sony PSX controller (usecs)\00", section ".modinfo", align 1
@gc_parport_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @gc_detach, ptr @gc_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_gamecon__236_1053_gc_init6 = internal global ptr @gc_init, section ".initcall6.init", align 4
@__exitcall_gc_exit = internal global ptr @gc_exit, section ".exitcall.exit", align 4
@gc_cfg = internal global { [3 x %struct.gc_config], [44 x i8] } zeroinitializer, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gamecon\00", [24 x i8] zeroinitializer }, align 32
@gc_base = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@gc_attach.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gc_attach\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/joystick/gamecon.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not using parport%d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gamecon: Not using parport%d.\0A\00", [33 x i8] zeroinitializer }, align 32
@gc_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gamecon: parport busy already - lp.o loaded?\0A\00", [48 x i8] zeroinitializer }, align 32
@gc_attach._entry_ptr = internal global ptr @gc_attach._entry, section ".printk_index", align 4
@gc_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gamecon: Not enough memory\0A\00", [34 x i8] zeroinitializer }, align 32
@gc_attach._entry_ptr.8 = internal global ptr @gc_attach._entry.6, section ".printk_index", align 4
@gc_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&gc->mutex\00", [21 x i8] zeroinitializer }, align 32
@gc_attach.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&gc->timer)\00", [19 x i8] zeroinitializer }, align 32
@gc_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gamecon: No valid devices specified\0A\00", [57 x i8] zeroinitializer }, align 32
@gc_attach._entry_ptr.14 = internal global ptr @gc_attach._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@gc_status_bit = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 64, i32 128, i32 32, i32 16, i32 8], [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gc_setup_pad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013gamecon: Pad type %d unknown\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gc_setup_pad\00", [19 x i8] zeroinitializer }, align 32
@gc_setup_pad._entry_ptr = internal global ptr @gc_setup_pad._entry, section ".printk_index", align 4
@gc_setup_pad._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gamecon: Not enough memory for input device\0A\00", [49 x i8] zeroinitializer }, align 32
@gc_setup_pad._entry_ptr.19 = internal global ptr @gc_setup_pad._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s/input%d\00", [21 x i8] zeroinitializer }, align 32
@gc_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr null, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [56 x i8] zeroinitializer }, align 32
@gc_setup_pad._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014gamecon: Failed to initiate rumble for N64 device %d\0A\00", [40 x i8] zeroinitializer }, align 32
@gc_setup_pad._entry_ptr.23 = internal global ptr @gc_setup_pad._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SNES pad\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NES pad\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NES FourPort\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Multisystem joystick\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Multisystem 2-button joystick\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"N64 controller\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PSX controller\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PSX DDR controller\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SNES mouse\00", [21 x i8] zeroinitializer }, align 32
@gc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013gamecon: at least one device must be specified\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gc_init\00", [24 x i8] zeroinitializer }, align 32
@gc_init._entry_ptr = internal global ptr @gc_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 9]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 5, i64 7]
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"gc_psx_delay\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 532, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"gc_parport_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1018, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"gc_cfg\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 40, i32 25 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1019, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant [8 x i8] c"gc_base\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 87, i32 19 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 940, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 952, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 958, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 962, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 965, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 978, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"gc_status_bit\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 89, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 808, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 814, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 821, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [9 x i8] c"gc_names\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 91, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 858, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 92, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 92, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 92, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 92, i32 47 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 93, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 93, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 93, i32 53 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 94, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 94, i32 24 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [36 x i8] c"../drivers/input/joystick/gamecon.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1035, i32 4 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__UNIQUE_ID_map2230, ptr @__UNIQUE_ID_map228, ptr @__UNIQUE_ID_map2type229, ptr @__UNIQUE_ID_map3232, ptr @__UNIQUE_ID_map3type231, ptr @__UNIQUE_ID_maptype227, ptr @__UNIQUE_ID_psx_delay234, ptr @__UNIQUE_ID_psx_delaytype233, ptr @__exitcall_gc_exit, ptr @__initcall__kmod_gamecon__236_1053_gc_init6, ptr @__param_map, ptr @__param_map2, ptr @__param_map3, ptr @__param_psx_delay, ptr @gc_attach._entry, ptr @gc_attach._entry.12, ptr @gc_attach._entry.6, ptr @gc_attach._entry_ptr, ptr @gc_attach._entry_ptr.14, ptr @gc_attach._entry_ptr.8, ptr @gc_exit, ptr @gc_init._entry, ptr @gc_init._entry_ptr, ptr @gc_setup_pad._entry, ptr @gc_setup_pad._entry.17, ptr @gc_setup_pad._entry.21, ptr @gc_setup_pad._entry_ptr, ptr @gc_setup_pad._entry_ptr.19, ptr @gc_setup_pad._entry_ptr.23, ptr @gc_psx_delay, ptr @gc_parport_driver, ptr @gc_cfg, ptr @.str, ptr @gc_base, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @gc_attach.__key, ptr @.str.9, ptr @gc_attach.__key.10, ptr @.str.11, ptr @.str.13, ptr @gc_status_bit, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @gc_names, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_psx_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_parport_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_cfg to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_base to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_attach.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_status_bit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_setup_pad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_setup_pad._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_setup_pad._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @parport_unregister_driver(ptr noundef nonnull @gc_parport_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gc_init() #0 section ".init.text" align 64 {
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
  %nargs = getelementptr [3 x %struct.gc_config], ptr @gc_cfg, i32 0, i32 %i.019, i32 1
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
  %arrayidx = getelementptr [3 x %struct.gc_config], ptr @gc_cfg, i32 0, i32 %i.019
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #11
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
  %call12 = tail call i32 @__parport_register_driver(ptr noundef nonnull @gc_parport_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.end11 ], [ -19, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gc_detach(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %0 = load ptr, ptr @gc_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %parportno = getelementptr inbounds %struct.gc, ptr %0, i32 0, i32 5
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
  %5 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @gc_base, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %parportno.1 = getelementptr inbounds %struct.gc, ptr %5, i32 0, i32 5
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
  %10 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @gc_base, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %10, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %land.lhs.true.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.2:                                  ; preds = %for.inc.1
  %parportno.2 = getelementptr inbounds %struct.gc, ptr %10, i32 0, i32 5
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
  %i.039.lcssa = phi i32 [ 0, %land.lhs.true.if.end5_crit_edge ], [ 1, %land.lhs.true.1.if.end5_crit_edge ], [ 2, %land.lhs.true.2.if.end5_crit_edge ]
  %arrayidx6 = getelementptr [3 x ptr], ptr @gc_base, i32 0, i32 %i.039.lcssa
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6, align 4
  store ptr null, ptr %arrayidx6, align 4
  %arrayidx11 = getelementptr %struct.gc, ptr %16, i32 0, i32 1, i32 0
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %if.end5.for.inc18_crit_edge, label %if.then13

if.end5.for.inc18_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %18) #8
  br label %for.inc18

for.inc18:                                        ; preds = %if.then13, %if.end5.for.inc18_crit_edge
  %arrayidx11.1 = getelementptr %struct.gc, ptr %16, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11.1, align 4
  %tobool12.not.1 = icmp eq ptr %20, null
  br i1 %tobool12.not.1, label %for.inc18.for.inc18.1_crit_edge, label %if.then13.1

for.inc18.for.inc18.1_crit_edge:                  ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18.1

if.then13.1:                                      ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %20) #8
  br label %for.inc18.1

for.inc18.1:                                      ; preds = %if.then13.1, %for.inc18.for.inc18.1_crit_edge
  %arrayidx11.2 = getelementptr %struct.gc, ptr %16, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx11.2, align 4
  %tobool12.not.2 = icmp eq ptr %22, null
  br i1 %tobool12.not.2, label %for.inc18.1.for.inc18.2_crit_edge, label %if.then13.2

for.inc18.1.for.inc18.2_crit_edge:                ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18.2

if.then13.2:                                      ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %22) #8
  br label %for.inc18.2

for.inc18.2:                                      ; preds = %if.then13.2, %for.inc18.1.for.inc18.2_crit_edge
  %arrayidx11.3 = getelementptr %struct.gc, ptr %16, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx11.3, align 4
  %tobool12.not.3 = icmp eq ptr %24, null
  br i1 %tobool12.not.3, label %for.inc18.2.for.inc18.3_crit_edge, label %if.then13.3

for.inc18.2.for.inc18.3_crit_edge:                ; preds = %for.inc18.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18.3

if.then13.3:                                      ; preds = %for.inc18.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %24) #8
  br label %for.inc18.3

for.inc18.3:                                      ; preds = %if.then13.3, %for.inc18.2.for.inc18.3_crit_edge
  %arrayidx11.4 = getelementptr %struct.gc, ptr %16, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx11.4, align 4
  %tobool12.not.4 = icmp eq ptr %26, null
  br i1 %tobool12.not.4, label %for.inc18.3.for.inc18.4_crit_edge, label %if.then13.4

for.inc18.3.for.inc18.4_crit_edge:                ; preds = %for.inc18.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18.4

if.then13.4:                                      ; preds = %for.inc18.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %26) #8
  br label %for.inc18.4

for.inc18.4:                                      ; preds = %if.then13.4, %for.inc18.3.for.inc18.4_crit_edge
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %16, align 4
  tail call void @parport_unregister_device(ptr noundef %28) #8
  tail call void @kfree(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc18.4, %land.lhs.true.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gc_attach(ptr noundef %pp) #2 align 64 {
entry:
  %gc_parport_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %gc_parport_cb) #8
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %gc_parport_cb, i32 0, i32 4
  %number = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 26
  %1 = load i32, ptr getelementptr inbounds ([3 x %struct.gc_config], ptr @gc_cfg, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %lor.lhs.false

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr @gc_cfg, align 4
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
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.gc_config], ptr @gc_cfg, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.1 = icmp eq i32 %5, 0
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %6 = load i32, ptr getelementptr inbounds ([3 x %struct.gc_config], ptr @gc_cfg, i32 0, i32 1), align 4
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
  %9 = load i32, ptr getelementptr inbounds ([3 x %struct.gc_config], ptr @gc_cfg, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.2 = icmp eq i32 %9, 0
  br i1 %cmp1.2, label %for.inc.1.do.body_crit_edge, label %lor.lhs.false.2

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %10 = load i32, ptr getelementptr inbounds ([3 x %struct.gc_config], ptr @gc_cfg, i32 0, i32 2), align 4
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gc_attach.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gc_attach, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !139

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gc_attach.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.4, i32 noundef %14) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end.2.if.end18_crit_edge, %if.end.1.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %port_idx.0157.lcssa = phi i32 [ 0, %if.end.if.end18_crit_edge ], [ 1, %if.end.1.if.end18_crit_edge ], [ 2, %if.end.2.if.end18_crit_edge ]
  %add.ptr = getelementptr [3 x %struct.gc_config], ptr @gc_cfg, i32 0, i32 %port_idx.0157.lcssa, i32 0, i32 1
  %nargs22 = getelementptr [3 x %struct.gc_config], ptr @gc_cfg, i32 0, i32 %port_idx.0157.lcssa, i32 1
  %15 = ptrtoint ptr %nargs22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nargs22, align 4
  %sub = add i32 %16, -1
  %17 = call ptr @memset(ptr %gc_parport_cb, i32 0, i32 16)
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %0, align 4
  %call23 = call ptr @parport_register_dev_model(ptr noundef %pp, ptr noundef nonnull @.str, ptr noundef nonnull %gc_parport_cb, i32 noundef %port_idx.0157.lcssa) #8
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 392) #12
  %tobool33.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool33.not, label %do.end37, label %do.body41

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %err_unreg_pardev

do.body41:                                        ; preds = %if.end31
  %mutex = getelementptr inbounds %struct.gc, ptr %call7.i.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @gc_attach.__key) #8
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call23, ptr %call7.i.i, align 8
  %21 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number, align 4
  %parportno = getelementptr inbounds %struct.gc, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %parportno to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %parportno, align 8
  %timer = getelementptr inbounds %struct.gc, ptr %call7.i.i, i32 0, i32 2
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @gc_timer, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @gc_attach.__key.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp50159 = icmp sgt i32 %sub, 0
  br i1 %cmp50159, label %for.body52.lr.ph, label %do.body41.do.end70_crit_edge

do.body41.do.end70_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

for.body52.lr.ph:                                 ; preds = %do.body41
  %arrayidx28205.i = getelementptr %struct.gc, ptr %call7.i.i, i32 0, i32 3, i32 9
  %24 = add i32 %16, -2
  %umin = call i32 @llvm.umin.i32(i32 %24, i32 4)
  br label %for.body52

for.body52:                                       ; preds = %for.inc63.for.body52_crit_edge, %for.body52.lr.ph
  %i.0161 = phi i32 [ 0, %for.body52.lr.ph ], [ %inc64, %for.inc63.for.body52_crit_edge ]
  %count.0160 = phi i32 [ 0, %for.body52.lr.ph ], [ %count.1, %for.inc63.for.body52_crit_edge ]
  %arrayidx53 = getelementptr i32, ptr %add.ptr, i32 %i.0161
  %25 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool54.not = icmp eq i32 %26, 0
  br i1 %tobool54.not, label %for.body52.for.inc63_crit_edge, label %if.end56

for.body52.for.inc63_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc63

if.end56:                                         ; preds = %for.body52
  %arrayidx.i = getelementptr %struct.gc, ptr %call7.i.i, i32 0, i32 1, i32 %i.0161
  %27 = add i32 %26, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %27)
  %28 = icmp ult i32 %27, -9
  br i1 %28, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %26) #11
  br label %gc_setup_pad.exit

if.end.i:                                         ; preds = %if.end56
  %call2.i = call ptr @input_allocate_device() #8
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call2.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %gc_setup_pad.exit

if.end9.i:                                        ; preds = %if.end.i
  %type.i = getelementptr %struct.gc, ptr %call7.i.i, i32 0, i32 1, i32 %i.0161, i32 1
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %type.i, align 8
  %phys.i = getelementptr %struct.gc, ptr %call7.i.i, i32 0, i32 1, i32 %i.0161, i32 2
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %port.i = getelementptr inbounds %struct.pardevice, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port.i, align 4
  %name.i = getelementptr inbounds %struct.parport, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i, align 4
  %call10.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %36, i32 noundef %i.0161) #8
  %arrayidx11.i = getelementptr [10 x ptr], ptr @gc_names, i32 0, i32 %26
  %37 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx11.i, align 4
  %39 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %call2.i, align 8
  %phys15.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 1
  %40 = ptrtoint ptr %phys15.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %phys.i, ptr %phys15.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 3
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 21, ptr %id.i, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %vendor.i, align 2
  %conv.i = trunc i32 %26 to i16
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %product.i, align 4
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 256, ptr %version.i, align 2
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 40, i32 8
  %45 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 31
  %46 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @gc_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 32
  %47 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @gc_close, ptr %close.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %26)
  %cmp19.not.i = icmp eq i32 %26, 9
  %evbit25.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 5
  br i1 %cmp19.not.i, label %if.end27.thread.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end9.i
  %48 = ptrtoint ptr %evbit25.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 10, ptr %evbit25.i, align 8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %arrayidx28.i = getelementptr %struct.gc, ptr %call7.i.i, i32 0, i32 3, i32 %26
  %49 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx28.i, align 4
  %inc29.i = add i32 %50, 1
  store i32 %inc29.i, ptr %arrayidx28.i, align 4
  %51 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %if.then21.i.sw.epilog.i_crit_edge [
    i32 6, label %for.body33.preheader.i
    i32 8, label %for.body103.preheader.i
    i32 1, label %for.body62.preheader.i
    i32 2, label %if.then21.i.sw.bb68.i_crit_edge
    i32 5, label %sw.bb78.i
    i32 4, label %if.then21.i.sw.bb79.i_crit_edge
    i32 7, label %for.body84.preheader.i
  ]

if.then21.i.sw.bb79.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb79.i

if.then21.i.sw.bb68.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb68.i

if.then21.i.sw.epilog.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end27.thread.i:                                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %evbit25.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 6, ptr %evbit25.i, align 8
  %53 = ptrtoint ptr %arrayidx28205.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx28205.i, align 8
  %inc29206.i = add i32 %54, 1
  store i32 %inc29206.i, ptr %arrayidx28205.i, align 8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 272) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 273) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 2, i32 noundef 0) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 2, i32 noundef 1) #8
  br label %sw.epilog.i

for.body103.preheader.i:                          ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 256) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 257) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 258) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 259) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 310) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 311) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 312) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 313) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 304) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 305) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 307) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 308) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 315) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 314) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 317) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 318) #8
  br label %sw.epilog.i

for.body84.preheader.i:                           ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 0, i32 noundef 4, i32 noundef 252, i32 noundef 0, i32 noundef 2) #8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 4, i32 noundef 252, i32 noundef 0, i32 noundef 2) #8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 3, i32 noundef 4, i32 noundef 252, i32 noundef 0, i32 noundef 2) #8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 4, i32 noundef 4, i32 noundef 252, i32 noundef 0, i32 noundef 2) #8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 16, i32 noundef 4, i32 noundef 252, i32 noundef 0, i32 noundef 2) #8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 17, i32 noundef 4, i32 noundef 252, i32 noundef 0, i32 noundef 2) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 310) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 311) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 312) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 313) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 304) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 305) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 307) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 308) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 315) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 314) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 317) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 318) #8
  br label %sw.epilog.i

for.body62.preheader.i:                           ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 307) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 308) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 310) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 311) #8
  br label %sw.bb68.i

for.body33.preheader.i:                           ; preds = %if.then21.i
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 304) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 305) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 306) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 307) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 308) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 309) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 310) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 311) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 288) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 315) #8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 0, i32 noundef -127, i32 noundef 126, i32 noundef 0, i32 noundef 2) #8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 16, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef -127, i32 noundef 126, i32 noundef 0, i32 noundef 2) #8
  call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 17, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 4) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body33.preheader.i.do.end53.i_crit_edge, label %if.end.i.i

for.body33.preheader.i.do.end53.i_crit_edge:      ; preds = %for.body33.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53.i

if.end.i.i:                                       ; preds = %for.body33.preheader.i
  %56 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %i.0161, ptr %call7.i.i.i, align 8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 21, i32 noundef 80) #8
  %call1.i.i = call i32 @input_ff_create_memless(ptr noundef nonnull %call2.i, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @gc_n64_play_effect) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.sw.epilog.i_crit_edge, label %if.then3.i.i

if.end.i.i.sw.epilog.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %do.end53.i

do.end53.i:                                       ; preds = %if.then3.i.i, %for.body33.preheader.i.do.end53.i_crit_edge
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %i.0161) #11
  br label %err_free_dev.i

sw.bb68.i:                                        ; preds = %for.body62.preheader.i, %if.then21.i.sw.bb68.i_crit_edge
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 304) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 305) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 314) #8
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 315) #8
  br label %sw.epilog.i

sw.bb78.i:                                        ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 289) #8
  br label %sw.bb79.i

sw.bb79.i:                                        ; preds = %sw.bb78.i, %if.then21.i.sw.bb79.i_crit_edge
  call void @input_set_capability(ptr noundef nonnull %call2.i, i32 noundef 1, i32 noundef 288) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb79.i, %sw.bb68.i, %if.end.i.i.sw.epilog.i_crit_edge, %for.body84.preheader.i, %for.body103.preheader.i, %if.end27.thread.i, %if.then21.i.sw.epilog.i_crit_edge
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %call119.i = call i32 @input_register_device(ptr noundef %58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %tobool120.not.i = icmp eq i32 %call119.i, 0
  br i1 %tobool120.not.i, label %if.end61, label %sw.epilog.i.err_free_dev.i_crit_edge

sw.epilog.i.err_free_dev.i_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dev.i

err_free_dev.i:                                   ; preds = %sw.epilog.i.err_free_dev.i_crit_edge, %do.end53.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i, align 4
  call void @input_free_device(ptr noundef %60) #8
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx.i, align 4
  br label %gc_setup_pad.exit

gc_setup_pad.exit:                                ; preds = %err_free_dev.i, %do.end6.i, %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0161)
  %cmp75164.not = icmp eq i32 %i.0161, 0
  br i1 %cmp75164.not, label %gc_setup_pad.exit.err_free_gc_crit_edge, label %while.body

gc_setup_pad.exit.err_free_gc_crit_edge:          ; preds = %gc_setup_pad.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_gc

if.end61:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc62 = add i32 %count.0160, 1
  br label %for.inc63

for.inc63:                                        ; preds = %if.end61, %for.body52.for.inc63_crit_edge
  %count.1 = phi i32 [ %inc62, %if.end61 ], [ %count.0160, %for.body52.for.inc63_crit_edge ]
  %inc64 = add nuw nsw i32 %i.0161, 1
  %exitcond.not = icmp eq i32 %i.0161, %umin
  br i1 %exitcond.not, label %for.end65, label %for.inc63.for.body52_crit_edge

for.inc63.for.body52_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body52

for.end65:                                        ; preds = %for.inc63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp66 = icmp eq i32 %count.1, 0
  br i1 %cmp66, label %for.end65.do.end70_crit_edge, label %if.end73

for.end65.do.end70_crit_edge:                     ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

do.end70:                                         ; preds = %for.end65.do.end70_crit_edge, %do.body41.do.end70_crit_edge
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %err_free_gc

if.end73:                                         ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx74 = getelementptr [3 x ptr], ptr @gc_base, i32 0, i32 %port_idx.0157.lcssa
  %62 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %arrayidx74, align 4
  br label %cleanup

while.body:                                       ; preds = %gc_setup_pad.exit
  %dec165 = add nsw i32 %i.0161, -1
  %arrayidx77 = getelementptr %struct.gc, ptr %call7.i.i, i32 0, i32 1, i32 %dec165
  %63 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq ptr %64, null
  br i1 %tobool78.not, label %while.body.if.end83_crit_edge, label %if.then79

while.body.if.end83_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then79:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_unregister_device(ptr noundef nonnull %64) #8
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %while.body.if.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0161)
  %cmp75 = icmp ugt i32 %i.0161, 1
  br i1 %cmp75, label %while.body.1, label %if.end83.err_free_gc_crit_edge

if.end83.err_free_gc_crit_edge:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_gc

while.body.1:                                     ; preds = %if.end83
  %dec165.1 = add nsw i32 %i.0161, -2
  %arrayidx77.1 = getelementptr %struct.gc, ptr %call7.i.i, i32 0, i32 1, i32 %dec165.1
  %65 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx77.1, align 4
  %tobool78.not.1 = icmp eq ptr %66, null
  br i1 %tobool78.not.1, label %while.body.1.if.end83.1_crit_edge, label %if.then79.1

while.body.1.if.end83.1_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.1

if.then79.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_unregister_device(ptr noundef nonnull %66) #8
  br label %if.end83.1

if.end83.1:                                       ; preds = %if.then79.1, %while.body.1.if.end83.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0161)
  %cmp75.1 = icmp ugt i32 %i.0161, 2
  br i1 %cmp75.1, label %while.body.2, label %if.end83.1.err_free_gc_crit_edge

if.end83.1.err_free_gc_crit_edge:                 ; preds = %if.end83.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_gc

while.body.2:                                     ; preds = %if.end83.1
  %dec165.2 = add nsw i32 %i.0161, -3
  %arrayidx77.2 = getelementptr %struct.gc, ptr %call7.i.i, i32 0, i32 1, i32 %dec165.2
  %67 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx77.2, align 4
  %tobool78.not.2 = icmp eq ptr %68, null
  br i1 %tobool78.not.2, label %while.body.2.if.end83.2_crit_edge, label %if.then79.2

while.body.2.if.end83.2_crit_edge:                ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.2

if.then79.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_unregister_device(ptr noundef nonnull %68) #8
  br label %if.end83.2

if.end83.2:                                       ; preds = %if.then79.2, %while.body.2.if.end83.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0161)
  %cmp75.2 = icmp ugt i32 %i.0161, 3
  br i1 %cmp75.2, label %while.body.3, label %if.end83.2.err_free_gc_crit_edge

if.end83.2.err_free_gc_crit_edge:                 ; preds = %if.end83.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_gc

while.body.3:                                     ; preds = %if.end83.2
  %dec165.3 = add nsw i32 %i.0161, -4
  %arrayidx77.3 = getelementptr %struct.gc, ptr %call7.i.i, i32 0, i32 1, i32 %dec165.3
  %69 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx77.3, align 4
  %tobool78.not.3 = icmp eq ptr %70, null
  br i1 %tobool78.not.3, label %while.body.3.err_free_gc_crit_edge, label %if.then79.3

while.body.3.err_free_gc_crit_edge:               ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_gc

if.then79.3:                                      ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_unregister_device(ptr noundef nonnull %70) #8
  br label %err_free_gc

err_free_gc:                                      ; preds = %if.then79.3, %while.body.3.err_free_gc_crit_edge, %if.end83.2.err_free_gc_crit_edge, %if.end83.1.err_free_gc_crit_edge, %if.end83.err_free_gc_crit_edge, %do.end70, %gc_setup_pad.exit.err_free_gc_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %err_unreg_pardev

err_unreg_pardev:                                 ; preds = %err_free_gc, %do.end37
  call void @parport_unregister_device(ptr noundef nonnull %call23) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_pardev, %if.end73, %do.end28, %if.then15, %do.body
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %gc_parport_cb) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gc_timer(ptr noundef %t) #2 align 64 {
entry:
  %data2.i.i = alloca [5 x i8], align 1
  %data.i105 = alloca [5 x [6 x i8]], align 1
  %id.i = alloca [5 x i8], align 1
  %data.i67 = alloca [6 x i8], align 1
  %data.i43 = alloca [32 x i8], align 1
  %data.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -204
  %arrayidx = getelementptr i8, ptr %t, i32 72
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data.i) #8
  %2 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 1
  %3 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 2
  %4 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 3
  %5 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 4
  %6 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 5
  %7 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 6
  %8 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 7
  %9 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 8
  %10 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 9
  %11 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 10
  %12 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 11
  %13 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 12
  %14 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 13
  %15 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 14
  %16 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 15
  %17 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 16
  %18 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 17
  %19 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 18
  %20 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 19
  %21 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 20
  %22 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 21
  %23 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 22
  %24 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 23
  %25 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 24
  %26 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 25
  %27 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 26
  %28 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 27
  %29 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 28
  %30 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 29
  %31 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 30
  %32 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 31
  %33 = call ptr @memset(ptr %data.i, i32 255, i32 32)
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !140
  %and.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.do.end11.i.i_crit_edge

if.then.do.end11.i.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.then.i.i, %if.then.do.end11.i.i_crit_edge
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  %port1.i.i.i = getelementptr inbounds %struct.pardevice, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port1.i.i.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.parport, ptr %38, i32 0, i32 24
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %do.end11.i.i
  %i.08.i.i.i = phi i32 [ 0, %do.end11.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %39 = shl nuw i32 1, %i.08.i.i.i
  %40 = and i32 %39, -787410671
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i = icmp eq i32 %40, 0
  %41 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = select i1 %tobool.not.i.i.i, i8 -30, i8 -1
  tail call void %44(ptr noundef %38, i8 noundef zeroext %45) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 644244) #8
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %gc_n64_send_command.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

gc_n64_send_command.exit.i.i:                     ; preds = %for.body.i.i.i
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 4
  %port1.i71.i.i = getelementptr inbounds %struct.pardevice, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %port1.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port1.i71.i.i, align 4
  %ops.i72.i.i = getelementptr inbounds %struct.parport, ptr %50, i32 0, i32 24
  %51 = ptrtoint ptr %ops.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i72.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  tail call void %54(ptr noundef %50, i8 noundef zeroext -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 644244) #8
  %56 = ptrtoint ptr %ops.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i72.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  tail call void %59(ptr noundef %50, i8 noundef zeroext -30) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 644244) #8
  %61 = ptrtoint ptr %ops.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i72.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  tail call void %64(ptr noundef %50, i8 noundef zeroext -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 644244) #8
  %66 = ptrtoint ptr %ops.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i72.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  tail call void %69(ptr noundef %50, i8 noundef zeroext -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 644244) #8
  %71 = ptrtoint ptr %ops.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i72.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  tail call void %74(ptr noundef %50, i8 noundef zeroext -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 644244) #8
  br i1 %tobool.not.i.i, label %if.then21.i.i, label %gc_n64_send_command.exit.i.i.do.body23.i.i_crit_edge

gc_n64_send_command.exit.i.i.do.body23.i.i_crit_edge: ; preds = %gc_n64_send_command.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23.i.i

if.then21.i.i:                                    ; preds = %gc_n64_send_command.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %if.then21.i.i, %gc_n64_send_command.exit.i.i.do.body23.i.i_crit_edge
  %76 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !141
  %and.i.i.i.i = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body23.i.i.do.end39.i.i_crit_edge, !prof !142

do.body23.i.i.do.end39.i.i_crit_edge:             ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i

if.then36.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then36.i.i, %do.body23.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #8, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 28561484) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end39.i.i
  %i.074.i.i = phi i32 [ 0, %do.end39.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 4
  %port.i.i = getelementptr inbounds %struct.pardevice, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %port.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.parport, ptr %81, i32 0, i32 24
  %82 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  tail call void %85(ptr noundef %81, i8 noundef zeroext -3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 429496) #8
  %87 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr, align 4
  %port49.i.i = getelementptr inbounds %struct.pardevice, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %port49.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %port49.i.i, align 4
  %ops50.i.i = getelementptr inbounds %struct.parport, ptr %90, i32 0, i32 24
  %91 = ptrtoint ptr %ops50.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops50.i.i, align 4
  %read_status.i.i = getelementptr inbounds %struct.parport_operations, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %read_status.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read_status.i.i, align 4
  %call53.i.i = tail call zeroext i8 %94(ptr noundef %90) #8
  %arrayidx.i.i = getelementptr i8, ptr %data.i, i32 %i.074.i.i
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %call53.i.i, ptr %arrayidx.i.i, align 1
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 4
  %port55.i.i = getelementptr inbounds %struct.pardevice, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %port55.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %port55.i.i, align 4
  %ops56.i.i = getelementptr inbounds %struct.parport, ptr %99, i32 0, i32 24
  %100 = ptrtoint ptr %ops56.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops56.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  tail call void %103(ptr noundef %99, i8 noundef zeroext -1) #8
  %inc.i.i = add nuw nsw i32 %i.074.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.body.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.for.body.i_crit_edge:                ; preds = %for.body.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc75.i.for.body.i_crit_edge, %for.body.i.i.for.body.i_crit_edge
  %i.0114.i = phi i32 [ %inc76.i, %for.inc75.i.for.body.i_crit_edge ], [ 0, %for.body.i.i.for.body.i_crit_edge ]
  %type.i = getelementptr %struct.gc, ptr %add.ptr, i32 0, i32 1, i32 %i.0114.i, i32 1
  %104 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %105)
  %cmp1.not.i = icmp eq i32 %105, 6
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.inc75.i_crit_edge

for.body.i.for.inc75.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc75.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx5.i = getelementptr [5 x i32], ptr @gc_status_bit, i32 0, i32 %i.0114.i
  %106 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx5.i, align 4
  %108 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %9, align 1
  %110 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %10, align 1
  %or107.i = or i8 %111, %109
  %or.i = zext i8 %or107.i to i32
  %neg.i = xor i32 %or.i, -1
  %and.i = and i32 %107, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc75.i_crit_edge, label %for.body13.preheader.i

if.end.i.for.inc75.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc75.i

for.body13.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.gc, ptr %add.ptr, i32 0, i32 1, i32 %i.0114.i
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i, align 4
  %114 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %24, align 1
  %conv15.i = zext i8 %115 to i32
  %and16.i = and i32 %107, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp ne i32 %and16.i, 0
  %conv21.i = zext i1 %tobool17.not.i to i32
  %116 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %32, align 1
  %conv25.i = zext i8 %117 to i32
  %and26.i = and i32 %107, %conv25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp ne i32 %and26.i, 0
  %conv32.i = zext i1 %tobool27.not.i to i32
  %118 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %23, align 1
  %conv15.1.i = zext i8 %119 to i32
  %and16.1.i = and i32 %107, %conv15.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.1.i)
  %tobool17.not.1.i = icmp eq i32 %and16.1.i, 0
  %conv21.1.i = select i1 %tobool17.not.1.i, i32 0, i32 2
  %x.1.1.i = or i32 %conv21.1.i, %conv21.i
  %120 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %31, align 1
  %conv25.1.i = zext i8 %121 to i32
  %and26.1.i = and i32 %107, %conv25.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.1.i)
  %tobool27.not.1.i = icmp eq i32 %and26.1.i, 0
  %conv32.1.i = select i1 %tobool27.not.1.i, i32 0, i32 2
  %y.1.1.i = or i32 %conv32.1.i, %conv32.i
  %122 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %22, align 1
  %conv15.2.i = zext i8 %123 to i32
  %and16.2.i = and i32 %107, %conv15.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.2.i)
  %tobool17.not.2.i = icmp eq i32 %and16.2.i, 0
  %conv21.2.i = select i1 %tobool17.not.2.i, i32 0, i32 4
  %x.1.2.i = or i32 %x.1.1.i, %conv21.2.i
  %124 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %30, align 1
  %conv25.2.i = zext i8 %125 to i32
  %and26.2.i = and i32 %107, %conv25.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.2.i)
  %tobool27.not.2.i = icmp eq i32 %and26.2.i, 0
  %conv32.2.i = select i1 %tobool27.not.2.i, i32 0, i32 4
  %y.1.2.i = or i32 %y.1.1.i, %conv32.2.i
  %126 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %21, align 1
  %conv15.3.i = zext i8 %127 to i32
  %and16.3.i = and i32 %107, %conv15.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.3.i)
  %tobool17.not.3.i = icmp eq i32 %and16.3.i, 0
  %conv21.3.i = select i1 %tobool17.not.3.i, i32 0, i32 8
  %x.1.3.i = or i32 %x.1.2.i, %conv21.3.i
  %128 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %29, align 1
  %conv25.3.i = zext i8 %129 to i32
  %and26.3.i = and i32 %107, %conv25.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.3.i)
  %tobool27.not.3.i = icmp eq i32 %and26.3.i, 0
  %conv32.3.i = select i1 %tobool27.not.3.i, i32 0, i32 8
  %y.1.3.i = or i32 %y.1.2.i, %conv32.3.i
  %130 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %20, align 1
  %conv15.4.i = zext i8 %131 to i32
  %and16.4.i = and i32 %107, %conv15.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.4.i)
  %tobool17.not.4.i = icmp eq i32 %and16.4.i, 0
  %conv21.4.i = select i1 %tobool17.not.4.i, i32 0, i32 16
  %x.1.4.i = or i32 %x.1.3.i, %conv21.4.i
  %132 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %28, align 1
  %conv25.4.i = zext i8 %133 to i32
  %and26.4.i = and i32 %107, %conv25.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.4.i)
  %tobool27.not.4.i = icmp eq i32 %and26.4.i, 0
  %conv32.4.i = select i1 %tobool27.not.4.i, i32 0, i32 16
  %y.1.4.i = or i32 %y.1.3.i, %conv32.4.i
  %134 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %19, align 1
  %conv15.5.i = zext i8 %135 to i32
  %and16.5.i = and i32 %107, %conv15.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.5.i)
  %tobool17.not.5.i = icmp eq i32 %and16.5.i, 0
  %conv21.5.i = select i1 %tobool17.not.5.i, i32 0, i32 32
  %x.1.5.i = or i32 %x.1.4.i, %conv21.5.i
  %136 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %27, align 1
  %conv25.5.i = zext i8 %137 to i32
  %and26.5.i = and i32 %107, %conv25.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.5.i)
  %tobool27.not.5.i = icmp eq i32 %and26.5.i, 0
  %conv32.5.i = select i1 %tobool27.not.5.i, i32 0, i32 32
  %y.1.5.i = or i32 %y.1.4.i, %conv32.5.i
  %138 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %18, align 1
  %conv15.6.i = zext i8 %139 to i32
  %and16.6.i = and i32 %107, %conv15.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.6.i)
  %tobool17.not.6.i = icmp eq i32 %and16.6.i, 0
  %conv21.6.i = select i1 %tobool17.not.6.i, i32 0, i32 64
  %x.1.6.i = or i32 %x.1.5.i, %conv21.6.i
  %140 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %26, align 1
  %conv25.6.i = zext i8 %141 to i32
  %and26.6.i = and i32 %107, %conv25.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.6.i)
  %tobool27.not.6.i = icmp eq i32 %and26.6.i, 0
  %conv32.6.i = select i1 %tobool27.not.6.i, i32 0, i32 64
  %y.1.6.i = or i32 %y.1.5.i, %conv32.6.i
  %142 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %17, align 1
  %conv15.7.i = zext i8 %143 to i32
  %and16.7.i = and i32 %107, %conv15.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.7.i)
  %tobool17.not.7.i = icmp eq i32 %and16.7.i, 0
  %conv21.7.i = select i1 %tobool17.not.7.i, i32 0, i32 128
  %x.1.7.i = or i32 %x.1.6.i, %conv21.7.i
  %144 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %25, align 1
  %conv25.7.i = zext i8 %145 to i32
  %and26.7.i = and i32 %107, %conv25.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.7.i)
  %tobool27.not.7.i = icmp eq i32 %and26.7.i, 0
  %conv32.7.i = select i1 %tobool27.not.7.i, i32 0, i32 128
  %y.1.7.i = or i32 %y.1.6.i, %conv32.7.i
  %sext.i = shl i32 %x.1.7.i, 24
  %conv34.i = ashr exact i32 %sext.i, 24
  tail call void @input_event(ptr noundef %113, i32 noundef 3, i32 noundef 0, i32 noundef %conv34.i) #8
  %sext116.i = shl i32 %y.1.7.i, 24
  %conv35.i = ashr exact i32 %sext116.i, 24
  %sub36.i = sub nsw i32 0, %conv35.i
  tail call void @input_event(ptr noundef %113, i32 noundef 3, i32 noundef 1, i32 noundef %sub36.i) #8
  %146 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %7, align 1
  %conv38.i = zext i8 %147 to i32
  %and39.i = and i32 %107, %conv38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %lnot.ext.i = zext i1 %tobool40.not.i to i32
  %148 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %8, align 1
  %conv42.i = zext i8 %149 to i32
  %and43.i = and i32 %107, %conv42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %lnot.ext46.neg.i = sext i1 %tobool44.not.i to i32
  %sub47.i = add nsw i32 %lnot.ext46.neg.i, %lnot.ext.i
  tail call void @input_event(ptr noundef %113, i32 noundef 3, i32 noundef 16, i32 noundef %sub47.i) #8
  %150 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %5, align 1
  %conv49.i = zext i8 %151 to i32
  %and50.i = and i32 %107, %conv49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  %lnot.ext53.i = zext i1 %tobool51.not.i to i32
  %152 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %6, align 1
  %conv55.i = zext i8 %153 to i32
  %and56.i = and i32 %107, %conv55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  %lnot.ext59.neg.i = sext i1 %tobool57.not.i to i32
  %sub60.i = add nsw i32 %lnot.ext59.neg.i, %lnot.ext53.i
  tail call void @input_event(ptr noundef %113, i32 noundef 3, i32 noundef 17, i32 noundef %sub60.i) #8
  %154 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %data.i, align 1
  %conv69.i = zext i8 %155 to i32
  %and70.i = and i32 %107, %conv69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool.i.i = icmp ne i32 %and70.i, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 304, i32 noundef %lnot.ext.i.i) #8
  %156 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %2, align 1
  %conv69.1.i = zext i8 %157 to i32
  %and70.1.i = and i32 %107, %conv69.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.1.i)
  %tobool.i.1.i = icmp ne i32 %and70.1.i, 0
  %lnot.ext.i.1.i = zext i1 %tobool.i.1.i to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 305, i32 noundef %lnot.ext.i.1.i) #8
  %158 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %14, align 1
  %conv69.2.i = zext i8 %159 to i32
  %and70.2.i = and i32 %107, %conv69.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.2.i)
  %tobool.i.2.i = icmp ne i32 %and70.2.i, 0
  %lnot.ext.i.2.i = zext i1 %tobool.i.2.i to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 306, i32 noundef %lnot.ext.i.2.i) #8
  %160 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %16, align 1
  %conv69.3.i = zext i8 %161 to i32
  %and70.3.i = and i32 %107, %conv69.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.3.i)
  %tobool.i.3.i = icmp ne i32 %and70.3.i, 0
  %lnot.ext.i.3.i = zext i1 %tobool.i.3.i to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 307, i32 noundef %lnot.ext.i.3.i) #8
  %162 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %15, align 1
  %conv69.4.i = zext i8 %163 to i32
  %and70.4.i = and i32 %107, %conv69.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.4.i)
  %tobool.i.4.i = icmp ne i32 %and70.4.i, 0
  %lnot.ext.i.4.i = zext i1 %tobool.i.4.i to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 308, i32 noundef %lnot.ext.i.4.i) #8
  %164 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %13, align 1
  %conv69.5.i = zext i8 %165 to i32
  %and70.5.i = and i32 %107, %conv69.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.5.i)
  %tobool.i.5.i = icmp ne i32 %and70.5.i, 0
  %lnot.ext.i.5.i = zext i1 %tobool.i.5.i to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 309, i32 noundef %lnot.ext.i.5.i) #8
  %166 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %11, align 1
  %conv69.6.i = zext i8 %167 to i32
  %and70.6.i = and i32 %107, %conv69.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.6.i)
  %tobool.i.6.i = icmp ne i32 %and70.6.i, 0
  %lnot.ext.i.6.i = zext i1 %tobool.i.6.i to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 310, i32 noundef %lnot.ext.i.6.i) #8
  %168 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %12, align 1
  %conv69.7.i = zext i8 %169 to i32
  %and70.7.i = and i32 %107, %conv69.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.7.i)
  %tobool.i.7.i = icmp ne i32 %and70.7.i, 0
  %lnot.ext.i.7.i = zext i1 %tobool.i.7.i to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 311, i32 noundef %lnot.ext.i.7.i) #8
  %170 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %3, align 1
  %conv69.8.i = zext i8 %171 to i32
  %and70.8.i = and i32 %107, %conv69.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.8.i)
  %tobool.i.8.i = icmp ne i32 %and70.8.i, 0
  %lnot.ext.i.8.i = zext i1 %tobool.i.8.i to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 288, i32 noundef %lnot.ext.i.8.i) #8
  %172 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %4, align 1
  %conv69.9.i = zext i8 %173 to i32
  %and70.9.i = and i32 %107, %conv69.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.9.i)
  %tobool.i.9.i = icmp ne i32 %and70.9.i, 0
  %lnot.ext.i.9.i = zext i1 %tobool.i.9.i to i32
  tail call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 315, i32 noundef %lnot.ext.i.9.i) #8
  tail call void @input_event(ptr noundef %113, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc75.i

for.inc75.i:                                      ; preds = %for.body13.preheader.i, %if.end.i.for.inc75.i_crit_edge, %for.body.i.for.inc75.i_crit_edge
  %inc76.i = add nuw nsw i32 %i.0114.i, 1
  %exitcond.not.i = icmp eq i32 %inc76.i, 5
  br i1 %exitcond.not.i, label %gc_n64_process_packet.exit, label %for.inc75.i.for.body.i_crit_edge

for.inc75.i.for.body.i_crit_edge:                 ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

gc_n64_process_packet.exit:                       ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i) #8
  br label %if.end

if.end:                                           ; preds = %gc_n64_process_packet.exit, %entry.if.end_crit_edge
  %arrayidx2 = getelementptr i8, ptr %t, i32 56
  %174 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool3.not = icmp eq i32 %175, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx5 = getelementptr i8, ptr %t, i32 52
  %176 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool6.not = icmp eq i32 %177, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %arrayidx9 = getelementptr i8, ptr %t, i32 84
  %178 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool10.not = icmp eq i32 %179, 0
  br i1 %tobool10.not, label %lor.lhs.false7.if.end12_crit_edge, label %lor.lhs.false7.if.then11_crit_edge

lor.lhs.false7.if.then11_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false7.if.end12_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %lor.lhs.false7.if.then11_crit_edge, %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data.i43) #8
  %180 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 1
  %181 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 2
  %182 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 3
  %183 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 4
  %184 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 5
  %185 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 6
  %186 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 7
  %187 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 8
  %188 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 9
  %189 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 10
  %190 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 11
  %191 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 12
  %192 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 13
  %193 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 14
  %194 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 15
  %195 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 16
  %196 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 17
  %197 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 18
  %198 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 19
  %199 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 20
  %200 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 21
  %201 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 22
  %202 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 23
  %203 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 24
  %204 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 25
  %205 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 26
  %206 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 27
  %207 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 28
  %208 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 29
  %209 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 30
  %210 = getelementptr inbounds [32 x i8], ptr %data.i43, i32 0, i32 31
  %arrayidx.i44 = getelementptr i8, ptr %t, i32 84
  %211 = call ptr @memset(ptr %data.i43, i32 255, i32 32)
  %212 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.not.i45 = icmp eq i32 %213, 0
  br i1 %tobool.not.i45, label %cond.false.i, label %if.then11.cond.end.i_crit_edge

if.then11.cond.end.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.i = getelementptr i8, ptr %t, i32 52
  %214 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool3.not.i = icmp eq i32 %215, 0
  %cond.i = select i1 %tobool3.not.i, i32 8, i32 12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then11.cond.end.i_crit_edge
  %cond4.i = phi i32 [ %cond.i, %cond.false.i ], [ 32, %if.then11.cond.end.i_crit_edge ]
  %216 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %add.ptr, align 4
  %port.i.i46 = getelementptr inbounds %struct.pardevice, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %port.i.i46 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %port.i.i46, align 4
  %ops.i.i47 = getelementptr inbounds %struct.parport, ptr %219, i32 0, i32 24
  %220 = ptrtoint ptr %ops.i.i47 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ops.i.i47, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  tail call void %223(ptr noundef %219, i8 noundef zeroext -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %224(i32 noundef 2576976) #8
  %225 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %add.ptr, align 4
  %port4.i.i = getelementptr inbounds %struct.pardevice, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %port4.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %port4.i.i, align 4
  %ops5.i.i = getelementptr inbounds %struct.parport, ptr %228, i32 0, i32 24
  %229 = ptrtoint ptr %ops5.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ops5.i.i, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 4
  tail call void %232(ptr noundef %228, i8 noundef zeroext -3) #8
  br label %for.body.i.i52

for.body.i.i52:                                   ; preds = %for.body.i.i52.for.body.i.i52_crit_edge, %cond.end.i
  %i.039.i.i = phi i32 [ %inc.i.i50, %for.body.i.i52.for.body.i.i52_crit_edge ], [ 0, %cond.end.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %233(i32 noundef 1288488) #8
  %234 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %add.ptr, align 4
  %port10.i.i = getelementptr inbounds %struct.pardevice, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %port10.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %port10.i.i, align 4
  %ops11.i.i = getelementptr inbounds %struct.parport, ptr %237, i32 0, i32 24
  %238 = ptrtoint ptr %ops11.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ops11.i.i, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %239, align 4
  tail call void %241(ptr noundef %237, i8 noundef zeroext -4) #8
  %242 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %add.ptr, align 4
  %port16.i.i = getelementptr inbounds %struct.pardevice, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %port16.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %port16.i.i, align 4
  %ops17.i.i = getelementptr inbounds %struct.parport, ptr %245, i32 0, i32 24
  %246 = ptrtoint ptr %ops17.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ops17.i.i, align 4
  %read_status.i.i48 = getelementptr inbounds %struct.parport_operations, ptr %247, i32 0, i32 5
  %248 = ptrtoint ptr %read_status.i.i48 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %read_status.i.i48, align 4
  %call.i.i = tail call zeroext i8 %249(ptr noundef %245) #8
  %250 = xor i8 %call.i.i, 127
  %arrayidx.i.i49 = getelementptr i8, ptr %data.i43, i32 %i.039.i.i
  %251 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %arrayidx.i.i49, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %252(i32 noundef 1288488) #8
  %253 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %add.ptr, align 4
  %port22.i.i = getelementptr inbounds %struct.pardevice, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %port22.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %port22.i.i, align 4
  %ops23.i.i = getelementptr inbounds %struct.parport, ptr %256, i32 0, i32 24
  %257 = ptrtoint ptr %ops23.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ops23.i.i, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %258, align 4
  tail call void %260(ptr noundef %256, i8 noundef zeroext -3) #8
  %inc.i.i50 = add nuw nsw i32 %i.039.i.i, 1
  %exitcond.not.i.i51 = icmp eq i32 %inc.i.i50, %cond4.i
  br i1 %exitcond.not.i.i51, label %for.body.i.i52.for.body.i55_crit_edge, label %for.body.i.i52.for.body.i.i52_crit_edge

for.body.i.i52.for.body.i.i52_crit_edge:          ; preds = %for.body.i.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i52

for.body.i.i52.for.body.i55_crit_edge:            ; preds = %for.body.i.i52
  br label %for.body.i55

for.body.i55:                                     ; preds = %for.inc161.i.for.body.i55_crit_edge, %for.body.i.i52.for.body.i55_crit_edge
  %i.0234.i = phi i32 [ %inc162.i, %for.inc161.i.for.body.i55_crit_edge ], [ 0, %for.body.i.i52.for.body.i55_crit_edge ]
  %arrayidx5.i53 = getelementptr %struct.gc, ptr %add.ptr, i32 0, i32 1, i32 %i.0234.i
  %261 = ptrtoint ptr %arrayidx5.i53 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %arrayidx5.i53, align 4
  %arrayidx7.i = getelementptr [5 x i32], ptr @gc_status_bit, i32 0, i32 %i.0234.i
  %263 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx7.i, align 4
  %type.i54 = getelementptr %struct.gc, ptr %add.ptr, i32 0, i32 1, i32 %i.0234.i, i32 1
  %265 = ptrtoint ptr %type.i54 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %type.i54, align 4
  %267 = zext i32 %266 to i64
  call void @__sanitizer_cov_trace_switch(i64 %267, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %266, label %for.body.i55.for.inc161.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb39.i
    i32 9, label %sw.bb80.i
  ]

for.body.i55.for.inc161.i_crit_edge:              ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc161.i

sw.bb.i:                                          ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #10
  %268 = ptrtoint ptr %185 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %185, align 1
  %conv.i = zext i8 %269 to i32
  %and.i56 = and i32 %264, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool9.not.i = icmp eq i32 %and.i56, 0
  %lnot.ext.i57 = zext i1 %tobool9.not.i to i32
  %270 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %186, align 1
  %conv11.i = zext i8 %271 to i32
  %and12.i = and i32 %264, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %lnot.ext15.neg.i = sext i1 %tobool13.not.i to i32
  %sub.i = add nsw i32 %lnot.ext15.neg.i, %lnot.ext.i57
  tail call void @input_event(ptr noundef %262, i32 noundef 3, i32 noundef 0, i32 noundef %sub.i) #8
  %272 = ptrtoint ptr %183 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %183, align 1
  %conv17.i = zext i8 %273 to i32
  %and18.i = and i32 %264, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %lnot.ext21.i = zext i1 %tobool19.not.i to i32
  %274 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %184, align 1
  %conv23.i = zext i8 %275 to i32
  %and24.i = and i32 %264, %conv23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %lnot.ext27.neg.i = sext i1 %tobool25.not.i to i32
  %sub28.i = add nsw i32 %lnot.ext27.neg.i, %lnot.ext21.i
  tail call void @input_event(ptr noundef %262, i32 noundef 3, i32 noundef 1, i32 noundef %sub28.i) #8
  %276 = ptrtoint ptr %data.i43 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %data.i43, align 1
  %conv37.i = zext i8 %277 to i32
  %and38.i = and i32 %264, %conv37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool.i.i58 = icmp ne i32 %and38.i, 0
  %lnot.ext.i.i59 = zext i1 %tobool.i.i58 to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 304, i32 noundef %lnot.ext.i.i59) #8
  %278 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %180, align 1
  %conv37.1.i = zext i8 %279 to i32
  %and38.1.i = and i32 %264, %conv37.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.1.i)
  %tobool.i.1.i60 = icmp ne i32 %and38.1.i, 0
  %lnot.ext.i.1.i61 = zext i1 %tobool.i.1.i60 to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 305, i32 noundef %lnot.ext.i.1.i61) #8
  %280 = ptrtoint ptr %181 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %181, align 1
  %conv37.2.i = zext i8 %281 to i32
  %and38.2.i = and i32 %264, %conv37.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.2.i)
  %tobool.i.2.i62 = icmp ne i32 %and38.2.i, 0
  %lnot.ext.i.2.i63 = zext i1 %tobool.i.2.i62 to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 314, i32 noundef %lnot.ext.i.2.i63) #8
  %282 = ptrtoint ptr %182 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %182, align 1
  %conv37.3.i = zext i8 %283 to i32
  %and38.3.i = and i32 %264, %conv37.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.3.i)
  %tobool.i.3.i64 = icmp ne i32 %and38.3.i, 0
  %lnot.ext.i.3.i65 = zext i1 %tobool.i.3.i64 to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 315, i32 noundef %lnot.ext.i.3.i65) #8
  br label %for.inc161.sink.split.i

sw.bb39.i:                                        ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #10
  %284 = ptrtoint ptr %185 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %185, align 1
  %conv41.i = zext i8 %285 to i32
  %and42.i = and i32 %264, %conv41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  %lnot.ext45.i = zext i1 %tobool43.not.i to i32
  %286 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %186, align 1
  %conv47.i = zext i8 %287 to i32
  %and48.i = and i32 %264, %conv47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  %lnot.ext51.neg.i = sext i1 %tobool49.not.i to i32
  %sub52.i = add nsw i32 %lnot.ext51.neg.i, %lnot.ext45.i
  tail call void @input_event(ptr noundef %262, i32 noundef 3, i32 noundef 0, i32 noundef %sub52.i) #8
  %288 = ptrtoint ptr %183 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %183, align 1
  %conv54.i = zext i8 %289 to i32
  %and55.i = and i32 %264, %conv54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  %lnot.ext58.i = zext i1 %tobool56.not.i to i32
  %290 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %184, align 1
  %conv60.i = zext i8 %291 to i32
  %and61.i = and i32 %264, %conv60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  %lnot.ext64.neg.i = sext i1 %tobool62.not.i to i32
  %sub65.i = add nsw i32 %lnot.ext64.neg.i, %lnot.ext58.i
  tail call void @input_event(ptr noundef %262, i32 noundef 3, i32 noundef 1, i32 noundef %sub65.i) #8
  %292 = ptrtoint ptr %187 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %187, align 1
  %conv75.i = zext i8 %293 to i32
  %and76.i = and i32 %264, %conv75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool.i223.i = icmp ne i32 %and76.i, 0
  %lnot.ext.i224.i = zext i1 %tobool.i223.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 304, i32 noundef %lnot.ext.i224.i) #8
  %294 = ptrtoint ptr %data.i43 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %data.i43, align 1
  %conv75.1.i = zext i8 %295 to i32
  %and76.1.i = and i32 %264, %conv75.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.1.i)
  %tobool.i223.1.i = icmp ne i32 %and76.1.i, 0
  %lnot.ext.i224.1.i = zext i1 %tobool.i223.1.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 305, i32 noundef %lnot.ext.i224.1.i) #8
  %296 = ptrtoint ptr %181 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %181, align 1
  %conv75.2.i = zext i8 %297 to i32
  %and76.2.i = and i32 %264, %conv75.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.2.i)
  %tobool.i223.2.i = icmp ne i32 %and76.2.i, 0
  %lnot.ext.i224.2.i = zext i1 %tobool.i223.2.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 314, i32 noundef %lnot.ext.i224.2.i) #8
  %298 = ptrtoint ptr %182 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %182, align 1
  %conv75.3.i = zext i8 %299 to i32
  %and76.3.i = and i32 %264, %conv75.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.3.i)
  %tobool.i223.3.i = icmp ne i32 %and76.3.i, 0
  %lnot.ext.i224.3.i = zext i1 %tobool.i223.3.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 315, i32 noundef %lnot.ext.i224.3.i) #8
  %300 = ptrtoint ptr %188 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %188, align 1
  %conv75.4.i = zext i8 %301 to i32
  %and76.4.i = and i32 %264, %conv75.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.4.i)
  %tobool.i223.4.i = icmp ne i32 %and76.4.i, 0
  %lnot.ext.i224.4.i = zext i1 %tobool.i223.4.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 307, i32 noundef %lnot.ext.i224.4.i) #8
  %302 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %180, align 1
  %conv75.5.i = zext i8 %303 to i32
  %and76.5.i = and i32 %264, %conv75.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.5.i)
  %tobool.i223.5.i = icmp ne i32 %and76.5.i, 0
  %lnot.ext.i224.5.i = zext i1 %tobool.i223.5.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 308, i32 noundef %lnot.ext.i224.5.i) #8
  %304 = ptrtoint ptr %189 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %189, align 1
  %conv75.6.i = zext i8 %305 to i32
  %and76.6.i = and i32 %264, %conv75.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.6.i)
  %tobool.i223.6.i = icmp ne i32 %and76.6.i, 0
  %lnot.ext.i224.6.i = zext i1 %tobool.i223.6.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 310, i32 noundef %lnot.ext.i224.6.i) #8
  %306 = ptrtoint ptr %190 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %190, align 1
  %conv75.7.i = zext i8 %307 to i32
  %and76.7.i = and i32 %264, %conv75.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.7.i)
  %tobool.i223.7.i = icmp ne i32 %and76.7.i, 0
  %lnot.ext.i224.7.i = zext i1 %tobool.i223.7.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 311, i32 noundef %lnot.ext.i224.7.i) #8
  br label %for.inc161.sink.split.i

sw.bb80.i:                                        ; preds = %for.body.i55
  %308 = ptrtoint ptr %191 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %191, align 1
  %conv82.i = zext i8 %309 to i32
  %and83.i = and i32 %264, %conv82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %land.lhs.true.i, label %sw.bb80.i.for.inc161.i_crit_edge

sw.bb80.i.for.inc161.i_crit_edge:                 ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc161.i

land.lhs.true.i:                                  ; preds = %sw.bb80.i
  %310 = ptrtoint ptr %192 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %192, align 1
  %conv86.i = zext i8 %311 to i32
  %and87.i = and i32 %264, %conv86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %land.lhs.true89.i, label %land.lhs.true.i.for.inc161.i_crit_edge

land.lhs.true.i.for.inc161.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc161.i

land.lhs.true89.i:                                ; preds = %land.lhs.true.i
  %312 = ptrtoint ptr %193 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %193, align 1
  %conv91.i = zext i8 %313 to i32
  %and92.i = and i32 %264, %conv91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %land.lhs.true94.i, label %land.lhs.true89.i.for.inc161.i_crit_edge

land.lhs.true89.i.for.inc161.i_crit_edge:         ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc161.i

land.lhs.true94.i:                                ; preds = %land.lhs.true89.i
  %314 = ptrtoint ptr %194 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %194, align 1
  %conv96.i = zext i8 %315 to i32
  %and97.i = and i32 %264, %conv96.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %land.lhs.true94.i.for.inc161.i_crit_edge, label %if.then.i

land.lhs.true94.i.for.inc161.i_crit_edge:         ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc161.i

if.then.i:                                        ; preds = %land.lhs.true94.i
  %316 = ptrtoint ptr %188 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %188, align 1
  %conv100.i = zext i8 %317 to i32
  %and101.i = and i32 %264, %conv100.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool.i225.i = icmp ne i32 %and101.i, 0
  %lnot.ext.i226.i = zext i1 %tobool.i225.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i226.i) #8
  %318 = ptrtoint ptr %187 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %187, align 1
  %conv103.i = zext i8 %319 to i32
  %and104.i = and i32 %264, %conv103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool.i227.i = icmp ne i32 %and104.i, 0
  %lnot.ext.i228.i = zext i1 %tobool.i227.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 1, i32 noundef 273, i32 noundef %lnot.ext.i228.i) #8
  %320 = ptrtoint ptr %204 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %204, align 1
  %conv112.i = zext i8 %321 to i32
  %and113.i = and i32 %264, %conv112.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.not.i = icmp eq i32 %and113.i, 0
  %322 = ptrtoint ptr %196 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %196, align 1
  %conv123.i = zext i8 %323 to i32
  %and124.i = and i32 %264, %conv123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.not.i = icmp eq i32 %and124.i, 0
  %shl.1.i = select i1 %tobool114.not.not.i, i8 0, i8 2
  %324 = ptrtoint ptr %205 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %205, align 1
  %conv112.1.i = zext i8 %325 to i32
  %and113.1.i = and i32 %264, %conv112.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.1.i)
  %tobool114.not.1.i = icmp ne i32 %and113.1.i, 0
  %326 = zext i1 %tobool114.not.1.i to i8
  %spec.select.1.i = or i8 %shl.1.i, %326
  %shl119.1.i = select i1 %tobool125.not.not.i, i8 0, i8 2
  %327 = ptrtoint ptr %197 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %197, align 1
  %conv123.1.i = zext i8 %328 to i32
  %and124.1.i = and i32 %264, %conv123.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.1.i)
  %tobool125.not.1.i = icmp ne i32 %and124.1.i, 0
  %329 = zext i1 %tobool125.not.1.i to i8
  %y_rel.1.1.i = or i8 %shl119.1.i, %329
  %330 = ptrtoint ptr %206 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %206, align 1
  %conv112.2.i = zext i8 %331 to i32
  %and113.2.i = and i32 %264, %conv112.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.2.i)
  %tobool114.not.2.not.i = icmp eq i32 %and113.2.i, 0
  %332 = ptrtoint ptr %198 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %198, align 1
  %conv123.2.i = zext i8 %333 to i32
  %and124.2.i = and i32 %264, %conv123.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.2.i)
  %tobool125.not.2.not.i = icmp eq i32 %and124.2.i, 0
  %334 = shl nuw nsw i8 %spec.select.1.i, 2
  %335 = select i1 %tobool114.not.2.not.i, i8 0, i8 2
  %shl.3.i = or i8 %334, %335
  %336 = ptrtoint ptr %207 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %207, align 1
  %conv112.3.i = zext i8 %337 to i32
  %and113.3.i = and i32 %264, %conv112.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.3.i)
  %tobool114.not.3.i = icmp ne i32 %and113.3.i, 0
  %338 = zext i1 %tobool114.not.3.i to i8
  %spec.select.3.i = or i8 %shl.3.i, %338
  %339 = shl nuw nsw i8 %y_rel.1.1.i, 2
  %340 = select i1 %tobool125.not.2.not.i, i8 0, i8 2
  %shl119.3.i = or i8 %339, %340
  %341 = ptrtoint ptr %199 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %199, align 1
  %conv123.3.i = zext i8 %342 to i32
  %and124.3.i = and i32 %264, %conv123.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.3.i)
  %tobool125.not.3.i = icmp ne i32 %and124.3.i, 0
  %343 = zext i1 %tobool125.not.3.i to i8
  %y_rel.1.3.i = or i8 %shl119.3.i, %343
  %344 = ptrtoint ptr %208 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %208, align 1
  %conv112.4.i = zext i8 %345 to i32
  %and113.4.i = and i32 %264, %conv112.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.4.i)
  %tobool114.not.4.not.i = icmp eq i32 %and113.4.i, 0
  %346 = ptrtoint ptr %200 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %200, align 1
  %conv123.4.i = zext i8 %347 to i32
  %and124.4.i = and i32 %264, %conv123.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.4.i)
  %tobool125.not.4.not.i = icmp eq i32 %and124.4.i, 0
  %348 = shl nuw nsw i8 %spec.select.3.i, 2
  %349 = select i1 %tobool114.not.4.not.i, i8 0, i8 2
  %shl.5.i = or i8 %348, %349
  %350 = ptrtoint ptr %209 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %209, align 1
  %conv112.5.i = zext i8 %351 to i32
  %and113.5.i = and i32 %264, %conv112.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.5.i)
  %tobool114.not.5.i = icmp ne i32 %and113.5.i, 0
  %352 = zext i1 %tobool114.not.5.i to i8
  %spec.select.5.i = or i8 %shl.5.i, %352
  %353 = shl nuw nsw i8 %y_rel.1.3.i, 2
  %354 = select i1 %tobool125.not.4.not.i, i8 0, i8 2
  %shl119.5.i = or i8 %353, %354
  %355 = ptrtoint ptr %201 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %201, align 1
  %conv123.5.i = zext i8 %356 to i32
  %and124.5.i = and i32 %264, %conv123.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.5.i)
  %tobool125.not.5.i = icmp ne i32 %and124.5.i, 0
  %357 = zext i1 %tobool125.not.5.i to i8
  %y_rel.1.5.i = or i8 %shl119.5.i, %357
  %shl.6.i = shl i8 %spec.select.5.i, 1
  %358 = ptrtoint ptr %210 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %210, align 1
  %conv112.6.i = zext i8 %359 to i32
  %and113.6.i = and i32 %264, %conv112.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.6.i)
  %tobool114.not.6.i = icmp ne i32 %and113.6.i, 0
  %360 = zext i1 %tobool114.not.6.i to i8
  %spec.select.6.i = or i8 %shl.6.i, %360
  %shl119.6.i = shl i8 %y_rel.1.5.i, 1
  %361 = ptrtoint ptr %202 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %202, align 1
  %conv123.6.i = zext i8 %362 to i32
  %and124.6.i = and i32 %264, %conv123.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.6.i)
  %tobool125.not.6.i = icmp ne i32 %and124.6.i, 0
  %363 = zext i1 %tobool125.not.6.i to i8
  %y_rel.1.6.i = or i8 %shl119.6.i, %363
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.6.i)
  %tobool134.not.i = icmp eq i8 %spec.select.6.i, 0
  br i1 %tobool134.not.i, label %if.then.i.if.end146.i_crit_edge, label %if.then135.i

if.then.i.if.end146.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146.i

if.then135.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %364 = ptrtoint ptr %203 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %203, align 1
  %conv137.i = zext i8 %365 to i32
  %and138.i = and i32 %264, %conv137.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool139.not.i = icmp eq i32 %and138.i, 0
  %sub142.i = sub i8 0, %spec.select.6.i
  %spec.select221.i = select i1 %tobool139.not.i, i8 %spec.select.6.i, i8 %sub142.i
  %conv145.i = zext i8 %spec.select221.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 2, i32 noundef 0, i32 noundef %conv145.i) #8
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then135.i, %if.then.i.if.end146.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %y_rel.1.6.i)
  %tobool147.not.i = icmp eq i8 %y_rel.1.6.i, 0
  br i1 %tobool147.not.i, label %if.end146.i.for.inc161.sink.split.i_crit_edge, label %if.then148.i

if.end146.i.for.inc161.sink.split.i_crit_edge:    ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc161.sink.split.i

if.then148.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #10
  %366 = ptrtoint ptr %195 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %195, align 1
  %conv150.i = zext i8 %367 to i32
  %and151.i = and i32 %264, %conv150.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  %sub155.i = sub i8 0, %y_rel.1.6.i
  %spec.select222.i = select i1 %tobool152.not.i, i8 %y_rel.1.6.i, i8 %sub155.i
  %conv158.i = zext i8 %spec.select222.i to i32
  tail call void @input_event(ptr noundef %262, i32 noundef 2, i32 noundef 1, i32 noundef %conv158.i) #8
  br label %for.inc161.sink.split.i

for.inc161.sink.split.i:                          ; preds = %if.then148.i, %if.end146.i.for.inc161.sink.split.i_crit_edge, %sw.bb39.i, %sw.bb.i
  tail call void @input_event(ptr noundef %262, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc161.i

for.inc161.i:                                     ; preds = %for.inc161.sink.split.i, %land.lhs.true94.i.for.inc161.i_crit_edge, %land.lhs.true89.i.for.inc161.i_crit_edge, %land.lhs.true.i.for.inc161.i_crit_edge, %sw.bb80.i.for.inc161.i_crit_edge, %for.body.i55.for.inc161.i_crit_edge
  %inc162.i = add nuw nsw i32 %i.0234.i, 1
  %exitcond.not.i66 = icmp eq i32 %inc162.i, 5
  br i1 %exitcond.not.i66, label %gc_nes_process_packet.exit, label %for.inc161.i.for.body.i55_crit_edge

for.inc161.i.for.body.i55_crit_edge:              ; preds = %for.inc161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i55

gc_nes_process_packet.exit:                       ; preds = %for.inc161.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i43) #8
  br label %if.end12

if.end12:                                         ; preds = %gc_nes_process_packet.exit, %lor.lhs.false7.if.end12_crit_edge
  %arrayidx14 = getelementptr i8, ptr %t, i32 64
  %368 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool15.not = icmp eq i32 %369, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %if.end12.if.then20_crit_edge

if.end12.if.then20_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false16:                                  ; preds = %if.end12
  %arrayidx18 = getelementptr i8, ptr %t, i32 68
  %370 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool19.not = icmp eq i32 %371, 0
  br i1 %tobool19.not, label %lor.lhs.false16.if.end21_crit_edge, label %lor.lhs.false16.if.then20_crit_edge

lor.lhs.false16.if.then20_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false16.if.end21_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %lor.lhs.false16.if.then20_crit_edge, %if.end12.if.then20_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i67) #8
  %372 = getelementptr inbounds [6 x i8], ptr %data.i67, i32 0, i32 2
  %373 = getelementptr inbounds [6 x i8], ptr %data.i67, i32 0, i32 4
  %arrayidx.i68 = getelementptr i8, ptr %t, i32 68
  %374 = call ptr @memset(ptr %data.i67, i32 255, i32 6)
  %375 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %arrayidx.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %tobool.not.i69 = icmp eq i32 %376, 0
  %377 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %add.ptr, align 4
  %port.i.i71 = getelementptr inbounds %struct.pardevice, ptr %378, i32 0, i32 1
  %379 = ptrtoint ptr %port.i.i71 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %port.i.i71, align 4
  %ops.i.i72 = getelementptr inbounds %struct.parport, ptr %380, i32 0, i32 24
  %381 = ptrtoint ptr %ops.i.i72 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %ops.i.i72, align 4
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %382, align 4
  tail call void %384(ptr noundef %380, i8 noundef zeroext -2) #8
  %385 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %add.ptr, align 4
  %port4.i.i73 = getelementptr inbounds %struct.pardevice, ptr %386, i32 0, i32 1
  %387 = ptrtoint ptr %port4.i.i73 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %port4.i.i73, align 4
  %ops5.i.i74 = getelementptr inbounds %struct.parport, ptr %388, i32 0, i32 24
  %389 = ptrtoint ptr %ops5.i.i74 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %ops5.i.i74, align 4
  %read_status.i.i75 = getelementptr inbounds %struct.parport_operations, ptr %390, i32 0, i32 5
  %391 = ptrtoint ptr %read_status.i.i75 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %read_status.i.i75, align 4
  %call.i.i76 = tail call zeroext i8 %392(ptr noundef %388) #8
  %393 = xor i8 %call.i.i76, 127
  %394 = ptrtoint ptr %data.i67 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %393, ptr %data.i67, align 1
  %395 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %add.ptr, align 4
  %port.i.i71.1 = getelementptr inbounds %struct.pardevice, ptr %396, i32 0, i32 1
  %397 = ptrtoint ptr %port.i.i71.1 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %port.i.i71.1, align 4
  %ops.i.i72.1 = getelementptr inbounds %struct.parport, ptr %398, i32 0, i32 24
  %399 = ptrtoint ptr %ops.i.i72.1 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %ops.i.i72.1, align 4
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %400, align 4
  tail call void %402(ptr noundef %398, i8 noundef zeroext -3) #8
  %403 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %add.ptr, align 4
  %port4.i.i73.1 = getelementptr inbounds %struct.pardevice, ptr %404, i32 0, i32 1
  %405 = ptrtoint ptr %port4.i.i73.1 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %port4.i.i73.1, align 4
  %ops5.i.i74.1 = getelementptr inbounds %struct.parport, ptr %406, i32 0, i32 24
  %407 = ptrtoint ptr %ops5.i.i74.1 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %ops5.i.i74.1, align 4
  %read_status.i.i75.1 = getelementptr inbounds %struct.parport_operations, ptr %408, i32 0, i32 5
  %409 = ptrtoint ptr %read_status.i.i75.1 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %read_status.i.i75.1, align 4
  %call.i.i76.1 = tail call zeroext i8 %410(ptr noundef %406) #8
  %411 = xor i8 %call.i.i76.1, 127
  %arrayidx.i.i77.1 = getelementptr inbounds i8, ptr %data.i67, i32 1
  %412 = ptrtoint ptr %arrayidx.i.i77.1 to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 %411, ptr %arrayidx.i.i77.1, align 1
  %413 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %add.ptr, align 4
  %port.i.i71.2 = getelementptr inbounds %struct.pardevice, ptr %414, i32 0, i32 1
  %415 = ptrtoint ptr %port.i.i71.2 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %port.i.i71.2, align 4
  %ops.i.i72.2 = getelementptr inbounds %struct.parport, ptr %416, i32 0, i32 24
  %417 = ptrtoint ptr %ops.i.i72.2 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %ops.i.i72.2, align 4
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %418, align 4
  tail call void %420(ptr noundef %416, i8 noundef zeroext -5) #8
  %421 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %add.ptr, align 4
  %port4.i.i73.2 = getelementptr inbounds %struct.pardevice, ptr %422, i32 0, i32 1
  %423 = ptrtoint ptr %port4.i.i73.2 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %port4.i.i73.2, align 4
  %ops5.i.i74.2 = getelementptr inbounds %struct.parport, ptr %424, i32 0, i32 24
  %425 = ptrtoint ptr %ops5.i.i74.2 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %ops5.i.i74.2, align 4
  %read_status.i.i75.2 = getelementptr inbounds %struct.parport_operations, ptr %426, i32 0, i32 5
  %427 = ptrtoint ptr %read_status.i.i75.2 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %read_status.i.i75.2, align 4
  %call.i.i76.2 = tail call zeroext i8 %428(ptr noundef %424) #8
  %429 = xor i8 %call.i.i76.2, 127
  %arrayidx.i.i77.2 = getelementptr inbounds i8, ptr %data.i67, i32 2
  %430 = ptrtoint ptr %arrayidx.i.i77.2 to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 %429, ptr %arrayidx.i.i77.2, align 1
  %431 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %add.ptr, align 4
  %port.i.i71.3 = getelementptr inbounds %struct.pardevice, ptr %432, i32 0, i32 1
  %433 = ptrtoint ptr %port.i.i71.3 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %port.i.i71.3, align 4
  %ops.i.i72.3 = getelementptr inbounds %struct.parport, ptr %434, i32 0, i32 24
  %435 = ptrtoint ptr %ops.i.i72.3 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ops.i.i72.3, align 4
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %436, align 4
  tail call void %438(ptr noundef %434, i8 noundef zeroext -9) #8
  %439 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %add.ptr, align 4
  %port4.i.i73.3 = getelementptr inbounds %struct.pardevice, ptr %440, i32 0, i32 1
  %441 = ptrtoint ptr %port4.i.i73.3 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %port4.i.i73.3, align 4
  %ops5.i.i74.3 = getelementptr inbounds %struct.parport, ptr %442, i32 0, i32 24
  %443 = ptrtoint ptr %ops5.i.i74.3 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %ops5.i.i74.3, align 4
  %read_status.i.i75.3 = getelementptr inbounds %struct.parport_operations, ptr %444, i32 0, i32 5
  %445 = ptrtoint ptr %read_status.i.i75.3 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %read_status.i.i75.3, align 4
  %call.i.i76.3 = tail call zeroext i8 %446(ptr noundef %442) #8
  %447 = xor i8 %call.i.i76.3, 127
  %arrayidx.i.i77.3 = getelementptr inbounds i8, ptr %data.i67, i32 3
  %448 = ptrtoint ptr %arrayidx.i.i77.3 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %447, ptr %arrayidx.i.i77.3, align 1
  %449 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %add.ptr, align 4
  %port.i.i71.4 = getelementptr inbounds %struct.pardevice, ptr %450, i32 0, i32 1
  %451 = ptrtoint ptr %port.i.i71.4 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %port.i.i71.4, align 4
  %ops.i.i72.4 = getelementptr inbounds %struct.parport, ptr %452, i32 0, i32 24
  %453 = ptrtoint ptr %ops.i.i72.4 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %ops.i.i72.4, align 4
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %454, align 4
  tail call void %456(ptr noundef %452, i8 noundef zeroext -17) #8
  %457 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %add.ptr, align 4
  %port4.i.i73.4 = getelementptr inbounds %struct.pardevice, ptr %458, i32 0, i32 1
  %459 = ptrtoint ptr %port4.i.i73.4 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %port4.i.i73.4, align 4
  %ops5.i.i74.4 = getelementptr inbounds %struct.parport, ptr %460, i32 0, i32 24
  %461 = ptrtoint ptr %ops5.i.i74.4 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %ops5.i.i74.4, align 4
  %read_status.i.i75.4 = getelementptr inbounds %struct.parport_operations, ptr %462, i32 0, i32 5
  %463 = ptrtoint ptr %read_status.i.i75.4 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %read_status.i.i75.4, align 4
  %call.i.i76.4 = tail call zeroext i8 %464(ptr noundef %460) #8
  %465 = xor i8 %call.i.i76.4, 127
  %arrayidx.i.i77.4 = getelementptr inbounds i8, ptr %data.i67, i32 4
  %466 = ptrtoint ptr %arrayidx.i.i77.4 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 %465, ptr %arrayidx.i.i77.4, align 1
  br i1 %tobool.not.i69, label %if.then20.for.body.i82.preheader_crit_edge, label %for.body.i.i80.5

if.then20.for.body.i82.preheader_crit_edge:       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i82.preheader

for.body.i.i80.5:                                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %467 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %add.ptr, align 4
  %port.i.i71.5 = getelementptr inbounds %struct.pardevice, ptr %468, i32 0, i32 1
  %469 = ptrtoint ptr %port.i.i71.5 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %port.i.i71.5, align 4
  %ops.i.i72.5 = getelementptr inbounds %struct.parport, ptr %470, i32 0, i32 24
  %471 = ptrtoint ptr %ops.i.i72.5 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %ops.i.i72.5, align 4
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %472, align 4
  tail call void %474(ptr noundef %470, i8 noundef zeroext -33) #8
  %475 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %add.ptr, align 4
  %port4.i.i73.5 = getelementptr inbounds %struct.pardevice, ptr %476, i32 0, i32 1
  %477 = ptrtoint ptr %port4.i.i73.5 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %port4.i.i73.5, align 4
  %ops5.i.i74.5 = getelementptr inbounds %struct.parport, ptr %478, i32 0, i32 24
  %479 = ptrtoint ptr %ops5.i.i74.5 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %ops5.i.i74.5, align 4
  %read_status.i.i75.5 = getelementptr inbounds %struct.parport_operations, ptr %480, i32 0, i32 5
  %481 = ptrtoint ptr %read_status.i.i75.5 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %read_status.i.i75.5, align 4
  %call.i.i76.5 = tail call zeroext i8 %482(ptr noundef %478) #8
  %483 = xor i8 %call.i.i76.5, 127
  %arrayidx.i.i77.5 = getelementptr inbounds i8, ptr %data.i67, i32 5
  %484 = ptrtoint ptr %arrayidx.i.i77.5 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %483, ptr %arrayidx.i.i77.5, align 1
  br label %for.body.i82.preheader

for.body.i82.preheader:                           ; preds = %for.body.i.i80.5, %if.then20.for.body.i82.preheader_crit_edge
  %485 = getelementptr inbounds [6 x i8], ptr %data.i67, i32 0, i32 1
  %486 = getelementptr inbounds [6 x i8], ptr %data.i67, i32 0, i32 3
  %487 = getelementptr inbounds [6 x i8], ptr %data.i67, i32 0, i32 5
  br label %for.body.i82

for.body.i82:                                     ; preds = %for.inc.i.for.body.i82_crit_edge, %for.body.i82.preheader
  %i.049.i = phi i32 [ %inc.i, %for.inc.i.for.body.i82_crit_edge ], [ 0, %for.body.i82.preheader ]
  %arrayidx1.i = getelementptr %struct.gc, ptr %add.ptr, i32 0, i32 1, i32 %i.049.i
  %488 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %arrayidx1.i, align 4
  %arrayidx3.i = getelementptr [5 x i32], ptr @gc_status_bit, i32 0, i32 %i.049.i
  %490 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %arrayidx3.i, align 4
  %type.i81 = getelementptr %struct.gc, ptr %add.ptr, i32 0, i32 1, i32 %i.049.i, i32 1
  %492 = ptrtoint ptr %type.i81 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %type.i81, align 4
  %494 = zext i32 %493 to i64
  call void @__sanitizer_cov_trace_switch(i64 %494, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %493, label %for.body.i82.for.inc.i_crit_edge [
    i32 5, label %sw.bb.i87
    i32 4, label %for.body.i82.sw.bb5.i_crit_edge
  ]

for.body.i82.sw.bb5.i_crit_edge:                  ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

for.body.i82.for.inc.i_crit_edge:                 ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

sw.bb.i87:                                        ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #10
  %495 = ptrtoint ptr %487 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %487, align 1
  %conv.i83 = zext i8 %496 to i32
  %and.i84 = and i32 %491, %conv.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.i.i85 = icmp ne i32 %and.i84, 0
  %lnot.ext.i.i86 = zext i1 %tobool.i.i85 to i32
  tail call void @input_event(ptr noundef %489, i32 noundef 1, i32 noundef 289, i32 noundef %lnot.ext.i.i86) #8
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb.i87, %for.body.i82.sw.bb5.i_crit_edge
  %497 = ptrtoint ptr %372 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %372, align 1
  %conv7.i = zext i8 %498 to i32
  %and8.i = and i32 %491, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i88 = icmp eq i32 %and8.i, 0
  %lnot.ext.i89 = zext i1 %tobool9.not.i88 to i32
  %499 = ptrtoint ptr %486 to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %486, align 1
  %conv11.i90 = zext i8 %500 to i32
  %and12.i91 = and i32 %491, %conv11.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i91)
  %tobool13.not.i92 = icmp eq i32 %and12.i91, 0
  %lnot.ext15.neg.i93 = sext i1 %tobool13.not.i92 to i32
  %sub.i94 = add nsw i32 %lnot.ext15.neg.i93, %lnot.ext.i89
  tail call void @input_event(ptr noundef %489, i32 noundef 3, i32 noundef 0, i32 noundef %sub.i94) #8
  %501 = ptrtoint ptr %data.i67 to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %data.i67, align 1
  %conv17.i95 = zext i8 %502 to i32
  %and18.i96 = and i32 %491, %conv17.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i96)
  %tobool19.not.i97 = icmp eq i32 %and18.i96, 0
  %lnot.ext21.i98 = zext i1 %tobool19.not.i97 to i32
  %503 = ptrtoint ptr %485 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %485, align 1
  %conv23.i99 = zext i8 %504 to i32
  %and24.i100 = and i32 %491, %conv23.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i100)
  %tobool25.not.i101 = icmp eq i32 %and24.i100, 0
  %lnot.ext27.neg.i102 = sext i1 %tobool25.not.i101 to i32
  %sub28.i103 = add nsw i32 %lnot.ext27.neg.i102, %lnot.ext21.i98
  tail call void @input_event(ptr noundef %489, i32 noundef 3, i32 noundef 1, i32 noundef %sub28.i103) #8
  %505 = ptrtoint ptr %373 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %373, align 1
  %conv30.i = zext i8 %506 to i32
  %and31.i = and i32 %491, %conv30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool.i47.i = icmp ne i32 %and31.i, 0
  %lnot.ext.i48.i = zext i1 %tobool.i47.i to i32
  tail call void @input_event(ptr noundef %489, i32 noundef 1, i32 noundef 288, i32 noundef %lnot.ext.i48.i) #8
  tail call void @input_event(ptr noundef %489, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb5.i, %for.body.i82.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i104 = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i104, label %gc_multi_process_packet.exit, label %for.inc.i.for.body.i82_crit_edge

for.inc.i.for.body.i82_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i82

gc_multi_process_packet.exit:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i67) #8
  br label %if.end21

if.end21:                                         ; preds = %gc_multi_process_packet.exit, %lor.lhs.false16.if.end21_crit_edge
  %arrayidx23 = getelementptr i8, ptr %t, i32 76
  %507 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %508)
  %tobool24.not = icmp eq i32 %508, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %if.end21.if.then29_crit_edge

if.end21.if.then29_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

lor.lhs.false25:                                  ; preds = %if.end21
  %arrayidx27 = getelementptr i8, ptr %t, i32 80
  %509 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %510)
  %tobool28.not = icmp eq i32 %510, 0
  br i1 %tobool28.not, label %lor.lhs.false25.if.end30_crit_edge, label %lor.lhs.false25.if.then29_crit_edge

lor.lhs.false25.if.then29_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

lor.lhs.false25.if.end30_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then29:                                        ; preds = %lor.lhs.false25.if.then29_crit_edge, %if.end21.if.then29_crit_edge
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %data.i105) #8
  %511 = call ptr @memset(ptr %data.i105, i32 255, i32 30)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %id.i) #8
  %512 = getelementptr inbounds [5 x i8], ptr %id.i, i32 0, i32 1
  %513 = getelementptr inbounds [5 x i8], ptr %id.i, i32 0, i32 2
  %514 = getelementptr inbounds [5 x i8], ptr %id.i, i32 0, i32 3
  %515 = getelementptr inbounds [5 x i8], ptr %id.i, i32 0, i32 4
  %516 = call ptr @memset(ptr %id.i, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data2.i.i) #8
  %517 = getelementptr inbounds [5 x i8], ptr %data2.i.i, i32 0, i32 1
  %518 = getelementptr inbounds [5 x i8], ptr %data2.i.i, i32 0, i32 2
  %519 = getelementptr inbounds [5 x i8], ptr %data2.i.i, i32 0, i32 3
  %520 = getelementptr inbounds [5 x i8], ptr %data2.i.i, i32 0, i32 4
  %521 = call ptr @memset(ptr %data2.i.i, i32 255, i32 5)
  %522 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %add.ptr, align 4
  %port.i.i106 = getelementptr inbounds %struct.pardevice, ptr %523, i32 0, i32 1
  %524 = ptrtoint ptr %port.i.i106 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %port.i.i106, align 4
  %ops.i.i107 = getelementptr inbounds %struct.parport, ptr %525, i32 0, i32 24
  %526 = ptrtoint ptr %ops.i.i107 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %ops.i.i107, align 4
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %527, align 4
  tail call void %529(ptr noundef %525, i8 noundef zeroext -2) #8
  %530 = load i32, ptr @gc_psx_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %531 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %531(i32 noundef %530) #8
  %532 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %add.ptr, align 4
  %port7.i.i = getelementptr inbounds %struct.pardevice, ptr %533, i32 0, i32 1
  %534 = ptrtoint ptr %port7.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %port7.i.i, align 4
  %ops8.i.i = getelementptr inbounds %struct.parport, ptr %535, i32 0, i32 24
  %536 = ptrtoint ptr %ops8.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %ops8.i.i, align 4
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %537, align 4
  tail call void %539(ptr noundef %535, i8 noundef zeroext -4) #8
  %540 = load i32, ptr @gc_psx_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %541 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %541(i32 noundef %540) #8
  %542 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !140
  %and.i.i.i108 = and i32 %542, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i108)
  %tobool.not.i.i109 = icmp eq i32 %and.i.i.i108, 0
  br i1 %tobool.not.i.i109, label %if.then.i.i110, label %if.then29.do.end30.i.i_crit_edge

if.then29.do.end30.i.i_crit_edge:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i.i

if.then.i.i110:                                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then.i.i110, %if.then29.do.end30.i.i_crit_edge
  call fastcc void @gc_psx_command(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %data2.i.i) #8
  call fastcc void @gc_psx_command(ptr noundef %add.ptr, i32 noundef 66, ptr noundef nonnull %id.i) #8
  call fastcc void @gc_psx_command(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %data2.i.i) #8
  %type.i.i = getelementptr i8, ptr %t, i32 -196
  %543 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %type.i.i, align 4
  %.off.i.i = add i32 %544, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %land.lhs.true.i.i, label %do.end30.i.i.if.end55.i.i_crit_edge

do.end30.i.i.if.end55.i.i_crit_edge:              ; preds = %do.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i

land.lhs.true.i.i:                                ; preds = %do.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %545 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %id.i, align 1
  %547 = shl i8 %546, 1
  %548 = and i8 %547, 30
  %549 = add nsw i8 %548, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %549)
  %550 = icmp ult i8 %549, 6
  %narrow.i.i = select i1 %550, i8 %548, i8 0
  %spec.select.i.i = zext i8 %narrow.i.i to i32
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %land.lhs.true.i.i, %do.end30.i.i.if.end55.i.i_crit_edge
  %max_len.1.i.i = phi i32 [ 0, %do.end30.i.i.if.end55.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %type.1.i.i = getelementptr i8, ptr %t, i32 -156
  %551 = ptrtoint ptr %type.1.i.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %type.1.i.i, align 4
  %.off.1.i.i = add i32 %552, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.1.i.i)
  %switch.1.i.i = icmp ult i32 %.off.1.i.i, 2
  br i1 %switch.1.i.i, label %land.lhs.true.1.i.i, label %if.end55.i.i.if.end55.1.i.i_crit_edge

if.end55.i.i.if.end55.1.i.i_crit_edge:            ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.1.i.i

land.lhs.true.1.i.i:                              ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %553 = ptrtoint ptr %512 to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %512, align 1
  %555 = shl i8 %554, 1
  %556 = and i8 %555, 30
  %shl.1.i.i = zext i8 %556 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_len.1.i.i, i32 %shl.1.i.i)
  %cmp41.1.i.i = icmp ult i32 %max_len.1.i.i, %shl.1.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %556)
  %cmp48.1.i.i = icmp ult i8 %556, 7
  %or.cond.1.i.i = and i1 %cmp48.1.i.i, %cmp41.1.i.i
  %spec.select.1.i.i = select i1 %or.cond.1.i.i, i32 %shl.1.i.i, i32 %max_len.1.i.i
  br label %if.end55.1.i.i

if.end55.1.i.i:                                   ; preds = %land.lhs.true.1.i.i, %if.end55.i.i.if.end55.1.i.i_crit_edge
  %max_len.1.1.i.i = phi i32 [ %max_len.1.i.i, %if.end55.i.i.if.end55.1.i.i_crit_edge ], [ %spec.select.1.i.i, %land.lhs.true.1.i.i ]
  %type.2.i.i = getelementptr i8, ptr %t, i32 -116
  %557 = ptrtoint ptr %type.2.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %type.2.i.i, align 4
  %.off.2.i.i = add i32 %558, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.2.i.i)
  %switch.2.i.i = icmp ult i32 %.off.2.i.i, 2
  br i1 %switch.2.i.i, label %land.lhs.true.2.i.i, label %if.end55.1.i.i.if.end55.2.i.i_crit_edge

if.end55.1.i.i.if.end55.2.i.i_crit_edge:          ; preds = %if.end55.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.2.i.i

land.lhs.true.2.i.i:                              ; preds = %if.end55.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %559 = ptrtoint ptr %513 to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %513, align 1
  %561 = shl i8 %560, 1
  %562 = and i8 %561, 30
  %shl.2.i.i = zext i8 %562 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_len.1.1.i.i, i32 %shl.2.i.i)
  %cmp41.2.i.i = icmp ult i32 %max_len.1.1.i.i, %shl.2.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %562)
  %cmp48.2.i.i = icmp ult i8 %562, 7
  %or.cond.2.i.i = and i1 %cmp48.2.i.i, %cmp41.2.i.i
  %spec.select.2.i.i = select i1 %or.cond.2.i.i, i32 %shl.2.i.i, i32 %max_len.1.1.i.i
  br label %if.end55.2.i.i

if.end55.2.i.i:                                   ; preds = %land.lhs.true.2.i.i, %if.end55.1.i.i.if.end55.2.i.i_crit_edge
  %max_len.1.2.i.i = phi i32 [ %max_len.1.1.i.i, %if.end55.1.i.i.if.end55.2.i.i_crit_edge ], [ %spec.select.2.i.i, %land.lhs.true.2.i.i ]
  %type.3.i.i = getelementptr i8, ptr %t, i32 -76
  %563 = ptrtoint ptr %type.3.i.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %type.3.i.i, align 4
  %.off.3.i.i = add i32 %564, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.3.i.i)
  %switch.3.i.i = icmp ult i32 %.off.3.i.i, 2
  br i1 %switch.3.i.i, label %land.lhs.true.3.i.i, label %if.end55.2.i.i.if.end55.3.i.i_crit_edge

if.end55.2.i.i.if.end55.3.i.i_crit_edge:          ; preds = %if.end55.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.3.i.i

land.lhs.true.3.i.i:                              ; preds = %if.end55.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %565 = ptrtoint ptr %514 to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %514, align 1
  %567 = shl i8 %566, 1
  %568 = and i8 %567, 30
  %shl.3.i.i = zext i8 %568 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_len.1.2.i.i, i32 %shl.3.i.i)
  %cmp41.3.i.i = icmp ult i32 %max_len.1.2.i.i, %shl.3.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %568)
  %cmp48.3.i.i = icmp ult i8 %568, 7
  %or.cond.3.i.i = and i1 %cmp48.3.i.i, %cmp41.3.i.i
  %spec.select.3.i.i = select i1 %or.cond.3.i.i, i32 %shl.3.i.i, i32 %max_len.1.2.i.i
  br label %if.end55.3.i.i

if.end55.3.i.i:                                   ; preds = %land.lhs.true.3.i.i, %if.end55.2.i.i.if.end55.3.i.i_crit_edge
  %max_len.1.3.i.i = phi i32 [ %max_len.1.2.i.i, %if.end55.2.i.i.if.end55.3.i.i_crit_edge ], [ %spec.select.3.i.i, %land.lhs.true.3.i.i ]
  %type.4.i.i = getelementptr i8, ptr %t, i32 -36
  %569 = ptrtoint ptr %type.4.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %type.4.i.i, align 4
  %.off.4.i.i = add i32 %570, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.4.i.i)
  %switch.4.i.i = icmp ult i32 %.off.4.i.i, 2
  br i1 %switch.4.i.i, label %land.lhs.true.4.i.i, label %if.end55.3.i.i.if.end55.4.i.i_crit_edge

if.end55.3.i.i.if.end55.4.i.i_crit_edge:          ; preds = %if.end55.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.4.i.i

land.lhs.true.4.i.i:                              ; preds = %if.end55.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %571 = ptrtoint ptr %515 to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %515, align 1
  %573 = shl i8 %572, 1
  %574 = and i8 %573, 30
  %shl.4.i.i = zext i8 %574 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_len.1.3.i.i, i32 %shl.4.i.i)
  %cmp41.4.i.i = icmp ult i32 %max_len.1.3.i.i, %shl.4.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %574)
  %cmp48.4.i.i = icmp ult i8 %574, 7
  %or.cond.4.i.i = and i1 %cmp48.4.i.i, %cmp41.4.i.i
  %spec.select.4.i.i = select i1 %or.cond.4.i.i, i32 %shl.4.i.i, i32 %max_len.1.3.i.i
  br label %if.end55.4.i.i

if.end55.4.i.i:                                   ; preds = %land.lhs.true.4.i.i, %if.end55.3.i.i.if.end55.4.i.i_crit_edge
  %max_len.1.4.i.i = phi i32 [ %max_len.1.3.i.i, %if.end55.3.i.i.if.end55.4.i.i_crit_edge ], [ %spec.select.4.i.i, %land.lhs.true.4.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_len.1.4.i.i)
  %cmp57163.not.i.i = icmp eq i32 %max_len.1.4.i.i, 0
  br i1 %cmp57163.not.i.i, label %if.end55.4.i.i.do.body74.i.i_crit_edge, label %if.end55.4.i.i.for.body59.i.i_crit_edge

if.end55.4.i.i.for.body59.i.i_crit_edge:          ; preds = %if.end55.4.i.i
  br label %for.body59.i.i

if.end55.4.i.i.do.body74.i.i_crit_edge:           ; preds = %if.end55.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74.i.i

for.body59.i.i:                                   ; preds = %for.body59.i.i.for.body59.i.i_crit_edge, %if.end55.4.i.i.for.body59.i.i_crit_edge
  %i.1164.i.i = phi i32 [ %inc72.i.i, %for.body59.i.i.for.body59.i.i_crit_edge ], [ 0, %if.end55.4.i.i.for.body59.i.i_crit_edge ]
  call fastcc void @gc_psx_command(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %data2.i.i) #8
  %575 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load1_noabort(i32 %575)
  %576 = load i8, ptr %data2.i.i, align 1
  %arrayidx67.i.i = getelementptr [6 x i8], ptr %data.i105, i32 0, i32 %i.1164.i.i
  %577 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_store1_noabort(i32 %577)
  store i8 %576, ptr %arrayidx67.i.i, align 1
  %578 = ptrtoint ptr %517 to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %517, align 1
  %arrayidx67.1.i.i = getelementptr [6 x i8], ptr %data.i105, i32 1, i32 %i.1164.i.i
  %580 = ptrtoint ptr %arrayidx67.1.i.i to i32
  call void @__asan_store1_noabort(i32 %580)
  store i8 %579, ptr %arrayidx67.1.i.i, align 1
  %581 = ptrtoint ptr %518 to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %518, align 1
  %arrayidx67.2.i.i = getelementptr [6 x i8], ptr %data.i105, i32 2, i32 %i.1164.i.i
  %583 = ptrtoint ptr %arrayidx67.2.i.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 %582, ptr %arrayidx67.2.i.i, align 1
  %584 = ptrtoint ptr %519 to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %519, align 1
  %arrayidx67.3.i.i = getelementptr [6 x i8], ptr %data.i105, i32 3, i32 %i.1164.i.i
  %586 = ptrtoint ptr %arrayidx67.3.i.i to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 %585, ptr %arrayidx67.3.i.i, align 1
  %587 = ptrtoint ptr %520 to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %520, align 1
  %arrayidx67.4.i.i = getelementptr [6 x i8], ptr %data.i105, i32 4, i32 %i.1164.i.i
  %589 = ptrtoint ptr %arrayidx67.4.i.i to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %588, ptr %arrayidx67.4.i.i, align 1
  %inc72.i.i = add nuw nsw i32 %i.1164.i.i, 1
  %exitcond.not.i.i111 = icmp eq i32 %inc72.i.i, %max_len.1.4.i.i
  br i1 %exitcond.not.i.i111, label %for.body59.i.i.do.body74.i.i_crit_edge, label %for.body59.i.i.for.body59.i.i_crit_edge

for.body59.i.i.for.body59.i.i_crit_edge:          ; preds = %for.body59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body59.i.i

for.body59.i.i.do.body74.i.i_crit_edge:           ; preds = %for.body59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74.i.i

do.body74.i.i:                                    ; preds = %for.body59.i.i.do.body74.i.i_crit_edge, %if.end55.4.i.i.do.body74.i.i_crit_edge
  br i1 %tobool.not.i.i109, label %if.then83.i.i, label %do.body74.i.i.do.body85.i.i_crit_edge

do.body74.i.i.do.body85.i.i_crit_edge:            ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body85.i.i

if.then83.i.i:                                    ; preds = %do.body74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body85.i.i

do.body85.i.i:                                    ; preds = %if.then83.i.i, %do.body74.i.i.do.body85.i.i_crit_edge
  %590 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !141
  %and.i.i.i.i112 = and i32 %590, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i112)
  %tobool93.not.i.i = icmp eq i32 %and.i.i.i.i112, 0
  br i1 %tobool93.not.i.i, label %if.then97.i.i, label %do.body85.i.i.gc_psx_read_packet.exit.i_crit_edge, !prof !142

do.body85.i.i.gc_psx_read_packet.exit.i_crit_edge: ; preds = %do.body85.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gc_psx_read_packet.exit.i

if.then97.i.i:                                    ; preds = %do.body85.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %gc_psx_read_packet.exit.i

gc_psx_read_packet.exit.i:                        ; preds = %if.then97.i.i, %do.body85.i.i.gc_psx_read_packet.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %542) #8, !srcloc !143
  %591 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %add.ptr, align 4
  %port106.i.i = getelementptr inbounds %struct.pardevice, ptr %592, i32 0, i32 1
  %593 = ptrtoint ptr %port106.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %port106.i.i, align 4
  %ops107.i.i = getelementptr inbounds %struct.parport, ptr %594, i32 0, i32 24
  %595 = ptrtoint ptr %ops107.i.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %ops107.i.i, align 4
  %597 = ptrtoint ptr %596 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %596, align 4
  tail call void %598(ptr noundef %594, i8 noundef zeroext -2) #8
  %599 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %id.i, align 1
  %601 = lshr i8 %600, 4
  store i8 %601, ptr %id.i, align 1
  %602 = ptrtoint ptr %512 to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %512, align 1
  %604 = lshr i8 %603, 4
  store i8 %604, ptr %512, align 1
  %605 = ptrtoint ptr %513 to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %513, align 1
  %607 = lshr i8 %606, 4
  store i8 %607, ptr %513, align 1
  %608 = ptrtoint ptr %514 to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %514, align 1
  %610 = lshr i8 %609, 4
  store i8 %610, ptr %514, align 1
  %611 = ptrtoint ptr %515 to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %515, align 1
  %613 = lshr i8 %612, 4
  store i8 %613, ptr %515, align 1
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data2.i.i) #8
  br label %for.body.i114

for.body.i114:                                    ; preds = %for.inc.i120.for.body.i114_crit_edge, %gc_psx_read_packet.exit.i
  %i.017.i = phi i32 [ 0, %gc_psx_read_packet.exit.i ], [ %inc.i118, %for.inc.i120.for.body.i114_crit_edge ]
  %type.i113 = getelementptr %struct.gc, ptr %add.ptr, i32 0, i32 1, i32 %i.017.i, i32 1
  %614 = ptrtoint ptr %type.i113 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %type.i113, align 4
  %.off.i = add i32 %615, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i117, label %for.body.i114.for.inc.i120_crit_edge

for.body.i114.for.inc.i120_crit_edge:             ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i120

if.then.i117:                                     ; preds = %for.body.i114
  %arrayidx.i115 = getelementptr %struct.gc, ptr %add.ptr, i32 0, i32 1, i32 %i.017.i
  %arrayidx5.i116 = getelementptr [5 x i8], ptr %id.i, i32 0, i32 %i.017.i
  %616 = ptrtoint ptr %arrayidx5.i116 to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %arrayidx5.i116, align 1
  %arrayidx6.i = getelementptr [5 x [6 x i8]], ptr %data.i105, i32 0, i32 %i.017.i
  %618 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %arrayidx.i115, align 4
  %620 = zext i8 %617 to i64
  call void @__sanitizer_cov_trace_switch(i64 %620, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %617, label %if.then.i117.for.inc.i120_crit_edge [
    i8 7, label %sw.bb.i.i
    i8 2, label %if.then.i117.sw.bb7.i.i_crit_edge
    i8 5, label %if.then.i117.sw.bb7.i.i_crit_edge121
    i8 4, label %sw.bb80.i.i
  ]

if.then.i117.sw.bb7.i.i_crit_edge121:             ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i.i

if.then.i117.sw.bb7.i.i_crit_edge:                ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i.i

if.then.i117.for.inc.i120_crit_edge:              ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i120

sw.bb.i.i:                                        ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #10
  %621 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %arrayidx6.i, align 1
  %623 = lshr i8 %622, 2
  %.lobit231.i.i = and i8 %623, 1
  %624 = xor i8 %.lobit231.i.i, 1
  %625 = zext i8 %624 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 317, i32 noundef %625) #8
  %626 = lshr i8 %622, 1
  %.lobit232.i.i = and i8 %626, 1
  %627 = xor i8 %.lobit232.i.i, 1
  %628 = zext i8 %627 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 318, i32 noundef %628) #8
  br label %sw.bb7.i.i

sw.bb7.i.i:                                       ; preds = %sw.bb.i.i, %if.then.i117.sw.bb7.i.i_crit_edge, %if.then.i117.sw.bb7.i.i_crit_edge121
  %629 = ptrtoint ptr %type.i113 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %type.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %630)
  %cmp.i16.i = icmp eq i32 %630, 8
  br i1 %cmp.i16.i, label %for.body.preheader.i.i, label %for.body20.preheader.i.i

for.body20.preheader.i.i:                         ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx24.i.i = getelementptr i8, ptr %arrayidx6.i, i32 2
  %631 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %631)
  %632 = load i8, ptr %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %632 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 3, i32 noundef 3, i32 noundef %conv25.i.i) #8
  %arrayidx24.1.i.i = getelementptr i8, ptr %arrayidx6.i, i32 3
  %633 = ptrtoint ptr %arrayidx24.1.i.i to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %arrayidx24.1.i.i, align 1
  %conv25.1.i.i = zext i8 %634 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 3, i32 noundef 4, i32 noundef %conv25.1.i.i) #8
  %arrayidx24.2.i.i = getelementptr i8, ptr %arrayidx6.i, i32 4
  %635 = ptrtoint ptr %arrayidx24.2.i.i to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %arrayidx24.2.i.i, align 1
  %conv25.2.i.i = zext i8 %636 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 3, i32 noundef 16, i32 noundef %conv25.2.i.i) #8
  %arrayidx24.3.i.i = getelementptr i8, ptr %arrayidx6.i, i32 5
  %637 = ptrtoint ptr %arrayidx24.3.i.i to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %arrayidx24.3.i.i, align 1
  %conv25.3.i.i = zext i8 %638 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 3, i32 noundef 17, i32 noundef %conv25.3.i.i) #8
  %639 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %639)
  %640 = load i8, ptr %arrayidx6.i, align 1
  %conv30.i.i = zext i8 %640 to i32
  %and31.lobit.i.i = and i32 %conv30.i.i, 128
  %and35.i.i = lshr i32 %conv30.i.i, 5
  %and35.lobit.i.i = and i32 %and35.i.i, 1
  %641 = xor i32 %and35.lobit.i.i, 1
  %mul39.i.i = mul nuw nsw i32 %641, 127
  %add40.i.i = or i32 %mul39.i.i, %and31.lobit.i.i
  tail call void @input_event(ptr noundef %619, i32 noundef 3, i32 noundef 0, i32 noundef %add40.i.i) #8
  %642 = shl nuw nsw i32 %conv30.i.i, 3
  %mul49.i.i = and i32 %642, 128
  %and52.i.i = lshr i32 %conv30.i.i, 6
  %and52.lobit.i.i = and i32 %and52.i.i, 1
  %643 = xor i32 %and52.lobit.i.i, 1
  %mul56.i.i = mul nuw nsw i32 %643, 127
  %add57.i.i = or i32 %mul56.i.i, %mul49.i.i
  tail call void @input_event(ptr noundef %619, i32 noundef 3, i32 noundef 1, i32 noundef %add57.i.i) #8
  br label %sw.epilog.sink.split.i.i

for.body.preheader.i.i:                           ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %644 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %arrayidx6.i, align 1
  %646 = lshr i8 %645, 4
  %.lobit242.i.i = and i8 %646, 1
  %647 = xor i8 %.lobit242.i.i, 1
  %648 = zext i8 %647 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 256, i32 noundef %648) #8
  %649 = lshr i8 %645, 5
  %.lobit243.i.i = and i8 %649, 1
  %650 = xor i8 %.lobit243.i.i, 1
  %651 = zext i8 %650 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 257, i32 noundef %651) #8
  %652 = lshr i8 %645, 6
  %.lobit244.i.i = and i8 %652, 1
  %653 = xor i8 %.lobit244.i.i, 1
  %654 = zext i8 %653 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 258, i32 noundef %654) #8
  %655 = xor i8 %645, -1
  %656 = lshr i8 %655, 7
  %.not246.i.i = zext i8 %656 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 259, i32 noundef %.not246.i.i) #8
  br label %sw.epilog.sink.split.i.i

sw.bb80.i.i:                                      ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %615)
  %cmp82.i.i = icmp eq i32 %615, 8
  %657 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %657)
  %658 = load i8, ptr %arrayidx6.i, align 1
  br i1 %cmp82.i.i, label %for.body88.preheader.i.i, label %if.else99.i.i

for.body88.preheader.i.i:                         ; preds = %sw.bb80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %659 = lshr i8 %658, 4
  %.lobit238.i.i = and i8 %659, 1
  %660 = xor i8 %.lobit238.i.i, 1
  %661 = zext i8 %660 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 256, i32 noundef %661) #8
  %662 = lshr i8 %658, 5
  %.lobit239.i.i = and i8 %662, 1
  %663 = xor i8 %.lobit239.i.i, 1
  %664 = zext i8 %663 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 257, i32 noundef %664) #8
  %665 = lshr i8 %658, 6
  %.lobit240.i.i = and i8 %665, 1
  %666 = xor i8 %.lobit240.i.i, 1
  %667 = zext i8 %666 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 258, i32 noundef %667) #8
  %668 = xor i8 %658, -1
  %669 = lshr i8 %668, 7
  %.not.i.i = zext i8 %669 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 259, i32 noundef %.not.i.i) #8
  br label %sw.epilog.sink.split.i.i

if.else99.i.i:                                    ; preds = %sw.bb80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv101.i.i = zext i8 %658 to i32
  %and102.lobit.i.i = and i32 %conv101.i.i, 128
  %and111.i.i = lshr i32 %conv101.i.i, 5
  %and111.lobit.i.i = and i32 %and111.i.i, 1
  %670 = xor i32 %and111.lobit.i.i, 1
  %mul115.i.i = mul nuw nsw i32 %670, 127
  %add116.i.i = or i32 %mul115.i.i, %and102.lobit.i.i
  tail call void @input_event(ptr noundef %619, i32 noundef 3, i32 noundef 0, i32 noundef %add116.i.i) #8
  %671 = shl nuw nsw i32 %conv101.i.i, 3
  %mul125.i.i = and i32 %671, 128
  %and128.i.i = lshr i32 %conv101.i.i, 6
  %and128.lobit.i.i = and i32 %and128.i.i, 1
  %672 = xor i32 %and128.lobit.i.i, 1
  %mul132.i.i = mul nuw nsw i32 %672, 127
  %add133.i.i = or i32 %mul132.i.i, %mul125.i.i
  tail call void @input_event(ptr noundef %619, i32 noundef 3, i32 noundef 1, i32 noundef %add133.i.i) #8
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %if.else99.i.i, %for.body88.preheader.i.i, %for.body.preheader.i.i, %for.body20.preheader.i.i
  %arrayidx64.i.i = getelementptr i8, ptr %arrayidx6.i, i32 1
  %673 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load1_noabort(i32 %673)
  %674 = load i8, ptr %arrayidx64.i.i, align 1
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  %677 = zext i8 %676 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 310, i32 noundef %677) #8
  %conv142.1.i.i = zext i8 %674 to i32
  %678 = xor i32 %conv142.1.i.i, -1
  %679 = lshr i32 %678, 1
  %680 = and i32 %679, 1
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 311, i32 noundef %680) #8
  %681 = lshr i32 %678, 2
  %682 = and i32 %681, 1
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 312, i32 noundef %682) #8
  %683 = lshr i32 %678, 3
  %684 = and i32 %683, 1
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 313, i32 noundef %684) #8
  %685 = lshr i32 %678, 4
  %686 = and i32 %685, 1
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 304, i32 noundef %686) #8
  %687 = lshr i32 %678, 5
  %688 = and i32 %687, 1
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 305, i32 noundef %688) #8
  %689 = lshr i32 %678, 6
  %690 = and i32 %689, 1
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 307, i32 noundef %690) #8
  %691 = lshr i32 %678, 7
  %692 = and i32 %691, 1
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 308, i32 noundef %692) #8
  %693 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %arrayidx6.i, align 1
  %695 = lshr i8 %694, 3
  %.lobit.i.i = and i8 %695, 1
  %696 = xor i8 %.lobit.i.i, 1
  %697 = zext i8 %696 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 315, i32 noundef %697) #8
  %698 = and i8 %694, 1
  %699 = xor i8 %698, 1
  %700 = zext i8 %699 to i32
  tail call void @input_event(ptr noundef %619, i32 noundef 1, i32 noundef 314, i32 noundef %700) #8
  tail call void @input_event(ptr noundef %619, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc.i120

for.inc.i120:                                     ; preds = %sw.epilog.sink.split.i.i, %if.then.i117.for.inc.i120_crit_edge, %for.body.i114.for.inc.i120_crit_edge
  %inc.i118 = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i119 = icmp eq i32 %inc.i118, 5
  br i1 %exitcond.not.i119, label %gc_psx_process_packet.exit, label %for.inc.i120.for.body.i114_crit_edge

for.inc.i120.for.body.i114_crit_edge:             ; preds = %for.inc.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i114

gc_psx_process_packet.exit:                       ; preds = %for.inc.i120
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %id.i) #8
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %data.i105) #8
  br label %if.end30

if.end30:                                         ; preds = %gc_psx_process_packet.exit, %lor.lhs.false25.if.end30_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %701 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %701, 1
  %call = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gc_psx_command(ptr nocapture noundef readonly %gc, i32 noundef %b, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc, align 4
  %port1 = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %4 = call ptr @memset(ptr %data, i32 0, i32 5)
  %ops = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %type = getelementptr %struct.gc, ptr %gc, i32 0, i32 1, i32 0, i32 1
  %type.1 = getelementptr %struct.gc, ptr %gc, i32 0, i32 1, i32 1, i32 1
  %arrayidx25.1 = getelementptr i8, ptr %data, i32 1
  %type.2 = getelementptr %struct.gc, ptr %gc, i32 0, i32 1, i32 2, i32 1
  %arrayidx25.2 = getelementptr i8, ptr %data, i32 2
  %type.3 = getelementptr %struct.gc, ptr %gc, i32 0, i32 1, i32 3, i32 1
  %arrayidx25.3 = getelementptr i8, ptr %data, i32 3
  %type.4 = getelementptr %struct.gc, ptr %gc, i32 0, i32 1, i32 4, i32 1
  %arrayidx25.4 = getelementptr i8, ptr %data, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.4.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc48, %if.end.4.for.body_crit_edge ]
  %b.addr.070 = phi i32 [ %b, %entry ], [ %shr, %if.end.4.for.body_crit_edge ]
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = trunc i32 %b.addr.070 to i8
  %10 = and i8 %9, 1
  %conv = or i8 %10, -8
  tail call void %8(ptr noundef %3, i8 noundef zeroext %conv) #8
  %11 = load i32, ptr @gc_psx_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %12(i32 noundef %11) #8
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_status, align 4
  %call = tail call zeroext i8 %16(ptr noundef %3) #8
  %17 = xor i8 %call, -128
  %xor = zext i8 %17 to i32
  %shl = shl nuw i32 1, %i.071
  %18 = trunc i32 %shl to i8
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  %.off = add i32 %20, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %and19 = and i32 %xor, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data, align 1
  %23 = select i1 %tobool20.not, i8 0, i8 %18
  %conv28 = or i8 %23, %22
  store i8 %conv28, ptr %data, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %24 = ptrtoint ptr %type.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.1, align 4
  %.off.1 = add i32 %25, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.1)
  %switch.1 = icmp ult i32 %.off.1, 2
  br i1 %switch.1, label %if.then.1, label %if.end.if.end.1_crit_edge

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and19.1 = and i32 %xor, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.1)
  %tobool20.not.1 = icmp eq i32 %and19.1, 0
  %26 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx25.1, align 1
  %28 = select i1 %tobool20.not.1, i8 0, i8 %18
  %conv28.1 = or i8 %28, %27
  store i8 %conv28.1, ptr %arrayidx25.1, align 1
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %29 = ptrtoint ptr %type.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.2, align 4
  %.off.2 = add i32 %30, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.2)
  %switch.2 = icmp ult i32 %.off.2, 2
  br i1 %switch.2, label %if.then.2, label %if.end.1.if.end.2_crit_edge

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %and19.2 = and i32 %xor, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.2)
  %tobool20.not.2 = icmp eq i32 %and19.2, 0
  %31 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx25.2, align 1
  %33 = select i1 %tobool20.not.2, i8 0, i8 %18
  %conv28.2 = or i8 %33, %32
  store i8 %conv28.2, ptr %arrayidx25.2, align 1
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %34 = ptrtoint ptr %type.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.3, align 4
  %.off.3 = add i32 %35, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.3)
  %switch.3 = icmp ult i32 %.off.3, 2
  br i1 %switch.3, label %if.then.3, label %if.end.2.if.end.3_crit_edge

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %and19.3 = and i32 %xor, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.3)
  %tobool20.not.3 = icmp eq i32 %and19.3, 0
  %36 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx25.3, align 1
  %38 = select i1 %tobool20.not.3, i8 0, i8 %18
  %conv28.3 = or i8 %38, %37
  store i8 %conv28.3, ptr %arrayidx25.3, align 1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %39 = ptrtoint ptr %type.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.4, align 4
  %.off.4 = add i32 %40, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.4)
  %switch.4 = icmp ult i32 %.off.4, 2
  br i1 %switch.4, label %if.then.4, label %if.end.3.if.end.4_crit_edge

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  %and19.4 = and i32 %xor, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.4)
  %tobool20.not.4 = icmp eq i32 %and19.4, 0
  %41 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx25.4, align 1
  %43 = select i1 %tobool20.not.4, i8 0, i8 %18
  %conv28.4 = or i8 %43, %42
  store i8 %conv28.4, ptr %arrayidx25.4, align 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %44 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gc, align 4
  %port30 = getelementptr inbounds %struct.pardevice, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %port30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port30, align 4
  %ops31 = getelementptr inbounds %struct.parport, ptr %47, i32 0, i32 24
  %48 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops31, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %conv37 = or i8 %10, -4
  tail call void %51(ptr noundef %47, i8 noundef zeroext %conv37) #8
  %52 = load i32, ptr @gc_psx_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #8
  %inc48 = add nuw nsw i32 %i.071, 1
  %shr = ashr i32 %b.addr.070, 1
  %exitcond.not = icmp eq i32 %inc48, 8
  br i1 %exitcond.not, label %for.end49, label %if.end.4.for.body_crit_edge

if.end.4.for.body_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end49:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gc_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.gc, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %used = getelementptr inbounds %struct.gc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @parport_claim(ptr noundef %5) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_control, align 4
  tail call void %13(ptr noundef %9, i8 noundef zeroext 4) #8
  %timer = getelementptr inbounds %struct.gc, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 1
  %call8 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gc_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.gc, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %used = getelementptr inbounds %struct.gc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %timer = getelementptr inbounds %struct.gc, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_control, align 4
  tail call void %11(ptr noundef %7, i8 noundef zeroext 0) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @parport_release(ptr noundef %13) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gc_n64_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %shl = shl nuw i32 1, %3
  %conv = trunc i32 %shl to i8
  %4 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %5)
  %cmp = icmp eq i16 %5, 80
  br i1 %cmp, label %if.then, label %entry.if.end61_crit_edge

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %u, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %lor.rhs, label %if.then.lor.end_crit_edge

if.then.lor.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %weak_magnitude, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool5.not = icmp eq i16 %9, 0
  %phi.sel = select i1 %tobool5.not, i32 286331153, i32 -787410671
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.lor.end_crit_edge
  %10 = phi i32 [ -787410671, %if.then.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !140
  %and.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not = icmp eq i32 %and.i, 0
  br i1 %tobool17.not, label %if.then18, label %lor.end.do.end20_crit_edge

lor.end.do.end20_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

if.then18:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end20

do.end20:                                         ; preds = %if.then18, %lor.end.do.end20_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %port1.i = getelementptr inbounds %struct.pardevice, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port1.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %15, i32 0, i32 24
  %target.op.i = or i8 %conv, -30
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end20
  %i.08.i = phi i32 [ 0, %do.end20 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = shl nuw i32 1, %i.08.i
  %17 = and i32 %16, -586084079
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = select i1 %tobool.not.i, i8 -30, i8 %target.op.i
  tail call void %21(ptr noundef %15, i8 noundef zeroext %22) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 644244) #8
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %gc_n64_send_command.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

gc_n64_send_command.exit:                         ; preds = %for.body.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %port1.i87 = getelementptr inbounds %struct.pardevice, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %port1.i87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port1.i87, align 4
  %ops.i88 = getelementptr inbounds %struct.parport, ptr %27, i32 0, i32 24
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.body.i94.for.body.i94_crit_edge, %gc_n64_send_command.exit
  %i.08.i90 = phi i32 [ 0, %gc_n64_send_command.exit ], [ %inc.i92, %for.body.i94.for.body.i94_crit_edge ]
  %28 = shl nuw i32 1, %i.08.i90
  %29 = and i32 %28, 286331165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i91 = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %ops.i88 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i88, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = select i1 %tobool.not.i91, i8 -30, i8 %target.op.i
  tail call void %33(ptr noundef %27, i8 noundef zeroext %34) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 644244) #8
  %inc.i92 = add nuw nsw i32 %i.08.i90, 1
  %exitcond.not.i93 = icmp eq i32 %inc.i92, 32
  br i1 %exitcond.not.i93, label %gc_n64_send_command.exit95, label %for.body.i94.for.body.i94_crit_edge

for.body.i94.for.body.i94_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i94

gc_n64_send_command.exit95:                       ; preds = %for.body.i94
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %port1.i96 = getelementptr inbounds %struct.pardevice, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %port1.i96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port1.i96, align 4
  %ops.i97 = getelementptr inbounds %struct.parport, ptr %39, i32 0, i32 24
  br label %for.body.i103

for.body.i103:                                    ; preds = %for.body.i103.for.body.i103_crit_edge, %gc_n64_send_command.exit95
  %i.08.i99 = phi i32 [ 0, %gc_n64_send_command.exit95 ], [ %inc.i101, %for.body.i103.for.body.i103_crit_edge ]
  %40 = shl nuw i32 1, %i.08.i99
  %41 = and i32 %40, -787410671
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i100 = icmp eq i32 %41, 0
  %42 = ptrtoint ptr %ops.i97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i97, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = select i1 %tobool.not.i100, i8 -30, i8 %target.op.i
  tail call void %45(ptr noundef %39, i8 noundef zeroext %46) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 644244) #8
  %inc.i101 = add nuw nsw i32 %i.08.i99, 1
  %exitcond.not.i102 = icmp eq i32 %inc.i101, 32
  br i1 %exitcond.not.i102, label %for.body.i103.for.body_crit_edge, label %for.body.i103.for.body.i103_crit_edge

for.body.i103.for.body.i103_crit_edge:            ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i103

for.body.i103.for.body_crit_edge:                 ; preds = %for.body.i103
  br label %for.body

for.body:                                         ; preds = %gc_n64_send_command.exit113.for.body_crit_edge, %for.body.i103.for.body_crit_edge
  %i.0157 = phi i32 [ %inc, %gc_n64_send_command.exit113.for.body_crit_edge ], [ 0, %for.body.i103.for.body_crit_edge ]
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %port1.i105 = getelementptr inbounds %struct.pardevice, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %port1.i105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port1.i105, align 4
  %ops.i106 = getelementptr inbounds %struct.parport, ptr %51, i32 0, i32 24
  br label %for.body.i112

for.body.i112:                                    ; preds = %for.body.i112.for.body.i112_crit_edge, %for.body
  %i.08.i108 = phi i32 [ 0, %for.body ], [ %inc.i110, %for.body.i112.for.body.i112_crit_edge ]
  %52 = shl nuw i32 1, %i.08.i108
  %53 = and i32 %52, 286331165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i109 = icmp eq i32 %53, 0
  %54 = ptrtoint ptr %ops.i106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i106, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = select i1 %tobool.not.i109, i8 -30, i8 %target.op.i
  tail call void %57(ptr noundef %51, i8 noundef zeroext %58) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 644244) #8
  %inc.i110 = add nuw nsw i32 %i.08.i108, 1
  %exitcond.not.i111 = icmp eq i32 %inc.i110, 32
  br i1 %exitcond.not.i111, label %gc_n64_send_command.exit113, label %for.body.i112.for.body.i112_crit_edge

for.body.i112.for.body.i112_crit_edge:            ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i112

gc_n64_send_command.exit113:                      ; preds = %for.body.i112
  %inc = add nuw nsw i32 %i.0157, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %gc_n64_send_command.exit113.for.body_crit_edge

gc_n64_send_command.exit113.for.body_crit_edge:   ; preds = %gc_n64_send_command.exit113
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %gc_n64_send_command.exit113
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %port1.i114 = getelementptr inbounds %struct.pardevice, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %port1.i114 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port1.i114, align 4
  %ops.i115 = getelementptr inbounds %struct.parport, ptr %63, i32 0, i32 24
  %64 = ptrtoint ptr %ops.i115 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i115, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  tail call void %67(ptr noundef %63, i8 noundef zeroext %target.op.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 644244) #8
  %69 = ptrtoint ptr %ops.i115 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i115, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  tail call void %72(ptr noundef %63, i8 noundef zeroext -30) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 644244) #8
  %74 = ptrtoint ptr %ops.i115 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i115, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  tail call void %77(ptr noundef %63, i8 noundef zeroext %target.op.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 644244) #8
  %79 = ptrtoint ptr %ops.i115 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i115, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  tail call void %82(ptr noundef %63, i8 noundef zeroext %target.op.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 644244) #8
  %84 = ptrtoint ptr %ops.i115 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i115, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  tail call void %87(ptr noundef %63, i8 noundef zeroext %target.op.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 644244) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 28561484) #8
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %port1.i117 = getelementptr inbounds %struct.pardevice, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %port1.i117 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %port1.i117, align 4
  %ops.i118 = getelementptr inbounds %struct.parport, ptr %93, i32 0, i32 24
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.body.i124.for.body.i124_crit_edge, %for.end
  %i.08.i120 = phi i32 [ 0, %for.end ], [ %inc.i122, %for.body.i124.for.body.i124_crit_edge ]
  %94 = shl nuw i32 1, %i.08.i120
  %95 = and i32 %94, -586084079
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i121 = icmp eq i32 %95, 0
  %96 = ptrtoint ptr %ops.i118 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i118, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %100 = select i1 %tobool.not.i121, i8 -30, i8 %target.op.i
  tail call void %99(ptr noundef %93, i8 noundef zeroext %100) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 644244) #8
  %inc.i122 = add nuw nsw i32 %i.08.i120, 1
  %exitcond.not.i123 = icmp eq i32 %inc.i122, 32
  br i1 %exitcond.not.i123, label %gc_n64_send_command.exit125, label %for.body.i124.for.body.i124_crit_edge

for.body.i124.for.body.i124_crit_edge:            ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i124

gc_n64_send_command.exit125:                      ; preds = %for.body.i124
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %port1.i126 = getelementptr inbounds %struct.pardevice, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %port1.i126 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %port1.i126, align 4
  %ops.i127 = getelementptr inbounds %struct.parport, ptr %105, i32 0, i32 24
  br label %for.body.i133

for.body.i133:                                    ; preds = %for.body.i133.for.body.i133_crit_edge, %gc_n64_send_command.exit125
  %i.08.i129 = phi i32 [ 0, %gc_n64_send_command.exit125 ], [ %inc.i131, %for.body.i133.for.body.i133_crit_edge ]
  %106 = shl nuw i32 1, %i.08.i129
  %107 = and i32 %106, 286331357
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i130 = icmp eq i32 %107, 0
  %108 = ptrtoint ptr %ops.i127 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ops.i127, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = select i1 %tobool.not.i130, i8 -30, i8 %target.op.i
  tail call void %111(ptr noundef %105, i8 noundef zeroext %112) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 644244) #8
  %inc.i131 = add nuw nsw i32 %i.08.i129, 1
  %exitcond.not.i132 = icmp eq i32 %inc.i131, 32
  br i1 %exitcond.not.i132, label %gc_n64_send_command.exit134, label %for.body.i133.for.body.i133_crit_edge

for.body.i133.for.body.i133_crit_edge:            ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i133

gc_n64_send_command.exit134:                      ; preds = %for.body.i133
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %port1.i135 = getelementptr inbounds %struct.pardevice, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %port1.i135 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %port1.i135, align 4
  %ops.i136 = getelementptr inbounds %struct.parport, ptr %117, i32 0, i32 24
  br label %for.body.i142

for.body.i142:                                    ; preds = %for.body.i142.for.body.i142_crit_edge, %gc_n64_send_command.exit134
  %i.08.i138 = phi i32 [ 0, %gc_n64_send_command.exit134 ], [ %inc.i140, %for.body.i142.for.body.i142_crit_edge ]
  %118 = shl nuw i32 1, %i.08.i138
  %119 = and i32 %118, -585248495
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i139 = icmp eq i32 %119, 0
  %120 = ptrtoint ptr %ops.i136 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i136, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %124 = select i1 %tobool.not.i139, i8 -30, i8 %target.op.i
  tail call void %123(ptr noundef %117, i8 noundef zeroext %124) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 644244) #8
  %inc.i140 = add nuw nsw i32 %i.08.i138, 1
  %exitcond.not.i141 = icmp eq i32 %inc.i140, 32
  br i1 %exitcond.not.i141, label %for.body.i142.for.body26_crit_edge, label %for.body.i142.for.body.i142_crit_edge

for.body.i142.for.body.i142_crit_edge:            ; preds = %for.body.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i142

for.body.i142.for.body26_crit_edge:               ; preds = %for.body.i142
  br label %for.body26

for.body26:                                       ; preds = %gc_n64_send_command.exit152.for.body26_crit_edge, %for.body.i142.for.body26_crit_edge
  %i.1158 = phi i32 [ %inc28, %gc_n64_send_command.exit152.for.body26_crit_edge ], [ 0, %for.body.i142.for.body26_crit_edge ]
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %port1.i144 = getelementptr inbounds %struct.pardevice, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %port1.i144 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %port1.i144, align 4
  %ops.i145 = getelementptr inbounds %struct.parport, ptr %129, i32 0, i32 24
  br label %for.body.i151

for.body.i151:                                    ; preds = %for.body.i151.for.body.i151_crit_edge, %for.body26
  %i.08.i147 = phi i32 [ 0, %for.body26 ], [ %inc.i149, %for.body.i151.for.body.i151_crit_edge ]
  %130 = shl nuw i32 1, %i.08.i147
  %131 = and i32 %130, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i148 = icmp eq i32 %131, 0
  %132 = ptrtoint ptr %ops.i145 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops.i145, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = select i1 %tobool.not.i148, i8 -30, i8 %target.op.i
  tail call void %135(ptr noundef %129, i8 noundef zeroext %136) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 644244) #8
  %inc.i149 = add nuw nsw i32 %i.08.i147, 1
  %exitcond.not.i150 = icmp eq i32 %inc.i149, 32
  br i1 %exitcond.not.i150, label %gc_n64_send_command.exit152, label %for.body.i151.for.body.i151_crit_edge

for.body.i151.for.body.i151_crit_edge:            ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i151

gc_n64_send_command.exit152:                      ; preds = %for.body.i151
  %inc28 = add nuw nsw i32 %i.1158, 1
  %exitcond159.not = icmp eq i32 %inc28, 32
  br i1 %exitcond159.not, label %for.end29, label %gc_n64_send_command.exit152.for.body26_crit_edge

gc_n64_send_command.exit152.for.body26_crit_edge: ; preds = %gc_n64_send_command.exit152
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

for.end29:                                        ; preds = %gc_n64_send_command.exit152
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 4
  %port1.i153 = getelementptr inbounds %struct.pardevice, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %port1.i153 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %port1.i153, align 4
  %ops.i154 = getelementptr inbounds %struct.parport, ptr %141, i32 0, i32 24
  %142 = ptrtoint ptr %ops.i154 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops.i154, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  tail call void %145(ptr noundef %141, i8 noundef zeroext %target.op.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 644244) #8
  %147 = ptrtoint ptr %ops.i154 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ops.i154, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  tail call void %150(ptr noundef %141, i8 noundef zeroext -30) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 644244) #8
  %152 = ptrtoint ptr %ops.i154 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i154, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  tail call void %155(ptr noundef %141, i8 noundef zeroext %target.op.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 644244) #8
  %157 = ptrtoint ptr %ops.i154 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops.i154, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  tail call void %160(ptr noundef %141, i8 noundef zeroext %target.op.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 644244) #8
  %162 = ptrtoint ptr %ops.i154 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ops.i154, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  tail call void %165(ptr noundef %141, i8 noundef zeroext %target.op.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 644244) #8
  br i1 %tobool17.not, label %if.then39, label %for.end29.do.body41_crit_edge

for.end29.do.body41_crit_edge:                    ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

if.then39:                                        ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body41

do.body41:                                        ; preds = %if.then39, %for.end29.do.body41_crit_edge
  %167 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !141
  %and.i.i = and i32 %167, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool49.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool49.not, label %if.then53, label %do.body41.do.end56_crit_edge, !prof !142

do.body41.do.end56_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body41.do.end56_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #8, !srcloc !143
  br label %if.end61

if.end61:                                         ; preds = %do.end56, %entry.if.end61_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/gamecon.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/gamecon.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/gamecon.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__param_map, !8, !"__param_map", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/gamecon.c", i32 42, i32 1}
!9 = !{ptr @__UNIQUE_ID_maptype227, !8, !"__UNIQUE_ID_maptype227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_map228, !11, !"__UNIQUE_ID_map228", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/gamecon.c", i32 43, i32 1}
!12 = !{ptr @__param_map2, !13, !"__param_map2", i1 false, i1 false}
!13 = !{!"../drivers/input/joystick/gamecon.c", i32 44, i32 1}
!14 = !{ptr @__UNIQUE_ID_map2type229, !13, !"__UNIQUE_ID_map2type229", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_map2230, !16, !"__UNIQUE_ID_map2230", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/gamecon.c", i32 45, i32 1}
!17 = !{ptr @__param_map3, !18, !"__param_map3", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/gamecon.c", i32 46, i32 1}
!19 = !{ptr @__UNIQUE_ID_map3type231, !18, !"__UNIQUE_ID_map3type231", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_map3232, !21, !"__UNIQUE_ID_map3232", i1 false, i1 false}
!21 = !{!"../drivers/input/joystick/gamecon.c", i32 47, i32 1}
!22 = !{ptr @__param_psx_delay, !23, !"__param_psx_delay", i1 false, i1 false}
!23 = !{!"../drivers/input/joystick/gamecon.c", i32 533, i32 1}
!24 = !{ptr @__UNIQUE_ID_psx_delaytype233, !23, !"__UNIQUE_ID_psx_delaytype233", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_psx_delay234, !26, !"__UNIQUE_ID_psx_delay234", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/gamecon.c", i32 534, i32 1}
!27 = !{ptr @__initcall__kmod_gamecon__236_1053_gc_init6, !28, !"__initcall__kmod_gamecon__236_1053_gc_init6", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/gamecon.c", i32 1053, i32 1}
!29 = !{ptr @__exitcall_gc_exit, !30, !"__exitcall_gc_exit", i1 false, i1 false}
!30 = !{!"../drivers/input/joystick/gamecon.c", i32 1054, i32 1}
!31 = !{ptr @__param_str_map, !8, !"__param_str_map", i1 false, i1 false}
!32 = !{ptr @__param_arr_map, !8, !"__param_arr_map", i1 false, i1 false}
!33 = !{ptr @gc_cfg, !34, !"gc_cfg", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/gamecon.c", i32 40, i32 25}
!35 = !{ptr @__param_str_map2, !13, !"__param_str_map2", i1 false, i1 false}
!36 = !{ptr @__param_arr_map2, !13, !"__param_arr_map2", i1 false, i1 false}
!37 = !{ptr @__param_str_map3, !18, !"__param_str_map3", i1 false, i1 false}
!38 = !{ptr @__param_arr_map3, !18, !"__param_arr_map3", i1 false, i1 false}
!39 = !{ptr @__param_str_psx_delay, !23, !"__param_str_psx_delay", i1 false, i1 false}
!40 = !{ptr @gc_psx_delay, !41, !"gc_psx_delay", i1 false, i1 false}
!41 = !{!"../drivers/input/joystick/gamecon.c", i32 532, i32 12}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/joystick/gamecon.c", i32 1019, i32 10}
!44 = !{ptr @gc_parport_driver, !45, !"gc_parport_driver", i1 false, i1 false}
!45 = !{!"../drivers/input/joystick/gamecon.c", i32 1018, i32 30}
!46 = !{ptr @gc_base, !47, !"gc_base", i1 false, i1 false}
!47 = !{!"../drivers/input/joystick/gamecon.c", i32 87, i32 19}
!48 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/joystick/gamecon.c", i32 940, i32 3}
!50 = !{ptr @.str.2, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @gc_attach.__UNIQUE_ID_ddebug235, !49, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!53 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.5, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/joystick/gamecon.c", i32 952, i32 3}
!56 = !{ptr @gc_attach._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @gc_attach._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/joystick/gamecon.c", i32 958, i32 3}
!60 = !{ptr @gc_attach._entry.6, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @gc_attach._entry_ptr.8, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @gc_attach.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/input/joystick/gamecon.c", i32 962, i32 2}
!64 = !{ptr @.str.9, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gc_attach.__key.10, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/input/joystick/gamecon.c", i32 965, i32 2}
!67 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/joystick/gamecon.c", i32 978, i32 3}
!70 = !{ptr @gc_attach._entry.12, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @gc_attach._entry_ptr.14, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @gc_status_bit, !73, !"gc_status_bit", i1 false, i1 false}
!73 = !{!"../drivers/input/joystick/gamecon.c", i32 89, i32 18}
!74 = distinct !{null, !75, !"gc_n64_btn", i1 false, i1 false}
!75 = !{!"../drivers/input/joystick/gamecon.c", i32 102, i32 20}
!76 = distinct !{null, !77, !"gc_n64_bytes", i1 false, i1 false}
!77 = !{!"../drivers/input/joystick/gamecon.c", i32 101, i32 28}
!78 = distinct !{null, !79, !"gc_snes_btn", i1 false, i1 false}
!79 = !{!"../drivers/input/joystick/gamecon.c", i32 331, i32 20}
!80 = distinct !{null, !81, !"gc_nes_bytes", i1 false, i1 false}
!81 = !{!"../drivers/input/joystick/gamecon.c", i32 329, i32 28}
!82 = distinct !{null, !83, !"gc_snes_bytes", i1 false, i1 false}
!83 = !{!"../drivers/input/joystick/gamecon.c", i32 330, i32 28}
!84 = distinct !{null, !85, !"gc_psx_ddr_btn", i1 false, i1 false}
!85 = !{!"../drivers/input/joystick/gamecon.c", i32 543, i32 20}
!86 = distinct !{null, !87, !"gc_psx_abs", i1 false, i1 false}
!87 = !{!"../drivers/input/joystick/gamecon.c", i32 536, i32 20}
!88 = distinct !{null, !89, !"gc_psx_btn", i1 false, i1 false}
!89 = !{!"../drivers/input/joystick/gamecon.c", i32 539, i32 20}
!90 = !{ptr @.str.15, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/joystick/gamecon.c", i32 808, i32 3}
!92 = !{ptr @.str.16, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @gc_setup_pad._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @gc_setup_pad._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.18, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/joystick/gamecon.c", i32 814, i32 3}
!97 = !{ptr @gc_setup_pad._entry.17, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @gc_setup_pad._entry_ptr.19, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.20, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/joystick/gamecon.c", i32 821, i32 4}
!101 = !{ptr @.str.22, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/joystick/gamecon.c", i32 858, i32 4}
!103 = !{ptr @gc_setup_pad._entry.21, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @gc_setup_pad._entry_ptr.23, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.24, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/joystick/gamecon.c", i32 92, i32 8}
!107 = !{ptr @.str.25, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/joystick/gamecon.c", i32 92, i32 20}
!109 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/joystick/gamecon.c", i32 92, i32 31}
!111 = !{ptr @.str.27, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/joystick/gamecon.c", i32 92, i32 47}
!113 = !{ptr @.str.28, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/joystick/gamecon.c", i32 93, i32 2}
!115 = !{ptr @.str.29, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/joystick/gamecon.c", i32 93, i32 35}
!117 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/joystick/gamecon.c", i32 93, i32 53}
!119 = !{ptr @.str.31, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/joystick/gamecon.c", i32 94, i32 2}
!121 = !{ptr @.str.32, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/joystick/gamecon.c", i32 94, i32 24}
!123 = !{ptr @gc_names, !124, !"gc_names", i1 false, i1 false}
!124 = !{!"../drivers/input/joystick/gamecon.c", i32 91, i32 20}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/joystick/gamecon.c", i32 1035, i32 4}
!127 = !{ptr @.str.34, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @gc_init._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @gc_init._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i64 2148714558, i64 2148714563, i64 2148714576, i64 2148714620, i64 2148714654, i64 2148714675}
!140 = !{i64 625224, i64 625285}
!141 = !{i64 627956}
!142 = !{!"branch_weights", i32 1, i32 2000}
!143 = !{i64 628241}
