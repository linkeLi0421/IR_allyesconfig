; ModuleID = '/llk/IR_all_yes/sound/drivers/mts64.c_pt.bc'
source_filename = "../sound/drivers/mts64.c"
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
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
%struct.mts64 = type { %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, [5 x i8], [5 x ptr], i32, [4 x i8], i8 }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.74 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.69, [128 x i8] }
%union.anon.69 = type { %union.anon.71 }
%union.anon.71 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.75, [64 x i8] }
%union.anon.75 = type { %struct.anon.78, [40 x i8] }
%struct.anon.78 = type { i32, i32, [64 x i8], i64, i32 }

@__param_str_index = internal constant [16 x i8] c"snd_mts64.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype233 = internal constant [38 x i8] c"snd_mts64.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index234 = internal constant [66 x i8] c"snd_mts64.parm=index:Index value for Miditerminal 4140 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_mts64.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype235 = internal constant [37 x i8] c"snd_mts64.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id236 = internal constant [61 x i8] c"snd_mts64.parm=id:ID string for Miditerminal 4140 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_mts64.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype237 = internal constant [40 x i8] c"snd_mts64.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable238 = internal constant [58 x i8] c"snd_mts64.parm=enable:Enable Miditerminal 4140 soundcard.\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [51 x i8] c"snd_mts64.author=Matthias Koenig <mk@phasorlab.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [44 x i8] c"snd_mts64.description=ESI Miditerminal 4140\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [39 x i8] c"snd_mts64.file=sound/drivers/snd-mts64\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [22 x i8] c"snd_mts64.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_snd_mts64__243_1060_snd_mts64_module_init6 = internal global ptr @snd_mts64_module_init, section ".initcall6.init", align 4
@__exitcall_snd_mts64_module_exit = internal global ptr @snd_mts64_module_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@platform_devices = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@snd_mts64_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_mts64_probe, ptr @snd_mts64_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mts64_parport_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str.28, ptr null, ptr @snd_mts64_detach, ptr @snd_mts64_attach, ptr @snd_mts64_dev_probe, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_mts64\00", [22 x i8] zeroinitializer }, align 32
@__const.snd_mts64_probe.mts64_cb = private unnamed_addr constant %struct.pardev_cb { ptr null, ptr null, ptr null, ptr @snd_mts64_interrupt, i32 2 }, align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/drivers/mts64.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot create card\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MTS64\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ESI Miditerminal 4140\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %i\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot register pardevice\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot claim parport 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot create main component\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Creating Rawmidi component failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot register card\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ESI Miditerminal 4140 on 0x%lx\0A\00", [62 x i8] zeroinitializer }, align 32
@mts64_map_midi_input.map = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\04\02\03", [27 x i8] zeroinitializer }, align 32
@snd_mts64_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mts->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Miditerminal 4140\00", [46 x i8] zeroinitializer }, align 32
@snd_mts64_rawmidi_output_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_mts64_rawmidi_open, ptr @snd_mts64_rawmidi_close, ptr @snd_mts64_rawmidi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_mts64_rawmidi_input_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_mts64_rawmidi_open, ptr @snd_mts64_rawmidi_close, ptr @snd_mts64_rawmidi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Miditerminal %d\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Miditerminal SMPTE\00", [45 x i8] zeroinitializer }, align 32
@mts64_ctl_smpte_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 4, i32 0, i32 0, ptr @.str.17, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_mts64_ctl_smpte_switch_get, ptr @snd_mts64_ctl_smpte_switch_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mts64_ctl_smpte_time_hours = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 4, i32 0, i32 0, ptr @.str.18, i32 0, i32 3, i32 0, ptr @snd_mts64_ctl_smpte_time_h_info, ptr @snd_mts64_ctl_smpte_time_get, ptr @snd_mts64_ctl_smpte_time_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mts64_ctl_smpte_time_minutes = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 4, i32 0, i32 0, ptr @.str.19, i32 0, i32 3, i32 0, ptr @snd_mts64_ctl_smpte_time_info, ptr @snd_mts64_ctl_smpte_time_get, ptr @snd_mts64_ctl_smpte_time_put, %union.anon.79 zeroinitializer, i32 1 }, [48 x i8] zeroinitializer }, align 32
@mts64_ctl_smpte_time_seconds = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 4, i32 0, i32 0, ptr @.str.20, i32 0, i32 3, i32 0, ptr @snd_mts64_ctl_smpte_time_info, ptr @snd_mts64_ctl_smpte_time_get, ptr @snd_mts64_ctl_smpte_time_put, %union.anon.79 zeroinitializer, i32 2 }, [48 x i8] zeroinitializer }, align 32
@mts64_ctl_smpte_time_frames = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 4, i32 0, i32 0, ptr @.str.21, i32 0, i32 3, i32 0, ptr @snd_mts64_ctl_smpte_time_f_info, ptr @snd_mts64_ctl_smpte_time_get, ptr @snd_mts64_ctl_smpte_time_put, %union.anon.79 zeroinitializer, i32 3 }, [48 x i8] zeroinitializer }, align 32
@mts64_ctl_smpte_fps = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 4, i32 0, i32 0, ptr @.str.22, i32 0, i32 3, i32 0, ptr @snd_mts64_ctl_smpte_fps_info, ptr @snd_mts64_ctl_smpte_fps_get, ptr @snd_mts64_ctl_smpte_fps_put, %union.anon.79 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot create control: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SMPTE Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@mts64_smpte_start.fps = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\E3\E2\E4\E1\E0", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SMPTE Time Hours\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SMPTE Time Minutes\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SMPTE Time Seconds\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SMPTE Time Frames\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SMPTE Fps\00", [22 x i8] zeroinitializer }, align 32
@snd_mts64_ctl_smpte_fps_info.texts = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"24\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"25\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"29.97\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"30D\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"30\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mts64\00", [26 x i8] zeroinitializer }, align 32
@device_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 23, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 24, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 25, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"platform_devices\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 27, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"snd_mts64_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1009, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"mts64_parport_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 877, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1013, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 927, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 930, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 931, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 932, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 941, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 948, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 955, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 969, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 983, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 987, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 263, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 82, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 758, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant [29 x i8] c"snd_mts64_rawmidi_output_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 737, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant [28 x i8] c"snd_mts64_rawmidi_input_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 743, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 785, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 794, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"mts64_ctl_smpte_switch\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 469, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"mts64_ctl_smpte_time_hours\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 542, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant [29 x i8] c"mts64_ctl_smpte_time_minutes\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 553, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant [29 x i8] c"mts64_ctl_smpte_time_seconds\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 564, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant [28 x i8] c"mts64_ctl_smpte_time_frames\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 575, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"mts64_ctl_smpte_fps\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 627, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 655, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 471, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 355, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 544, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 555, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 566, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 577, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 629, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 590, i32 28 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 591, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 591, i32 9 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 591, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 591, i32 24 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 591, i32 31 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 878, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"device_count\00", align 1
@___asan_gen_.171 = private constant [25 x i8] c"../sound/drivers/mts64.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 28, i32 12 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_enable238, ptr @__UNIQUE_ID_enabletype237, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_id236, ptr @__UNIQUE_ID_idtype235, ptr @__UNIQUE_ID_index234, ptr @__UNIQUE_ID_indextype233, ptr @__UNIQUE_ID_license242, ptr @__exitcall_snd_mts64_module_exit, ptr @__initcall__kmod_snd_mts64__243_1060_snd_mts64_module_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @snd_mts64_module_exit, ptr @index, ptr @id, ptr @enable, ptr @platform_devices, ptr @snd_mts64_driver, ptr @mts64_parport_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mts64_map_midi_input.map, ptr @snd_mts64_create.__key, ptr @.str.12, ptr @.str.13, ptr @snd_mts64_rawmidi_output_ops, ptr @snd_mts64_rawmidi_input_ops, ptr @.str.14, ptr @.str.15, ptr @mts64_ctl_smpte_switch, ptr @mts64_ctl_smpte_time_hours, ptr @mts64_ctl_smpte_time_minutes, ptr @mts64_ctl_smpte_time_seconds, ptr @mts64_ctl_smpte_time_frames, ptr @mts64_ctl_smpte_fps, ptr @.str.16, ptr @.str.17, ptr @mts64_smpte_start.fps, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @snd_mts64_ctl_smpte_fps_info.texts, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @device_count], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mts64_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts64_parport_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts64_map_midi_input.map to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mts64_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mts64_rawmidi_output_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mts64_rawmidi_input_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts64_ctl_smpte_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts64_ctl_smpte_time_hours to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts64_ctl_smpte_time_minutes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts64_ctl_smpte_time_seconds to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts64_ctl_smpte_time_frames to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts64_ctl_smpte_fps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts64_smpte_start.fps to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mts64_ctl_smpte_fps_info.texts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_mts64_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_mts64_unregister_all()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mts64_unregister_all() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_device_unregister(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_mts64_driver) #10
  tail call void @parport_unregister_driver(ptr noundef nonnull @mts64_parport_driver) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_mts64_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__parport_register_driver(ptr noundef nonnull @mts64_parport_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_mts64_driver) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = load i32, ptr @device_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp5 = icmp eq i32 %0, 0
  br i1 %cmp5, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_mts64_unregister_all()
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
define internal i32 @snd_mts64_probe(ptr noundef %pdev) #1 align 64 {
entry:
  %card = alloca ptr, align 4
  %mts64_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %card, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mts64_cb) #10
  %3 = call ptr @memcpy(ptr %mts64_cb, ptr @__const.snd_mts64_probe.mts64_cb, i32 20)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
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
  %call6 = call i32 @snd_card_new(ptr noundef %dev3, i32 noundef %9, ptr noundef %11, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 927, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end2
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %driver, ptr @.str.3, i32 6)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %shortname, ptr @.str.4, i32 22)
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
  %private = getelementptr inbounds %struct.pardev_cb, ptr %mts64_cb, i32 0, i32 2
  %22 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %private, align 4
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %call18 = call ptr @parport_register_dev_model(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %mts64_cb, i32 noundef %24) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 941, ptr noundef nonnull @.str.6) #10
  br label %__err

