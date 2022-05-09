; ModuleID = '/llk/IR_all_yes/sound/pci/es1968.c_pt.bc'
source_filename = "../sound/pci/es1968.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_tea575x_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_es1968_tea575x_gpio = type { i8, i8, i8, i8, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.85 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.es1968 = type { i32, i32, i32, i32, i8, i32, i32, i32, %struct.snd_dma_buffer, i32, i32, i32, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.spinlock, i32, [32 x i16], i32, i32, %struct.mutex, [64 x i8], %struct.list_head, %struct.spinlock, [64 x [16 x i16]], ptr, ptr, [64 x i8], %struct.work_struct, %struct.v4l2_device, %struct.snd_tea575x, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.snd_tea575x = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.104 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.101], %struct.media_entity_enum, i32 }
%struct.anon.101 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.esm_memory = type { %struct.snd_dma_buffer, i32, %struct.list_head }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.esschan = type { i32, [4 x i8], [4 x i8], ptr, ptr, i32, i32, i32, i32, i32, [4 x i16], i8, i32, i32, ptr, %struct.list_head, [4 x i16] }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.98, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.98 = type { i32, [28 x i8] }

@__UNIQUE_ID_description302 = internal constant [35 x i8] c"snd_es1968.description=ESS Maestro\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [37 x i8] c"snd_es1968.file=sound/pci/snd-es1968\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [23 x i8] c"snd_es1968.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_es1968.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype305 = internal constant [39 x i8] c"snd_es1968.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index306 = internal constant [64 x i8] c"snd_es1968.parm=index:Index value for ESS Maestro1/2 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_es1968.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype307 = internal constant [38 x i8] c"snd_es1968.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id308 = internal constant [59 x i8] c"snd_es1968.parm=id:ID string for ESS Maestro1/2 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_es1968.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype309 = internal constant [41 x i8] c"snd_es1968.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable310 = internal constant [56 x i8] c"snd_es1968.parm=enable:Enable ESS Maestro1/2 soundcard.\00", section ".modinfo", align 1
@__param_str_total_bufsize = internal constant [25 x i8] c"snd_es1968.total_bufsize\00", align 1
@__param_arr_total_bufsize = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @total_bufsize }, align 4
@__param_total_bufsize = internal constant %struct.kernel_param { ptr @__param_str_total_bufsize, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_total_bufsize } }, section "__param", align 4
@__UNIQUE_ID_total_bufsizetype311 = internal constant [47 x i8] c"snd_es1968.parmtype=total_bufsize:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_total_bufsize312 = internal constant [55 x i8] c"snd_es1968.parm=total_bufsize:Total buffer size in kB.\00", section ".modinfo", align 1
@__param_str_pcm_substreams_p = internal constant [28 x i8] c"snd_es1968.pcm_substreams_p\00", align 1
@__param_arr_pcm_substreams_p = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pcm_substreams_p }, align 4
@__param_pcm_substreams_p = internal constant %struct.kernel_param { ptr @__param_str_pcm_substreams_p, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_pcm_substreams_p } }, section "__param", align 4
@__UNIQUE_ID_pcm_substreams_ptype313 = internal constant [50 x i8] c"snd_es1968.parmtype=pcm_substreams_p:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_substreams_p314 = internal constant [87 x i8] c"snd_es1968.parm=pcm_substreams_p:PCM Playback substreams for ESS Maestro1/2 soundcard.\00", section ".modinfo", align 1
@__param_str_pcm_substreams_c = internal constant [28 x i8] c"snd_es1968.pcm_substreams_c\00", align 1
@__param_arr_pcm_substreams_c = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pcm_substreams_c }, align 4
@__param_pcm_substreams_c = internal constant %struct.kernel_param { ptr @__param_str_pcm_substreams_c, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_pcm_substreams_c } }, section "__param", align 4
@__UNIQUE_ID_pcm_substreams_ctype315 = internal constant [50 x i8] c"snd_es1968.parmtype=pcm_substreams_c:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_substreams_c316 = internal constant [86 x i8] c"snd_es1968.parm=pcm_substreams_c:PCM Capture substreams for ESS Maestro1/2 soundcard.\00", section ".modinfo", align 1
@__param_str_clock = internal constant [17 x i8] c"snd_es1968.clock\00", align 1
@__param_arr_clock = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @clock }, align 4
@__param_clock = internal constant %struct.kernel_param { ptr @__param_str_clock, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_clock } }, section "__param", align 4
@__UNIQUE_ID_clocktype317 = internal constant [39 x i8] c"snd_es1968.parmtype=clock:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_clock318 = internal constant [76 x i8] c"snd_es1968.parm=clock:Clock on ESS Maestro1/2 soundcard.  (0 = auto-detect)\00", section ".modinfo", align 1
@__param_str_use_pm = internal constant [18 x i8] c"snd_es1968.use_pm\00", align 1
@__param_arr_use_pm = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @use_pm }, align 4
@__param_use_pm = internal constant %struct.kernel_param { ptr @__param_str_use_pm, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_use_pm } }, section "__param", align 4
@__UNIQUE_ID_use_pmtype319 = internal constant [40 x i8] c"snd_es1968.parmtype=use_pm:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_pm320 = internal constant [77 x i8] c"snd_es1968.parm=use_pm:Toggle power-management.  (0 = off, 1 = on, 2 = auto)\00", section ".modinfo", align 1
@__param_str_enable_mpu = internal constant [22 x i8] c"snd_es1968.enable_mpu\00", align 1
@__param_arr_enable_mpu = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @enable_mpu }, align 4
@__param_enable_mpu = internal constant %struct.kernel_param { ptr @__param_str_enable_mpu, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_enable_mpu } }, section "__param", align 4
@__UNIQUE_ID_enable_mputype321 = internal constant [44 x i8] c"snd_es1968.parmtype=enable_mpu:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_mpu322 = internal constant [71 x i8] c"snd_es1968.parm=enable_mpu:Enable MPU401.  (0 = off, 1 = on, 2 = auto)\00", section ".modinfo", align 1
@__param_str_joystick = internal constant [20 x i8] c"snd_es1968.joystick\00", align 1
@__param_arr_joystick = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @joystick }, align 4
@__param_joystick = internal constant %struct.kernel_param { ptr @__param_str_joystick, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_joystick } }, section "__param", align 4
@__UNIQUE_ID_joysticktype323 = internal constant [43 x i8] c"snd_es1968.parmtype=joystick:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_joystick324 = internal constant [42 x i8] c"snd_es1968.parm=joystick:Enable joystick.\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [20 x i8] c"snd_es1968.radio_nr\00", align 1
@__param_arr_radio_nr = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @radio_nr }, align 4
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype325 = internal constant [42 x i8] c"snd_es1968.parmtype=radio_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr326 = internal constant [46 x i8] c"snd_es1968.parm=radio_nr:Radio device numbers\00", section ".modinfo", align 1
@__initcall__kmod_snd_es1968__332_2860_es1968_driver_init6 = internal global ptr @es1968_driver_init, section ".initcall6.init", align 4
@es1968_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_es1968_ids, ptr @snd_es1968_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @es1968_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_es1968_driver_exit = internal global ptr @es1968_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@total_bufsize = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024, i32 1024], [32 x i8] zeroinitializer }, align 32
@pcm_substreams_p = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@pcm_substreams_c = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@clock = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@use_pm = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [32 x i8] zeroinitializer }, align 32
@enable_mpu = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [32 x i8] zeroinitializer }, align 32
@joystick = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@radio_nr = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_es1968\00", [21 x i8] zeroinitializer }, align 32
@snd_es1968_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4741, i32 256, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4701, i32 6504, i32 -1, i32 -1, i32 262400, i32 16776960, i32 1, i32 0 }, %struct.pci_device_id { i32 4701, i32 6520, i32 -1, i32 -1, i32 262400, i32 16776960, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@es1968_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @es1968_suspend, ptr @es1968_resume, ptr @es1968_suspend, ptr @es1968_resume, ptr @es1968_suspend, ptr @es1968_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_es1968_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ES1978\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ESS ES1978 (Maestro 2E)\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ES1968\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ESS ES1968 (Maestro 2)\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ESM1\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ESS Maestro 1\00", [18 x i8] zeroinitializer }, align 32
@snd_es1968_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 2822, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"skipping MPU-401 MIDI support..\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_es1968_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/pci/es1968.c\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_es1968_probe._entry_ptr = internal global ptr @snd_es1968_probe._entry, section ".printk_index", align 4
@snd_es1968_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 2831, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Input device registration failed with error %i\00", [49 x i8] zeroinitializer }, align 32
@snd_es1968_probe._entry_ptr.14 = internal global ptr @snd_es1968_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %i\00", [44 x i8] zeroinitializer }, align 32
@snd_es1968_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 2651, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"architecture does not support 28bit PCI busmaster DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_es1968_create\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_es1968_create._entry_ptr = internal global ptr @snd_es1968_create._entry, section ".printk_index", align 4
@snd_es1968_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_es1968_create.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&chip->substream_lock\00", [42 x i8] zeroinitializer }, align 32
@snd_es1968_create.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&chip->memory_mutex\00", [44 x i8] zeroinitializer }, align 32
@snd_es1968_create.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&chip->hwvol_work)\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ESS Maestro\00", [20 x i8] zeroinitializer }, align 32
@snd_es1968_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.9, i32 2676, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_es1968_create._entry_ptr.29 = internal global ptr @snd_es1968_create._entry.27, section ".printk_index", align 4
@snd_es1968_create._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.9, i32 2707, ptr @.str.32, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"not attempting power management.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_es1968_create._entry_ptr.33 = internal global ptr @snd_es1968_create._entry.30, section ".printk_index", align 4
@snd_es1968_tea_ops = internal constant { %struct.snd_tea575x_ops, [44 x i8] } { %struct.snd_tea575x_ops { ptr null, ptr null, ptr @snd_es1968_tea575x_set_pins, ptr @snd_es1968_tea575x_get_pins, ptr @snd_es1968_tea575x_set_direction }, [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@snd_es1968_create._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.17, ptr @.str.9, i32 2731, ptr @.str.32, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"detected TEA575x radio type %s\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_es1968_create._entry_ptr.37 = internal global ptr @snd_es1968_create._entry.35, section ".printk_index", align 4
@snd_es1968_tea575x_gpios = internal constant { [2 x %struct.snd_es1968_tea575x_gpio], [16 x i8] } { [2 x %struct.snd_es1968_tea575x_gpio] [%struct.snd_es1968_tea575x_gpio { i8 6, i8 7, i8 8, i8 9, ptr @.str.42 }, %struct.snd_es1968_tea575x_gpio { i8 7, i8 8, i8 6, i8 10, ptr @.str.43 }], [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@apu_index_set.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.9, ptr @.str.39, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apu_index_set\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"APU register select failed. (Timeout)\0A\00", [57 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@apu_data_set.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.9, ptr @.str.41, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apu_data_set\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"APU register set probably failed (Timeout)!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SF64-PCE2\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M56VAP\00", [25 x i8] zeroinitializer }, align 32
@snd_es1968_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_es1968_playback_open, ptr @snd_es1968_playback_close, ptr null, ptr @snd_es1968_hw_params, ptr @snd_es1968_hw_free, ptr @snd_es1968_pcm_prepare, ptr @snd_es1968_pcm_trigger, ptr null, ptr @snd_es1968_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_es1968_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_es1968_capture_open, ptr @snd_es1968_capture_close, ptr null, ptr @snd_es1968_hw_params, ptr @snd_es1968_hw_free, ptr @snd_es1968_pcm_prepare, ptr @snd_es1968_pcm_trigger, ptr null, ptr @snd_es1968_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_es1968_init_dmabuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.9, i32 1427, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't allocate dma pages for size %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_es1968_init_dmabuf\00", [41 x i8] zeroinitializer }, align 32
@snd_es1968_init_dmabuf._entry_ptr = internal global ptr @snd_es1968_init_dmabuf._entry, section ".printk_index", align 4
@snd_es1968_init_dmabuf._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.9, i32 1432, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DMA buffer beyond 256MB.\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_es1968_init_dmabuf._entry_ptr.48 = internal global ptr @snd_es1968_init_dmabuf._entry.46, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_es1968_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 327939, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 65536, i32 256, i32 65536, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_es1968_hw_params.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.9, ptr @.str.50, i8 1, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_es1968_hw_params\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot allocate dma buffer: size = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@snd_es1968_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 328195, i64 4, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 65536, i32 256, i32 65536, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_es1968_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_es1968_ac97_write, ptr @snd_es1968_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_es1968_ac97_wait.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.9, ptr @.str.52, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_es1968_ac97_wait\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ac97 timeout\0A\00", [18 x i8] zeroinitializer }, align 32
@snd_es1968_ac97_wait_poll.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.9, ptr @.str.52, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_es1968_ac97_wait_poll\00", [38 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ES1968 gameport\00", [16 x i8] zeroinitializer }, align 32
@snd_es1968_create_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.9, i32 2453, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_es1968_create_gameport\00", [37 x i8] zeroinitializer }, align 32
@snd_es1968_create_gameport._entry_ptr = internal global ptr @snd_es1968_create_gameport._entry, section ".printk_index", align 4
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ES1968 Gameport\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci-%s/input0\00", [18 x i8] zeroinitializer }, align 32
@es1968_measure_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.9, i32 1701, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Hmm, cannot find empty APU pair!?\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"es1968_measure_clock\00", [43 x i8] zeroinitializer }, align 32
@es1968_measure_clock._entry_ptr = internal global ptr @es1968_measure_clock._entry, section ".printk_index", align 4
@es1968_measure_clock._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.9, i32 1708, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"cannot allocate dma buffer - using default clock %d\0A\00", [43 x i8] zeroinitializer }, align 32
@es1968_measure_clock._entry_ptr.64 = internal global ptr @es1968_measure_clock._entry.62, section ".printk_index", align 4
@es1968_measure_clock._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.9, i32 1765, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"?? calculation error..\0A\00", [40 x i8] zeroinitializer }, align 32
@es1968_measure_clock._entry_ptr.67 = internal global ptr @es1968_measure_clock._entry.65, section ".printk_index", align 4
@es1968_measure_clock._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.9, i32 1773, ptr @.str.32, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clocking to %d\0A\00", [16 x i8] zeroinitializer }, align 32
@es1968_measure_clock._entry_ptr.70 = internal global ptr @es1968_measure_clock._entry.68, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [9 x i64] [i64 7, i64 16, i64 3601, i64 4136, i64 4156, i64 4473, i64 4701, i64 5312, i64 5464]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 8, i64 102, i64 136, i64 170]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2151419955, i64 2153254963]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"es1968_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2851, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 115, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 116, i32 14 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 117, i32 13 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"total_bufsize\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 118, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"pcm_substreams_p\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 119, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"pcm_substreams_c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 120, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 121, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"use_pm\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 122, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"enable_mpu\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 123, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"joystick\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 125, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 127, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2860, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"snd_es1968_ids\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 555, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [10 x i8] c"es1968_pm\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2428, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2747, i32 13 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2782, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2783, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2786, i32 24 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2787, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2790, i32 24 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2791, i32 27 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2822, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2830, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2840, i32 26 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2650, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2657, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2658, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2661, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2662, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2670, i32 33 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2676, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2707, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant [19 x i8] c"snd_es1968_tea_ops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2586, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2726, i32 30 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2730, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [25 x i8] c"snd_es1968_tea575x_gpios\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2529, i32 45 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 672, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 684, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2530, i32 55 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2531, i32 56 }
@___asan_gen_.258 = private unnamed_addr constant [24 x i8] c"snd_es1968_playback_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1661, i32 33 }
@___asan_gen_.261 = private unnamed_addr constant [23 x i8] c"snd_es1968_capture_ops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1671, i32 33 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1425, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1432, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [20 x i8] c"snd_es1968_playback\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1275, i32 38 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1473, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [19 x i8] c"snd_es1968_capture\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1296, i32 38 }
@___asan_gen_.291 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2012, i32 39 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 617, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 629, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2445, i32 6 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2452, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2460, i32 24 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2461, i32 24 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 2492, i32 43 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1701, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1706, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1765, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private constant [22 x i8] c"../sound/pci/es1968.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1773, i32 3 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_clock318, ptr @__UNIQUE_ID_clocktype317, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_enable310, ptr @__UNIQUE_ID_enable_mpu322, ptr @__UNIQUE_ID_enable_mputype321, ptr @__UNIQUE_ID_enabletype309, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_id308, ptr @__UNIQUE_ID_idtype307, ptr @__UNIQUE_ID_index306, ptr @__UNIQUE_ID_indextype305, ptr @__UNIQUE_ID_joystick324, ptr @__UNIQUE_ID_joysticktype323, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_pcm_substreams_c316, ptr @__UNIQUE_ID_pcm_substreams_ctype315, ptr @__UNIQUE_ID_pcm_substreams_p314, ptr @__UNIQUE_ID_pcm_substreams_ptype313, ptr @__UNIQUE_ID_radio_nr326, ptr @__UNIQUE_ID_radio_nrtype325, ptr @__UNIQUE_ID_total_bufsize312, ptr @__UNIQUE_ID_total_bufsizetype311, ptr @__UNIQUE_ID_use_pm320, ptr @__UNIQUE_ID_use_pmtype319, ptr @__exitcall_es1968_driver_exit, ptr @__initcall__kmod_snd_es1968__332_2860_es1968_driver_init6, ptr @__param_clock, ptr @__param_enable, ptr @__param_enable_mpu, ptr @__param_id, ptr @__param_index, ptr @__param_joystick, ptr @__param_pcm_substreams_c, ptr @__param_pcm_substreams_p, ptr @__param_radio_nr, ptr @__param_total_bufsize, ptr @__param_use_pm, ptr @es1968_driver_exit, ptr @es1968_measure_clock._entry, ptr @es1968_measure_clock._entry.62, ptr @es1968_measure_clock._entry.65, ptr @es1968_measure_clock._entry.68, ptr @es1968_measure_clock._entry_ptr, ptr @es1968_measure_clock._entry_ptr.64, ptr @es1968_measure_clock._entry_ptr.67, ptr @es1968_measure_clock._entry_ptr.70, ptr @snd_es1968_create._entry, ptr @snd_es1968_create._entry.27, ptr @snd_es1968_create._entry.30, ptr @snd_es1968_create._entry.35, ptr @snd_es1968_create._entry_ptr, ptr @snd_es1968_create._entry_ptr.29, ptr @snd_es1968_create._entry_ptr.33, ptr @snd_es1968_create._entry_ptr.37, ptr @snd_es1968_create_gameport._entry, ptr @snd_es1968_create_gameport._entry_ptr, ptr @snd_es1968_init_dmabuf._entry, ptr @snd_es1968_init_dmabuf._entry.46, ptr @snd_es1968_init_dmabuf._entry_ptr, ptr @snd_es1968_init_dmabuf._entry_ptr.48, ptr @snd_es1968_probe._entry, ptr @snd_es1968_probe._entry.12, ptr @snd_es1968_probe._entry_ptr, ptr @snd_es1968_probe._entry_ptr.14, ptr @es1968_driver, ptr @index, ptr @id, ptr @enable, ptr @total_bufsize, ptr @pcm_substreams_p, ptr @pcm_substreams_c, ptr @clock, ptr @use_pm, ptr @enable_mpu, ptr @joystick, ptr @radio_nr, ptr @.str, ptr @snd_es1968_ids, ptr @es1968_pm, ptr @snd_es1968_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @snd_es1968_create.__key, ptr @.str.19, ptr @snd_es1968_create.__key.20, ptr @.str.21, ptr @snd_es1968_create.__key.22, ptr @.str.23, ptr @snd_es1968_create.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @snd_es1968_tea_ops, ptr @.str.34, ptr @.str.36, ptr @snd_es1968_tea575x_gpios, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @snd_es1968_playback_ops, ptr @snd_es1968_capture_ops, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @snd_es1968_playback, ptr @.str.49, ptr @.str.50, ptr @snd_es1968_capture, ptr @snd_es1968_mixer.ops, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1968_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_bufsize to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_substreams_p to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_substreams_c to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_pm to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_mpu to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joystick to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1968_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_create.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_create.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_create.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_create._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_tea_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_create._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_tea575x_gpios to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_init_dmabuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_init_dmabuf._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1968_create_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1968_measure_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1968_measure_clock._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1968_measure_clock._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1968_measure_clock._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @es1968_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @es1968_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @es1968_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @es1968_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %pcm.i = alloca ptr, align 4
  %vend.i = alloca i16, align 2
  %card = alloca ptr, align 4
  %vend = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !266
  %1 = load i32, ptr @snd_es1968_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !267
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_es1968_probe.dev, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx3 = getelementptr [32 x i32], ptr @index, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 4504, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %12 = load i32, ptr @snd_es1968_probe.dev, align 4
  %arrayidx8 = getelementptr [32 x i32], ptr @total_bufsize, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %14)
  %cmp9 = icmp slt i32 %14, 128
  br i1 %cmp9, label %if.end7.if.end17.sink.split_crit_edge, label %if.end12

if.end7.if.end17.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.sink.split

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %14)
  %cmp14 = icmp ugt i32 %14, 4096
  br i1 %cmp14, label %if.end12.if.end17.sink.split_crit_edge, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end12.if.end17.sink.split_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.end12.if.end17.sink.split_crit_edge, %if.end7.if.end17.sink.split_crit_edge
  %.sink = phi i32 [ 128, %if.end7.if.end17.sink.split_crit_edge ], [ 4096, %if.end12.if.end17.sink.split_crit_edge ]
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %arrayidx8, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.end12.if.end17_crit_edge
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  %mul = shl i32 %17, 10
  %arrayidx19 = getelementptr [32 x i32], ptr @pcm_substreams_p, i32 0, i32 %12
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx19, align 4
  %arrayidx20 = getelementptr [32 x i32], ptr @pcm_substreams_c, i32 0, i32 %12
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx20, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %22 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %driver_data, align 4
  %arrayidx21 = getelementptr [32 x i32], ptr @use_pm, i32 0, i32 %12
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr [32 x i32], ptr @radio_nr, i32 0, i32 %12
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx22, align 4
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end17.cleanup_crit_edge, label %if.end.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 268435455) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %30 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev3.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 268435455) #10
  %type.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 11
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %23, ptr %type.i, align 8
  %reg_lock.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 19
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @snd_es1968_create.__key, i16 noundef signext 3) #10
  %substream_lock.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 27
  call void @__raw_spin_lock_init(ptr noundef %substream_lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @snd_es1968_create.__key.20, i16 noundef signext 3) #10
  %buf_list.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 16
  %33 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %buf_list.i, ptr %buf_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 16, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf_list.i, ptr %prev.i.i, align 4
  %substream_list.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 26
  %35 = ptrtoint ptr %substream_list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %substream_list.i, ptr %substream_list.i, align 4
  %prev.i212.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 26, i32 1
  %36 = ptrtoint ptr %prev.i212.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %substream_list.i, ptr %prev.i212.i, align 4
  %memory_mutex.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 24
  call void @__mutex_init(ptr noundef %memory_mutex.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @snd_es1968_create.__key.22) #10
  %hwvol_work.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 32
  call void @__init_work(ptr noundef %hwvol_work.i, i32 noundef 0) #10
  %37 = ptrtoint ptr %hwvol_work.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %hwvol_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 32, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @snd_es1968_create.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry20.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 32, i32 1
  %38 = ptrtoint ptr %entry20.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry20.i, ptr %entry20.i, align 4
  %prev.i213.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 32, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i213.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry20.i, ptr %prev.i213.i, align 4
  %func.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 32, i32 2
  %40 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @es1968_update_hw_volume, ptr %func.i, align 4
  %card24.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 13
  %41 = ptrtoint ptr %card24.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %9, ptr %card24.i, align 8
  %pci25.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 12
  %42 = ptrtoint ptr %pci25.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %pci, ptr %pci25.i, align 4
  %irq.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 9
  %43 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %irq.i, align 8
  %44 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul, ptr %29, align 8
  %playback_streams.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 1
  %45 = ptrtoint ptr %playback_streams.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %19, ptr %playback_streams.i, align 4
  %capture_streams.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 2
  %46 = ptrtoint ptr %capture_streams.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %21, ptr %capture_streams.i, align 8
  %call27.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end4.i.cleanup_crit_edge, label %if.end30.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30.i:                                       ; preds = %if.end4.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %47 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %resource.i, align 8
  %io_port.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 10
  %49 = ptrtoint ptr %io_port.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %io_port.i, align 4
  %irq32.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %50 = ptrtoint ptr %irq32.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq32.i, align 4
  %call.i214.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %51, ptr noundef nonnull @snd_es1968_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214.i)
  %tobool34.not.i = icmp eq i32 %call.i214.i, 0
  br i1 %tobool34.not.i, label %if.end41.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev39.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %52 = ptrtoint ptr %dev39.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev39.i, align 8
  %54 = ptrtoint ptr %irq32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq32.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.28, i32 noundef %55) #13
  br label %cleanup

if.end41.i:                                       ; preds = %if.end30.i
  %56 = ptrtoint ptr %irq32.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq32.i, align 4
  %58 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %irq.i, align 8
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %59 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %60 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @snd_es1968_free, ptr %private_free.i, align 4
  %uglygep.i = getelementptr i8, ptr %29, i32 156
  %61 = call ptr @memset(ptr %uglygep.i, i32 0, i32 64)
  %uglygep222.i = getelementptr i8, ptr %29, i32 320
  %62 = call ptr @memset(ptr %uglygep222.i, i32 3, i32 64)
  call void @pci_set_master(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp54.i = icmp sgt i32 %25, 1
  br i1 %cmp54.i, label %if.then55.i, label %if.end41.i.if.end84.i_crit_edge

if.end41.i.if.end84.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

if.then55.i:                                      ; preds = %if.end41.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vend.i) #10
  %63 = ptrtoint ptr %vend.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %vend.i, align 2, !annotation !266
  %64 = ptrtoint ptr %pci25.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pci25.i, align 4
  %call57.i = call i32 @pci_read_config_word(ptr noundef %65, i32 noundef 44, ptr noundef nonnull %vend.i) #10
  %66 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type.i, align 8
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %67, label %if.then55.i.do.end81.i_crit_edge [
    i32 2, label %land.lhs.true.i
    i32 1, label %land.lhs.true.7.i
  ]

if.then55.i.do.end81.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end81.i

land.lhs.true.i:                                  ; preds = %if.then55.i
  %69 = ptrtoint ptr %vend.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vend.i, align 2
  %71 = zext i16 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %70, label %land.lhs.true.i.do.end81.i_crit_edge [
    i16 3601, label %land.lhs.true.i.if.end83.i_crit_edge
    i16 4136, label %land.lhs.true.i.if.end83.i_crit_edge197
    i16 4156, label %land.lhs.true.i.if.end83.i_crit_edge198
    i16 4473, label %land.lhs.true.i.if.end83.i_crit_edge199
    i16 5312, label %land.lhs.true.i.if.end83.i_crit_edge200
    i16 5464, label %land.lhs.true.i.if.end83.i_crit_edge201
    i16 4701, label %land.lhs.true.i.if.end83.i_crit_edge202
  ]

land.lhs.true.i.if.end83.i_crit_edge202:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

land.lhs.true.i.if.end83.i_crit_edge201:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

land.lhs.true.i.if.end83.i_crit_edge200:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

land.lhs.true.i.if.end83.i_crit_edge199:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

land.lhs.true.i.if.end83.i_crit_edge198:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

land.lhs.true.i.if.end83.i_crit_edge197:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

land.lhs.true.i.if.end83.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

land.lhs.true.i.do.end81.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end81.i

land.lhs.true.7.i:                                ; preds = %if.then55.i
  %72 = ptrtoint ptr %vend.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vend.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4701, i16 %73)
  %cmp69.7.i = icmp eq i16 %73, 4701
  br i1 %cmp69.7.i, label %land.lhs.true.7.i.if.end83.i_crit_edge, label %land.lhs.true.7.i.do.end81.i_crit_edge

land.lhs.true.7.i.do.end81.i_crit_edge:           ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end81.i

land.lhs.true.7.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.i

do.end81.i:                                       ; preds = %land.lhs.true.7.i.do.end81.i_crit_edge, %land.lhs.true.i.do.end81.i_crit_edge, %if.then55.i.do.end81.i_crit_edge
  %dev82.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %74 = ptrtoint ptr %dev82.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev82.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.31) #13
  br label %if.end83.i

if.end83.i:                                       ; preds = %do.end81.i, %land.lhs.true.7.i.if.end83.i_crit_edge, %land.lhs.true.i.if.end83.i_crit_edge, %land.lhs.true.i.if.end83.i_crit_edge197, %land.lhs.true.i.if.end83.i_crit_edge198, %land.lhs.true.i.if.end83.i_crit_edge199, %land.lhs.true.i.if.end83.i_crit_edge200, %land.lhs.true.i.if.end83.i_crit_edge201, %land.lhs.true.i.if.end83.i_crit_edge202
  %do_pm.addr.1.i = phi i32 [ 0, %do.end81.i ], [ 1, %land.lhs.true.7.i.if.end83.i_crit_edge ], [ 1, %land.lhs.true.i.if.end83.i_crit_edge ], [ 1, %land.lhs.true.i.if.end83.i_crit_edge197 ], [ 1, %land.lhs.true.i.if.end83.i_crit_edge198 ], [ 1, %land.lhs.true.i.if.end83.i_crit_edge199 ], [ 1, %land.lhs.true.i.if.end83.i_crit_edge200 ], [ 1, %land.lhs.true.i.if.end83.i_crit_edge201 ], [ 1, %land.lhs.true.i.if.end83.i_crit_edge202 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vend.i) #10
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.end83.i, %if.end41.i.if.end84.i_crit_edge
  %do_pm.addr.2.i = phi i32 [ %do_pm.addr.1.i, %if.end83.i ], [ %25, %if.end41.i.if.end84.i_crit_edge ]
  %do_pm85.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 15
  %76 = ptrtoint ptr %do_pm85.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %do_pm.addr.2.i, ptr %do_pm85.i, align 8
  call fastcc void @snd_es1968_chip_init(ptr noundef %29) #10
  %77 = ptrtoint ptr %pci25.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pci25.i, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4701, i16 %80)
  %cmp88.not.i = icmp eq i16 %80, 4701
  br i1 %cmp88.not.i, label %if.end91.i, label %if.end84.i.if.end26_crit_edge

if.end84.i.if.end26_crit_edge:                    ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end91.i:                                       ; preds = %if.end84.i
  %v4l2_dev.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 33
  %call93.i = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %cmp94.i = icmp slt i32 %call93.i, 0
  br i1 %cmp94.i, label %if.end91.i.cleanup_crit_edge, label %if.end97.i

if.end91.i.cleanup_crit_edge:                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end97.i:                                       ; preds = %if.end91.i
  %tea.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 34
  %81 = ptrtoint ptr %tea.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %v4l2_dev.i, ptr %tea.i, align 8
  %private_data101.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 34, i32 16
  %82 = ptrtoint ptr %private_data101.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %29, ptr %private_data101.i, align 8
  %radio_nr103.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 34, i32 3
  %83 = ptrtoint ptr %radio_nr103.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %27, ptr %radio_nr103.i, align 8
  %ops.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 34, i32 15
  %84 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @snd_es1968_tea_ops, ptr %ops.i, align 4
  %bus_info.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 34, i32 18
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 3
  %85 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end97.i.pci_name.exit.i_crit_edge

