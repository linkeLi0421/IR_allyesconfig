; ModuleID = '/llk/IR_all_yes/sound/drivers/portman2x4.c_pt.bc'
source_filename = "../sound/drivers/portman2x4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.portman = type { %struct.spinlock, ptr, ptr, ptr, i32, [2 x i32], [2 x ptr] }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__param_str_index = internal constant [21 x i8] c"snd_portman2x4.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype233 = internal constant [43 x i8] c"snd_portman2x4.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index234 = internal constant [65 x i8] c"snd_portman2x4.parm=index:Index value for Portman 2x4 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [18 x i8] c"snd_portman2x4.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype235 = internal constant [42 x i8] c"snd_portman2x4.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id236 = internal constant [60 x i8] c"snd_portman2x4.parm=id:ID string for Portman 2x4 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [22 x i8] c"snd_portman2x4.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype237 = internal constant [45 x i8] c"snd_portman2x4.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable238 = internal constant [57 x i8] c"snd_portman2x4.parm=enable:Enable Portman 2x4 soundcard.\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [71 x i8] c"snd_portman2x4.author=Levent Guendogdu, Tobias Gehrig, Matthias Koenig\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [46 x i8] c"snd_portman2x4.description=Midiman Portman2x4\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [49 x i8] c"snd_portman2x4.file=sound/drivers/snd-portman2x4\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [27 x i8] c"snd_portman2x4.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_snd_portman2x4__243_860_snd_portman_module_init6 = internal global ptr @snd_portman_module_init, section ".initcall6.init", align 4
@__exitcall_snd_portman_module_exit = internal global ptr @snd_portman_module_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@platform_devices = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@snd_portman_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_portman_probe, ptr @snd_portman_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@portman_parport_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str.15, ptr null, ptr @snd_portman_detach, ptr @snd_portman_attach, ptr @snd_portman_dev_probe, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_portman2x4\00", [17 x i8] zeroinitializer }, align 32
@__const.snd_portman_probe.portman_cb = private unnamed_addr constant %struct.pardev_cb { ptr null, ptr null, ptr null, ptr @snd_portman_interrupt, i32 2 }, align 4
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/drivers/portman2x4.c\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot create card\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"portman\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Portman 2x4\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %i\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot register pardevice\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot claim parport 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot create main component\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Creating Rawmidi component failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot register card\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016Portman 2x4 on 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@portman_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pm->reg_lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_portman_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_portman_midi_open, ptr @snd_portman_midi_close, ptr @snd_portman_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_portman_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_portman_midi_open, ptr @snd_portman_midi_close, ptr @snd_portman_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Portman2x4 %d\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014portman_flush_input() Won't flush port %i\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"portman2x4\00", [21 x i8] zeroinitializer }, align 32
@device_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 43, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 44, i32 14 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 45, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"platform_devices\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 47, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"snd_portman_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 809, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"portman_parport_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 676, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 813, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 726, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 729, i32 23 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 730, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 731, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 740, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 747, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 754, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 768, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 782, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 786, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 96, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"snd_portman_midi_output\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 535, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"snd_portman_midi_input\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 541, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 582, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 398, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 677, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"device_count\00", align 1
@___asan_gen_.92 = private constant [30 x i8] c"../sound/drivers/portman2x4.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 48, i32 12 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_enable238, ptr @__UNIQUE_ID_enabletype237, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_id236, ptr @__UNIQUE_ID_idtype235, ptr @__UNIQUE_ID_index234, ptr @__UNIQUE_ID_indextype233, ptr @__UNIQUE_ID_license242, ptr @__exitcall_snd_portman_module_exit, ptr @__initcall__kmod_snd_portman2x4__243_860_snd_portman_module_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @snd_portman_module_exit, ptr @index, ptr @id, ptr @enable, ptr @platform_devices, ptr @snd_portman_driver, ptr @portman_parport_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @portman_create.__key, ptr @.str.12, ptr @snd_portman_midi_output, ptr @snd_portman_midi_input, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @device_count], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_portman_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portman_parport_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portman_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_portman_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_portman_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_portman_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @snd_portman_unregister_all()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_portman_unregister_all() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @platform_devices, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_device_unregister(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_portman_driver) #9
  tail call void @parport_unregister_driver(ptr noundef nonnull @portman_parport_driver) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_portman_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_portman_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__parport_register_driver(ptr noundef nonnull @portman_parport_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_portman_driver) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = load i32, ptr @device_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp5 = icmp eq i32 %0, 0
  br i1 %cmp5, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @snd_portman_unregister_all()
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then3 ], [ -19, %if.then6 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_portman_probe(ptr noundef %pdev) #1 align 64 {
entry:
  %card = alloca ptr, align 4
  %portman_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #9
  %2 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %card, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %portman_cb) #9
  %3 = call ptr @memcpy(ptr %portman_cb, ptr @__const.snd_portman_probe.portman_cb, i32 20)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %arrayidx4 = getelementptr [32 x i32], ptr @index, i32 0, i32 %1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  %call6 = call i32 @snd_card_new(ptr noundef %dev3, i32 noundef %9, ptr noundef %11, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 726, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end2
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 8101820099039686144, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %shortname, ptr @.str.4, i32 12)
  %longname = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 8
  %irq = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.5, ptr noundef %shortname, i32 noundef %17, i32 noundef %19)
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %private = getelementptr inbounds %struct.pardev_cb, ptr %portman_cb, i32 0, i32 2
  %22 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %private, align 4
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %call18 = call ptr @parport_register_dev_model(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %portman_cb, i32 noundef %24) #9
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 740, ptr noundef nonnull @.str.6) #9
  br label %__err

if.end21:                                         ; preds = %if.end9
  %call22 = call i32 @parport_claim(ptr noundef nonnull %call18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %port = getelementptr inbounds %struct.pardevice, ptr %call18, i32 0, i32 1
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 747, ptr noundef nonnull @.str.7, i32 noundef %28) #9
  br label %free_pardev

if.end26:                                         ; preds = %if.end21
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 76) #12
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 754, ptr noundef nonnull @.str.8) #9
  call void @parport_release(ptr noundef nonnull %call18) #9
  br label %free_pardev

if.end30:                                         ; preds = %if.end26
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @portman_create.__key, i16 noundef signext 3) #9
  %card2.i = getelementptr inbounds %struct.portman, ptr %call7.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %card2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %card2.i, align 4
  %pardev3.i = getelementptr inbounds %struct.portman, ptr %call7.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %pardev3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call18, ptr %pardev3.i, align 4
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i.i, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 10
  %37 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @snd_portman_card_private_free, ptr %private_free, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 24
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  call void %41(ptr noundef %5, i8 noundef zeroext 0) #9
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_control.i, align 4
  call void %45(ptr noundef %5, i8 noundef zeroext 0) #9
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %write_control3.i = getelementptr inbounds %struct.parport_operations, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %write_control3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_control3.i, align 4
  call void %49(ptr noundef %5, i8 noundef zeroext 0) #9
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_status.i, align 4
  %call.i = call zeroext i8 %53(ptr noundef %5) #9
  %54 = and i8 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp.not.i = icmp eq i8 %54, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end30.__err_crit_edge

if.end30.__err_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %__err

if.end.i:                                         ; preds = %if.end30
  %55 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i, align 4
  %write_control7.i = getelementptr inbounds %struct.parport_operations, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %write_control7.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_control7.i, align 4
  call void %58(ptr noundef %5, i8 noundef zeroext 1) #9
  %59 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i, align 4
  %read_status9.i = getelementptr inbounds %struct.parport_operations, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %read_status9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_status9.i, align 4
  %call10.i = call zeroext i8 %62(ptr noundef %5) #9
  %63 = and i8 %call10.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp13.not.not.i = icmp eq i8 %63, 0
  br i1 %cmp13.not.not.i, label %if.end.i.__err_crit_edge, label %portman_probe.exit

if.end.i.__err_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__err