if.end21:                                         ; preds = %if.end9
  %call22 = call i32 @parport_claim(ptr noundef nonnull %call18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr inbounds %struct.pardevice, ptr %call18, i32 0, i32 1
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 948, ptr noundef nonnull @.str.7, i32 noundef %28) #10
  br label %free_pardev

if.end26:                                         ; preds = %if.end21
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 108) #13
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 955, ptr noundef nonnull @.str.8) #10
  call void @parport_release(ptr noundef nonnull %call18) #10
  br label %free_pardev

if.end30:                                         ; preds = %if.end26
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @snd_mts64_create.__key, i16 noundef signext 3) #10
  %card2.i = getelementptr inbounds %struct.mts64, ptr %call7.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %card2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %card2.i, align 4
  %pardev3.i = getelementptr inbounds %struct.mts64, ptr %call7.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %pardev3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call18, ptr %pardev3.i, align 4
  %current_midi_output_port.i = getelementptr inbounds %struct.mts64, ptr %call7.i.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %current_midi_output_port.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %current_midi_output_port.i, align 4
  %current_midi_input_port.i = getelementptr inbounds %struct.mts64, ptr %call7.i.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %current_midi_input_port.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %current_midi_input_port.i, align 8
  %36 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 10
  %39 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @snd_mts64_card_private_free, ptr %private_free, align 4
  %call31 = call fastcc i32 @mts64_probe(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.__err_crit_edge

if.end30.__err_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %__err

if.end34:                                         ; preds = %if.end30
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %call35 = call fastcc i32 @snd_mts64_rawmidi_create(ptr noundef %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 969, ptr noundef nonnull @.str.9) #10
  br label %__err

if.end38:                                         ; preds = %if.end34
  %call39 = call fastcc i32 @mts64_device_init(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end38.__err_crit_edge, label %if.end42

if.end38.__err_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %__err

if.end42:                                         ; preds = %if.end38
  %42 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card, align 4
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %driver_data.i.i, align 4
  %call43 = call i32 @snd_card_register(ptr noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 983, ptr noundef nonnull @.str.10) #10
  br label %__err

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 987, ptr noundef nonnull @.str.11, i32 noundef %46) #10
  br label %cleanup

free_pardev:                                      ; preds = %if.then29, %if.then24
  %err.0 = phi i32 [ -5, %if.then24 ], [ -12, %if.then29 ]
  call void @parport_unregister_device(ptr noundef nonnull %call18) #10
  br label %__err

__err:                                            ; preds = %free_pardev, %if.then45, %if.end38.__err_crit_edge, %if.then37, %if.end30.__err_crit_edge, %if.then20
  %err.1 = phi i32 [ %err.0, %free_pardev ], [ %call35, %if.then37 ], [ %call39, %if.end38.__err_crit_edge ], [ %call43, %if.then45 ], [ -5, %if.then20 ], [ -5, %if.end30.__err_crit_edge ]
  %47 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card, align 4
  %call48 = call i32 @snd_card_free(ptr noundef %48) #10
  br label %cleanup

cleanup:                                          ; preds = %__err, %if.end46, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ %err.1, %__err ], [ 0, %if.end46 ], [ -19, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mts64_cb) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @snd_card_free(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mts64_interrupt(ptr nocapture noundef readonly %private) #1 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %private, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %pardev = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pardev, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %call = tail call fastcc zeroext i16 @mts64_read(ptr noundef %5)
  %conv1 = trunc i16 %call to i8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %data, align 1
  %7 = and i16 %call, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.mask = and i16 %call, 255
  %idxprom.i = zext i16 %conv1.mask to i32
  %arrayidx.i = getelementptr [5 x i8], ptr @mts64_map_midi_input.map, i32 0, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv7 = zext i8 %9 to i32
  %current_midi_input_port = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %current_midi_input_port to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv7, ptr %current_midi_input_port, align 4
  br label %__out

if.else:                                          ; preds = %entry
  %current_midi_input_port8 = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %current_midi_input_port8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_midi_input_port8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp = icmp eq i32 %12, -1
  br i1 %cmp, label %if.else.__out_crit_edge, label %if.end

if.else.__out_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

if.end:                                           ; preds = %if.else
  %arrayidx = getelementptr %struct.mts64, ptr %1, i32 0, i32 8, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number, align 4
  %arrayidx12 = getelementptr %struct.mts64, ptr %1, i32 0, i32 7, i32 %16
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  br i1 %tobool15.not, label %if.end.__out_crit_edge, label %if.then16

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = call i32 @snd_rawmidi_receive(ptr noundef %14, ptr noundef nonnull %data, i32 noundef 1) #10
  br label %__out

__out:                                            ; preds = %if.then16, %if.end.__out_crit_edge, %if.else.__out_crit_edge, %if.then
  call void @_raw_spin_unlock(ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
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
define internal void @snd_mts64_card_private_free(ptr nocapture noundef readonly %card) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %pardev1 = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pardev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pardev1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @parport_release(ptr noundef nonnull %3) #10
  tail call void @parport_unregister_device(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mts64_probe(ptr noundef %p) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i.i.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 24
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %entry
  %i.01.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %0 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i.i = getelementptr inbounds %struct.parport_operations, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_status.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %3(ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %cmp3.not.i.i.i = icmp slt i8 %call.i.i.i, 0
  %inc.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 65535
  %or.cond.i.i.i = select i1 %cmp3.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %mts64_smpte_stop.exit, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

mts64_smpte_stop.exit:                            ; preds = %for.body.i.i.i
  %4 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %p, i8 noundef zeroext -17) #10
  %8 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i.i = getelementptr inbounds %struct.parport_operations, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_control.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_control.i.i, align 4
  tail call void %11(ptr noundef %p, i8 noundef zeroext 6) #10
  %12 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i.i = getelementptr inbounds %struct.parport_operations, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write_control3.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_control3.i.i, align 4
  tail call void %15(ptr noundef %p, i8 noundef zeroext 7) #10
  %16 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i.i = getelementptr inbounds %struct.parport_operations, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %write_control5.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_control5.i.i, align 4
  tail call void %19(ptr noundef %p, i8 noundef zeroext 6) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %mts64_smpte_stop.exit
  %i.01.i.i = phi i32 [ 0, %mts64_smpte_stop.exit ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i = getelementptr inbounds %struct.parport_operations, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %read_status.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %23(ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %cmp3.not.i.i = icmp slt i8 %call.i.i, 0
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 65535
  %or.cond.i.i = select i1 %cmp3.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %mts64_write_command.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

mts64_write_command.exit:                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void %27(ptr noundef %p, i8 noundef zeroext -113) #10
  %28 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_control.i, align 4
  tail call void %31(ptr noundef %p, i8 noundef zeroext 6) #10
  %32 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i = getelementptr inbounds %struct.parport_operations, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %write_control3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_control3.i, align 4
  tail call void %35(ptr noundef %p, i8 noundef zeroext 7) #10
  %36 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i = getelementptr inbounds %struct.parport_operations, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %write_control5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_control5.i, align 4
  tail call void %39(ptr noundef %p, i8 noundef zeroext 6) #10
  tail call void @msleep(i32 noundef 50) #10
  %call = tail call fastcc zeroext i16 @mts64_read(ptr noundef %p)
  %40 = and i16 %call, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 143, i16 %40)
  %cmp.not = icmp eq i16 %40, 143
  %. = select i1 %cmp.not, i32 0, i32 -19
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_mts64_rawmidi_create(ptr noundef %card) unnamed_addr #1 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #10
  %2 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !138
  %call = call i32 @snd_rawmidi_new(ptr noundef %card, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 4, i32 noundef 5, ptr noundef nonnull %rmidi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = call ptr @memcpy(ptr %name, ptr @.str.13, i32 18)
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %info_flags, align 8
  %rmidi3 = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rmidi3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %4, ptr %rmidi3, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_mts64_rawmidi_output_ops) #10
  %9 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @snd_mts64_rawmidi_input_ops) #10
  %11 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmidi, align 4
  %substreams = getelementptr inbounds %struct.snd_rawmidi, ptr %12, i32 0, i32 8, i32 0, i32 2
  %13 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %13)
  %list.068 = load ptr, ptr %substreams, align 4
  %cmp.i.not70 = icmp eq ptr %list.068, %substreams
  br i1 %cmp.i.not70, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %list.071 = phi ptr [ %list.0, %for.body.for.body_crit_edge ], [ %list.068, %if.end.for.body_crit_edge ]
  %name8 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.071, i32 0, i32 12
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.071, i32 0, i32 2
  %14 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number, align 4
  %add = add i32 %15, 1
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name8, ptr noundef nonnull @.str.14, i32 noundef %add)
  %16 = ptrtoint ptr %list.071 to i32
  call void @__asan_load4_noabort(i32 %16)
  %list.0 = load ptr, ptr %list.071, align 4
  %17 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmidi, align 4
  %substreams6 = getelementptr inbounds %struct.snd_rawmidi, ptr %18, i32 0, i32 8, i32 0, i32 2
  %cmp.i.not = icmp eq ptr %list.0, %substreams6
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi ptr [ %12, %if.end.for.end_crit_edge ], [ %18, %for.body.for.end_crit_edge ]
  %substreams14 = getelementptr %struct.snd_rawmidi, ptr %.lcssa, i32 0, i32 8, i32 1, i32 2
  %19 = ptrtoint ptr %substreams14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %list.172 = load ptr, ptr %substreams14, align 4
  %20 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmidi, align 4
  %substreams1973 = getelementptr %struct.snd_rawmidi, ptr %21, i32 0, i32 8, i32 1, i32 2
  %cmp.i65.not74 = icmp eq ptr %list.172, %substreams1973
  br i1 %cmp.i65.not74, label %for.end.for.end40_crit_edge, label %for.end.for.body23_crit_edge

for.end.for.body23_crit_edge:                     ; preds = %for.end
  br label %for.body23

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.body23:                                       ; preds = %for.inc38.for.body23_crit_edge, %for.end.for.body23_crit_edge
  %list.175 = phi ptr [ %list.1, %for.inc38.for.body23_crit_edge ], [ %list.172, %for.end.for.body23_crit_edge ]
  %number27 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.175, i32 0, i32 2
  %22 = ptrtoint ptr %number27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number27, align 4
  %arrayidx28 = getelementptr %struct.mts64, ptr %1, i32 0, i32 8, i32 %23
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list.175, ptr %arrayidx28, align 4
  %25 = load i32, ptr %number27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cond = icmp eq i32 %25, 4
  %name30 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %list.175, i32 0, i32 12
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  %26 = call ptr @memcpy(ptr %name30, ptr @.str.15, i32 19)
  br label %for.inc38

sw.default:                                       ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  %add36 = add i32 %25, 1
  %call37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name30, ptr noundef nonnull @.str.14, i32 noundef %add36)
  br label %for.inc38