if.end97.i.pci_name.exit.i_crit_edge:             ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.end97.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %88, %if.end.i.i.i ], [ %86, %if.end97.i.pci_name.exit.i_crit_edge ]
  %call107.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info.i, ptr noundef nonnull @.str.34, ptr noundef %retval.0.i.i.i) #10
  %tea575x_tuner.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 35
  %89 = ptrtoint ptr %tea575x_tuner.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %tea575x_tuner.i, align 8
  %call113.i = call i32 @snd_tea575x_init(ptr noundef %tea.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113.i)
  %tobool114.not.i = icmp eq i32 %call113.i, 0
  br i1 %tobool114.not.i, label %pci_name.exit.i.do.end118.i_crit_edge, label %for.cond108.i

pci_name.exit.i.do.end118.i_crit_edge:            ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end118.i

for.cond108.i:                                    ; preds = %pci_name.exit.i
  %90 = ptrtoint ptr %tea575x_tuner.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %tea575x_tuner.i, align 8
  %call113.1.i = call i32 @snd_tea575x_init(ptr noundef %tea.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113.1.i)
  %tobool114.not.1.i = icmp eq i32 %call113.1.i, 0
  br i1 %tobool114.not.1.i, label %for.cond108.i.do.end118.i_crit_edge, label %for.cond108.i.if.end26_crit_edge

for.cond108.i.if.end26_crit_edge:                 ; preds = %for.cond108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

for.cond108.i.do.end118.i_crit_edge:              ; preds = %for.cond108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end118.i

do.end118.i:                                      ; preds = %for.cond108.i.do.end118.i_crit_edge, %pci_name.exit.i.do.end118.i_crit_edge
  %dev119.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %91 = ptrtoint ptr %dev119.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev119.i, align 8
  %93 = ptrtoint ptr %tea575x_tuner.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tea575x_tuner.i, align 8
  %name.i = getelementptr [2 x %struct.snd_es1968_tea575x_gpio], ptr @snd_es1968_tea575x_gpios, i32 0, i32 %94, i32 4
  %95 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.36, ptr noundef %96) #13
  %card123.i = getelementptr inbounds %struct.es1968, ptr %29, i32 0, i32 34, i32 17
  %97 = ptrtoint ptr %tea575x_tuner.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tea575x_tuner.i, align 8
  %name127.i = getelementptr [2 x %struct.snd_es1968_tea575x_gpio], ptr @snd_es1968_tea575x_gpios, i32 0, i32 %98, i32 4
  %99 = ptrtoint ptr %name127.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name127.i, align 4
  %call128.i = call i32 @strscpy(ptr noundef %card123.i, ptr noundef %100, i32 noundef 32) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end118.i, %for.cond108.i.if.end26_crit_edge, %if.end84.i.if.end26_crit_edge
  %type = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 11
  %101 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %type, align 8
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %102, label %if.end26.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb30
    i32 0, label %sw.bb37
  ]

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %105, i32 0, i32 2
  %106 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %105, i32 0, i32 3
  %107 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 24)
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %card, align 4
  %driver31 = getelementptr inbounds %struct.snd_card, ptr %109, i32 0, i32 2
  %110 = call ptr @memcpy(ptr %driver31, ptr @.str.3, i32 7)
  %shortname34 = getelementptr inbounds %struct.snd_card, ptr %109, i32 0, i32 3
  %111 = call ptr @memcpy(ptr %shortname34, ptr @.str.4, i32 23)
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %card, align 4
  %driver38 = getelementptr inbounds %struct.snd_card, ptr %113, i32 0, i32 2
  %114 = call ptr @memcpy(ptr %driver38, ptr @.str.5, i32 5)
  %shortname41 = getelementptr inbounds %struct.snd_card, ptr %113, i32 0, i32 3
  %115 = call ptr @memcpy(ptr %shortname41, ptr @.str.6, i32 14)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb30, %sw.bb, %if.end26.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #10
  %116 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !266
  %pci.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 12
  %117 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  %119 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %11, align 8
  %dma.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 8
  %call.i.i142 = call i32 @snd_dma_alloc_pages_fallback(i32 noundef 2, ptr noundef %dev.i.i, i32 noundef %120, ptr noundef %dma.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %cmp.i.i143 = icmp slt i32 %call.i.i142, 0
  br i1 %cmp.i.i143, label %sw.epilog.do.end.i.i_crit_edge, label %lor.lhs.false.i.i

sw.epilog.do.end.i.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %sw.epilog
  %area.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 8, i32 1
  %121 = ptrtoint ptr %area.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %area.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %122, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %sw.epilog.do.end.i.i_crit_edge
  %card.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 13
  %123 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %card.i.i, align 8
  %dev2.i.i = getelementptr inbounds %struct.snd_card, ptr %124, i32 0, i32 27
  %125 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev2.i.i, align 8
  %127 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.44, i32 noundef %128) #13
  br label %snd_es1968_pcm.exit.thread

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %addr.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 8, i32 2
  %129 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %addr.i.i, align 4
  %bytes.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 8, i32 3
  %131 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bytes.i.i, align 8
  %add.i.i = add i32 %130, -1
  %sub.i.i = add i32 %add.i.i, %132
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %sub.i.i)
  %tobool6.not.i.i = icmp ult i32 %sub.i.i, 268435456
  br i1 %tobool6.not.i.i, label %if.end14.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_dma_free_pages(ptr noundef %dma.i.i) #10
  %card12.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 13
  %133 = ptrtoint ptr %card12.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %card12.i.i, align 8
  %dev13.i.i = getelementptr inbounds %struct.snd_card, ptr %134, i32 0, i32 27
  %135 = ptrtoint ptr %dev13.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev13.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.47) #13
  br label %snd_es1968_pcm.exit.thread

if.end14.i.i:                                     ; preds = %if.end.i.i
  %buf_list.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 16
  %137 = ptrtoint ptr %buf_list.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %buf_list.i.i, ptr %buf_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 16, i32 1
  %138 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %buf_list.i.i, ptr %prev.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %139 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 3264, i32 noundef 44) #14
  %cmp16.i.i = icmp eq ptr %call7.i.i.i, null
  %140 = ptrtoint ptr %area.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %area.i.i, align 8
  br i1 %cmp16.i.i, label %if.then17.i.i, label %if.end18.i.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  %tobool.not.i.i.i144 = icmp eq ptr %141, null
  br i1 %tobool.not.i.i.i144, label %if.then17.i.i.snd_es1968_pcm.exit.thread_crit_edge, label %if.end.i.i.i145

if.then17.i.i.snd_es1968_pcm.exit.thread_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_pcm.exit.thread

if.end.i.i.i145:                                  ; preds = %if.then17.i.i
  call void @snd_dma_free_pages(ptr noundef %dma.i.i) #10
  %142 = ptrtoint ptr %buf_list.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %buf_list.i.i, align 4
  %cmp.not7.i.i.i = icmp eq ptr %143, %buf_list.i.i
  br i1 %cmp.not7.i.i.i, label %if.end.i.i.i145.snd_es1968_pcm.exit.thread_crit_edge, label %if.end.i.i.i145.while.body.i.i.i_crit_edge

if.end.i.i.i145.while.body.i.i.i_crit_edge:       ; preds = %if.end.i.i.i145
  br label %while.body.i.i.i

if.end.i.i.i145.snd_es1968_pcm.exit.thread_crit_edge: ; preds = %if.end.i.i.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_pcm.exit.thread

while.body.i.i.i:                                 ; preds = %list_del.exit.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.i145.while.body.i.i.i_crit_edge
  %144 = phi ptr [ %154, %list_del.exit.i.i.i.while.body.i.i.i_crit_edge ], [ %143, %if.end.i.i.i145.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %144, i32 -36
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %144) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %while.body.i.i.i.list_del.exit.i.i.i_crit_edge

while.body.i.i.i.list_del.exit.i.i.i_crit_edge:   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %147 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %144, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev1.i.i.i.i.i.i, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %148, ptr %146, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %while.body.i.i.i.list_del.exit.i.i.i_crit_edge
  %151 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 256 to ptr), ptr %144, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  call void @kfree(ptr noundef %add.ptr.i.i.i) #10
  %153 = ptrtoint ptr %buf_list.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %buf_list.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %154, %buf_list.i.i
  br i1 %cmp.not.i.i.i, label %list_del.exit.i.i.i.snd_es1968_pcm.exit.thread_crit_edge, label %list_del.exit.i.i.i.while.body.i.i.i_crit_edge

list_del.exit.i.i.i.while.body.i.i.i_crit_edge:   ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

list_del.exit.i.i.i.snd_es1968_pcm.exit.thread_crit_edge: ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_pcm.exit.thread

if.end18.i.i:                                     ; preds = %if.end14.i.i
  %155 = call ptr @memset(ptr %141, i32 0, i32 4096)
  %156 = call ptr @memcpy(ptr %call7.i.i.i, ptr %dma.i.i, i32 32)
  %area23.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7.i.i.i, i32 0, i32 1
  %157 = ptrtoint ptr %area23.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %area23.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %158, i32 4096
  store ptr %add.ptr.i.i, ptr %area23.i.i, align 8
  %addr25.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7.i.i.i, i32 0, i32 2
  %159 = ptrtoint ptr %addr25.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %addr25.i.i, align 4
  %add26.i.i = add i32 %160, 4096
  store i32 %add26.i.i, ptr %addr25.i.i, align 4
  %bytes28.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7.i.i.i, i32 0, i32 3
  %161 = ptrtoint ptr %bytes28.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bytes28.i.i, align 8
  %sub29.i.i = add i32 %162, -4096
  store i32 %sub29.i.i, ptr %bytes28.i.i, align 8
  %empty.i.i = getelementptr inbounds %struct.esm_memory, ptr %call7.i.i.i, i32 0, i32 1
  %163 = ptrtoint ptr %empty.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %empty.i.i, align 8
  %list.i.i = getelementptr inbounds %struct.esm_memory, ptr %call7.i.i.i, i32 0, i32 2
  %164 = ptrtoint ptr %buf_list.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %buf_list.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %buf_list.i.i, ptr noundef %165) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end18.i.i.if.end.i148_crit_edge

if.end18.i.i.if.end.i148_crit_edge:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i148

if.end.i.i.i.i:                                   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %list.i.i, ptr %prev1.i.i.i.i, align 4
  %167 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %165, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.esm_memory, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %168 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %buf_list.i.i, ptr %prev3.i.i.i.i, align 8
  %169 = ptrtoint ptr %buf_list.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %list.i.i, ptr %buf_list.i.i, align 4
  br label %if.end.i148

if.end.i148:                                      ; preds = %if.end.i.i.i.i, %if.end18.i.i.if.end.i148_crit_edge
  %170 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %addr.i.i, align 4
  %shr.i = lshr i32 %171, 12
  %conv.i = trunc i32 %shr.i to i16
  %reg_lock.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 19
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @arm_heavy_mb() #10
  %io_port.i.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 10
  %172 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %io_port.i.i, align 4
  %add.i1.i = add i32 %173, 16
  %and.i.i = and i32 %add.i1.i, 1048575
  %add8.i.i = or i32 %and.i.i, -18874368
  %174 = inttoptr i32 %add8.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %174, i16 -1023) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  call void @arm_heavy_mb() #10
  %175 = call i16 @llvm.bswap.i16(i16 %conv.i) #10
  %176 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %io_port.i.i, align 4
  %add14.i.i = add i32 %177, 18
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %178 = inttoptr i32 %add16.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %178, i16 %175) #10, !srcloc !269
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i.i) #10
  %179 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %addr.i.i, align 4
  %shr3.i = lshr i32 %180, 12
  %conv4.i = trunc i32 %shr3.i to i16
  %call2.i3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @arm_heavy_mb() #10
  %181 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %io_port.i.i, align 4
  %add.i5.i = add i32 %182, 16
  %and.i6.i = and i32 %add.i5.i, 1048575
  %add8.i7.i = or i32 %and.i6.i, -18874368
  %183 = inttoptr i32 %add8.i7.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %183, i16 -767) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  call void @arm_heavy_mb() #10
  %184 = call i16 @llvm.bswap.i16(i16 %conv4.i) #10
  %185 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %io_port.i.i, align 4
  %add14.i8.i = add i32 %186, 18
  %and15.i9.i = and i32 %add14.i8.i, 1048575
  %add16.i10.i = or i32 %and15.i9.i, -18874368
  %187 = inttoptr i32 %add16.i10.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %187, i16 %184) #10, !srcloc !269
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i3.i) #10
  %188 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %addr.i.i, align 4
  %shr7.i = lshr i32 %189, 12
  %conv8.i = trunc i32 %shr7.i to i16
  %call2.i12.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @arm_heavy_mb() #10
  %190 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %io_port.i.i, align 4
  %add.i14.i = add i32 %191, 16
  %and.i15.i = and i32 %add.i14.i, 1048575
  %add8.i16.i = or i32 %and.i15.i, -18874368
  %192 = inttoptr i32 %add8.i16.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %192, i16 -511) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  call void @arm_heavy_mb() #10
  %193 = call i16 @llvm.bswap.i16(i16 %conv8.i) #10
  %194 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %io_port.i.i, align 4
  %add14.i17.i = add i32 %195, 18
  %and15.i18.i = and i32 %add14.i17.i, 1048575
  %add16.i19.i = or i32 %and15.i18.i, -18874368
  %196 = inttoptr i32 %add16.i19.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %196, i16 %193) #10, !srcloc !269
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i12.i) #10
  %197 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %addr.i.i, align 4
  %shr11.i = lshr i32 %198, 12
  %conv12.i = trunc i32 %shr11.i to i16
  %call2.i21.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @arm_heavy_mb() #10
  %199 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %io_port.i.i, align 4
  %add.i23.i = add i32 %200, 16
  %and.i24.i = and i32 %add.i23.i, 1048575
  %add8.i25.i = or i32 %and.i24.i, -18874368
  %201 = inttoptr i32 %add8.i25.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %201, i16 -255) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  call void @arm_heavy_mb() #10
  %202 = call i16 @llvm.bswap.i16(i16 %conv12.i) #10
  %203 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %io_port.i.i, align 4
  %add14.i26.i = add i32 %204, 18
  %and15.i27.i = and i32 %add14.i26.i, 1048575
  %add16.i28.i = or i32 %and15.i27.i, -18874368
  %205 = inttoptr i32 %add16.i28.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %205, i16 %202) #10, !srcloc !269
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i21.i) #10
  %card.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 13
  %206 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %card.i, align 8
  %playback_streams.i146 = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 1
  %208 = ptrtoint ptr %playback_streams.i146 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %playback_streams.i146, align 4
  %capture_streams.i147 = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 2
  %210 = ptrtoint ptr %capture_streams.i147 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %capture_streams.i147, align 8
  %call13.i = call i32 @snd_pcm_new(ptr noundef %207, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %209, i32 noundef %211, ptr noundef nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end.i148.snd_es1968_pcm.exit.thread_crit_edge, label %if.end47

if.end.i148.snd_es1968_pcm.exit.thread_crit_edge: ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_pcm.exit.thread

snd_es1968_pcm.exit.thread:                       ; preds = %if.end.i148.snd_es1968_pcm.exit.thread_crit_edge, %list_del.exit.i.i.i.snd_es1968_pcm.exit.thread_crit_edge, %if.end.i.i.i145.snd_es1968_pcm.exit.thread_crit_edge, %if.then17.i.i.snd_es1968_pcm.exit.thread_crit_edge, %if.then7.i.i, %do.end.i.i
  %retval.0.i152.ph = phi i32 [ -12, %if.end.i.i.i145.snd_es1968_pcm.exit.thread_crit_edge ], [ -12, %if.then17.i.i.snd_es1968_pcm.exit.thread_crit_edge ], [ -12, %if.then7.i.i ], [ -12, %do.end.i.i ], [ %call13.i, %if.end.i148.snd_es1968_pcm.exit.thread_crit_edge ], [ -12, %list_del.exit.i.i.i.snd_es1968_pcm.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end.i148
  %212 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pcm.i, align 4
  %private_data.i149 = getelementptr inbounds %struct.snd_pcm, ptr %213, i32 0, i32 11
  %214 = ptrtoint ptr %private_data.i149 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %11, ptr %private_data.i149, align 8
  %private_free.i150 = getelementptr inbounds %struct.snd_pcm, ptr %213, i32 0, i32 12
  %215 = ptrtoint ptr %private_free.i150 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @snd_es1968_pcm_free, ptr %private_free.i150, align 4
  call void @snd_pcm_set_ops(ptr noundef %213, i32 noundef 0, ptr noundef nonnull @snd_es1968_playback_ops) #10
  %216 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %217, i32 noundef 1, ptr noundef nonnull @snd_es1968_capture_ops) #10
  %218 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pcm.i, align 4
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %219, i32 0, i32 3
  %220 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %info_flags.i, align 8
  %name.i151 = getelementptr inbounds %struct.snd_pcm, ptr %219, i32 0, i32 7
  %221 = call ptr @memcpy(ptr %name.i151, ptr @.str.26, i32 12)
  %pcm19.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 14
  %222 = ptrtoint ptr %pcm19.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %219, ptr %pcm19.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #10
  %223 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !266
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #10
  %224 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %card.i, align 8
  %call.i154 = call i32 @snd_ac97_bus(ptr noundef %225, i32 noundef 0, ptr noundef nonnull @snd_es1968_mixer.ops, ptr noundef null, ptr noundef nonnull %pbus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp.i155 = icmp slt i32 %call.i154, 0
  br i1 %cmp.i155, label %snd_es1968_mixer.exit.thread, label %snd_es1968_mixer.exit

snd_es1968_mixer.exit.thread:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #10
  br label %cleanup

snd_es1968_mixer.exit:                            ; preds = %if.end47
  %226 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pbus.i, align 4
  %no_vra.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %227, i32 0, i32 5
  %228 = ptrtoint ptr %no_vra.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %bf.load.i = load i8, ptr %no_vra.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %no_vra.i, align 2
  %229 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %230 = call ptr @memset(ptr %229, i32 0, i32 20)
  %231 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %11, ptr %ac97.i, align 4
  %ac971.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 17
  %call2.i = call i32 @snd_ac97_mixer(ptr noundef %227, ptr noundef nonnull %ac97.i, ptr noundef %ac971.i) #10
  %232 = call i32 @llvm.smin.i32(i32 %call2.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp49 = icmp slt i32 %call2.i, 0
  br i1 %cmp49, label %snd_es1968_mixer.exit.cleanup_crit_edge, label %if.end51

snd_es1968_mixer.exit.cleanup_crit_edge:          ; preds = %snd_es1968_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51:                                         ; preds = %snd_es1968_mixer.exit
  %233 = load i32, ptr @snd_es1968_probe.dev, align 4
  %arrayidx52 = getelementptr [32 x i32], ptr @enable_mpu, i32 0, i32 %233
  %234 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %235)
  %cmp53 = icmp eq i32 %235, 2
  br i1 %cmp53, label %if.then54, label %if.end51.if.end72_crit_edge

if.end51.if.end72_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then54:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vend) #10
  %236 = ptrtoint ptr %vend to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 -1, ptr %vend, align 2, !annotation !266
  %237 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %pci.i.i, align 4
  %call56 = call i32 @pci_read_config_word(ptr noundef %238, i32 noundef 44, ptr noundef nonnull %vend) #10
  %239 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %240)
  %cmp61 = icmp eq i32 %240, 1
  br i1 %cmp61, label %land.lhs.true, label %if.then54.for.end_crit_edge

if.then54.for.end_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true:                                    ; preds = %if.then54
  %241 = ptrtoint ptr %vend to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %vend, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4701, i16 %242)
  %cmp66 = icmp eq i16 %242, 4701
  br i1 %cmp66, label %if.then68, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %243 = load i32, ptr @snd_es1968_probe.dev, align 4
  %arrayidx69 = getelementptr [32 x i32], ptr @enable_mpu, i32 0, i32 %243
  %244 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %arrayidx69, align 4
  br label %for.end

for.end:                                          ; preds = %if.then68, %land.lhs.true.for.end_crit_edge, %if.then54.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vend) #10
  br label %if.end72

if.end72:                                         ; preds = %for.end, %if.end51.if.end72_crit_edge
  %245 = load i32, ptr @snd_es1968_probe.dev, align 4
  %arrayidx73 = getelementptr [32 x i32], ptr @enable_mpu, i32 0, i32 %245
  %246 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool74.not = icmp eq i32 %247, 0
  br i1 %tobool74.not, label %if.end72.if.end82_crit_edge, label %if.then75

if.end72.if.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then75:                                        ; preds = %if.end72
  %248 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %card, align 4
  %250 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %io_port.i.i, align 4
  %add = add i32 %251, 152
  %rmidi = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 18
  %call76 = call i32 @snd_mpu401_uart_new(ptr noundef %249, i32 noundef 0, i16 noundef zeroext 1, i32 noundef %add, i32 noundef 36, i32 noundef -1, ptr noundef %rmidi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end, label %if.then75.if.end82_crit_edge

if.then75.if.end82_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end:                                           ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %252 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %card, align 4
  %dev80 = getelementptr inbounds %struct.snd_card, ptr %253, i32 0, i32 27
  %254 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev80, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %255, ptr noundef nonnull @.str.7) #13
  br label %if.end82

if.end82:                                         ; preds = %do.end, %if.then75.if.end82_crit_edge, %if.end72.if.end82_crit_edge
  %256 = load i32, ptr @snd_es1968_probe.dev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %257 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 -1, ptr %val.i, align 2, !annotation !266
  %arrayidx.i = getelementptr [32 x i8], ptr @joystick, i32 0, i32 %256
  %258 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx.i, align 1, !range !267
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool.not.i = icmp eq i8 %259, 0
  br i1 %tobool.not.i, label %if.end82.snd_es1968_create_gameport.exit_crit_edge, label %if.end.i159

if.end82.snd_es1968_create_gameport.exit_crit_edge: ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_create_gameport.exit

if.end.i159:                                      ; preds = %if.end82
  %260 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %pci.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %261, i32 0, i32 44
  %call.i158 = call ptr @__devm_request_region(ptr noundef %dev1.i, ptr noundef nonnull @ioport_resource, i32 noundef 512, i32 noundef 8, ptr noundef nonnull @.str.54) #10
  %tobool2.not.i = icmp eq ptr %call.i158, null
  br i1 %tobool2.not.i, label %if.end.i159.snd_es1968_create_gameport.exit_crit_edge, label %if.end4.i160

if.end.i159.snd_es1968_create_gameport.exit_crit_edge: ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_create_gameport.exit

if.end4.i160:                                     ; preds = %if.end.i159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %262 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %262, i32 noundef 3520, i32 noundef 1248) #14
  %gameport.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 29
  %263 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call7.i.i.i.i, ptr %gameport.i, align 4
  %tobool6.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool6.not.i, label %do.end.i162, label %if.end9.i

do.end.i162:                                      ; preds = %if.end4.i160
  call void @__sanitizer_cov_trace_pc() #12
  %264 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %card.i, align 8
  %dev8.i = getelementptr inbounds %struct.snd_card, ptr %265, i32 0, i32 27
  %266 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev8.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %267, ptr noundef nonnull @.str.55) #13
  br label %snd_es1968_create_gameport.exit

if.end9.i:                                        ; preds = %if.end4.i160
  %268 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %pci.i.i, align 4
  %call11.i = call i32 @pci_read_config_word(ptr noundef %269, i32 noundef 64, ptr noundef nonnull %val.i) #10
  %270 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %pci.i.i, align 4
  %272 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %val.i, align 2
  %274 = or i16 %273, 4
  %call14.i = call i32 @pci_write_config_word(ptr noundef %271, i32 noundef 64, i16 noundef zeroext %274) #10
  %name1.i.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i.i, i32 0, i32 1
  %call.i.i163 = call i32 @strlcpy(ptr noundef %name1.i.i, ptr noundef nonnull @.str.57, i32 noundef 32) #10
  %275 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %pci.i.i, align 4
  %init_name.i.i.i164 = getelementptr inbounds %struct.pci_dev, ptr %276, i32 0, i32 44, i32 3
  %277 = ptrtoint ptr %init_name.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %init_name.i.i.i164, align 8
  %tobool.not.i.i.i165 = icmp eq ptr %278, null
  br i1 %tobool.not.i.i.i165, label %if.end.i.i.i167, label %if.end9.i.pci_name.exit.i169_crit_edge

if.end9.i.pci_name.exit.i169_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i169

if.end.i.i.i167:                                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i166 = getelementptr inbounds %struct.pci_dev, ptr %276, i32 0, i32 44
  %279 = ptrtoint ptr %dev.i.i166 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev.i.i166, align 4
  br label %pci_name.exit.i169

pci_name.exit.i169:                               ; preds = %if.end.i.i.i167, %if.end9.i.pci_name.exit.i169_crit_edge
  %retval.0.i.i.i168 = phi ptr [ %280, %if.end.i.i.i167 ], [ %278, %if.end9.i.pci_name.exit.i169_crit_edge ]
  call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @.str.58, ptr noundef %retval.0.i.i.i168) #10
  %281 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %pci.i.i, align 4
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %282, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i.i, i32 0, i32 21, i32 1
  %283 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %dev18.i, ptr %parent.i, align 8
  %io.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i.i, i32 0, i32 3
  %284 = ptrtoint ptr %io.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 512, ptr %io.i, align 4
  call void @__gameport_register_port(ptr noundef nonnull %call7.i.i.i.i, ptr noundef null) #10
  br label %snd_es1968_create_gameport.exit

snd_es1968_create_gameport.exit:                  ; preds = %pci_name.exit.i169, %do.end.i162, %if.end.i159.snd_es1968_create_gameport.exit_crit_edge, %if.end82.snd_es1968_create_gameport.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  %285 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pci.i.i, align 4
  %dev.i171 = getelementptr inbounds %struct.pci_dev, ptr %286, i32 0, i32 44
  %call.i172 = call ptr @devm_input_allocate_device(ptr noundef %dev.i171) #10
  %tobool.not.i173 = icmp eq ptr %call.i172, null
  br i1 %tobool.not.i173, label %snd_es1968_create_gameport.exit.do.end89_crit_edge, label %if.end.i176

snd_es1968_create_gameport.exit.do.end89_crit_edge: ; preds = %snd_es1968_create_gameport.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

if.end.i176:                                      ; preds = %snd_es1968_create_gameport.exit
  %phys.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 31
  %287 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %pci.i.i, align 4
  %init_name.i.i.i174 = getelementptr inbounds %struct.pci_dev, ptr %288, i32 0, i32 44, i32 3
  %289 = ptrtoint ptr %init_name.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %init_name.i.i.i174, align 8
  %tobool.not.i.i.i175 = icmp eq ptr %290, null
  br i1 %tobool.not.i.i.i175, label %if.end.i.i.i178, label %if.end.i176.pci_name.exit.i183_crit_edge

if.end.i176.pci_name.exit.i183_crit_edge:         ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i183

if.end.i.i.i178:                                  ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i177 = getelementptr inbounds %struct.pci_dev, ptr %288, i32 0, i32 44
  %291 = ptrtoint ptr %dev.i.i177 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev.i.i177, align 4
  br label %pci_name.exit.i183

pci_name.exit.i183:                               ; preds = %if.end.i.i.i178, %if.end.i176.pci_name.exit.i183_crit_edge
  %retval.0.i.i.i179 = phi ptr [ %292, %if.end.i.i.i178 ], [ %290, %if.end.i176.pci_name.exit.i183_crit_edge ]
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 64, ptr noundef nonnull @.str.59, ptr noundef %retval.0.i.i.i179) #10
  %293 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %card.i, align 8
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %294, i32 0, i32 2
  %295 = ptrtoint ptr %call.i172 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %driver.i, ptr %call.i172, align 8
  %phys7.i = getelementptr inbounds %struct.input_dev, ptr %call.i172, i32 0, i32 1
  %296 = ptrtoint ptr %phys7.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %phys.i, ptr %phys7.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i172, i32 0, i32 3
  %297 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 1, ptr %id.i, align 4
  %298 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %pci.i.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %299, i32 0, i32 7
  %300 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %vendor.i, align 8
  %vendor10.i = getelementptr inbounds %struct.input_dev, ptr %call.i172, i32 0, i32 3, i32 1
  %302 = ptrtoint ptr %vendor10.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %301, ptr %vendor10.i, align 2
  %303 = load ptr, ptr %pci.i.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %303, i32 0, i32 8
  %304 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %device.i, align 2
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call.i172, i32 0, i32 3, i32 2
  %306 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %305, ptr %product.i, align 4
  %307 = load ptr, ptr %pci.i.i, align 4
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %307, i32 0, i32 44
  %parent.i181 = getelementptr inbounds %struct.input_dev, ptr %call.i172, i32 0, i32 40, i32 1
  %308 = ptrtoint ptr %parent.i181 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %dev14.i, ptr %parent.i181, align 8
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i172, i32 0, i32 5
  %309 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %evbit.i, align 4
  %or.i.i = or i32 %310, 2
  store i32 %or.i.i, ptr %evbit.i, align 4
  %add.ptr.i.i182 = getelementptr %struct.input_dev, ptr %call.i172, i32 0, i32 6, i32 3
  %311 = ptrtoint ptr %add.ptr.i.i182 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %add.ptr.i.i182, align 4
  %or.i53.i = or i32 %312, 917504
  store i32 %or.i53.i, ptr %add.ptr.i.i182, align 4
  %call22.i = call i32 @input_register_device(ptr noundef nonnull %call.i172) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %snd_es1968_input_register.exit, label %pci_name.exit.i183.do.end89_crit_edge

pci_name.exit.i183.do.end89_crit_edge:            ; preds = %pci_name.exit.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

snd_es1968_input_register.exit:                   ; preds = %pci_name.exit.i183
  call void @__sanitizer_cov_trace_pc() #12
  %input_dev26.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 30
  %313 = ptrtoint ptr %input_dev26.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call.i172, ptr %input_dev26.i, align 8
  br label %if.end91

do.end89:                                         ; preds = %pci_name.exit.i183.do.end89_crit_edge, %snd_es1968_create_gameport.exit.do.end89_crit_edge
  %retval.0.i184.ph = phi i32 [ %call22.i, %pci_name.exit.i183.do.end89_crit_edge ], [ -12, %snd_es1968_create_gameport.exit.do.end89_crit_edge ]
  %314 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %card, align 4
  %dev90 = getelementptr inbounds %struct.snd_card, ptr %315, i32 0, i32 27
  %316 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dev90, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %317, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i184.ph) #13
  br label %if.end91