portman_probe.exit:                               ; preds = %if.end.i
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %write_control18.i = getelementptr inbounds %struct.parport_operations, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %write_control18.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_control18.i, align 4
  call void %67(ptr noundef %5, i8 noundef zeroext 0) #9
  %68 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i, align 4
  %write_control20.i = getelementptr inbounds %struct.parport_operations, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %write_control20.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_control20.i, align 4
  call void %71(ptr noundef %5, i8 noundef zeroext 8) #9
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i, align 4
  %read_status22.i = getelementptr inbounds %struct.parport_operations, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %read_status22.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_status22.i, align 4
  %call23.i = call zeroext i8 %75(ptr noundef %5) #9
  %76 = and i8 %call23.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool32.not.not = icmp eq i8 %76, 0
  br i1 %tobool32.not.not, label %portman_probe.exit.__err_crit_edge, label %if.end34

portman_probe.exit.__err_crit_edge:               ; preds = %portman_probe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__err

if.end34:                                         ; preds = %portman_probe.exit
  %77 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card, align 4
  %call35 = call fastcc i32 @snd_portman_rawmidi_create(ptr noundef %78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 768, ptr noundef nonnull @.str.9) #9
  br label %__err

if.end38:                                         ; preds = %if.end34
  call fastcc void @portman_device_init(ptr noundef nonnull %call7.i.i.i)
  %79 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card, align 4
  %81 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %driver_data.i.i, align 4
  %call43 = call i32 @snd_card_register(ptr noundef %80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 782, ptr noundef nonnull @.str.10) #9
  br label %__err

if.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %5, align 8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 786, ptr noundef nonnull @.str.11, i32 noundef %83) #9
  br label %cleanup

free_pardev:                                      ; preds = %if.then29, %if.then24
  %err.0 = phi i32 [ -5, %if.then24 ], [ -12, %if.then29 ]
  call void @parport_unregister_device(ptr noundef nonnull %call18) #9
  br label %__err

__err:                                            ; preds = %free_pardev, %if.then45, %if.then37, %portman_probe.exit.__err_crit_edge, %if.end.i.__err_crit_edge, %if.end30.__err_crit_edge, %if.then20
  %err.1 = phi i32 [ -5, %if.then20 ], [ %err.0, %free_pardev ], [ %call35, %if.then37 ], [ %call43, %if.then45 ], [ -5, %portman_probe.exit.__err_crit_edge ], [ -5, %if.end30.__err_crit_edge ], [ -5, %if.end.i.__err_crit_edge ]
  %84 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %card, align 4
  %call48 = call i32 @snd_card_free(ptr noundef %85) #9
  br label %cleanup

cleanup:                                          ; preds = %__err, %if.end46, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ %err.1, %__err ], [ 0, %if.end46 ], [ -19, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %portman_cb) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_portman_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @snd_card_free(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_portman_interrupt(ptr nocapture noundef readonly %userdata) #1 align 64 {
entry:
  %midivalue = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %midivalue) #9
  %0 = ptrtoint ptr %midivalue to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %midivalue, align 1
  %private_data = getelementptr inbounds %struct.snd_card, ptr %userdata, i32 0, i32 9
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 8
  tail call void @_raw_spin_lock(ptr noundef %2) #9
  %pardev.i = getelementptr inbounds %struct.portman, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pardev.i, align 4
  %port.i46 = getelementptr inbounds %struct.pardevice, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %port.i46 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port.i46, align 4
  %ops.i47 = getelementptr inbounds %struct.parport, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %ops.i47 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i47, align 4
  %read_status.i48 = getelementptr inbounds %struct.parport_operations, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %read_status.i48 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_status.i48, align 4
  %call.i49 = call zeroext i8 %10(ptr noundef %6) #9
  %11 = and i8 %call.i49, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not50 = icmp eq i8 %11, 0
  br i1 %cmp.not50, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mode = getelementptr inbounds %struct.portman, ptr %2, i32 0, i32 5
  %midi_input = getelementptr inbounds %struct.portman, ptr %2, i32 0, i32 6
  %arrayidx17 = getelementptr %struct.portman, ptr %2, i32 0, i32 5, i32 1
  %arrayidx22 = getelementptr %struct.portman, ptr %2, i32 0, i32 6, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %while.body.lr.ph
  %12 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pardev.i, align 4
  %port.i.i = getelementptr inbounds %struct.pardevice, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.parport, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %write_control.i.i = getelementptr inbounds %struct.parport_operations, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %write_control.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_control.i.i, align 4
  call void %19(ptr noundef %15, i8 noundef zeroext 16) #9
  %20 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pardev.i, align 4
  %port.i11.i = getelementptr inbounds %struct.pardevice, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %port.i11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port.i11.i, align 4
  %ops.i12.i = getelementptr inbounds %struct.parport, ptr %23, i32 0, i32 24
  %24 = ptrtoint ptr %ops.i12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i12.i, align 4
  %read_status.i.i = getelementptr inbounds %struct.parport_operations, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %read_status.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_status.i.i, align 4
  %call.i.i = call zeroext i8 %27(ptr noundef %23) #9
  %28 = and i8 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %while.body.if.end10_crit_edge, label %if.then

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %while.body
  %call3 = call fastcc i32 @portman_read_midi(ptr noundef %2, i32 noundef 0)
  %conv4 = trunc i32 %call3 to i8
  %29 = ptrtoint ptr %midivalue to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv4, ptr %midivalue, align 1
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode, align 4
  %and5 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end10_crit_edge, label %if.then7

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %midi_input to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %midi_input, align 4
  %call9 = call i32 @snd_rawmidi_receive(ptr noundef %33, ptr noundef nonnull %midivalue, i32 noundef 1) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then.if.end10_crit_edge, %while.body.if.end10_crit_edge
  %34 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pardev.i, align 4
  %port.i.i38 = getelementptr inbounds %struct.pardevice, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %port.i.i38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port.i.i38, align 4
  %ops.i.i39 = getelementptr inbounds %struct.parport, ptr %37, i32 0, i32 24
  %38 = ptrtoint ptr %ops.i.i39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i.i39, align 4
  %write_control.i.i40 = getelementptr inbounds %struct.parport_operations, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %write_control.i.i40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_control.i.i40, align 4
  call void %41(ptr noundef %37, i8 noundef zeroext 18) #9
  %42 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pardev.i, align 4
  %port.i11.i41 = getelementptr inbounds %struct.pardevice, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %port.i11.i41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port.i11.i41, align 4
  %ops.i12.i42 = getelementptr inbounds %struct.parport, ptr %45, i32 0, i32 24
  %46 = ptrtoint ptr %ops.i12.i42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i12.i42, align 4
  %read_status.i.i43 = getelementptr inbounds %struct.parport_operations, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %read_status.i.i43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_status.i.i43, align 4
  %call.i.i44 = call zeroext i8 %49(ptr noundef %45) #9
  %50 = and i8 %call.i.i44, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool12.not = icmp eq i8 %50, 0
  br i1 %tobool12.not, label %if.end10.if.end25_crit_edge, label %if.then13

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then13:                                        ; preds = %if.end10
  %call14 = call fastcc i32 @portman_read_midi(ptr noundef %2, i32 noundef 1)
  %conv15 = trunc i32 %call14 to i8
  %51 = ptrtoint ptr %midivalue to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv15, ptr %midivalue, align 1
  %52 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx17, align 4
  %and18 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then13.if.end25_crit_edge, label %if.then20

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then20:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx22, align 4
  %call23 = call i32 @snd_rawmidi_receive(ptr noundef %55, ptr noundef nonnull %midivalue, i32 noundef 1) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then13.if.end25_crit_edge, %if.end10.if.end25_crit_edge
  %56 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pardev.i, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %59, i32 0, i32 24
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_status.i, align 4
  %call.i = call zeroext i8 %63(ptr noundef %59) #9
  %64 = and i8 %call.i, 64
  %cmp.not = icmp eq i8 %64, 0
  br i1 %cmp.not, label %if.end25.while.end_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %midivalue) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_portman_card_private_free(ptr nocapture noundef readonly %card) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %pardev1 = getelementptr inbounds %struct.portman, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pardev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pardev1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @parport_release(ptr noundef nonnull %3) #9
  tail call void @parport_unregister_device(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_portman_rawmidi_create(ptr noundef %card) unnamed_addr #1 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #9
  %2 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !92
  %call = call i32 @snd_rawmidi_new(ptr noundef %card, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %rmidi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmidi, align 4
  %private_data1 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %private_data1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %private_data1, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 5
  %6 = call ptr @memcpy(ptr %name, ptr @.str.4, i32 12)
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %info_flags, align 8
  %rmidi3 = getelementptr inbounds %struct.portman, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rmidi3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %4, ptr %rmidi3, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_portman_midi_output) #9
  %9 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @snd_portman_midi_input) #9
  %11 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmidi, align 4
  %substreams = getelementptr inbounds %struct.snd_rawmidi, ptr %12, i32 0, i32 8, i32 0, i32 2
  %13 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %13)
  %substream.062 = load ptr, ptr %substreams, align 4
  %cmp7.not64 = icmp eq ptr %substream.062, %substreams
  br i1 %cmp7.not64, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %substream.065 = phi ptr [ %substream.0, %for.body.for.body_crit_edge ], [ %substream.062, %if.end.for.body_crit_edge ]
  %name8 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.065, i32 0, i32 12
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.065, i32 0, i32 2
  %14 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number, align 4
  %add = add i32 %15, 1
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name8, ptr noundef nonnull @.str.13, i32 noundef %add)
  %16 = ptrtoint ptr %substream.065 to i32
  call void @__asan_load4_noabort(i32 %16)
  %substream.0 = load ptr, ptr %substream.065, align 4
  %17 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmidi, align 4
  %substreams6 = getelementptr inbounds %struct.snd_rawmidi, ptr %18, i32 0, i32 8, i32 0, i32 2
  %cmp7.not = icmp eq ptr %substream.0, %substreams6
  br i1 %cmp7.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi ptr [ %12, %if.end.for.end_crit_edge ], [ %18, %for.body.for.end_crit_edge ]
  %substreams19 = getelementptr %struct.snd_rawmidi, ptr %.lcssa, i32 0, i32 8, i32 1, i32 2
  %19 = ptrtoint ptr %substreams19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %substream.166 = load ptr, ptr %substreams19, align 4
  %20 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmidi, align 4
  %substreams2767 = getelementptr %struct.snd_rawmidi, ptr %21, i32 0, i32 8, i32 1, i32 2
  %cmp28.not68 = icmp eq ptr %substream.166, %substreams2767
  br i1 %cmp28.not68, label %for.end.cleanup_crit_edge, label %for.end.for.body30_crit_edge