for.inc38:                                        ; preds = %sw.default, %sw.bb
  %27 = ptrtoint ptr %list.175 to i32
  call void @__asan_load4_noabort(i32 %27)
  %list.1 = load ptr, ptr %list.175, align 4
  %28 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmidi, align 4
  %substreams19 = getelementptr %struct.snd_rawmidi, ptr %29, i32 0, i32 8, i32 1, i32 2
  %cmp.i65.not = icmp eq ptr %list.1, %substreams19
  br i1 %cmp.i65.not, label %for.inc38.for.end40_crit_edge, label %for.inc38.for.body23_crit_edge

for.inc38.for.body23_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

for.inc38.for.end40_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end40

for.end40:                                        ; preds = %for.inc38.for.end40_crit_edge, %for.end.for.end40_crit_edge
  %call.i = call ptr @snd_ctl_new1(ptr noundef nonnull @mts64_ctl_smpte_switch, ptr noundef %1) #10
  %call2.i = call i32 @snd_ctl_add(ptr noundef %card, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i67 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i67, label %for.end40.if.then.i_crit_edge, label %for.cond.i

for.end40.if.then.i_crit_edge:                    ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.cond.i:                                       ; preds = %for.end40
  %call.1.i = call ptr @snd_ctl_new1(ptr noundef nonnull @mts64_ctl_smpte_time_hours, ptr noundef %1) #10
  %call2.1.i = call i32 @snd_ctl_add(ptr noundef %card, ptr noundef %call.1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i)
  %cmp.1.i = icmp slt i32 %call2.1.i, 0
  br i1 %cmp.1.i, label %for.cond.i.if.then.i_crit_edge, label %for.cond.1.i

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = call ptr @snd_ctl_new1(ptr noundef nonnull @mts64_ctl_smpte_time_minutes, ptr noundef %1) #10
  %call2.2.i = call i32 @snd_ctl_add(ptr noundef %card, ptr noundef %call.2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2.i)
  %cmp.2.i = icmp slt i32 %call2.2.i, 0
  br i1 %cmp.2.i, label %for.cond.1.i.if.then.i_crit_edge, label %for.cond.2.i

for.cond.1.i.if.then.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = call ptr @snd_ctl_new1(ptr noundef nonnull @mts64_ctl_smpte_time_seconds, ptr noundef %1) #10
  %call2.3.i = call i32 @snd_ctl_add(ptr noundef %card, ptr noundef %call.3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3.i)
  %cmp.3.i = icmp slt i32 %call2.3.i, 0
  br i1 %cmp.3.i, label %for.cond.2.i.if.then.i_crit_edge, label %for.cond.3.i

for.cond.2.i.if.then.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.4.i = call ptr @snd_ctl_new1(ptr noundef nonnull @mts64_ctl_smpte_time_frames, ptr noundef %1) #10
  %call2.4.i = call i32 @snd_ctl_add(ptr noundef %card, ptr noundef %call.4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.4.i)
  %cmp.4.i = icmp slt i32 %call2.4.i, 0
  br i1 %cmp.4.i, label %for.cond.3.i.if.then.i_crit_edge, label %for.cond.4.i

for.cond.3.i.if.then.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %call.5.i = call ptr @snd_ctl_new1(ptr noundef nonnull @mts64_ctl_smpte_fps, ptr noundef %1) #10
  %call2.5.i = call i32 @snd_ctl_add(ptr noundef %card, ptr noundef %call.5.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.5.i)
  %cmp.5.i = icmp slt i32 %call2.5.i, 0
  br i1 %cmp.5.i, label %for.cond.4.i.if.then.i_crit_edge, label %for.cond.4.i.cleanup_crit_edge

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.4.i.if.then.i_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.4.i.if.then.i_crit_edge, %for.cond.3.i.if.then.i_crit_edge, %for.cond.2.i.if.then.i_crit_edge, %for.cond.1.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge, %for.end40.if.then.i_crit_edge
  %.lcssa.i = phi ptr [ @mts64_ctl_smpte_switch, %for.end40.if.then.i_crit_edge ], [ @mts64_ctl_smpte_time_hours, %for.cond.i.if.then.i_crit_edge ], [ @mts64_ctl_smpte_time_minutes, %for.cond.1.i.if.then.i_crit_edge ], [ @mts64_ctl_smpte_time_seconds, %for.cond.2.i.if.then.i_crit_edge ], [ @mts64_ctl_smpte_time_frames, %for.cond.3.i.if.then.i_crit_edge ], [ @mts64_ctl_smpte_fps, %for.cond.4.i.if.then.i_crit_edge ]
  %call2.lcssa.i = phi i32 [ %call2.i, %for.end40.if.then.i_crit_edge ], [ %call2.1.i, %for.cond.i.if.then.i_crit_edge ], [ %call2.2.i, %for.cond.1.i.if.then.i_crit_edge ], [ %call2.3.i, %for.cond.2.i.if.then.i_crit_edge ], [ %call2.4.i, %for.cond.3.i.if.then.i_crit_edge ], [ %call2.5.i, %for.cond.4.i.if.then.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %.lcssa.i, i32 0, i32 3
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 4
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 656, ptr noundef nonnull @.str.16, ptr noundef %31) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %for.cond.4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2.lcssa.i, %if.then.i ], [ 0, %for.cond.4.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mts64_device_init(ptr noundef %p) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 24
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.01.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 4
  %read_status.i.i = getelementptr inbounds %struct.parport_operations, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_status.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %cmp3.not.i.i = icmp slt i8 %call.i.i, 0
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 65535
  %or.cond.i.i = select i1 %cmp3.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %mts64_write_command.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

mts64_write_command.exit:                         ; preds = %for.body.i.i
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %p, i8 noundef zeroext -2) #10
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_control.i, align 4
  tail call void %11(ptr noundef %p, i8 noundef zeroext 6) #10
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %write_control3.i = getelementptr inbounds %struct.parport_operations, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write_control3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_control3.i, align 4
  tail call void %15(ptr noundef %p, i8 noundef zeroext 7) #10
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %write_control5.i = getelementptr inbounds %struct.parport_operations, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %write_control5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_control5.i, align 4
  tail call void %19(ptr noundef %p, i8 noundef zeroext 6) #10
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %mts64_write_command.exit
  %i.011 = phi i32 [ 0, %mts64_write_command.exit ], [ %inc, %for.cond.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 100) #10
  %call = tail call fastcc i32 @mts64_probe(ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ -5, %for.cond.cleanup_crit_edge ]
  %20 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i, align 4
  %read_control.i8 = getelementptr inbounds %struct.parport_operations, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %read_control.i8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_control.i8, align 4
  %call.i9 = tail call zeroext i8 %23(ptr noundef %p) #10
  %24 = and i8 %call.i9, -9
  %25 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i, align 4
  %write_control.i10 = getelementptr inbounds %struct.parport_operations, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %write_control.i10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_control.i10, align 4
  tail call void %28(ptr noundef %p, i8 noundef zeroext %24) #10
  ret i32 %retval.0
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
define internal fastcc zeroext i16 @mts64_read(ptr noundef %p) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_status.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp3.not.i = icmp slt i8 %call.i, 0
  %inc.i = add nuw nsw i32 %i.01.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 65535
  %or.cond.i = select i1 %cmp3.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %mts64_device_ready.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mts64_device_ready.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read_control.i = getelementptr inbounds %struct.parport_operations, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %read_control.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_control.i, align 4
  %call.i11 = tail call zeroext i8 %7(ptr noundef %p) #10
  %8 = or i8 %call.i11, 8
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %write_control.i = getelementptr inbounds %struct.parport_operations, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_control.i, align 4
  tail call void %12(ptr noundef %p, i8 noundef zeroext %8) #10
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_status, align 4
  %call1 = tail call zeroext i8 %16(ptr noundef %p) #10
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void %20(ptr noundef %p, i8 noundef zeroext 0) #10
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %read_status.i13 = getelementptr inbounds %struct.parport_operations, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %read_status.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_status.i13, align 4
  %call.i14 = tail call zeroext i8 %24(ptr noundef %p) #10
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void %28(ptr noundef %p, i8 noundef zeroext 1) #10
  %29 = shl i8 %call.i14, 1
  %30 = and i8 %29, 64
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %read_status.1.i = getelementptr inbounds %struct.parport_operations, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %read_status.1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_status.1.i, align 4
  %call.1.i = tail call zeroext i8 %34(ptr noundef %p) #10
  %35 = shl i8 %call.1.i, 2
  %36 = and i8 %35, -128
  %37 = or i8 %36, %30
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  tail call void %41(ptr noundef %p, i8 noundef zeroext 2) #10
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %read_status.2.i = getelementptr inbounds %struct.parport_operations, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %read_status.2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_status.2.i, align 4
  %call.2.i = tail call zeroext i8 %45(ptr noundef %p) #10
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  tail call void %49(ptr noundef %p, i8 noundef zeroext 3) #10
  %50 = lshr exact i8 %37, 2
  %51 = shl i8 %call.2.i, 1
  %52 = and i8 %51, 64
  %53 = or i8 %52, %50
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  %read_status.3.i = getelementptr inbounds %struct.parport_operations, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %read_status.3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_status.3.i, align 4
  %call.3.i = tail call zeroext i8 %57(ptr noundef %p) #10
  %58 = shl i8 %call.3.i, 2
  %59 = and i8 %58, -128
  %60 = or i8 %53, %59
  %61 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  tail call void %64(ptr noundef %p, i8 noundef zeroext 4) #10
  %65 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i, align 4
  %read_status.4.i = getelementptr inbounds %struct.parport_operations, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %read_status.4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read_status.4.i, align 4
  %call.4.i = tail call zeroext i8 %68(ptr noundef %p) #10
  %69 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  tail call void %72(ptr noundef %p, i8 noundef zeroext 5) #10
  %73 = lshr exact i8 %60, 2
  %74 = shl i8 %call.4.i, 1
  %75 = and i8 %74, 64
  %76 = or i8 %75, %73
  %77 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i, align 4
  %read_status.5.i = getelementptr inbounds %struct.parport_operations, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %read_status.5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read_status.5.i, align 4
  %call.5.i = tail call zeroext i8 %80(ptr noundef %p) #10
  %81 = shl i8 %call.5.i, 2
  %82 = and i8 %81, -128
  %83 = or i8 %76, %82
  %84 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  tail call void %87(ptr noundef %p, i8 noundef zeroext 6) #10
  %88 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i, align 4
  %read_status.6.i = getelementptr inbounds %struct.parport_operations, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %read_status.6.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read_status.6.i, align 4
  %call.6.i = tail call zeroext i8 %91(ptr noundef %p) #10
  %92 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  tail call void %95(ptr noundef %p, i8 noundef zeroext 7) #10
  %96 = lshr i8 %83, 2
  %97 = shl i8 %call.6.i, 1
  %98 = and i8 %97, 64
  %99 = or i8 %98, %96
  %100 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i, align 4
  %read_status.7.i = getelementptr inbounds %struct.parport_operations, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %read_status.7.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read_status.7.i, align 4
  %call.7.i = tail call zeroext i8 %103(ptr noundef %p) #10
  %104 = shl i8 %call.7.i, 2
  %105 = and i8 %104, -128
  %106 = or i8 %99, %105
  %107 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i, align 4
  %read_control.i16 = getelementptr inbounds %struct.parport_operations, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %read_control.i16 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read_control.i16, align 4
  %call.i17 = tail call zeroext i8 %110(ptr noundef %p) #10
  %111 = and i8 %call.i17, -9
  %112 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i, align 4
  %write_control.i18 = getelementptr inbounds %struct.parport_operations, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %write_control.i18 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write_control.i18, align 4
  tail call void %115(ptr noundef %p, i8 noundef zeroext %111) #10
  %conv = zext i8 %call1 to i16
  %shl = shl nuw i16 %conv, 8
  %conv3 = zext i8 %106 to i16
  %or = or i16 %shl, %conv3
  ret i16 %or
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
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_rawmidi_open(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_count = getelementptr inbounds %struct.mts64, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %pardev.i = getelementptr inbounds %struct.mts64, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pardev.i, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.parport, ptr %9, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %mts64_write_command.exit.i.for.body.i_crit_edge, %if.then
  %i.01.i = phi i32 [ 0, %if.then ], [ %inc.i, %mts64_write_command.exit.i.for.body.i_crit_edge ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i
  %i.01.i.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i.i = getelementptr inbounds %struct.parport_operations, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %read_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_status.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %13(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %cmp3.not.i.i.i = icmp slt i8 %call.i.i.i, 0
  %inc.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 65535
  %or.cond.i.i.i = select i1 %cmp3.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %mts64_write_command.exit.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

mts64_write_command.exit.i:                       ; preds = %for.body.i.i.i
  %14 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void %17(ptr noundef %9, i8 noundef zeroext -8) #10
  %18 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i.i = getelementptr inbounds %struct.parport_operations, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %write_control.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_control.i.i, align 4
  tail call void %21(ptr noundef %9, i8 noundef zeroext 6) #10
  %22 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i.i = getelementptr inbounds %struct.parport_operations, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %write_control3.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_control3.i.i, align 4
  tail call void %25(ptr noundef %9, i8 noundef zeroext 7) #10
  %26 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i.i = getelementptr inbounds %struct.parport_operations, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %write_control5.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_control5.i.i, align 4
  tail call void %29(ptr noundef %9, i8 noundef zeroext 6) #10
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %mts64_device_open.exit, label %mts64_write_command.exit.i.for.body.i_crit_edge

mts64_write_command.exit.i.for.body.i_crit_edge:  ; preds = %mts64_write_command.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mts64_device_open.exit:                           ; preds = %mts64_write_command.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  br label %if.end

if.end:                                           ; preds = %mts64_device_open.exit, %entry.if.end_crit_edge
  %30 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %open_count, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %open_count, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_rawmidi_close(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_count = getelementptr inbounds %struct.mts64, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.body2, label %if.else

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %pardev.i = getelementptr inbounds %struct.mts64, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pardev.i, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.parport, ptr %9, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %mts64_write_command.exit13.i.for.body.i_crit_edge, %do.body2
  %i.014.i = phi i32 [ 0, %do.body2 ], [ %inc.i, %mts64_write_command.exit13.i.for.body.i_crit_edge ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i
  %i.01.i.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i.i = getelementptr inbounds %struct.parport_operations, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %read_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_status.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %13(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %cmp3.not.i.i.i = icmp slt i8 %call.i.i.i, 0
  %inc.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 65535
  %or.cond.i.i.i = select i1 %cmp3.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %mts64_write_command.exit.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

mts64_write_command.exit.i:                       ; preds = %for.body.i.i.i
  %14 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void %17(ptr noundef %9, i8 noundef zeroext -1) #10
  %18 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i.i = getelementptr inbounds %struct.parport_operations, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %write_control.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_control.i.i, align 4
  tail call void %21(ptr noundef %9, i8 noundef zeroext 6) #10
  %22 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i.i = getelementptr inbounds %struct.parport_operations, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %write_control3.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_control3.i.i, align 4
  tail call void %25(ptr noundef %9, i8 noundef zeroext 7) #10
  %26 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i.i = getelementptr inbounds %struct.parport_operations, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %write_control5.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_control5.i.i, align 4
  tail call void %29(ptr noundef %9, i8 noundef zeroext 6) #10
  br label %for.body.i.i9.i

for.body.i.i9.i:                                  ; preds = %for.body.i.i9.i.for.body.i.i9.i_crit_edge, %mts64_write_command.exit.i
  %i.01.i.i2.i = phi i32 [ 0, %mts64_write_command.exit.i ], [ %inc.i.i6.i, %for.body.i.i9.i.for.body.i.i9.i_crit_edge ]
  %30 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i3.i = getelementptr inbounds %struct.parport_operations, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %read_status.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_status.i.i3.i, align 4
  %call.i.i4.i = tail call zeroext i8 %33(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i4.i)
  %cmp3.not.i.i5.i = icmp slt i8 %call.i.i4.i, 0
  %inc.i.i6.i = add nuw nsw i32 %i.01.i.i2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i6.i)
  %exitcond.not.i.i7.i = icmp eq i32 %inc.i.i6.i, 65535
  %or.cond.i.i8.i = select i1 %cmp3.not.i.i5.i, i1 true, i1 %exitcond.not.i.i7.i
  br i1 %or.cond.i.i8.i, label %mts64_write_command.exit13.i, label %for.body.i.i9.i.for.body.i.i9.i_crit_edge

for.body.i.i9.i.for.body.i.i9.i_crit_edge:        ; preds = %for.body.i.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i9.i

mts64_write_command.exit13.i:                     ; preds = %for.body.i.i9.i
  %34 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  tail call void %37(ptr noundef %9, i8 noundef zeroext -11) #10
  %38 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i10.i = getelementptr inbounds %struct.parport_operations, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %write_control.i10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_control.i10.i, align 4
  tail call void %41(ptr noundef %9, i8 noundef zeroext 6) #10
  %42 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i11.i = getelementptr inbounds %struct.parport_operations, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %write_control3.i11.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_control3.i11.i, align 4
  tail call void %45(ptr noundef %9, i8 noundef zeroext 7) #10
  %46 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i12.i = getelementptr inbounds %struct.parport_operations, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %write_control5.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_control5.i12.i, align 4
  tail call void %49(ptr noundef %9, i8 noundef zeroext 6) #10
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %mts64_device_close.exit, label %mts64_write_command.exit13.i.for.body.i_crit_edge

mts64_write_command.exit13.i.for.body.i_crit_edge: ; preds = %mts64_write_command.exit13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mts64_device_close.exit:                          ; preds = %mts64_write_command.exit13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call4) #10
  tail call void @msleep(i32 noundef 500) #10
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp10 = icmp slt i32 %dec, 0
  br i1 %cmp10, label %if.then12, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %open_count to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %open_count, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else.if.end14_crit_edge, %mts64_device_close.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mts64_rawmidi_output_trigger(ptr noundef %substream, i32 noundef %up) #1 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data, align 1, !annotation !138
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %call515 = call i32 @snd_rawmidi_transmit_peek(ptr noundef %substream, ptr noundef nonnull %data, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call515)
  %cmp616 = icmp eq i32 %call515, 1
  br i1 %cmp616, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %pardev.i = getelementptr inbounds %struct.mts64, ptr %3, i32 0, i32 3
  %current_midi_output_port.i = getelementptr inbounds %struct.mts64, ptr %3, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %mts64_write_midi.exit.while.body_crit_edge, %while.body.lr.ph
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number, align 4
  %add = add i32 %8, 1
  %9 = ptrtoint ptr %pardev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pardev.i, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port.i, align 4
  %13 = ptrtoint ptr %current_midi_output_port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %current_midi_output_port.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add)
  %cmp.not.i = icmp eq i32 %14, %add
  br i1 %cmp.not.i, label %while.body.if.end.i_crit_edge, label %if.then.i

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %while.body
  %ops.i.i.i = getelementptr inbounds %struct.parport, ptr %12, i32 0, i32 24
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i
  %i.01.i.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i.i = getelementptr inbounds %struct.parport_operations, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %read_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_status.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %18(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %cmp3.not.i.i.i = icmp slt i8 %call.i.i.i, 0
  %inc.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 65535
  %or.cond.i.i.i = select i1 %cmp3.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %mts64_write_command.exit.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

mts64_write_command.exit.i:                       ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %add to i8
  %19 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  call void %22(ptr noundef %12, i8 noundef zeroext %conv.i) #10
  %23 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i.i = getelementptr inbounds %struct.parport_operations, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %write_control.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_control.i.i, align 4
  call void %26(ptr noundef %12, i8 noundef zeroext 6) #10
  %27 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i.i = getelementptr inbounds %struct.parport_operations, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %write_control3.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_control3.i.i, align 4
  call void %30(ptr noundef %12, i8 noundef zeroext 7) #10
  %31 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i.i = getelementptr inbounds %struct.parport_operations, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %write_control5.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_control5.i.i, align 4
  call void %34(ptr noundef %12, i8 noundef zeroext 6) #10
  br label %if.end.i

if.end.i:                                         ; preds = %mts64_write_command.exit.i, %while.body.if.end.i_crit_edge
  %ops.i.i4.i = getelementptr inbounds %struct.parport, ptr %12, i32 0, i32 24
  br label %for.body.i.i12.i

for.body.i.i12.i:                                 ; preds = %for.body.i.i12.i.for.body.i.i12.i_crit_edge, %if.end.i
  %i.01.i.i5.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i9.i, %for.body.i.i12.i.for.body.i.i12.i_crit_edge ]
  %35 = ptrtoint ptr %ops.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i4.i, align 4
  %read_status.i.i6.i = getelementptr inbounds %struct.parport_operations, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %read_status.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_status.i.i6.i, align 4
  %call.i.i7.i = call zeroext i8 %38(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i7.i)
  %cmp3.not.i.i8.i = icmp slt i8 %call.i.i7.i, 0
  %inc.i.i9.i = add nuw nsw i32 %i.01.i.i5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i9.i)
  %exitcond.not.i.i10.i = icmp eq i32 %inc.i.i9.i, 65535
  %or.cond.i.i11.i = select i1 %cmp3.not.i.i8.i, i1 true, i1 %exitcond.not.i.i10.i
  br i1 %or.cond.i.i11.i, label %mts64_write_midi.exit, label %for.body.i.i12.i.for.body.i.i12.i_crit_edge

for.body.i.i12.i.for.body.i.i12.i_crit_edge:      ; preds = %for.body.i.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i12.i

mts64_write_midi.exit:                            ; preds = %for.body.i.i12.i
  %39 = ptrtoint ptr %ops.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i4.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  call void %42(ptr noundef %12, i8 noundef zeroext %6) #10
  %43 = ptrtoint ptr %ops.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i4.i, align 4
  %write_control.i13.i = getelementptr inbounds %struct.parport_operations, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %write_control.i13.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_control.i13.i, align 4
  call void %46(ptr noundef %12, i8 noundef zeroext 2) #10
  %47 = ptrtoint ptr %ops.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i4.i, align 4
  %write_control3.i14.i = getelementptr inbounds %struct.parport_operations, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %write_control3.i14.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_control3.i14.i, align 4
  call void %50(ptr noundef %12, i8 noundef zeroext 3) #10
  %51 = ptrtoint ptr %ops.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i.i4.i, align 4
  %write_control5.i15.i = getelementptr inbounds %struct.parport_operations, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %write_control5.i15.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_control5.i15.i, align 4
  call void %54(ptr noundef %12, i8 noundef zeroext 2) #10
  %call8 = call i32 @snd_rawmidi_transmit_ack(ptr noundef %substream, i32 noundef 1) #10
  %call5 = call i32 @snd_rawmidi_transmit_peek(ptr noundef %substream, ptr noundef nonnull %data, i32 noundef 1) #10
  %cmp6 = icmp eq i32 %call5, 1
  br i1 %cmp6, label %mts64_write_midi.exit.while.body_crit_edge, label %mts64_write_midi.exit.while.end_crit_edge

mts64_write_midi.exit.while.end_crit_edge:        ; preds = %mts64_write_midi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

mts64_write_midi.exit.while.body_crit_edge:       ; preds = %mts64_write_midi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %mts64_write_midi.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_ack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mts64_rawmidi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp ne i32 %up, 0
  %number8 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number8, align 4
  %arrayidx9 = getelementptr %struct.mts64, ptr %3, i32 0, i32 7, i32 %5
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %8 = and i8 %7, -2
  %masksel = zext i1 %tobool.not to i8
  %.sink = or i8 %8, %masksel
  store i8 %.sink, ptr %arrayidx9, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_ctl_smpte_switch_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uctl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %smpte_switch = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %smpte_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smpte_switch, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctl, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_ctl_smpte_switch_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %uctl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctl, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %lnot.ext = zext i1 %tobool to i32
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %smpte_switch = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %smpte_switch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smpte_switch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %lnot.ext)
  %cmp = icmp eq i32 %5, %lnot.ext
  br i1 %cmp, label %entry.__out_crit_edge, label %if.end

entry.__out_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %smpte_switch to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lnot.ext, ptr %smpte_switch, align 4
  %pardev = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pardev, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %time = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %time to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %time, align 4
  %arrayidx8 = getelementptr %struct.mts64, ptr %1, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.mts64, ptr %1, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10, align 2
  %arrayidx12 = getelementptr %struct.mts64, ptr %1, i32 0, i32 10, i32 3
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12, align 1
  %fps = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %fps to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fps, align 4
  %ops.i.i.i = getelementptr inbounds %struct.parport, ptr %10, i32 0, i32 24
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then5
  %i.01.i.i.i = phi i32 [ 0, %if.then5 ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %21 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i.i = getelementptr inbounds %struct.parport_operations, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %read_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_status.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %24(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i)
  %cmp3.not.i.i.i = icmp slt i8 %call.i.i.i, 0
  %inc.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 65535
  %or.cond.i.i.i = select i1 %cmp3.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond.i.i.i, label %mts64_write_command.exit.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

mts64_write_command.exit.i:                       ; preds = %for.body.i.i.i
  %25 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void %28(ptr noundef %10, i8 noundef zeroext -24) #10
  %29 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i.i = getelementptr inbounds %struct.parport_operations, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %write_control.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_control.i.i, align 4
  tail call void %32(ptr noundef %10, i8 noundef zeroext 6) #10
  %33 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i.i = getelementptr inbounds %struct.parport_operations, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write_control3.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_control3.i.i, align 4
  tail call void %36(ptr noundef %10, i8 noundef zeroext 7) #10
  %37 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i.i = getelementptr inbounds %struct.parport_operations, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %write_control5.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_control5.i.i, align 4
  tail call void %40(ptr noundef %10, i8 noundef zeroext 6) #10
  br label %for.body.i.i15.i

for.body.i.i15.i:                                 ; preds = %for.body.i.i15.i.for.body.i.i15.i_crit_edge, %mts64_write_command.exit.i
  %i.01.i.i8.i = phi i32 [ 0, %mts64_write_command.exit.i ], [ %inc.i.i12.i, %for.body.i.i15.i.for.body.i.i15.i_crit_edge ]
  %41 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i9.i = getelementptr inbounds %struct.parport_operations, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %read_status.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_status.i.i9.i, align 4
  %call.i.i10.i = tail call zeroext i8 %44(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i10.i)
  %cmp3.not.i.i11.i = icmp slt i8 %call.i.i10.i, 0
  %inc.i.i12.i = add nuw nsw i32 %i.01.i.i8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i12.i)
  %exitcond.not.i.i13.i = icmp eq i32 %inc.i.i12.i, 65535
  %or.cond.i.i14.i = select i1 %cmp3.not.i.i11.i, i1 true, i1 %exitcond.not.i.i13.i
  br i1 %or.cond.i.i14.i, label %mts64_write_command.exit19.i, label %for.body.i.i15.i.for.body.i.i15.i_crit_edge

for.body.i.i15.i.for.body.i.i15.i_crit_edge:      ; preds = %for.body.i.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i15.i

mts64_write_command.exit19.i:                     ; preds = %for.body.i.i15.i
  %45 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call void %48(ptr noundef %10, i8 noundef zeroext %18) #10
  %49 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i16.i = getelementptr inbounds %struct.parport_operations, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %write_control.i16.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_control.i16.i, align 4
  tail call void %52(ptr noundef %10, i8 noundef zeroext 6) #10
  %53 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i17.i = getelementptr inbounds %struct.parport_operations, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %write_control3.i17.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_control3.i17.i, align 4
  tail call void %56(ptr noundef %10, i8 noundef zeroext 7) #10
  %57 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i18.i = getelementptr inbounds %struct.parport_operations, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %write_control5.i18.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_control5.i18.i, align 4
  tail call void %60(ptr noundef %10, i8 noundef zeroext 6) #10
  br label %for.body.i.i28.i

for.body.i.i28.i:                                 ; preds = %for.body.i.i28.i.for.body.i.i28.i_crit_edge, %mts64_write_command.exit19.i
  %i.01.i.i21.i = phi i32 [ 0, %mts64_write_command.exit19.i ], [ %inc.i.i25.i, %for.body.i.i28.i.for.body.i.i28.i_crit_edge ]
  %61 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i22.i = getelementptr inbounds %struct.parport_operations, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %read_status.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read_status.i.i22.i, align 4
  %call.i.i23.i = tail call zeroext i8 %64(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i23.i)
  %cmp3.not.i.i24.i = icmp slt i8 %call.i.i23.i, 0
  %inc.i.i25.i = add nuw nsw i32 %i.01.i.i21.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i25.i)
  %exitcond.not.i.i26.i = icmp eq i32 %inc.i.i25.i, 65535
  %or.cond.i.i27.i = select i1 %cmp3.not.i.i24.i, i1 true, i1 %exitcond.not.i.i26.i
  br i1 %or.cond.i.i27.i, label %mts64_write_command.exit32.i, label %for.body.i.i28.i.for.body.i.i28.i_crit_edge