if.end91:                                         ; preds = %do.end89, %snd_es1968_input_register.exit
  %rmidi.i = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 18
  %318 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %rmidi.i, align 8
  %tobool.not.i185 = icmp eq ptr %319, null
  %spec.select.i = select i1 %tobool.not.i185, i16 68, i16 70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  call void @arm_heavy_mb() #10
  %conv2.i = trunc i16 %spec.select.i to i8
  %320 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %io_port.i.i, align 4
  %add.i = add i32 %321, 26
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %322 = inttoptr i32 %add3.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %322, i8 %conv2.i) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  call void @arm_heavy_mb() #10
  %323 = shl nuw nsw i16 %spec.select.i, 8
  %324 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %io_port.i.i, align 4
  %add8.i = add i32 %325, 24
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %326 = inttoptr i32 %add10.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %326, i16 %323) #10, !srcloc !269
  %327 = load i32, ptr @snd_es1968_probe.dev, align 4
  %arrayidx92 = getelementptr [32 x i32], ptr @clock, i32 0, i32 %327
  %328 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx92, align 4
  %clock = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 3
  %330 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool94.not = icmp eq i32 %329, 0
  br i1 %tobool94.not, label %if.then95, label %if.end91.if.end96_crit_edge

if.end91.if.end96_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @es1968_measure_clock(ptr noundef %11)
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end91.if.end96_crit_edge
  %331 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %332, i32 0, i32 4
  %shortname98 = getelementptr inbounds %struct.snd_card, ptr %332, i32 0, i32 3
  %333 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %io_port.i.i, align 4
  %irq = getelementptr inbounds %struct.es1968, ptr %11, i32 0, i32 9
  %335 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %irq, align 8
  %call101 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.15, ptr noundef %shortname98, i32 noundef %334, i32 noundef %336)
  %337 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %card, align 4
  %call102 = call i32 @snd_card_register(ptr noundef %338) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.end96.cleanup_crit_edge, label %if.end106

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end106:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %339 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %341 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %340, ptr %driver_data.i.i, align 4
  %342 = load i32, ptr @snd_es1968_probe.dev, align 4
  %inc107 = add i32 %342, 1
  store i32 %inc107, ptr @snd_es1968_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.end96.cleanup_crit_edge, %snd_es1968_mixer.exit.cleanup_crit_edge, %snd_es1968_mixer.exit.thread, %snd_es1968_pcm.exit.thread, %if.end91.i.cleanup_crit_edge, %do.end38.i, %if.end4.i.cleanup_crit_edge, %do.end.i, %if.end17.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end106 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %232, %snd_es1968_mixer.exit.cleanup_crit_edge ], [ %call102, %if.end96.cleanup_crit_edge ], [ %retval.0.i152.ph, %snd_es1968_pcm.exit.thread ], [ %call.i154, %snd_es1968_mixer.exit.thread ], [ %call93.i, %if.end91.i.cleanup_crit_edge ], [ %call27.i, %if.end4.i.cleanup_crit_edge ], [ %call.i, %if.end17.cleanup_crit_edge ], [ -16, %do.end38.i ], [ -6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @es1968_measure_clock(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 48000, ptr %clock, align 4
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %apu.026.i = phi i32 [ %add15.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 25, i32 %apu.026.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp2.i = icmp eq i8 %4, 3
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %add.i = or i32 %apu.026.i, 1
  %arrayidx5.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 25, i32 %add.i
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp7.i = icmp eq i8 %6, 3
  br i1 %cmp7.i, label %if.end4, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add15.i = add nuw nsw i32 %apu.026.i, 2
  %cmp.i = icmp ult i32 %apu.026.i, 62
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 13
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx5.i, align 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx.i, align 1
  %call5 = tail call fastcc ptr @snd_es1968_new_memory(ptr noundef %chip, i32 noundef 16768)
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %card10 = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 13
  %13 = ptrtoint ptr %card10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card10, align 8
  %dev11 = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev11, align 8
  %17 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clock, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.63, i32 noundef %18) #13
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %arrayidx5.i, align 1
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %arrayidx.i, align 1
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %call5, i32 0, i32 1
  %21 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %area, align 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 16768)
  %call.tr = trunc i32 %apu.026.i to i16
  %conv = shl nuw nsw i16 %call.tr, 3
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %call5, i32 0, i32 2
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr, align 4
  %26 = trunc i32 %25 to i16
  %27 = add i16 %26, -16
  %conv15 = and i16 %27, -8
  %reg_lock.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %io_port.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %29 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_port.i, align 4
  %add.i229 = add i32 %30, 16
  %and.i = and i32 %add.i229, 1048575
  %add8.i = or i32 %and.i, -18874368
  %31 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %31, i16 %28) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv15) #10
  %33 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_port.i, align 4
  %add14.i = add i32 %34, 18
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %35 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 %32) #10, !srcloc !269
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #10
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr, align 4
  %addr18 = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 8, i32 2
  %38 = ptrtoint ptr %addr18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr18, align 4
  %sub19 = sub i32 %37, %39
  %conv.i.i = and i32 %apu.026.i, 65534
  %channel.tr.i.i = trunc i32 %apu.026.i to i8
  %40 = shl i8 %channel.tr.i.i, 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end13
  %i.0342 = phi i32 [ 0, %if.end13 ], [ %inc, %for.body.for.body_crit_edge ]
  %call2.i231 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %conv23 = trunc i32 %i.0342 to i8
  %arrayidx24.i.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 %i.0342
  %41 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %arrayidx24.i.i, align 2
  %conv27.i.i = or i8 %40, %conv23
  %conv28.i.i = zext i8 %conv27.i.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i231) #10
  %inc = add nuw nsw i32 %i.0342, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %shr = lshr i32 %sub19, 1
  %call2.i233 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %arrayidx24.i.i237 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 0
  %42 = ptrtoint ptr %arrayidx24.i.i237 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 16399, ptr %arrayidx24.i.i237, align 2
  %conv28.i.i239 = zext i8 %40 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i239) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 16399) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i233) #10
  %call2.i243 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %or = lshr i32 %sub19, 9
  %43 = trunc i32 %or to i16
  %44 = and i16 %43, -16640
  %conv29 = or i16 %44, 16384
  %arrayidx24.i.i247 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 4
  %45 = ptrtoint ptr %arrayidx24.i.i247 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv29, ptr %arrayidx24.i.i247, align 2
  %conv27.i.i249 = or i8 %40, 4
  %conv28.i.i250 = zext i8 %conv27.i.i249 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i250) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv29) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i243) #10
  %conv32 = trunc i32 %shr to i16
  %call2.i254 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %arrayidx24.i.i258 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 5
  %46 = ptrtoint ptr %arrayidx24.i.i258 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv32, ptr %arrayidx24.i.i258, align 2
  %conv27.i.i260 = or i8 %40, 5
  %conv28.i.i261 = zext i8 %conv27.i.i260 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i261) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv32) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i254) #10
  %call2.i265 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %conv35 = add i16 %conv32, 8384
  %arrayidx24.i.i269 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 6
  %47 = ptrtoint ptr %arrayidx24.i.i269 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv35, ptr %arrayidx24.i.i269, align 2
  %conv27.i.i271 = or i8 %40, 6
  %conv28.i.i272 = zext i8 %conv27.i.i271 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i272) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv35) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i265) #10
  %call2.i276 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %arrayidx24.i.i280 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 7
  %48 = ptrtoint ptr %arrayidx24.i.i280 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 8384, ptr %arrayidx24.i.i280, align 2
  %conv27.i.i282 = or i8 %40, 7
  %conv28.i.i283 = zext i8 %conv27.i.i282 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i283) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 8384) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i276) #10
  %call2.i287 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %arrayidx24.i.i291 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 8
  %49 = ptrtoint ptr %arrayidx24.i.i291 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %arrayidx24.i.i291, align 2
  %conv27.i.i293 = or i8 %40, 8
  %conv28.i.i294 = zext i8 %conv27.i.i293 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i294) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i287) #10
  %call2.i298 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %arrayidx24.i.i302 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 9
  %50 = ptrtoint ptr %arrayidx24.i.i302 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -12288, ptr %arrayidx24.i.i302, align 2
  %conv27.i.i304 = or i8 %40, 9
  %conv28.i.i305 = zext i8 %conv27.i.i304 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i305) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext -12288) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i298) #10
  %call2.i309 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %arrayidx24.i.i313 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 10
  %51 = ptrtoint ptr %arrayidx24.i.i313 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -28920, ptr %arrayidx24.i.i313, align 2
  %conv27.i.i315 = or i8 %40, 10
  %conv28.i.i316 = zext i8 %conv27.i.i315 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i316) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext -28920) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i309) #10
  %call2.i320 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %arrayidx24.i.i324 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 11
  %52 = ptrtoint ptr %arrayidx24.i.i324 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %arrayidx24.i.i324, align 2
  %conv27.i.i326 = or i8 %40, 11
  %conv28.i.i327 = zext i8 %conv27.i.i326 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i327) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i320) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %io_port.i, align 4
  %add44 = add i32 %54, 4
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %55 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %55, i16 256) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %io_port.i, align 4
  %add52 = add i32 %57, 24
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %58 = inttoptr i32 %add54 to ptr
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %58) #10, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  %60 = or i16 %59, 1024
  %61 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %io_port.i, align 4
  %add61 = add i32 %62, 24
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %63 = inttoptr i32 %add63 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 %60) #10, !srcloc !269
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #10
  %64 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %clock, align 4
  %div = udiv i32 -1149239296, %65
  tail call fastcc void @snd_es1968_apu_set_freq(ptr noundef %chip, i32 noundef %apu.026.i, i32 noundef %div)
  %in_measurement = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 4
  %66 = ptrtoint ptr %in_measurement to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load = load i8, ptr %in_measurement, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %in_measurement, align 8
  %measure_apu = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 5
  %67 = ptrtoint ptr %measure_apu to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %apu.026.i, ptr %measure_apu, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #10
  tail call fastcc void @snd_es1968_bob_inc(ptr noundef %chip, i32 noundef 200)
  %arrayidx24.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 5
  %68 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv32, ptr %arrayidx24.i, align 2
  %conv27.i = or i8 %40, 5
  %conv28.i = zext i8 %conv27.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv32) #10
  tail call fastcc void @snd_es1968_trigger_apu(ptr noundef %chip, i32 noundef %apu.026.i, i32 noundef 1)
  %call71 = tail call i64 @ktime_get() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #10
  tail call void @msleep(i32 noundef 50) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #10
  %or.i = or i8 %40, 5
  %conv26.i = zext i8 %or.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv26.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %69 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %io_port.i, align 4
  %add.i.i = add i32 %70, 2
  %and1.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and1.i.i, -18874368
  %71 = inttoptr i32 %add2.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %71, i16 0) #10, !srcloc !269
  %72 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %io_port.i, align 4
  %and5.i.i = and i32 %73, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %74 = inttoptr i32 %add6.i.i to ptr
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %74) #10, !srcloc !276
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %arrayidx.i.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 0
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %arrayidx.i.i, align 2
  %call77 = tail call i64 @ktime_get() #10
  tail call fastcc void @snd_es1968_trigger_apu(ptr noundef %chip, i32 noundef %apu.026.i, i32 noundef 0)
  tail call fastcc void @snd_es1968_bob_dec(ptr noundef %chip)
  %78 = ptrtoint ptr %in_measurement to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load79 = load i8, ptr %in_measurement, align 8
  %bf.clear80 = and i8 %bf.load79, 127
  store i8 %bf.clear80, ptr %in_measurement, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #10
  %sub87 = sub i64 %call77, %call71
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub87)
  %cmp8.i.i = icmp slt i64 %sub87, 0
  %79 = tail call i64 @llvm.abs.i64(i64 %sub87, i1 false) #10
  %80 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %79, i32 0) #15, !srcloc !280
  %asmresult.i.i.i = extractvalue { i64, i32 } %80, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %80, 1
  %81 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %79, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #15, !srcloc !281
  %asmresult10.i.i.i = extractvalue { i64, i32 } %81, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv89 = trunc i64 %cond213.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv89)
  %cmp90 = icmp eq i32 %conv89, 0
  br i1 %cmp90, label %do.end95, label %if.else

do.end95:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %card96 = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 13
  %82 = ptrtoint ptr %card96 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card96, align 8
  %dev97 = getelementptr inbounds %struct.snd_card, ptr %83, i32 0, i32 27
  %84 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev97, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.66) #13
  br label %if.end126

if.else:                                          ; preds = %for.end
  %phi.cast = zext i16 %76 to i32
  %measure_count = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 7
  %86 = ptrtoint ptr %measure_count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %measure_count, align 4
  %sub84 = sub nsw i32 %phi.cast, %shr
  %and85 = and i32 %sub84, 65534
  %mul = mul i32 %87, 8384
  %add86 = add i32 %mul, %and85
  %mul98 = mul i32 %add86, 1000
  %mul98.frozen = freeze i32 %mul98
  %conv89.frozen = freeze i32 %conv89
  %div99 = udiv i32 %mul98.frozen, %conv89.frozen
  %mul100 = mul i32 %div99, 1000
  %88 = mul i32 %div99, %conv89.frozen
  %rem.decomposed = sub i32 %mul98.frozen, %88
  %mul101 = mul i32 %rem.decomposed, 1000
  %div102 = udiv i32 %mul101, %conv89
  %add103 = add i32 %div102, %mul100
  %89 = add i32 %add103, -48501
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1001, i32 %89)
  %90 = icmp ult i32 %89, -1001
  %91 = add i32 %add103, -40000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %91)
  %92 = icmp ult i32 %91, 10001
  %93 = and i1 %92, %90
  br i1 %93, label %if.then113, label %if.else.do.end122_crit_edge

if.else.do.end122_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

if.then113:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %clock, align 4
  %mul115 = mul i32 %95, %add103
  %div116 = udiv i32 %mul115, 48000
  store i32 %div116, ptr %clock, align 4
  br label %do.end122

do.end122:                                        ; preds = %if.then113, %if.else.do.end122_crit_edge
  %card123 = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 13
  %96 = ptrtoint ptr %card123 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %card123, align 8
  %dev124 = getelementptr inbounds %struct.snd_card, ptr %97, i32 0, i32 27
  %98 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev124, align 8
  %100 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %clock, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.69, i32 noundef %101) #13
  br label %if.end126

if.end126:                                        ; preds = %do.end122, %do.end95
  tail call fastcc void @snd_es1968_free_memory(ptr noundef %chip, ptr noundef nonnull %call5)
  %102 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 3, ptr %arrayidx5.i, align 1
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 3, ptr %arrayidx.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %do.end9, %do.end
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @es1968_update_hw_volume(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port = getelementptr i8, ptr %work, i32 -2488
  %0 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port, align 4
  %add = add i32 %1, 28
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %4 = and i8 %3, -18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !284
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port, align 4
  %add6 = add i32 %6, 28
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %7 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -120) #10, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_port, align 4
  %add14 = add i32 %9, 29
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %10 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -120) #10, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_port, align 4
  %add22 = add i32 %12, 30
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %13 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 -120) #10, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_port, align 4
  %add30 = add i32 %15, 31
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %16 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -120) #10, !srcloc !272
  %in_suspend = getelementptr i8, ptr %work, i32 -2404
  %17 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %in_suspend, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %input_dev = getelementptr i8, ptr %work, i32 -68
  %19 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input_dev, align 8
  %tobool34.not = icmp eq ptr %20, null
  br i1 %tobool34.not, label %if.end.cleanup_crit_edge, label %if.end36

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end
  %21 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %4, label %if.end36.cleanup_crit_edge [
    i8 -120, label %if.end36.if.then40_crit_edge
    i8 -86, label %sw.bb37
    i8 102, label %sw.bb38
  ]

if.end36.if.then40_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb37:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

sw.bb38:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.then40:                                        ; preds = %sw.bb38, %sw.bb37, %if.end36.if.then40_crit_edge
  %val.0.ph = phi i32 [ 115, %sw.bb37 ], [ 114, %sw.bb38 ], [ 113, %if.end36.if.then40_crit_edge ]
  tail call void @input_event(ptr noundef nonnull %20, i32 noundef 1, i32 noundef %val.0.ph, i32 noundef 1) #10
  %22 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %24 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %val.0.ph, i32 noundef 0) #10
  %26 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port = getelementptr inbounds %struct.es1968, ptr %dev_id, i32 0, i32 10
  %0 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port, align 4
  %add = add i32 %1, 26
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !288
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !289
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 4
  %add5 = add i32 %5, 4
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #10, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  %8 = and i16 %7, 256
  %9 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_port, align 4
  %add15 = add i32 %10, 4
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %11 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %8) #10, !srcloc !269
  %and19 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body.do.body24_crit_edge, label %if.then21

do.body.do.body24_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %hwvol_work = getelementptr inbounds %struct.es1968, ptr %dev_id, i32 0, i32 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %hwvol_work) #10
  br label %do.body24

do.body24:                                        ; preds = %if.then21, %do.body.do.body24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port, align 4
  %add28 = add i32 %14, 26
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %15 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -1) #10, !srcloc !272
  %and32 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body24.if.end38_crit_edge, label %land.lhs.true

do.body24.if.end38_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true:                                    ; preds = %do.body24
  %rmidi = getelementptr inbounds %struct.es1968, ptr %dev_id, i32 0, i32 18
  %16 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmidi, align 8
  %tobool34.not = icmp eq ptr %17, null
  br i1 %tobool34.not, label %land.lhs.true.if.end38_crit_edge, label %if.then35

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data, align 4
  %call37 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %19) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %land.lhs.true.if.end38_crit_edge, %do.body24.if.end38_crit_edge
  %and39 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %if.then41

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %if.end38
  %substream_lock = getelementptr inbounds %struct.es1968, ptr %dev_id, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %substream_lock) #10
  %substream_list = getelementptr inbounds %struct.es1968, ptr %dev_id, i32 0, i32 26
  %20 = ptrtoint ptr %substream_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn108 = load ptr, ptr %substream_list, align 4
  %cmp.not109 = icmp eq ptr %.pn108, %substream_list
  br i1 %cmp.not109, label %if.then41.for.end_crit_edge, label %for.body.lr.ph

if.then41.for.end_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then41
  %arrayidx.i.i.i = getelementptr %struct.es1968, ptr %dev_id, i32 0, i32 21, i32 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn110 = phi ptr [ %.pn108, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %es.0 = getelementptr i8, ptr %.pn110, i32 -64
  %21 = ptrtoint ptr %es.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %es.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool45.not = icmp eq i32 %22, 0
  br i1 %tobool45.not, label %for.body.for.inc_crit_edge, label %if.then46

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then46:                                        ; preds = %for.body
  %substream.i = getelementptr i8, ptr %.pn110, i32 -4
  %23 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %substream.i, align 4
  %cmp.i = icmp eq ptr %24, null
  br i1 %cmp.i, label %if.then46.snd_es1968_update_pcm.exit_crit_edge, label %if.end.i

if.then46.snd_es1968_update_pcm.exit_crit_edge:   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_update_pcm.exit

if.end.i:                                         ; preds = %if.then46
  %apu.i.i = getelementptr i8, ptr %.pn110, i32 -60
  %25 = ptrtoint ptr %apu.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %apu.i.i, align 4
  %conv.i.i = zext i8 %26 to i16
  %call.i.i99 = tail call fastcc zeroext i16 @apu_get_register(ptr noundef %dev_id, i16 noundef zeroext %conv.i.i, i8 noundef zeroext 5) #10
  %conv1.i.i = zext i16 %call.i.i99 to i32
  %base.i.i = getelementptr i8, ptr %.pn110, i32 -24
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %base.i.i, align 4
  %conv3.i.i = zext i16 %28 to i32
  %sub.i.i = sub nsw i32 %conv1.i.i, %conv3.i.i
  %and.i.i = and i32 %sub.i.i, 65534
  %wav_shift.i = getelementptr i8, ptr %.pn110, i32 -28
  %29 = ptrtoint ptr %wav_shift.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wav_shift.i, align 4
  %shl.i = shl i32 %and.i.i, %30
  %dma_size.i = getelementptr i8, ptr %.pn110, i32 -36
  %31 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_size.i, align 4
  %rem.i = urem i32 %shl.i, %32
  %add.i = add i32 %rem.i, %32
  %hwptr2.i = getelementptr i8, ptr %.pn110, i32 -44
  %33 = ptrtoint ptr %hwptr2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hwptr2.i, align 4
  %sub.i = sub i32 %add.i, %34
  %rem4.i = urem i32 %sub.i, %32
  store i32 %rem.i, ptr %hwptr2.i, align 4
  %count.i = getelementptr i8, ptr %.pn110, i32 -40
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 4
  %add6.i = add i32 %36, %rem4.i
  store i32 %add6.i, ptr %count.i, align 4
  %frag_size.i = getelementptr i8, ptr %.pn110, i32 -32
  %37 = ptrtoint ptr %frag_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frag_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %38)
  %cmp8.i = icmp ugt i32 %add6.i, %38
  br i1 %cmp8.i, label %if.then9.i, label %if.end.i.snd_es1968_update_pcm.exit_crit_edge

if.end.i.snd_es1968_update_pcm.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_update_pcm.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %substream_lock) #10
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %24) #10
  tail call void @_raw_spin_lock(ptr noundef %substream_lock) #10
  %39 = ptrtoint ptr %frag_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %frag_size.i, align 4
  %41 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count.i, align 4
  %rem13.i = urem i32 %42, %40
  store i32 %rem13.i, ptr %count.i, align 4
  br label %snd_es1968_update_pcm.exit

snd_es1968_update_pcm.exit:                       ; preds = %if.then9.i, %if.end.i.snd_es1968_update_pcm.exit_crit_edge, %if.then46.snd_es1968_update_pcm.exit_crit_edge
  %fmt = getelementptr i8, ptr %.pn110, i32 -16
  %43 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fmt, align 4
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool49.not = icmp eq i8 %45, 0
  br i1 %tobool49.not, label %snd_es1968_update_pcm.exit.for.inc_crit_edge, label %if.then50

snd_es1968_update_pcm.exit.for.inc_crit_edge:     ; preds = %snd_es1968_update_pcm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then50:                                        ; preds = %snd_es1968_update_pcm.exit
  tail call fastcc void @apu_index_set(ptr noundef %dev_id, i16 noundef zeroext 5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %io_port, align 4
  %add.i.i.i = add i32 %47, 2
  %and1.i.i.i = and i32 %add.i.i.i, 1048575
  %add2.i.i.i = or i32 %and1.i.i.i, -18874368
  %48 = inttoptr i32 %add2.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %48, i16 0) #10, !srcloc !269
  %49 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_port, align 4
  %and5.i.i.i = and i32 %50, 1048575
  %add6.i.i.i = or i32 %and5.i.i.i, -18874368
  %51 = inttoptr i32 %add6.i.i.i to ptr
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %51) #10, !srcloc !276
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx.i.i.i, align 2
  %conv.i = zext i16 %53 to i32
  tail call fastcc void @apu_index_set(ptr noundef %dev_id, i16 noundef zeroext 21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %io_port, align 4
  %add.i.i2.i = add i32 %56, 2
  %and1.i.i3.i = and i32 %add.i.i2.i, 1048575
  %add2.i.i4.i = or i32 %and1.i.i3.i, -18874368
  %57 = inttoptr i32 %add2.i.i4.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %57, i16 0) #10, !srcloc !269
  %58 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_port, align 4
  %and5.i.i5.i = and i32 %59, 1048575
  %add6.i.i6.i = or i32 %and5.i.i5.i, -18874368
  %60 = inttoptr i32 %add6.i.i6.i to ptr
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %60) #10, !srcloc !276
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %arrayidx.i.i.i, align 2
  %conv2.i = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %62)
  %cmp.i100 = icmp ugt i16 %53, %62
  %sub.i101 = sub nsw i32 %conv.i, %conv2.i
  %sub4.i = sub nsw i32 %conv2.i, %conv.i
  %cond.i = select i1 %cmp.i100, i32 %sub.i101, i32 %sub4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i)
  %cmp5.i = icmp ugt i32 %cond.i, 1
  br i1 %cmp5.i, label %if.then.i, label %if.then50.for.inc_crit_edge

if.then50.for.inc_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %64 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_port, align 4
  %add.i.i = add i32 %65, 2
  %and.i.i102 = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i102, -18874368
  %66 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %66, i16 0) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %67 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %io_port, align 4
  %and6.i.i = and i32 %68, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %69 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %69, i16 %52) #10, !srcloc !269
  %70 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %53, ptr %arrayidx.i.i.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then50.for.inc_crit_edge, %snd_es1968_update_pcm.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %71 = ptrtoint ptr %.pn110 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn = load ptr, ptr %.pn110, align 4
  %cmp.not = icmp eq ptr %.pn, %substream_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then41.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %substream_lock) #10
  %in_measurement = getelementptr inbounds %struct.es1968, ptr %dev_id, i32 0, i32 4
  %72 = ptrtoint ptr %in_measurement to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load = load i8, ptr %in_measurement, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool59.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool59.not, label %for.end.cleanup_crit_edge, label %if.then60

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then60:                                        ; preds = %for.end
  %measure_apu = getelementptr inbounds %struct.es1968, ptr %dev_id, i32 0, i32 5
  %73 = ptrtoint ptr %measure_apu to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %measure_apu, align 4
  %75 = and i32 %74, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i104.not = icmp eq i32 %75, 0
  br i1 %cmp.i104.not, label %if.end22.i, label %do.end.i, !prof !294

do.end.i:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 710, i32 noundef 9, ptr noundef null) #10
  br label %__apu_get_register.exit

if.end22.i:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i105 = trunc i32 %74 to i8
  %shl.i106 = shl i8 %conv.i105, 4
  %or.i = or i8 %shl.i106, 5
  %conv26.i = zext i8 %or.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %dev_id, i16 noundef zeroext %conv26.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %76 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %io_port, align 4
  %add.i.i107 = add i32 %77, 2
  %and1.i.i = and i32 %add.i.i107, 1048575
  %add2.i.i = or i32 %and1.i.i, -18874368
  %78 = inttoptr i32 %add2.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %78, i16 0) #10, !srcloc !269
  %79 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %io_port, align 4
  %and5.i.i = and i32 %80, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %81 = inttoptr i32 %add6.i.i to ptr
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %81) #10, !srcloc !276
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %arrayidx.i.i = getelementptr %struct.es1968, ptr %dev_id, i32 0, i32 21, i32 0
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %arrayidx.i.i, align 2
  %phi.cast = zext i16 %83 to i32
  br label %__apu_get_register.exit

__apu_get_register.exit:                          ; preds = %if.end22.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end22.i ]
  %measure_lastpos = getelementptr inbounds %struct.es1968, ptr %dev_id, i32 0, i32 6
  %85 = ptrtoint ptr %measure_lastpos to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %measure_lastpos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %retval.0.i)
  %cmp64 = icmp ugt i32 %86, %retval.0.i
  br i1 %cmp64, label %if.then66, label %__apu_get_register.exit.if.end67_crit_edge

__apu_get_register.exit.if.end67_crit_edge:       ; preds = %__apu_get_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then66:                                        ; preds = %__apu_get_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  %measure_count = getelementptr inbounds %struct.es1968, ptr %dev_id, i32 0, i32 7
  %87 = ptrtoint ptr %measure_count to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %measure_count, align 4
  %inc = add i32 %88, 1
  store i32 %inc, ptr %measure_count, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %__apu_get_register.exit.if.end67_crit_edge
  %89 = ptrtoint ptr %measure_lastpos to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %retval.0.i, ptr %measure_lastpos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %for.end.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.end.cleanup_crit_edge ], [ 1, %if.end67 ], [ 1, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_es1968_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %hwvol_work = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 32
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %hwvol_work) #10
  %io_port = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !295
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port, align 4
  %add = add i32 %5, 4
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 256) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_port, align 4
  %add8 = add i32 %8, 24
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %9 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 0) #10, !srcloc !269
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %tea = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 34
  tail call void @snd_tea575x_exit(ptr noundef %tea) #10
  %v4l2_dev = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 33
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  %gameport.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.snd_es1968_free_gameport.exit_crit_edge, label %if.then.i

if.end.snd_es1968_free_gameport.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_free_gameport.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gameport_unregister_port(ptr noundef nonnull %11) #10
  %12 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %gameport.i, align 4
  br label %snd_es1968_free_gameport.exit