for.end.for.body30_crit_edge:                     ; preds = %for.end
  br label %for.body30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.end.for.body30_crit_edge
  %substream.169 = phi ptr [ %substream.1, %for.body30.for.body30_crit_edge ], [ %substream.166, %for.end.for.body30_crit_edge ]
  %number31 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.169, i32 0, i32 2
  %22 = ptrtoint ptr %number31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number31, align 4
  %arrayidx32 = getelementptr %struct.portman, ptr %1, i32 0, i32 6, i32 %23
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %substream.169, ptr %arrayidx32, align 4
  %name33 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.169, i32 0, i32 12
  %25 = load i32, ptr %number31, align 4
  %add36 = add i32 %25, 1
  %call37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name33, ptr noundef nonnull @.str.13, i32 noundef %add36)
  %26 = ptrtoint ptr %substream.169 to i32
  call void @__asan_load4_noabort(i32 %26)
  %substream.1 = load ptr, ptr %substream.169, align 4
  %27 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmidi, align 4
  %substreams27 = getelementptr %struct.snd_rawmidi, ptr %28, i32 0, i32 8, i32 1, i32 2
  %cmp28.not = icmp eq ptr %substream.1, %substreams27
  br i1 %cmp28.not, label %for.body30.cleanup_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

for.body30.cleanup_crit_edge:                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body30.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @portman_device_init(ptr nocapture noundef readonly %pm) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @portman_flush_input(ptr noundef %pm, i8 noundef zeroext 0)
  tail call fastcc void @portman_flush_input(ptr noundef %pm, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @portman_read_midi(ptr noundef readonly %pm, i32 noundef %port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pardev.i = getelementptr inbounds %struct.portman, ptr %pm, i32 0, i32 3
  %0 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pardev.i, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %3, i8 noundef zeroext 0) #9
  %port.tr = trunc i32 %port to i8
  %8 = shl i8 %port.tr, 1
  %conv = or i8 %8, 16
  %9 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pardev.i, align 4
  %port.i154 = getelementptr inbounds %struct.pardevice, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %port.i154 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port.i154, align 4
  %ops.i155 = getelementptr inbounds %struct.parport, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %ops.i155 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i155, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_control.i, align 4
  tail call void %16(ptr noundef %12, i8 noundef zeroext %conv) #9
  %17 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pardev.i, align 4
  %port.i157270 = getelementptr inbounds %struct.pardevice, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %port.i157270 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port.i157270, align 4
  %ops.i158271 = getelementptr inbounds %struct.parport, ptr %20, i32 0, i32 24
  %21 = ptrtoint ptr %ops.i158271 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i158271, align 4
  %read_status.i272 = getelementptr inbounds %struct.parport_operations, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %read_status.i272 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_status.i272, align 4
  %call.i273 = tail call zeroext i8 %24(ptr noundef %20) #9
  %25 = and i8 %call.i273, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.not274 = icmp eq i8 %25, 0
  br i1 %cmp.not274, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !94
  %26 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pardev.i, align 4
  %port.i157 = getelementptr inbounds %struct.pardevice, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %port.i157 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i157, align 4
  %ops.i158 = getelementptr inbounds %struct.parport, ptr %29, i32 0, i32 24
  %30 = ptrtoint ptr %ops.i158 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i158, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_status.i, align 4
  %call.i = tail call zeroext i8 %33(ptr noundef %29) #9
  %34 = and i8 %call.i, 32
  %cmp.not = icmp eq i8 %34, 0
  br i1 %cmp.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %35 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pardev.i, align 4
  %port.i160 = getelementptr inbounds %struct.pardevice, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %port.i160 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port.i160, align 4
  %ops.i161 = getelementptr inbounds %struct.parport, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %ops.i161 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i161, align 4
  %read_status.i162 = getelementptr inbounds %struct.parport_operations, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %read_status.i162 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_status.i162, align 4
  %call.i163 = tail call zeroext i8 %42(ptr noundef %38) #9
  %43 = and i8 %call.i163, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp12 = icmp eq i8 %43, 0
  br i1 %cmp12, label %while.end.cleanup_crit_edge, label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.end
  %44 = or i8 %8, 17
  %45 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pardev.i, align 4
  %port.i165 = getelementptr inbounds %struct.pardevice, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %port.i165 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port.i165, align 4
  %ops.i166 = getelementptr inbounds %struct.parport, ptr %48, i32 0, i32 24
  %49 = ptrtoint ptr %ops.i166 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i166, align 4
  %write_control.i167 = getelementptr inbounds %struct.parport_operations, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %write_control.i167 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_control.i167, align 4
  tail call void %52(ptr noundef %48, i8 noundef zeroext %44) #9
  %53 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pardev.i, align 4
  %port.i169275 = getelementptr inbounds %struct.pardevice, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %port.i169275 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port.i169275, align 4
  %ops.i170276 = getelementptr inbounds %struct.parport, ptr %56, i32 0, i32 24
  %57 = ptrtoint ptr %ops.i170276 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i170276, align 4
  %read_status.i171277 = getelementptr inbounds %struct.parport_operations, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %read_status.i171277 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_status.i171277, align 4
  %call.i172278 = tail call zeroext i8 %60(ptr noundef %56) #9
  %61 = and i8 %call.i172278, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp21279 = icmp eq i8 %61, 0
  br i1 %cmp21279, label %if.end.do.end28_crit_edge, label %if.end.while.end33_crit_edge

if.end.while.end33_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end33

if.end.do.end28_crit_edge:                        ; preds = %if.end
  br label %do.end28

do.end28:                                         ; preds = %do.end28.do.end28_crit_edge, %if.end.do.end28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !96
  %62 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pardev.i, align 4
  %port.i169 = getelementptr inbounds %struct.pardevice, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %port.i169 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port.i169, align 4
  %ops.i170 = getelementptr inbounds %struct.parport, ptr %65, i32 0, i32 24
  %66 = ptrtoint ptr %ops.i170 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i170, align 4
  %read_status.i171 = getelementptr inbounds %struct.parport_operations, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %read_status.i171 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_status.i171, align 4
  %call.i172 = tail call zeroext i8 %69(ptr noundef %65) #9
  %70 = and i8 %call.i172, 32
  %cmp21 = icmp eq i8 %70, 0
  br i1 %cmp21, label %do.end28.do.end28_crit_edge, label %do.end28.while.end33_crit_edge

do.end28.while.end33_crit_edge:                   ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end33

do.end28.do.end28_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

while.end33:                                      ; preds = %do.end28.while.end33_crit_edge, %if.end.while.end33_crit_edge
  %71 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pardev.i, align 4
  %port.i174 = getelementptr inbounds %struct.pardevice, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %port.i174 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %port.i174, align 4
  %ops.i175 = getelementptr inbounds %struct.parport, ptr %74, i32 0, i32 24
  %75 = ptrtoint ptr %ops.i175 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i175, align 4
  %read_status.i176 = getelementptr inbounds %struct.parport_operations, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %read_status.i176 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read_status.i176, align 4
  %call.i177 = tail call zeroext i8 %78(ptr noundef %74) #9
  %79 = and i8 %call.i177, -128
  %80 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pardev.i, align 4
  %port.i179 = getelementptr inbounds %struct.pardevice, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %port.i179 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %port.i179, align 4
  %ops.i180 = getelementptr inbounds %struct.parport, ptr %83, i32 0, i32 24
  %84 = ptrtoint ptr %ops.i180 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i180, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  tail call void %87(ptr noundef %83, i8 noundef zeroext 1) #9
  %88 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pardev.i, align 4
  %port.i182 = getelementptr inbounds %struct.pardevice, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %port.i182 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port.i182, align 4
  %ops.i183 = getelementptr inbounds %struct.parport, ptr %91, i32 0, i32 24
  %92 = ptrtoint ptr %ops.i183 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i183, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  tail call void %95(ptr noundef %91, i8 noundef zeroext 0) #9
  %96 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pardev.i, align 4
  %port.i185 = getelementptr inbounds %struct.pardevice, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %port.i185 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %port.i185, align 4
  %ops.i186 = getelementptr inbounds %struct.parport, ptr %99, i32 0, i32 24
  %100 = ptrtoint ptr %ops.i186 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i186, align 4
  %read_status.i187 = getelementptr inbounds %struct.parport_operations, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %read_status.i187 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read_status.i187, align 4
  %call.i188 = tail call zeroext i8 %103(ptr noundef %99) #9
  %104 = lshr i8 %call.i188, 1
  %105 = and i8 %104, 64
  %or42146 = or i8 %105, %79
  %106 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pardev.i, align 4
  %port.i190 = getelementptr inbounds %struct.pardevice, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %port.i190 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port.i190, align 4
  %ops.i191 = getelementptr inbounds %struct.parport, ptr %109, i32 0, i32 24
  %110 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i191, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  tail call void %113(ptr noundef %109, i8 noundef zeroext 1) #9
  %114 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pardev.i, align 4
  %port.i193 = getelementptr inbounds %struct.pardevice, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %port.i193 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %port.i193, align 4
  %ops.i194 = getelementptr inbounds %struct.parport, ptr %117, i32 0, i32 24
  %118 = ptrtoint ptr %ops.i194 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i194, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  tail call void %121(ptr noundef %117, i8 noundef zeroext 0) #9
  %122 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pardev.i, align 4
  %port.i196 = getelementptr inbounds %struct.pardevice, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %port.i196 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %port.i196, align 4
  %ops.i197 = getelementptr inbounds %struct.parport, ptr %125, i32 0, i32 24
  %126 = ptrtoint ptr %ops.i197 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops.i197, align 4
  %read_status.i198 = getelementptr inbounds %struct.parport_operations, ptr %127, i32 0, i32 5
  %128 = ptrtoint ptr %read_status.i198 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read_status.i198, align 4
  %call.i199 = tail call zeroext i8 %129(ptr noundef %125) #9
  %130 = lshr i8 %call.i199, 2
  %131 = and i8 %130, 32
  %or49147 = or i8 %or42146, %131
  %132 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pardev.i, align 4
  %port.i201 = getelementptr inbounds %struct.pardevice, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %port.i201 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %port.i201, align 4
  %ops.i202 = getelementptr inbounds %struct.parport, ptr %135, i32 0, i32 24
  %136 = ptrtoint ptr %ops.i202 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i202, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  tail call void %139(ptr noundef %135, i8 noundef zeroext 1) #9
  %140 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pardev.i, align 4
  %port.i204 = getelementptr inbounds %struct.pardevice, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %port.i204 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %port.i204, align 4
  %ops.i205 = getelementptr inbounds %struct.parport, ptr %143, i32 0, i32 24
  %144 = ptrtoint ptr %ops.i205 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i205, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  tail call void %147(ptr noundef %143, i8 noundef zeroext 0) #9
  %148 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pardev.i, align 4
  %port.i207 = getelementptr inbounds %struct.pardevice, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %port.i207 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %port.i207, align 4
  %ops.i208 = getelementptr inbounds %struct.parport, ptr %151, i32 0, i32 24
  %152 = ptrtoint ptr %ops.i208 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i208, align 4
  %read_status.i209 = getelementptr inbounds %struct.parport_operations, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %read_status.i209 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read_status.i209, align 4
  %call.i210 = tail call zeroext i8 %155(ptr noundef %151) #9
  %156 = lshr i8 %call.i210, 3
  %157 = and i8 %156, 16
  %or56148 = or i8 %or49147, %157
  %158 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pardev.i, align 4
  %port.i212 = getelementptr inbounds %struct.pardevice, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %port.i212 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %port.i212, align 4
  %ops.i213 = getelementptr inbounds %struct.parport, ptr %161, i32 0, i32 24
  %162 = ptrtoint ptr %ops.i213 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ops.i213, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  tail call void %165(ptr noundef %161, i8 noundef zeroext 1) #9
  %166 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pardev.i, align 4
  %port.i215 = getelementptr inbounds %struct.pardevice, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %port.i215 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %port.i215, align 4
  %ops.i216 = getelementptr inbounds %struct.parport, ptr %169, i32 0, i32 24
  %170 = ptrtoint ptr %ops.i216 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ops.i216, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  tail call void %173(ptr noundef %169, i8 noundef zeroext 0) #9
  %174 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pardev.i, align 4
  %port.i218 = getelementptr inbounds %struct.pardevice, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %port.i218 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %port.i218, align 4
  %ops.i219 = getelementptr inbounds %struct.parport, ptr %177, i32 0, i32 24
  %178 = ptrtoint ptr %ops.i219 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ops.i219, align 4
  %read_status.i220 = getelementptr inbounds %struct.parport_operations, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %read_status.i220 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %read_status.i220, align 4
  %call.i221 = tail call zeroext i8 %181(ptr noundef %177) #9
  %182 = lshr i8 %call.i221, 4
  %183 = and i8 %182, 8
  %or63149 = or i8 %or56148, %183
  %184 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pardev.i, align 4
  %port.i223 = getelementptr inbounds %struct.pardevice, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %port.i223 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %port.i223, align 4
  %ops.i224 = getelementptr inbounds %struct.parport, ptr %187, i32 0, i32 24
  %188 = ptrtoint ptr %ops.i224 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ops.i224, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  tail call void %191(ptr noundef %187, i8 noundef zeroext 1) #9
  %192 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pardev.i, align 4
  %port.i226 = getelementptr inbounds %struct.pardevice, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %port.i226 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %port.i226, align 4
  %ops.i227 = getelementptr inbounds %struct.parport, ptr %195, i32 0, i32 24
  %196 = ptrtoint ptr %ops.i227 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ops.i227, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  tail call void %199(ptr noundef %195, i8 noundef zeroext 0) #9
  %200 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pardev.i, align 4
  %port.i229 = getelementptr inbounds %struct.pardevice, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %port.i229 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %port.i229, align 4
  %ops.i230 = getelementptr inbounds %struct.parport, ptr %203, i32 0, i32 24
  %204 = ptrtoint ptr %ops.i230 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ops.i230, align 4
  %read_status.i231 = getelementptr inbounds %struct.parport_operations, ptr %205, i32 0, i32 5
  %206 = ptrtoint ptr %read_status.i231 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read_status.i231, align 4
  %call.i232 = tail call zeroext i8 %207(ptr noundef %203) #9
  %208 = lshr i8 %call.i232, 5
  %209 = and i8 %208, 4
  %or70150 = or i8 %or63149, %209
  %210 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pardev.i, align 4
  %port.i234 = getelementptr inbounds %struct.pardevice, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %port.i234 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %port.i234, align 4
  %ops.i235 = getelementptr inbounds %struct.parport, ptr %213, i32 0, i32 24
  %214 = ptrtoint ptr %ops.i235 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ops.i235, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  tail call void %217(ptr noundef %213, i8 noundef zeroext 1) #9
  %218 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pardev.i, align 4
  %port.i237 = getelementptr inbounds %struct.pardevice, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %port.i237 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %port.i237, align 4
  %ops.i238 = getelementptr inbounds %struct.parport, ptr %221, i32 0, i32 24
  %222 = ptrtoint ptr %ops.i238 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ops.i238, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  tail call void %225(ptr noundef %221, i8 noundef zeroext 0) #9
  %226 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pardev.i, align 4
  %port.i240 = getelementptr inbounds %struct.pardevice, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %port.i240 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %port.i240, align 4
  %ops.i241 = getelementptr inbounds %struct.parport, ptr %229, i32 0, i32 24
  %230 = ptrtoint ptr %ops.i241 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ops.i241, align 4
  %read_status.i242 = getelementptr inbounds %struct.parport_operations, ptr %231, i32 0, i32 5
  %232 = ptrtoint ptr %read_status.i242 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read_status.i242, align 4
  %call.i243 = tail call zeroext i8 %233(ptr noundef %229) #9
  %234 = lshr i8 %call.i243, 6
  %235 = and i8 %234, 2
  %or77151 = or i8 %or70150, %235
  %236 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pardev.i, align 4
  %port.i245 = getelementptr inbounds %struct.pardevice, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %port.i245 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %port.i245, align 4
  %ops.i246 = getelementptr inbounds %struct.parport, ptr %239, i32 0, i32 24
  %240 = ptrtoint ptr %ops.i246 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ops.i246, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 4
  tail call void %243(ptr noundef %239, i8 noundef zeroext 1) #9
  %244 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %pardev.i, align 4
  %port.i248 = getelementptr inbounds %struct.pardevice, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %port.i248 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %port.i248, align 4
  %ops.i249 = getelementptr inbounds %struct.parport, ptr %247, i32 0, i32 24
  %248 = ptrtoint ptr %ops.i249 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ops.i249, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %249, align 4
  tail call void %251(ptr noundef %247, i8 noundef zeroext 0) #9
  %252 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %pardev.i, align 4
  %port.i251 = getelementptr inbounds %struct.pardevice, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %port.i251 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %port.i251, align 4
  %ops.i252 = getelementptr inbounds %struct.parport, ptr %255, i32 0, i32 24
  %256 = ptrtoint ptr %ops.i252 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ops.i252, align 4
  %read_status.i253 = getelementptr inbounds %struct.parport_operations, ptr %257, i32 0, i32 5
  %258 = ptrtoint ptr %read_status.i253 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %read_status.i253, align 4
  %call.i254 = tail call zeroext i8 %259(ptr noundef %255) #9
  %260 = lshr i8 %call.i254, 7
  %or84152 = or i8 %or77151, %260
  %261 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pardev.i, align 4
  %port.i256 = getelementptr inbounds %struct.pardevice, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %port.i256 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %port.i256, align 4
  %ops.i257 = getelementptr inbounds %struct.parport, ptr %264, i32 0, i32 24
  %265 = ptrtoint ptr %ops.i257 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ops.i257, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %266, align 4
  tail call void %268(ptr noundef %264, i8 noundef zeroext 1) #9
  %269 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %pardev.i, align 4
  %port.i259 = getelementptr inbounds %struct.pardevice, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %port.i259 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %port.i259, align 4
  %ops.i260 = getelementptr inbounds %struct.parport, ptr %272, i32 0, i32 24
  %273 = ptrtoint ptr %ops.i260 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ops.i260, align 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %274, align 4
  tail call void %276(ptr noundef %272, i8 noundef zeroext 0) #9
  %277 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pardev.i, align 4
  %port.i262 = getelementptr inbounds %struct.pardevice, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %port.i262 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %port.i262, align 4
  %ops.i263 = getelementptr inbounds %struct.parport, ptr %280, i32 0, i32 24
  %281 = ptrtoint ptr %ops.i263 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %ops.i263, align 4
  %write_control.i264 = getelementptr inbounds %struct.parport_operations, ptr %282, i32 0, i32 2
  %283 = ptrtoint ptr %write_control.i264 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write_control.i264, align 4
  tail call void %284(ptr noundef %280, i8 noundef zeroext %conv) #9
  %285 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pardev.i, align 4
  %port.i266280 = getelementptr inbounds %struct.pardevice, ptr %286, i32 0, i32 1
  %287 = ptrtoint ptr %port.i266280 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %port.i266280, align 4
  %ops.i267281 = getelementptr inbounds %struct.parport, ptr %288, i32 0, i32 24
  %289 = ptrtoint ptr %ops.i267281 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ops.i267281, align 4
  %read_status.i268282 = getelementptr inbounds %struct.parport_operations, ptr %290, i32 0, i32 5
  %291 = ptrtoint ptr %read_status.i268282 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %read_status.i268282, align 4
  %call.i269283 = tail call zeroext i8 %292(ptr noundef %288) #9
  %293 = and i8 %call.i269283, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %cmp90.not284 = icmp eq i8 %293, 0
  br i1 %cmp90.not284, label %while.end33.while.end102_crit_edge, label %while.end33.do.end97_crit_edge

while.end33.do.end97_crit_edge:                   ; preds = %while.end33
  br label %do.end97

while.end33.while.end102_crit_edge:               ; preds = %while.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end102

do.end97:                                         ; preds = %do.end97.do.end97_crit_edge, %while.end33.do.end97_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !98
  %294 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %pardev.i, align 4
  %port.i266 = getelementptr inbounds %struct.pardevice, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %port.i266 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %port.i266, align 4
  %ops.i267 = getelementptr inbounds %struct.parport, ptr %297, i32 0, i32 24
  %298 = ptrtoint ptr %ops.i267 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ops.i267, align 4
  %read_status.i268 = getelementptr inbounds %struct.parport_operations, ptr %299, i32 0, i32 5
  %300 = ptrtoint ptr %read_status.i268 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %read_status.i268, align 4
  %call.i269 = tail call zeroext i8 %301(ptr noundef %297) #9
  %302 = and i8 %call.i269, 32
  %cmp90.not = icmp eq i8 %302, 0
  br i1 %cmp90.not, label %do.end97.while.end102_crit_edge, label %do.end97.do.end97_crit_edge

do.end97.do.end97_crit_edge:                      ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end97

do.end97.while.end102_crit_edge:                  ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end102

while.end102:                                     ; preds = %do.end97.while.end102_crit_edge, %while.end33.while.end102_crit_edge
  %conv103 = zext i8 %or84152 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end102, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv103, %while.end102 ], [ -1, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_portman_midi_open(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_portman_midi_close(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_portman_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #1 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #9
  %4 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %byte, align 1, !annotation !92
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %call513 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call513)
  %cmp614 = icmp eq i32 %call513, 1
  br i1 %cmp614, label %while.body.lr.ph, label %while.cond.preheader.if.end_crit_edge

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %pardev.i.i = getelementptr inbounds %struct.portman, ptr %3, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %portman_write_midi.exit.while.body_crit_edge, %while.body.lr.ph
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number, align 4
  %7 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %byte, align 1
  %port.tr.i = trunc i32 %6 to i8
  %9 = shl i8 %port.tr.i, 1
  %10 = add i8 %9, 8
  %conv.i = or i8 %10, 16
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.body
  %11 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pardev.i.i, align 4
  %port.i.i = getelementptr inbounds %struct.pardevice, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.parport, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %write_control.i.i = getelementptr inbounds %struct.parport_operations, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write_control.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_control.i.i, align 4
  call void %18(ptr noundef %14, i8 noundef zeroext %conv.i) #9
  %19 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pardev.i.i, align 4
  %port.i65.i = getelementptr inbounds %struct.pardevice, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %port.i65.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port.i65.i, align 4
  %ops.i66.i = getelementptr inbounds %struct.parport, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %ops.i66.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i66.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  call void %26(ptr noundef %22, i8 noundef zeroext %8) #9
  %27 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pardev.i.i, align 4
  %port.i68.i = getelementptr inbounds %struct.pardevice, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %port.i68.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port.i68.i, align 4
  %ops.i69.i = getelementptr inbounds %struct.parport, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %ops.i69.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i69.i, align 4
  %read_status.i.i = getelementptr inbounds %struct.parport_operations, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %read_status.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_status.i.i, align 4
  %call.i.i = call zeroext i8 %34(ptr noundef %30) #9
  %35 = and i8 %call.i.i, 16
  %cmp.not.not.i = icmp eq i8 %35, 0
  br i1 %cmp.not.not.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %conv4.i = or i8 %10, 17
  %36 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pardev.i.i, align 4
  %port.i71.i = getelementptr inbounds %struct.pardevice, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %port.i71.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port.i71.i, align 4
  %ops.i72.i = getelementptr inbounds %struct.parport, ptr %39, i32 0, i32 24
  %40 = ptrtoint ptr %ops.i72.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i72.i, align 4
  %write_control.i73.i = getelementptr inbounds %struct.parport_operations, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %write_control.i73.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_control.i73.i, align 4
  call void %43(ptr noundef %39, i8 noundef zeroext %conv4.i) #9
  %44 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pardev.i.i, align 4
  %port.i7593.i = getelementptr inbounds %struct.pardevice, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %port.i7593.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port.i7593.i, align 4
  %ops.i7694.i = getelementptr inbounds %struct.parport, ptr %47, i32 0, i32 24
  %48 = ptrtoint ptr %ops.i7694.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i7694.i, align 4
  %read_status.i7795.i = getelementptr inbounds %struct.parport_operations, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %read_status.i7795.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_status.i7795.i, align 4
  %call.i7896.i = call zeroext i8 %51(ptr noundef %47) #9
  %52 = and i8 %call.i7896.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp897.i = icmp eq i8 %52, 0
  br i1 %cmp897.i, label %do.end.i.do.end14.i_crit_edge, label %do.end.i.while.end.i_crit_edge

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.i.do.end14.i_crit_edge:                    ; preds = %do.end.i
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end14.i.do.end14.i_crit_edge, %do.end.i.do.end14.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !100
  %53 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pardev.i.i, align 4
  %port.i75.i = getelementptr inbounds %struct.pardevice, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %port.i75.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port.i75.i, align 4
  %ops.i76.i = getelementptr inbounds %struct.parport, ptr %56, i32 0, i32 24
  %57 = ptrtoint ptr %ops.i76.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i76.i, align 4
  %read_status.i77.i = getelementptr inbounds %struct.parport_operations, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %read_status.i77.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_status.i77.i, align 4
  %call.i78.i = call zeroext i8 %60(ptr noundef %56) #9
  %61 = and i8 %call.i78.i, 32
  %cmp8.i = icmp eq i8 %61, 0
  br i1 %cmp8.i, label %do.end14.i.do.end14.i_crit_edge, label %do.end14.i.while.end.i_crit_edge

do.end14.i.while.end.i_crit_edge:                 ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end14.i.do.end14.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i

while.end.i:                                      ; preds = %do.end14.i.while.end.i_crit_edge, %do.end.i.while.end.i_crit_edge
  %62 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pardev.i.i, align 4
  %port.i80.i = getelementptr inbounds %struct.pardevice, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %port.i80.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port.i80.i, align 4
  %ops.i81.i = getelementptr inbounds %struct.parport, ptr %65, i32 0, i32 24
  %66 = ptrtoint ptr %ops.i81.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i81.i, align 4
  %write_control.i82.i = getelementptr inbounds %struct.parport_operations, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %write_control.i82.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_control.i82.i, align 4
  call void %69(ptr noundef %65, i8 noundef zeroext %conv.i) #9
  %70 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pardev.i.i, align 4
  %port.i8498.i = getelementptr inbounds %struct.pardevice, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %port.i8498.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %port.i8498.i, align 4
  %ops.i8599.i = getelementptr inbounds %struct.parport, ptr %73, i32 0, i32 24
  %74 = ptrtoint ptr %ops.i8599.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i8599.i, align 4
  %read_status.i86100.i = getelementptr inbounds %struct.parport_operations, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %read_status.i86100.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read_status.i86100.i, align 4
  %call.i87101.i = call zeroext i8 %77(ptr noundef %73) #9
  %78 = and i8 %call.i87101.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp24.not102.i = icmp eq i8 %78, 0
  br i1 %cmp24.not102.i, label %while.end.i.while.cond37.preheader.i_crit_edge, label %while.end.i.do.end31.i_crit_edge

while.end.i.do.end31.i_crit_edge:                 ; preds = %while.end.i
  br label %do.end31.i

while.end.i.while.cond37.preheader.i_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond37.preheader.i

while.cond37.preheader.i:                         ; preds = %do.end31.i.while.cond37.preheader.i_crit_edge, %while.end.i.while.cond37.preheader.i_crit_edge
  %79 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pardev.i.i, align 4
  %port.i89103.i = getelementptr inbounds %struct.pardevice, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %port.i89103.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %port.i89103.i, align 4
  %ops.i90104.i = getelementptr inbounds %struct.parport, ptr %82, i32 0, i32 24
  %83 = ptrtoint ptr %ops.i90104.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i90104.i, align 4
  %read_status.i91105.i = getelementptr inbounds %struct.parport_operations, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %read_status.i91105.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read_status.i91105.i, align 4
  %call.i92106.i = call zeroext i8 %86(ptr noundef %82) #9
  %87 = and i8 %call.i92106.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp41.not107.i = icmp eq i8 %87, 0
  br i1 %cmp41.not107.i, label %while.cond37.preheader.i.portman_write_midi.exit_crit_edge, label %while.cond37.preheader.i.do.end48.i_crit_edge

while.cond37.preheader.i.do.end48.i_crit_edge:    ; preds = %while.cond37.preheader.i
  br label %do.end48.i

while.cond37.preheader.i.portman_write_midi.exit_crit_edge: ; preds = %while.cond37.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %portman_write_midi.exit

do.end31.i:                                       ; preds = %do.end31.i.do.end31.i_crit_edge, %while.end.i.do.end31.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !102
  %88 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pardev.i.i, align 4
  %port.i84.i = getelementptr inbounds %struct.pardevice, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %port.i84.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port.i84.i, align 4
  %ops.i85.i = getelementptr inbounds %struct.parport, ptr %91, i32 0, i32 24
  %92 = ptrtoint ptr %ops.i85.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i85.i, align 4
  %read_status.i86.i = getelementptr inbounds %struct.parport_operations, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %read_status.i86.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read_status.i86.i, align 4
  %call.i87.i = call zeroext i8 %95(ptr noundef %91) #9
  %96 = and i8 %call.i87.i, 32
  %cmp24.not.i = icmp eq i8 %96, 0
  br i1 %cmp24.not.i, label %do.end31.i.while.cond37.preheader.i_crit_edge, label %do.end31.i.do.end31.i_crit_edge

do.end31.i.do.end31.i_crit_edge:                  ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31.i

do.end31.i.while.cond37.preheader.i_crit_edge:    ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond37.preheader.i

do.end48.i:                                       ; preds = %do.end48.i.do.end48.i_crit_edge, %while.cond37.preheader.i.do.end48.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !104
  %97 = ptrtoint ptr %pardev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pardev.i.i, align 4
  %port.i89.i = getelementptr inbounds %struct.pardevice, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %port.i89.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %port.i89.i, align 4
  %ops.i90.i = getelementptr inbounds %struct.parport, ptr %100, i32 0, i32 24
  %101 = ptrtoint ptr %ops.i90.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i90.i, align 4
  %read_status.i91.i = getelementptr inbounds %struct.parport_operations, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %read_status.i91.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read_status.i91.i, align 4
  %call.i92.i = call zeroext i8 %104(ptr noundef %100) #9
  %105 = and i8 %call.i92.i, 8
  %cmp41.not.i = icmp eq i8 %105, 0
  br i1 %cmp41.not.i, label %do.end48.i.portman_write_midi.exit_crit_edge, label %do.end48.i.do.end48.i_crit_edge

do.end48.i.do.end48.i_crit_edge:                  ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48.i

do.end48.i.portman_write_midi.exit_crit_edge:     ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %portman_write_midi.exit

portman_write_midi.exit:                          ; preds = %do.end48.i.portman_write_midi.exit_crit_edge, %while.cond37.preheader.i.portman_write_midi.exit_crit_edge
  %call5 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #9
  %cmp6 = icmp eq i32 %call5, 1
  br i1 %cmp6, label %portman_write_midi.exit.while.body_crit_edge, label %portman_write_midi.exit.if.end_crit_edge

portman_write_midi.exit.if.end_crit_edge:         ; preds = %portman_write_midi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

portman_write_midi.exit.while.body_crit_edge:     ; preds = %portman_write_midi.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end:                                           ; preds = %portman_write_midi.exit.if.end_crit_edge, %while.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_portman_midi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp ne i32 %up, 0
  %number6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number6, align 4
  %arrayidx7 = getelementptr %struct.portman, ptr %3, i32 0, i32 5, i32 %5
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  %and = and i32 %7, -2
  %masksel = zext i1 %tobool.not to i32
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %arrayidx7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @portman_flush_input(ptr nocapture noundef readonly %pm, i8 noundef zeroext %port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %port, label %sw.default [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %port to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 400, ptr noundef nonnull @.str.14, i32 noundef %conv) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %command.0 = phi i8 [ 2, %sw.bb1 ], [ %port, %entry.sw.epilog_crit_edge ]
  %pardev.i = getelementptr inbounds %struct.portman, ptr %pm, i32 0, i32 3
  %1 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pardev.i, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_control.i, align 4
  tail call void %8(ptr noundef %4, i8 noundef zeroext %command.0) #9
  %or = or i8 %command.0, 1
  %9 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pardev.i, align 4
  %port.i48 = getelementptr inbounds %struct.pardevice, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %port.i48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port.i48, align 4
  %ops.i49 = getelementptr inbounds %struct.parport, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %ops.i49 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i49, align 4
  %write_control.i50 = getelementptr inbounds %struct.parport_operations, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %write_control.i50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_control.i50, align 4
  tail call void %16(ptr noundef %12, i8 noundef zeroext %or) #9
  %17 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pardev.i, align 4
  %port.i5272 = getelementptr inbounds %struct.pardevice, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %port.i5272 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port.i5272, align 4
  %ops.i5373 = getelementptr inbounds %struct.parport, ptr %20, i32 0, i32 24
  %21 = ptrtoint ptr %ops.i5373 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i5373, align 4
  %read_status.i74 = getelementptr inbounds %struct.parport_operations, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %read_status.i74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_status.i74, align 4
  %call.i75 = tail call zeroext i8 %24(ptr noundef %20) #9
  %25 = and i8 %call.i75, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp76 = icmp eq i8 %25, 0
  br i1 %cmp76, label %sw.epilog.do.end_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %sw.epilog.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !106
  %26 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pardev.i, align 4
  %port.i52 = getelementptr inbounds %struct.pardevice, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %port.i52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i52, align 4
  %ops.i53 = getelementptr inbounds %struct.parport, ptr %29, i32 0, i32 24
  %30 = ptrtoint ptr %ops.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i53, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_status.i, align 4
  %call.i = tail call zeroext i8 %33(ptr noundef %29) #9
  %34 = and i8 %call.i, 32
  %cmp = icmp eq i8 %34, 0
  br i1 %cmp, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  %35 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pardev.i, align 4
  %port.i55 = getelementptr inbounds %struct.pardevice, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %port.i55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port.i55, align 4
  %ops.i56 = getelementptr inbounds %struct.parport, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %ops.i56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i56, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  tail call void %42(ptr noundef %38, i8 noundef zeroext 0) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end
  %i.077 = phi i32 [ 0, %while.end ], [ %inc, %for.body.for.body_crit_edge ]
  %43 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pardev.i, align 4
  %port.i58 = getelementptr inbounds %struct.pardevice, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %port.i58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port.i58, align 4
  %ops.i59 = getelementptr inbounds %struct.parport, ptr %46, i32 0, i32 24
  %47 = ptrtoint ptr %ops.i59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i59, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  tail call void %50(ptr noundef %46, i8 noundef zeroext 1) #9
  %51 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pardev.i, align 4
  %port.i61 = getelementptr inbounds %struct.pardevice, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %port.i61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %port.i61, align 4
  %ops.i62 = getelementptr inbounds %struct.parport, ptr %54, i32 0, i32 24
  %55 = ptrtoint ptr %ops.i62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i62, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  tail call void %58(ptr noundef %54, i8 noundef zeroext 0) #9
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, 250
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %59 = or i8 %command.0, 16
  %60 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pardev.i, align 4
  %port.i64 = getelementptr inbounds %struct.pardevice, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %port.i64 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port.i64, align 4
  %ops.i65 = getelementptr inbounds %struct.parport, ptr %63, i32 0, i32 24
  %64 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i65, align 4
  %write_control.i66 = getelementptr inbounds %struct.parport_operations, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %write_control.i66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_control.i66, align 4
  tail call void %67(ptr noundef %63, i8 noundef zeroext %59) #9
  %68 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pardev.i, align 4
  %port.i6878 = getelementptr inbounds %struct.pardevice, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %port.i6878 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %port.i6878, align 4
  %ops.i6979 = getelementptr inbounds %struct.parport, ptr %71, i32 0, i32 24
  %72 = ptrtoint ptr %ops.i6979 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i6979, align 4
  %read_status.i7080 = getelementptr inbounds %struct.parport_operations, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %read_status.i7080 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_status.i7080, align 4
  %call.i7181 = tail call zeroext i8 %75(ptr noundef %71) #9
  %76 = and i8 %call.i7181, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp22.not82 = icmp eq i8 %76, 0
  br i1 %cmp22.not82, label %for.end.cleanup_crit_edge, label %for.end.do.end29_crit_edge

for.end.do.end29_crit_edge:                       ; preds = %for.end
  br label %do.end29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end29:                                         ; preds = %do.end29.do.end29_crit_edge, %for.end.do.end29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !108
  %77 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pardev.i, align 4
  %port.i68 = getelementptr inbounds %struct.pardevice, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %port.i68 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %port.i68, align 4
  %ops.i69 = getelementptr inbounds %struct.parport, ptr %80, i32 0, i32 24
  %81 = ptrtoint ptr %ops.i69 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i69, align 4
  %read_status.i70 = getelementptr inbounds %struct.parport_operations, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %read_status.i70 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read_status.i70, align 4
  %call.i71 = tail call zeroext i8 %84(ptr noundef %80) #9
  %85 = and i8 %call.i71, 32
  %cmp22.not = icmp eq i8 %85, 0
  br i1 %cmp22.not, label %do.end29.cleanup_crit_edge, label %do.end29.do.end29_crit_edge

do.end29.do.end29_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end29.cleanup_crit_edge, %for.end.cleanup_crit_edge, %sw.default
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_portman_detach(ptr nocapture noundef %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_portman_attach(ptr noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @device_count, align 4
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %0) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %p, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_device_add(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_device_put(ptr noundef nonnull %call) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_device_unregister(ptr noundef nonnull %call) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load i32, ptr @device_count, align 4
  %arrayidx = getelementptr [32 x ptr], ptr @platform_devices, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @device_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_portman_dev_probe(ptr nocapture noundef readonly %pardev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pardev, align 8
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -19
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__param_index, !1, !"__param_index", i1 false, i1 false}
!1 = !{!"../sound/drivers/portman2x4.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_indextype233, !1, !"__UNIQUE_ID_indextype233", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_index234, !4, !"__UNIQUE_ID_index234", i1 false, i1 false}
!4 = !{!"../sound/drivers/portman2x4.c", i32 51, i32 1}
!5 = !{ptr @__param_id, !6, !"__param_id", i1 false, i1 false}
!6 = !{!"../sound/drivers/portman2x4.c", i32 52, i32 1}
!7 = !{ptr @__UNIQUE_ID_idtype235, !6, !"__UNIQUE_ID_idtype235", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_id236, !9, !"__UNIQUE_ID_id236", i1 false, i1 false}
!9 = !{!"../sound/drivers/portman2x4.c", i32 53, i32 1}
!10 = !{ptr @__param_enable, !11, !"__param_enable", i1 false, i1 false}
!11 = !{!"../sound/drivers/portman2x4.c", i32 54, i32 1}
!12 = !{ptr @__UNIQUE_ID_enabletype237, !11, !"__UNIQUE_ID_enabletype237", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable238, !14, !"__UNIQUE_ID_enable238", i1 false, i1 false}
!14 = !{!"../sound/drivers/portman2x4.c", i32 55, i32 1}
!15 = !{ptr @__UNIQUE_ID_author239, !16, !"__UNIQUE_ID_author239", i1 false, i1 false}
!16 = !{!"../sound/drivers/portman2x4.c", i32 57, i32 1}
!17 = !{ptr @__UNIQUE_ID_description240, !18, !"__UNIQUE_ID_description240", i1 false, i1 false}
!18 = !{!"../sound/drivers/portman2x4.c", i32 58, i32 1}
!19 = !{ptr @__UNIQUE_ID_file241, !20, !"__UNIQUE_ID_file241", i1 false, i1 false}
!20 = !{!"../sound/drivers/portman2x4.c", i32 59, i32 1}
!21 = !{ptr @__UNIQUE_ID_license242, !20, !"__UNIQUE_ID_license242", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_snd_portman2x4__243_860_snd_portman_module_init6, !23, !"__initcall__kmod_snd_portman2x4__243_860_snd_portman_module_init6", i1 false, i1 false}
!23 = !{!"../sound/drivers/portman2x4.c", i32 860, i32 1}
!24 = !{ptr @__exitcall_snd_portman_module_exit, !25, !"__exitcall_snd_portman_module_exit", i1 false, i1 false}
!25 = !{!"../sound/drivers/portman2x4.c", i32 861, i32 1}
!26 = !{ptr @__param_str_index, !1, !"__param_str_index", i1 false, i1 false}
!27 = !{ptr @__param_arr_index, !1, !"__param_arr_index", i1 false, i1 false}
!28 = !{ptr @index, !29, !"index", i1 false, i1 false}
!29 = !{!"../sound/drivers/portman2x4.c", i32 43, i32 12}
!30 = !{ptr @__param_str_id, !6, !"__param_str_id", i1 false, i1 false}
!31 = !{ptr @__param_arr_id, !6, !"__param_arr_id", i1 false, i1 false}
!32 = !{ptr @id, !33, !"id", i1 false, i1 false}
!33 = !{!"../sound/drivers/portman2x4.c", i32 44, i32 14}
!34 = !{ptr @__param_str_enable, !11, !"__param_str_enable", i1 false, i1 false}
!35 = !{ptr @__param_arr_enable, !11, !"__param_arr_enable", i1 false, i1 false}
!36 = !{ptr @enable, !37, !"enable", i1 false, i1 false}
!37 = !{!"../sound/drivers/portman2x4.c", i32 45, i32 13}
!38 = !{ptr @platform_devices, !39, !"platform_devices", i1 false, i1 false}
!39 = !{!"../sound/drivers/portman2x4.c", i32 47, i32 32}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/drivers/portman2x4.c", i32 813, i32 11}
!42 = !{ptr @snd_portman_driver, !43, !"snd_portman_driver", i1 false, i1 false}
!43 = !{!"../sound/drivers/portman2x4.c", i32 809, i32 31}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/drivers/portman2x4.c", i32 726, i32 3}
!46 = !{ptr @.str.2, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/drivers/portman2x4.c", i32 729, i32 23}
!49 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/drivers/portman2x4.c", i32 730, i32 26}
!51 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/drivers/portman2x4.c", i32 731, i32 27}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/drivers/portman2x4.c", i32 740, i32 3}
!55 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/drivers/portman2x4.c", i32 747, i32 3}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/drivers/portman2x4.c", i32 754, i32 3}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/drivers/portman2x4.c", i32 768, i32 3}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/drivers/portman2x4.c", i32 782, i32 3}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/drivers/portman2x4.c", i32 786, i32 2}
!65 = !{ptr @portman_create.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../sound/drivers/portman2x4.c", i32 96, i32 2}
!67 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/drivers/portman2x4.c", i32 582, i32 4}
!70 = !{ptr @snd_portman_midi_output, !71, !"snd_portman_midi_output", i1 false, i1 false}
!71 = !{!"../sound/drivers/portman2x4.c", i32 535, i32 37}
!72 = !{ptr @snd_portman_midi_input, !73, !"snd_portman_midi_input", i1 false, i1 false}
!73 = !{!"../sound/drivers/portman2x4.c", i32 541, i32 37}
!74 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/drivers/portman2x4.c", i32 398, i32 3}
!76 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/drivers/portman2x4.c", i32 677, i32 11}
!78 = !{ptr @portman_parport_driver, !79, !"portman_parport_driver", i1 false, i1 false}
!79 = !{!"../sound/drivers/portman2x4.c", i32 676, i32 30}
!80 = !{ptr @device_count, !81, !"device_count", i1 false, i1 false}
!81 = !{!"../sound/drivers/portman2x4.c", i32 48, i32 12}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i8 0, i8 2}
!92 = !{!"auto-init"}
!93 = !{i64 2153897405}
!94 = !{i64 2153897247}
!95 = !{i64 2153897731}
!96 = !{i64 2153897573}
!97 = !{i64 2153898042}
!98 = !{i64 2153897884}
!99 = !{i64 2153896458}
!100 = !{i64 2153896300}
!101 = !{i64 2153896769}
!102 = !{i64 2153896611}
!103 = !{i64 2153897078}
!104 = !{i64 2153896920}
!105 = !{i64 2153898608}
!106 = !{i64 2153898450}
!107 = !{i64 2153898935}
!108 = !{i64 2153898777}