for.body.i.i28.i.for.body.i.i28.i_crit_edge:      ; preds = %for.body.i.i28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i28.i

mts64_write_command.exit32.i:                     ; preds = %for.body.i.i28.i
  %65 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  tail call void %68(ptr noundef %10, i8 noundef zeroext %16) #10
  %69 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i29.i = getelementptr inbounds %struct.parport_operations, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %write_control.i29.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_control.i29.i, align 4
  tail call void %72(ptr noundef %10, i8 noundef zeroext 6) #10
  %73 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i30.i = getelementptr inbounds %struct.parport_operations, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %write_control3.i30.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_control3.i30.i, align 4
  tail call void %76(ptr noundef %10, i8 noundef zeroext 7) #10
  %77 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i31.i = getelementptr inbounds %struct.parport_operations, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %write_control5.i31.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write_control5.i31.i, align 4
  tail call void %80(ptr noundef %10, i8 noundef zeroext 6) #10
  br label %for.body.i.i41.i

for.body.i.i41.i:                                 ; preds = %for.body.i.i41.i.for.body.i.i41.i_crit_edge, %mts64_write_command.exit32.i
  %i.01.i.i34.i = phi i32 [ 0, %mts64_write_command.exit32.i ], [ %inc.i.i38.i, %for.body.i.i41.i.for.body.i.i41.i_crit_edge ]
  %81 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i35.i = getelementptr inbounds %struct.parport_operations, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %read_status.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read_status.i.i35.i, align 4
  %call.i.i36.i = tail call zeroext i8 %84(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i36.i)
  %cmp3.not.i.i37.i = icmp slt i8 %call.i.i36.i, 0
  %inc.i.i38.i = add nuw nsw i32 %i.01.i.i34.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i38.i)
  %exitcond.not.i.i39.i = icmp eq i32 %inc.i.i38.i, 65535
  %or.cond.i.i40.i = select i1 %cmp3.not.i.i37.i, i1 true, i1 %exitcond.not.i.i39.i
  br i1 %or.cond.i.i40.i, label %mts64_write_command.exit45.i, label %for.body.i.i41.i.for.body.i.i41.i_crit_edge