snd_es1968_free_gameport.exit:                    ; preds = %if.then.i, %if.end.snd_es1968_free_gameport.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1968_chip_init(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %w.i = alloca i16, align 2
  %vend.i = alloca i32, align 4
  %w = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci1, align 4
  %io_port = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w) #10
  %4 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %w, align 2, !annotation !266
  %call = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 80, ptr noundef nonnull %w) #10
  %5 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %w, align 2
  %7 = and i16 %6, -28643
  %8 = or i16 %7, 192
  store i16 %8, ptr %w, align 2
  %call20 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 80, i16 noundef zeroext %8) #10
  %call21 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 82, ptr noundef nonnull %w) #10
  %9 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %w, align 2
  %11 = and i16 %10, 15872
  %12 = or i16 %11, 208
  store i16 %12, ptr %w, align 2
  %call55 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 82, i16 noundef zeroext %12) #10
  %call56 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 96, ptr noundef nonnull %w) #10
  %13 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %w, align 2
  %15 = and i16 %14, -2
  store i16 %15, ptr %w, align 2
  %call60 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 96, i16 noundef zeroext %15) #10
  %call61 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 64, ptr noundef nonnull %w) #10
  %16 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %w, align 2
  %18 = and i16 %17, 16352
  %19 = or i16 %18, -32768
  store i16 %19, ptr %w, align 2
  %call71 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 64, i16 noundef zeroext %19) #10
  %call72 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 88, ptr noundef nonnull %w) #10
  %20 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %w, align 2
  %22 = and i16 %21, -2061
  %23 = or i16 %22, 12
  store i16 %23, ptr %w, align 2
  %call82 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 88, i16 noundef zeroext %23) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !297
  call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port, align 4
  %add.i = add i32 %25, 24
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %26 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 192) #10, !srcloc !269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 2147480) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_port, align 4
  %add5.i = add i32 %29, 24
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %30 = inttoptr i32 %add7.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 0) #10, !srcloc !269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 2147480) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !299
  call void @arm_heavy_mb() #10
  %add = add i32 %3, 52
  %and83 = and i32 %add, 1048575
  %add84 = or i32 %and83, -18874368
  %32 = inttoptr i32 %add84 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 -28480) #10, !srcloc !269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 4294960) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !300
  call void @arm_heavy_mb() #10
  %add89 = add i32 %3, 54
  %and90 = and i32 %add89, 1048575
  %add91 = or i32 %and90, -18874368
  %34 = inttoptr i32 %add91 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 48) #10, !srcloc !269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 4294960) #10
  %36 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_port, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w.i) #10
  %38 = ptrtoint ptr %w.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %w.i, align 2, !annotation !266
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vend.i) #10
  %39 = ptrtoint ptr %vend.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %vend.i, align 4, !annotation !266
  %add.i328 = add i32 %37, 54
  %and.i329 = and i32 %add.i328, 1048575
  %add1.i330 = or i32 %and.i329, -18874368
  %40 = inttoptr i32 %add1.i330 to ptr
  %41 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %40) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !302
  call void @arm_heavy_mb() #10
  %add4.i = add i32 %37, 58
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %42 = inttoptr i32 %add6.i to ptr
  %43 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %42) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %44 = and i16 %43, -769
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 %44) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  call void @arm_heavy_mb() #10
  %add20.i = add i32 %37, 60
  %and21.i = and i32 %add20.i, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %45 = inttoptr i32 %add22.i to ptr
  %46 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %45) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  %47 = and i16 %46, -769
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %47) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 0) #10, !srcloc !269
  %add41.i = add i32 %37, 104
  %and42.i = and i32 %add41.i, 1048575
  %add43.i = or i32 %and42.i, -18874368
  %48 = inttoptr i32 %add43.i to ptr
  %49 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %48) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !307
  %50 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci1, align 4
  %call47.i = call i32 @pci_read_config_word(ptr noundef %51, i32 noundef 88, ptr noundef nonnull %w.i) #10
  %52 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci1, align 4
  %call49.i = call i32 @pci_read_config_dword(ptr noundef %53, i32 noundef 44, ptr noundef nonnull %vend.i) #10
  %54 = ptrtoint ptr %w.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %w.i, align 2
  %56 = shl i16 %55, 4
  %57 = and i16 %56, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !308
  call void @arm_heavy_mb() #10
  %add57.i = add i32 %37, 100
  %and58.i = and i32 %add57.i, 1048575
  %add59.i = or i32 %and58.i, -18874368
  %58 = inttoptr i32 %add59.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %58, i16 -257) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !309
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %48, i16 256) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !310
  call void @arm_heavy_mb() #10
  %add71.i = add i32 %37, 96
  %and72.i = and i32 %add71.i, 1048575
  %add73.i = or i32 %and72.i, -18874368
  %59 = inttoptr i32 %add73.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 0) #10, !srcloc !269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 4294960) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 256) #10, !srcloc !269
  call void @msleep(i32 noundef 20) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  call void @arm_heavy_mb() #10
  %61 = or i16 %49, 256
  %62 = call i16 @llvm.bswap.i16(i16 %61) #10
  %63 = or i16 %57, %62
  %64 = call i16 @llvm.bswap.i16(i16 %63) #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %48, i16 %64) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  call void @arm_heavy_mb() #10
  %add96.i = add i32 %37, 56
  %and97.i = and i32 %add96.i, 1048575
  %add98.i = or i32 %and97.i, -18874368
  %65 = inttoptr i32 %add98.i to ptr
  %66 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %65) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  %67 = and i16 %66, -769
  %68 = or i16 %67, 256
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %65, i16 %68) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  %69 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %42) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !316
  %70 = and i16 %69, -769
  %71 = or i16 %70, 256
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 %71) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  call void @arm_heavy_mb() #10
  %72 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %45) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %73 = and i16 %72, -769
  %74 = or i16 %73, 256
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %74) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 0) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %58, i16 -2049) #10, !srcloc !269
  %75 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %48) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !322
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %48, i16 2304) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 256) #10, !srcloc !269
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 4294960) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 2304) #10, !srcloc !269
  call void @msleep(i32 noundef 500) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  call void @arm_heavy_mb() #10
  %77 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %42) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  %78 = and i16 %77, -769
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 %78) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  call void @arm_heavy_mb() #10
  %79 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %45) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !328
  %80 = and i16 %79, -769
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %80) #10, !srcloc !269
  %81 = ptrtoint ptr %vend.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vend.i, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %82, label %entry.snd_es1968_ac97_reset.exit_crit_edge [
    i32 -2141712333, label %entry.do.body226.i_crit_edge
    i32 -2143547341, label %entry.do.body226.i_crit_edge479
  ]

entry.do.body226.i_crit_edge479:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body226.i

entry.do.body226.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body226.i

entry.snd_es1968_ac97_reset.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_ac97_reset.exit

do.body226.i:                                     ; preds = %entry.do.body226.i_crit_edge, %entry.do.body226.i_crit_edge479
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %58, i16 -7) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  call void @arm_heavy_mb() #10
  %84 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %48) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %85 = or i16 %84, 6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %48, i16 %85) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 2306) #10, !srcloc !269
  br label %snd_es1968_ac97_reset.exit

snd_es1968_ac97_reset.exit:                       ; preds = %do.body226.i, %entry.snd_es1968_ac97_reset.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 %41) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !334
  call void @arm_heavy_mb() #10
  %add269.i = add i32 %37, 192
  %and270.i = and i32 %add269.i, 1048575
  %add271.i = or i32 %and270.i, -18874368
  %86 = inttoptr i32 %add271.i to ptr
  %87 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %86) #10, !srcloc !282
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !335
  %88 = or i8 %87, 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %88) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !336
  call void @arm_heavy_mb() #10
  %add285.i = add i32 %37, 195
  %and286.i = and i32 %add285.i, 1048575
  %add287.i = or i32 %and286.i, -18874368
  %89 = inttoptr i32 %add287.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 -1) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !337
  call void @arm_heavy_mb() #10
  %add292.i = add i32 %37, 196
  %and293.i = and i32 %add292.i, 1048575
  %add294.i = or i32 %and293.i, -18874368
  %90 = inttoptr i32 %add294.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 -1) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !338
  call void @arm_heavy_mb() #10
  %add299.i = add i32 %37, 198
  %and300.i = and i32 %add299.i, 1048575
  %add301.i = or i32 %and300.i, -18874368
  %91 = inttoptr i32 %add301.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 -1) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !339
  call void @arm_heavy_mb() #10
  %add306.i = add i32 %37, 200
  %and307.i = and i32 %add306.i, 1048575
  %add308.i = or i32 %and307.i, -18874368
  %92 = inttoptr i32 %add308.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 -1) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !340
  call void @arm_heavy_mb() #10
  %add313.i = add i32 %37, 207
  %and314.i = and i32 %add313.i, 1048575
  %add315.i = or i32 %and314.i, -18874368
  %93 = inttoptr i32 %add315.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 63) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !341
  call void @arm_heavy_mb() #10
  %add320.i = add i32 %37, 208
  %and321.i = and i32 %add320.i, 1048575
  %add322.i = or i32 %and321.i, -18874368
  %94 = inttoptr i32 %add322.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 63) #10, !srcloc !272
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vend.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w.i) #10
  %add93 = add i32 %3, 56
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %95 = inttoptr i32 %add95 to ptr
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %95) #10, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !343
  %97 = and i32 %96, -268435457
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !344
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %95, i32 %97) #10, !srcloc !345
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  call void @arm_heavy_mb() #10
  %add109 = add i32 %3, 28
  %and110 = and i32 %add109, 1048575
  %add111 = or i32 %and110, -18874368
  %98 = inttoptr i32 %add111 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 -120) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  call void @arm_heavy_mb() #10
  %add116 = add i32 %3, 29
  %and117 = and i32 %add116, 1048575
  %add118 = or i32 %and117, -18874368
  %99 = inttoptr i32 %add118 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 -120) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !348
  call void @arm_heavy_mb() #10
  %add123 = add i32 %3, 30
  %and124 = and i32 %add123, 1048575
  %add125 = or i32 %and124, -18874368
  %100 = inttoptr i32 %add125 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 -120) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !349
  call void @arm_heavy_mb() #10
  %add130 = add i32 %3, 31
  %and131 = and i32 %add130, 1048575
  %add132 = or i32 %and131, -18874368
  %101 = inttoptr i32 %add132 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 -120) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !350
  call void @arm_heavy_mb() #10
  %add137 = add i32 %3, 164
  %and138 = and i32 %add137, 1048575
  %add139 = or i32 %and138, -18874368
  %102 = inttoptr i32 %add139 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 0) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !351
  call void @arm_heavy_mb() #10
  %add144 = add i32 %3, 162
  %and145 = and i32 %add144, 1048575
  %add146 = or i32 %and145, -18874368
  %103 = inttoptr i32 %add146 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 3) #10, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !352
  call void @arm_heavy_mb() #10
  %add151 = add i32 %3, 166
  %and152 = and i32 %add151, 1048575
  %add153 = or i32 %and152, -18874368
  %104 = inttoptr i32 %add153 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 0) #10, !srcloc !272
  %add161 = add i32 %3, 16
  %and162 = and i32 %add161, 1048575
  %add163 = or i32 %and162, -18874368
  %105 = inttoptr i32 %add163 to ptr
  %add168 = add i32 %3, 18
  %and169 = and i32 %add168, 1048575
  %add170 = or i32 %and169, -18874368
  %106 = inttoptr i32 %add170 to ptr
  br label %do.body156

do.body156:                                       ; preds = %do.body156.do.body156_crit_edge, %snd_es1968_ac97_reset.exit
  %i.0475 = phi i32 [ 0, %snd_es1968_ac97_reset.exit ], [ %inc, %do.body156.do.body156_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !353
  call void @arm_heavy_mb() #10
  %107 = trunc i32 %i.0475 to i16
  %conv160 = add i16 %107, 480
  %108 = call i16 @llvm.bswap.i16(i16 %conv160)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %105, i16 %108) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !354
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %106, i16 0) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !355
  call void @arm_heavy_mb() #10
  %conv176 = add i16 %107, 464
  %109 = call i16 @llvm.bswap.i16(i16 %conv176)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %105, i16 %109) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !356
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %106, i16 0) #10, !srcloc !269
  %inc = add nuw nsw i32 %i.0475, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %do.body156.do.body156_crit_edge

do.body156.do.body156_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body156

for.end:                                          ; preds = %do.body156
  %reg_lock.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 19
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  call void @arm_heavy_mb() #10
  %110 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %io_port, align 4
  %add.i332 = add i32 %111, 16
  %and.i333 = and i32 %add.i332, 1048575
  %add8.i = or i32 %and.i333, -18874368
  %112 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %112, i16 1792) #10, !srcloc !269
  %113 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %io_port, align 4
  %add11.i = add i32 %114, 18
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %115 = inttoptr i32 %add13.i to ptr
  %116 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %115) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #10
  %call2.i335 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @arm_heavy_mb() #10
  %117 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %io_port, align 4
  %add.i337 = add i32 %118, 16
  %and.i338 = and i32 %add.i337, 1048575
  %add8.i339 = or i32 %and.i338, -18874368
  %119 = inttoptr i32 %add8.i339 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %119, i16 1792) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  call void @arm_heavy_mb() #10
  %120 = and i16 %116, 255
  %121 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %io_port, align 4
  %add14.i = add i32 %122, 18
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %123 = inttoptr i32 %add16.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %123, i16 %120) #10, !srcloc !269
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i335) #10
  %call2.i341 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  call void @arm_heavy_mb() #10
  %124 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %io_port, align 4
  %add.i343 = add i32 %125, 16
  %and.i344 = and i32 %add.i343, 1048575
  %add8.i345 = or i32 %and.i344, -18874368
  %126 = inttoptr i32 %add8.i345 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %126, i16 1792) #10, !srcloc !269
  %127 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %io_port, align 4
  %add11.i346 = add i32 %128, 18
  %and12.i347 = and i32 %add11.i346, 1048575
  %add13.i348 = or i32 %and12.i347, -18874368
  %129 = inttoptr i32 %add13.i348 to ptr
  %130 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %129) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i341) #10
  %131 = or i16 %130, 1
  %call2.i350 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @arm_heavy_mb() #10
  %132 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %io_port, align 4
  %add.i352 = add i32 %133, 16
  %and.i353 = and i32 %add.i352, 1048575
  %add8.i354 = or i32 %and.i353, -18874368
  %134 = inttoptr i32 %add8.i354 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %134, i16 1792) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  call void @arm_heavy_mb() #10
  %135 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %io_port, align 4
  %add14.i355 = add i32 %136, 18
  %and15.i356 = and i32 %add14.i355, 1048575
  %add16.i357 = or i32 %and15.i356, -18874368
  %137 = inttoptr i32 %add16.i357 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %137, i16 %131) #10, !srcloc !269
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i350) #10
  %call2.i359 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  call void @arm_heavy_mb() #10
  %138 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %io_port, align 4
  %add.i361 = add i32 %139, 16
  %and.i362 = and i32 %add.i361, 1048575
  %add8.i363 = or i32 %and.i362, -18874368
  %140 = inttoptr i32 %add8.i363 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %140, i16 1792) #10, !srcloc !269
  %141 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %io_port, align 4
  %add11.i364 = add i32 %142, 18
  %and12.i365 = and i32 %add11.i364, 1048575
  %add13.i366 = or i32 %and12.i365, -18874368
  %143 = inttoptr i32 %add13.i366 to ptr
  %144 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %143) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i359) #10
  %145 = and i16 %144, -3
  %call2.i368 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @arm_heavy_mb() #10
  %146 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %io_port, align 4
  %add.i370 = add i32 %147, 16
  %and.i371 = and i32 %add.i370, 1048575
  %add8.i372 = or i32 %and.i371, -18874368
  %148 = inttoptr i32 %add8.i372 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %148, i16 1792) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  call void @arm_heavy_mb() #10
  %149 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %io_port, align 4
  %add14.i373 = add i32 %150, 18
  %and15.i374 = and i32 %add14.i373, 1048575
  %add16.i375 = or i32 %and15.i374, -18874368
  %151 = inttoptr i32 %add16.i375 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %151, i16 %145) #10, !srcloc !269
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i368) #10
  %call2.i377 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  call void @arm_heavy_mb() #10
  %152 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %io_port, align 4
  %add.i379 = add i32 %153, 16
  %and.i380 = and i32 %add.i379, 1048575
  %add8.i381 = or i32 %and.i380, -18874368
  %154 = inttoptr i32 %add8.i381 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %154, i16 1792) #10, !srcloc !269
  %155 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %io_port, align 4
  %add11.i382 = add i32 %156, 18
  %and12.i383 = and i32 %add11.i382, 1048575
  %add13.i384 = or i32 %and12.i383, -18874368
  %157 = inttoptr i32 %add13.i384 to ptr
  %158 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %157) #10, !srcloc !276
  %159 = shl i16 %158, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i377) #10
  %or202 = or i16 %159, -1025
  %call2.i386 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @arm_heavy_mb() #10
  %160 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %io_port, align 4
  %add.i388 = add i32 %161, 16
  %and.i389 = and i32 %add.i388, 1048575
  %add8.i390 = or i32 %and.i389, -18874368
  %162 = inttoptr i32 %add8.i390 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %162, i16 1792) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  call void @arm_heavy_mb() #10
  %163 = call i16 @llvm.bswap.i16(i16 %or202) #10
  %164 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %io_port, align 4
  %add14.i391 = add i32 %165, 18
  %and15.i392 = and i32 %add14.i391, 1048575
  %add16.i393 = or i32 %and15.i392, -18874368
  %166 = inttoptr i32 %add16.i393 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %166, i16 %163) #10, !srcloc !269
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i386) #10
  %call2.i395 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @arm_heavy_mb() #10
  %167 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %io_port, align 4
  %add.i.i = add i32 %168, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %169 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %169, i16 512) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  call void @arm_heavy_mb() #10
  %170 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %io_port, align 4
  %and6.i.i = and i32 %171, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %172 = inttoptr i32 %add7.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %172, i16 0) #10, !srcloc !269
  %arrayidx.i.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 2
  %173 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %arrayidx.i.i, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i395) #10
  %call2.i397 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @arm_heavy_mb() #10
  %174 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %io_port, align 4
  %add.i.i399 = add i32 %175, 2
  %and.i.i400 = and i32 %add.i.i399, 1048575
  %add1.i.i401 = or i32 %and.i.i400, -18874368
  %176 = inttoptr i32 %add1.i.i401 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %176, i16 2048) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  call void @arm_heavy_mb() #10
  %177 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %io_port, align 4
  %and6.i.i402 = and i32 %178, 1048575
  %add7.i.i403 = or i32 %and6.i.i402, -18874368
  %179 = inttoptr i32 %add7.i.i403 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %179, i16 1200) #10, !srcloc !269
  %arrayidx.i.i404 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 8
  %180 = ptrtoint ptr %arrayidx.i.i404 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 -20476, ptr %arrayidx.i.i404, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i397) #10
  %call2.i406 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @arm_heavy_mb() #10
  %181 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %io_port, align 4
  %add.i.i408 = add i32 %182, 2
  %and.i.i409 = and i32 %add.i.i408, 1048575
  %add1.i.i410 = or i32 %and.i.i409, -18874368
  %183 = inttoptr i32 %add1.i.i410 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %183, i16 2304) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  call void @arm_heavy_mb() #10
  %184 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %io_port, align 4
  %and6.i.i411 = and i32 %185, 1048575
  %add7.i.i412 = or i32 %and6.i.i411, -18874368
  %186 = inttoptr i32 %add7.i.i412 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %186, i16 6912) #10, !srcloc !269
  %arrayidx.i.i413 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 9
  %187 = ptrtoint ptr %arrayidx.i.i413 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 27, ptr %arrayidx.i.i413, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i406) #10
  %call2.i415 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @arm_heavy_mb() #10
  %188 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %io_port, align 4
  %add.i.i417 = add i32 %189, 2
  %and.i.i418 = and i32 %add.i.i417, 1048575
  %add1.i.i419 = or i32 %and.i.i418, -18874368
  %190 = inttoptr i32 %add1.i.i419 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %190, i16 2560) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  call void @arm_heavy_mb() #10
  %191 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %io_port, align 4
  %and6.i.i420 = and i32 %192, 1048575
  %add7.i.i421 = or i32 %and6.i.i420, -18874368
  %193 = inttoptr i32 %add7.i.i421 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %193, i16 128) #10, !srcloc !269
  %arrayidx.i.i422 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 10
  %194 = ptrtoint ptr %arrayidx.i.i422 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 -32768, ptr %arrayidx.i.i422, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i415) #10
  %call2.i424 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @arm_heavy_mb() #10
  %195 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %io_port, align 4
  %add.i.i426 = add i32 %196, 2
  %and.i.i427 = and i32 %add.i.i426, 1048575
  %add1.i.i428 = or i32 %and.i.i427, -18874368
  %197 = inttoptr i32 %add1.i.i428 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %197, i16 2816) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  call void @arm_heavy_mb() #10
  %198 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %io_port, align 4
  %and6.i.i429 = and i32 %199, 1048575
  %add7.i.i430 = or i32 %and6.i.i429, -18874368
  %200 = inttoptr i32 %add7.i.i430 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %200, i16 14143) #10, !srcloc !269
  %arrayidx.i.i431 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 11
  %201 = ptrtoint ptr %arrayidx.i.i431 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 16183, ptr %arrayidx.i.i431, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i424) #10
  %call2.i433 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @arm_heavy_mb() #10
  %202 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %io_port, align 4
  %add.i.i435 = add i32 %203, 2
  %and.i.i436 = and i32 %add.i.i435, 1048575
  %add1.i.i437 = or i32 %and.i.i436, -18874368
  %204 = inttoptr i32 %add1.i.i437 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %204, i16 3072) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  call void @arm_heavy_mb() #10
  %205 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %io_port, align 4
  %and6.i.i438 = and i32 %206, 1048575
  %add7.i.i439 = or i32 %and6.i.i438, -18874368
  %207 = inttoptr i32 %add7.i.i439 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %207, i16 -26624) #10, !srcloc !269
  %arrayidx.i.i440 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 12
  %208 = ptrtoint ptr %arrayidx.i.i440 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 152, ptr %arrayidx.i.i440, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i433) #10
  %call2.i442 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %209 = ptrtoint ptr %arrayidx.i.i440 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %arrayidx.i.i440, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i442) #10
  %211 = and i16 %210, 4095
  %212 = or i16 %211, -32768
  %call2.i444 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @arm_heavy_mb() #10
  %213 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %io_port, align 4
  %add.i.i446 = add i32 %214, 2
  %and.i.i447 = and i32 %add.i.i446, 1048575
  %add1.i.i448 = or i32 %and.i.i447, -18874368
  %215 = inttoptr i32 %add1.i.i448 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %215, i16 3072) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  call void @arm_heavy_mb() #10
  %216 = call i16 @llvm.bswap.i16(i16 %212) #10
  %217 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %io_port, align 4
  %and6.i.i449 = and i32 %218, 1048575
  %add7.i.i450 = or i32 %and6.i.i449, -18874368
  %219 = inttoptr i32 %add7.i.i450 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %219, i16 %216) #10, !srcloc !269
  %220 = ptrtoint ptr %arrayidx.i.i440 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %212, ptr %arrayidx.i.i440, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i444) #10
  %call2.i453 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %221 = ptrtoint ptr %arrayidx.i.i440 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %arrayidx.i.i440, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i453) #10
  %223 = and i16 %222, -3841
  %224 = or i16 %223, 1280
  %call2.i456 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @arm_heavy_mb() #10
  %225 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %io_port, align 4
  %add.i.i458 = add i32 %226, 2
  %and.i.i459 = and i32 %add.i.i458, 1048575
  %add1.i.i460 = or i32 %and.i.i459, -18874368
  %227 = inttoptr i32 %add1.i.i460 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %227, i16 3072) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  call void @arm_heavy_mb() #10
  %228 = call i16 @llvm.bswap.i16(i16 %224) #10
  %229 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %io_port, align 4
  %and6.i.i461 = and i32 %230, 1048575
  %add7.i.i462 = or i32 %and6.i.i461, -18874368
  %231 = inttoptr i32 %add7.i.i462 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %231, i16 %228) #10, !srcloc !269
  %232 = ptrtoint ptr %arrayidx.i.i440 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %224, ptr %arrayidx.i.i440, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i456) #10
  %call2.i465 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  call void @arm_heavy_mb() #10
  %233 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %io_port, align 4
  %add.i.i467 = add i32 %234, 2
  %and.i.i468 = and i32 %add.i.i467, 1048575
  %add1.i.i469 = or i32 %and.i.i468, -18874368
  %235 = inttoptr i32 %add1.i.i469 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %235, i16 3328) #10, !srcloc !269
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  call void @arm_heavy_mb() #10
  %236 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %io_port, align 4
  %and6.i.i470 = and i32 %237, 1048575
  %add7.i.i471 = or i32 %and6.i.i470, -18874368
  %238 = inttoptr i32 %add7.i.i471 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %238, i16 12918) #10, !srcloc !269
  %arrayidx.i.i472 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 13
  %239 = ptrtoint ptr %arrayidx.i.i472 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 30258, ptr %arrayidx.i.i472, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i465) #10
  %add215 = add i32 %3, 20
  %and216 = and i32 %add215, 1048575
  %add217 = or i32 %and216, -18874368
  %240 = inttoptr i32 %add217 to ptr
  %241 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %240) #10, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  %242 = and i16 %241, 4612
  %243 = or i16 %242, -24415
  %244 = call i16 @llvm.bswap.i16(i16 %243)
  %245 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %244, ptr %w, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !360
  call void @arm_heavy_mb() #10
  %246 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %w, align 2
  %248 = call i16 @llvm.bswap.i16(i16 %247)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %240, i16 %248) #10, !srcloc !269
  br label %for.cond259.preheader

for.cond259.preheader:                            ; preds = %for.inc269.for.cond259.preheader_crit_edge, %for.end
  %i.1477 = phi i32 [ 0, %for.end ], [ %inc270, %for.inc269.for.cond259.preheader_crit_edge ]
  %249 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 0, ptr %w, align 2
  %250 = and i32 %i.1477, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp.i.i.not = icmp eq i32 %250, 0
  %channel.tr.i.i = trunc i32 %i.1477 to i8
  %251 = shl i8 %channel.tr.i.i, 4
  br label %for.body263

for.body263:                                      ; preds = %apu_set_register.exit.for.body263_crit_edge, %for.cond259.preheader
  %storemerge476 = phi i16 [ 0, %for.cond259.preheader ], [ %inc267, %apu_set_register.exit.for.body263_crit_edge ]
  %call2.i474 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  br i1 %cmp.i.i.not, label %if.end22.critedge.i.i, label %do.end.i.i, !prof !294

do.end.i.i:                                       ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit

if.end22.critedge.i.i:                            ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #12
  %conv265 = trunc i16 %storemerge476 to i8
  %idxprom23.i.i = zext i16 %storemerge476 to i32
  %arrayidx24.i.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %i.1477, i32 %idxprom23.i.i
  %252 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 0, ptr %arrayidx24.i.i, align 2
  %conv27.i.i = or i8 %251, %conv265
  %conv28.i.i = zext i8 %conv27.i.i to i16
  call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i) #10
  call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 0) #10
  br label %apu_set_register.exit

apu_set_register.exit:                            ; preds = %if.end22.critedge.i.i, %do.end.i.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i474) #10
  %253 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %w, align 2
  %inc267 = add i16 %254, 1
  store i16 %inc267, ptr %w, align 2
  %cmp261 = icmp ult i16 %inc267, 16
  br i1 %cmp261, label %apu_set_register.exit.for.body263_crit_edge, label %for.inc269

apu_set_register.exit.for.body263_crit_edge:      ; preds = %apu_set_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body263

for.inc269:                                       ; preds = %apu_set_register.exit
  %inc270 = add nuw nsw i32 %i.1477, 1
  %exitcond478.not = icmp eq i32 %inc270, 64
  br i1 %exitcond478.not, label %for.end271, label %for.inc269.for.cond259.preheader_crit_edge

for.inc269.for.cond259.preheader_crit_edge:       ; preds = %for.inc269
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond259.preheader

for.end271:                                       ; preds = %for.inc269
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_tea575x_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @apu_get_register(ptr noundef %chip, i16 noundef zeroext %channel, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 19
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %channel)
  %cmp.i = icmp ugt i16 %channel, 63
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !361

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 710, i32 noundef 9, ptr noundef null) #10
  br label %__apu_get_register.exit

if.end22.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i16 %channel to i8
  %shl.i = shl i8 %conv.i, 4
  %or.i = or i8 %shl.i, %reg
  %conv26.i = zext i8 %or.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv26.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %io_port.i.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port.i.i, align 4
  %add.i.i = add i32 %1, 2
  %and1.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and1.i.i, -18874368
  %2 = inttoptr i32 %add2.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 0) #10, !srcloc !269
  %3 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_port.i.i, align 4
  %and5.i.i = and i32 %4, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %5 = inttoptr i32 %add6.i.i to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #10, !srcloc !276
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %arrayidx.i.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 0
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx.i.i, align 2
  br label %__apu_get_register.exit

__apu_get_register.exit:                          ; preds = %if.end22.i, %do.end.i
  %retval.0.i = phi i16 [ 0, %do.end.i ], [ %7, %if.end22.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #10
  ret i16 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apu_index_set(ptr nocapture noundef %chip, i16 noundef zeroext %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %io_port.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port.i, align 4
  %add.i = add i32 %1, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 256) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %3 = tail call i16 @llvm.bswap.i16(i16 %index) #10
  %4 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port.i, align 4
  %and6.i = and i32 %5, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %6 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 %3) #10, !srcloc !269
  %arrayidx.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %index, ptr %arrayidx.i, align 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.body, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_port.i, align 4
  %add.i14 = add i32 %9, 2
  %and1.i = and i32 %add.i14, 1048575
  %add2.i = or i32 %and1.i, -18874368
  %10 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 256) #10, !srcloc !269
  %11 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_port.i, align 4
  %and5.i = and i32 %12, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %13 = inttoptr i32 %add6.i to ptr
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #10, !srcloc !276
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %index)
  %cmp2 = icmp eq i16 %15, %index
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apu_index_set.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apu_index_set, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !362

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 13
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apu_index_set.__UNIQUE_ID_ddebug329, ptr noundef %20, ptr noundef nonnull @.str.39) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_tea575x_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apu_data_set(ptr nocapture noundef %chip, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %arrayidx.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 0
  %0 = tail call i16 @llvm.bswap.i16(i16 %data) #10
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %1 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %io_port.i, align 4
  %add.i = add i32 %2, 2
  %and1.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and1.i, -18874368
  %3 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 0) #10, !srcloc !269
  %4 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port.i, align 4
  %and5.i = and i32 %5, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %6 = inttoptr i32 %add6.i to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #10, !srcloc !276
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %data)
  %cmp2 = icmp eq i16 %8, %data
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_port.i, align 4
  %add.i14 = add i32 %11, 2
  %and.i = and i32 %add.i14, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 0) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port.i, align 4
  %and6.i = and i32 %14, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %15 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %0) #10, !srcloc !269
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %data, ptr %arrayidx.i, align 2
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.body, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apu_data_set.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apu_data_set, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !362

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 13
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apu_data_set.__UNIQUE_ID_ddebug330, ptr noundef %20, ptr noundef nonnull @.str.41) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_es1968_tea575x_set_pins(ptr nocapture noundef readonly %tea, i8 noundef zeroext %pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tea575x_tuner = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %tea575x_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tea575x_tuner, align 8
  %arrayidx = getelementptr [2 x %struct.snd_es1968_tea575x_gpio], ptr @snd_es1968_tea575x_gpios, i32 0, i32 %3
  %gpio.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 1
  %4 = ptrtoint ptr %gpio.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %gpio.sroa.5.0.copyload = load i8, ptr %gpio.sroa.5.0.arrayidx.sroa_idx, align 1
  %gpio.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %5 = ptrtoint ptr %gpio.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %gpio.sroa.7.0.copyload = load i8, ptr %gpio.sroa.7.0.arrayidx.sroa_idx, align 2
  %conv = zext i8 %pins to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %gpio.sroa.0.0.copyload = load i8, ptr %arrayidx, align 4
  %conv1 = zext i8 %gpio.sroa.0.0.copyload to i32
  %shl = shl nuw i32 1, %conv1
  %phi.cast36 = and i32 %shl, 65535
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast36, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %and5 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %conv8 = zext i8 %gpio.sroa.5.0.copyload to i32
  %shl9 = shl nuw i32 1, %conv8
  %cond12 = select i1 %tobool6.not, i32 0, i32 %shl9
  %and17 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %conv20 = zext i8 %gpio.sroa.7.0.copyload to i32
  %shl21 = shl nuw i32 1, %conv20
  %cond24 = select i1 %tobool18.not, i32 0, i32 %shl21
  %conv25 = or i32 %cond24, %cond12
  %or26 = or i32 %conv25, %cond
  %conv27 = trunc i32 %or26 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !363
  tail call void @arm_heavy_mb() #10
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv27)
  %io_port = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_port, align 4
  %add = add i32 %9, 96
  %and28 = and i32 %add, 1048575
  %add29 = or i32 %and28, -18874368
  %10 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 %7) #10, !srcloc !269
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @snd_es1968_tea575x_get_pins(ptr nocapture noundef readonly %tea) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tea575x_tuner = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %tea575x_tuner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tea575x_tuner, align 8
  %arrayidx = getelementptr [2 x %struct.snd_es1968_tea575x_gpio], ptr @snd_es1968_tea575x_gpios, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %gpio.sroa.0.0.copyload = load i8, ptr %arrayidx, align 4
  %gpio.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 3
  %5 = ptrtoint ptr %gpio.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %gpio.sroa.7.0.copyload = load i8, ptr %gpio.sroa.7.0.arrayidx.sroa_idx, align 1
  %io_port = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port, align 4
  %add = add i32 %7, 96
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #10, !srcloc !276
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !364
  %conv = zext i16 %10 to i32
  %conv3 = zext i8 %gpio.sroa.0.0.copyload to i32
  %shl = shl nuw i32 1, %conv3
  %and4 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp ne i32 %and4, 0
  %spec.select = zext i1 %tobool.not to i8
  %conv8 = zext i8 %gpio.sroa.7.0.copyload to i32
  %shl9 = shl nuw i32 1, %conv8
  %and10 = and i32 %shl9, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %11 = or i8 %spec.select, 8
  %ret.1 = select i1 %tobool11.not, i8 %spec.select, i8 %11
  ret i8 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_es1968_tea575x_set_direction(ptr nocapture noundef readonly %tea, i1 noundef zeroext %output) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %io_port = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port, align 4
  %add1 = add i32 %3, 104
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #10, !srcloc !276
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !365
  %tea575x_tuner = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %tea575x_tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tea575x_tuner, align 8
  %arrayidx = getelementptr [2 x %struct.snd_es1968_tea575x_gpio], ptr @snd_es1968_tea575x_gpios, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %gpio.sroa.0.0.copyload = load i8, ptr %arrayidx, align 4
  %gpio.sroa.8.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 1
  %10 = ptrtoint ptr %gpio.sroa.8.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %gpio.sroa.8.0.copyload = load i8, ptr %gpio.sroa.8.0.arrayidx.sroa_idx, align 1
  %gpio.sroa.13.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %11 = ptrtoint ptr %gpio.sroa.13.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %gpio.sroa.13.0.copyload = load i8, ptr %gpio.sroa.13.0.arrayidx.sroa_idx, align 2
  br i1 %output, label %do.body, label %do.body35

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !366
  tail call void @arm_heavy_mb() #10
  %conv = zext i8 %gpio.sroa.0.0.copyload to i32
  %shl = shl nuw i32 1, %conv
  %conv4 = zext i8 %gpio.sroa.8.0.copyload to i32
  %shl5 = shl nuw i32 1, %conv4
  %or = or i32 %shl5, %shl
  %conv6 = zext i8 %gpio.sroa.13.0.copyload to i32
  %shl7 = shl nuw i32 1, %conv6
  %or8 = or i32 %or, %shl7
  %12 = trunc i32 %or8 to i16
  %conv9 = xor i16 %12, -1
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %add10 = add i32 %3, 100
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %14 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %13) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  tail call void @arm_heavy_mb() #10
  %conv17 = zext i16 %6 to i32
  %or25 = or i32 %or, %conv17
  %or29 = or i32 %or25, %shl7
  %conv30 = trunc i32 %or29 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv30)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 %15) #10, !srcloc !269
  br label %if.end

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gpio.sroa.18.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 3
  %16 = ptrtoint ptr %gpio.sroa.18.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %gpio.sroa.18.0.copyload = load i8, ptr %gpio.sroa.18.0.arrayidx.sroa_idx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !368
  tail call void @arm_heavy_mb() #10
  %conv39 = zext i8 %gpio.sroa.8.0.copyload to i32
  %shl40 = shl nuw i32 1, %conv39
  %conv42 = zext i8 %gpio.sroa.13.0.copyload to i32
  %shl43 = shl nuw i32 1, %conv42
  %or44 = or i32 %shl43, %shl40
  %conv46 = zext i8 %gpio.sroa.0.0.copyload to i32
  %shl47 = shl nuw i32 1, %conv46
  %or48 = or i32 %or44, %shl47
  %conv49 = zext i8 %gpio.sroa.18.0.copyload to i32
  %shl50 = shl nuw i32 1, %conv49
  %or51 = or i32 %or48, %shl50
  %17 = trunc i32 %or51 to i16
  %conv53 = xor i16 %17, -1
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv53)
  %add54 = add i32 %3, 100
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %19 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %18) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  tail call void @arm_heavy_mb() #10
  %conv61 = zext i16 %6 to i32
  %or68 = or i32 %shl50, %shl47
  %neg69 = xor i32 %or68, -1
  %and70 = and i32 %neg69, %conv61
  %or78 = or i32 %or44, %and70
  %conv79 = trunc i32 %or78 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv79)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 %20) #10, !srcloc !269
  br label %if.end

if.end:                                           ; preds = %do.body35, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_es1968_pcm_free(ptr nocapture noundef readonly %pcm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %area.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %area.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.snd_es1968_free_dmabuf.exit_crit_edge, label %if.end.i

entry.snd_es1968_free_dmabuf.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_free_dmabuf.exit

if.end.i:                                         ; preds = %entry
  %dma.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 8
  tail call void @snd_dma_free_pages(ptr noundef %dma.i) #10
  %buf_list.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf_list.i, align 4
  %cmp.not7.i = icmp eq ptr %5, %buf_list.i
  br i1 %cmp.not7.i, label %if.end.i.snd_es1968_free_dmabuf.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.snd_es1968_free_dmabuf.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_free_dmabuf.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %6 = phi ptr [ %16, %list_del.exit.i.while.body.i_crit_edge ], [ %5, %if.end.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %6, i32 -36
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  %15 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf_list.i, align 4
  %cmp.not.i = icmp eq ptr %16, %buf_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.snd_es1968_free_dmabuf.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del.exit.i.snd_es1968_free_dmabuf.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_free_dmabuf.exit

snd_es1968_free_dmabuf.exit:                      ; preds = %list_del.exit.i.snd_es1968_free_dmabuf.exit_crit_edge, %if.end.i.snd_es1968_free_dmabuf.exit_crit_edge, %entry.snd_es1968_free_dmabuf.exit_crit_edge
  %pcm1 = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %pcm1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pcm1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_pages_fallback(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %apu.026.i = phi i32 [ 0, %entry ], [ %add15.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.es1968, ptr %1, i32 0, i32 25, i32 %apu.026.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp2.i = icmp eq i8 %5, 3
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %add.i = or i32 %apu.026.i, 1
  %arrayidx5.i = getelementptr %struct.es1968, ptr %1, i32 0, i32 25, i32 %add.i
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp7.i = icmp eq i8 %7, 3
  br i1 %cmp7.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add15.i = add nuw nsw i32 %apu.026.i, 2
  %cmp.i = icmp ult i32 %apu.026.i, 62
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end:                                           ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx5.i, align 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 80) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %arrayidx5.i, align 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %arrayidx.i, align 1
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv = trunc i32 %apu.026.i to i8
  %apu = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %apu to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %apu, align 4
  %conv5 = or i8 %conv, 1
  %arrayidx7 = getelementptr %struct.esschan, ptr %call7.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5, ptr %arrayidx7, align 1
  %apu_mode = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %apu_mode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %apu_mode, align 8
  %arrayidx10 = getelementptr %struct.esschan, ptr %call7.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx10, align 1
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %call7.i.i, align 8
  %substream11 = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 14
  %18 = ptrtoint ptr %substream11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %substream, ptr %substream11, align 4
  %mode = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 12
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %mode, align 4
  %private_data12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %20 = ptrtoint ptr %private_data12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %private_data12, align 8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %21 = call ptr @memcpy(ptr %hw, ptr @snd_es1968_playback, i32 64)
  %memory_mutex.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %memory_mutex.i, i32 noundef 0) #10
  %buf_list.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 16
  %22 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn24.i = load ptr, ptr %buf_list.i, align 4
  %cmp.not25.i = icmp eq ptr %.pn24.i, %buf_list.i
  br i1 %cmp.not25.i, label %for.end.thread.i, label %if.end4.for.body.i45_crit_edge

if.end4.for.body.i45_crit_edge:                   ; preds = %if.end4
  br label %for.body.i45

for.end.thread.i:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %memory_mutex.i) #10
  br label %calc_available_memory_size.exit

for.body.i45:                                     ; preds = %for.inc.i47.for.body.i45_crit_edge, %if.end4.for.body.i45_crit_edge
  %.pn27.i = phi ptr [ %.pn.i, %for.inc.i47.for.body.i45_crit_edge ], [ %.pn24.i, %if.end4.for.body.i45_crit_edge ]
  %max_size.026.i = phi i32 [ %max_size.1.i, %for.inc.i47.for.body.i45_crit_edge ], [ 0, %if.end4.for.body.i45_crit_edge ]
  %empty.i = getelementptr i8, ptr %.pn27.i, i32 -4
  %23 = ptrtoint ptr %empty.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %empty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %for.body.i45.for.inc.i47_crit_edge, label %land.lhs.true.i46

for.body.i45.for.inc.i47_crit_edge:               ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i47

land.lhs.true.i46:                                ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  %bytes.i = getelementptr i8, ptr %.pn27.i, i32 -12
  %25 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytes.i, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 %max_size.026.i) #10
  br label %for.inc.i47

for.inc.i47:                                      ; preds = %land.lhs.true.i46, %for.body.i45.for.inc.i47_crit_edge
  %max_size.1.i = phi i32 [ %max_size.026.i, %for.body.i45.for.inc.i47_crit_edge ], [ %27, %land.lhs.true.i46 ]
  %28 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn27.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i47.for.body.i45_crit_edge

for.inc.i47.for.body.i45_crit_edge:               ; preds = %for.inc.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i45

for.end.i:                                        ; preds = %for.inc.i47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %memory_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %max_size.1.i)
  %cmp12.i = icmp sgt i32 %max_size.1.i, 131071
  %spec.select.i = select i1 %cmp12.i, i32 130048, i32 %max_size.1.i
  br label %calc_available_memory_size.exit

calc_available_memory_size.exit:                  ; preds = %for.end.i, %for.end.thread.i
  %29 = phi i32 [ 0, %for.end.thread.i ], [ %spec.select.i, %for.end.i ]
  %period_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %30 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %period_bytes_max, align 4
  %buffer_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 7
  %31 = ptrtoint ptr %buffer_bytes_max to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %buffer_bytes_max, align 4
  %substream_lock = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %substream_lock) #10
  %list = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 15
  %substream_list = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 26
  %32 = ptrtoint ptr %substream_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %substream_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %substream_list, ptr noundef %33) #10
  br i1 %call.i.i, label %if.end.i.i, label %calc_available_memory_size.exit.list_add.exit_crit_edge

calc_available_memory_size.exit.list_add.exit_crit_edge: ; preds = %calc_available_memory_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %calc_available_memory_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list, ptr %prev1.i.i, align 4
  %35 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %substream_list, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %substream_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list, ptr %substream_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %calc_available_memory_size.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %substream_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then3, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %if.then3 ], [ -16, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %substream_lock = getelementptr inbounds %struct.es1968, ptr %5, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %substream_lock) #10
  %list = getelementptr inbounds %struct.esschan, ptr %3, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.esschan, ptr %3, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.esschan, ptr %3, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %substream_lock) #10
  %apu = getelementptr inbounds %struct.esschan, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %apu to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %apu, align 4
  %conv = zext i8 %15 to i32
  %add.i = add nuw nsw i32 %conv, 1
  %arrayidx.i = getelementptr %struct.es1968, ptr %5, i32 0, i32 25, i32 %add.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr %struct.es1968, ptr %5, i32 0, i32 25, i32 %conv
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %arrayidx3.i, align 1
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %memory = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %bytes = getelementptr inbounds %struct.snd_dma_buffer, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.not = icmp ult i32 %11, %7
  br i1 %cmp.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %12 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %dma_bytes, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_es1968_free_memory(ptr noundef %1, ptr noundef nonnull %9)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %call7 = tail call fastcc ptr @snd_es1968_new_memory(ptr noundef %1, i32 noundef %7)
  %13 = ptrtoint ptr %memory to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7, ptr %memory, align 4
  %cmp10 = icmp eq ptr %call7, null
  br i1 %cmp10, label %do.body, label %snd_pcm_set_runtime_buffer.exit

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1968_hw_params.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1968_hw_params, %if.then16)) #10
          to label %cleanup [label %if.then16], !srcloc !362

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1968_hw_params.__UNIQUE_ID_ddebug331, ptr noundef %17, ptr noundef nonnull @.str.50, i32 noundef %7) #10
  br label %cleanup

snd_pcm_set_runtime_buffer.exit:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime1, align 4
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 53
  %20 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7, ptr %dma_buffer_p2.i, align 8
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7, i32 0, i32 1
  %21 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %area.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 50
  %23 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dma_area.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7, i32 0, i32 2
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 51
  %26 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dma_addr.i, align 8
  %bytes.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7, i32 0, i32 3
  %27 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytes.i, align 4
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 52
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 4
  br label %cleanup

cleanup:                                          ; preds = %snd_pcm_set_runtime_buffer.exit, %if.then16, %do.body, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %snd_pcm_set_runtime_buffer.exit ], [ -12, %if.then16 ], [ -12, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %memory = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_es1968_free_memory(ptr noundef %1, ptr noundef nonnull %7)
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %memory, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %9, %7
  %div1.i.i = lshr i32 %mul.i.i, 3
  %dma_size = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div1.i.i, ptr %dma_size, align 4
  %11 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i45 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i.i45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i.i45, align 8
  %mul.i.i46 = mul i32 %15, %13
  %div1.i.i47 = lshr i32 %mul.i.i46, 3
  %frag_size = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %frag_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div1.i.i47, ptr %frag_size, align 4
  %wav_shift = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 9
  %17 = ptrtoint ptr %wav_shift to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %wav_shift, align 4
  %fmt = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 11
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fmt, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %19 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_width(i32 noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp = icmp eq i32 %call4, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fmt, align 4
  %23 = or i8 %22, 2
  store i8 %23, ptr %fmt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp7 = icmp ugt i32 %25, 1
  br i1 %cmp7, label %if.then9, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then9:                                         ; preds = %if.end
  %26 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fmt, align 4
  %28 = or i8 %27, 1
  store i8 %28, ptr %fmt, align 4
  %29 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %if.then9.if.end19_crit_edge, label %if.then16

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %wav_shift to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wav_shift, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %wav_shift, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then9.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %32 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate.i, align 4
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fmt, align 4
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 2, i32 3
  %spec.select.i = shl i32 %33, %spec.select.v.i
  %37 = lshr i8 %35, 1
  %.lobit.i = and i8 %37, 1
  %38 = zext i8 %.lobit.i to i32
  %freq.1.i = shl i32 %spec.select.i, %38
  %39 = ptrtoint ptr %frag_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %frag_size, align 4
  %div.i = udiv i32 %freq.1.i, %40
  %41 = tail call i32 @llvm.smin.i32(i32 %div.i, i32 800) #10
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 200) #10
  %bob_freq = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 13
  %43 = ptrtoint ptr %bob_freq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %bob_freq, align 4
  %mode = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 12
  %44 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mode, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %45, label %if.end19.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
  ]

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_es1968_playback_setup(ptr noundef %1, ptr noundef %5, ptr noundef %3)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_es1968_capture_setup(ptr noundef %1, ptr noundef %5, ptr noundef %3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb, %if.end19.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %substream_lock = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %substream_lock) #10
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge31
    i32 0, label %entry.sw.bb3_crit_edge
    i32 5, label %entry.sw.bb3_crit_edge32
  ]

entry.sw.bb3_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge31
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %bob_freq = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %bob_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bob_freq, align 4
  tail call fastcc void @snd_es1968_bob_inc(ptr noundef %1, i32 noundef %10)
  %count = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %count, align 4
  %hwptr = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %hwptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %hwptr, align 4
  %reg_lock.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i) #10
  %apu.i = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %apu.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %apu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %14)
  %cmp.i.i = icmp ugt i8 %14, 63
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end22.critedge.i.i, !prof !361

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %__apu_set_register.exit.i

if.end22.critedge.i.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %base.i, align 4
  %conv.i.i = zext i8 %14 to i32
  %arrayidx24.i.i = getelementptr %struct.es1968, ptr %1, i32 0, i32 28, i32 %conv.i.i, i32 5
  %17 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx24.i.i, align 2
  %18 = shl i8 %14, 4
  %conv27.i.i = or i8 %18, 5
  %conv28.i.i = zext i8 %conv27.i.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %1, i16 noundef zeroext %conv28.i.i) #10
  tail call fastcc void @apu_data_set(ptr noundef %1, i16 noundef zeroext %16) #10
  br label %__apu_set_register.exit.i

__apu_set_register.exit.i:                        ; preds = %if.end22.critedge.i.i, %do.end.i.i
  %19 = ptrtoint ptr %apu.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %apu.i, align 4
  %conv4.i = zext i8 %20 to i32
  %apu_mode.i = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %apu_mode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %apu_mode.i, align 4
  %conv6.i = zext i8 %22 to i32
  tail call fastcc void @snd_es1968_trigger_apu(ptr noundef %1, i32 noundef %conv4.i, i32 noundef %conv6.i) #10
  %mode.i = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 12
  %23 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp eq i32 %24, 1
  br i1 %cmp.i, label %if.then.i, label %__apu_set_register.exit.i.if.end.i_crit_edge

__apu_set_register.exit.i.if.end.i_crit_edge:     ; preds = %__apu_set_register.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %__apu_set_register.exit.i
  %arrayidx9.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %26)
  %cmp.i77.i = icmp ugt i8 %26, 63
  br i1 %cmp.i77.i, label %do.end.i78.i, label %if.end22.critedge.i83.i, !prof !361

do.end.i78.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %__apu_set_register.exit84.i

if.end22.critedge.i83.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx12.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 10, i32 2
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx12.i, align 4
  %conv.i79.i = zext i8 %26 to i32
  %arrayidx24.i80.i = getelementptr %struct.es1968, ptr %1, i32 0, i32 28, i32 %conv.i79.i, i32 5
  %29 = ptrtoint ptr %arrayidx24.i80.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx24.i80.i, align 2
  %30 = shl i8 %26, 4
  %conv27.i81.i = or i8 %30, 5
  %conv28.i82.i = zext i8 %conv27.i81.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %1, i16 noundef zeroext %conv28.i82.i) #10
  tail call fastcc void @apu_data_set(ptr noundef %1, i16 noundef zeroext %28) #10
  br label %__apu_set_register.exit84.i

__apu_set_register.exit84.i:                      ; preds = %if.end22.critedge.i83.i, %do.end.i78.i
  %31 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx9.i, align 2
  %conv15.i = zext i8 %32 to i32
  %arrayidx17.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx17.i, align 2
  %conv18.i = zext i8 %34 to i32
  tail call fastcc void @snd_es1968_trigger_apu(ptr noundef %1, i32 noundef %conv15.i, i32 noundef %conv18.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %__apu_set_register.exit84.i, %__apu_set_register.exit.i.if.end.i_crit_edge
  %fmt.i = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 11
  %35 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fmt.i, align 4
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.end.i.snd_es1968_pcm_start.exit_crit_edge, label %if.then20.i

if.end.i.snd_es1968_pcm_start.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_pcm_start.exit

if.then20.i:                                      ; preds = %if.end.i
  %arrayidx22.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %39)
  %cmp.i85.i = icmp ugt i8 %39, 63
  br i1 %cmp.i85.i, label %do.end.i86.i, label %if.end22.critedge.i91.i, !prof !361

do.end.i86.i:                                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %__apu_set_register.exit92.i

if.end22.critedge.i91.i:                          ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx25.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx25.i, align 2
  %conv.i87.i = zext i8 %39 to i32
  %arrayidx24.i88.i = getelementptr %struct.es1968, ptr %1, i32 0, i32 28, i32 %conv.i87.i, i32 5
  %42 = ptrtoint ptr %arrayidx24.i88.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx24.i88.i, align 2
  %43 = shl i8 %39, 4
  %conv27.i89.i = or i8 %43, 5
  %conv28.i90.i = zext i8 %conv27.i89.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %1, i16 noundef zeroext %conv28.i90.i) #10
  tail call fastcc void @apu_data_set(ptr noundef %1, i16 noundef zeroext %41) #10
  br label %__apu_set_register.exit92.i

__apu_set_register.exit92.i:                      ; preds = %if.end22.critedge.i91.i, %do.end.i86.i
  %44 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx22.i, align 1
  %conv28.i = zext i8 %45 to i32
  %arrayidx30.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %47 to i32
  tail call fastcc void @snd_es1968_trigger_apu(ptr noundef %1, i32 noundef %conv28.i, i32 noundef %conv31.i) #10
  %48 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp33.i = icmp eq i32 %49, 1
  br i1 %cmp33.i, label %if.then35.i, label %__apu_set_register.exit92.i.snd_es1968_pcm_start.exit_crit_edge

__apu_set_register.exit92.i.snd_es1968_pcm_start.exit_crit_edge: ; preds = %__apu_set_register.exit92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_pcm_start.exit

if.then35.i:                                      ; preds = %__apu_set_register.exit92.i
  %arrayidx37.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx37.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %51)
  %cmp.i93.i = icmp ugt i8 %51, 63
  br i1 %cmp.i93.i, label %do.end.i94.i, label %if.end22.critedge.i99.i, !prof !361

do.end.i94.i:                                     ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %__apu_set_register.exit100.i

if.end22.critedge.i99.i:                          ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx40.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 10, i32 3
  %52 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx40.i, align 2
  %conv.i95.i = zext i8 %51 to i32
  %arrayidx24.i96.i = getelementptr %struct.es1968, ptr %1, i32 0, i32 28, i32 %conv.i95.i, i32 5
  %54 = ptrtoint ptr %arrayidx24.i96.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx24.i96.i, align 2
  %55 = shl i8 %51, 4
  %conv27.i97.i = or i8 %55, 5
  %conv28.i98.i = zext i8 %conv27.i97.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %1, i16 noundef zeroext %conv28.i98.i) #10
  tail call fastcc void @apu_data_set(ptr noundef %1, i16 noundef zeroext %53) #10
  br label %__apu_set_register.exit100.i

__apu_set_register.exit100.i:                     ; preds = %if.end22.critedge.i99.i, %do.end.i94.i
  %56 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx37.i, align 1
  %conv43.i = zext i8 %57 to i32
  %arrayidx45.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 2, i32 3
  %58 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx45.i, align 1
  %conv46.i = zext i8 %59 to i32
  tail call fastcc void @snd_es1968_trigger_apu(ptr noundef %1, i32 noundef %conv43.i, i32 noundef %conv46.i) #10
  br label %snd_es1968_pcm_start.exit

snd_es1968_pcm_start.exit:                        ; preds = %__apu_set_register.exit100.i, %__apu_set_register.exit92.i.snd_es1968_pcm_start.exit_crit_edge, %if.end.i.snd_es1968_pcm_start.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i) #10
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %5, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge32
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool5.not = icmp eq i32 %62, 0
  br i1 %tobool5.not, label %sw.bb3.sw.epilog_crit_edge, label %if.end7

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end7:                                          ; preds = %sw.bb3
  %reg_lock.i24 = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i24) #10
  %apu.i25 = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 1
  %63 = ptrtoint ptr %apu.i25 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %apu.i25, align 4
  %conv.i = zext i8 %64 to i32
  tail call fastcc void @snd_es1968_trigger_apu(ptr noundef %1, i32 noundef %conv.i, i32 noundef 0) #10
  %arrayidx2.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %66 to i32
  tail call fastcc void @snd_es1968_trigger_apu(ptr noundef %1, i32 noundef %conv3.i, i32 noundef 0) #10
  %mode.i26 = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 12
  %67 = ptrtoint ptr %mode.i26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mode.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.i27 = icmp eq i32 %68, 1
  br i1 %cmp.i27, label %if.then.i29, label %if.end7.snd_es1968_pcm_stop.exit_crit_edge

if.end7.snd_es1968_pcm_stop.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_pcm_stop.exit

if.then.i29:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6.i = getelementptr %struct.esschan, ptr %5, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx6.i, align 2
  %conv7.i = zext i8 %70 to i32
  tail call fastcc void @snd_es1968_trigger_apu(ptr noundef %1, i32 noundef %conv7.i, i32 noundef 0) #10
  %arrayidx9.i28 = getelementptr %struct.esschan, ptr %5, i32 0, i32 1, i32 3
  %71 = ptrtoint ptr %arrayidx9.i28 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx9.i28, align 1
  %conv10.i = zext i8 %72 to i32
  tail call fastcc void @snd_es1968_trigger_apu(ptr noundef %1, i32 noundef %conv10.i, i32 noundef 0) #10
  br label %snd_es1968_pcm_stop.exit

snd_es1968_pcm_stop.exit:                         ; preds = %if.then.i29, %if.end7.snd_es1968_pcm_stop.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i24) #10
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %5, align 4
  tail call fastcc void @snd_es1968_bob_dec(ptr noundef %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %snd_es1968_pcm_stop.exit, %sw.bb3.sw.epilog_crit_edge, %snd_es1968_pcm_start.exit, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %substream_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %apu.i = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %apu.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %apu.i, align 4
  %conv.i = zext i8 %7 to i16
  %call.i = tail call fastcc zeroext i16 @apu_get_register(ptr noundef %1, i16 noundef zeroext %conv.i, i8 noundef zeroext 5) #10
  %conv1.i = zext i16 %call.i to i32
  %base.i = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %base.i, align 4
  %conv3.i = zext i16 %9 to i32
  %sub.i = sub nsw i32 %conv1.i, %conv3.i
  %and.i = and i32 %sub.i, 65534
  %wav_shift = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %wav_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wav_shift, align 4
  %shl = shl i32 %and.i, %11
  %12 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime, align 4
  %dma_size = getelementptr inbounds %struct.esschan, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_size, align 4
  %rem = urem i32 %shl, %15
  %mul.i = shl i32 %rem, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %17
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1968_free_memory(ptr noundef %chip, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %memory_mutex = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %memory_mutex, i32 noundef 0) #10
  %empty = getelementptr inbounds %struct.esm_memory, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %empty to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %empty, align 4
  %list = getelementptr inbounds %struct.esm_memory, ptr %buf, i32 0, i32 2
  %prev = getelementptr inbounds %struct.esm_memory, ptr %buf, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev, align 4
  %buf_list = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 16
  %cmp.not = icmp eq ptr %2, %buf_list
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %empty3 = getelementptr i8, ptr %2, i32 -4
  %3 = ptrtoint ptr %empty3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %empty3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.if.end9_crit_edge, label %if.then4

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4:                                         ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %2, i32 -36
  %bytes = getelementptr inbounds %struct.snd_dma_buffer, ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bytes, align 4
  %bytes7 = getelementptr i8, ptr %2, i32 -12
  %7 = ptrtoint ptr %bytes7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes7, align 4
  %add = add i32 %8, %6
  store i32 %add, ptr %bytes7, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then4.list_del.exit_crit_edge
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %16 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev, align 4
  tail call void @kfree(ptr noundef %buf) #10
  br label %if.end9

if.end9:                                          ; preds = %list_del.exit, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %buf.addr.0 = phi ptr [ %add.ptr, %list_del.exit ], [ %buf, %if.then.if.end9_crit_edge ], [ %buf, %entry.if.end9_crit_edge ]
  %list10 = getelementptr inbounds %struct.esm_memory, ptr %buf.addr.0, i32 0, i32 2
  %17 = ptrtoint ptr %list10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %list10, align 4
  %cmp12.not = icmp eq ptr %18, %buf_list
  br i1 %cmp12.not, label %if.end9.if.end29_crit_edge, label %if.then13

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then13:                                        ; preds = %if.end9
  %empty19 = getelementptr i8, ptr %18, i32 -4
  %19 = ptrtoint ptr %empty19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %empty19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  br i1 %tobool20.not, label %if.then13.if.end29_crit_edge, label %if.then21

if.then13.if.end29_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then21:                                        ; preds = %if.then13
  %add.ptr18 = getelementptr i8, ptr %18, i32 -36
  %bytes23 = getelementptr i8, ptr %18, i32 -12
  %21 = ptrtoint ptr %bytes23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytes23, align 4
  %bytes25 = getelementptr inbounds %struct.snd_dma_buffer, ptr %buf.addr.0, i32 0, i32 3
  %23 = ptrtoint ptr %bytes25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bytes25, align 4
  %add26 = add i32 %24, %22
  store i32 %add26, ptr %bytes25, align 4
  %call.i.i49 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #10
  br i1 %call.i.i49, label %if.end.i.i52, label %if.then21.list_del.exit54_crit_edge

if.then21.list_del.exit54_crit_edge:              ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit54

if.end.i.i52:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i50 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i50, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %18, align 4
  %prev1.i.i.i51 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i51, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit54

list_del.exit54:                                  ; preds = %if.end.i.i52, %if.then21.list_del.exit54_crit_edge
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i53 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i53, align 4
  tail call void @kfree(ptr noundef %add.ptr18) #10
  br label %if.end29

if.end29:                                         ; preds = %list_del.exit54, %if.then13.if.end29_crit_edge, %if.end9.if.end29_crit_edge
  tail call void @mutex_unlock(ptr noundef %memory_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @snd_es1968_new_memory(ptr noundef %chip, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %memory_mutex = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %memory_mutex, i32 noundef 0) #10
  %buf_list = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 16
  %0 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn65 = load ptr, ptr %buf_list, align 4
  %cmp.not66 = icmp eq ptr %.pn65, %buf_list
  br i1 %cmp.not66, label %entry.cleanup34_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn67 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn65, %entry.for.body_crit_edge ]
  %empty = getelementptr i8, ptr %.pn67, i32 -4
  %1 = ptrtoint ptr %empty to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bytes = getelementptr i8, ptr %.pn67, i32 -12
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %and)
  %cmp3.not = icmp ult i32 %4, %and
  br i1 %cmp3.not, label %land.lhs.true.for.inc_crit_edge, label %__found

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn67, align 4
  %cmp.not = icmp eq ptr %.pn, %buf_list
  br i1 %cmp.not, label %for.inc.cleanup34_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

__found:                                          ; preds = %land.lhs.true
  %empty.le = getelementptr i8, ptr %.pn67, i32 -4
  %bytes.le = getelementptr i8, ptr %.pn67, i32 -12
  %buf.0.le = getelementptr i8, ptr %.pn67, i32 -36
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %and)
  %cmp12 = icmp ugt i32 %4, %and
  br i1 %cmp12, label %if.then13, label %__found.if.end31_crit_edge

__found.if.end31_crit_edge:                       ; preds = %__found
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then13:                                        ; preds = %__found
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 44) #14
  %cmp14 = icmp eq ptr %call7.i, null
  br i1 %cmp14, label %if.then13.cleanup34_crit_edge, label %if.end17

if.then13.cleanup34_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup34