for.body.i.i41.i.for.body.i.i41.i_crit_edge:      ; preds = %for.body.i.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i41.i

mts64_write_command.exit45.i:                     ; preds = %for.body.i.i41.i
  %85 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  tail call void %88(ptr noundef %10, i8 noundef zeroext %14) #10
  %89 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i42.i = getelementptr inbounds %struct.parport_operations, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %write_control.i42.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_control.i42.i, align 4
  tail call void %92(ptr noundef %10, i8 noundef zeroext 6) #10
  %93 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i43.i = getelementptr inbounds %struct.parport_operations, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %write_control3.i43.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write_control3.i43.i, align 4
  tail call void %96(ptr noundef %10, i8 noundef zeroext 7) #10
  %97 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i44.i = getelementptr inbounds %struct.parport_operations, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %write_control5.i44.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write_control5.i44.i, align 4
  tail call void %100(ptr noundef %10, i8 noundef zeroext 6) #10
  br label %for.body.i.i54.i

for.body.i.i54.i:                                 ; preds = %for.body.i.i54.i.for.body.i.i54.i_crit_edge, %mts64_write_command.exit45.i
  %i.01.i.i47.i = phi i32 [ 0, %mts64_write_command.exit45.i ], [ %inc.i.i51.i, %for.body.i.i54.i.for.body.i.i54.i_crit_edge ]
  %101 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i48.i = getelementptr inbounds %struct.parport_operations, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %read_status.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read_status.i.i48.i, align 4
  %call.i.i49.i = tail call zeroext i8 %104(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i49.i)
  %cmp3.not.i.i50.i = icmp slt i8 %call.i.i49.i, 0
  %inc.i.i51.i = add nuw nsw i32 %i.01.i.i47.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i51.i)
  %exitcond.not.i.i52.i = icmp eq i32 %inc.i.i51.i, 65535
  %or.cond.i.i53.i = select i1 %cmp3.not.i.i50.i, i1 true, i1 %exitcond.not.i.i52.i
  br i1 %or.cond.i.i53.i, label %mts64_write_command.exit58.i, label %for.body.i.i54.i.for.body.i.i54.i_crit_edge