if.end17:                                         ; preds = %if.then13
  %7 = call ptr @memcpy(ptr %call7.i, ptr %buf.0.le, i32 32)
  %bytes21 = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7.i, i32 0, i32 3
  %8 = ptrtoint ptr %bytes21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes21, align 8
  %sub = sub i32 %9, %and
  store i32 %sub, ptr %bytes21, align 8
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %area, align 8
  %add.ptr23 = getelementptr i8, ptr %11, i32 %and
  store ptr %add.ptr23, ptr %area, align 8
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %add25 = add i32 %13, %and
  store i32 %add25, ptr %addr, align 4
  %empty26 = getelementptr inbounds %struct.esm_memory, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %empty26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %empty26, align 8
  %15 = ptrtoint ptr %bytes.le to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %bytes.le, align 4
  %list29 = getelementptr inbounds %struct.esm_memory, ptr %call7.i, i32 0, i32 2
  %16 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn67, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list29, ptr noundef %.pn67, ptr noundef %17) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.if.end31_crit_edge

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list29, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %list29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %list29, align 4
  %prev3.i.i = getelementptr inbounds %struct.esm_memory, ptr %call7.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.pn67, ptr %prev3.i.i, align 8
  %21 = ptrtoint ptr %.pn67 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list29, ptr %.pn67, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end.i.i, %if.end17.if.end31_crit_edge, %__found.if.end31_crit_edge
  %22 = ptrtoint ptr %empty.le to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %empty.le, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %if.end31, %if.then13.cleanup34_crit_edge, %for.inc.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.1 = phi ptr [ %buf.0.le, %if.end31 ], [ null, %entry.cleanup34_crit_edge ], [ null, %if.then13.cleanup34_crit_edge ], [ null, %for.inc.cleanup34_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %memory_mutex) #10
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1968_playback_setup(ptr noundef %chip, ptr nocapture noundef %es, ptr nocapture noundef readonly %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_size = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 7
  %0 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_size, align 4
  %wav_shift = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 9
  %2 = ptrtoint ptr %wav_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wav_shift, align 4
  %shr = lshr i32 %1, %3
  %fmt = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 11
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fmt, align 4
  %6 = and i8 %5, 1
  %memory = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 3
  %reg_lock.i.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 19
  %io_port.i.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %addr7 = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 8, i32 2
  %conv47 = trunc i32 %shr to i16
  %narrow = add nuw nsw i8 %6, 1
  %7 = zext i8 %narrow to i32
  br label %for.body

for.body:                                         ; preds = %for.inc78.for.body_crit_edge, %entry
  %channel.0318 = phi i32 [ 0, %entry ], [ %inc79, %for.inc78.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.esschan, ptr %es, i32 0, i32 1, i32 %channel.0318
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %memory, align 4
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %sub.i = add i32 %13, 65520
  %and.i = and i32 %sub.i, 65528
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fmt, align 4
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not.i = icmp eq i8 %16, 0
  %or.i = or i32 %and.i, 4
  %spec.select.i = select i1 %tobool2.not.i, i32 %or.i, i32 %and.i
  %17 = shl i8 %15, 1
  %18 = and i8 %17, 2
  %19 = zext i8 %18 to i32
  %20 = or i32 %spec.select.i, %19
  %conv12.i = zext i8 %9 to i16
  %shl.i = shl nuw nsw i16 %conv12.i, 3
  %conv14.i = trunc i32 %20 to i16
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %21 = tail call i16 @llvm.bswap.i16(i16 %shl.i) #10
  %22 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_port.i.i, align 4
  %add.i.i = add i32 %23, 16
  %and.i.i = and i32 %add.i.i, 1048575
  %add8.i.i = or i32 %and.i.i, -18874368
  %24 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #10
  %26 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_port.i.i, align 4
  %add14.i.i = add i32 %27, 18
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %28 = inttoptr i32 %add16.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %25) #10, !srcloc !269
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i.i) #10
  %arrayidx16.i = getelementptr %struct.esschan, ptr %es, i32 0, i32 16, i32 %channel.0318
  %29 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv14.i, ptr %arrayidx16.i, align 2
  %30 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %memory, align 4
  %addr6 = getelementptr inbounds %struct.snd_dma_buffer, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr6, align 4
  %34 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr7, align 4
  %sub = sub i32 %33, %35
  %shr8 = lshr i32 %sub, 1
  %or = or i32 %shr8, 4194304
  %36 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fmt, align 4
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool12.not = icmp eq i8 %38, 0
  br i1 %tobool12.not, label %for.body.if.end25_crit_edge, label %if.then13

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel.0318)
  %tobool14.not = icmp eq i32 %channel.0318, 0
  %or16 = or i32 %shr8, 12582912
  %spec.select214 = select i1 %tobool14.not, i32 %or, i32 %or16
  %39 = lshr i8 %37, 1
  %.lobit = and i8 %39, 1
  %40 = zext i8 %.lobit to i32
  %spec.select215 = lshr i32 %spec.select214, %40
  br label %if.end25

if.end25:                                         ; preds = %if.then13, %for.body.if.end25_crit_edge
  %pa.1 = phi i32 [ %or, %for.body.if.end25_crit_edge ], [ %spec.select215, %if.then13 ]
  %conv27 = trunc i32 %pa.1 to i16
  %arrayidx28 = getelementptr %struct.esschan, ptr %es, i32 0, i32 10, i32 %channel.0318
  %41 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv27, ptr %arrayidx28, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %9)
  %cmp.i.i = icmp ugt i8 %9, 63
  %conv.i.i = zext i8 %9 to i32
  %42 = shl i8 %9, 4
  br label %for.body32

for.body32:                                       ; preds = %apu_set_register.exit.for.body32_crit_edge, %if.end25
  %i.0316 = phi i32 [ 0, %if.end25 ], [ %inc35, %apu_set_register.exit.for.body32_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end22.critedge.i.i, !prof !361

do.end.i.i:                                       ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit

if.end22.critedge.i.i:                            ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  %conv34 = trunc i32 %i.0316 to i8
  %arrayidx24.i.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 %i.0316
  %43 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %arrayidx24.i.i, align 2
  %conv27.i.i = or i8 %42, %conv34
  %conv28.i.i = zext i8 %conv27.i.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 0) #10
  br label %apu_set_register.exit

apu_set_register.exit:                            ; preds = %if.end22.critedge.i.i, %do.end.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i) #10
  %inc35 = add nuw nsw i32 %i.0316, 1
  %exitcond.not = icmp eq i32 %inc35, 16
  br i1 %exitcond.not, label %for.end, label %apu_set_register.exit.for.body32_crit_edge

apu_set_register.exit.for.body32_crit_edge:       ; preds = %apu_set_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

for.end:                                          ; preds = %apu_set_register.exit
  %call2.i217 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i219, label %if.end22.critedge.i.i224, !prof !361

do.end.i.i219:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit225

if.end22.critedge.i.i224:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %44 = lshr i32 %pa.1, 8
  %45 = trunc i32 %44 to i16
  %conv39 = and i16 %45, -256
  %arrayidx24.i.i221 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 4
  %46 = ptrtoint ptr %arrayidx24.i.i221 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv39, ptr %arrayidx24.i.i221, align 2
  %conv27.i.i222 = or i8 %42, 4
  %conv28.i.i223 = zext i8 %conv27.i.i222 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i223) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv39) #10
  br label %apu_set_register.exit225

apu_set_register.exit225:                         ; preds = %if.end22.critedge.i.i224, %do.end.i.i219
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i217) #10
  %call2.i227 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i229, label %if.end22.critedge.i.i234, !prof !361

do.end.i.i229:                                    ; preds = %apu_set_register.exit225
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit235

if.end22.critedge.i.i234:                         ; preds = %apu_set_register.exit225
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i231 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 5
  %47 = ptrtoint ptr %arrayidx24.i.i231 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv27, ptr %arrayidx24.i.i231, align 2
  %conv27.i.i232 = or i8 %42, 5
  %conv28.i.i233 = zext i8 %conv27.i.i232 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i233) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv27) #10
  br label %apu_set_register.exit235

apu_set_register.exit235:                         ; preds = %if.end22.critedge.i.i234, %do.end.i.i229
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i227) #10
  %call2.i237 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i239, label %if.end22.critedge.i.i244, !prof !361

do.end.i.i239:                                    ; preds = %apu_set_register.exit235
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit245

if.end22.critedge.i.i244:                         ; preds = %apu_set_register.exit235
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %pa.1, %shr
  %conv45 = trunc i32 %add to i16
  %arrayidx24.i.i241 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 6
  %48 = ptrtoint ptr %arrayidx24.i.i241 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv45, ptr %arrayidx24.i.i241, align 2
  %conv27.i.i242 = or i8 %42, 6
  %conv28.i.i243 = zext i8 %conv27.i.i242 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i243) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv45) #10
  br label %apu_set_register.exit245

apu_set_register.exit245:                         ; preds = %if.end22.critedge.i.i244, %do.end.i.i239
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i237) #10
  %call2.i247 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i249, label %if.end22.critedge.i.i254, !prof !361

do.end.i.i249:                                    ; preds = %apu_set_register.exit245
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit255

if.end22.critedge.i.i254:                         ; preds = %apu_set_register.exit245
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i251 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 7
  %49 = ptrtoint ptr %arrayidx24.i.i251 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv47, ptr %arrayidx24.i.i251, align 2
  %conv27.i.i252 = or i8 %42, 7
  %conv28.i.i253 = zext i8 %conv27.i.i252 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i253) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv47) #10
  br label %apu_set_register.exit255

apu_set_register.exit255:                         ; preds = %if.end22.critedge.i.i254, %do.end.i.i249
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i247) #10
  %call2.i257 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i259, label %if.end22.critedge.i.i264, !prof !361

do.end.i.i259:                                    ; preds = %apu_set_register.exit255
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit265

if.end22.critedge.i.i264:                         ; preds = %apu_set_register.exit255
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i261 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 8
  %50 = ptrtoint ptr %arrayidx24.i.i261 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %arrayidx24.i.i261, align 2
  %conv27.i.i262 = or i8 %42, 8
  %conv28.i.i263 = zext i8 %conv27.i.i262 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i263) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 0) #10
  br label %apu_set_register.exit265

apu_set_register.exit265:                         ; preds = %if.end22.critedge.i.i264, %do.end.i.i259
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i257) #10
  %call2.i267 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i269, label %if.end22.critedge.i.i274, !prof !361

do.end.i.i269:                                    ; preds = %apu_set_register.exit265
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit275

if.end22.critedge.i.i274:                         ; preds = %apu_set_register.exit265
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i271 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 9
  %51 = ptrtoint ptr %arrayidx24.i.i271 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -12288, ptr %arrayidx24.i.i271, align 2
  %conv27.i.i272 = or i8 %42, 9
  %conv28.i.i273 = zext i8 %conv27.i.i272 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i273) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext -12288) #10
  br label %apu_set_register.exit275

apu_set_register.exit275:                         ; preds = %if.end22.critedge.i.i274, %do.end.i.i269
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i267) #10
  %call2.i277 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i279, label %if.end22.critedge.i.i284, !prof !361

do.end.i.i279:                                    ; preds = %apu_set_register.exit275
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit285

if.end22.critedge.i.i284:                         ; preds = %apu_set_register.exit275
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i281 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 11
  %52 = ptrtoint ptr %arrayidx24.i.i281 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %arrayidx24.i.i281, align 2
  %conv27.i.i282 = or i8 %42, 11
  %conv28.i.i283 = zext i8 %conv27.i.i282 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i283) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 0) #10
  br label %apu_set_register.exit285

apu_set_register.exit285:                         ; preds = %if.end22.critedge.i.i284, %do.end.i.i279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i277) #10
  %call2.i287 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i289, label %if.end22.critedge.i.i293, !prof !361

do.end.i.i289:                                    ; preds = %apu_set_register.exit285
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit294

if.end22.critedge.i.i293:                         ; preds = %apu_set_register.exit285
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i291 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 0
  %53 = ptrtoint ptr %arrayidx24.i.i291 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 16399, ptr %arrayidx24.i.i291, align 2
  %conv28.i.i292 = zext i8 %42 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i292) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 16399) #10
  br label %apu_set_register.exit294

apu_set_register.exit294:                         ; preds = %if.end22.critedge.i.i293, %do.end.i.i289
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i287) #10
  %54 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fmt, align 4
  %56 = and i8 %55, 2
  %57 = xor i8 %56, 3
  %58 = getelementptr %struct.esschan, ptr %es, i32 0, i32 2, i32 %channel.0318
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %57, ptr %58, align 1
  %60 = load i8, ptr %fmt, align 4
  %61 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool64.not = icmp eq i8 %61, 0
  %call2.i306 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %tobool64.not, label %if.else75, label %if.then65

if.then65:                                        ; preds = %apu_set_register.exit294
  br i1 %cmp.i.i, label %do.end.i.i298, label %if.end22.critedge.i.i303, !prof !361

do.end.i.i298:                                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit304

if.end22.critedge.i.i303:                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel.0318)
  %tobool67.not = icmp eq i32 %channel.0318, 0
  %conv69 = select i1 %tobool67.not, i16 -28912, i16 -28928
  %arrayidx24.i.i300 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 10
  %62 = ptrtoint ptr %arrayidx24.i.i300 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv69, ptr %arrayidx24.i.i300, align 2
  %conv27.i.i301 = or i8 %42, 10
  %conv28.i.i302 = zext i8 %conv27.i.i301 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i302) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv69) #10
  br label %apu_set_register.exit304

apu_set_register.exit304:                         ; preds = %if.end22.critedge.i.i303, %do.end.i.i298
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i306) #10
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %58, align 1
  %add73 = add i8 %64, 1
  store i8 %add73, ptr %58, align 1
  br label %for.inc78

if.else75:                                        ; preds = %apu_set_register.exit294
  br i1 %cmp.i.i, label %do.end.i.i308, label %if.end22.critedge.i.i313, !prof !361

do.end.i.i308:                                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit314

if.end22.critedge.i.i313:                         ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i310 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 10
  %65 = ptrtoint ptr %arrayidx24.i.i310 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -28920, ptr %arrayidx24.i.i310, align 2
  %conv27.i.i311 = or i8 %42, 10
  %conv28.i.i312 = zext i8 %conv27.i.i311 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i312) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext -28920) #10
  br label %apu_set_register.exit314

apu_set_register.exit314:                         ; preds = %if.end22.critedge.i.i313, %do.end.i.i308
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i306) #10
  br label %for.inc78

for.inc78:                                        ; preds = %apu_set_register.exit314, %apu_set_register.exit304
  %inc79 = add nuw nsw i32 %channel.0318, 1
  %exitcond321 = icmp eq i32 %inc79, %7
  br i1 %exitcond321, label %do.body81, label %for.inc78.for.body_crit_edge

for.inc78.for.body_crit_edge:                     ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body81:                                        ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #12
  %call84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  tail call void @arm_heavy_mb() #10
  %66 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %io_port.i.i, align 4
  %add90 = add i32 %67, 4
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %68 = inttoptr i32 %add92 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %68, i16 256) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  tail call void @arm_heavy_mb() #10
  %69 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %io_port.i.i, align 4
  %add98 = add i32 %70, 24
  %and99 = and i32 %add98, 1048575
  %add100 = or i32 %and99, -18874368
  %71 = inttoptr i32 %add100 to ptr
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %71) #10, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !372
  %73 = or i16 %72, 1024
  %74 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %io_port.i.i, align 4
  %add108 = add i32 %75, 24
  %and109 = and i32 %add108, 1048575
  %add110 = or i32 %and109, -18874368
  %76 = inttoptr i32 %add110 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %76, i16 %73) #10, !srcloc !269
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call84) #10
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 14
  %77 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rate, align 4
  %79 = tail call i32 @llvm.umin.i32(i32 %78, i32 48000)
  %80 = tail call i32 @llvm.umax.i32(i32 %79, i32 4000)
  %81 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fmt, align 4
  %83 = and i8 %82, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %84 = icmp eq i8 %83, 0
  %shr130 = zext i1 %84 to i32
  %freq.0 = lshr i32 %80, %shr130
  %shl.i315 = shl nuw i32 %freq.0, 16
  %clock.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 3
  %85 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %clock.i, align 4
  %div.i = udiv i32 %shl.i315, %86
  %apu133 = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 1
  %87 = ptrtoint ptr %apu133 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %apu133, align 4
  %conv135 = zext i8 %88 to i32
  tail call fastcc void @snd_es1968_apu_set_freq(ptr noundef %chip, i32 noundef %conv135, i32 noundef %div.i)
  %arrayidx137 = getelementptr %struct.esschan, ptr %es, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %90 to i32
  tail call fastcc void @snd_es1968_apu_set_freq(ptr noundef %chip, i32 noundef %conv138, i32 noundef %div.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1968_capture_setup(ptr noundef %chip, ptr nocapture noundef %es, ptr nocapture noundef readonly %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_size = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 7
  %0 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_size, align 4
  %wav_shift = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 9
  %2 = ptrtoint ptr %wav_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wav_shift, align 4
  %shr = lshr i32 %1, %3
  %mixbuf = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 4
  %4 = ptrtoint ptr %mixbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mixbuf, align 4
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  tail call fastcc void @init_capture_apu(ptr noundef %chip, ptr noundef %es, i32 noundef 2, i32 noundef %7, i32 noundef 256, i32 noundef 9, i32 noundef 20)
  %memory = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 3
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 4
  %addr2 = getelementptr inbounds %struct.snd_dma_buffer, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr2, align 4
  %arrayidx = getelementptr %struct.esschan, ptr %es, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %13 to i32
  tail call fastcc void @init_capture_apu(ptr noundef %chip, ptr noundef %es, i32 noundef 0, i32 noundef %11, i32 noundef %shr, i32 noundef 11, i32 noundef %conv)
  %fmt = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 11
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fmt, align 4
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %mixbuf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mixbuf, align 4
  %addr6 = getelementptr inbounds %struct.snd_dma_buffer, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr6, align 4
  %add = add i32 %20, 512
  tail call fastcc void @init_capture_apu(ptr noundef %chip, ptr noundef %es, i32 noundef 3, i32 noundef %add, i32 noundef 256, i32 noundef 9, i32 noundef 21)
  %21 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %memory, align 4
  %addr9 = getelementptr inbounds %struct.snd_dma_buffer, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %addr9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr9, align 4
  %mul = shl i32 %shr, 1
  %add10 = add i32 %24, %mul
  %arrayidx12 = getelementptr %struct.esschan, ptr %es, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %26 to i32
  tail call fastcc void @init_capture_apu(ptr noundef %chip, ptr noundef %es, i32 noundef 1, i32 noundef %add10, i32 noundef %shr, i32 noundef 11, i32 noundef %conv13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %apu = getelementptr inbounds %struct.esschan, ptr %es, i32 0, i32 1
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 14
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 47999)
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 4000)
  %shl.i = shl nuw i32 %30, 16
  %clock.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 3
  %31 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %clock.i, align 4
  %div.i = udiv i32 %shl.i, %32
  %33 = ptrtoint ptr %apu to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %apu, align 4
  %conv23 = zext i8 %34 to i32
  tail call fastcc void @snd_es1968_apu_set_freq(ptr noundef %chip, i32 noundef %conv23, i32 noundef %div.i)
  %arrayidx25 = getelementptr %struct.esschan, ptr %es, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %36 to i32
  tail call fastcc void @snd_es1968_apu_set_freq(ptr noundef %chip, i32 noundef %conv26, i32 noundef %div.i)
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 2
  %conv29 = zext i8 %38 to i32
  tail call fastcc void @snd_es1968_apu_set_freq(ptr noundef %chip, i32 noundef %conv29, i32 noundef 65536)
  %arrayidx31 = getelementptr %struct.esschan, ptr %es, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %40 to i32
  tail call fastcc void @snd_es1968_apu_set_freq(ptr noundef %chip, i32 noundef %conv32, i32 noundef 65536)
  %reg_lock = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 19
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !373
  tail call void @arm_heavy_mb() #10
  %io_port = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %41 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %io_port, align 4
  %add43 = add i32 %42, 4
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %43 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 256) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_port, align 4
  %add51 = add i32 %45, 24
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %46 = inttoptr i32 %add53 to ptr
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %46) #10, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !375
  %48 = or i16 %47, 1024
  %49 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_port, align 4
  %add60 = add i32 %50, 24
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %51 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %48) #10, !srcloc !269
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call37) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1968_apu_set_freq(ptr noundef %chip, i32 noundef %apu, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %apu to i16
  %call = tail call fastcc zeroext i16 @apu_get_register(ptr noundef %chip, i16 noundef zeroext %conv, i8 noundef zeroext 2)
  %reg_lock.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %conv)
  %cmp.i.i = icmp ugt i16 %conv, 63
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end22.critedge.i.i, !prof !361

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit

if.end22.critedge.i.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %freq.tr = trunc i32 %freq to i16
  %0 = shl i16 %freq.tr, 8
  %1 = and i16 %call, 239
  %2 = or i16 %1, %0
  %conv5 = or i16 %2, 16
  %conv.i.i = and i32 %apu, 65535
  %arrayidx24.i.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 2
  %3 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv5, ptr %arrayidx24.i.i, align 2
  %channel.tr.i.i = trunc i32 %apu to i8
  %4 = shl i8 %channel.tr.i.i, 4
  %conv27.i.i = or i8 %4, 2
  %conv28.i.i = zext i8 %conv27.i.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv5) #10
  br label %apu_set_register.exit

apu_set_register.exit:                            ; preds = %if.end22.critedge.i.i, %do.end.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #10
  %call2.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  br i1 %cmp.i.i, label %do.end.i.i16, label %if.end22.critedge.i.i22, !prof !361

do.end.i.i16:                                     ; preds = %apu_set_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit23

if.end22.critedge.i.i22:                          ; preds = %apu_set_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = lshr i32 %freq, 8
  %conv7 = trunc i32 %5 to i16
  %conv.i.i17 = and i32 %apu, 65535
  %arrayidx24.i.i18 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i17, i32 3
  %6 = ptrtoint ptr %arrayidx24.i.i18 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv7, ptr %arrayidx24.i.i18, align 2
  %channel.tr.i.i19 = trunc i32 %apu to i8
  %7 = shl i8 %channel.tr.i.i19, 4
  %conv27.i.i20 = or i8 %7, 3
  %conv28.i.i21 = zext i8 %conv27.i.i20 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i21) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv7) #10
  br label %apu_set_register.exit23

apu_set_register.exit23:                          ; preds = %if.end22.critedge.i.i22, %do.end.i.i16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i14) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_capture_apu(ptr noundef %chip, ptr nocapture noundef %es, i32 noundef %channel, i32 noundef %pa, i32 noundef %bsize, i32 noundef %mode, i32 noundef %route) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.esschan, ptr %es, i32 0, i32 1, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv2 = trunc i32 %mode to i8
  %arrayidx3 = getelementptr %struct.esschan, ptr %es, i32 0, i32 2, i32 %channel
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %arrayidx3, align 1
  %conv12.i = zext i8 %1 to i16
  %shl.i = shl nuw nsw i16 %conv12.i, 3
  %3 = trunc i32 %pa to i16
  %4 = add i16 %3, -16
  %conv14.i = and i16 %4, -8
  %reg_lock.i.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 19
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %5 = tail call i16 @llvm.bswap.i16(i16 %shl.i) #10
  %io_port.i.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %6 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_port.i.i, align 4
  %add.i.i = add i32 %7, 16
  %and.i.i = and i32 %add.i.i, 1048575
  %add8.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #10
  %10 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_port.i.i, align 4
  %add14.i.i = add i32 %11, 18
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %12 = inttoptr i32 %add16.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 %9) #10, !srcloc !269
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i.i) #10
  %arrayidx16.i = getelementptr %struct.esschan, ptr %es, i32 0, i32 16, i32 %channel
  %13 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14.i, ptr %arrayidx16.i, align 2
  %addr = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  %sub = sub i32 %pa, %15
  %shr = lshr i32 %sub, 1
  %conv4 = trunc i32 %shr to i16
  %arrayidx5 = getelementptr %struct.esschan, ptr %es, i32 0, i32 10, i32 %channel
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv4, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %1)
  %cmp.i.i = icmp ugt i8 %1, 63
  %conv.i.i = zext i8 %1 to i32
  %17 = shl i8 %1, 4
  br label %for.body

for.body:                                         ; preds = %apu_set_register.exit.for.body_crit_edge, %entry
  %i.0165 = phi i32 [ 0, %entry ], [ %inc, %apu_set_register.exit.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end22.critedge.i.i, !prof !361

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit

if.end22.critedge.i.i:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv8 = trunc i32 %i.0165 to i8
  %arrayidx24.i.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 %i.0165
  %18 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %arrayidx24.i.i, align 2
  %conv27.i.i = or i8 %17, %conv8
  %conv28.i.i = zext i8 %conv27.i.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 0) #10
  br label %apu_set_register.exit

apu_set_register.exit:                            ; preds = %if.end22.critedge.i.i, %do.end.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i) #10
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %apu_set_register.exit.for.body_crit_edge

apu_set_register.exit.for.body_crit_edge:         ; preds = %apu_set_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %apu_set_register.exit
  %call2.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i69, label %if.end22.critedge.i.i74, !prof !361

do.end.i.i69:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit75

if.end22.critedge.i.i74:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i71 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 2
  %19 = ptrtoint ptr %arrayidx24.i.i71 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 8, ptr %arrayidx24.i.i71, align 2
  %conv27.i.i72 = or i8 %17, 2
  %conv28.i.i73 = zext i8 %conv27.i.i72 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i73) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 8) #10
  br label %apu_set_register.exit75

apu_set_register.exit75:                          ; preds = %if.end22.critedge.i.i74, %do.end.i.i69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i67) #10
  %call2.i77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i79, label %if.end22.critedge.i.i84, !prof !361

do.end.i.i79:                                     ; preds = %apu_set_register.exit75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit85

if.end22.critedge.i.i84:                          ; preds = %apu_set_register.exit75
  call void @__sanitizer_cov_trace_pc() #12
  %or = lshr i32 %sub, 9
  %20 = trunc i32 %or to i16
  %21 = and i16 %20, -16640
  %conv13 = or i16 %21, 16384
  %arrayidx24.i.i81 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 4
  %22 = ptrtoint ptr %arrayidx24.i.i81 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv13, ptr %arrayidx24.i.i81, align 2
  %conv27.i.i82 = or i8 %17, 4
  %conv28.i.i83 = zext i8 %conv27.i.i82 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i83) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv13) #10
  br label %apu_set_register.exit85

apu_set_register.exit85:                          ; preds = %if.end22.critedge.i.i84, %do.end.i.i79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i77) #10
  %call2.i87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i89, label %if.end22.critedge.i.i94, !prof !361

do.end.i.i89:                                     ; preds = %apu_set_register.exit85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit95

if.end22.critedge.i.i94:                          ; preds = %apu_set_register.exit85
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i91 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 5
  %23 = ptrtoint ptr %arrayidx24.i.i91 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv4, ptr %arrayidx24.i.i91, align 2
  %conv27.i.i92 = or i8 %17, 5
  %conv28.i.i93 = zext i8 %conv27.i.i92 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i93) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv4) #10
  br label %apu_set_register.exit95

apu_set_register.exit95:                          ; preds = %if.end22.critedge.i.i94, %do.end.i.i89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i87) #10
  %call2.i97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i99, label %if.end22.critedge.i.i104, !prof !361

do.end.i.i99:                                     ; preds = %apu_set_register.exit95
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit105

if.end22.critedge.i.i104:                         ; preds = %apu_set_register.exit95
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %shr, %bsize
  %conv19 = trunc i32 %add to i16
  %arrayidx24.i.i101 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 6
  %24 = ptrtoint ptr %arrayidx24.i.i101 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv19, ptr %arrayidx24.i.i101, align 2
  %conv27.i.i102 = or i8 %17, 6
  %conv28.i.i103 = zext i8 %conv27.i.i102 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i103) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv19) #10
  br label %apu_set_register.exit105

apu_set_register.exit105:                         ; preds = %if.end22.critedge.i.i104, %do.end.i.i99
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i97) #10
  %call2.i107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i109, label %if.end22.critedge.i.i114, !prof !361

do.end.i.i109:                                    ; preds = %apu_set_register.exit105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit115

if.end22.critedge.i.i114:                         ; preds = %apu_set_register.exit105
  call void @__sanitizer_cov_trace_pc() #12
  %conv21 = trunc i32 %bsize to i16
  %arrayidx24.i.i111 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 7
  %25 = ptrtoint ptr %arrayidx24.i.i111 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv21, ptr %arrayidx24.i.i111, align 2
  %conv27.i.i112 = or i8 %17, 7
  %conv28.i.i113 = zext i8 %conv27.i.i112 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i113) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv21) #10
  br label %apu_set_register.exit115

apu_set_register.exit115:                         ; preds = %if.end22.critedge.i.i114, %do.end.i.i109
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i107) #10
  %call2.i117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i119, label %if.end22.critedge.i.i124, !prof !361

do.end.i.i119:                                    ; preds = %apu_set_register.exit115
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit125

if.end22.critedge.i.i124:                         ; preds = %apu_set_register.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i121 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 8
  %26 = ptrtoint ptr %arrayidx24.i.i121 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 240, ptr %arrayidx24.i.i121, align 2
  %conv27.i.i122 = or i8 %17, 8
  %conv28.i.i123 = zext i8 %conv27.i.i122 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i123) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 240) #10
  br label %apu_set_register.exit125

apu_set_register.exit125:                         ; preds = %if.end22.critedge.i.i124, %do.end.i.i119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i117) #10
  %call2.i127 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i129, label %if.end22.critedge.i.i134, !prof !361

do.end.i.i129:                                    ; preds = %apu_set_register.exit125
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit135

if.end22.critedge.i.i134:                         ; preds = %apu_set_register.exit125
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i131 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 9
  %27 = ptrtoint ptr %arrayidx24.i.i131 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %arrayidx24.i.i131, align 2
  %conv27.i.i132 = or i8 %17, 9
  %conv28.i.i133 = zext i8 %conv27.i.i132 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i133) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 0) #10
  br label %apu_set_register.exit135

apu_set_register.exit135:                         ; preds = %if.end22.critedge.i.i134, %do.end.i.i129
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i127) #10
  %call2.i137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i139, label %if.end22.critedge.i.i144, !prof !361

do.end.i.i139:                                    ; preds = %apu_set_register.exit135
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit145

if.end22.critedge.i.i144:                         ; preds = %apu_set_register.exit135
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i141 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 10
  %28 = ptrtoint ptr %arrayidx24.i.i141 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -28920, ptr %arrayidx24.i.i141, align 2
  %conv27.i.i142 = or i8 %17, 10
  %conv28.i.i143 = zext i8 %conv27.i.i142 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i143) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext -28920) #10
  br label %apu_set_register.exit145

apu_set_register.exit145:                         ; preds = %if.end22.critedge.i.i144, %do.end.i.i139
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i137) #10
  %call2.i147 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i149, label %if.end22.critedge.i.i154, !prof !361

do.end.i.i149:                                    ; preds = %apu_set_register.exit145
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit155

if.end22.critedge.i.i154:                         ; preds = %apu_set_register.exit145
  call void @__sanitizer_cov_trace_pc() #12
  %conv26 = trunc i32 %route to i16
  %arrayidx24.i.i151 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 11
  %29 = ptrtoint ptr %arrayidx24.i.i151 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv26, ptr %arrayidx24.i.i151, align 2
  %conv27.i.i152 = or i8 %17, 11
  %conv28.i.i153 = zext i8 %conv27.i.i152 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i153) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext %conv26) #10
  br label %apu_set_register.exit155

apu_set_register.exit155:                         ; preds = %if.end22.critedge.i.i154, %do.end.i.i149
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i147) #10
  %call2.i157 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #10
  br i1 %cmp.i.i, label %do.end.i.i159, label %if.end22.critedge.i.i163, !prof !361

do.end.i.i159:                                    ; preds = %apu_set_register.exit155
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %apu_set_register.exit164

if.end22.critedge.i.i163:                         ; preds = %apu_set_register.exit155
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24.i.i161 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 28, i32 %conv.i.i, i32 0
  %30 = ptrtoint ptr %arrayidx24.i.i161 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 16399, ptr %arrayidx24.i.i161, align 2
  %conv28.i.i162 = zext i8 %17 to i16
  tail call fastcc void @apu_index_set(ptr noundef %chip, i16 noundef zeroext %conv28.i.i162) #10
  tail call fastcc void @apu_data_set(ptr noundef %chip, i16 noundef zeroext 16399) #10
  br label %apu_set_register.exit164

apu_set_register.exit164:                         ; preds = %if.end22.critedge.i.i163, %do.end.i.i159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i157) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1968_bob_inc(ptr nocapture noundef %chip, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bobclient = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 22
  %0 = ptrtoint ptr %bobclient to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bobclient, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %bobclient, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %bob_freq = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 23
  br i1 %cmp, label %entry.if.end6.sink.split_crit_edge, label %if.else

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.sink.split

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %bob_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bob_freq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %freq)
  %cmp3 = icmp slt i32 %3, %freq
  br i1 %cmp3, label %if.then4, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 17
  %4 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx11.i.i, align 2
  %6 = and i16 %5, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %io_port.i.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %7 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_port.i.i, align 4
  %add.i.i = add i32 %8, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %9 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 4352) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %10 = tail call i16 @llvm.bswap.i16(i16 %6) #10
  %11 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_port.i.i, align 4
  %and6.i.i = and i32 %12, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %13 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #10, !srcloc !269
  %14 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %6, ptr %arrayidx11.i.i, align 2
  %arrayidx11.i12.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 23
  %15 = ptrtoint ptr %arrayidx11.i12.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx11.i12.i, align 2
  %17 = and i16 %16, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_port.i.i, align 4
  %add.i14.i = add i32 %19, 2
  %and.i15.i = and i32 %add.i14.i, 1048575
  %add1.i16.i = or i32 %and.i15.i, -18874368
  %20 = inttoptr i32 %add1.i16.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 5888) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %21 = tail call i16 @llvm.bswap.i16(i16 %17) #10
  %22 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_port.i.i, align 4
  %and6.i17.i = and i32 %23, 1048575
  %add7.i18.i = or i32 %and6.i17.i, -18874368
  %24 = inttoptr i32 %add7.i18.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #10, !srcloc !269
  %25 = ptrtoint ptr %arrayidx11.i12.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %17, ptr %arrayidx11.i12.i, align 2
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then4, %entry.if.end6.sink.split_crit_edge
  %26 = ptrtoint ptr %bob_freq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %freq, ptr %bob_freq, align 8
  tail call fastcc void @snd_es1968_bob_start(ptr noundef %chip)
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1968_bob_dec(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bobclient = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 22
  %0 = ptrtoint ptr %bobclient to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bobclient, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %bobclient, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp = icmp slt i32 %dec, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 17
  %2 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx11.i.i, align 2
  %4 = and i16 %3, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %io_port.i.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %5 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port.i.i, align 4
  %add.i.i = add i32 %6, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 4352) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %8 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  %9 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_port.i.i, align 4
  %and6.i.i = and i32 %10, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %11 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %8) #10, !srcloc !269
  %12 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %4, ptr %arrayidx11.i.i, align 2
  %arrayidx11.i12.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 23
  %13 = ptrtoint ptr %arrayidx11.i12.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx11.i12.i, align 2
  %15 = and i16 %14, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_port.i.i, align 4
  %add.i14.i = add i32 %17, 2
  %and.i15.i = and i32 %add.i14.i, 1048575
  %add1.i16.i = or i32 %and.i15.i, -18874368
  %18 = inttoptr i32 %add1.i16.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 5888) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %19 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  %20 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_port.i.i, align 4
  %and6.i17.i = and i32 %21, 1048575
  %add7.i18.i = or i32 %and6.i17.i, -18874368
  %22 = inttoptr i32 %add7.i18.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %19) #10, !srcloc !269
  %23 = ptrtoint ptr %arrayidx11.i12.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %15, ptr %arrayidx11.i12.i, align 2
  br label %if.end21

if.else:                                          ; preds = %entry
  %bob_freq = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 23
  %24 = ptrtoint ptr %bob_freq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bob_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %25)
  %cmp2 = icmp sgt i32 %25, 200
  br i1 %cmp2, label %if.then3, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then3:                                         ; preds = %if.else
  %substream_list = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 26
  %26 = ptrtoint ptr %substream_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn49 = load ptr, ptr %substream_list, align 4
  %cmp5.not50 = icmp eq ptr %.pn49, %substream_list
  br i1 %cmp5.not50, label %if.then3.for.end_crit_edge, label %if.then3.for.body_crit_edge

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then3.for.body_crit_edge
  %.pn52 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn49, %if.then3.for.body_crit_edge ]
  %max_freq.051 = phi i32 [ %29, %for.body.for.body_crit_edge ], [ 200, %if.then3.for.body_crit_edge ]
  %bob_freq6 = getelementptr i8, ptr %.pn52, i32 -8
  %27 = ptrtoint ptr %bob_freq6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bob_freq6, align 4
  %29 = tail call i32 @llvm.smax.i32(i32 %max_freq.051, i32 %28)
  %30 = ptrtoint ptr %.pn52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn52, align 4
  %cmp5.not = icmp eq ptr %.pn, %substream_list
  br i1 %cmp5.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then3.for.end_crit_edge
  %max_freq.0.lcssa = phi i32 [ 200, %if.then3.for.end_crit_edge ], [ %29, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_freq.0.lcssa, i32 %25)
  %cmp16.not = icmp eq i32 %max_freq.0.lcssa, %25
  br i1 %cmp16.not, label %for.end.if.end21_crit_edge, label %if.then17

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i.i36 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 17
  %31 = ptrtoint ptr %arrayidx11.i.i36 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx11.i.i36, align 2
  %33 = and i16 %32, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %io_port.i.i37 = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %34 = ptrtoint ptr %io_port.i.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io_port.i.i37, align 4
  %add.i.i38 = add i32 %35, 2
  %and.i.i39 = and i32 %add.i.i38, 1048575
  %add1.i.i40 = or i32 %and.i.i39, -18874368
  %36 = inttoptr i32 %add1.i.i40 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %36, i16 4352) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %37 = tail call i16 @llvm.bswap.i16(i16 %33) #10
  %38 = ptrtoint ptr %io_port.i.i37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_port.i.i37, align 4
  %and6.i.i41 = and i32 %39, 1048575
  %add7.i.i42 = or i32 %and6.i.i41, -18874368
  %40 = inttoptr i32 %add7.i.i42 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 %37) #10, !srcloc !269
  %41 = ptrtoint ptr %arrayidx11.i.i36 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %33, ptr %arrayidx11.i.i36, align 2
  %arrayidx11.i12.i43 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 23
  %42 = ptrtoint ptr %arrayidx11.i12.i43 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx11.i12.i43, align 2
  %44 = and i16 %43, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %io_port.i.i37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %io_port.i.i37, align 4
  %add.i14.i44 = add i32 %46, 2
  %and.i15.i45 = and i32 %add.i14.i44, 1048575
  %add1.i16.i46 = or i32 %and.i15.i45, -18874368
  %47 = inttoptr i32 %add1.i16.i46 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %47, i16 5888) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %48 = tail call i16 @llvm.bswap.i16(i16 %44) #10
  %49 = ptrtoint ptr %io_port.i.i37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_port.i.i37, align 4
  %and6.i17.i47 = and i32 %50, 1048575
  %add7.i18.i48 = or i32 %and6.i17.i47, -18874368
  %51 = inttoptr i32 %add7.i18.i48 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %48) #10, !srcloc !269
  %52 = ptrtoint ptr %arrayidx11.i12.i43 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %44, ptr %arrayidx11.i12.i43, align 2
  %53 = ptrtoint ptr %bob_freq to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %max_freq.0.lcssa, ptr %bob_freq, align 8
  tail call fastcc void @snd_es1968_bob_start(ptr noundef %chip)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %for.end.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1968_bob_start(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bob_freq = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %bob_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bob_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3051, i32 %1)
  %cmp1 = icmp sgt i32 %1, 3051
  br i1 %cmp1, label %entry.while.end_crit_edge, label %for.inc

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1525, i32 %1)
  %cmp1.1 = icmp sgt i32 %1, 1525
  br i1 %cmp1.1, label %for.inc.while.body_crit_edge, label %for.inc.1

for.inc.while.body_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 762, i32 %1)
  %cmp1.2 = icmp sgt i32 %1, 762
  br i1 %cmp1.2, label %for.inc.1.while.body_crit_edge, label %for.inc.2

for.inc.1.while.body_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 381, i32 %1)
  %cmp1.3 = icmp sgt i32 %1, 381
  br i1 %cmp1.3, label %for.inc.2.while.body_crit_edge, label %for.inc.3

for.inc.2.while.body_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 190, i32 %1)
  %cmp1.4 = icmp sgt i32 %1, 190
  br i1 %cmp1.4, label %for.inc.3.while.body_crit_edge, label %for.inc.4

for.inc.3.while.body_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %1)
  %cmp1.5 = icmp sgt i32 %1, 95
  br i1 %cmp1.5, label %for.inc.4.while.body_crit_edge, label %for.inc.5

for.inc.4.while.body_crit_edge:                   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %1)
  %cmp1.6 = icmp sgt i32 %1, 47
  %spec.select95 = select i1 %cmp1.6, i32 11, i32 12
  br label %while.body

while.body:                                       ; preds = %for.inc.5, %for.inc.4.while.body_crit_edge, %for.inc.3.while.body_crit_edge, %for.inc.2.while.body_crit_edge, %for.inc.1.while.body_crit_edge, %for.inc.while.body_crit_edge
  %prescale.184.ph = phi i32 [ 6, %for.inc.while.body_crit_edge ], [ 7, %for.inc.1.while.body_crit_edge ], [ 8, %for.inc.2.while.body_crit_edge ], [ 9, %for.inc.3.while.body_crit_edge ], [ 10, %for.inc.4.while.body_crit_edge ], [ %spec.select95, %for.inc.5 ]
  %dec = add nsw i32 %prescale.184.ph, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %prescale.184.ph)
  %cmp2 = icmp ugt i32 %prescale.184.ph, 6
  br i1 %cmp2, label %while.body.1, label %while.body.while.end.loopexit_crit_edge

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.loopexit

while.body.1:                                     ; preds = %while.body
  %dec.1 = add nsw i32 %prescale.184.ph, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %dec)
  %cmp2.1 = icmp ugt i32 %dec, 6
  br i1 %cmp2.1, label %while.body.2, label %while.body.1.while.end.loopexit_crit_edge

while.body.1.while.end.loopexit_crit_edge:        ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.loopexit

while.body.2:                                     ; preds = %while.body.1
  %dec.2 = add nsw i32 %prescale.184.ph, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %dec.1)
  %cmp2.2 = icmp ugt i32 %dec.1, 6
  br i1 %cmp2.2, label %while.body.3, label %while.body.2.while.end.loopexit_crit_edge

while.body.2.while.end.loopexit_crit_edge:        ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.loopexit

while.body.3:                                     ; preds = %while.body.2
  %dec.3 = add nsw i32 %prescale.184.ph, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %dec.2)
  %cmp2.3 = icmp ugt i32 %dec.2, 6
  br i1 %cmp2.3, label %while.body.4, label %while.body.3.while.end.loopexit_crit_edge

while.body.3.while.end.loopexit_crit_edge:        ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.loopexit

while.body.4:                                     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #12
  %dec.4 = add nsw i32 %prescale.184.ph, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %dec.3)
  %cmp2.4 = icmp ugt i32 %dec.3, 6
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body.4, %while.body.3.while.end.loopexit_crit_edge, %while.body.2.while.end.loopexit_crit_edge, %while.body.1.while.end.loopexit_crit_edge, %while.body.while.end.loopexit_crit_edge
  %dec.lcssa = phi i32 [ %dec, %while.body.while.end.loopexit_crit_edge ], [ %dec.1, %while.body.1.while.end.loopexit_crit_edge ], [ %dec.2, %while.body.2.while.end.loopexit_crit_edge ], [ %dec.3, %while.body.3.while.end.loopexit_crit_edge ], [ %dec.4, %while.body.4 ]
  %shl.lcssa = phi i32 [ 1, %while.body.while.end.loopexit_crit_edge ], [ 2, %while.body.1.while.end.loopexit_crit_edge ], [ 4, %while.body.2.while.end.loopexit_crit_edge ], [ 8, %while.body.3.while.end.loopexit_crit_edge ], [ 16, %while.body.4 ]
  %cmp2.lcssa99 = phi i1 [ %cmp2, %while.body.while.end.loopexit_crit_edge ], [ %cmp2.1, %while.body.1.while.end.loopexit_crit_edge ], [ %cmp2.2, %while.body.2.while.end.loopexit_crit_edge ], [ %cmp2.3, %while.body.3.while.end.loopexit_crit_edge ], [ %cmp2.4, %while.body.4 ]
  %phi.cast = sext i1 %cmp2.lcssa99 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %prescale.1.lcssa = phi i32 [ %dec.lcssa, %while.end.loopexit ], [ 5, %entry.while.end_crit_edge ]
  %divide.0.lcssa = phi i32 [ %shl.lcssa, %while.end.loopexit ], [ 0, %entry.while.end_crit_edge ]
  %cmp2.lcssa = phi i32 [ %phi.cast, %while.end.loopexit ], [ 0, %entry.while.end_crit_edge ]
  %add9 = add i32 %prescale.1.lcssa, 9
  %shr10 = lshr i32 50000000, %add9
  %2 = ptrtoint ptr %bob_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bob_freq, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7.for.cond5_crit_edge, %while.end
  %divide.1 = phi i32 [ %divide.0.lcssa, %while.end ], [ %add11, %for.body7.for.cond5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %divide.1)
  %exitcond.not = icmp eq i32 %divide.1, 31
  br i1 %exitcond.not, label %for.cond5.if.else_crit_edge, label %for.body7

for.cond5.if.else_crit_edge:                      ; preds = %for.cond5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.body7:                                        ; preds = %for.cond5
  %add11 = add i32 %divide.1, 1
  %div = sdiv i32 %shr10, %add11
  %cmp12 = icmp sgt i32 %3, %div
  br i1 %cmp12, label %for.end17, label %for.body7.for.cond5_crit_edge

for.body7.for.cond5_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5

for.end17:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %divide.1)
  %cmp18 = icmp eq i32 %divide.1, 0
  br i1 %cmp18, label %if.then19, label %for.end17.if.else_crit_edge

for.end17.if.else_crit_edge:                      ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then19:                                        ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select = add i32 %prescale.1.lcssa, %cmp2.lcssa
  br label %if.end29

if.else:                                          ; preds = %for.end17.if.else_crit_edge, %for.cond5.if.else_crit_edge
  %divide.189 = phi i32 [ %divide.1, %for.end17.if.else_crit_edge ], [ 31, %for.cond5.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %divide.189)
  %cmp25 = icmp sgt i32 %divide.189, 1
  %dec27 = sext i1 %cmp25 to i32
  %spec.select63 = add i32 %divide.189, %dec27
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then19
  %prescale.2 = phi i32 [ %spec.select, %if.then19 ], [ %prescale.1.lcssa, %if.else ]
  %divide.2 = phi i32 [ 1, %if.then19 ], [ %spec.select63, %if.else ]
  %shl30 = shl i32 %prescale.2, 5
  %or = or i32 %shl30, %divide.2
  %4 = trunc i32 %or to i16
  %conv = or i16 %4, -28672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %io_port.i = getelementptr inbounds %struct.es1968, ptr %chip, i32 0, i32 10
  %5 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_port.i, align 4
  %add.i = add i32 %6, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 1536) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %9 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_port.i, align 4
  %and6.i = and i32 %10, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %11 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %8) #10, !srcloc !269
  %arrayidx.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 6
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %arrayidx.i, align 2
  %arrayidx11.i = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 17
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx11.i, align 2
  %15 = or i16 %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_port.i, align 4
  %add.i65 = add i32 %17, 2
  %and.i66 = and i32 %add.i65, 1048575
  %add1.i67 = or i32 %and.i66, -18874368
  %18 = inttoptr i32 %add1.i67 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 4352) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %19 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  %20 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_port.i, align 4
  %and6.i68 = and i32 %21, 1048575
  %add7.i69 = or i32 %and6.i68, -18874368
  %22 = inttoptr i32 %add7.i69 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %19) #10, !srcloc !269
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %15, ptr %arrayidx11.i, align 2
  %arrayidx11.i71 = getelementptr %struct.es1968, ptr %chip, i32 0, i32 21, i32 23
  %24 = ptrtoint ptr %arrayidx11.i71 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx11.i71, align 2
  %26 = or i16 %25, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_port.i, align 4
  %add.i73 = add i32 %28, 2
  %and.i74 = and i32 %add.i73, 1048575
  %add1.i75 = or i32 %and.i74, -18874368
  %29 = inttoptr i32 %add1.i75 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 5888) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %30 = tail call i16 @llvm.bswap.i16(i16 %26) #10
  %31 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_port.i, align 4
  %and6.i76 = and i32 %32, 1048575
  %add7.i77 = or i32 %and6.i76, -18874368
  %33 = inttoptr i32 %add7.i77 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 %30) #10, !srcloc !269
  %34 = ptrtoint ptr %arrayidx11.i71 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %26, ptr %arrayidx11.i71, align 2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1968_trigger_apu(ptr nocapture noundef %esm, i32 noundef %apu, i32 noundef %mode) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = and i32 %apu, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i.not = icmp eq i32 %0, 0
  br i1 %cmp.i.not, label %if.end22.critedge.i, label %do.end.i7, !prof !294

do.end.i7:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 710, i32 noundef 9, ptr noundef null) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 690, i32 noundef 9, ptr noundef null) #10
  br label %__apu_set_register.exit

if.end22.critedge.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %apu to i8
  %shl.i = shl i8 %conv.i, 4
  %conv26.i = zext i8 %shl.i to i16
  tail call fastcc void @apu_index_set(ptr noundef %esm, i16 noundef zeroext %conv26.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %io_port.i.i = getelementptr inbounds %struct.es1968, ptr %esm, i32 0, i32 10
  %1 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %io_port.i.i, align 4
  %add.i.i = add i32 %2, 2
  %and1.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and1.i.i, -18874368
  %3 = inttoptr i32 %add2.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 0) #10, !srcloc !269
  %4 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_port.i.i, align 4
  %and5.i.i = and i32 %5, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %6 = inttoptr i32 %add6.i.i to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #10, !srcloc !276
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %arrayidx.i.i = getelementptr %struct.es1968, ptr %esm, i32 0, i32 21, i32 0
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx.i.i, align 2
  %10 = and i16 %8, -241
  %mode.tr = trunc i32 %mode to i16
  %11 = shl i16 %mode.tr, 4
  %conv3 = or i16 %10, %11
  %conv.i8 = and i32 %apu, 65535
  %arrayidx24.i = getelementptr %struct.es1968, ptr %esm, i32 0, i32 28, i32 %conv.i8, i32 0
  %12 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv3, ptr %arrayidx24.i, align 2
  tail call fastcc void @apu_index_set(ptr noundef %esm, i16 noundef zeroext %conv26.i) #10
  tail call fastcc void @apu_data_set(ptr noundef %esm, i16 noundef zeroext %conv3) #10
  br label %__apu_set_register.exit

__apu_set_register.exit:                          ; preds = %if.end22.critedge.i, %do.end.i7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %apu.026.i = phi i32 [ 0, %entry ], [ %add15.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.es1968, ptr %3, i32 0, i32 25, i32 %apu.026.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp2.i = icmp eq i8 %5, 3
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %add.i = or i32 %apu.026.i, 1
  %arrayidx5.i = getelementptr %struct.es1968, ptr %3, i32 0, i32 25, i32 %add.i
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp7.i = icmp eq i8 %7, 3
  br i1 %cmp7.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add15.i = add nuw nsw i32 %apu.026.i, 2
  %cmp.i = icmp ult i32 %apu.026.i, 62
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end:                                           ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx5.i, align 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx.i, align 1
  br label %for.body.i91

for.body.i91:                                     ; preds = %for.inc.i99.for.body.i91_crit_edge, %if.end
  %apu.026.i88 = phi i32 [ 0, %if.end ], [ %add15.i97, %for.inc.i99.for.body.i91_crit_edge ]
  %arrayidx.i89 = getelementptr %struct.es1968, ptr %3, i32 0, i32 25, i32 %apu.026.i88
  %10 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp2.i90 = icmp eq i8 %11, 3
  br i1 %cmp2.i90, label %land.lhs.true.i95, label %for.body.i91.for.inc.i99_crit_edge

for.body.i91.for.inc.i99_crit_edge:               ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i99

land.lhs.true.i95:                                ; preds = %for.body.i91
  %add.i92 = or i32 %apu.026.i88, 1
  %arrayidx5.i93 = getelementptr %struct.es1968, ptr %3, i32 0, i32 25, i32 %add.i92
  %12 = ptrtoint ptr %arrayidx5.i93 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5.i93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp7.i94 = icmp eq i8 %13, 3
  br i1 %cmp7.i94, label %if.end5, label %land.lhs.true.i95.for.inc.i99_crit_edge

land.lhs.true.i95.for.inc.i99_crit_edge:          ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i99

for.inc.i99:                                      ; preds = %land.lhs.true.i95.for.inc.i99_crit_edge, %for.body.i91.for.inc.i99_crit_edge
  %add15.i97 = add nuw nsw i32 %apu.026.i88, 2
  %cmp.i98 = icmp ult i32 %apu.026.i88, 62
  br i1 %cmp.i98, label %for.inc.i99.for.body.i91_crit_edge, label %if.then4

for.inc.i99.for.body.i91_crit_edge:               ; preds = %for.inc.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i91

if.then4:                                         ; preds = %for.inc.i99
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %arrayidx5.i, align 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %arrayidx.i, align 1
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.i95
  %16 = ptrtoint ptr %arrayidx5.i93 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %arrayidx5.i93, align 1
  %17 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %arrayidx.i89, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 80) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %arrayidx5.i, align 1
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %arrayidx.i, align 1
  %21 = ptrtoint ptr %arrayidx5.i93 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %arrayidx5.i93, align 1
  %22 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %arrayidx.i89, align 1
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %conv = trunc i32 %apu.026.i to i8
  %apu = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %apu to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %apu, align 4
  %conv9 = or i8 %conv, 1
  %arrayidx11 = getelementptr %struct.esschan, ptr %call7.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv9, ptr %arrayidx11, align 1
  %conv12 = trunc i32 %apu.026.i88 to i8
  %arrayidx14 = getelementptr %struct.esschan, ptr %call7.i.i, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv12, ptr %arrayidx14, align 2
  %conv16 = or i8 %conv12, 1
  %arrayidx18 = getelementptr %struct.esschan, ptr %call7.i.i, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv16, ptr %arrayidx18, align 1
  %apu_mode = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %call7.i.i, align 8
  %substream26 = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 14
  %28 = ptrtoint ptr %apu_mode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %apu_mode, align 8
  %29 = ptrtoint ptr %substream26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %substream, ptr %substream26, align 4
  %mode = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 12
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %mode, align 4
  %call27 = tail call fastcc ptr @snd_es1968_new_memory(ptr noundef %3, i32 noundef 1024)
  %mixbuf = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %mixbuf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call27, ptr %mixbuf, align 8
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %arrayidx5.i, align 1
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %arrayidx.i, align 1
  %34 = ptrtoint ptr %arrayidx5.i93 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %arrayidx5.i93, align 1
  %35 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %arrayidx.i89, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end8
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %call27, i32 0, i32 1
  %36 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %area, align 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 1024)
  %private_data33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %39 = ptrtoint ptr %private_data33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %private_data33, align 8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %40 = call ptr @memcpy(ptr %hw, ptr @snd_es1968_capture, i32 64)
  %memory_mutex.i = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %memory_mutex.i, i32 noundef 0) #10
  %buf_list.i = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 16
  %41 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn24.i = load ptr, ptr %buf_list.i, align 4
  %cmp.not25.i = icmp eq ptr %.pn24.i, %buf_list.i
  br i1 %cmp.not25.i, label %for.end.thread.i, label %if.end31.for.body.i116_crit_edge

if.end31.for.body.i116_crit_edge:                 ; preds = %if.end31
  br label %for.body.i116

for.end.thread.i:                                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %memory_mutex.i) #10
  br label %calc_available_memory_size.exit

for.body.i116:                                    ; preds = %for.inc.i118.for.body.i116_crit_edge, %if.end31.for.body.i116_crit_edge
  %.pn27.i = phi ptr [ %.pn.i, %for.inc.i118.for.body.i116_crit_edge ], [ %.pn24.i, %if.end31.for.body.i116_crit_edge ]
  %max_size.026.i = phi i32 [ %max_size.1.i, %for.inc.i118.for.body.i116_crit_edge ], [ 0, %if.end31.for.body.i116_crit_edge ]
  %empty.i = getelementptr i8, ptr %.pn27.i, i32 -4
  %42 = ptrtoint ptr %empty.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %empty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %for.body.i116.for.inc.i118_crit_edge, label %land.lhs.true.i117

for.body.i116.for.inc.i118_crit_edge:             ; preds = %for.body.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i118

land.lhs.true.i117:                               ; preds = %for.body.i116
  call void @__sanitizer_cov_trace_pc() #12
  %bytes.i = getelementptr i8, ptr %.pn27.i, i32 -12
  %44 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bytes.i, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 %max_size.026.i) #10
  br label %for.inc.i118

for.inc.i118:                                     ; preds = %land.lhs.true.i117, %for.body.i116.for.inc.i118_crit_edge
  %max_size.1.i = phi i32 [ %max_size.026.i, %for.body.i116.for.inc.i118_crit_edge ], [ %46, %land.lhs.true.i117 ]
  %47 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i = load ptr, ptr %.pn27.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i118.for.body.i116_crit_edge

for.inc.i118.for.body.i116_crit_edge:             ; preds = %for.inc.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i116

for.end.i:                                        ; preds = %for.inc.i118
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %memory_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %max_size.1.i)
  %cmp12.i = icmp sgt i32 %max_size.1.i, 131071
  %max_size.1.i.op = add i32 %max_size.1.i, -1024
  %phi.bo = select i1 %cmp12.i, i32 129024, i32 %max_size.1.i.op
  br label %calc_available_memory_size.exit

calc_available_memory_size.exit:                  ; preds = %for.end.i, %for.end.thread.i
  %48 = phi i32 [ -1024, %for.end.thread.i ], [ %phi.bo, %for.end.i ]
  %period_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 9
  %49 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %period_bytes_max, align 4
  %buffer_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 7
  %50 = ptrtoint ptr %buffer_bytes_max to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %buffer_bytes_max, align 4
  %call37 = tail call i32 @snd_pcm_hw_constraint_pow2(ptr noundef %1, i32 noundef 0, i32 noundef 18) #10
  %substream_lock = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %substream_lock) #10
  %list = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 15
  %substream_list = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 26
  %51 = ptrtoint ptr %substream_list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %substream_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %substream_list, ptr noundef %52) #10
  br i1 %call.i.i, label %if.end.i.i, label %calc_available_memory_size.exit.list_add.exit_crit_edge

calc_available_memory_size.exit.list_add.exit_crit_edge: ; preds = %calc_available_memory_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %calc_available_memory_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list, ptr %prev1.i.i, align 4
  %54 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.esschan, ptr %call7.i.i, i32 0, i32 15, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %substream_list, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %substream_list to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list, ptr %substream_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %calc_available_memory_size.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %substream_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then30, %if.then7, %if.then4, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then4 ], [ 0, %list_add.exit ], [ -12, %if.then30 ], [ -12, %if.then7 ], [ -16, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1968_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %substream_lock = getelementptr inbounds %struct.es1968, ptr %5, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %substream_lock) #10
  %list = getelementptr inbounds %struct.esschan, ptr %3, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.esschan, ptr %3, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.esschan, ptr %3, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %substream_lock) #10
  %mixbuf = getelementptr inbounds %struct.esschan, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %mixbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mixbuf, align 4
  tail call fastcc void @snd_es1968_free_memory(ptr noundef %5, ptr noundef %15)
  %apu = getelementptr inbounds %struct.esschan, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %apu to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %apu, align 4
  %conv = zext i8 %17 to i32
  %add.i = add nuw nsw i32 %conv, 1
  %arrayidx.i = getelementptr %struct.es1968, ptr %5, i32 0, i32 25, i32 %add.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr %struct.es1968, ptr %5, i32 0, i32 25, i32 %conv
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %arrayidx3.i, align 1
  %arrayidx6 = getelementptr %struct.esschan, ptr %3, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx6, align 2
  %conv7 = zext i8 %21 to i32
  %add.i19 = add nuw nsw i32 %conv7, 1
  %arrayidx.i20 = getelementptr %struct.es1968, ptr %5, i32 0, i32 25, i32 %add.i19
  %22 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %arrayidx.i20, align 1
  %arrayidx3.i21 = getelementptr %struct.es1968, ptr %5, i32 0, i32 25, i32 %conv7
  %23 = ptrtoint ptr %arrayidx3.i21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %arrayidx3.i21, align 1
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_pow2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_es1968_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %io_port.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec2.i = phi i32 [ 99999, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port.i, align 4
  %add.i = add i32 %3, 48
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !376
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %while.body.i.snd_es1968_ac97_wait.exit_crit_edge, label %if.end.i

while.body.i.snd_es1968_ac97_wait.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_ac97_wait.exit

if.end.i:                                         ; preds = %while.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 615, i32 noundef 0) #10
  %call.i.i = tail call i32 @__cond_resched() #10
  %dec.i = add nsw i32 %dec2.i, -1
  %cmp.not.i = icmp eq i32 %dec2.i, 0
  br i1 %cmp.not.i, label %do.body.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1968_ac97_wait.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1968_ac97_write, %if.then11.i)) #10
          to label %snd_es1968_ac97_wait.exit [label %if.then11.i], !srcloc !362

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %card.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1968_ac97_wait.__UNIQUE_ID_ddebug327, ptr noundef %10, ptr noundef nonnull @.str.52) #10
  br label %snd_es1968_ac97_wait.exit

snd_es1968_ac97_wait.exit:                        ; preds = %if.then11.i, %do.body.i, %while.body.i.snd_es1968_ac97_wait.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !377
  tail call void @arm_heavy_mb() #10
  %11 = tail call i16 @llvm.bswap.i16(i16 %val)
  %12 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port.i, align 4
  %add = add i32 %13, 50
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %14 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %11) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  tail call void @arm_heavy_mb() #10
  %conv = trunc i16 %reg to i8
  %15 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_port.i, align 4
  %add7 = add i32 %16, 48
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %17 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv) #10, !srcloc !272
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_es1968_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %io_port.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec2.i = phi i32 [ 99999, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port.i, align 4
  %add.i = add i32 %3, 48
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !376
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %while.body.i.snd_es1968_ac97_wait.exit_crit_edge, label %if.end.i

while.body.i.snd_es1968_ac97_wait.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_es1968_ac97_wait.exit

if.end.i:                                         ; preds = %while.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 615, i32 noundef 0) #10
  %call.i.i = tail call i32 @__cond_resched() #10
  %dec.i = add nsw i32 %dec2.i, -1
  %cmp.not.i = icmp eq i32 %dec2.i, 0
  br i1 %cmp.not.i, label %do.body.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1968_ac97_wait.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1968_ac97_read, %if.then11.i)) #10
          to label %snd_es1968_ac97_wait.exit [label %if.then11.i], !srcloc !362

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %card.i = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1968_ac97_wait.__UNIQUE_ID_ddebug327, ptr noundef %10, ptr noundef nonnull @.str.52) #10
  br label %snd_es1968_ac97_wait.exit