for.body.i.i54.i.for.body.i.i54.i_crit_edge:      ; preds = %for.body.i.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i54.i

mts64_write_command.exit58.i:                     ; preds = %for.body.i.i54.i
  %105 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  tail call void %108(ptr noundef %10, i8 noundef zeroext %12) #10
  %109 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i55.i = getelementptr inbounds %struct.parport_operations, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %write_control.i55.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write_control.i55.i, align 4
  tail call void %112(ptr noundef %10, i8 noundef zeroext 6) #10
  %113 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i56.i = getelementptr inbounds %struct.parport_operations, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %write_control3.i56.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write_control3.i56.i, align 4
  tail call void %116(ptr noundef %10, i8 noundef zeroext 7) #10
  %117 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i57.i = getelementptr inbounds %struct.parport_operations, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %write_control5.i57.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write_control5.i57.i, align 4
  tail call void %120(ptr noundef %10, i8 noundef zeroext 6) #10
  br label %for.body.i.i67.i

for.body.i.i67.i:                                 ; preds = %for.body.i.i67.i.for.body.i.i67.i_crit_edge, %mts64_write_command.exit58.i
  %i.01.i.i60.i = phi i32 [ 0, %mts64_write_command.exit58.i ], [ %inc.i.i64.i, %for.body.i.i67.i.for.body.i.i67.i_crit_edge ]
  %121 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i61.i = getelementptr inbounds %struct.parport_operations, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %read_status.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read_status.i.i61.i, align 4
  %call.i.i62.i = tail call zeroext i8 %124(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i62.i)
  %cmp3.not.i.i63.i = icmp slt i8 %call.i.i62.i, 0
  %inc.i.i64.i = add nuw nsw i32 %i.01.i.i60.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i64.i)
  %exitcond.not.i.i65.i = icmp eq i32 %inc.i.i64.i, 65535
  %or.cond.i.i66.i = select i1 %cmp3.not.i.i63.i, i1 true, i1 %exitcond.not.i.i65.i
  br i1 %or.cond.i.i66.i, label %mts64_write_command.exit71.i, label %for.body.i.i67.i.for.body.i.i67.i_crit_edge

for.body.i.i67.i.for.body.i.i67.i_crit_edge:      ; preds = %for.body.i.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i67.i

mts64_write_command.exit71.i:                     ; preds = %for.body.i.i67.i
  %125 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i.i.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  tail call void %128(ptr noundef %10, i8 noundef zeroext -18) #10
  %129 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ops.i.i.i, align 4
  %write_control.i68.i = getelementptr inbounds %struct.parport_operations, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %write_control.i68.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_control.i68.i, align 4
  tail call void %132(ptr noundef %10, i8 noundef zeroext 6) #10
  %133 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i.i.i, align 4
  %write_control3.i69.i = getelementptr inbounds %struct.parport_operations, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %write_control3.i69.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write_control3.i69.i, align 4
  tail call void %136(ptr noundef %10, i8 noundef zeroext 7) #10
  %137 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i.i.i, align 4
  %write_control5.i70.i = getelementptr inbounds %struct.parport_operations, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %write_control5.i70.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write_control5.i70.i, align 4
  tail call void %140(ptr noundef %10, i8 noundef zeroext 6) #10
  %idxprom.i = zext i8 %20 to i32
  %arrayidx.i = getelementptr [5 x i8], ptr @mts64_smpte_start.fps, i32 0, i32 %idxprom.i
  %141 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i, align 1
  br label %for.body.i.i80.i

for.body.i.i80.i:                                 ; preds = %for.body.i.i80.i.for.body.i.i80.i_crit_edge, %mts64_write_command.exit71.i
  %i.01.i.i73.i = phi i32 [ 0, %mts64_write_command.exit71.i ], [ %inc.i.i77.i, %for.body.i.i80.i.for.body.i.i80.i_crit_edge ]
  %143 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ops.i.i.i, align 4
  %read_status.i.i74.i = getelementptr inbounds %struct.parport_operations, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %read_status.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read_status.i.i74.i, align 4
  %call.i.i75.i = tail call zeroext i8 %146(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i75.i)
  %cmp3.not.i.i76.i = icmp slt i8 %call.i.i75.i, 0
  %inc.i.i77.i = add nuw nsw i32 %i.01.i.i73.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i77.i)
  %exitcond.not.i.i78.i = icmp eq i32 %inc.i.i77.i, 65535
  %or.cond.i.i79.i = select i1 %cmp3.not.i.i76.i, i1 true, i1 %exitcond.not.i.i78.i
  br i1 %or.cond.i.i79.i, label %for.body.i.i80.i.__out.sink.split_crit_edge, label %for.body.i.i80.i.for.body.i.i80.i_crit_edge

for.body.i.i80.i.for.body.i.i80.i_crit_edge:      ; preds = %for.body.i.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i80.i

for.body.i.i80.i.__out.sink.split_crit_edge:      ; preds = %for.body.i.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out.sink.split

if.else:                                          ; preds = %if.end
  %ops.i.i.i29 = getelementptr inbounds %struct.parport, ptr %10, i32 0, i32 24
  br label %for.body.i.i.i37

for.body.i.i.i37:                                 ; preds = %for.body.i.i.i37.for.body.i.i.i37_crit_edge, %if.else
  %i.01.i.i.i30 = phi i32 [ 0, %if.else ], [ %inc.i.i.i34, %for.body.i.i.i37.for.body.i.i.i37_crit_edge ]
  %147 = ptrtoint ptr %ops.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ops.i.i.i29, align 4
  %read_status.i.i.i31 = getelementptr inbounds %struct.parport_operations, ptr %148, i32 0, i32 5
  %149 = ptrtoint ptr %read_status.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read_status.i.i.i31, align 4
  %call.i.i.i32 = tail call zeroext i8 %150(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i.i32)
  %cmp3.not.i.i.i33 = icmp slt i8 %call.i.i.i32, 0
  %inc.i.i.i34 = add nuw nsw i32 %i.01.i.i.i30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i.i34)
  %exitcond.not.i.i.i35 = icmp eq i32 %inc.i.i.i34, 65535
  %or.cond.i.i.i36 = select i1 %cmp3.not.i.i.i33, i1 true, i1 %exitcond.not.i.i.i35
  br i1 %or.cond.i.i.i36, label %for.body.i.i.i37.__out.sink.split_crit_edge, label %for.body.i.i.i37.for.body.i.i.i37_crit_edge

for.body.i.i.i37.for.body.i.i.i37_crit_edge:      ; preds = %for.body.i.i.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i37

for.body.i.i.i37.__out.sink.split_crit_edge:      ; preds = %for.body.i.i.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out.sink.split

__out.sink.split:                                 ; preds = %for.body.i.i.i37.__out.sink.split_crit_edge, %for.body.i.i80.i.__out.sink.split_crit_edge
  %ops.i.i.i.sink46 = phi ptr [ %ops.i.i.i, %for.body.i.i80.i.__out.sink.split_crit_edge ], [ %ops.i.i.i29, %for.body.i.i.i37.__out.sink.split_crit_edge ]
  %.sink = phi i8 [ %142, %for.body.i.i80.i.__out.sink.split_crit_edge ], [ -17, %for.body.i.i.i37.__out.sink.split_crit_edge ]
  %151 = ptrtoint ptr %ops.i.i.i.sink46 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ops.i.i.i.sink46, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  tail call void %154(ptr noundef %10, i8 noundef zeroext %.sink) #10
  %155 = ptrtoint ptr %ops.i.i.i.sink46 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ops.i.i.i.sink46, align 4
  %write_control.i81.i = getelementptr inbounds %struct.parport_operations, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %write_control.i81.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write_control.i81.i, align 4
  tail call void %158(ptr noundef %10, i8 noundef zeroext 6) #10
  %159 = ptrtoint ptr %ops.i.i.i.sink46 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops.i.i.i.sink46, align 4
  %write_control3.i82.i = getelementptr inbounds %struct.parport_operations, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %write_control3.i82.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write_control3.i82.i, align 4
  tail call void %162(ptr noundef %10, i8 noundef zeroext 7) #10
  %163 = ptrtoint ptr %ops.i.i.i.sink46 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ops.i.i.i.sink46, align 4
  %write_control5.i83.i = getelementptr inbounds %struct.parport_operations, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %write_control5.i83.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write_control5.i83.i, align 4
  tail call void %166(ptr noundef %10, i8 noundef zeroext 6) #10
  br label %__out