snd_es1968_ac97_wait.exit:                        ; preds = %if.then11.i, %do.body.i, %while.body.i.snd_es1968_ac97_wait.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !379
  tail call void @arm_heavy_mb() #10
  %11 = trunc i16 %reg to i8
  %conv1 = or i8 %11, -128
  %12 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port.i, align 4
  %add = add i32 %13, 48
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %14 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv1) #10, !srcloc !272
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i21.while.cond.i_crit_edge, %snd_es1968_ac97_wait.exit
  %timeout.0.i = phi i32 [ 100000, %snd_es1968_ac97_wait.exit ], [ %dec.i16, %while.body.i21.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i15 = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i15, label %do.body.i22, label %while.body.i21

while.body.i21:                                   ; preds = %while.cond.i
  %dec.i16 = add nsw i32 %timeout.0.i, -1
  %15 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_port.i, align 4
  %add.i17 = add i32 %16, 48
  %and.i18 = and i32 %add.i17, 1048575
  %add1.i19 = or i32 %and.i18, -18874368
  %17 = inttoptr i32 %add1.i19 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #10, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !380
  %19 = and i8 %18, 1
  %tobool.not.i20 = icmp eq i8 %19, 0
  br i1 %tobool.not.i20, label %if.then, label %while.body.i21.while.cond.i_crit_edge

while.body.i21.while.cond.i_crit_edge:            ; preds = %while.body.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

do.body.i22:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1968_ac97_wait_poll.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1968_ac97_read, %if.then9.i)) #10
          to label %if.end [label %if.then9.i], !srcloc !362

if.then9.i:                                       ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #12
  %card.i23 = getelementptr inbounds %struct.es1968, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %card.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i23, align 8
  %dev.i24 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i24, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1968_ac97_wait_poll.__UNIQUE_ID_ddebug328, ptr noundef %23, ptr noundef nonnull @.str.52) #10
  br label %if.end

if.then:                                          ; preds = %while.body.i21
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port.i, align 4
  %add6 = add i32 %25, 50
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %26 = inttoptr i32 %add8 to ptr
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %26) #10, !srcloc !276
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !381
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then9.i, %do.body.i22
  %data.0 = phi i16 [ %28, %if.then ], [ 0, %do.body.i22 ], [ 0, %if.then9.i ]
  ret i16 %data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es1968_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %do_pm = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %do_pm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %do_pm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %in_suspend = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %in_suspend, align 8
  %hwvol_work = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 32
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %hwvol_work) #10
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %7 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %ac97 = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %9) #10
  %arrayidx11.i.i = getelementptr %struct.es1968, ptr %3, i32 0, i32 21, i32 17
  %10 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx11.i.i, align 2
  %12 = and i16 %11, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %io_port.i.i = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_port.i.i, align 4
  %add.i.i = add i32 %14, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 4352) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %16 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  %17 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_port.i.i, align 4
  %and6.i.i = and i32 %18, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %19 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %16) #10, !srcloc !269
  %20 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %12, ptr %arrayidx11.i.i, align 2
  %arrayidx11.i12.i = getelementptr %struct.es1968, ptr %3, i32 0, i32 21, i32 23
  %21 = ptrtoint ptr %arrayidx11.i12.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx11.i12.i, align 2
  %23 = and i16 %22, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_port.i.i, align 4
  %add.i14.i = add i32 %25, 2
  %and.i15.i = and i32 %add.i14.i, 1048575
  %add1.i16.i = or i32 %and.i15.i, -18874368
  %26 = inttoptr i32 %add1.i16.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 5888) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %27 = tail call i16 @llvm.bswap.i16(i16 %23) #10
  %28 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_port.i.i, align 4
  %and6.i17.i = and i32 %29, 1048575
  %add7.i18.i = or i32 %and6.i17.i, -18874368
  %30 = inttoptr i32 %add7.i18.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 %27) #10, !srcloc !269
  %31 = ptrtoint ptr %arrayidx11.i12.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %23, ptr %arrayidx11.i12.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es1968_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %do_pm = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %do_pm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %do_pm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @snd_es1968_chip_init(ptr noundef %3)
  %addr = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %7, 12
  %conv = trunc i32 %shr to i16
  %reg_lock.i = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %io_port.i = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_port.i, align 4
  %add.i = add i32 %9, 16
  %and.i = and i32 %add.i, 1048575
  %add8.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 -1023) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %12 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port.i, align 4
  %add14.i = add i32 %13, 18
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %14 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %11) #10, !srcloc !269
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %rmidi.i = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 18
  %15 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmidi.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  %spec.select.i = select i1 %tobool.not.i, i16 68, i16 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  tail call void @arm_heavy_mb() #10
  %conv2.i = trunc i16 %spec.select.i to i8
  %io_port.i41 = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %io_port.i41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_port.i41, align 4
  %add.i42 = add i32 %18, 26
  %and.i43 = and i32 %add.i42, 1048575
  %add3.i = or i32 %and.i43, -18874368
  %19 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv2.i) #10, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  tail call void @arm_heavy_mb() #10
  %20 = shl nuw nsw i16 %spec.select.i, 8
  %21 = ptrtoint ptr %io_port.i41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_port.i41, align 4
  %add8.i44 = add i32 %22, 24
  %and9.i = and i32 %add8.i44, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %23 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %20) #10, !srcloc !269
  %ac97 = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 17
  %24 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %25) #10
  %substream_list = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 26
  %26 = ptrtoint ptr %substream_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn45 = load ptr, ptr %substream_list, align 4
  %cmp.not47 = icmp eq ptr %.pn45, %substream_list
  br i1 %cmp.not47, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %.pn48 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn45, %if.end5.for.body_crit_edge ]
  %es.049 = getelementptr i8, ptr %.pn48, i32 -64
  %mode = getelementptr i8, ptr %.pn48, i32 -12
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %28, label %for.body.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %substream = getelementptr i8, ptr %.pn48, i32 -4
  %30 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %substream, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime, align 4
  tail call fastcc void @snd_es1968_playback_setup(ptr noundef %3, ptr noundef %es.049, ptr noundef %33)
  br label %for.inc

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %substream9 = getelementptr i8, ptr %.pn48, i32 -4
  %34 = ptrtoint ptr %substream9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %substream9, align 4
  %runtime10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %runtime10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %runtime10, align 4
  tail call fastcc void @snd_es1968_capture_setup(ptr noundef %3, ptr noundef %es.049, ptr noundef %37)
  br label %for.inc

for.inc:                                          ; preds = %sw.bb8, %sw.bb, %for.body.for.inc_crit_edge
  %38 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, %substream_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %bobclient = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 22
  %39 = ptrtoint ptr %bobclient to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bobclient, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool16.not = icmp eq i32 %40, 0
  br i1 %tobool16.not, label %for.end.if.end18_crit_edge, label %if.then17

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_es1968_bob_start(ptr noundef %3)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.end.if.end18_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %41 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %in_suspend = getelementptr inbounds %struct.es1968, ptr %3, i32 0, i32 20
  %42 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %in_suspend, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !132, !133, !134, !136, !137, !138, !140, !142, !143, !144, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !162, !163, !164, !166, !167, !168, !169, !171, !173, !174, !175, !177, !178, !179, !181, !183, !184, !185, !187, !189, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !206, !208, !209, !210, !212, !214, !216, !218, !219, !220, !222, !223, !225, !227, !229, !230, !231, !232, !234, !236, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255}
!llvm.module.flags = !{!257, !258, !259, !260, !261, !262, !263, !264}
!llvm.ident = !{!265}

!0 = !{ptr @__UNIQUE_ID_description302, !1, !"__UNIQUE_ID_description302", i1 false, i1 false}
!1 = !{!"../sound/pci/es1968.c", i32 108, i32 1}
!2 = !{ptr @__UNIQUE_ID_file303, !3, !"__UNIQUE_ID_file303", i1 false, i1 false}
!3 = !{!"../sound/pci/es1968.c", i32 109, i32 1}
!4 = !{ptr @__UNIQUE_ID_license304, !3, !"__UNIQUE_ID_license304", i1 false, i1 false}
!5 = !{ptr @__param_index, !6, !"__param_index", i1 false, i1 false}
!6 = !{!"../sound/pci/es1968.c", i32 129, i32 1}
!7 = !{ptr @__UNIQUE_ID_indextype305, !6, !"__UNIQUE_ID_indextype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_index306, !9, !"__UNIQUE_ID_index306", i1 false, i1 false}
!9 = !{!"../sound/pci/es1968.c", i32 130, i32 1}
!10 = !{ptr @__param_id, !11, !"__param_id", i1 false, i1 false}
!11 = !{!"../sound/pci/es1968.c", i32 131, i32 1}
!12 = !{ptr @__UNIQUE_ID_idtype307, !11, !"__UNIQUE_ID_idtype307", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_id308, !14, !"__UNIQUE_ID_id308", i1 false, i1 false}
!14 = !{!"../sound/pci/es1968.c", i32 132, i32 1}
!15 = !{ptr @__param_enable, !16, !"__param_enable", i1 false, i1 false}
!16 = !{!"../sound/pci/es1968.c", i32 133, i32 1}
!17 = !{ptr @__UNIQUE_ID_enabletype309, !16, !"__UNIQUE_ID_enabletype309", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_enable310, !19, !"__UNIQUE_ID_enable310", i1 false, i1 false}
!19 = !{!"../sound/pci/es1968.c", i32 134, i32 1}
!20 = !{ptr @__param_total_bufsize, !21, !"__param_total_bufsize", i1 false, i1 false}
!21 = !{!"../sound/pci/es1968.c", i32 135, i32 1}
!22 = !{ptr @__UNIQUE_ID_total_bufsizetype311, !21, !"__UNIQUE_ID_total_bufsizetype311", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_total_bufsize312, !24, !"__UNIQUE_ID_total_bufsize312", i1 false, i1 false}
!24 = !{!"../sound/pci/es1968.c", i32 136, i32 1}
!25 = !{ptr @__param_pcm_substreams_p, !26, !"__param_pcm_substreams_p", i1 false, i1 false}
!26 = !{!"../sound/pci/es1968.c", i32 137, i32 1}
!27 = !{ptr @__UNIQUE_ID_pcm_substreams_ptype313, !26, !"__UNIQUE_ID_pcm_substreams_ptype313", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_pcm_substreams_p314, !29, !"__UNIQUE_ID_pcm_substreams_p314", i1 false, i1 false}
!29 = !{!"../sound/pci/es1968.c", i32 138, i32 1}
!30 = !{ptr @__param_pcm_substreams_c, !31, !"__param_pcm_substreams_c", i1 false, i1 false}
!31 = !{!"../sound/pci/es1968.c", i32 139, i32 1}
!32 = !{ptr @__UNIQUE_ID_pcm_substreams_ctype315, !31, !"__UNIQUE_ID_pcm_substreams_ctype315", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_pcm_substreams_c316, !34, !"__UNIQUE_ID_pcm_substreams_c316", i1 false, i1 false}
!34 = !{!"../sound/pci/es1968.c", i32 140, i32 1}
!35 = !{ptr @__param_clock, !36, !"__param_clock", i1 false, i1 false}
!36 = !{!"../sound/pci/es1968.c", i32 141, i32 1}
!37 = !{ptr @__UNIQUE_ID_clocktype317, !36, !"__UNIQUE_ID_clocktype317", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_clock318, !39, !"__UNIQUE_ID_clock318", i1 false, i1 false}
!39 = !{!"../sound/pci/es1968.c", i32 142, i32 1}
!40 = !{ptr @__param_use_pm, !41, !"__param_use_pm", i1 false, i1 false}
!41 = !{!"../sound/pci/es1968.c", i32 143, i32 1}
!42 = !{ptr @__UNIQUE_ID_use_pmtype319, !41, !"__UNIQUE_ID_use_pmtype319", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_use_pm320, !44, !"__UNIQUE_ID_use_pm320", i1 false, i1 false}
!44 = !{!"../sound/pci/es1968.c", i32 144, i32 1}
!45 = !{ptr @__param_enable_mpu, !46, !"__param_enable_mpu", i1 false, i1 false}
!46 = !{!"../sound/pci/es1968.c", i32 145, i32 1}
!47 = !{ptr @__UNIQUE_ID_enable_mputype321, !46, !"__UNIQUE_ID_enable_mputype321", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_enable_mpu322, !49, !"__UNIQUE_ID_enable_mpu322", i1 false, i1 false}
!49 = !{!"../sound/pci/es1968.c", i32 146, i32 1}
!50 = !{ptr @__param_joystick, !51, !"__param_joystick", i1 false, i1 false}
!51 = !{!"../sound/pci/es1968.c", i32 148, i32 1}
!52 = !{ptr @__UNIQUE_ID_joysticktype323, !51, !"__UNIQUE_ID_joysticktype323", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_joystick324, !54, !"__UNIQUE_ID_joystick324", i1 false, i1 false}
!54 = !{!"../sound/pci/es1968.c", i32 149, i32 1}
!55 = !{ptr @__param_radio_nr, !56, !"__param_radio_nr", i1 false, i1 false}
!56 = !{!"../sound/pci/es1968.c", i32 151, i32 1}
!57 = !{ptr @__UNIQUE_ID_radio_nrtype325, !56, !"__UNIQUE_ID_radio_nrtype325", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_radio_nr326, !59, !"__UNIQUE_ID_radio_nr326", i1 false, i1 false}
!59 = !{!"../sound/pci/es1968.c", i32 152, i32 1}
!60 = !{ptr @__initcall__kmod_snd_es1968__332_2860_es1968_driver_init6, !61, !"__initcall__kmod_snd_es1968__332_2860_es1968_driver_init6", i1 false, i1 false}
!61 = !{!"../sound/pci/es1968.c", i32 2860, i32 1}
!62 = !{ptr @__exitcall_es1968_driver_exit, !61, !"__exitcall_es1968_driver_exit", i1 false, i1 false}
!63 = !{ptr @__param_str_index, !6, !"__param_str_index", i1 false, i1 false}
!64 = !{ptr @__param_arr_index, !6, !"__param_arr_index", i1 false, i1 false}
!65 = !{ptr @index, !66, !"index", i1 false, i1 false}
!66 = !{!"../sound/pci/es1968.c", i32 115, i32 12}
!67 = !{ptr @__param_str_id, !11, !"__param_str_id", i1 false, i1 false}
!68 = !{ptr @__param_arr_id, !11, !"__param_arr_id", i1 false, i1 false}
!69 = !{ptr @id, !70, !"id", i1 false, i1 false}
!70 = !{!"../sound/pci/es1968.c", i32 116, i32 14}
!71 = !{ptr @__param_str_enable, !16, !"__param_str_enable", i1 false, i1 false}
!72 = !{ptr @__param_arr_enable, !16, !"__param_arr_enable", i1 false, i1 false}
!73 = !{ptr @enable, !74, !"enable", i1 false, i1 false}
!74 = !{!"../sound/pci/es1968.c", i32 117, i32 13}
!75 = !{ptr @__param_str_total_bufsize, !21, !"__param_str_total_bufsize", i1 false, i1 false}
!76 = !{ptr @__param_arr_total_bufsize, !21, !"__param_arr_total_bufsize", i1 false, i1 false}
!77 = !{ptr @total_bufsize, !78, !"total_bufsize", i1 false, i1 false}
!78 = !{!"../sound/pci/es1968.c", i32 118, i32 12}
!79 = !{ptr @__param_str_pcm_substreams_p, !26, !"__param_str_pcm_substreams_p", i1 false, i1 false}
!80 = !{ptr @__param_arr_pcm_substreams_p, !26, !"__param_arr_pcm_substreams_p", i1 false, i1 false}
!81 = !{ptr @pcm_substreams_p, !82, !"pcm_substreams_p", i1 false, i1 false}
!82 = !{!"../sound/pci/es1968.c", i32 119, i32 12}
!83 = !{ptr @__param_str_pcm_substreams_c, !31, !"__param_str_pcm_substreams_c", i1 false, i1 false}
!84 = !{ptr @__param_arr_pcm_substreams_c, !31, !"__param_arr_pcm_substreams_c", i1 false, i1 false}
!85 = !{ptr @pcm_substreams_c, !86, !"pcm_substreams_c", i1 false, i1 false}
!86 = !{!"../sound/pci/es1968.c", i32 120, i32 12}
!87 = !{ptr @__param_str_clock, !36, !"__param_str_clock", i1 false, i1 false}
!88 = !{ptr @__param_arr_clock, !36, !"__param_arr_clock", i1 false, i1 false}
!89 = !{ptr @clock, !90, !"clock", i1 false, i1 false}
!90 = !{!"../sound/pci/es1968.c", i32 121, i32 12}
!91 = !{ptr @__param_str_use_pm, !41, !"__param_str_use_pm", i1 false, i1 false}
!92 = !{ptr @__param_arr_use_pm, !41, !"__param_arr_use_pm", i1 false, i1 false}
!93 = !{ptr @use_pm, !94, !"use_pm", i1 false, i1 false}
!94 = !{!"../sound/pci/es1968.c", i32 122, i32 12}
!95 = !{ptr @__param_str_enable_mpu, !46, !"__param_str_enable_mpu", i1 false, i1 false}
!96 = !{ptr @__param_arr_enable_mpu, !46, !"__param_arr_enable_mpu", i1 false, i1 false}
!97 = !{ptr @enable_mpu, !98, !"enable_mpu", i1 false, i1 false}
!98 = !{!"../sound/pci/es1968.c", i32 123, i32 12}
!99 = !{ptr @__param_str_joystick, !51, !"__param_str_joystick", i1 false, i1 false}
!100 = !{ptr @__param_arr_joystick, !51, !"__param_arr_joystick", i1 false, i1 false}
!101 = !{ptr @joystick, !102, !"joystick", i1 false, i1 false}
!102 = !{!"../sound/pci/es1968.c", i32 125, i32 13}
!103 = !{ptr @__param_str_radio_nr, !56, !"__param_str_radio_nr", i1 false, i1 false}
!104 = !{ptr @__param_arr_radio_nr, !56, !"__param_arr_radio_nr", i1 false, i1 false}
!105 = !{ptr @radio_nr, !106, !"radio_nr", i1 false, i1 false}
!106 = !{!"../sound/pci/es1968.c", i32 127, i32 12}
!107 = !{ptr @.str, !61, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @es1968_driver, !109, !"es1968_driver", i1 false, i1 false}
!109 = !{!"../sound/pci/es1968.c", i32 2851, i32 26}
!110 = !{ptr @snd_es1968_ids, !111, !"snd_es1968_ids", i1 false, i1 false}
!111 = !{!"../sound/pci/es1968.c", i32 555, i32 35}
!112 = !{ptr @snd_es1968_probe.dev, !113, !"dev", i1 false, i1 false}
!113 = !{!"../sound/pci/es1968.c", i32 2747, i32 13}
!114 = !{ptr @.str.1, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/es1968.c", i32 2782, i32 24}
!116 = !{ptr @.str.2, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/es1968.c", i32 2783, i32 27}
!118 = !{ptr @.str.3, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/es1968.c", i32 2786, i32 24}
!120 = !{ptr @.str.4, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/es1968.c", i32 2787, i32 27}
!122 = !{ptr @.str.5, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/es1968.c", i32 2790, i32 24}
!124 = !{ptr @.str.6, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/es1968.c", i32 2791, i32 27}
!126 = !{ptr @.str.7, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/es1968.c", i32 2822, i32 4}
!128 = !{ptr @.str.8, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.9, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.10, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.11, !127, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @snd_es1968_probe._entry, !127, !"_entry", i1 false, i1 false}
!133 = !{ptr @snd_es1968_probe._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.13, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/es1968.c", i32 2830, i32 3}
!136 = !{ptr @snd_es1968_probe._entry.12, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @snd_es1968_probe._entry_ptr.14, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.15, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/es1968.c", i32 2840, i32 26}
!140 = !{ptr @.str.16, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/es1968.c", i32 2650, i32 3}
!142 = !{ptr @.str.17, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.18, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @snd_es1968_create._entry, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @snd_es1968_create._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @snd_es1968_create.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../sound/pci/es1968.c", i32 2657, i32 2}
!148 = !{ptr @.str.19, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @snd_es1968_create.__key.20, !150, !"__key", i1 false, i1 false}
!150 = !{!"../sound/pci/es1968.c", i32 2658, i32 2}
!151 = !{ptr @.str.21, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @snd_es1968_create.__key.22, !153, !"__key", i1 false, i1 false}
!153 = !{!"../sound/pci/es1968.c", i32 2661, i32 2}
!154 = !{ptr @.str.23, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @snd_es1968_create.__key.24, !156, !"__key", i1 false, i1 false}
!156 = !{!"../sound/pci/es1968.c", i32 2662, i32 2}
!157 = !{ptr @.str.25, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.26, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/es1968.c", i32 2670, i32 33}
!160 = !{ptr @.str.28, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/es1968.c", i32 2676, i32 3}
!162 = !{ptr @snd_es1968_create._entry.27, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @snd_es1968_create._entry_ptr.29, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.31, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/es1968.c", i32 2707, i32 4}
!166 = !{ptr @.str.32, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @snd_es1968_create._entry.30, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @snd_es1968_create._entry_ptr.33, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.34, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/es1968.c", i32 2726, i32 30}
!171 = !{ptr @.str.36, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/es1968.c", i32 2730, i32 4}
!173 = !{ptr @snd_es1968_create._entry.35, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @snd_es1968_create._entry_ptr.37, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.38, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/es1968.c", i32 672, i32 2}
!177 = !{ptr @.str.39, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @apu_index_set.__UNIQUE_ID_ddebug329, !176, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!179 = distinct !{null, !180, !"pm_allowlist", i1 false, i1 false}
!180 = !{!"../sound/pci/es1968.c", i32 2617, i32 37}
!181 = !{ptr @.str.40, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/es1968.c", i32 684, i32 2}
!183 = !{ptr @.str.41, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @apu_data_set.__UNIQUE_ID_ddebug330, !182, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!185 = !{ptr @snd_es1968_tea_ops, !186, !"snd_es1968_tea_ops", i1 false, i1 false}
!186 = !{!"../sound/pci/es1968.c", i32 2586, i32 37}
!187 = !{ptr @.str.42, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/es1968.c", i32 2530, i32 55}
!189 = !{ptr @.str.43, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/es1968.c", i32 2531, i32 56}
!191 = !{ptr @snd_es1968_tea575x_gpios, !192, !"snd_es1968_tea575x_gpios", i1 false, i1 false}
!192 = !{!"../sound/pci/es1968.c", i32 2529, i32 45}
!193 = !{ptr @.str.44, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/es1968.c", i32 1425, i32 3}
!195 = !{ptr @.str.45, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @snd_es1968_init_dmabuf._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @snd_es1968_init_dmabuf._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.47, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/es1968.c", i32 1432, i32 3}
!200 = !{ptr @snd_es1968_init_dmabuf._entry.46, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @snd_es1968_init_dmabuf._entry_ptr.48, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @snd_es1968_playback_ops, !203, !"snd_es1968_playback_ops", i1 false, i1 false}
!203 = !{!"../sound/pci/es1968.c", i32 1661, i32 33}
!204 = !{ptr @snd_es1968_playback, !205, !"snd_es1968_playback", i1 false, i1 false}
!205 = !{!"../sound/pci/es1968.c", i32 1275, i32 38}
!206 = !{ptr @.str.49, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/es1968.c", i32 1473, i32 3}
!208 = !{ptr @.str.50, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @snd_es1968_hw_params.__UNIQUE_ID_ddebug331, !207, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!210 = !{ptr @snd_es1968_capture_ops, !211, !"snd_es1968_capture_ops", i1 false, i1 false}
!211 = !{!"../sound/pci/es1968.c", i32 1671, i32 33}
!212 = !{ptr @snd_es1968_capture, !213, !"snd_es1968_capture", i1 false, i1 false}
!213 = !{!"../sound/pci/es1968.c", i32 1296, i32 38}
!214 = !{ptr @snd_es1968_mixer.ops, !215, !"ops", i1 false, i1 false}
!215 = !{!"../sound/pci/es1968.c", i32 2012, i32 39}
!216 = !{ptr @.str.51, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/es1968.c", i32 617, i32 2}
!218 = !{ptr @.str.52, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @snd_es1968_ac97_wait.__UNIQUE_ID_ddebug327, !217, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!220 = !{ptr @.str.53, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/es1968.c", i32 629, i32 2}
!222 = !{ptr @snd_es1968_ac97_wait_poll.__UNIQUE_ID_ddebug328, !221, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!223 = distinct !{null, !224, !"mpu_denylist", i1 false, i1 false}
!224 = !{!"../sound/pci/es1968.c", i32 2628, i32 37}
!225 = !{ptr @.str.54, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/pci/es1968.c", i32 2445, i32 6}
!227 = !{ptr @.str.55, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/es1968.c", i32 2452, i32 3}
!229 = !{ptr @.str.56, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @snd_es1968_create_gameport._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @snd_es1968_create_gameport._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.57, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/es1968.c", i32 2460, i32 24}
!234 = !{ptr @.str.58, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/es1968.c", i32 2461, i32 24}
!236 = !{ptr @.str.59, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/es1968.c", i32 2492, i32 43}
!238 = !{ptr @.str.60, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/es1968.c", i32 1701, i32 3}
!240 = !{ptr @.str.61, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @es1968_measure_clock._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @es1968_measure_clock._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.63, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/es1968.c", i32 1706, i32 3}
!245 = !{ptr @es1968_measure_clock._entry.62, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @es1968_measure_clock._entry_ptr.64, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.66, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/pci/es1968.c", i32 1765, i32 3}
!249 = !{ptr @es1968_measure_clock._entry.65, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @es1968_measure_clock._entry_ptr.67, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.69, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/es1968.c", i32 1773, i32 3}
!253 = !{ptr @es1968_measure_clock._entry.68, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @es1968_measure_clock._entry_ptr.70, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @es1968_pm, !256, !"es1968_pm", i1 false, i1 false}
!256 = !{!"../sound/pci/es1968.c", i32 2428, i32 8}
!257 = !{i32 1, !"wchar_size", i32 2}
!258 = !{i32 1, !"min_enum_size", i32 4}
!259 = !{i32 8, !"branch-target-enforcement", i32 0}
!260 = !{i32 8, !"sign-return-address", i32 0}
!261 = !{i32 8, !"sign-return-address-all", i32 0}
!262 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!263 = !{i32 7, !"uwtable", i32 1}
!264 = !{i32 7, !"frame-pointer", i32 2}
!265 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!266 = !{!"auto-init"}
!267 = !{i8 0, i8 2}
!268 = !{i64 2157001023}
!269 = !{i64 760878}
!270 = !{i64 2157001511}
!271 = !{i64 2157094027}
!272 = !{i64 761301}
!273 = !{i64 2157094416}
!274 = !{i64 2157039642}
!275 = !{i64 2157041126}
!276 = !{i64 761078}
!277 = !{i64 2157041813}
!278 = !{i64 2156985310}
!279 = !{i64 2156986229}
!280 = !{i64 1533986, i64 1534013, i64 1534035, i64 1534063}
!281 = !{i64 1534394, i64 1534421, i64 1534454, i64 1534475, i64 1534502, i64 1534528}
!282 = !{i64 761696}
!283 = !{i64 2157046650}
!284 = !{i64 2157046872}
!285 = !{i64 2157047223}
!286 = !{i64 2157047574}
!287 = !{i64 2157047925}
!288 = !{i64 2157048367}
!289 = !{i64 2157049591}
!290 = !{i64 2157050267}
!291 = !{i64 2157050623}
!292 = !{i64 2156983795}
!293 = !{i64 2156984282}
!294 = !{!"branch_weights", i32 2000, i32 1}
!295 = !{i64 2157109442}
!296 = !{i64 2157109922}
!297 = !{i64 2157083127}
!298 = !{i64 2157084182}
!299 = !{i64 2157085378}
!300 = !{i64 2157086401}
!301 = !{i64 2157054733}
!302 = !{i64 2157055938}
!303 = !{i64 2157056611}
!304 = !{i64 2157057946}
!305 = !{i64 2157058619}
!306 = !{i64 2157059002}
!307 = !{i64 2157059887}
!308 = !{i64 2157060145}
!309 = !{i64 2157060621}
!310 = !{i64 2157061097}
!311 = !{i64 2157062115}
!312 = !{i64 2157062598}
!313 = !{i64 2157064049}
!314 = !{i64 2157064733}
!315 = !{i64 2157066084}
!316 = !{i64 2157066768}
!317 = !{i64 2157068119}
!318 = !{i64 2157068803}
!319 = !{i64 2157069193}
!320 = !{i64 2157069669}
!321 = !{i64 2157070554}
!322 = !{i64 2157070807}
!323 = !{i64 2157071283}
!324 = !{i64 2157072301}
!325 = !{i64 2157073729}
!326 = !{i64 2157074402}
!327 = !{i64 2157075737}
!328 = !{i64 2157076410}
!329 = !{i64 2157076815}
!330 = !{i64 2157078242}
!331 = !{i64 2157078914}
!332 = !{i64 2157079296}
!333 = !{i64 2157079780}
!334 = !{i64 2157080721}
!335 = !{i64 2157080537}
!336 = !{i64 2157081054}
!337 = !{i64 2157081387}
!338 = !{i64 2157081720}
!339 = !{i64 2157082053}
!340 = !{i64 2157082386}
!341 = !{i64 2157082719}
!342 = !{i64 761916}
!343 = !{i64 2157087833}
!344 = !{i64 2157088093}
!345 = !{i64 761498}
!346 = !{i64 2157088519}
!347 = !{i64 2157088852}
!348 = !{i64 2157089185}
!349 = !{i64 2157089518}
!350 = !{i64 2157089855}
!351 = !{i64 2157090194}
!352 = !{i64 2157090533}
!353 = !{i64 2157090917}
!354 = !{i64 2157091406}
!355 = !{i64 2157091891}
!356 = !{i64 2157092380}
!357 = !{i64 2157002363}
!358 = !{i64 2157003282}
!359 = !{i64 2157093315}
!360 = !{i64 2157093568}
!361 = !{!"branch_weights", i32 1, i32 2000}
!362 = !{i64 2148228655, i64 2148228660, i64 2148228673, i64 2148228717, i64 2148228751, i64 2148228772}
!363 = !{i64 2157104879}
!364 = !{i64 2157105854}
!365 = !{i64 2157106513}
!366 = !{i64 2157106867}
!367 = !{i64 2157107485}
!368 = !{i64 2157108126}
!369 = !{i64 2157108809}
!370 = !{i64 2157007651}
!371 = !{i64 2157009135}
!372 = !{i64 2157009822}
!373 = !{i64 2157010629}
!374 = !{i64 2157012113}
!375 = !{i64 2157012800}
!376 = !{i64 2156987066}
!377 = !{i64 2156992090}
!378 = !{i64 2156992540}
!379 = !{i64 2156992902}
!380 = !{i64 2156989650}
!381 = !{i64 2156993726}