__out:                                            ; preds = %__out.sink.split, %entry.__out_crit_edge
  %changed.0 = phi i32 [ 0, %entry.__out_crit_edge ], [ 1, %__out.sink.split ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 %changed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_mts64_ctl_smpte_time_h_info(ptr nocapture noundef readnone %kctl, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 23, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_ctl_smpte_time_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uctl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %arrayidx = getelementptr %struct.mts64, ptr %1, i32 0, i32 10, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctl, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_ctl_smpte_time_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %uctl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctl, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %rem = srem i32 %5, 60
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %arrayidx2 = getelementptr %struct.mts64, ptr %1, i32 0, i32 10, i32 %3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %conv)
  %cmp.not = icmp eq i32 %rem, %conv
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv4 = trunc i32 %rem to i8
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %arrayidx2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 %changed.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_mts64_ctl_smpte_time_info(ptr nocapture noundef readnone %kctl, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 59, ptr %max, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_mts64_ctl_smpte_time_f_info(ptr nocapture noundef readnone %kctl, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 99, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_ctl_smpte_fps_info(ptr nocapture noundef readnone %kctl, ptr noundef %uinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @snd_mts64_ctl_smpte_fps_info.texts) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_ctl_smpte_fps_get(ptr nocapture noundef readonly %kctl, ptr nocapture noundef writeonly %uctl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %fps = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %fps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fps, align 4
  %conv = zext i8 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctl, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mts64_ctl_smpte_fps_put(ptr nocapture noundef readonly %kctl, ptr nocapture noundef readonly %uctl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uctl, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %fps = getelementptr inbounds %struct.mts64, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %fps to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fps, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp3.not = icmp eq i32 %7, %conv
  br i1 %cmp3.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv8 = trunc i32 %7 to i8
  %8 = ptrtoint ptr %fps to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv8, ptr %fps, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %changed.0 = phi i32 [ 1, %if.then5 ], [ 0, %if.end.if.end10_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %changed.0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_mts64_detach(ptr nocapture noundef %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mts64_attach(ptr noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @device_count, align 4
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %p, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_device_add(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_device_put(ptr noundef nonnull %call) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_device_unregister(ptr noundef nonnull %call) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @snd_mts64_dev_probe(ptr nocapture noundef readonly %pardev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pardev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pardev, align 8
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.3) #14
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
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__param_index, !1, !"__param_index", i1 false, i1 false}
!1 = !{!"../sound/drivers/mts64.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_indextype233, !1, !"__UNIQUE_ID_indextype233", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_index234, !4, !"__UNIQUE_ID_index234", i1 false, i1 false}
!4 = !{!"../sound/drivers/mts64.c", i32 31, i32 1}
!5 = !{ptr @__param_id, !6, !"__param_id", i1 false, i1 false}
!6 = !{!"../sound/drivers/mts64.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_idtype235, !6, !"__UNIQUE_ID_idtype235", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_id236, !9, !"__UNIQUE_ID_id236", i1 false, i1 false}
!9 = !{!"../sound/drivers/mts64.c", i32 33, i32 1}
!10 = !{ptr @__param_enable, !11, !"__param_enable", i1 false, i1 false}
!11 = !{!"../sound/drivers/mts64.c", i32 34, i32 1}
!12 = !{ptr @__UNIQUE_ID_enabletype237, !11, !"__UNIQUE_ID_enabletype237", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable238, !14, !"__UNIQUE_ID_enable238", i1 false, i1 false}
!14 = !{!"../sound/drivers/mts64.c", i32 35, i32 1}
!15 = !{ptr @__UNIQUE_ID_author239, !16, !"__UNIQUE_ID_author239", i1 false, i1 false}
!16 = !{!"../sound/drivers/mts64.c", i32 37, i32 1}
!17 = !{ptr @__UNIQUE_ID_description240, !18, !"__UNIQUE_ID_description240", i1 false, i1 false}
!18 = !{!"../sound/drivers/mts64.c", i32 38, i32 1}
!19 = !{ptr @__UNIQUE_ID_file241, !20, !"__UNIQUE_ID_file241", i1 false, i1 false}
!20 = !{!"../sound/drivers/mts64.c", i32 39, i32 1}
!21 = !{ptr @__UNIQUE_ID_license242, !20, !"__UNIQUE_ID_license242", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_snd_mts64__243_1060_snd_mts64_module_init6, !23, !"__initcall__kmod_snd_mts64__243_1060_snd_mts64_module_init6", i1 false, i1 false}
!23 = !{!"../sound/drivers/mts64.c", i32 1060, i32 1}
!24 = !{ptr @__exitcall_snd_mts64_module_exit, !25, !"__exitcall_snd_mts64_module_exit", i1 false, i1 false}
!25 = !{!"../sound/drivers/mts64.c", i32 1061, i32 1}
!26 = !{ptr @__param_str_index, !1, !"__param_str_index", i1 false, i1 false}
!27 = !{ptr @__param_arr_index, !1, !"__param_arr_index", i1 false, i1 false}
!28 = !{ptr @index, !29, !"index", i1 false, i1 false}
!29 = !{!"../sound/drivers/mts64.c", i32 23, i32 12}
!30 = !{ptr @__param_str_id, !6, !"__param_str_id", i1 false, i1 false}
!31 = !{ptr @__param_arr_id, !6, !"__param_arr_id", i1 false, i1 false}
!32 = !{ptr @id, !33, !"id", i1 false, i1 false}
!33 = !{!"../sound/drivers/mts64.c", i32 24, i32 14}
!34 = !{ptr @__param_str_enable, !11, !"__param_str_enable", i1 false, i1 false}
!35 = !{ptr @__param_arr_enable, !11, !"__param_arr_enable", i1 false, i1 false}
!36 = !{ptr @enable, !37, !"enable", i1 false, i1 false}
!37 = !{!"../sound/drivers/mts64.c", i32 25, i32 13}
!38 = !{ptr @platform_devices, !39, !"platform_devices", i1 false, i1 false}
!39 = !{!"../sound/drivers/mts64.c", i32 27, i32 32}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/drivers/mts64.c", i32 1013, i32 11}
!42 = !{ptr @snd_mts64_driver, !43, !"snd_mts64_driver", i1 false, i1 false}
!43 = !{!"../sound/drivers/mts64.c", i32 1009, i32 31}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/drivers/mts64.c", i32 927, i32 3}
!46 = !{ptr @.str.2, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/drivers/mts64.c", i32 930, i32 23}
!49 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/drivers/mts64.c", i32 931, i32 26}
!51 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/drivers/mts64.c", i32 932, i32 27}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/drivers/mts64.c", i32 941, i32 3}
!55 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/drivers/mts64.c", i32 948, i32 3}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/drivers/mts64.c", i32 955, i32 3}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/drivers/mts64.c", i32 969, i32 3}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/drivers/mts64.c", i32 983, i32 3}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/drivers/mts64.c", i32 987, i32 2}
!65 = !{ptr @mts64_map_midi_input.map, !66, !"map", i1 false, i1 false}
!66 = !{!"../sound/drivers/mts64.c", i32 263, i32 18}
!67 = !{ptr @snd_mts64_create.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../sound/drivers/mts64.c", i32 82, i32 2}
!69 = !{ptr @.str.12, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/drivers/mts64.c", i32 758, i32 30}
!72 = !{ptr @.str.14, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/drivers/mts64.c", i32 785, i32 4}
!74 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/drivers/mts64.c", i32 794, i32 28}
!76 = !{ptr @snd_mts64_rawmidi_output_ops, !77, !"snd_mts64_rawmidi_output_ops", i1 false, i1 false}
!77 = !{!"../sound/drivers/mts64.c", i32 737, i32 37}
!78 = !{ptr @snd_mts64_rawmidi_input_ops, !79, !"snd_mts64_rawmidi_input_ops", i1 false, i1 false}
!79 = !{!"../sound/drivers/mts64.c", i32 743, i32 37}
!80 = distinct !{null, !81, !"control", i1 false, i1 false}
!81 = !{!"../sound/drivers/mts64.c", i32 643, i32 40}
!82 = !{ptr @.str.16, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/drivers/mts64.c", i32 655, i32 4}
!84 = !{ptr @.str.17, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/drivers/mts64.c", i32 471, i32 11}
!86 = !{ptr @mts64_ctl_smpte_switch, !87, !"mts64_ctl_smpte_switch", i1 false, i1 false}
!87 = !{!"../sound/drivers/mts64.c", i32 469, i32 38}
!88 = !{ptr @mts64_smpte_start.fps, !89, !"fps", i1 false, i1 false}
!89 = !{!"../sound/drivers/mts64.c", i32 355, i32 18}
!90 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/drivers/mts64.c", i32 544, i32 11}
!92 = !{ptr @mts64_ctl_smpte_time_hours, !93, !"mts64_ctl_smpte_time_hours", i1 false, i1 false}
!93 = !{!"../sound/drivers/mts64.c", i32 542, i32 38}
!94 = !{ptr @.str.19, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/drivers/mts64.c", i32 555, i32 11}
!96 = !{ptr @mts64_ctl_smpte_time_minutes, !97, !"mts64_ctl_smpte_time_minutes", i1 false, i1 false}
!97 = !{!"../sound/drivers/mts64.c", i32 553, i32 38}
!98 = !{ptr @.str.20, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/drivers/mts64.c", i32 566, i32 11}
!100 = !{ptr @mts64_ctl_smpte_time_seconds, !101, !"mts64_ctl_smpte_time_seconds", i1 false, i1 false}
!101 = !{!"../sound/drivers/mts64.c", i32 564, i32 38}
!102 = !{ptr @.str.21, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/drivers/mts64.c", i32 577, i32 11}
!104 = !{ptr @mts64_ctl_smpte_time_frames, !105, !"mts64_ctl_smpte_time_frames", i1 false, i1 false}
!105 = !{!"../sound/drivers/mts64.c", i32 575, i32 38}
!106 = !{ptr @.str.22, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/drivers/mts64.c", i32 629, i32 11}
!108 = !{ptr @mts64_ctl_smpte_fps, !109, !"mts64_ctl_smpte_fps", i1 false, i1 false}
!109 = !{!"../sound/drivers/mts64.c", i32 627, i32 38}
!110 = !{ptr @.str.23, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/drivers/mts64.c", i32 591, i32 3}
!112 = !{ptr @.str.24, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/drivers/mts64.c", i32 591, i32 9}
!114 = !{ptr @.str.25, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/drivers/mts64.c", i32 591, i32 15}
!116 = !{ptr @.str.26, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/drivers/mts64.c", i32 591, i32 24}
!118 = !{ptr @.str.27, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/drivers/mts64.c", i32 591, i32 31}
!120 = !{ptr @snd_mts64_ctl_smpte_fps_info.texts, !121, !"texts", i1 false, i1 false}
!121 = !{!"../sound/drivers/mts64.c", i32 590, i32 28}
!122 = !{ptr @.str.28, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/drivers/mts64.c", i32 878, i32 11}
!124 = !{ptr @mts64_parport_driver, !125, !"mts64_parport_driver", i1 false, i1 false}
!125 = !{!"../sound/drivers/mts64.c", i32 877, i32 30}
!126 = !{ptr @device_count, !127, !"device_count", i1 false, i1 false}
!127 = !{!"../sound/drivers/mts64.c", i32 28, i32 12}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i8 0, i8 2}
!138 = !{!"auto-init"}
