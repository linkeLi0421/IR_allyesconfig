; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/ice1712.c_pt.bc'
source_filename = "../sound/pci/ice1712/ice1712.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.88, i32 }
%union.anon.88 = type { ptr }
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
%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_ice1712 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, i32, i32, [6 x i32], [6 x i32], i32, i32, ptr, [2 x ptr], %struct.spinlock, ptr, %struct.snd_ice1712_eeprom, ptr, [20 x i32], i16, i32, i32, i32, %struct.mutex, [4 x ptr], ptr, i32, ptr, %struct.snd_ice1712_spdif, %struct.mutex, ptr, ptr, i32, %struct.ice1712_gpio, %struct.mutex, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8, i32, i8, i32 }
%struct.snd_ice1712_eeprom = type { i32, i8, i8, [32 x i8], i32, i32, i32 }
%struct.snd_ice1712_spdif = type { i8, i8, ptr, %struct.snd_ice1712_spdif_ops }
%struct.snd_ice1712_spdif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice1712_gpio = type { i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_i2c_bus = type { ptr, [32 x i8], %struct.mutex, ptr, %struct.list_head, %struct.list_head, %union.anon.87, ptr, i32, ptr, ptr }
%union.anon.87 = type { ptr }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
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
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.85, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.85 = type { i32, [28 x i8] }

@__UNIQUE_ID_author242 = internal constant [52 x i8] c"snd_ice1712.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [52 x i8] c"snd_ice1712.description=ICEnsemble ICE1712 (Envy24)\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [47 x i8] c"snd_ice1712.file=sound/pci/ice1712/snd-ice1712\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [24 x i8] c"snd_ice1712.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_ice1712.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [40 x i8] c"snd_ice1712.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [58 x i8] c"snd_ice1712.parm=index:Index value for ICE1712 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_ice1712.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [39 x i8] c"snd_ice1712.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [53 x i8] c"snd_ice1712.parm=id:ID string for ICE1712 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_ice1712.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [42 x i8] c"snd_ice1712.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [50 x i8] c"snd_ice1712.parm=enable:Enable ICE1712 soundcard.\00", section ".modinfo", align 1
@__param_str_omni = internal constant [17 x i8] c"snd_ice1712.omni\00", align 1
@__param_arr_omni = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @omni }, align 4
@__param_omni = internal constant %struct.kernel_param { ptr @__param_str_omni, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_omni } }, section "__param", align 4
@__UNIQUE_ID_omnitype252 = internal constant [40 x i8] c"snd_ice1712.parmtype=omni:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_omni253 = internal constant [69 x i8] c"snd_ice1712.parm=omni:Enable Midiman M-Audio Delta Omni I/O support.\00", section ".modinfo", align 1
@__param_str_cs8427_timeout = internal constant [27 x i8] c"snd_ice1712.cs8427_timeout\00", align 1
@__param_arr_cs8427_timeout = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @cs8427_timeout }, align 4
@__param_cs8427_timeout = internal constant %struct.kernel_param { ptr @__param_str_cs8427_timeout, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_cs8427_timeout } }, section "__param", align 4
@__UNIQUE_ID_cs8427_timeouttype254 = internal constant [49 x i8] c"snd_ice1712.parmtype=cs8427_timeout:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_cs8427_timeout255 = internal constant [89 x i8] c"snd_ice1712.parm=cs8427_timeout:Define reset timeout for cs8427 chip in msec resolution.\00", section ".modinfo", align 1
@__param_str_model = internal constant [18 x i8] c"snd_ice1712.model\00", align 1
@__param_arr_model = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @model }, align 4
@__param_model = internal constant %struct.kernel_param { ptr @__param_str_model, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_model } }, section "__param", align 4
@__UNIQUE_ID_modeltype256 = internal constant [42 x i8] c"snd_ice1712.parmtype=model:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_model257 = internal constant [50 x i8] c"snd_ice1712.parm=model:Use the given board model.\00", section ".modinfo", align 1
@__param_str_dxr_enable = internal constant [23 x i8] c"snd_ice1712.dxr_enable\00", align 1
@__param_arr_dxr_enable = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @dxr_enable }, align 4
@__param_dxr_enable = internal constant %struct.kernel_param { ptr @__param_str_dxr_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_dxr_enable } }, section "__param", align 4
@__UNIQUE_ID_dxr_enabletype258 = internal constant [45 x i8] c"snd_ice1712.parmtype=dxr_enable:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_dxr_enable259 = internal constant [70 x i8] c"snd_ice1712.parm=dxr_enable:Enable DXR support for Terratec DMX6FIRE.\00", section ".modinfo", align 1
@snd_ice1712_init_cs8427._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 377, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CS8427 initialization failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_ice1712_init_cs8427\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/ice1712/ice1712.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_ice1712_init_cs8427._entry_ptr = internal global ptr @snd_ice1712_init_cs8427._entry, section ".printk_index", align 4
@snd_ice1712_spdif_default = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_ice1712_spdif_info, ptr @snd_ice1712_spdif_default_get, ptr @snd_ice1712_spdif_default_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_spdif_maskc = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.6, i32 0, i32 1, i32 0, ptr @snd_ice1712_spdif_info, ptr @snd_ice1712_spdif_maskc_get, ptr null, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_spdif_maskp = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.7, i32 0, i32 1, i32 0, ptr @snd_ice1712_spdif_info, ptr @snd_ice1712_spdif_maskp_get, ptr null, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_spdif_stream = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.8, i32 0, i32 259, i32 0, ptr @snd_ice1712_spdif_info, ptr @snd_ice1712_spdif_stream_get, ptr @snd_ice1712_spdif_stream_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_ice1712__261_2746_ice1712_driver_init6 = internal global ptr @ice1712_driver_init, section ".initcall6.init", align 4
@ice1712_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.9, ptr @snd_ice1712_ids, ptr @snd_ice1712_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_ice1712_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ice1712_driver_exit = internal global ptr @ice1712_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@omni = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@cs8427_timeout = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500, i32 500], [32 x i8] zeroinitializer }, align 32
@model = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@dxr_enable = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Pro Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_ice1712\00", [20 x i8] zeroinitializer }, align 32
@snd_ice1712_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5138, i32 5906, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_ice1712_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_ice1712_suspend, ptr @snd_ice1712_resume, ptr @snd_ice1712_suspend, ptr @snd_ice1712_resume, ptr @snd_ice1712_suspend, ptr @snd_ice1712_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_ice1712_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ICE1712\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ICEnsemble ICE1712\00", [45 x i8] zeroinitializer }, align 32
@no_matched = internal constant { %struct.snd_ice1712_card_info, [40 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %d\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %i\00", [44 x i8] zeroinitializer }, align 32
@snd_ice1712_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 2466, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"architecture does not support 28bit PCI busmaster DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_ice1712_create\00", [45 x i8] zeroinitializer }, align 32
@snd_ice1712_create._entry_ptr = internal global ptr @snd_ice1712_create._entry, section ".printk_index", align 4
@snd_ice1712_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ice->reg_lock\00", [17 x i8] zeroinitializer }, align 32
@snd_ice1712_create.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ice->gpio_mutex\00", [47 x i8] zeroinitializer }, align 32
@snd_ice1712_create.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ice->i2c_mutex\00", [16 x i8] zeroinitializer }, align 32
@snd_ice1712_create.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ice->open_mutex\00", [47 x i8] zeroinitializer }, align 32
@snd_ice1712_create._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.2, i32 2511, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_ice1712_create._entry_ptr.25 = internal global ptr @snd_ice1712_create._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ice1712\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s\0A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EEPROM:\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  Subvendor        : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  Size             : %i bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  Version          : %i\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  Codec            : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  ACLink           : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  I2S ID           : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  S/PDIF           : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  GPIO mask        : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  GPIO state       : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  GPIO direction   : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  AC'97 main       : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  AC'97 pcm        : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  AC'97 record     : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  AC'97 record src : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  DAC ID #%i        : 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  ADC ID #%i        : 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  Extra #%02i        : 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0ARegisters:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  PSDOUT03         : 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  CAPTURE          : 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  SPDOUT           : 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  RATE             : 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  GPIO_DATA        : 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  GPIO_WRITE_MASK  : 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  GPIO_DIRECTION   : 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_ice1712_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 2257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No valid ID is found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_ice1712_read_eeprom\00", [40 x i8] zeroinitializer }, align 32
@snd_ice1712_read_eeprom._entry_ptr = internal global ptr @snd_ice1712_read_eeprom._entry, section ".printk_index", align 4
@snd_ice1712_read_eeprom._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 2266, ptr @.str.58, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using board model %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_ice1712_read_eeprom._entry_ptr.59 = internal global ptr @snd_ice1712_read_eeprom._entry.56, section ".printk_index", align 4
@snd_ice1712_read_eeprom.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.55, ptr @.str.2, ptr @.str.60, i8 2, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"using the defined eeprom..\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_ice1712_read_eeprom._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.2, i32 2281, ptr @.str.63, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No matching model found for ID 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_ice1712_read_eeprom._entry_ptr.64 = internal global ptr @snd_ice1712_read_eeprom._entry.61, section ".printk_index", align 4
@snd_ice1712_read_eeprom._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.2, i32 2289, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid EEPROM (size = %i)\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_ice1712_read_eeprom._entry_ptr.67 = internal global ptr @snd_ice1712_read_eeprom._entry.65, section ".printk_index", align 4
@snd_ice1712_read_eeprom._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.55, ptr @.str.2, i32 2295, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid EEPROM version %i\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_ice1712_read_eeprom._entry_ptr.70 = internal global ptr @snd_ice1712_read_eeprom._entry.68, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@PRO_RATE_LOCKED = internal global { i32, [28 x i8] } zeroinitializer, align 32
@snd_ice1712_hoontech_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_ice1712_delta_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_ice1712_ews_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ICE1712 multi\00", [18 x i8] zeroinitializer }, align 32
@snd_ice1712_playback_pro_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ice1712_playback_pro_open, ptr @snd_ice1712_playback_pro_close, ptr null, ptr @snd_ice1712_playback_pro_hw_params, ptr null, ptr @snd_ice1712_playback_pro_prepare, ptr @snd_ice1712_pro_trigger, ptr null, ptr @snd_ice1712_playback_pro_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ice1712_capture_pro_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ice1712_capture_pro_open, ptr @snd_ice1712_capture_pro_close, ptr null, ptr @snd_ice1712_capture_pro_hw_params, ptr null, ptr @snd_ice1712_capture_pro_prepare, ptr @snd_ice1712_pro_trigger, ptr null, ptr @snd_ice1712_capture_pro_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ice1712_playback_pro = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 1024, i32 -2147481602, i32 4000, i32 96000, i32 10, i32 10, i32 262144, i32 80, i32 131040, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates, i32 13, i32 0 }, [20 x i8] zeroinitializer }, align 32
@PRO_RATE_DEFAULT = internal global { i32, [28 x i8] } { i32 44100, [28 x i8] zeroinitializer }, align 32
@rates = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 8000, i32 9600, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000], [44 x i8] zeroinitializer }, align 32
@PRO_RATE_RESET = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@snd_ice1712_capture_pro = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 1024, i32 -2147481602, i32 4000, i32 96000, i32 12, i32 12, i32 262144, i32 96, i32 131040, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_ice1712_multi_playback_ctrls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 10, ptr @snd_ctl_boolean_stereo_info, ptr @snd_ice1712_pro_mixer_switch_get, ptr @snd_ice1712_pro_mixer_switch_put, %union.anon.88 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 19, i32 10, ptr @snd_ice1712_pro_mixer_volume_info, ptr @snd_ice1712_pro_mixer_volume_get, ptr @snd_ice1712_pro_mixer_volume_put, %union.anon.88 { ptr @db_scale_playback }, i32 0 }], [32 x i8] zeroinitializer }, align 32
@snd_ice1712_multi_capture_analog_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @snd_ice1712_pro_mixer_switch_get, ptr @snd_ice1712_pro_mixer_switch_put, %union.anon.88 zeroinitializer, i32 10 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_multi_capture_spdif_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 2, ptr @snd_ctl_boolean_stereo_info, ptr @snd_ice1712_pro_mixer_switch_get, ptr @snd_ice1712_pro_mixer_switch_put, %union.anon.88 zeroinitializer, i32 18 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_multi_capture_analog_volume = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 19, i32 0, ptr @snd_ice1712_pro_mixer_volume_info, ptr @snd_ice1712_pro_mixer_volume_get, ptr @snd_ice1712_pro_mixer_volume_put, %union.anon.88 { ptr @db_scale_playback }, i32 10 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_multi_capture_spdif_volume = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 2, ptr @snd_ice1712_pro_mixer_volume_info, ptr @snd_ice1712_pro_mixer_volume_get, ptr @snd_ice1712_pro_mixer_volume_put, %union.anon.88 zeroinitializer, i32 18 }, [48 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Multi Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Multi Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@db_scale_playback = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -14400, i32 150], [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"H/W Multi Capture Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IEC958 Multi Capture Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"H/W Multi Capture Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IEC958 Multi Capture Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ICE1712 consumer\00", [47 x i8] zeroinitializer }, align 32
@snd_ice1712_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ice1712_playback_open, ptr @snd_ice1712_playback_close, ptr null, ptr null, ptr null, ptr @snd_ice1712_playback_prepare, ptr @snd_ice1712_playback_trigger, ptr null, ptr @snd_ice1712_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ice1712_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ice1712_capture_open, ptr @snd_ice1712_capture_close, ptr null, ptr null, ptr null, ptr @snd_ice1712_capture_prepare, ptr @snd_ice1712_capture_trigger, ptr null, ptr @snd_ice1712_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ice1712_pcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 860, ptr @.str.63, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Consumer PCM code does not work well at the moment --jk\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_ice1712_pcm\00", [16 x i8] zeroinitializer }, align 32
@snd_ice1712_pcm._entry_ptr = internal global ptr @snd_ice1712_pcm._entry, section ".printk_index", align 4
@snd_ice1712_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 65536, i32 64, i32 65536, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_ice1712_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 65536, i32 64, i32 65536, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_ice1712_ac97_mixer.con_ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_ice1712_ac97_write, ptr @snd_ice1712_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_ice1712_ac97_mixer.pro_ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_ice1712_pro_ac97_write, ptr @snd_ice1712_pro_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_ice1712_ac97_mixer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1480, ptr @.str.63, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cannot initialize ac97 for consumer, skipped\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_ice1712_ac97_mixer\00", [41 x i8] zeroinitializer }, align 32
@snd_ice1712_ac97_mixer._entry_ptr = internal global ptr @snd_ice1712_ac97_mixer._entry, section ".printk_index", align 4
@snd_ice1712_mixer_digmix_route_ac97 = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_digmix_route_ac97_get, ptr @snd_ice1712_digmix_route_ac97_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_ac97_mixer._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1498, ptr @.str.63, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot initialize pro ac97, skipped\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_ice1712_ac97_mixer._entry_ptr.86 = internal global ptr @snd_ice1712_ac97_mixer._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ICE1712 - multitrack\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Digital Mixer To AC97\00", [42 x i8] zeroinitializer }, align 32
@snd_ice1712_eeprom = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.89, i32 0, i32 1, i32 0, ptr @snd_ice1712_eeprom_info, ptr @snd_ice1712_eeprom_get, ptr null, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_pro_internal_clock = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_ice1712_pro_internal_clock_info, ptr @snd_ice1712_pro_internal_clock_get, ptr @snd_ice1712_pro_internal_clock_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_pro_internal_clock_default = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_ice1712_pro_internal_clock_default_info, ptr @snd_ice1712_pro_internal_clock_default_get, ptr @snd_ice1712_pro_internal_clock_default_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_pro_rate_locking = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_pro_rate_locking_get, ptr @snd_ice1712_pro_rate_locking_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_pro_rate_reset = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_pro_rate_reset_get, ptr @snd_ice1712_pro_rate_reset_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_mixer_pro_analog_route = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_ice1712_pro_route_info, ptr @snd_ice1712_pro_route_analog_get, ptr @snd_ice1712_pro_route_analog_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_mixer_pro_spdif_route = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 2, ptr @snd_ice1712_pro_route_info, ptr @snd_ice1712_pro_route_spdif_get, ptr @snd_ice1712_pro_route_spdif_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_mixer_pro_volume_rate = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_ice1712_pro_volume_rate_info, ptr @snd_ice1712_pro_volume_rate_get, ptr @snd_ice1712_pro_volume_rate_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_mixer_pro_peak = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.123, i32 0, i32 5, i32 0, ptr @snd_ice1712_pro_peak_info, ptr @snd_ice1712_pro_peak_get, ptr null, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ICE1712 EEPROM\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Multi Track Internal Clock\00", [37 x i8] zeroinitializer }, align 32
@snd_ice1712_pro_internal_clock_info.texts = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8000\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9600\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"11025\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"12000\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16000\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"22050\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"24000\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32000\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"44100\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48000\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"64000\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"88200\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"96000\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IEC958 Input\00", [19 x i8] zeroinitializer }, align 32
@snd_ice1712_pro_internal_clock_get.xlate = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09\06\03\01\07\04\00\0C\08\05\02\0B\FF\FF\FF\0A", [16 x i8] zeroinitializer }, align 32
@snd_ice1712_pro_internal_clock_put.xrate = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 8000, i32 9600, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000], [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Multi Track Internal Clock Default\00", [61 x i8] zeroinitializer }, align 32
@snd_ice1712_pro_internal_clock_default_info.texts = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], [44 x i8] zeroinitializer }, align 32
@snd_ice1712_pro_internal_clock_default_put.xrate = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 8000, i32 9600, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000], [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Multi Track Rate Locking\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Multi Track Rate Reset\00", [41 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"H/W Playback Route\00", [45 x i8] zeroinitializer }, align 32
@snd_ice1712_pro_route_info.texts = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [48 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCM Out\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H/W In 0\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H/W In 1\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H/W In 2\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H/W In 3\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H/W In 4\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H/W In 5\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H/W In 6\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H/W In 7\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IEC958 In L\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IEC958 In R\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Digital Mixer\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Playback Route\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Multi Track Volume Rate\00", [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Multi Track Peak\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ICE1712 consumer (DS)\00", [42 x i8] zeroinitializer }, align 32
@snd_ice1712_playback_ds_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ice1712_playback_ds_open, ptr @snd_ice1712_playback_ds_close, ptr null, ptr null, ptr null, ptr @snd_ice1712_playback_ds_prepare, ptr @snd_ice1712_playback_ds_trigger, ptr null, ptr @snd_ice1712_playback_ds_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ice1712_playback_ds = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 65538, i64 303305239]
@__sancov_gen_cov_switch_values.127 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 9600, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.131 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 9600, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.134 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 377, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [26 x i8] c"snd_ice1712_spdif_default\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1618, i32 38 }
@___asan_gen_.156 = private unnamed_addr constant [24 x i8] c"snd_ice1712_spdif_maskc\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1669, i32 38 }
@___asan_gen_.159 = private unnamed_addr constant [24 x i8] c"snd_ice1712_spdif_maskp\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1678, i32 38 }
@___asan_gen_.162 = private unnamed_addr constant [25 x i8] c"snd_ice1712_spdif_stream\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1705, i32 38 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"ice1712_driver\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2737, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 64, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 65, i32 14 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 66, i32 13 }
@___asan_gen_.177 = private unnamed_addr constant [5 x i8] c"omni\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 68, i32 13 }
@___asan_gen_.180 = private unnamed_addr constant [15 x i8] c"cs8427_timeout\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 69, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 67, i32 14 }
@___asan_gen_.186 = private unnamed_addr constant [11 x i8] c"dxr_enable\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 70, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1621, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1673, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1682, i32 18 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1710, i32 18 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2746, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [16 x i8] c"snd_ice1712_ids\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 88, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant [15 x i8] c"snd_ice1712_pm\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2731, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2539, i32 13 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2558, i32 23 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2559, i32 26 }
@___asan_gen_.219 = private unnamed_addr constant [11 x i8] c"no_matched\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2534, i32 37 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2627, i32 6 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2650, i32 26 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2465, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2477, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2478, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2479, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2480, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2511, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1558, i32 34 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1522, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1523, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1525, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1526, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1527, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1528, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1529, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1530, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1531, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1532, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1533, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1534, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1535, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1536, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1537, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1538, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1540, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1542, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1544, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1546, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1547, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1548, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1549, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1550, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1551, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1552, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1553, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2256, i32 5 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2265, i32 5 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2273, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2280, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2288, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2294, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 979, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant [16 x i8] c"PRO_RATE_LOCKED\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 98, i32 12 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1210, i32 31 }
@___asan_gen_.402 = private unnamed_addr constant [29 x i8] c"snd_ice1712_playback_pro_ops\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1187, i32 33 }
@___asan_gen_.405 = private unnamed_addr constant [28 x i8] c"snd_ice1712_capture_pro_ops\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1196, i32 33 }
@___asan_gen_.408 = private unnamed_addr constant [25 x i8] c"snd_ice1712_playback_pro\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1087, i32 38 }
@___asan_gen_.411 = private unnamed_addr constant [21 x i8] c"hw_constraints_rates\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 894, i32 48 }
@___asan_gen_.414 = private unnamed_addr constant [17 x i8] c"PRO_RATE_DEFAULT\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 100, i32 21 }
@___asan_gen_.417 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 891, i32 27 }
@___asan_gen_.420 = private unnamed_addr constant [15 x i8] c"PRO_RATE_RESET\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 99, i32 12 }
@___asan_gen_.423 = private unnamed_addr constant [24 x i8] c"snd_ice1712_capture_pro\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1106, i32 38 }
@___asan_gen_.426 = private unnamed_addr constant [33 x i8] c"snd_ice1712_multi_playback_ctrls\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1332, i32 38 }
@___asan_gen_.429 = private unnamed_addr constant [40 x i8] c"snd_ice1712_multi_capture_analog_switch\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1356, i32 38 }
@___asan_gen_.432 = private unnamed_addr constant [39 x i8] c"snd_ice1712_multi_capture_spdif_switch\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1365, i32 38 }
@___asan_gen_.435 = private unnamed_addr constant [40 x i8] c"snd_ice1712_multi_capture_analog_volume\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1375, i32 38 }
@___asan_gen_.438 = private unnamed_addr constant [39 x i8] c"snd_ice1712_multi_capture_spdif_volume\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1387, i32 38 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1335, i32 11 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1346, i32 11 }
@___asan_gen_.447 = private unnamed_addr constant [18 x i8] c"db_scale_playback\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1330, i32 14 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1358, i32 10 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1367, i32 10 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1379, i32 10 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1389, i32 10 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 844, i32 31 }
@___asan_gen_.465 = private unnamed_addr constant [25 x i8] c"snd_ice1712_playback_ops\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 815, i32 33 }
@___asan_gen_.468 = private unnamed_addr constant [24 x i8] c"snd_ice1712_capture_ops\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 831, i32 33 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 859, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [21 x i8] c"snd_ice1712_playback\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 692, i32 38 }
@___asan_gen_.483 = private unnamed_addr constant [20 x i8] c"snd_ice1712_capture\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 730, i32 38 }
@___asan_gen_.486 = private unnamed_addr constant [8 x i8] c"con_ops\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1461, i32 39 }
@___asan_gen_.489 = private unnamed_addr constant [8 x i8] c"pro_ops\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1465, i32 39 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1479, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant [36 x i8] c"snd_ice1712_mixer_digmix_route_ac97\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 262, i32 38 }
@___asan_gen_.504 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1497, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1503, i32 31 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 264, i32 10 }
@___asan_gen_.516 = private unnamed_addr constant [19 x i8] c"snd_ice1712_eeprom\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1582, i32 38 }
@___asan_gen_.519 = private unnamed_addr constant [31 x i8] c"snd_ice1712_pro_internal_clock\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1830, i32 38 }
@___asan_gen_.522 = private unnamed_addr constant [39 x i8] c"snd_ice1712_pro_internal_clock_default\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1895, i32 38 }
@___asan_gen_.525 = private unnamed_addr constant [29 x i8] c"snd_ice1712_pro_rate_locking\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1926, i32 38 }
@___asan_gen_.528 = private unnamed_addr constant [27 x i8] c"snd_ice1712_pro_rate_reset\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1957, i32 38 }
@___asan_gen_.531 = private unnamed_addr constant [35 x i8] c"snd_ice1712_mixer_pro_analog_route\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2117, i32 38 }
@___asan_gen_.534 = private unnamed_addr constant [34 x i8] c"snd_ice1712_mixer_pro_spdif_route\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2125, i32 38 }
@___asan_gen_.537 = private unnamed_addr constant [34 x i8] c"snd_ice1712_mixer_pro_volume_rate\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2167, i32 38 }
@___asan_gen_.540 = private unnamed_addr constant [27 x i8] c"snd_ice1712_mixer_pro_peak\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2200, i32 38 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1584, i32 10 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1832, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1756, i32 28 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1757, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1758, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1759, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1760, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1761, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1762, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1763, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1764, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1765, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1766, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1767, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1768, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1769, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1770, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant [6 x i8] c"xlate\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1779, i32 29 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1803, i32 28 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1897, i32 10 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1841, i32 28 }
@___asan_gen_.606 = private unnamed_addr constant [6 x i8] c"xrate\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1881, i32 28 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1928, i32 10 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1959, i32 10 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2119, i32 10 }
@___asan_gen_.618 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1971, i32 28 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1972, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1973, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1973, i32 15 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1973, i32 27 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1973, i32 39 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1974, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1974, i32 15 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1974, i32 27 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1974, i32 39 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1975, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1975, i32 18 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 1976, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2127, i32 10 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2169, i32 10 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 2202, i32 10 }
@___asan_gen_.666 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 870, i32 31 }
@___asan_gen_.669 = private unnamed_addr constant [28 x i8] c"snd_ice1712_playback_ds_ops\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 823, i32 33 }
@___asan_gen_.672 = private unnamed_addr constant [24 x i8] c"snd_ice1712_playback_ds\00", align 1
@___asan_gen_.673 = private constant [31 x i8] c"../sound/pci/ice1712/ice1712.c\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.673, i32 711, i32 38 }
@llvm.compiler.used = appending global [219 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_cs8427_timeout255, ptr @__UNIQUE_ID_cs8427_timeouttype254, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_dxr_enable259, ptr @__UNIQUE_ID_dxr_enabletype258, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_model257, ptr @__UNIQUE_ID_modeltype256, ptr @__UNIQUE_ID_omni253, ptr @__UNIQUE_ID_omnitype252, ptr @__exitcall_ice1712_driver_exit, ptr @__initcall__kmod_snd_ice1712__261_2746_ice1712_driver_init6, ptr @__param_cs8427_timeout, ptr @__param_dxr_enable, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_model, ptr @__param_omni, ptr @ice1712_driver_exit, ptr @snd_ice1712_ac97_mixer._entry, ptr @snd_ice1712_ac97_mixer._entry.84, ptr @snd_ice1712_ac97_mixer._entry_ptr, ptr @snd_ice1712_ac97_mixer._entry_ptr.86, ptr @snd_ice1712_create._entry, ptr @snd_ice1712_create._entry.23, ptr @snd_ice1712_create._entry_ptr, ptr @snd_ice1712_create._entry_ptr.25, ptr @snd_ice1712_init_cs8427._entry, ptr @snd_ice1712_init_cs8427._entry_ptr, ptr @snd_ice1712_pcm._entry, ptr @snd_ice1712_pcm._entry_ptr, ptr @snd_ice1712_read_eeprom._entry, ptr @snd_ice1712_read_eeprom._entry.56, ptr @snd_ice1712_read_eeprom._entry.61, ptr @snd_ice1712_read_eeprom._entry.65, ptr @snd_ice1712_read_eeprom._entry.68, ptr @snd_ice1712_read_eeprom._entry_ptr, ptr @snd_ice1712_read_eeprom._entry_ptr.59, ptr @snd_ice1712_read_eeprom._entry_ptr.64, ptr @snd_ice1712_read_eeprom._entry_ptr.67, ptr @snd_ice1712_read_eeprom._entry_ptr.70, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @snd_ice1712_spdif_default, ptr @snd_ice1712_spdif_maskc, ptr @snd_ice1712_spdif_maskp, ptr @snd_ice1712_spdif_stream, ptr @ice1712_driver, ptr @index, ptr @id, ptr @enable, ptr @omni, ptr @cs8427_timeout, ptr @model, ptr @dxr_enable, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @snd_ice1712_ids, ptr @snd_ice1712_pm, ptr @snd_ice1712_probe.dev, ptr @.str.10, ptr @.str.11, ptr @no_matched, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @snd_ice1712_create.__key, ptr @.str.16, ptr @snd_ice1712_create.__key.17, ptr @.str.18, ptr @snd_ice1712_create.__key.19, ptr @.str.20, ptr @snd_ice1712_create.__key.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @PRO_RATE_LOCKED, ptr @.str.72, ptr @snd_ice1712_playback_pro_ops, ptr @snd_ice1712_capture_pro_ops, ptr @snd_ice1712_playback_pro, ptr @hw_constraints_rates, ptr @PRO_RATE_DEFAULT, ptr @rates, ptr @PRO_RATE_RESET, ptr @snd_ice1712_capture_pro, ptr @snd_ice1712_multi_playback_ctrls, ptr @snd_ice1712_multi_capture_analog_switch, ptr @snd_ice1712_multi_capture_spdif_switch, ptr @snd_ice1712_multi_capture_analog_volume, ptr @snd_ice1712_multi_capture_spdif_volume, ptr @.str.73, ptr @.str.74, ptr @db_scale_playback, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @snd_ice1712_playback_ops, ptr @snd_ice1712_capture_ops, ptr @.str.80, ptr @.str.81, ptr @snd_ice1712_playback, ptr @snd_ice1712_capture, ptr @snd_ice1712_ac97_mixer.con_ops, ptr @snd_ice1712_ac97_mixer.pro_ops, ptr @.str.82, ptr @.str.83, ptr @snd_ice1712_mixer_digmix_route_ac97, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @snd_ice1712_eeprom, ptr @snd_ice1712_pro_internal_clock, ptr @snd_ice1712_pro_internal_clock_default, ptr @snd_ice1712_pro_rate_locking, ptr @snd_ice1712_pro_rate_reset, ptr @snd_ice1712_mixer_pro_analog_route, ptr @snd_ice1712_mixer_pro_spdif_route, ptr @snd_ice1712_mixer_pro_volume_rate, ptr @snd_ice1712_mixer_pro_peak, ptr @.str.89, ptr @.str.90, ptr @snd_ice1712_pro_internal_clock_info.texts, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @snd_ice1712_pro_internal_clock_get.xlate, ptr @snd_ice1712_pro_internal_clock_put.xrate, ptr @.str.105, ptr @snd_ice1712_pro_internal_clock_default_info.texts, ptr @snd_ice1712_pro_internal_clock_default_put.xrate, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @snd_ice1712_pro_route_info.texts, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @snd_ice1712_playback_ds_ops, ptr @snd_ice1712_playback_ds], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_init_cs8427._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_spdif_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_spdif_maskc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_spdif_maskp to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_spdif_stream to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice1712_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omni to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs8427_timeout to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dxr_enable to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_matched to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_create.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_create.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_create.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_create._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_read_eeprom._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_read_eeprom._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_read_eeprom._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_read_eeprom._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PRO_RATE_LOCKED to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_playback_pro_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_capture_pro_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_playback_pro to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PRO_RATE_DEFAULT to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PRO_RATE_RESET to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_capture_pro to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_multi_playback_ctrls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_multi_capture_analog_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_multi_capture_spdif_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_multi_capture_analog_volume to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_multi_capture_spdif_volume to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_playback to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ac97_mixer.con_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ac97_mixer.pro_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ac97_mixer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_mixer_digmix_route_ac97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ac97_mixer._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_eeprom to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pro_internal_clock to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pro_internal_clock_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pro_rate_locking to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pro_rate_reset to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_mixer_pro_analog_route to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_mixer_pro_spdif_route to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_mixer_pro_volume_rate to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_mixer_pro_peak to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pro_internal_clock_info.texts to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pro_internal_clock_get.xlate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pro_internal_clock_put.xrate to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pro_internal_clock_default_info.texts to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pro_internal_clock_default_put.xrate to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_pro_route_info.texts to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_playback_ds_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_playback_ds to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ice1712_init_cs8427(ptr noundef %ice, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 43
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %conv = trunc i32 %addr to i8
  %cs8427_timeout = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 45
  %2 = ptrtoint ptr %cs8427_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cs8427_timeout, align 4
  %mul = mul i32 %3, 100
  %div = udiv i32 %mul, 1000
  %cs8427 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 44
  %call = tail call i32 @snd_cs8427_create(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef %div, ptr noundef %cs8427) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ops = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @open_cs8427, ptr %ops, align 4
  %close = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 2
  %9 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @close_cs8427, ptr %close, align 4
  %setup_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 1
  %10 = ptrtoint ptr %setup_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @setup_cs8427, ptr %setup_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs8427_create(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @open_cs8427(ptr nocapture noundef readonly %ice, ptr nocapture noundef readnone %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cs8427 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 44
  %0 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs8427, align 4
  %call = tail call i32 @snd_cs8427_iec958_active(ptr noundef %1, i32 noundef 1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @close_cs8427(ptr nocapture noundef readonly %ice, ptr nocapture noundef readnone %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cs8427 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 44
  %0 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs8427, align 4
  %call = tail call i32 @snd_cs8427_iec958_active(ptr noundef %1, i32 noundef 0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @setup_cs8427(ptr nocapture noundef readonly %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cs8427 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 44
  %0 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs8427, align 4
  %call = tail call i32 @snd_cs8427_iec958_pcm(ptr noundef %1, i32 noundef %rate) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ice1712_gpio_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and2 = lshr i32 %3, 24
  %and2.lobit = and i32 %and2, 1
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #14
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %6 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %7 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5.i, align 4
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %10 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %11(ptr noundef %1) #14
  %conv3 = and i32 %3, 255
  %and4 = and i32 %conv3, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp ne i32 %and4, 0
  %cond6 = zext i1 %tobool5.not to i32
  %xor = xor i32 %and2.lobit, %cond6
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %xor, ptr %value, align 8
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %13 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_dir.i, align 4
  %15 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %saved.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef %16) #14
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %17 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_mask.i, align 4
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx5.i, align 4
  tail call void %18(ptr noundef %1, i32 noundef %20) #14
  %21 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saved.i, align 4
  %23 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %gpio.i, align 4
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.i, align 4
  %26 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ice1712_gpio_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool6.not = icmp sgt i32 %3, -1
  br i1 %tobool6.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %conv3 = and i32 %3, 255
  %spec.select = select i1 %tobool.not, i32 0, i32 %conv3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  %spec.select37 = select i1 %tobool7.not, i32 0, i32 %conv3
  %xor = xor i32 %spec.select37, %spec.select
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #14
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %8 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %9 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx5.i, align 4
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %12 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_data.i, align 4
  %call.i = tail call i32 %13(ptr noundef %1) #14
  %neg = xor i32 %conv3, -1
  %and14 = and i32 %call.i, %neg
  %or = or i32 %and14, %xor
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %or)
  %cmp = icmp ne i32 %call.i, %or
  br i1 %cmp, label %if.then16, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %14 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_data.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef %or) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %16 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_dir.i, align 4
  %18 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saved.i, align 4
  tail call void %17(ptr noundef %1, i32 noundef %19) #14
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %20 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_mask.i, align 4
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx5.i, align 4
  tail call void %21(ptr noundef %1, i32 noundef %23) #14
  %24 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saved.i, align 4
  %26 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %gpio.i, align 4
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx5.i, align 4
  %29 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #14
  %conv19 = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv19, %if.end17 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ice1712_spdif_build_controls(ptr noundef %ice) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_pro = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 13
  %0 = ptrtoint ptr %pcm_pro to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_pro, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !418

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2372, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end23:                                         ; preds = %entry
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_spdif_default, ptr noundef %ice) #14
  %call24 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %4 = ptrtoint ptr %pcm_pro to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm_pro, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %device28 = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %device28 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %device28, align 4
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %call30 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_spdif_maskc, ptr noundef %ice) #14
  %call31 = tail call i32 @snd_ctl_add(ptr noundef %10, ptr noundef %call30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end26.cleanup_crit_edge, label %if.end34

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %11 = ptrtoint ptr %pcm_pro to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcm_pro, align 4
  %device36 = getelementptr inbounds %struct.snd_pcm, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device36, align 4
  %device38 = getelementptr inbounds %struct.snd_kcontrol, ptr %call30, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %device38 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %device38, align 4
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call40 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_spdif_maskp, ptr noundef %ice) #14
  %call41 = tail call i32 @snd_ctl_add(ptr noundef %17, ptr noundef %call40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end34.cleanup_crit_edge, label %if.end44

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %18 = ptrtoint ptr %pcm_pro to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcm_pro, align 4
  %device46 = getelementptr inbounds %struct.snd_pcm, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %device46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device46, align 4
  %device48 = getelementptr inbounds %struct.snd_kcontrol, ptr %call40, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %device48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %device48, align 4
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %call50 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_spdif_stream, ptr noundef %ice) #14
  %call51 = tail call i32 @snd_ctl_add(ptr noundef %24, ptr noundef %call50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end44.cleanup_crit_edge, label %if.end54

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %pcm_pro to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcm_pro, align 4
  %device56 = getelementptr inbounds %struct.snd_pcm, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %device56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %device56, align 4
  %device58 = getelementptr inbounds %struct.snd_kcontrol, ptr %call50, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %device58 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %device58, align 4
  %stream_ctl = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 2
  %30 = ptrtoint ptr %stream_ctl to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call50, ptr %stream_ctl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end44.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end54 ], [ %call24, %if.end23.cleanup_crit_edge ], [ %call31, %if.end26.cleanup_crit_edge ], [ %call41, %if.end34.cleanup_crit_edge ], [ %call51, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ice1712_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ice1712_driver, ptr noundef null, ptr noundef nonnull @.str.9) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ice1712_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @ice1712_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs8427_iec958_active(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs8427_iec958_pcm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ice1712_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_spdif_default_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %default_get = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3, i32 3
  %2 = ptrtoint ptr %default_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %default_get, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %3(ptr noundef %1, ptr noundef %ucontrol) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_spdif_default_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %default_put = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3, i32 4
  %2 = ptrtoint ptr %default_put to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %default_put, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %ucontrol) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ice1712_spdif_maskc_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %default_get = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3, i32 3
  %2 = ptrtoint ptr %default_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %default_get, align 4
  %tobool.not = icmp eq ptr %3, null
  %value7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %value7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 63, ptr %value7, align 8
  %arrayidx3 = getelementptr [24 x i8], ptr %value7, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr [24 x i8], ptr %value7, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 15, ptr %arrayidx6, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = call ptr @memset(ptr %value7, i32 255, i32 5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ice1712_spdif_maskp_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %default_get = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3, i32 3
  %2 = ptrtoint ptr %default_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %default_get, align 4
  %tobool.not = icmp eq ptr %3, null
  %value4 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %value4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -33, ptr %value4, align 8
  %arrayidx3 = getelementptr [24 x i8], ptr %value4, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 15, ptr %arrayidx3, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = call ptr @memset(ptr %value4, i32 255, i32 5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_spdif_stream_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream_get = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3, i32 5
  %2 = ptrtoint ptr %stream_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_get, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %3(ptr noundef %1, ptr noundef %ucontrol) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_spdif_stream_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream_put = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3, i32 6
  %2 = ptrtoint ptr %stream_put to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_put, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %ucontrol) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #0 align 64 {
entry:
  %tmp.i = alloca %struct.snd_kcontrol_new, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %pbus.i = alloca ptr, align 4
  %pcm.i249 = alloca ptr, align 4
  %tmp.i.i = alloca %struct.snd_kcontrol_new, align 4
  %tmp21.i.i = alloca %struct.snd_kcontrol_new, align 4
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #14
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !419
  %1 = load i32, ptr @snd_ice1712_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_ice1712_probe.dev, align 4
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
  %call = call i32 @snd_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 840, ptr noundef nonnull %card) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 5279139265890038272, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %shortname, ptr @.str.11, i32 19)
  %14 = load i32, ptr @snd_ice1712_probe.dev, align 4
  %arrayidx11 = getelementptr [32 x ptr], ptr @model, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr [32 x i8], ptr @omni, i32 0, i32 %14
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12, align 1, !range !420
  %arrayidx14 = getelementptr [32 x i32], ptr @cs8427_timeout, i32 0, i32 %14
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr [32 x i32], ptr @dxr_enable, i32 0, i32 %14
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15, align 4
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 268435455) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %23 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev3.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.14) #17
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 268435455) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool5.not.not.i = icmp eq i8 %18, 0
  %omni6.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 32
  %25 = ptrtoint ptr %omni6.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %omni6.i, align 4
  %bf.shl.i = select i1 %tobool5.not.not.i, i16 0, i16 -32768
  %bf.clear.i = and i16 %bf.load.i, 16383
  %26 = call i32 @llvm.smin.i32(i32 %20, i32 1000) #14
  %27 = call i32 @llvm.smax.i32(i32 %26, i32 1) #14
  %cs8427_timeout13.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 45
  %28 = ptrtoint ptr %cs8427_timeout13.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cs8427_timeout13.i, align 4
  %29 = trunc i32 %22 to i16
  %bf.value16.i = shl i16 %29, 14
  %bf.shl17.i = and i16 %bf.value16.i, 16384
  %bf.set.i = or i16 %bf.shl17.i, %bf.shl.i
  %bf.set19.i = or i16 %bf.set.i, %bf.clear.i
  %30 = ptrtoint ptr %omni6.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %bf.set19.i, ptr %omni6.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 27
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @snd_ice1712_create.__key, i16 noundef signext 3) #14
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 47
  call void @__mutex_init(ptr noundef %gpio_mutex.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @snd_ice1712_create.__key.17) #14
  %i2c_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 42
  call void @__mutex_init(ptr noundef %i2c_mutex.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @snd_ice1712_create.__key.19) #14
  %open_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 36
  call void @__mutex_init(ptr noundef %open_mutex.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @snd_ice1712_create.__key.21) #14
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 3
  %31 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @snd_ice1712_set_gpio_mask, ptr %set_mask.i, align 4
  %get_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 4
  %32 = ptrtoint ptr %get_mask.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @snd_ice1712_get_gpio_mask, ptr %get_mask.i, align 4
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 5
  %33 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @snd_ice1712_set_gpio_dir, ptr %set_dir.i, align 4
  %get_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 6
  %34 = ptrtoint ptr %get_dir.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @snd_ice1712_get_gpio_dir, ptr %get_dir.i, align 4
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 7
  %35 = ptrtoint ptr %set_data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @snd_ice1712_set_gpio_data, ptr %set_data.i, align 4
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 8
  %36 = ptrtoint ptr %get_data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @snd_ice1712_get_gpio_data, ptr %get_data.i, align 4
  %spdif.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 41
  %cs8403_stream_bits.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 41, i32 1
  %37 = ptrtoint ptr %cs8403_stream_bits.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 49, ptr %cs8403_stream_bits.i, align 1
  %38 = ptrtoint ptr %spdif.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 49, ptr %spdif.i, align 4
  %card40.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 10
  %39 = ptrtoint ptr %card40.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %9, ptr %card40.i, align 4
  %pci41.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 9
  %40 = ptrtoint ptr %pci41.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pci, ptr %pci41.i, align 4
  %irq.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 4
  %41 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %irq.i, align 4
  call void @pci_set_master(ptr noundef %pci) #14
  %42 = ptrtoint ptr %pci41.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci41.i, align 4
  %call43.i = call i32 @pci_write_config_word(ptr noundef %43, i32 noundef 64, i16 noundef zeroext -32641) #14
  %44 = ptrtoint ptr %pci41.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci41.i, align 4
  %call45.i = call i32 @pci_write_config_word(ptr noundef %45, i32 noundef 66, i16 noundef zeroext 6) #14
  %46 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card40.i, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %47, ptr noundef nonnull @.str.26, ptr noundef %11, ptr noundef nonnull @snd_ice1712_proc_read, ptr noundef null) #14
  %call46.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.end4.i.cleanup_crit_edge, label %if.end49.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end49.i:                                       ; preds = %if.end4.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %48 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 5
  %50 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %port.i, align 4
  %arrayidx51.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %51 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx51.i, align 8
  %ddma_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 6
  %53 = ptrtoint ptr %ddma_port.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ddma_port.i, align 4
  %arrayidx54.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2
  %54 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx54.i, align 8
  %dmapath_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 7
  %56 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %dmapath_port.i, align 4
  %arrayidx57.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 3
  %57 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx57.i, align 8
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 8
  %59 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %profi_port.i, align 4
  %irq60.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %60 = ptrtoint ptr %irq60.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq60.i, align 4
  %call.i133.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %61, ptr noundef nonnull @snd_ice1712_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.9, ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.i)
  %tobool62.not.i = icmp eq i32 %call.i133.i, 0
  br i1 %tobool62.not.i, label %if.end69.i, label %do.end66.i

do.end66.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev67.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %62 = ptrtoint ptr %dev67.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev67.i, align 8
  %64 = ptrtoint ptr %irq60.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq60.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.24, i32 noundef %65) #17
  br label %cleanup

if.end69.i:                                       ; preds = %if.end49.i
  %66 = ptrtoint ptr %irq60.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq60.i, align 4
  %68 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %69 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %67, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %70 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @snd_ice1712_free, ptr %private_free.i, align 4
  %call73.i = call fastcc i32 @snd_ice1712_read_eeprom(ptr noundef %11, ptr noundef %16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp slt i32 %call73.i, 0
  br i1 %cmp74.i, label %if.end69.i.cleanup_crit_edge, label %snd_ice1712_create.exit

if.end69.i.cleanup_crit_edge:                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

snd_ice1712_create.exit:                          ; preds = %if.end69.i
  call fastcc void @snd_ice1712_chip_init(ptr noundef %11) #14
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_ice1712_hoontech_cards to i32))
  %71 = load i32, ptr @snd_ice1712_hoontech_cards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool23.not297 = icmp eq i32 %71, 0
  br i1 %tobool23.not297, label %snd_ice1712_create.exit.for.inc51_crit_edge, label %for.body24.lr.ph

snd_ice1712_create.exit.for.inc51_crit_edge:      ; preds = %snd_ice1712_create.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc51

for.body24.lr.ph:                                 ; preds = %snd_ice1712_create.exit
  %72 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %eeprom, align 4
  br label %for.body24

for.body24:                                       ; preds = %for.inc.for.body24_crit_edge, %for.body24.lr.ph
  %74 = phi i32 [ %71, %for.body24.lr.ph ], [ %85, %for.inc.for.body24_crit_edge ]
  %c.0298 = phi ptr [ @snd_ice1712_hoontech_cards, %for.body24.lr.ph ], [ %incdec.ptr, %for.inc.for.body24_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %73)
  %cmp27 = icmp eq i32 %74, %73
  br i1 %cmp27, label %for.body24.if.then29_crit_edge, label %for.inc

for.body24.if.then29_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

if.then29:                                        ; preds = %for.body24.2.if.then29_crit_edge, %for.body24.1.if.then29_crit_edge, %for.body24.if.then29_crit_edge
  %c.0298.lcssa = phi ptr [ %c.0298.2, %for.body24.2.if.then29_crit_edge ], [ %c.0298.1, %for.body24.1.if.then29_crit_edge ], [ %c.0298, %for.body24.if.then29_crit_edge ]
  %75 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %card, align 4
  %shortname30 = getelementptr inbounds %struct.snd_card, ptr %76, i32 0, i32 3
  %name = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0298.lcssa, i32 0, i32 1
  %77 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name, align 4
  %call32 = call ptr @strcpy(ptr noundef %shortname30, ptr noundef %78) #18
  %driver33 = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0298.lcssa, i32 0, i32 3
  %79 = ptrtoint ptr %driver33 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %driver33, align 4
  %tobool34.not = icmp eq ptr %80, null
  br i1 %tobool34.not, label %if.then29.if.end40_crit_edge, label %if.then35

if.then29.if.end40_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %driver36 = getelementptr inbounds %struct.snd_card, ptr %76, i32 0, i32 2
  %call39 = call ptr @strcpy(ptr noundef %driver36, ptr noundef nonnull %80) #18
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.then29.if.end40_crit_edge
  %chip_init = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0298.lcssa, i32 0, i32 4
  %81 = ptrtoint ptr %chip_init to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chip_init, align 4
  %tobool41.not = icmp eq ptr %82, null
  br i1 %tobool41.not, label %if.end40.if.end49_crit_edge, label %if.then42

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then42:                                        ; preds = %if.end40
  %call44 = call i32 %82(ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then42.cleanup_crit_edge, label %if.then42.if.end49_crit_edge

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end49:                                         ; preds = %if.then42.if.end49_crit_edge, %if.end40.if.end49_crit_edge
  %card_info = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 30
  %83 = ptrtoint ptr %card_info to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %c.0298.lcssa, ptr %card_info, align 4
  br label %__found

for.inc:                                          ; preds = %for.body24
  %incdec.ptr = getelementptr %struct.snd_ice1712_card_info, ptr %c.0298, i32 1
  %84 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %incdec.ptr, align 4
  %tobool23.not = icmp eq i32 %85, 0
  br i1 %tobool23.not, label %for.inc.for.inc51_crit_edge, label %for.inc.for.body24_crit_edge

for.inc.for.body24_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body24

for.inc.for.inc51_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc51

for.inc51:                                        ; preds = %for.inc.for.inc51_crit_edge, %snd_ice1712_create.exit.for.inc51_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_ice1712_delta_cards to i32))
  %86 = load i32, ptr @snd_ice1712_delta_cards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool23.not297.1 = icmp eq i32 %86, 0
  br i1 %tobool23.not297.1, label %for.inc51.for.inc51.1_crit_edge, label %for.body24.lr.ph.1

for.inc51.for.inc51.1_crit_edge:                  ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc51.1

for.body24.lr.ph.1:                               ; preds = %for.inc51
  %87 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %eeprom, align 4
  br label %for.body24.1

for.body24.1:                                     ; preds = %for.inc.1.for.body24.1_crit_edge, %for.body24.lr.ph.1
  %89 = phi i32 [ %86, %for.body24.lr.ph.1 ], [ %91, %for.inc.1.for.body24.1_crit_edge ]
  %c.0298.1 = phi ptr [ @snd_ice1712_delta_cards, %for.body24.lr.ph.1 ], [ %incdec.ptr.1, %for.inc.1.for.body24.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %88)
  %cmp27.1 = icmp eq i32 %89, %88
  br i1 %cmp27.1, label %for.body24.1.if.then29_crit_edge, label %for.inc.1

for.body24.1.if.then29_crit_edge:                 ; preds = %for.body24.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

for.inc.1:                                        ; preds = %for.body24.1
  %incdec.ptr.1 = getelementptr %struct.snd_ice1712_card_info, ptr %c.0298.1, i32 1
  %90 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %incdec.ptr.1, align 4
  %tobool23.not.1 = icmp eq i32 %91, 0
  br i1 %tobool23.not.1, label %for.inc.1.for.inc51.1_crit_edge, label %for.inc.1.for.body24.1_crit_edge

for.inc.1.for.body24.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body24.1

for.inc.1.for.inc51.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc51.1

for.inc51.1:                                      ; preds = %for.inc.1.for.inc51.1_crit_edge, %for.inc51.for.inc51.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_ice1712_ews_cards to i32))
  %92 = load i32, ptr @snd_ice1712_ews_cards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool23.not297.2 = icmp eq i32 %92, 0
  br i1 %tobool23.not297.2, label %for.inc51.1.__found_crit_edge, label %for.body24.lr.ph.2

for.inc51.1.__found_crit_edge:                    ; preds = %for.inc51.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %__found

for.body24.lr.ph.2:                               ; preds = %for.inc51.1
  %93 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %eeprom, align 4
  br label %for.body24.2

for.body24.2:                                     ; preds = %for.inc.2.for.body24.2_crit_edge, %for.body24.lr.ph.2
  %95 = phi i32 [ %92, %for.body24.lr.ph.2 ], [ %97, %for.inc.2.for.body24.2_crit_edge ]
  %c.0298.2 = phi ptr [ @snd_ice1712_ews_cards, %for.body24.lr.ph.2 ], [ %incdec.ptr.2, %for.inc.2.for.body24.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %94)
  %cmp27.2 = icmp eq i32 %95, %94
  br i1 %cmp27.2, label %for.body24.2.if.then29_crit_edge, label %for.inc.2

for.body24.2.if.then29_crit_edge:                 ; preds = %for.body24.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

for.inc.2:                                        ; preds = %for.body24.2
  %incdec.ptr.2 = getelementptr %struct.snd_ice1712_card_info, ptr %c.0298.2, i32 1
  %96 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %incdec.ptr.2, align 4
  %tobool23.not.2 = icmp eq i32 %97, 0
  br i1 %tobool23.not.2, label %for.inc.2.__found_crit_edge, label %for.inc.2.for.body24.2_crit_edge

for.inc.2.for.body24.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body24.2

for.inc.2.__found_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %__found

__found:                                          ; preds = %for.inc.2.__found_crit_edge, %for.inc51.1.__found_crit_edge, %if.end49
  %c.1 = phi ptr [ %c.0298.lcssa, %if.end49 ], [ @no_matched, %for.inc51.1.__found_crit_edge ], [ @no_matched, %for.inc.2.__found_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #14
  %98 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !419
  %99 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %card40.i, align 4
  %call.i242 = call i32 @snd_pcm_new(ptr noundef %100, ptr noundef nonnull @.str.72, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %cmp.i243 = icmp slt i32 %call.i242, 0
  br i1 %cmp.i243, label %__found.snd_ice1712_pcm_profi.exit.thread_crit_edge, label %if.end.i246

__found.snd_ice1712_pcm_profi.exit.thread_crit_edge: ; preds = %__found
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_pcm_profi.exit.thread

if.end.i246:                                      ; preds = %__found
  %101 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %102, i32 noundef 0, ptr noundef nonnull @snd_ice1712_playback_pro_ops) #14
  %103 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %104, i32 noundef 1, ptr noundef nonnull @snd_ice1712_capture_pro_ops) #14
  %105 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pcm.i, align 4
  %private_data.i244 = getelementptr inbounds %struct.snd_pcm, ptr %106, i32 0, i32 11
  %107 = ptrtoint ptr %private_data.i244 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %11, ptr %private_data.i244, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %106, i32 0, i32 3
  %108 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %106, i32 0, i32 7
  %109 = call ptr @memcpy(ptr %name.i, ptr @.str.72, i32 14)
  %110 = ptrtoint ptr %pci41.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pci41.i, align 4
  %dev.i245 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %call2.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %106, i32 noundef 2, ptr noundef %dev.i245, i32 noundef 262144, i32 noundef 262144) #14
  %112 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pcm.i, align 4
  %pcm_pro.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 13
  %114 = ptrtoint ptr %pcm_pro.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %pcm_pro.i, align 4
  %cs8427.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 44
  %115 = ptrtoint ptr %cs8427.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cs8427.i, align 4
  %tobool.not.i = icmp eq ptr %116, null
  br i1 %tobool.not.i, label %if.end.i246.if.end12.i_crit_edge, label %if.then3.i

if.end.i246.if.end12.i_crit_edge:                 ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then3.i:                                       ; preds = %if.end.i246
  %substream.i = getelementptr inbounds %struct.snd_pcm, ptr %113, i32 0, i32 8, i32 0, i32 4
  %117 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %substream.i, align 8
  %substream7.i = getelementptr %struct.snd_pcm, ptr %113, i32 0, i32 8, i32 1, i32 4
  %119 = ptrtoint ptr %substream7.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %substream7.i, align 8
  %call8.i = call i32 @snd_cs8427_iec958_build(ptr noundef nonnull %116, ptr noundef %118, ptr noundef %120) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then3.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, label %if.then3.i.if.end12.i_crit_edge

if.then3.i.if.end12.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then3.i.snd_ice1712_pcm_profi.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_pcm_profi.exit.thread

if.end12.i:                                       ; preds = %if.then3.i.if.end12.i_crit_edge, %if.end.i246.if.end12.i_crit_edge
  %121 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %card40.i, align 4
  %call.i.i247 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_multi_playback_ctrls, ptr noundef %11) #14
  %call2.i.i = call i32 @snd_ctl_add(ptr noundef %122, ptr noundef %call.i.i247) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end12.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, label %for.cond.i.i

if.end12.i.snd_ice1712_pcm_profi.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_pcm_profi.exit.thread

for.cond.i.i:                                     ; preds = %if.end12.i
  %call.1.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @snd_ice1712_multi_playback_ctrls, i32 0, i32 1), ptr noundef %11) #14
  %call2.1.i.i = call i32 @snd_ctl_add(ptr noundef %122, ptr noundef %call.1.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i.i)
  %cmp3.1.i.i = icmp slt i32 %call2.1.i.i, 0
  br i1 %cmp3.1.i.i, label %for.cond.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, label %for.cond.1.i.i

for.cond.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_pcm_profi.exit.thread

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %num_total_adcs.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 34
  %123 = ptrtoint ptr %num_total_adcs.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_total_adcs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp4.not.i.i = icmp eq i32 %124, 0
  br i1 %cmp4.not.i.i, label %for.cond.1.i.i.if.end12.i.i_crit_edge, label %if.then5.i.i

for.cond.1.i.i.if.end12.i.i_crit_edge:            ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i.i

if.then5.i.i:                                     ; preds = %for.cond.1.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tmp.i.i) #14
  %125 = call ptr @memcpy(ptr %tmp.i.i, ptr @snd_ice1712_multi_capture_analog_switch, i32 48)
  %count.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %tmp.i.i, i32 0, i32 6
  %126 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %124, ptr %count.i.i, align 4
  %call7.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull %tmp.i.i, ptr noundef %11) #14
  %call8.i.i = call i32 @snd_ctl_add(ptr noundef %122, ptr noundef %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tmp.i.i) #14
  br i1 %cmp9.i.i, label %if.then5.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, label %if.then5.i.i.if.end12.i.i_crit_edge

if.then5.i.i.if.end12.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i.i

if.then5.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_pcm_profi.exit.thread

if.end12.i.i:                                     ; preds = %if.then5.i.i.if.end12.i.i_crit_edge, %for.cond.1.i.i.if.end12.i.i_crit_edge
  %call13.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_multi_capture_spdif_switch, ptr noundef %11) #14
  %call14.i.i = call i32 @snd_ctl_add(ptr noundef %122, ptr noundef %call13.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp15.i.i = icmp slt i32 %call14.i.i, 0
  br i1 %cmp15.i.i, label %if.end12.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, label %if.end17.i.i

if.end12.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_pcm_profi.exit.thread

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %127 = ptrtoint ptr %num_total_adcs.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_total_adcs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp19.not.i.i = icmp eq i32 %128, 0
  br i1 %cmp19.not.i.i, label %if.end17.i.i.if.end32.i.i_crit_edge, label %if.then20.i.i

if.end17.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i

if.then20.i.i:                                    ; preds = %if.end17.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tmp21.i.i) #14
  %129 = call ptr @memcpy(ptr %tmp21.i.i, ptr @snd_ice1712_multi_capture_analog_volume, i32 48)
  %count23.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %tmp21.i.i, i32 0, i32 6
  %130 = ptrtoint ptr %count23.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %128, ptr %count23.i.i, align 4
  %call24.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull %tmp21.i.i, ptr noundef %11) #14
  %call25.i.i = call i32 @snd_ctl_add(ptr noundef %122, ptr noundef %call24.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %cmp26.i.i = icmp slt i32 %call25.i.i, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tmp21.i.i) #14
  br i1 %cmp26.i.i, label %if.then20.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, label %if.then20.i.i.if.end32.i.i_crit_edge

if.then20.i.i.if.end32.i.i_crit_edge:             ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i

if.then20.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge: ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_pcm_profi.exit.thread

if.end32.i.i:                                     ; preds = %if.then20.i.i.if.end32.i.i_crit_edge, %if.end17.i.i.if.end32.i.i_crit_edge
  %call33.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_multi_capture_spdif_volume, ptr noundef %11) #14
  %call34.i.i = call i32 @snd_ctl_add(ptr noundef %122, ptr noundef %call33.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp35.i.i = icmp slt i32 %call34.i.i, 0
  br i1 %cmp35.i.i, label %if.end32.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, label %if.end32.i.i.for.body40.i.i_crit_edge

if.end32.i.i.for.body40.i.i_crit_edge:            ; preds = %if.end32.i.i
  br label %for.body40.i.i

if.end32.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge: ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_pcm_profi.exit.thread

for.cond45.preheader.i.i:                         ; preds = %for.body40.i.i
  %131 = ptrtoint ptr %num_total_adcs.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_total_adcs.i.i, align 4
  %133 = add i32 %132, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %133)
  %cmp47150.i.i = icmp ult i32 %133, -11
  br i1 %cmp47150.i.i, label %for.cond45.preheader.i.i.for.body48.i.i_crit_edge, label %for.cond45.preheader.i.i.if.end59_crit_edge

for.cond45.preheader.i.i.if.end59_crit_edge:      ; preds = %for.cond45.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

for.cond45.preheader.i.i.for.body48.i.i_crit_edge: ; preds = %for.cond45.preheader.i.i
  br label %for.body48.i.i

for.body40.i.i:                                   ; preds = %for.body40.i.i.for.body40.i.i_crit_edge, %if.end32.i.i.for.body40.i.i_crit_edge
  %idx.1148.i.i = phi i32 [ %inc43.i.i, %for.body40.i.i.for.body40.i.i_crit_edge ], [ 0, %if.end32.i.i.for.body40.i.i_crit_edge ]
  %arrayidx41.i.i = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 31, i32 %idx.1148.i.i
  %134 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -2147450880, ptr %arrayidx41.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !421
  call void @arm_heavy_mb() #14
  %conv15.i.i.i = trunc i32 %idx.1148.i.i to i8
  %135 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %profi_port.i, align 4
  %add.i.i.i = add i32 %136, 58
  %and16.i.i.i = and i32 %add.i.i.i, 1048575
  %add17.i.i.i = or i32 %and16.i.i.i, -18874368
  %137 = inttoptr i32 %add17.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 %conv15.i.i.i) #14, !srcloc !422
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !423
  call void @arm_heavy_mb() #14
  %138 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %profi_port.i, align 4
  %add22.i.i.i = add i32 %139, 56
  %and23.i.i.i = and i32 %add22.i.i.i, 1048575
  %add24.i.i.i = or i32 %and23.i.i.i, -18874368
  %140 = inttoptr i32 %add24.i.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %140, i16 32639) #14, !srcloc !424
  %inc43.i.i = add nuw nsw i32 %idx.1148.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc43.i.i, 10
  br i1 %exitcond.not.i.i, label %for.cond45.preheader.i.i, label %for.body40.i.i.for.body40.i.i_crit_edge

for.body40.i.i.for.body40.i.i_crit_edge:          ; preds = %for.body40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body40.i.i

for.body48.i.i:                                   ; preds = %for.body48.i.i.for.body48.i.i_crit_edge, %for.cond45.preheader.i.i.for.body48.i.i_crit_edge
  %idx.2151.i.i = phi i32 [ %inc52.i.i, %for.body48.i.i.for.body48.i.i_crit_edge ], [ 10, %for.cond45.preheader.i.i.for.body48.i.i_crit_edge ]
  %arrayidx50.i.i = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 31, i32 %idx.2151.i.i
  %141 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -2147450880, ptr %arrayidx50.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !421
  call void @arm_heavy_mb() #14
  %conv15.i120.i.i = trunc i32 %idx.2151.i.i to i8
  %142 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %profi_port.i, align 4
  %add.i122.i.i = add i32 %143, 58
  %and16.i123.i.i = and i32 %add.i122.i.i, 1048575
  %add17.i124.i.i = or i32 %and16.i123.i.i, -18874368
  %144 = inttoptr i32 %add17.i124.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 %conv15.i120.i.i) #14, !srcloc !422
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !423
  call void @arm_heavy_mb() #14
  %145 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %profi_port.i, align 4
  %add22.i125.i.i = add i32 %146, 56
  %and23.i126.i.i = and i32 %add22.i125.i.i, 1048575
  %add24.i127.i.i = or i32 %and23.i126.i.i, -18874368
  %147 = inttoptr i32 %add24.i127.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %147, i16 32639) #14, !srcloc !424
  %inc52.i.i = add nuw i32 %idx.2151.i.i, 1
  %148 = ptrtoint ptr %num_total_adcs.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %num_total_adcs.i.i, align 4
  %add.i.i = add i32 %149, 10
  %cmp47.i.i = icmp ult i32 %inc52.i.i, %add.i.i
  br i1 %cmp47.i.i, label %for.body48.i.i.for.body48.i.i_crit_edge, label %for.body48.i.i.if.end59_crit_edge

for.body48.i.i.if.end59_crit_edge:                ; preds = %for.body48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

for.body48.i.i.for.body48.i.i_crit_edge:          ; preds = %for.body48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body48.i.i

snd_ice1712_pcm_profi.exit.thread:                ; preds = %if.end32.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, %if.then20.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, %if.end12.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, %if.then5.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, %for.cond.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, %if.end12.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, %if.then3.i.snd_ice1712_pcm_profi.exit.thread_crit_edge, %__found.snd_ice1712_pcm_profi.exit.thread_crit_edge
  %retval.0.i248.ph = phi i32 [ %call2.1.i.i, %for.cond.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge ], [ %call2.i.i, %if.end12.i.snd_ice1712_pcm_profi.exit.thread_crit_edge ], [ %call34.i.i, %if.end32.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge ], [ %call14.i.i, %if.end12.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge ], [ %call8.i.i, %if.then5.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge ], [ %call25.i.i, %if.then20.i.i.snd_ice1712_pcm_profi.exit.thread_crit_edge ], [ %call8.i, %if.then3.i.snd_ice1712_pcm_profi.exit.thread_crit_edge ], [ %call.i242, %__found.snd_ice1712_pcm_profi.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #14
  br label %cleanup

if.end59:                                         ; preds = %for.body48.i.i.if.end59_crit_edge, %for.cond45.preheader.i.i.if.end59_crit_edge
  %arrayidx58.i.i = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 31, i32 18
  %150 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 -2147450880, ptr %arrayidx58.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !421
  call void @arm_heavy_mb() #14
  %151 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %profi_port.i, align 4
  %add.i140.i.i = add i32 %152, 58
  %and16.i141.i.i = and i32 %add.i140.i.i, 1048575
  %add17.i142.i.i = or i32 %and16.i141.i.i, -18874368
  %153 = inttoptr i32 %add17.i142.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %153, i8 18) #14, !srcloc !422
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !423
  call void @arm_heavy_mb() #14
  %154 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %profi_port.i, align 4
  %add22.i143.i.i = add i32 %155, 56
  %and23.i144.i.i = and i32 %add22.i143.i.i, 1048575
  %add24.i145.i.i = or i32 %and23.i144.i.i, -18874368
  %156 = inttoptr i32 %add24.i145.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %156, i16 32639) #14, !srcloc !424
  %arrayidx58.1.i.i = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 31, i32 19
  %157 = ptrtoint ptr %arrayidx58.1.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 -2147450880, ptr %arrayidx58.1.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !421
  call void @arm_heavy_mb() #14
  %158 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %profi_port.i, align 4
  %add.i140.1.i.i = add i32 %159, 58
  %and16.i141.1.i.i = and i32 %add.i140.1.i.i, 1048575
  %add17.i142.1.i.i = or i32 %and16.i141.1.i.i, -18874368
  %160 = inttoptr i32 %add17.i142.1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %160, i8 19) #14, !srcloc !422
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !423
  call void @arm_heavy_mb() #14
  %161 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %profi_port.i, align 4
  %add22.i143.1.i.i = add i32 %162, 56
  %and23.i144.1.i.i = and i32 %add22.i143.1.i.i, 1048575
  %add24.i145.1.i.i = or i32 %and23.i144.1.i.i, -18874368
  %163 = inttoptr i32 %add24.i145.1.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %163, i16 32639) #14, !srcloc !424
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #14
  %data = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 29, i32 3
  %164 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %data, align 2
  %166 = and i8 %165, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool63.not = icmp eq i8 %166, 0
  br i1 %tobool63.not, label %if.then64, label %if.end59.if.end71_crit_edge

if.end59.if.end71_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then64:                                        ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i249) #14
  %167 = ptrtoint ptr %pcm.i249 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i249, align 4, !annotation !419
  %168 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %card40.i, align 4
  %call.i251 = call i32 @snd_pcm_new(ptr noundef %169, ptr noundef nonnull @.str.79, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i249) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %cmp.i252 = icmp slt i32 %call.i251, 0
  br i1 %cmp.i252, label %snd_ice1712_pcm.exit.thread, label %snd_ice1712_pcm.exit

snd_ice1712_pcm.exit.thread:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i249) #14
  br label %cleanup

snd_ice1712_pcm.exit:                             ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  %170 = ptrtoint ptr %pcm.i249 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pcm.i249, align 4
  call void @snd_pcm_set_ops(ptr noundef %171, i32 noundef 0, ptr noundef nonnull @snd_ice1712_playback_ops) #14
  %172 = ptrtoint ptr %pcm.i249 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pcm.i249, align 4
  call void @snd_pcm_set_ops(ptr noundef %173, i32 noundef 1, ptr noundef nonnull @snd_ice1712_capture_ops) #14
  %174 = ptrtoint ptr %pcm.i249 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pcm.i249, align 4
  %private_data.i253 = getelementptr inbounds %struct.snd_pcm, ptr %175, i32 0, i32 11
  %176 = ptrtoint ptr %private_data.i253 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %11, ptr %private_data.i253, align 8
  %info_flags.i254 = getelementptr inbounds %struct.snd_pcm, ptr %175, i32 0, i32 3
  %177 = ptrtoint ptr %info_flags.i254 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %info_flags.i254, align 8
  %name.i255 = getelementptr inbounds %struct.snd_pcm, ptr %175, i32 0, i32 7
  %178 = call ptr @memcpy(ptr %name.i255, ptr @.str.79, i32 17)
  %pcm2.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 11
  %179 = ptrtoint ptr %pcm2.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %175, ptr %pcm2.i, align 4
  %180 = ptrtoint ptr %pci41.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pci41.i, align 4
  %dev.i257 = getelementptr inbounds %struct.pci_dev, ptr %181, i32 0, i32 44
  %call3.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %175, i32 noundef 2, ptr noundef %dev.i257, i32 noundef 65536, i32 noundef 65536) #14
  %182 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %card40.i, align 4
  %dev5.i = getelementptr inbounds %struct.snd_card, ptr %183, i32 0, i32 27
  %184 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev5.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %185, ptr noundef nonnull @.str.80) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i249) #14
  br label %if.end71

if.end71:                                         ; preds = %snd_ice1712_pcm.exit, %if.end59.if.end71_crit_edge
  %pcm_dev.0 = phi i32 [ 1, %if.end59.if.end71_crit_edge ], [ 2, %snd_ice1712_pcm.exit ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #14
  %186 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 1
  %187 = call ptr @memset(ptr %ac97.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #14
  %188 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !419
  %189 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %data, align 2
  %191 = and i8 %190, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i260 = icmp eq i8 %191, 0
  br i1 %tobool.not.i260, label %if.then.i, label %if.end71.if.end13.i_crit_edge

if.end71.if.end13.i_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then.i:                                        ; preds = %if.end71
  %192 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %card40.i, align 4
  %call.i262 = call i32 @snd_ac97_bus(ptr noundef %193, i32 noundef 0, ptr noundef nonnull @snd_ice1712_ac97_mixer.con_ops, ptr noundef null, ptr noundef nonnull %pbus.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %cmp.i263 = icmp slt i32 %call.i262, 0
  br i1 %cmp.i263, label %if.then.i.snd_ice1712_ac97_mixer.exit.thread_crit_edge, label %if.end.i264

if.then.i.snd_ice1712_ac97_mixer.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_ac97_mixer.exit.thread

if.end.i264:                                      ; preds = %if.then.i
  %194 = getelementptr inbounds i8, ptr %ac97.i, i32 8
  %195 = call ptr @memset(ptr %194, i32 0, i32 16)
  %196 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %11, ptr %ac97.i, align 4
  %197 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @snd_ice1712_mixer_free_ac97, ptr %186, align 4
  %198 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pbus.i, align 4
  %ac973.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 25
  %call4.i = call i32 @snd_ac97_mixer(ptr noundef %199, ptr noundef nonnull %ac97.i, ptr noundef %ac973.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  %200 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %card40.i, align 4
  br i1 %cmp5.i, label %do.end.i266, label %snd_ice1712_ac97_mixer.exit

do.end.i266:                                      ; preds = %if.end.i264
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i265 = getelementptr inbounds %struct.snd_card, ptr %201, i32 0, i32 27
  %202 = ptrtoint ptr %dev.i265 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i265, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %203, ptr noundef nonnull @.str.82) #17
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end.i266, %if.end71.if.end13.i_crit_edge
  %bus_num.0.i = phi i32 [ 0, %if.end71.if.end13.i_crit_edge ], [ 1, %do.end.i266 ]
  %arrayidx16.i = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 29, i32 3, i32 1
  %204 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %205)
  %tobool19.not.i = icmp sgt i8 %205, -1
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end13.i.if.end41.i_crit_edge

if.end13.i.if.end41.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

if.then20.i:                                      ; preds = %if.end13.i
  %206 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %card40.i, align 4
  %call22.i = call i32 @snd_ac97_bus(ptr noundef %207, i32 noundef %bus_num.0.i, ptr noundef nonnull @snd_ice1712_ac97_mixer.pro_ops, ptr noundef null, ptr noundef nonnull %pbus.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.then20.i.snd_ice1712_ac97_mixer.exit.thread_crit_edge, label %if.end26.i

if.then20.i.snd_ice1712_ac97_mixer.exit.thread_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_ac97_mixer.exit.thread

if.end26.i:                                       ; preds = %if.then20.i
  %208 = getelementptr inbounds i8, ptr %ac97.i, i32 8
  %209 = call ptr @memset(ptr %208, i32 0, i32 16)
  %210 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %11, ptr %ac97.i, align 4
  %211 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @snd_ice1712_mixer_free_ac97, ptr %186, align 4
  %212 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pbus.i, align 4
  %ac9729.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 25
  %call30.i = call i32 @snd_ac97_mixer(ptr noundef %213, ptr noundef nonnull %ac97.i, ptr noundef %ac9729.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %do.end36.i, label %if.end26.i.snd_ice1712_ac97_mixer.exit.thread291_crit_edge

if.end26.i.snd_ice1712_ac97_mixer.exit.thread291_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_ac97_mixer.exit.thread291

do.end36.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  %214 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %card40.i, align 4
  %dev38.i = getelementptr inbounds %struct.snd_card, ptr %215, i32 0, i32 27
  %216 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev38.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %217, ptr noundef nonnull @.str.85) #17
  br label %if.end41.i

if.end41.i:                                       ; preds = %do.end36.i, %if.end13.i.if.end41.i_crit_edge
  %218 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %card40.i, align 4
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %219, i32 0, i32 6
  %strlen.i = call i32 @strlen(ptr noundef %mixername.i) #19
  %endptr.i = getelementptr i8, ptr %mixername.i, i32 %strlen.i
  %220 = call ptr @memcpy(ptr %endptr.i, ptr @.str.87, i32 21)
  br label %snd_ice1712_ac97_mixer.exit.thread291

snd_ice1712_ac97_mixer.exit.thread:               ; preds = %if.then20.i.snd_ice1712_ac97_mixer.exit.thread_crit_edge, %if.then.i.snd_ice1712_ac97_mixer.exit.thread_crit_edge
  %retval.0.i267.ph = phi i32 [ %call22.i, %if.then20.i.snd_ice1712_ac97_mixer.exit.thread_crit_edge ], [ %call.i262, %if.then.i.snd_ice1712_ac97_mixer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #14
  br label %cleanup

snd_ice1712_ac97_mixer.exit.thread291:            ; preds = %if.end41.i, %if.end26.i.snd_ice1712_ac97_mixer.exit.thread291_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #14
  br label %if.end76

snd_ice1712_ac97_mixer.exit:                      ; preds = %if.end.i264
  %call10.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_mixer_digmix_route_ac97, ptr noundef %11) #14
  %call11.i = call i32 @snd_ctl_add(ptr noundef %201, ptr noundef %call10.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp73 = icmp slt i32 %call11.i, 0
  br i1 %cmp73, label %snd_ice1712_ac97_mixer.exit.cleanup_crit_edge, label %snd_ice1712_ac97_mixer.exit.if.end76_crit_edge

snd_ice1712_ac97_mixer.exit.if.end76_crit_edge:   ; preds = %snd_ice1712_ac97_mixer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

snd_ice1712_ac97_mixer.exit.cleanup_crit_edge:    ; preds = %snd_ice1712_ac97_mixer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end76:                                         ; preds = %snd_ice1712_ac97_mixer.exit.if.end76_crit_edge, %snd_ice1712_ac97_mixer.exit.thread291
  %221 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %card40.i, align 4
  %call.i269 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_eeprom, ptr noundef %11) #14
  %call1.i = call i32 @snd_ctl_add(ptr noundef %222, ptr noundef %call.i269) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i270 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i270, label %if.end76.cleanup_crit_edge, label %if.end.i274

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i274:                                      ; preds = %if.end76
  %223 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %card40.i, align 4
  %call3.i271 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_pro_internal_clock, ptr noundef %11) #14
  %call4.i272 = call i32 @snd_ctl_add(ptr noundef %224, ptr noundef %call3.i271) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i272)
  %cmp5.i273 = icmp slt i32 %call4.i272, 0
  br i1 %cmp5.i273, label %if.end.i274.cleanup_crit_edge, label %if.end7.i

if.end.i274.cleanup_crit_edge:                    ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i274
  %225 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %card40.i, align 4
  %call9.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_pro_internal_clock_default, ptr noundef %11) #14
  %call10.i275 = call i32 @snd_ctl_add(ptr noundef %226, ptr noundef %call9.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i275)
  %cmp11.i = icmp slt i32 %call10.i275, 0
  br i1 %cmp11.i, label %if.end7.i.cleanup_crit_edge, label %if.end13.i276

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13.i276:                                    ; preds = %if.end7.i
  %227 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %card40.i, align 4
  %call15.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_pro_rate_locking, ptr noundef %11) #14
  %call16.i = call i32 @snd_ctl_add(ptr noundef %228, ptr noundef %call15.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end13.i276.cleanup_crit_edge, label %if.end19.i

if.end13.i276.cleanup_crit_edge:                  ; preds = %if.end13.i276
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19.i:                                       ; preds = %if.end13.i276
  %229 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %card40.i, align 4
  %call21.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_pro_rate_reset, ptr noundef %11) #14
  %call22.i277 = call i32 @snd_ctl_add(ptr noundef %230, ptr noundef %call21.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i277)
  %cmp23.i278 = icmp slt i32 %call22.i277, 0
  br i1 %cmp23.i278, label %if.end19.i.cleanup_crit_edge, label %if.end25.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25.i:                                       ; preds = %if.end19.i
  %num_total_dacs.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 33
  %231 = ptrtoint ptr %num_total_dacs.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %num_total_dacs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp26.not.i = icmp eq i32 %232, 0
  br i1 %cmp26.not.i, label %if.end25.i.if.end35.i_crit_edge, label %if.then27.i

if.end25.i.if.end35.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tmp.i) #14
  %233 = call ptr @memcpy(ptr %tmp.i, ptr @snd_ice1712_mixer_pro_analog_route, i32 48)
  %count.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %tmp.i, i32 0, i32 6
  %234 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %232, ptr %count.i, align 4
  %235 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %card40.i, align 4
  %call30.i279 = call ptr @snd_ctl_new1(ptr noundef nonnull %tmp.i, ptr noundef %11) #14
  %call31.i = call i32 @snd_ctl_add(ptr noundef %236, ptr noundef %call30.i279) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tmp.i) #14
  br i1 %cmp32.i, label %if.then27.i.cleanup_crit_edge, label %if.then27.i.if.end35.i_crit_edge

if.then27.i.if.end35.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then27.i.cleanup_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35.i:                                       ; preds = %if.then27.i.if.end35.i_crit_edge, %if.end25.i.if.end35.i_crit_edge
  %237 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %card40.i, align 4
  %call37.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_mixer_pro_spdif_route, ptr noundef %11) #14
  %call38.i = call i32 @snd_ctl_add(ptr noundef %238, ptr noundef %call37.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %if.end35.i.cleanup_crit_edge, label %if.end41.i281

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end41.i281:                                    ; preds = %if.end35.i
  %239 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %card40.i, align 4
  %call43.i280 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_mixer_pro_volume_rate, ptr noundef %11) #14
  %call44.i = call i32 @snd_ctl_add(ptr noundef %240, ptr noundef %call43.i280) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.end41.i281.cleanup_crit_edge, label %snd_ice1712_build_controls.exit

if.end41.i281.cleanup_crit_edge:                  ; preds = %if.end41.i281
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

snd_ice1712_build_controls.exit:                  ; preds = %if.end41.i281
  %241 = ptrtoint ptr %card40.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %card40.i, align 4
  %call49.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_mixer_pro_peak, ptr noundef %11) #14
  %call50.i = call i32 @snd_ctl_add(ptr noundef %242, ptr noundef %call49.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp78 = icmp slt i32 %call50.i, 0
  br i1 %cmp78, label %snd_ice1712_build_controls.exit.cleanup_crit_edge, label %if.end81

snd_ice1712_build_controls.exit.cleanup_crit_edge: ; preds = %snd_ice1712_build_controls.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end81:                                         ; preds = %snd_ice1712_build_controls.exit
  %build_controls = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.1, i32 0, i32 6
  %243 = ptrtoint ptr %build_controls to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %build_controls, align 4
  %tobool82.not = icmp eq ptr %244, null
  br i1 %tobool82.not, label %if.end81.if.end90_crit_edge, label %if.then83

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then83:                                        ; preds = %if.end81
  %call85 = call i32 %244(ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then83.cleanup_crit_edge, label %if.then83.if.end90_crit_edge

if.then83.if.end90_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end90:                                         ; preds = %if.then83.if.end90_crit_edge, %if.end81.if.end90_crit_edge
  %245 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %data, align 2
  %247 = and i8 %246, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool96.not = icmp eq i8 %247, 0
  br i1 %tobool96.not, label %if.then97, label %if.end90.if.end104_crit_edge

if.end90.if.end104_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104

if.then97:                                        ; preds = %if.end90
  %call99 = call fastcc i32 @snd_ice1712_pcm_ds(ptr noundef %11, i32 noundef %pcm_dev.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then97.cleanup_crit_edge, label %if.then97.if.end104_crit_edge

if.then97.if.end104_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104

if.then97.cleanup_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end104:                                        ; preds = %if.then97.if.end104_crit_edge, %if.end90.if.end104_crit_edge
  %no_mpu401 = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.1, i32 0, i32 7
  %248 = ptrtoint ptr %no_mpu401 to i32
  call void @__asan_load1_noabort(i32 %248)
  %bf.load = load i8, ptr %no_mpu401, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool105.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool105.not, label %if.then106, label %if.end104.if.end152_crit_edge

if.end104.if.end152_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

if.then106:                                       ; preds = %if.end104
  %249 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %card, align 4
  %251 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %port.i, align 4
  %add = add i32 %252, 12
  %mpu401_1_info_flags = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.1, i32 0, i32 8
  %253 = ptrtoint ptr %mpu401_1_info_flags to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %mpu401_1_info_flags, align 4
  %or107 = or i32 %254, 36
  %rmidi = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 26
  %call109 = call i32 @snd_mpu401_uart_new(ptr noundef %250, i32 noundef 0, i16 noundef zeroext 12, i32 noundef %add, i32 noundef %or107, i32 noundef -1, ptr noundef %rmidi) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.then106.cleanup_crit_edge, label %if.end113

if.then106.cleanup_crit_edge:                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end113:                                        ; preds = %if.then106
  %mpu401_1_name = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.1, i32 0, i32 10
  %255 = ptrtoint ptr %mpu401_1_name to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mpu401_1_name, align 4
  %tobool114.not = icmp eq ptr %256, null
  br i1 %tobool114.not, label %if.end113.if.end122_crit_edge, label %if.then115

if.end113.if.end122_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  %257 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %rmidi, align 4
  %name118 = getelementptr inbounds %struct.snd_rawmidi, ptr %258, i32 0, i32 5
  %259 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %card, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %260, align 8
  %call121 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name118, i32 noundef 80, ptr noundef nonnull @.str.12, ptr noundef nonnull %256, i32 noundef %262)
  br label %if.end122

if.end122:                                        ; preds = %if.then115, %if.end113.if.end122_crit_edge
  %263 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %data, align 2
  %265 = and i8 %264, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool128.not = icmp eq i8 %265, 0
  br i1 %tobool128.not, label %if.end122.if.end152_crit_edge, label %if.then129

if.end122.if.end152_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

if.then129:                                       ; preds = %if.end122
  %266 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %card, align 4
  %268 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %port.i, align 4
  %add131 = add i32 %269, 28
  %mpu401_2_info_flags = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.1, i32 0, i32 9
  %270 = ptrtoint ptr %mpu401_2_info_flags to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %mpu401_2_info_flags, align 4
  %or133 = or i32 %271, 36
  %arrayidx135 = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 26, i32 1
  %call136 = call i32 @snd_mpu401_uart_new(ptr noundef %267, i32 noundef 1, i16 noundef zeroext 12, i32 noundef %add131, i32 noundef %or133, i32 noundef -1, ptr noundef %arrayidx135) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.then129.cleanup_crit_edge, label %if.end140

if.then129.cleanup_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end140:                                        ; preds = %if.then129
  %mpu401_2_name = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.1, i32 0, i32 11
  %272 = ptrtoint ptr %mpu401_2_name to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %mpu401_2_name, align 4
  %tobool141.not = icmp eq ptr %273, null
  br i1 %tobool141.not, label %if.end140.if.end152_crit_edge, label %if.then142

if.end140.if.end152_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

if.then142:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  %274 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx135, align 4
  %name145 = getelementptr inbounds %struct.snd_rawmidi, ptr %275, i32 0, i32 5
  %276 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %card, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %277, align 8
  %call149 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name145, i32 noundef 80, ptr noundef nonnull @.str.12, ptr noundef nonnull %273, i32 noundef %279)
  br label %if.end152

if.end152:                                        ; preds = %if.then142, %if.end140.if.end152_crit_edge, %if.end122.if.end152_crit_edge, %if.end104.if.end152_crit_edge
  call fastcc void @snd_ice1712_set_input_clock_source(ptr noundef %11, i32 noundef 0)
  %280 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %281, i32 0, i32 4
  %shortname154 = getelementptr inbounds %struct.snd_card, ptr %281, i32 0, i32 3
  %282 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %port.i, align 4
  %284 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %irq.i, align 4
  %call157 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.13, ptr noundef %shortname154, i32 noundef %283, i32 noundef %285)
  %286 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %card, align 4
  %call158 = call i32 @snd_card_register(ptr noundef %287) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %if.end152.cleanup_crit_edge, label %if.end162

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end162:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  %288 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %290 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %289, ptr %driver_data.i.i, align 4
  %291 = load i32, ptr @snd_ice1712_probe.dev, align 4
  %inc163 = add i32 %291, 1
  store i32 %inc163, ptr @snd_ice1712_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end162, %if.end152.cleanup_crit_edge, %if.then129.cleanup_crit_edge, %if.then106.cleanup_crit_edge, %if.then97.cleanup_crit_edge, %if.then83.cleanup_crit_edge, %snd_ice1712_build_controls.exit.cleanup_crit_edge, %if.end41.i281.cleanup_crit_edge, %if.end35.i.cleanup_crit_edge, %if.then27.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end13.i276.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i274.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %snd_ice1712_ac97_mixer.exit.cleanup_crit_edge, %snd_ice1712_ac97_mixer.exit.thread, %snd_ice1712_pcm.exit.thread, %snd_ice1712_pcm_profi.exit.thread, %if.then42.cleanup_crit_edge, %if.end69.i.cleanup_crit_edge, %do.end66.i, %if.end4.i.cleanup_crit_edge, %do.end.i, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end162 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call44, %if.then42.cleanup_crit_edge ], [ %call11.i, %snd_ice1712_ac97_mixer.exit.cleanup_crit_edge ], [ %call50.i, %snd_ice1712_build_controls.exit.cleanup_crit_edge ], [ %call85, %if.then83.cleanup_crit_edge ], [ %call99, %if.then97.cleanup_crit_edge ], [ %call109, %if.then106.cleanup_crit_edge ], [ %call136, %if.then129.cleanup_crit_edge ], [ %call158, %if.end152.cleanup_crit_edge ], [ %retval.0.i248.ph, %snd_ice1712_pcm_profi.exit.thread ], [ %call.i251, %snd_ice1712_pcm.exit.thread ], [ %retval.0.i267.ph, %snd_ice1712_ac97_mixer.exit.thread ], [ -5, %if.end69.i.cleanup_crit_edge ], [ %call46.i, %if.end4.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -5, %do.end66.i ], [ -6, %do.end.i ], [ %call44.i, %if.end41.i281.cleanup_crit_edge ], [ %call38.i, %if.end35.i.cleanup_crit_edge ], [ %call22.i277, %if.end19.i.cleanup_crit_edge ], [ %call16.i, %if.end13.i276.cleanup_crit_edge ], [ %call10.i275, %if.end7.i.cleanup_crit_edge ], [ %call4.i272, %if.end.i274.cleanup_crit_edge ], [ %call1.i, %if.end76.cleanup_crit_edge ], [ %call31.i, %if.then27.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ice1712_pcm_ds(ptr noundef %ice, i32 noundef %device) unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #14
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !419
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.124, i32 noundef %device, i32 noundef 6, i32 noundef 0, ptr noundef nonnull %pcm) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_ice1712_playback_ds_ops) #14
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ice, ptr %private_data, align 8
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 3
  %8 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %name, ptr @.str.124, i32 22)
  %pcm_ds = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 12
  %10 = ptrtoint ptr %pcm_ds to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %pcm_ds, align 4
  %pci = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 9
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call2 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %6, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 131072) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ice1712_set_input_clock_source(ptr nocapture noundef readonly %ice, i32 noundef %spdif_is_master) unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca [2 x i8], align 2
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cs8427 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 44
  %0 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs8427, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #14
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -31744, ptr %reg.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #14
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val.i, align 1, !annotation !419
  %i2c.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 43
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %master.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  %bus..i.i = select i1 %tobool.not.i.i, ptr %5, ptr %7
  %lock_mutex2.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i.i, i32 noundef 0) #14
  %8 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cs8427, align 4
  %call.i = call i32 @snd_i2c_sendbytes(ptr noundef %9, ptr noundef nonnull %reg.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c.i, align 4
  %master.i1.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %master.i1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i1.i, align 4
  %tobool.not.i2.i = icmp eq ptr %13, null
  %bus..i3.i = select i1 %tobool.not.i2.i, ptr %11, ptr %13
  br label %snd_ice1712_cs8427_set_input_clock.exit

if.end.i:                                         ; preds = %if.then
  %14 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cs8427, align 4
  %call3.i = call i32 @snd_i2c_readbytes(ptr noundef %15, ptr noundef nonnull %val.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 1
  br i1 %cmp4.not.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c.i, align 4
  %master.i5.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %master.i5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master.i5.i, align 4
  %tobool.not.i6.i = icmp eq ptr %19, null
  %bus..i7.i = select i1 %tobool.not.i6.i, ptr %17, ptr %19
  br label %snd_ice1712_cs8427_set_input_clock.exit

if.end7.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i, align 1
  %22 = and i8 %21, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spdif_is_master)
  %tobool.not.i = icmp eq i32 %spdif_is_master, 0
  %nval.0.v.i = select i1 %tobool.not.i, i8 4, i8 1
  %nval.0.i = or i8 %22, %nval.0.v.i
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %nval.0.i)
  %cmp18.not.i = icmp eq i8 %21, %nval.0.i
  br i1 %cmp18.not.i, label %if.end7.i.if.end29.i_crit_edge, label %if.then20.i

if.end7.i.if.end29.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then20.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr inbounds [2 x i8], ptr %reg.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %nval.0.i, ptr %arrayidx.i, align 1
  %24 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cs8427, align 4
  %call23.i = call i32 @snd_i2c_sendbytes(ptr noundef %25, ptr noundef nonnull %reg.i, i32 noundef 2) #14
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then20.i, %if.end7.i.if.end29.i_crit_edge
  %26 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c.i, align 4
  %master.i9.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %master.i9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master.i9.i, align 4
  %tobool.not.i10.i = icmp eq ptr %29, null
  %bus..i11.i = select i1 %tobool.not.i10.i, ptr %27, ptr %29
  br label %snd_ice1712_cs8427_set_input_clock.exit

snd_ice1712_cs8427_set_input_clock.exit:          ; preds = %if.end29.i, %if.then5.i, %if.then.i
  %bus..i11.sink.i = phi ptr [ %bus..i11.i, %if.end29.i ], [ %bus..i7.i, %if.then5.i ], [ %bus..i3.i, %if.then.i ]
  %lock_mutex2.i12.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i11.sink.i, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i12.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #14
  br label %if.end

if.end:                                           ; preds = %snd_ice1712_cs8427_set_input_clock.exit, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spdif_is_master)
  %tobool1.not = icmp eq i32 %spdif_is_master, 0
  br i1 %tobool1.not, label %if.end.if.end12_crit_edge, label %for.cond.preheader

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

for.cond.preheader:                               ; preds = %if.end
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %30 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %akm_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp23.not = icmp eq i32 %31, 0
  br i1 %cmp23.not, label %for.cond.preheader.if.end12_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %32 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %akm, align 4
  %set_rate_val = getelementptr %struct.snd_akm4xxx, ptr %33, i32 %i.024, i32 11, i32 3
  %34 = ptrtoint ptr %set_rate_val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_rate_val, align 4
  %tobool3.not = icmp eq ptr %35, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %33, i32 %i.024
  call void %35(ptr noundef %arrayidx, i32 noundef 0) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.024, 1
  %36 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %akm_codecs, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end12_crit_edge

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end12:                                         ; preds = %for.inc.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ice1712_set_gpio_mask(ptr nocapture noundef readonly %ice, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %data to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 33) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %4, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %5 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #14, !srcloc !422
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %add = add i32 %7, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !428
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_get_gpio_mask(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 33) #14, !srcloc !422
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %4, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %5 = inttoptr i32 %add5.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  %conv = zext i8 %6 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ice1712_set_gpio_dir(ptr nocapture noundef readonly %ice, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %data to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 34) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %4, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %5 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #14, !srcloc !422
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %add = add i32 %7, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !431
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_get_gpio_dir(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 34) #14, !srcloc !422
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %4, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %5 = inttoptr i32 %add5.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  %conv = zext i8 %6 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ice1712_set_gpio_data(ptr nocapture noundef readonly %ice, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 32) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %4, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %5 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv) #14, !srcloc !422
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %add = add i32 %7, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !432
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_get_gpio_data(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 32) #14, !srcloc !422
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %4, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %5 = inttoptr i32 %add5.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  %conv = zext i8 %6 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add248 = add i32 %1, 2
  %and249 = and i32 %add248, 1048575
  %add1250 = or i32 %and249, -18874368
  %2 = inttoptr i32 %add1250 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp251 = icmp eq i8 %3, 0
  br i1 %cmp251, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %rmidi = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 26
  %arrayidx40 = getelementptr %struct.snd_ice1712, ptr %dev_id, i32 0, i32 26, i32 1
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 8
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 17
  %capture_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 18
  %dmapath_port = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 7
  %capture_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 16
  %playback_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 14
  br label %if.end

if.end:                                           ; preds = %if.end196.if.end_crit_edge, %if.end.lr.ph
  %4 = phi i8 [ %3, %if.end.lr.ph ], [ %66, %if.end196.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %tobool.not = icmp sgt i8 %4, -1
  br i1 %tobool.not, label %if.end.if.end21_crit_edge, label %if.then6

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then6:                                         ; preds = %if.end
  %5 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmidi, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.then6.do.body_crit_edge, label %if.then8

if.then6.do.body_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %call11 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %8) #14
  br label %do.body

do.body:                                          ; preds = %if.then8, %if.then6.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !434
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add14 = add i32 %10, 2
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %11 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -128) #14, !srcloc !422
  %and19 = and i8 %4, 127
  br label %if.end21

if.end21:                                         ; preds = %do.body, %if.end.if.end21_crit_edge
  %status.0 = phi i8 [ %and19, %do.body ], [ %4, %if.end.if.end21_crit_edge ]
  %conv22 = zext i8 %status.0 to i32
  %and23 = and i32 %conv22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end34_crit_edge, label %do.body26

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

do.body26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !435
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add30 = add i32 %13, 2
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %14 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 64) #14, !srcloc !422
  br label %if.end34

if.end34:                                         ; preds = %do.body26, %if.end21.if.end34_crit_edge
  %and36 = and i32 %conv22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end59_crit_edge, label %if.then38

if.end34.if.end59_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then38:                                        ; preds = %if.end34
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %16, null
  br i1 %tobool41.not, label %if.then38.do.body48_crit_edge, label %if.then42

if.then38.do.body48_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body48

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  %private_data45 = getelementptr inbounds %struct.snd_rawmidi, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %private_data45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data45, align 4
  %call46 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %18) #14
  br label %do.body48

do.body48:                                        ; preds = %if.then42, %if.then38.do.body48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !436
  tail call void @arm_heavy_mb() #14
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add52 = add i32 %20, 2
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %21 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 32) #14, !srcloc !422
  %and57 = and i8 %status.0, -33
  %.pre = zext i8 %and57 to i32
  br label %if.end59

if.end59:                                         ; preds = %do.body48, %if.end34.if.end59_crit_edge
  %conv60.pre-phi = phi i32 [ %.pre, %do.body48 ], [ %conv22, %if.end34.if.end59_crit_edge ]
  %and61 = and i32 %conv60.pre-phi, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end105_crit_edge, label %if.then63

if.end59.if.end105_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then63:                                        ; preds = %if.end59
  %22 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %profi_port, align 4
  %and66 = and i32 %23, 1048575
  %add67 = or i32 %and66, -18874368
  %24 = inttoptr i32 %add67 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !437
  %conv71 = zext i8 %25 to i32
  %and72 = and i32 %conv71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then63.if.end87_crit_edge, label %if.then74

if.then63.if.end87_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.then74:                                        ; preds = %if.then63
  %26 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %playback_pro_substream, align 4
  %tobool75.not = icmp eq ptr %27, null
  br i1 %tobool75.not, label %if.then74.do.body79_crit_edge, label %if.then76

if.then74.do.body79_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body79

if.then76:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %27) #14
  br label %do.body79

do.body79:                                        ; preds = %if.then76, %if.then74.do.body79_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !438
  tail call void @arm_heavy_mb() #14
  %28 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %profi_port, align 4
  %and84 = and i32 %29, 1048575
  %add85 = or i32 %and84, -18874368
  %30 = inttoptr i32 %add85 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 1) #14, !srcloc !422
  br label %if.end87

if.end87:                                         ; preds = %do.body79, %if.then63.if.end87_crit_edge
  %and89 = and i32 %conv71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end87.if.end105_crit_edge, label %if.then91

if.end87.if.end105_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then91:                                        ; preds = %if.end87
  %31 = ptrtoint ptr %capture_pro_substream to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %capture_pro_substream, align 4
  %tobool92.not = icmp eq ptr %32, null
  br i1 %tobool92.not, label %if.then91.do.body96_crit_edge, label %if.then93

if.then91.do.body96_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body96

if.then93:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %32) #14
  br label %do.body96

do.body96:                                        ; preds = %if.then93, %if.then91.do.body96_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !439
  tail call void @arm_heavy_mb() #14
  %33 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %profi_port, align 4
  %and101 = and i32 %34, 1048575
  %add102 = or i32 %and101, -18874368
  %35 = inttoptr i32 %add102 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 2) #14, !srcloc !422
  br label %if.end105

if.end105:                                        ; preds = %do.body96, %if.end87.if.end105_crit_edge, %if.end59.if.end105_crit_edge
  %and107 = and i32 %conv60.pre-phi, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end105.if.end118_crit_edge, label %do.body110

if.end105.if.end118_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end118

do.body110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !440
  tail call void @arm_heavy_mb() #14
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add114 = add i32 %37, 2
  %and115 = and i32 %add114, 1048575
  %add116 = or i32 %and115, -18874368
  %38 = inttoptr i32 %add116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 8) #14, !srcloc !422
  br label %if.end118

if.end118:                                        ; preds = %do.body110, %if.end105.if.end118_crit_edge
  %and120 = and i32 %conv60.pre-phi, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end118.if.end162_crit_edge, label %if.then122

if.end118.if.end162_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

if.then122:                                       ; preds = %if.end118
  %39 = ptrtoint ptr %dmapath_port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dmapath_port, align 4
  %add124 = add i32 %40, 2
  %and125 = and i32 %add124, 1048575
  %add126 = or i32 %and125, -18874368
  %41 = inttoptr i32 %add126 to ptr
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %41) #14, !srcloc !441
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !442
  %conv132 = zext i16 %43 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then122
  %idx.0246 = phi i32 [ 0, %if.then122 ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %idx.0246, 1
  %shl = shl nuw nsw i32 3, %mul
  %and133 = and i32 %shl, %conv132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %cmp134 = icmp eq i32 %and133, 0
  br i1 %cmp134, label %for.body.for.inc_crit_edge, label %if.end137

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end137:                                        ; preds = %for.body
  %arrayidx138 = getelementptr %struct.snd_ice1712, ptr %dev_id, i32 0, i32 15, i32 %idx.0246
  %44 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx138, align 4
  %cmp139.not = icmp eq ptr %45, null
  br i1 %cmp139.not, label %if.end137.do.body143_crit_edge, label %if.then141

if.end137.do.body143_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body143

if.then141:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %45) #14
  br label %do.body143

do.body143:                                       ; preds = %if.then141, %if.end137.do.body143_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !443
  tail call void @arm_heavy_mb() #14
  %conv148 = trunc i32 %shl to i16
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv148)
  %47 = ptrtoint ptr %dmapath_port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dmapath_port, align 4
  %add150 = add i32 %48, 2
  %and151 = and i32 %add150, 1048575
  %add152 = or i32 %and151, -18874368
  %49 = inttoptr i32 %add152 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %49, i16 %46) #14, !srcloc !424
  br label %for.inc

for.inc:                                          ; preds = %do.body143, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.0246, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %do.body154, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body154:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !444
  tail call void @arm_heavy_mb() #14
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add158 = add i32 %51, 2
  %and159 = and i32 %add158, 1048575
  %add160 = or i32 %and159, -18874368
  %52 = inttoptr i32 %add160 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 4) #14, !srcloc !422
  br label %if.end162

if.end162:                                        ; preds = %do.body154, %if.end118.if.end162_crit_edge
  %and164 = and i32 %conv60.pre-phi, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end162.if.end179_crit_edge, label %if.then166

if.end162.if.end179_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end179

if.then166:                                       ; preds = %if.end162
  %53 = ptrtoint ptr %capture_con_substream to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %capture_con_substream, align 4
  %tobool167.not = icmp eq ptr %54, null
  br i1 %tobool167.not, label %if.then166.do.body171_crit_edge, label %if.then168

if.then166.do.body171_crit_edge:                  ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body171

if.then168:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %54) #14
  br label %do.body171

do.body171:                                       ; preds = %if.then168, %if.then166.do.body171_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !445
  tail call void @arm_heavy_mb() #14
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %add175 = add i32 %56, 2
  %and176 = and i32 %add175, 1048575
  %add177 = or i32 %and176, -18874368
  %57 = inttoptr i32 %add177 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 2) #14, !srcloc !422
  br label %if.end179

if.end179:                                        ; preds = %do.body171, %if.end162.if.end179_crit_edge
  %and181 = and i32 %conv60.pre-phi, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end179.if.end196_crit_edge, label %if.then183

if.end179.if.end196_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end196

if.then183:                                       ; preds = %if.end179
  %58 = ptrtoint ptr %playback_con_substream to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %playback_con_substream, align 4
  %tobool184.not = icmp eq ptr %59, null
  br i1 %tobool184.not, label %if.then183.do.body188_crit_edge, label %if.then185

if.then183.do.body188_crit_edge:                  ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body188

if.then185:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %59) #14
  br label %do.body188

do.body188:                                       ; preds = %if.then185, %if.then183.do.body188_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !446
  tail call void @arm_heavy_mb() #14
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add192 = add i32 %61, 2
  %and193 = and i32 %add192, 1048575
  %add194 = or i32 %and193, -18874368
  %62 = inttoptr i32 %add194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 1) #14, !srcloc !422
  br label %if.end196

if.end196:                                        ; preds = %do.body188, %if.end179.if.end196_crit_edge
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add = add i32 %64, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %65 = inttoptr i32 %add1 to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !433
  %cmp = icmp eq i8 %66, 0
  br i1 %cmp, label %if.end196.while.end_crit_edge, label %if.end196.if.end_crit_edge

if.end196.if.end_crit_edge:                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end196.while.end_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end196.while.end_crit_edge, %entry.while.end_crit_edge
  %tobool197.not.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 1, %if.end196.while.end_crit_edge ]
  ret i32 %tobool197.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ice1712_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %card_info = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %chip_exit = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %chip_exit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_exit, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %5(ptr noundef %1) #14
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !447
  tail call void @arm_heavy_mb() #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %profi_port, align 4
  %and = and i32 %7, 1048575
  %add5 = or i32 %and, -18874368
  %8 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -64) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !448
  tail call void @arm_heavy_mb() #14
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add9 = add i32 %10, 1
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %11 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -1) #14, !srcloc !422
  tail call void @snd_ice1712_akm4xxx_free(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ice1712_read_eeprom(ptr noundef %ice, ptr noundef readonly %modelname) unnamed_addr #0 align 64 {
entry:
  %vendor = alloca i16, align 2
  %device = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %modelname, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %modelname to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modelname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end59_crit_edge

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %eeprom, align 4
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 19
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %5 = inttoptr i32 %add2 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !449
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.not = icmp sgt i8 %6, -1
  br i1 %cmp.not, label %if.endthread-pre-split, label %if.then6

if.then6:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !450
  tail call void @arm_heavy_mb() #14
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add.i = add i32 %8, 17
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !451
  tail call void @arm_heavy_mb() #14
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add8.i = add i32 %11, 16
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %12 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 -96) #14, !srcloc !422
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.then6
  %t.0.i = phi i32 [ 65536, %if.then6 ], [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i)
  %cmp.not.i = icmp eq i32 %t.0.i, 0
  br i1 %cmp.not.i, label %while.cond.i.snd_ice1712_read_i2c.exit_crit_edge, label %land.rhs.i

while.cond.i.snd_ice1712_read_i2c.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %dec.i = add nsw i32 %t.0.i, -1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add14.i = add i32 %14, 19
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %15 = inttoptr i32 %add16.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !452
  %17 = and i8 %16, 1
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %land.rhs.i.snd_ice1712_read_i2c.exit_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

land.rhs.i.snd_ice1712_read_i2c.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit

snd_ice1712_read_i2c.exit:                        ; preds = %land.rhs.i.snd_ice1712_read_i2c.exit_crit_edge, %while.cond.i.snd_ice1712_read_i2c.exit_crit_edge
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add23.i = add i32 %19, 18
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %20 = inttoptr i32 %add25.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !453
  %conv9 = zext i8 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !450
  tail call void @arm_heavy_mb() #14
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %add.i279 = add i32 %23, 17
  %and.i280 = and i32 %add.i279, 1048575
  %add1.i281 = or i32 %and.i280, -18874368
  %24 = inttoptr i32 %add1.i281 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 1) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !451
  tail call void @arm_heavy_mb() #14
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port, align 4
  %add8.i282 = add i32 %26, 16
  %and9.i283 = and i32 %add8.i282, 1048575
  %add10.i284 = or i32 %and9.i283, -18874368
  %27 = inttoptr i32 %add10.i284 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -96) #14, !srcloc !422
  br label %while.cond.i287

while.cond.i287:                                  ; preds = %land.rhs.i293.while.cond.i287_crit_edge, %snd_ice1712_read_i2c.exit
  %t.0.i285 = phi i32 [ 65536, %snd_ice1712_read_i2c.exit ], [ %dec.i288, %land.rhs.i293.while.cond.i287_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i285)
  %cmp.not.i286 = icmp eq i32 %t.0.i285, 0
  br i1 %cmp.not.i286, label %while.cond.i287.snd_ice1712_read_i2c.exit297_crit_edge, label %land.rhs.i293

while.cond.i287.snd_ice1712_read_i2c.exit297_crit_edge: ; preds = %while.cond.i287
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit297

land.rhs.i293:                                    ; preds = %while.cond.i287
  %dec.i288 = add nsw i32 %t.0.i285, -1
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add14.i289 = add i32 %29, 19
  %and15.i290 = and i32 %add14.i289, 1048575
  %add16.i291 = or i32 %and15.i290, -18874368
  %30 = inttoptr i32 %add16.i291 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !452
  %32 = and i8 %31, 1
  %tobool.not.i292 = icmp eq i8 %32, 0
  br i1 %tobool.not.i292, label %land.rhs.i293.snd_ice1712_read_i2c.exit297_crit_edge, label %land.rhs.i293.while.cond.i287_crit_edge

land.rhs.i293.while.cond.i287_crit_edge:          ; preds = %land.rhs.i293
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i287

land.rhs.i293.snd_ice1712_read_i2c.exit297_crit_edge: ; preds = %land.rhs.i293
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit297

snd_ice1712_read_i2c.exit297:                     ; preds = %land.rhs.i293.snd_ice1712_read_i2c.exit297_crit_edge, %while.cond.i287.snd_ice1712_read_i2c.exit297_crit_edge
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add23.i294 = add i32 %34, 18
  %and24.i295 = and i32 %add23.i294, 1048575
  %add25.i296 = or i32 %and24.i295, -18874368
  %35 = inttoptr i32 %add25.i296 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !453
  %conv12 = zext i8 %36 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or = or i32 %shl13, %conv9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !450
  tail call void @arm_heavy_mb() #14
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %add.i299 = add i32 %38, 17
  %and.i300 = and i32 %add.i299, 1048575
  %add1.i301 = or i32 %and.i300, -18874368
  %39 = inttoptr i32 %add1.i301 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 2) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !451
  tail call void @arm_heavy_mb() #14
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add8.i302 = add i32 %41, 16
  %and9.i303 = and i32 %add8.i302, 1048575
  %add10.i304 = or i32 %and9.i303, -18874368
  %42 = inttoptr i32 %add10.i304 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 -96) #14, !srcloc !422
  br label %while.cond.i307

while.cond.i307:                                  ; preds = %land.rhs.i313.while.cond.i307_crit_edge, %snd_ice1712_read_i2c.exit297
  %t.0.i305 = phi i32 [ 65536, %snd_ice1712_read_i2c.exit297 ], [ %dec.i308, %land.rhs.i313.while.cond.i307_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i305)
  %cmp.not.i306 = icmp eq i32 %t.0.i305, 0
  br i1 %cmp.not.i306, label %while.cond.i307.snd_ice1712_read_i2c.exit317_crit_edge, label %land.rhs.i313

while.cond.i307.snd_ice1712_read_i2c.exit317_crit_edge: ; preds = %while.cond.i307
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit317

land.rhs.i313:                                    ; preds = %while.cond.i307
  %dec.i308 = add nsw i32 %t.0.i305, -1
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %add14.i309 = add i32 %44, 19
  %and15.i310 = and i32 %add14.i309, 1048575
  %add16.i311 = or i32 %and15.i310, -18874368
  %45 = inttoptr i32 %add16.i311 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !452
  %47 = and i8 %46, 1
  %tobool.not.i312 = icmp eq i8 %47, 0
  br i1 %tobool.not.i312, label %land.rhs.i313.snd_ice1712_read_i2c.exit317_crit_edge, label %land.rhs.i313.while.cond.i307_crit_edge

land.rhs.i313.while.cond.i307_crit_edge:          ; preds = %land.rhs.i313
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i307

land.rhs.i313.snd_ice1712_read_i2c.exit317_crit_edge: ; preds = %land.rhs.i313
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit317

snd_ice1712_read_i2c.exit317:                     ; preds = %land.rhs.i313.snd_ice1712_read_i2c.exit317_crit_edge, %while.cond.i307.snd_ice1712_read_i2c.exit317_crit_edge
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add23.i314 = add i32 %49, 18
  %and24.i315 = and i32 %add23.i314, 1048575
  %add25.i316 = or i32 %and24.i315, -18874368
  %50 = inttoptr i32 %add25.i316 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !453
  %conv16 = zext i8 %51 to i32
  %shl17 = shl nuw nsw i32 %conv16, 16
  %or18 = or i32 %shl17, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !450
  tail call void @arm_heavy_mb() #14
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add.i319 = add i32 %53, 17
  %and.i320 = and i32 %add.i319, 1048575
  %add1.i321 = or i32 %and.i320, -18874368
  %54 = inttoptr i32 %add1.i321 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 3) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !451
  tail call void @arm_heavy_mb() #14
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %add8.i322 = add i32 %56, 16
  %and9.i323 = and i32 %add8.i322, 1048575
  %add10.i324 = or i32 %and9.i323, -18874368
  %57 = inttoptr i32 %add10.i324 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 -96) #14, !srcloc !422
  br label %while.cond.i327

while.cond.i327:                                  ; preds = %land.rhs.i333.while.cond.i327_crit_edge, %snd_ice1712_read_i2c.exit317
  %t.0.i325 = phi i32 [ 65536, %snd_ice1712_read_i2c.exit317 ], [ %dec.i328, %land.rhs.i333.while.cond.i327_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i325)
  %cmp.not.i326 = icmp eq i32 %t.0.i325, 0
  br i1 %cmp.not.i326, label %while.cond.i327.snd_ice1712_read_i2c.exit337_crit_edge, label %land.rhs.i333

while.cond.i327.snd_ice1712_read_i2c.exit337_crit_edge: ; preds = %while.cond.i327
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit337

land.rhs.i333:                                    ; preds = %while.cond.i327
  %dec.i328 = add nsw i32 %t.0.i325, -1
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %add14.i329 = add i32 %59, 19
  %and15.i330 = and i32 %add14.i329, 1048575
  %add16.i331 = or i32 %and15.i330, -18874368
  %60 = inttoptr i32 %add16.i331 to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !452
  %62 = and i8 %61, 1
  %tobool.not.i332 = icmp eq i8 %62, 0
  br i1 %tobool.not.i332, label %land.rhs.i333.snd_ice1712_read_i2c.exit337_crit_edge, label %land.rhs.i333.while.cond.i327_crit_edge

land.rhs.i333.while.cond.i327_crit_edge:          ; preds = %land.rhs.i333
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i327

land.rhs.i333.snd_ice1712_read_i2c.exit337_crit_edge: ; preds = %land.rhs.i333
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit337

snd_ice1712_read_i2c.exit337:                     ; preds = %land.rhs.i333.snd_ice1712_read_i2c.exit337_crit_edge, %while.cond.i327.snd_ice1712_read_i2c.exit337_crit_edge
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add23.i334 = add i32 %64, 18
  %and24.i335 = and i32 %add23.i334, 1048575
  %add25.i336 = or i32 %and24.i335, -18874368
  %65 = inttoptr i32 %add25.i336 to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !453
  %conv21 = zext i8 %66 to i32
  %shl22 = shl nuw i32 %conv21, 24
  %or23 = or i32 %shl22, %or18
  %67 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or23, ptr %eeprom, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %eeprom, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %snd_ice1712_read_i2c.exit337
  %69 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %or23, %snd_ice1712_read_i2c.exit337 ]
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i32 %69, label %if.end.if.end59_crit_edge [
    i32 0, label %if.end.if.then35_crit_edge
    i32 -1, label %if.end.if.then35_crit_edge458
  ]

if.end.if.then35_crit_edge458:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.end.if.then35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then35:                                        ; preds = %if.end.if.then35_crit_edge, %if.end.if.then35_crit_edge458
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor) #14
  %71 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %vendor, align 2, !annotation !419
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %device) #14
  %72 = ptrtoint ptr %device to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %device, align 2, !annotation !419
  %pci = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 9
  %73 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pci, align 4
  %call36 = call i32 @pci_read_config_word(ptr noundef %74, i32 noundef 44, ptr noundef nonnull %vendor) #14
  %75 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pci, align 4
  %call38 = call i32 @pci_read_config_word(ptr noundef %76, i32 noundef 46, ptr noundef nonnull %device) #14
  %77 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vendor, align 2
  %79 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %device, align 2
  %81 = zext i16 %78 to i32
  %82 = zext i16 %80 to i32
  %83 = shl nuw i32 %82, 16
  %84 = or i32 %83, %81
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  %86 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %eeprom, align 4
  %87 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %84, label %cleanup [
    i32 0, label %if.then35.do.end_crit_edge
    i32 -1, label %if.then35.do.end_crit_edge459
  ]

if.then35.do.end_crit_edge459:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then35.do.end_crit_edge:                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %if.then35.do.end_crit_edge, %if.then35.do.end_crit_edge459
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %88 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card, align 4
  %dev55 = getelementptr inbounds %struct.snd_card, ptr %89, i32 0, i32 27
  %90 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev55, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.54) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %device) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor) #14
  br label %cleanup202

cleanup:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %device) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor) #14
  br label %if.end59

if.end59:                                         ; preds = %cleanup, %if.end.if.end59_crit_edge, %lor.lhs.false.if.end59_crit_edge
  %eeprom81 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_ice1712_hoontech_cards to i32))
  %92 = load i32, ptr @snd_ice1712_hoontech_cards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool63.not402 = icmp eq i32 %92, 0
  br i1 %tobool63.not402, label %if.end59.for.inc114_crit_edge, label %if.end59.for.body64_crit_edge

if.end59.for.body64_crit_edge:                    ; preds = %if.end59
  br label %for.body64

if.end59.for.inc114_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc114

for.body64:                                       ; preds = %for.inc.for.body64_crit_edge, %if.end59.for.body64_crit_edge
  %93 = phi i32 [ %125, %for.inc.for.body64_crit_edge ], [ %92, %if.end59.for.body64_crit_edge ]
  %c.0403 = phi ptr [ %incdec.ptr, %for.inc.for.body64_crit_edge ], [ @snd_ice1712_hoontech_cards, %if.end59.for.body64_crit_edge ]
  br i1 %tobool.not, label %for.body64.if.else_crit_edge, label %land.lhs.true

for.body64.if.else_crit_edge:                     ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %for.body64
  %model = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0403, i32 0, i32 2
  %94 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %model, align 4
  %tobool66.not = icmp eq ptr %95, null
  br i1 %tobool66.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true67

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true67:                                  ; preds = %land.lhs.true
  %call69 = call i32 @strcmp(ptr noundef nonnull %modelname, ptr noundef nonnull %95) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true67.do.end74_crit_edge, label %land.lhs.true67.if.else_crit_edge

land.lhs.true67.if.else_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true67.do.end74_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end74

do.end74:                                         ; preds = %land.lhs.true67.2.do.end74_crit_edge, %land.lhs.true67.1.do.end74_crit_edge, %land.lhs.true67.do.end74_crit_edge
  %c.0403.lcssa = phi ptr [ %c.0403.2, %land.lhs.true67.2.do.end74_crit_edge ], [ %c.0403.1, %land.lhs.true67.1.do.end74_crit_edge ], [ %c.0403, %land.lhs.true67.do.end74_crit_edge ]
  %card75 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %96 = ptrtoint ptr %card75 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %card75, align 4
  %dev76 = getelementptr inbounds %struct.snd_card, ptr %97, i32 0, i32 27
  %98 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev76, align 8
  %name = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0403.lcssa, i32 0, i32 1
  %100 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.57, ptr noundef %101) #17
  %102 = ptrtoint ptr %c.0403.lcssa to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %c.0403.lcssa, align 4
  %104 = ptrtoint ptr %eeprom81 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %eeprom81, align 4
  br label %if.end87

if.else:                                          ; preds = %land.lhs.true67.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body64.if.else_crit_edge
  %105 = ptrtoint ptr %eeprom81 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %eeprom81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %106)
  %cmp83.not = icmp eq i32 %93, %106
  br i1 %cmp83.not, label %if.else.if.end87_crit_edge, label %for.inc

if.else.if.end87_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.end87:                                         ; preds = %if.else.2.if.end87_crit_edge, %if.else.1.if.end87_crit_edge, %if.else.if.end87_crit_edge, %do.end74
  %c.0403409 = phi ptr [ %c.0403.lcssa, %do.end74 ], [ %c.0403.2, %if.else.2.if.end87_crit_edge ], [ %c.0403.1, %if.else.1.if.end87_crit_edge ], [ %c.0403, %if.else.if.end87_crit_edge ]
  %eeprom_size = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0403409, i32 0, i32 12
  %107 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %eeprom_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool88.not = icmp eq i32 %108, 0
  br i1 %tobool88.not, label %if.end87.found_crit_edge, label %lor.lhs.false89

if.end87.found_crit_edge:                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %found

lor.lhs.false89:                                  ; preds = %if.end87
  %eeprom_data = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0403409, i32 0, i32 13
  %109 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %eeprom_data, align 4
  %tobool90.not = icmp eq ptr %110, null
  br i1 %tobool90.not, label %lor.lhs.false89.found_crit_edge, label %do.body93

lor.lhs.false89.found_crit_edge:                  ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #16
  br label %found

do.body93:                                        ; preds = %lor.lhs.false89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ice1712_read_eeprom.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ice1712_read_eeprom, %if.then99)) #14
          to label %do.end104 [label %if.then99], !srcloc !454

if.then99:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #16
  %card100 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %111 = ptrtoint ptr %card100 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %card100, align 4
  %dev101 = getelementptr inbounds %struct.snd_card, ptr %112, i32 0, i32 27
  %113 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev101, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ice1712_read_eeprom.__UNIQUE_ID_ddebug260, ptr noundef %114, ptr noundef nonnull @.str.60) #14
  br label %do.end104

do.end104:                                        ; preds = %if.then99, %do.body93
  %version = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 2
  %115 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %version, align 1
  %116 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %eeprom_size, align 4
  %118 = trunc i32 %117 to i8
  %conv108 = add i8 %118, 6
  %size110 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 1
  %119 = ptrtoint ptr %size110 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv108, ptr %size110, align 4
  %data = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3
  %120 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %eeprom_data, align 4
  %122 = load i32, ptr %eeprom_size, align 4
  %123 = call ptr @memcpy(ptr %data, ptr %121, i32 %122)
  br label %read_skipped

for.inc:                                          ; preds = %if.else
  %incdec.ptr = getelementptr %struct.snd_ice1712_card_info, ptr %c.0403, i32 1
  %124 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %incdec.ptr, align 4
  %tobool63.not = icmp eq i32 %125, 0
  br i1 %tobool63.not, label %for.inc.for.inc114_crit_edge, label %for.inc.for.body64_crit_edge

for.inc.for.body64_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body64

for.inc.for.inc114_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc114

for.inc114:                                       ; preds = %for.inc.for.inc114_crit_edge, %if.end59.for.inc114_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_ice1712_delta_cards to i32))
  %126 = load i32, ptr @snd_ice1712_delta_cards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool63.not402.1 = icmp eq i32 %126, 0
  br i1 %tobool63.not402.1, label %for.inc114.for.inc114.1_crit_edge, label %for.inc114.for.body64.1_crit_edge

for.inc114.for.body64.1_crit_edge:                ; preds = %for.inc114
  br label %for.body64.1

for.inc114.for.inc114.1_crit_edge:                ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc114.1

for.body64.1:                                     ; preds = %for.inc.1.for.body64.1_crit_edge, %for.inc114.for.body64.1_crit_edge
  %127 = phi i32 [ %133, %for.inc.1.for.body64.1_crit_edge ], [ %126, %for.inc114.for.body64.1_crit_edge ]
  %c.0403.1 = phi ptr [ %incdec.ptr.1, %for.inc.1.for.body64.1_crit_edge ], [ @snd_ice1712_delta_cards, %for.inc114.for.body64.1_crit_edge ]
  br i1 %tobool.not, label %for.body64.1.if.else.1_crit_edge, label %land.lhs.true.1

for.body64.1.if.else.1_crit_edge:                 ; preds = %for.body64.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.1

land.lhs.true.1:                                  ; preds = %for.body64.1
  %model.1 = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0403.1, i32 0, i32 2
  %128 = ptrtoint ptr %model.1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %model.1, align 4
  %tobool66.not.1 = icmp eq ptr %129, null
  br i1 %tobool66.not.1, label %land.lhs.true.1.if.else.1_crit_edge, label %land.lhs.true67.1

land.lhs.true.1.if.else.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.1

land.lhs.true67.1:                                ; preds = %land.lhs.true.1
  %call69.1 = call i32 @strcmp(ptr noundef nonnull %modelname, ptr noundef nonnull %129) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.1)
  %tobool70.not.1 = icmp eq i32 %call69.1, 0
  br i1 %tobool70.not.1, label %land.lhs.true67.1.do.end74_crit_edge, label %land.lhs.true67.1.if.else.1_crit_edge

land.lhs.true67.1.if.else.1_crit_edge:            ; preds = %land.lhs.true67.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.1

land.lhs.true67.1.do.end74_crit_edge:             ; preds = %land.lhs.true67.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end74

if.else.1:                                        ; preds = %land.lhs.true67.1.if.else.1_crit_edge, %land.lhs.true.1.if.else.1_crit_edge, %for.body64.1.if.else.1_crit_edge
  %130 = ptrtoint ptr %eeprom81 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %eeprom81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %131)
  %cmp83.not.1 = icmp eq i32 %127, %131
  br i1 %cmp83.not.1, label %if.else.1.if.end87_crit_edge, label %for.inc.1

if.else.1.if.end87_crit_edge:                     ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

for.inc.1:                                        ; preds = %if.else.1
  %incdec.ptr.1 = getelementptr %struct.snd_ice1712_card_info, ptr %c.0403.1, i32 1
  %132 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %incdec.ptr.1, align 4
  %tobool63.not.1 = icmp eq i32 %133, 0
  br i1 %tobool63.not.1, label %for.inc.1.for.inc114.1_crit_edge, label %for.inc.1.for.body64.1_crit_edge

for.inc.1.for.body64.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body64.1

for.inc.1.for.inc114.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc114.1

for.inc114.1:                                     ; preds = %for.inc.1.for.inc114.1_crit_edge, %for.inc114.for.inc114.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_ice1712_ews_cards to i32))
  %134 = load i32, ptr @snd_ice1712_ews_cards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool63.not402.2 = icmp eq i32 %134, 0
  br i1 %tobool63.not402.2, label %for.inc114.1.for.inc114.2_crit_edge, label %for.inc114.1.for.body64.2_crit_edge

for.inc114.1.for.body64.2_crit_edge:              ; preds = %for.inc114.1
  br label %for.body64.2

for.inc114.1.for.inc114.2_crit_edge:              ; preds = %for.inc114.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc114.2

for.body64.2:                                     ; preds = %for.inc.2.for.body64.2_crit_edge, %for.inc114.1.for.body64.2_crit_edge
  %135 = phi i32 [ %141, %for.inc.2.for.body64.2_crit_edge ], [ %134, %for.inc114.1.for.body64.2_crit_edge ]
  %c.0403.2 = phi ptr [ %incdec.ptr.2, %for.inc.2.for.body64.2_crit_edge ], [ @snd_ice1712_ews_cards, %for.inc114.1.for.body64.2_crit_edge ]
  br i1 %tobool.not, label %for.body64.2.if.else.2_crit_edge, label %land.lhs.true.2

for.body64.2.if.else.2_crit_edge:                 ; preds = %for.body64.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.2

land.lhs.true.2:                                  ; preds = %for.body64.2
  %model.2 = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0403.2, i32 0, i32 2
  %136 = ptrtoint ptr %model.2 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %model.2, align 4
  %tobool66.not.2 = icmp eq ptr %137, null
  br i1 %tobool66.not.2, label %land.lhs.true.2.if.else.2_crit_edge, label %land.lhs.true67.2

land.lhs.true.2.if.else.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.2

land.lhs.true67.2:                                ; preds = %land.lhs.true.2
  %call69.2 = call i32 @strcmp(ptr noundef nonnull %modelname, ptr noundef nonnull %137) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.2)
  %tobool70.not.2 = icmp eq i32 %call69.2, 0
  br i1 %tobool70.not.2, label %land.lhs.true67.2.do.end74_crit_edge, label %land.lhs.true67.2.if.else.2_crit_edge

land.lhs.true67.2.if.else.2_crit_edge:            ; preds = %land.lhs.true67.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.2

land.lhs.true67.2.do.end74_crit_edge:             ; preds = %land.lhs.true67.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end74

if.else.2:                                        ; preds = %land.lhs.true67.2.if.else.2_crit_edge, %land.lhs.true.2.if.else.2_crit_edge, %for.body64.2.if.else.2_crit_edge
  %138 = ptrtoint ptr %eeprom81 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %eeprom81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %139)
  %cmp83.not.2 = icmp eq i32 %135, %139
  br i1 %cmp83.not.2, label %if.else.2.if.end87_crit_edge, label %for.inc.2

if.else.2.if.end87_crit_edge:                     ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

for.inc.2:                                        ; preds = %if.else.2
  %incdec.ptr.2 = getelementptr %struct.snd_ice1712_card_info, ptr %c.0403.2, i32 1
  %140 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %incdec.ptr.2, align 4
  %tobool63.not.2 = icmp eq i32 %141, 0
  br i1 %tobool63.not.2, label %for.inc.2.for.inc114.2_crit_edge, label %for.inc.2.for.body64.2_crit_edge

for.inc.2.for.body64.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body64.2

for.inc.2.for.inc114.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc114.2

for.inc114.2:                                     ; preds = %for.inc.2.for.inc114.2_crit_edge, %for.inc114.1.for.inc114.2_crit_edge
  %card120 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %142 = ptrtoint ptr %card120 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %card120, align 4
  %dev121 = getelementptr inbounds %struct.snd_card, ptr %143, i32 0, i32 27
  %144 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev121, align 8
  %146 = ptrtoint ptr %eeprom81 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %eeprom81, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %145, ptr noundef nonnull @.str.62, i32 noundef %147) #17
  br label %found

found:                                            ; preds = %for.inc114.2, %lor.lhs.false89.found_crit_edge, %if.end87.found_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !450
  call void @arm_heavy_mb() #14
  %port.i338 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %148 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %port.i338, align 4
  %add.i339 = add i32 %149, 17
  %and.i340 = and i32 %add.i339, 1048575
  %add1.i341 = or i32 %and.i340, -18874368
  %150 = inttoptr i32 %add1.i341 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 4) #14, !srcloc !422
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !451
  call void @arm_heavy_mb() #14
  %151 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %port.i338, align 4
  %add8.i342 = add i32 %152, 16
  %and9.i343 = and i32 %add8.i342, 1048575
  %add10.i344 = or i32 %and9.i343, -18874368
  %153 = inttoptr i32 %add10.i344 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %153, i8 -96) #14, !srcloc !422
  br label %while.cond.i347

while.cond.i347:                                  ; preds = %land.rhs.i353.while.cond.i347_crit_edge, %found
  %t.0.i345 = phi i32 [ 65536, %found ], [ %dec.i348, %land.rhs.i353.while.cond.i347_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i345)
  %cmp.not.i346 = icmp eq i32 %t.0.i345, 0
  br i1 %cmp.not.i346, label %while.cond.i347.snd_ice1712_read_i2c.exit357_crit_edge, label %land.rhs.i353

while.cond.i347.snd_ice1712_read_i2c.exit357_crit_edge: ; preds = %while.cond.i347
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit357

land.rhs.i353:                                    ; preds = %while.cond.i347
  %dec.i348 = add nsw i32 %t.0.i345, -1
  %154 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %port.i338, align 4
  %add14.i349 = add i32 %155, 19
  %and15.i350 = and i32 %add14.i349, 1048575
  %add16.i351 = or i32 %and15.i350, -18874368
  %156 = inttoptr i32 %add16.i351 to ptr
  %157 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %156) #14, !srcloc !427
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !452
  %158 = and i8 %157, 1
  %tobool.not.i352 = icmp eq i8 %158, 0
  br i1 %tobool.not.i352, label %land.rhs.i353.snd_ice1712_read_i2c.exit357_crit_edge, label %land.rhs.i353.while.cond.i347_crit_edge

land.rhs.i353.while.cond.i347_crit_edge:          ; preds = %land.rhs.i353
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i347

land.rhs.i353.snd_ice1712_read_i2c.exit357_crit_edge: ; preds = %land.rhs.i353
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit357

snd_ice1712_read_i2c.exit357:                     ; preds = %land.rhs.i353.snd_ice1712_read_i2c.exit357_crit_edge, %while.cond.i347.snd_ice1712_read_i2c.exit357_crit_edge
  %159 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port.i338, align 4
  %add23.i354 = add i32 %160, 18
  %and24.i355 = and i32 %add23.i354, 1048575
  %add25.i356 = or i32 %and24.i355, -18874368
  %161 = inttoptr i32 %add25.i356 to ptr
  %162 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %161) #14, !srcloc !427
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !453
  %size127 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 1
  %163 = ptrtoint ptr %size127 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %size127, align 4
  %conv130 = zext i8 %162 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %162)
  %cmp131 = icmp ult i8 %162, 6
  br i1 %cmp131, label %if.then133, label %if.else136

if.then133:                                       ; preds = %snd_ice1712_read_i2c.exit357
  call void @__sanitizer_cov_trace_pc() #16
  %164 = ptrtoint ptr %size127 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 32, ptr %size127, align 4
  br label %if.end152

if.else136:                                       ; preds = %snd_ice1712_read_i2c.exit357
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %162)
  %cmp140 = icmp ugt i8 %162, 32
  br i1 %cmp140, label %do.end145, label %if.else136.if.end152_crit_edge

if.else136.if.end152_crit_edge:                   ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

do.end145:                                        ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #16
  %card146 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %165 = ptrtoint ptr %card146 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %card146, align 4
  %dev147 = getelementptr inbounds %struct.snd_card, ptr %166, i32 0, i32 27
  %167 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev147, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.66, i32 noundef %conv130) #17
  br label %cleanup202

if.end152:                                        ; preds = %if.else136.if.end152_crit_edge, %if.then133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !450
  call void @arm_heavy_mb() #14
  %169 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %port.i338, align 4
  %add.i359 = add i32 %170, 17
  %and.i360 = and i32 %add.i359, 1048575
  %add1.i361 = or i32 %and.i360, -18874368
  %171 = inttoptr i32 %add1.i361 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 5) #14, !srcloc !422
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !451
  call void @arm_heavy_mb() #14
  %172 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %port.i338, align 4
  %add8.i362 = add i32 %173, 16
  %and9.i363 = and i32 %add8.i362, 1048575
  %add10.i364 = or i32 %and9.i363, -18874368
  %174 = inttoptr i32 %add10.i364 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %174, i8 -96) #14, !srcloc !422
  br label %while.cond.i367

while.cond.i367:                                  ; preds = %land.rhs.i373.while.cond.i367_crit_edge, %if.end152
  %t.0.i365 = phi i32 [ 65536, %if.end152 ], [ %dec.i368, %land.rhs.i373.while.cond.i367_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i365)
  %cmp.not.i366 = icmp eq i32 %t.0.i365, 0
  br i1 %cmp.not.i366, label %while.cond.i367.snd_ice1712_read_i2c.exit377_crit_edge, label %land.rhs.i373

while.cond.i367.snd_ice1712_read_i2c.exit377_crit_edge: ; preds = %while.cond.i367
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit377

land.rhs.i373:                                    ; preds = %while.cond.i367
  %dec.i368 = add nsw i32 %t.0.i365, -1
  %175 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %port.i338, align 4
  %add14.i369 = add i32 %176, 19
  %and15.i370 = and i32 %add14.i369, 1048575
  %add16.i371 = or i32 %and15.i370, -18874368
  %177 = inttoptr i32 %add16.i371 to ptr
  %178 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %177) #14, !srcloc !427
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !452
  %179 = and i8 %178, 1
  %tobool.not.i372 = icmp eq i8 %179, 0
  br i1 %tobool.not.i372, label %land.rhs.i373.snd_ice1712_read_i2c.exit377_crit_edge, label %land.rhs.i373.while.cond.i367_crit_edge

land.rhs.i373.while.cond.i367_crit_edge:          ; preds = %land.rhs.i373
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i367

land.rhs.i373.snd_ice1712_read_i2c.exit377_crit_edge: ; preds = %land.rhs.i373
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit377

snd_ice1712_read_i2c.exit377:                     ; preds = %land.rhs.i373.snd_ice1712_read_i2c.exit377_crit_edge, %while.cond.i367.snd_ice1712_read_i2c.exit377_crit_edge
  %180 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %port.i338, align 4
  %add23.i374 = add i32 %181, 18
  %and24.i375 = and i32 %add23.i374, 1048575
  %add25.i376 = or i32 %and24.i375, -18874368
  %182 = inttoptr i32 %add25.i376 to ptr
  %183 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %182) #14, !srcloc !427
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !453
  %version156 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 2
  %184 = ptrtoint ptr %version156 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %version156, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %183)
  %cmp160.not = icmp eq i8 %183, 1
  br i1 %cmp160.not, label %snd_ice1712_read_i2c.exit377.if.end171_crit_edge, label %do.end165

snd_ice1712_read_i2c.exit377.if.end171_crit_edge: ; preds = %snd_ice1712_read_i2c.exit377
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171

do.end165:                                        ; preds = %snd_ice1712_read_i2c.exit377
  call void @__sanitizer_cov_trace_pc() #16
  %conv159 = zext i8 %183 to i32
  %card166 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %185 = ptrtoint ptr %card166 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %card166, align 4
  %dev167 = getelementptr inbounds %struct.snd_card, ptr %186, i32 0, i32 27
  %187 = ptrtoint ptr %dev167 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev167, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.69, i32 noundef %conv159) #17
  br label %if.end171

if.end171:                                        ; preds = %do.end165, %snd_ice1712_read_i2c.exit377.if.end171_crit_edge
  %189 = ptrtoint ptr %size127 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %size127, align 4
  %conv174 = zext i8 %190 to i32
  %sub = add nsw i32 %conv174, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp176405.not = icmp eq i32 %sub, 0
  br i1 %cmp176405.not, label %if.end171.read_skipped_crit_edge, label %if.end171.for.body178_crit_edge

if.end171.for.body178_crit_edge:                  ; preds = %if.end171
  br label %for.body178

if.end171.read_skipped_crit_edge:                 ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  br label %read_skipped

for.body178:                                      ; preds = %snd_ice1712_read_i2c.exit397.for.body178_crit_edge, %if.end171.for.body178_crit_edge
  %i.0406 = phi i32 [ %inc, %snd_ice1712_read_i2c.exit397.for.body178_crit_edge ], [ 0, %if.end171.for.body178_crit_edge ]
  %191 = trunc i32 %i.0406 to i8
  %conv181 = add i8 %191, 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !450
  call void @arm_heavy_mb() #14
  %192 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %port.i338, align 4
  %add.i379 = add i32 %193, 17
  %and.i380 = and i32 %add.i379, 1048575
  %add1.i381 = or i32 %and.i380, -18874368
  %194 = inttoptr i32 %add1.i381 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %194, i8 %conv181) #14, !srcloc !422
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !451
  call void @arm_heavy_mb() #14
  %195 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %port.i338, align 4
  %add8.i382 = add i32 %196, 16
  %and9.i383 = and i32 %add8.i382, 1048575
  %add10.i384 = or i32 %and9.i383, -18874368
  %197 = inttoptr i32 %add10.i384 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %197, i8 -96) #14, !srcloc !422
  br label %while.cond.i387

while.cond.i387:                                  ; preds = %land.rhs.i393.while.cond.i387_crit_edge, %for.body178
  %t.0.i385 = phi i32 [ 65536, %for.body178 ], [ %dec.i388, %land.rhs.i393.while.cond.i387_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i385)
  %cmp.not.i386 = icmp eq i32 %t.0.i385, 0
  br i1 %cmp.not.i386, label %while.cond.i387.snd_ice1712_read_i2c.exit397_crit_edge, label %land.rhs.i393

while.cond.i387.snd_ice1712_read_i2c.exit397_crit_edge: ; preds = %while.cond.i387
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit397

land.rhs.i393:                                    ; preds = %while.cond.i387
  %dec.i388 = add nsw i32 %t.0.i385, -1
  %198 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %port.i338, align 4
  %add14.i389 = add i32 %199, 19
  %and15.i390 = and i32 %add14.i389, 1048575
  %add16.i391 = or i32 %and15.i390, -18874368
  %200 = inttoptr i32 %add16.i391 to ptr
  %201 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %200) #14, !srcloc !427
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !452
  %202 = and i8 %201, 1
  %tobool.not.i392 = icmp eq i8 %202, 0
  br i1 %tobool.not.i392, label %land.rhs.i393.snd_ice1712_read_i2c.exit397_crit_edge, label %land.rhs.i393.while.cond.i387_crit_edge

land.rhs.i393.while.cond.i387_crit_edge:          ; preds = %land.rhs.i393
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i387

land.rhs.i393.snd_ice1712_read_i2c.exit397_crit_edge: ; preds = %land.rhs.i393
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ice1712_read_i2c.exit397

snd_ice1712_read_i2c.exit397:                     ; preds = %land.rhs.i393.snd_ice1712_read_i2c.exit397_crit_edge, %while.cond.i387.snd_ice1712_read_i2c.exit397_crit_edge
  %203 = ptrtoint ptr %port.i338 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %port.i338, align 4
  %add23.i394 = add i32 %204, 18
  %and24.i395 = and i32 %add23.i394, 1048575
  %add25.i396 = or i32 %and24.i395, -18874368
  %205 = inttoptr i32 %add25.i396 to ptr
  %206 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %205) #14, !srcloc !427
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !453
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 %i.0406
  %207 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.0406, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %snd_ice1712_read_i2c.exit397.read_skipped_crit_edge, label %snd_ice1712_read_i2c.exit397.for.body178_crit_edge

snd_ice1712_read_i2c.exit397.for.body178_crit_edge: ; preds = %snd_ice1712_read_i2c.exit397
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body178

snd_ice1712_read_i2c.exit397.read_skipped_crit_edge: ; preds = %snd_ice1712_read_i2c.exit397
  call void @__sanitizer_cov_trace_pc() #16
  br label %read_skipped

read_skipped:                                     ; preds = %snd_ice1712_read_i2c.exit397.read_skipped_crit_edge, %if.end171.read_skipped_crit_edge, %do.end104
  %arrayidx189 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 4
  %208 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx189, align 2
  %conv190 = zext i8 %209 to i32
  %gpiomask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 4
  %210 = ptrtoint ptr %gpiomask to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %conv190, ptr %gpiomask, align 4
  %arrayidx194 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 5
  %211 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx194, align 1
  %conv195 = zext i8 %212 to i32
  %gpiostate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 5
  %213 = ptrtoint ptr %gpiostate to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %conv195, ptr %gpiostate, align 4
  %arrayidx199 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 6
  %214 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx199, align 2
  %conv200 = zext i8 %215 to i32
  %gpiodir = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 6
  %216 = ptrtoint ptr %gpiodir to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %conv200, ptr %gpiodir, align 4
  br label %cleanup202

cleanup202:                                       ; preds = %read_skipped, %do.end145, %do.end
  %retval.1 = phi i32 [ 0, %read_skipped ], [ -5, %do.end145 ], [ -6, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ice1712_chip_init(ptr noundef %ice) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !455
  tail call void @arm_heavy_mb() #14
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -127) #14, !srcloc !422
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 42949600) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !456
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %and6 = and i32 %5, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 1) #14, !srcloc !422
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 42949600) #14
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %8 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 991246353, i32 %9)
  %cmp = icmp eq i32 %9, 991246353
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dxr_enable = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %10 = ptrtoint ptr %dxr_enable to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %dxr_enable, align 4
  %11 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %data = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 58, ptr %data, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pci = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 9
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %data11 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3
  %15 = ptrtoint ptr %data11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data11, align 2
  %call13 = tail call i32 @pci_write_config_byte(ptr noundef %14, i32 noundef 96, i8 noundef zeroext %16) #14
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %arrayidx17 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 1
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17, align 1
  %call18 = tail call i32 @pci_write_config_byte(ptr noundef %18, i32 noundef 97, i8 noundef zeroext %20) #14
  %21 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci, align 4
  %arrayidx22 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 2
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx22, align 2
  %call23 = tail call i32 @pci_write_config_byte(ptr noundef %22, i32 noundef 98, i8 noundef zeroext %24) #14
  %25 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci, align 4
  %arrayidx27 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 3
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx27, align 1
  %call28 = tail call i32 @pci_write_config_byte(ptr noundef %26, i32 noundef 99, i8 noundef zeroext %28) #14
  %29 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %eeprom, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %30, label %if.then36 [
    i32 303305239, label %if.end.if.else_crit_edge
    i32 65538, label %if.end.if.else_crit_edge50
  ]

if.end.if.else_crit_edge50:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %gpiomask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 4
  %32 = ptrtoint ptr %gpiomask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpiomask, align 4
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %34 = ptrtoint ptr %write_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %write_mask, align 4
  %gpiodir = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 6
  %35 = ptrtoint ptr %gpiodir to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gpiodir, align 4
  %37 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %gpio, align 4
  %conv = trunc i32 %33 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add.i = add i32 %39, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %40 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 33) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %add5.i = add i32 %42, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %43 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv) #14, !srcloc !422
  %44 = ptrtoint ptr %gpiodir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gpiodir, align 4
  %conv44 = trunc i32 %45 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add.i2 = add i32 %47, 3
  %and.i3 = and i32 %add.i2, 1048575
  %add1.i4 = or i32 %and.i3, -18874368
  %48 = inttoptr i32 %add1.i4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 34) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port, align 4
  %add5.i5 = add i32 %50, 4
  %and6.i6 = and i32 %add5.i5, 1048575
  %add7.i7 = or i32 %and6.i6, -18874368
  %51 = inttoptr i32 %add7.i7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %conv44) #14, !srcloc !422
  %gpiostate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 5
  %52 = ptrtoint ptr %gpiostate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gpiostate, align 4
  %conv46 = trunc i32 %53 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add.i9 = add i32 %55, 3
  %and.i10 = and i32 %add.i9, 1048575
  %add1.i11 = or i32 %and.i10, -18874368
  %56 = inttoptr i32 %add1.i11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 32) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add5.i12 = add i32 %58, 4
  %and6.i13 = and i32 %add5.i12, 1048575
  %add7.i14 = or i32 %and6.i13, -18874368
  %59 = inttoptr i32 %add7.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %conv46) #14, !srcloc !422
  br label %if.end51

if.else:                                          ; preds = %if.end.if.else_crit_edge, %if.end.if.else_crit_edge50
  %gpio47 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %write_mask48 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %60 = ptrtoint ptr %write_mask48 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 192, ptr %write_mask48, align 4
  %61 = ptrtoint ptr %gpio47 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 255, ptr %gpio47, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %add.i16 = add i32 %63, 3
  %and.i17 = and i32 %add.i16, 1048575
  %add1.i18 = or i32 %and.i17, -18874368
  %64 = inttoptr i32 %add1.i18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 33) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %add5.i19 = add i32 %66, 4
  %and6.i20 = and i32 %add5.i19, 1048575
  %add7.i21 = or i32 %and6.i20, -18874368
  %67 = inttoptr i32 %add7.i21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 -64) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add.i23 = add i32 %69, 3
  %and.i24 = and i32 %add.i23, 1048575
  %add1.i25 = or i32 %and.i24, -18874368
  %70 = inttoptr i32 %add1.i25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 34) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %add5.i26 = add i32 %72, 4
  %and6.i27 = and i32 %add5.i26, 1048575
  %add7.i28 = or i32 %and6.i27, -18874368
  %73 = inttoptr i32 %add7.i28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 -1) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %add.i30 = add i32 %75, 3
  %and.i31 = and i32 %add.i30, 1048575
  %add1.i32 = or i32 %and.i31, -18874368
  %76 = inttoptr i32 %add1.i32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 32) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %77 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port, align 4
  %add5.i33 = add i32 %78, 4
  %and6.i34 = and i32 %add5.i33, 1048575
  %add7.i35 = or i32 %and6.i34, -18874368
  %79 = inttoptr i32 %add7.i35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 32) #14, !srcloc !422
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %add.i37 = add i32 %81, 3
  %and.i38 = and i32 %add.i37, 1048575
  %add1.i39 = or i32 %and.i38, -18874368
  %82 = inttoptr i32 %add1.i39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 49) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %83 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port, align 4
  %add5.i40 = add i32 %84, 4
  %and6.i41 = and i32 %add5.i40, 1048575
  %add7.i42 = or i32 %and6.i41, -18874368
  %85 = inttoptr i32 %add7.i42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 0) #14, !srcloc !422
  %86 = ptrtoint ptr %data11 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %data11, align 2
  %88 = and i8 %87, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool57.not = icmp eq i8 %88, 0
  br i1 %tobool57.not, label %do.body59, label %if.end51.if.end73_crit_edge

if.end51.if.end73_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

do.body59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !457
  tail call void @arm_heavy_mb() #14
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 4
  %add62 = add i32 %90, 9
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %91 = inttoptr i32 %add64 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 64) #14, !srcloc !422
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 21474800) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !458
  tail call void @arm_heavy_mb() #14
  %93 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %port, align 4
  %add69 = add i32 %94, 9
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %95 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 0) #14, !srcloc !422
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 42949600) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %97 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port, align 4
  %add.i44 = add i32 %98, 3
  %and.i45 = and i32 %add.i44, 1048575
  %add1.i46 = or i32 %and.i45, -18874368
  %99 = inttoptr i32 %add1.i46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 48) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %100 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port, align 4
  %add5.i47 = add i32 %101, 4
  %and6.i48 = and i32 %add5.i47, 1048575
  %add7.i49 = or i32 %and6.i48, -18874368
  %102 = inttoptr i32 %add7.i49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 0) #14, !srcloc !422
  br label %if.end73

if.end73:                                         ; preds = %do.body59, %if.end51.if.end73_crit_edge
  tail call fastcc void @snd_ice1712_set_pro_rate(ptr noundef %ice, i32 noundef 48000, i32 noundef 1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !459
  tail call void @arm_heavy_mb() #14
  %103 = ptrtoint ptr %data11 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %data11, align 2
  %and80 = and i8 %104, 32
  %105 = and i8 %104, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool88.not = icmp eq i8 %105, 0
  %cond89 = select i1 %tobool88.not, i8 0, i8 7
  %106 = or i8 %cond89, %and80
  %or = xor i8 %106, 32
  %107 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port, align 4
  %add92 = add i32 %108, 1
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %109 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 %or) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !460
  tail call void @arm_heavy_mb() #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %110 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %profi_port, align 4
  %and99 = and i32 %111, 1048575
  %add100 = or i32 %and99, -18874368
  %112 = inttoptr i32 %add100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 0) #14, !srcloc !422
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ice1712_proc_read(ptr nocapture noundef readonly %entry1, ptr noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef %longname) #14
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.28) #14
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eeprom, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.29, i32 noundef %11) #14
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %size = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %size, align 4
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.30, i32 noundef %conv) #14
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %version = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 2
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %version, align 1
  %conv9 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.31, i32 noundef %conv9) #14
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %data = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 2
  %conv12 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.32, i32 noundef %conv12) #14
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %arrayidx16 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.33, i32 noundef %conv17) #14
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %arrayidx21 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 2
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx21, align 2
  %conv22 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.34, i32 noundef %conv22) #14
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %arrayidx26 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.35, i32 noundef %conv27) #14
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %gpiomask = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 4
  %38 = ptrtoint ptr %gpiomask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gpiomask, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.36, i32 noundef %39) #14
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %gpiostate = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 5
  %42 = ptrtoint ptr %gpiostate to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gpiostate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.37, i32 noundef %43) #14
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %gpiodir = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 6
  %46 = ptrtoint ptr %gpiodir to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gpiodir, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.38, i32 noundef %47) #14
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  %arrayidx.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 7
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %51 to i32
  %arrayidx3.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 8
  %52 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %53 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl.i, %conv.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.39, i32 noundef %or.i) #14
  %54 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buffer, align 4
  %arrayidx.i184 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 9
  %56 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i184, align 1
  %conv.i185 = zext i8 %57 to i32
  %arrayidx3.i186 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 10
  %58 = ptrtoint ptr %arrayidx3.i186 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx3.i186, align 1
  %conv4.i187 = zext i8 %59 to i32
  %shl.i188 = shl nuw nsw i32 %conv4.i187, 8
  %or.i189 = or i32 %shl.i188, %conv.i185
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %55, ptr noundef nonnull @.str.40, i32 noundef %or.i189) #14
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer, align 4
  %arrayidx.i190 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 11
  %62 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i190, align 1
  %conv.i191 = zext i8 %63 to i32
  %arrayidx3.i192 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 12
  %64 = ptrtoint ptr %arrayidx3.i192 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx3.i192, align 1
  %conv4.i193 = zext i8 %65 to i32
  %shl.i194 = shl nuw nsw i32 %conv4.i193, 8
  %or.i195 = or i32 %shl.i194, %conv.i191
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef nonnull @.str.41, i32 noundef %or.i195) #14
  %66 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buffer, align 4
  %arrayidx42 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 13
  %68 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %69 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %67, ptr noundef nonnull @.str.42, i32 noundef %conv43) #14
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buffer, align 4
  %arrayidx48 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 14
  %72 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %73 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %71, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef %conv49) #14
  %74 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buffer, align 4
  %arrayidx48.1 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 15
  %76 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx48.1, align 1
  %conv49.1 = zext i8 %77 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %75, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef %conv49.1) #14
  %78 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buffer, align 4
  %arrayidx48.2 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 16
  %80 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx48.2, align 1
  %conv49.2 = zext i8 %81 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %79, ptr noundef nonnull @.str.43, i32 noundef 2, i32 noundef %conv49.2) #14
  %82 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buffer, align 4
  %arrayidx48.3 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 17
  %84 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx48.3, align 1
  %conv49.3 = zext i8 %85 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %83, ptr noundef nonnull @.str.43, i32 noundef 3, i32 noundef %conv49.3) #14
  %86 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buffer, align 4
  %arrayidx58 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 18
  %88 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %89 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %87, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %conv59) #14
  %90 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffer, align 4
  %arrayidx58.1 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 19
  %92 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx58.1, align 1
  %conv59.1 = zext i8 %93 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %91, ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef %conv59.1) #14
  %94 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %buffer, align 4
  %arrayidx58.2 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 20
  %96 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx58.2, align 1
  %conv59.2 = zext i8 %97 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %95, ptr noundef nonnull @.str.44, i32 noundef 2, i32 noundef %conv59.2) #14
  %98 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer, align 4
  %arrayidx58.3 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 21
  %100 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx58.3, align 1
  %conv59.3 = zext i8 %101 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %99, ptr noundef nonnull @.str.44, i32 noundef 3, i32 noundef %conv59.3) #14
  %102 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %103)
  %cmp67207 = icmp ugt i8 %103, 28
  br i1 %cmp67207, label %entry.for.body69_crit_edge, label %entry.for.end77_crit_edge

entry.for.end77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end77

entry.for.body69_crit_edge:                       ; preds = %entry
  br label %for.body69

for.body69:                                       ; preds = %for.body69.for.body69_crit_edge, %entry.for.body69_crit_edge
  %idx.2208 = phi i32 [ %inc76, %for.body69.for.body69_crit_edge ], [ 28, %entry.for.body69_crit_edge ]
  %104 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %buffer, align 4
  %arrayidx73 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 %idx.2208
  %106 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %107 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %105, ptr noundef nonnull @.str.45, i32 noundef %idx.2208, i32 noundef %conv74) #14
  %inc76 = add nuw nsw i32 %idx.2208, 1
  %108 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %size, align 4
  %conv66 = zext i8 %109 to i32
  %cmp67 = icmp ult i32 %inc76, %conv66
  br i1 %cmp67, label %for.body69.for.body69_crit_edge, label %for.body69.for.end77_crit_edge

for.body69.for.end77_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end77

for.body69.for.body69_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body69

for.end77:                                        ; preds = %for.body69.for.end77_crit_edge, %entry.for.end77_crit_edge
  %110 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %111, ptr noundef nonnull @.str.46) #14
  %112 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %buffer, align 4
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %114 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %profi_port, align 4
  %add80 = add i32 %115, 48
  %and = and i32 %add80, 1048575
  %add81 = or i32 %and, -18874368
  %116 = inttoptr i32 %add81 to ptr
  %117 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %116) #14, !srcloc !441
  %118 = tail call i16 @llvm.bswap.i16(i16 %117)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !461
  %conv84 = zext i16 %118 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %113, ptr noundef nonnull @.str.47, i32 noundef %conv84) #14
  %119 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %buffer, align 4
  %121 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %profi_port, align 4
  %add88 = add i32 %122, 52
  %and89 = and i32 %add88, 1048575
  %add90 = or i32 %and89, -18874368
  %123 = inttoptr i32 %add90 to ptr
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %123) #14, !srcloc !462
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !463
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %120, ptr noundef nonnull @.str.48, i32 noundef %125) #14
  %126 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %buffer, align 4
  %128 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %profi_port, align 4
  %add97 = add i32 %129, 50
  %and98 = and i32 %add97, 1048575
  %add99 = or i32 %and98, -18874368
  %130 = inttoptr i32 %add99 to ptr
  %131 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %130) #14, !srcloc !441
  %132 = tail call i16 @llvm.bswap.i16(i16 %131)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !464
  %conv103 = zext i16 %132 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %127, ptr noundef nonnull @.str.49, i32 noundef %conv103) #14
  %133 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %buffer, align 4
  %135 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %profi_port, align 4
  %add107 = add i32 %136, 1
  %and108 = and i32 %add107, 1048575
  %add109 = or i32 %and108, -18874368
  %137 = inttoptr i32 %add109 to ptr
  %138 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %137) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !465
  %conv113 = zext i8 %138 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %134, ptr noundef nonnull @.str.50, i32 noundef %conv113) #14
  %139 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %buffer, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  tail call void @arm_heavy_mb() #14
  %port.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %141 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %142, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %143 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 32) #14, !srcloc !422
  %144 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port.i.i, align 4
  %add3.i.i = add i32 %145, 4
  %and4.i.i = and i32 %add3.i.i, 1048575
  %add5.i.i = or i32 %and4.i.i, -18874368
  %146 = inttoptr i32 %add5.i.i to ptr
  %147 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %146) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  %conv.i196 = zext i8 %147 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %140, ptr noundef nonnull @.str.51, i32 noundef %conv.i196) #14
  %148 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %buffer, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  tail call void @arm_heavy_mb() #14
  %150 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %port.i.i, align 4
  %add.i = add i32 %151, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %152 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 33) #14, !srcloc !422
  %153 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %port.i.i, align 4
  %add3.i = add i32 %154, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %155 = inttoptr i32 %add5.i to ptr
  %156 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %155) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  %conv118 = zext i8 %156 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %149, ptr noundef nonnull @.str.52, i32 noundef %conv118) #14
  %157 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %buffer, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  tail call void @arm_heavy_mb() #14
  %159 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port.i.i, align 4
  %add.i198 = add i32 %160, 3
  %and.i199 = and i32 %add.i198, 1048575
  %add1.i200 = or i32 %and.i199, -18874368
  %161 = inttoptr i32 %add1.i200 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 34) #14, !srcloc !422
  %162 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %port.i.i, align 4
  %add3.i201 = add i32 %163, 4
  %and4.i202 = and i32 %add3.i201, 1048575
  %add5.i203 = or i32 %and4.i202, -18874368
  %164 = inttoptr i32 %add5.i203 to ptr
  %165 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %164) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  %conv121 = zext i8 %165 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %158, ptr noundef nonnull @.str.53, i32 noundef %conv121) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ice1712_akm4xxx_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ice1712_set_pro_rate(ptr noundef %ice, i32 noundef %rate, i32 noundef %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %rate, label %do.end [
    i32 8000, label %entry.do.body28_crit_edge
    i32 9600, label %sw.bb1
    i32 11025, label %sw.bb2
    i32 12000, label %sw.bb3
    i32 16000, label %sw.bb4
    i32 22050, label %sw.bb5
    i32 24000, label %sw.bb6
    i32 32000, label %sw.bb7
    i32 44100, label %sw.bb8
    i32 48000, label %sw.bb9
    i32 64000, label %sw.bb10
    i32 88200, label %sw.bb11
    i32 96000, label %sw.bb12
  ]

entry.do.body28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 979, i32 noundef 9, ptr noundef nonnull @.str.71) #14
  br label %do.body28

do.body28:                                        ; preds = %do.end, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.do.body28_crit_edge
  %val.0 = phi i8 [ 0, %do.end ], [ 7, %sw.bb12 ], [ 11, %sw.bb11 ], [ 15, %sw.bb10 ], [ 0, %sw.bb9 ], [ 8, %sw.bb8 ], [ 4, %sw.bb7 ], [ 1, %sw.bb6 ], [ 9, %sw.bb5 ], [ 5, %sw.bb4 ], [ 2, %sw.bb3 ], [ 10, %sw.bb2 ], [ 3, %sw.bb1 ], [ 6, %entry.do.body28_crit_edge ]
  %rate.addr.0 = phi i32 [ 48000, %do.end ], [ %rate, %sw.bb12 ], [ %rate, %sw.bb11 ], [ %rate, %sw.bb10 ], [ %rate, %sw.bb9 ], [ %rate, %sw.bb8 ], [ %rate, %sw.bb7 ], [ %rate, %sw.bb6 ], [ %rate, %sw.bb5 ], [ %rate, %sw.bb4 ], [ %rate, %sw.bb3 ], [ %rate, %sw.bb2 ], [ %rate, %sw.bb1 ], [ %rate, %entry.do.body28_crit_edge ]
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 27
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %1 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %profi_port, align 4
  %add = add i32 %2, 24
  %and = and i32 %add, 1048575
  %add35 = or i32 %and, -18874368
  %3 = inttoptr i32 %add35 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !466
  %5 = and i8 %4, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool41.not = icmp eq i8 %5, 0
  br i1 %tobool41.not, label %if.end44, label %do.body28.__out_crit_edge

do.body28.__out_crit_edge:                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

__out:                                            ; preds = %if.end49.__out_crit_edge, %is_pro_rate_locked.exit.__out_crit_edge, %land.lhs.true.__out_crit_edge, %do.body28.__out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call30) #14
  br label %cleanup

if.end44:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool45.not = icmp eq i32 %force, 0
  br i1 %tobool45.not, label %land.lhs.true, label %if.end44.if.end49_crit_edge

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end44
  %6 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %profi_port, align 4
  %add.i.i = add i32 %7, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !467
  %10 = and i8 %9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %is_pro_rate_locked.exit, label %land.lhs.true.__out_crit_edge

land.lhs.true.__out_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

is_pro_rate_locked.exit:                          ; preds = %land.lhs.true
  %11 = load i32, ptr @PRO_RATE_LOCKED, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.not = icmp eq i32 %11, 0
  br i1 %tobool1.i.not, label %is_pro_rate_locked.exit.if.end49_crit_edge, label %is_pro_rate_locked.exit.__out_crit_edge

is_pro_rate_locked.exit.__out_crit_edge:          ; preds = %is_pro_rate_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

is_pro_rate_locked.exit.if.end49_crit_edge:       ; preds = %is_pro_rate_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.end49:                                         ; preds = %is_pro_rate_locked.exit.if.end49_crit_edge, %if.end44.if.end49_crit_edge
  %12 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %profi_port, align 4
  %add52 = add i32 %13, 1
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %14 = inttoptr i32 %add54 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !468
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %val.0)
  %cmp62 = icmp eq i8 %15, %val.0
  %or.cond = select i1 %tobool45.not, i1 %cmp62, i1 false
  br i1 %or.cond, label %if.end49.__out_crit_edge, label %if.end65

if.end49.__out_crit_edge:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

if.end65:                                         ; preds = %if.end49
  %cur_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 35
  %16 = ptrtoint ptr %cur_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rate.addr.0, ptr %cur_rate, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !469
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %profi_port, align 4
  %add70 = add i32 %18, 1
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %19 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %val.0) #14, !srcloc !422
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call30) #14
  %set_pro_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 9
  %20 = ptrtoint ptr %set_pro_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_pro_rate, align 4
  %tobool75.not = icmp eq ptr %21, null
  br i1 %tobool75.not, label %if.end65.if.end79_crit_edge, label %if.then76

if.end65.if.end79_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then76:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %21(ptr noundef %ice, i32 noundef %rate.addr.0) #14
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end65.if.end79_crit_edge
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %22 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %akm_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp80133.not = icmp eq i32 %23, 0
  br i1 %cmp80133.not, label %if.end79.for.end_crit_edge, label %for.body.lr.ph

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end79
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %akm, align 4
  %set_rate_val = getelementptr %struct.snd_akm4xxx, ptr %25, i32 %i.0134, i32 11, i32 3
  %26 = ptrtoint ptr %set_rate_val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_rate_val, align 4
  %tobool82.not = icmp eq ptr %27, null
  br i1 %tobool82.not, label %for.body.for.inc_crit_edge, label %if.then83

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then83:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %25, i32 %i.0134
  tail call void %27(ptr noundef %arrayidx, i32 noundef %rate.addr.0) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then83, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0134, 1
  %28 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %akm_codecs, align 4
  %cmp80 = icmp ult i32 %inc, %29
  br i1 %cmp80, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end79.for.end_crit_edge
  %setup_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 1
  %30 = ptrtoint ptr %setup_rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %setup_rate, align 4
  %tobool92.not = icmp eq ptr %31, null
  br i1 %tobool92.not, label %for.end.cleanup_crit_edge, label %if.then93

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then93:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %31(ptr noundef %ice, i32 noundef %rate.addr.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %for.end.cleanup_crit_edge, %__out
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs8427_iec958_build(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_pro_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %playback_pro_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_ice1712_playback_pro, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #14
  %call = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %1, i32 noundef 0, i32 noundef 32, i32 noundef 24) #14
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_constraints_rates) #14
  %profi_port.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %profi_port.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %profi_port.i.i, align 4
  %add.i.i = add i32 %7, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !467
  %10 = and i8 %9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %is_pro_rate_locked.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

is_pro_rate_locked.exit:                          ; preds = %entry
  %11 = load i32, ptr @PRO_RATE_LOCKED, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.not = icmp eq i32 %11, 0
  br i1 %tobool1.i.not, label %is_pro_rate_locked.exit.if.end_crit_edge, label %is_pro_rate_locked.exit.if.then_crit_edge

is_pro_rate_locked.exit.if.then_crit_edge:        ; preds = %is_pro_rate_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

is_pro_rate_locked.exit.if.end_crit_edge:         ; preds = %is_pro_rate_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %is_pro_rate_locked.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = load i32, ptr @PRO_RATE_DEFAULT, align 4
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 3
  %13 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rate_min, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 4
  %14 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %rate_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %is_pro_rate_locked.exit.if.end_crit_edge
  %ops = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 41, i32 3
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %16(ptr noundef %3, ptr noundef %substream) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_pro_close(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = load i32, ptr @PRO_RATE_RESET, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr @PRO_RATE_DEFAULT, align 4
  tail call fastcc void @snd_ice1712_set_pro_rate(ptr noundef %1, i32 noundef %3, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %playback_pro_substream, align 4
  %close = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3, i32 2
  %5 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %close, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %6(ptr noundef %1, ptr noundef %substream) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_pro_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  tail call fastcc void @snd_ice1712_set_pro_rate(ptr noundef %1, i32 noundef %3, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_pro_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %div1.i.i = lshr i32 %mul.i.i, 3
  %playback_pro_size = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %playback_pro_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %playback_pro_size, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !470
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime1.i, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 51
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profi_port, align 4
  %add = add i32 %15, 16
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %16 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #14, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !472
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %playback_pro_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %playback_pro_size, align 4
  %shr = lshr i32 %18, 2
  %19 = trunc i32 %shr to i16
  %conv = add i16 %19, -1
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %21 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %profi_port, align 4
  %add8 = add i32 %22, 20
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %23 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %20) #14, !srcloc !424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !473
  tail call void @arm_heavy_mb() #14
  %24 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime1.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 21
  %28 = ptrtoint ptr %frame_bits.i.i35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frame_bits.i.i35, align 8
  %mul.i.i36 = mul i32 %29, %27
  %div1.i.i37 = lshr i32 %mul.i.i36, 5
  %30 = trunc i32 %div1.i.i37 to i16
  %conv18 = add i16 %30, -1
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %32 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %profi_port, align 4
  %add20 = add i32 %33, 22
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %34 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #14, !srcloc !424
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_trigger(ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %cmd, label %entry.cleanup63_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge104
    i32 1, label %entry.sw.bb14_crit_edge
    i32 0, label %entry.sw.bb14_crit_edge105
  ]

entry.sw.bb14_crit_edge105:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14

entry.sw.bb_crit_edge104:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup63

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge104
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %3 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup63_crit_edge

sw.bb.cleanup63_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup63

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %5 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %6, align 8
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %profi_port, align 4
  %add = add i32 %9, 24
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %10 = inttoptr i32 %add1 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #14, !srcloc !462
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !474
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd)
  %cmp3 = icmp eq i32 %cmd, 3
  %12 = and i32 %11, -33554433
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %masksel = select i1 %cmp3, i32 2, i32 0
  %old.0 = or i32 %13, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !475
  tail call void @arm_heavy_mb() #14
  %14 = tail call i32 @llvm.bswap.i32(i32 %old.0)
  %15 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %profi_port, align 4
  %add8 = add i32 %16, 24
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %17 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %14) #14, !srcloc !471
  br label %cleanup63.sink.split

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge105
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %18 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn97 = load ptr, ptr %substreams, align 4
  %cmp20.not100 = icmp eq ptr %.pn97, %substreams
  br i1 %cmp20.not100, label %sw.bb14.for.end_crit_edge, label %for.body.lr.ph

sw.bb14.for.end_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.bb14
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 17
  %capture_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn102 = phi ptr [ %.pn97, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %what15.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %what15.1, %for.inc.for.body_crit_edge ]
  %s.0103 = getelementptr i8, ptr %.pn102, i32 -140
  %21 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %playback_pro_substream, align 4
  %cmp21 = icmp eq ptr %s.0103, %22
  br i1 %cmp21, label %for.body.for.inc.sink.split_crit_edge, label %if.else24

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split

if.else24:                                        ; preds = %for.body
  %23 = ptrtoint ptr %capture_pro_substream to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %capture_pro_substream, align 4
  %cmp25 = icmp eq ptr %s.0103, %24
  br i1 %cmp25, label %if.else24.for.inc.sink.split_crit_edge, label %if.else24.for.inc_crit_edge

if.else24.for.inc_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else24.for.inc.sink.split_crit_edge:           ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else24.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %.sink = phi i32 [ 1, %for.body.for.inc.sink.split_crit_edge ], [ 4, %if.else24.for.inc.sink.split_crit_edge ]
  %or23 = or i32 %what15.0101, %.sink
  %runtime.i95 = getelementptr i8, ptr %.pn102, i32 -20
  %25 = ptrtoint ptr %runtime.i95 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %runtime.i95, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %substream, ptr %26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else24.for.inc_crit_edge
  %what15.1 = phi i32 [ %what15.0101, %if.else24.for.inc_crit_edge ], [ %or23, %for.inc.sink.split ]
  %28 = ptrtoint ptr %.pn102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn102, align 4
  %29 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %group, align 4
  %substreams19 = getelementptr inbounds %struct.snd_pcm_group, ptr %30, i32 0, i32 2
  %cmp20.not = icmp eq ptr %.pn, %substreams19
  br i1 %cmp20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.bb14.for.end_crit_edge
  %what15.0.lcssa = phi i32 [ 0, %sw.bb14.for.end_crit_edge ], [ %what15.1, %for.inc.for.end_crit_edge ]
  %reg_lock35 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %reg_lock35) #14
  %profi_port37 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %profi_port37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %profi_port37, align 4
  %add38 = add i32 %32, 24
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %33 = inttoptr i32 %add40 to ptr
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %33) #14, !srcloc !462
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !476
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp44 = icmp eq i32 %cmd, 1
  %or46 = or i32 %35, %what15.0.lcssa
  %neg48 = xor i32 %what15.0.lcssa, -1
  %and49 = and i32 %35, %neg48
  %old16.0 = select i1 %cmp44, i32 %or46, i32 %and49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !477
  tail call void @arm_heavy_mb() #14
  %36 = tail call i32 @llvm.bswap.i32(i32 %old16.0)
  %37 = ptrtoint ptr %profi_port37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %profi_port37, align 4
  %add55 = add i32 %38, 24
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %39 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 %36) #14, !srcloc !471
  br label %cleanup63.sink.split

cleanup63.sink.split:                             ; preds = %for.end, %if.end
  %reg_lock35.sink = phi ptr [ %reg_lock35, %for.end ], [ %reg_lock, %if.end ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock35.sink) #14
  br label %cleanup63

cleanup63:                                        ; preds = %cleanup63.sink.split, %sw.bb.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup63_crit_edge ], [ -22, %sw.bb.cleanup63_crit_edge ], [ 0, %cleanup63.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_pro_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 24
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #14, !srcloc !462
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !478
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %playback_pro_size = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %playback_pro_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %playback_pro_size, align 4
  %9 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %profi_port, align 4
  %add6 = add i32 %10, 20
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %11 = inttoptr i32 %add8 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #14, !srcloc !441
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !479
  %conv = zext i16 %13 to i32
  %shl.neg = mul i32 %conv, 536870908
  %sub = add i32 %shl.neg, %8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %17
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 18
  %18 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %19)
  %cmp = icmp eq i32 %div.i, %19
  %spec.store.select = select i1 %cmp, i32 0, i32 %div.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_capture_pro_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %capture_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %capture_pro_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %capture_pro_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_ice1712_capture_pro, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #14
  %call = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 24) #14
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_constraints_rates) #14
  %profi_port.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %profi_port.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %profi_port.i.i, align 4
  %add.i.i = add i32 %7, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !467
  %10 = and i8 %9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %is_pro_rate_locked.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

is_pro_rate_locked.exit:                          ; preds = %entry
  %11 = load i32, ptr @PRO_RATE_LOCKED, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.not = icmp eq i32 %11, 0
  br i1 %tobool1.i.not, label %is_pro_rate_locked.exit.if.end_crit_edge, label %is_pro_rate_locked.exit.if.then_crit_edge

is_pro_rate_locked.exit.if.then_crit_edge:        ; preds = %is_pro_rate_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

is_pro_rate_locked.exit.if.end_crit_edge:         ; preds = %is_pro_rate_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %is_pro_rate_locked.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = load i32, ptr @PRO_RATE_DEFAULT, align 4
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %13 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rate_min, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %14 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %rate_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %is_pro_rate_locked.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_capture_pro_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = load i32, ptr @PRO_RATE_RESET, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr @PRO_RATE_DEFAULT, align 4
  tail call fastcc void @snd_ice1712_set_pro_rate(ptr noundef %1, i32 noundef %3, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %capture_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %capture_pro_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %capture_pro_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_capture_pro_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  tail call fastcc void @snd_ice1712_set_pro_rate(ptr noundef %1, i32 noundef %3, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_capture_pro_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %div1.i.i = lshr i32 %mul.i.i, 3
  %capture_pro_size = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %capture_pro_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %capture_pro_size, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !480
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime1.i, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 51
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profi_port, align 4
  %add = add i32 %15, 32
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %16 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #14, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !481
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %capture_pro_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %capture_pro_size, align 4
  %shr = lshr i32 %18, 2
  %19 = trunc i32 %shr to i16
  %conv = add i16 %19, -1
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %21 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %profi_port, align 4
  %add8 = add i32 %22, 36
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %23 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %20) #14, !srcloc !424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !482
  tail call void @arm_heavy_mb() #14
  %24 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime1.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 21
  %28 = ptrtoint ptr %frame_bits.i.i35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frame_bits.i.i35, align 8
  %mul.i.i36 = mul i32 %29, %27
  %div1.i.i37 = lshr i32 %mul.i.i36, 5
  %30 = trunc i32 %div1.i.i37 to i16
  %conv18 = add i16 %30, -1
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %32 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %profi_port, align 4
  %add20 = add i32 %33, 38
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %34 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #14, !srcloc !424
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_capture_pro_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 24
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #14, !srcloc !462
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !483
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %capture_pro_size = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %capture_pro_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capture_pro_size, align 4
  %9 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %profi_port, align 4
  %add6 = add i32 %10, 36
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %11 = inttoptr i32 %add8 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #14, !srcloc !441
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !484
  %conv = zext i16 %13 to i32
  %shl.neg = mul i32 %conv, 536870908
  %sub = add i32 %shl.neg, %8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %17
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 18
  %18 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %19)
  %cmp = icmp eq i32 %div.i, %19
  %spec.store.select = select i1 %cmp, i32 0, i32 %div.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_mixer_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #14, !srcloc !485
  %and.i = and i32 %8, %sub.i
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %add = add i32 %and.i, %10
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 31, i32 %add
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = lshr i32 %12, 15
  %.lobit = and i32 %13, 1
  %14 = xor i32 %.lobit, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 8
  %16 = load i32, ptr %arrayidx, align 4
  %17 = xor i32 %16, -1
  %.lobit20.not = lshr i32 %17, 31
  %arrayidx10 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.lobit20.not, ptr %arrayidx10, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_mixer_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #14, !srcloc !485
  %and.i = and i32 %8, %sub.i
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %add = add i32 %and.i, %10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %cond = select i1 %tobool.not, i32 32768, i32 0
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  %cond4 = select i1 %tobool3.not, i32 -2147483648, i32 0
  %or = or i32 %cond4, %cond
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %arrayidx5 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 31, i32 %add
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5, align 4
  %and = and i32 %16, 2147450879
  %or6 = or i32 %or, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %or6, i32 %16)
  %cmp = icmp ne i32 %or6, %16
  %conv = zext i1 %cmp to i32
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or6, ptr %arrayidx5, align 4
  %18 = and i32 %16, 127
  %phi.cast.i = sub nsw i32 96, %18
  %cond.i = select i1 %tobool.not, i32 127, i32 %phi.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or6)
  %cmp4.i = icmp sgt i32 %or6, -1
  %19 = lshr i32 %16, 8
  %20 = and i32 %19, 32512
  %phi.bo.i = sub nsw i32 24576, %20
  %cond11.i = select i1 %cmp4.i, i32 %phi.bo.i, i32 32512
  %or13.i = or i32 %cond11.i, %cond.i
  %conv14.i = trunc i32 %or13.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !421
  tail call void @arm_heavy_mb() #14
  %conv15.i = trunc i32 %add to i8
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %profi_port.i, align 4
  %add.i = add i32 %22, 58
  %and16.i = and i32 %add.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %23 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv15.i) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !423
  tail call void @arm_heavy_mb() #14
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #14
  %25 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %profi_port.i, align 4
  %add22.i = add i32 %26, 56
  %and23.i = and i32 %add22.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %27 = inttoptr i32 %add24.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 %24) #14, !srcloc !424
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ice1712_pro_mixer_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 96, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_mixer_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #14, !srcloc !485
  %and.i = and i32 %8, %sub.i
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %add = add i32 %and.i, %10
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 31, i32 %add
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %and = and i32 %12, 127
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %value, align 8
  %14 = load i32, ptr %arrayidx, align 4
  %shr4 = lshr i32 %14, 16
  %and5 = and i32 %shr4, 127
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and5, ptr %arrayidx7, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_mixer_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #14, !srcloc !485
  %and.i = and i32 %8, %sub.i
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %add = add i32 %and.i, %10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %and = and i32 %12, 127
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %and3 = shl i32 %14, 16
  %shl = and i32 %and3, 8323072
  %or = or i32 %shl, %and
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %arrayidx4 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 31, i32 %add
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  %and5 = and i32 %16, -8323200
  %or6 = or i32 %or, %and5
  call void @__sanitizer_cov_trace_cmp4(i32 %or6, i32 %16)
  %cmp = icmp ne i32 %or6, %16
  %conv = zext i1 %cmp to i32
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or6, ptr %arrayidx4, align 4
  %and.i26 = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %cmp.i = icmp eq i32 %and.i26, 0
  %phi.cast.i = sub nsw i32 96, %and
  %cond.i = select i1 %cmp.i, i32 %phi.cast.i, i32 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or6)
  %cmp4.i = icmp sgt i32 %or6, -1
  %18 = lshr exact i32 %and3, 8
  %19 = and i32 %18, 32512
  %phi.bo.i = sub nsw i32 24576, %19
  %cond11.i = select i1 %cmp4.i, i32 %phi.bo.i, i32 32512
  %or13.i = or i32 %cond11.i, %cond.i
  %conv14.i = trunc i32 %or13.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !421
  tail call void @arm_heavy_mb() #14
  %conv15.i = trunc i32 %add to i8
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %profi_port.i, align 4
  %add.i = add i32 %21, 58
  %and16.i = and i32 %add.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %22 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv15.i) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !423
  tail call void @arm_heavy_mb() #14
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #14
  %24 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %profi_port.i, align 4
  %add22.i = add i32 %25, 56
  %and23.i = and i32 %add22.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %26 = inttoptr i32 %add24.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #14, !srcloc !424
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ice1712_playback_open(ptr noundef %substream) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %playback_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %playback_con_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %playback_con_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_ice1712_playback, i32 64)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ice1712_playback_close(ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %playback_con_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %playback_con_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %div1.i.i = lshr i32 %mul.i.i, 5
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size.i, align 4
  %mul.i.i80 = mul i32 %9, %7
  %div1.i.i81 = lshr i32 %mul.i.i80, 3
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_width(i32 noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp = icmp eq i32 %call4, 16
  %spec.select = select i1 %cmp, i32 16, i32 0
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp5 = icmp eq i32 %13, 2
  %or7 = or i32 %spec.select, 8
  %tmp.1 = select i1 %cmp5, i32 %or7, i32 %spec.select
  %sub = add nsw i32 %div1.i.i, -1
  %rate9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %rate9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate9, align 4
  %mul = shl i32 %15, 13
  %div = udiv i32 %mul, 375
  %16 = tail call i32 @llvm.umin.i32(i32 %div, i32 1048575)
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !486
  tail call void @arm_heavy_mb() #14
  %ddma_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %ddma_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ddma_port, align 4
  %add = add i32 %18, 15
  %and = and i32 %add, 1048575
  %add13 = or i32 %and, -18874368
  %19 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !487
  tail call void @arm_heavy_mb() #14
  %20 = ptrtoint ptr %ddma_port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ddma_port, align 4
  %add19 = add i32 %21, 11
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %22 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 88) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !488
  tail call void @arm_heavy_mb() #14
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %ddma_port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ddma_port, align 4
  %and28 = and i32 %27, 1048575
  %add29 = or i32 %and28, -18874368
  %28 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %25) #14, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !489
  tail call void @arm_heavy_mb() #14
  %29 = trunc i32 %div1.i.i81 to i16
  %conv = add i16 %29, -1
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %31 = ptrtoint ptr %ddma_port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ddma_port, align 4
  %add35 = add i32 %32, 4
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %33 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 %30) #14, !srcloc !424
  %conv40 = trunc i32 %16 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port.i, align 4
  %add.i = add i32 %35, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %36 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 6) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %37 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %38, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %39 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %conv40) #14, !srcloc !422
  %shr41 = lshr i32 %16, 8
  %conv43 = trunc i32 %shr41 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %40 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port.i, align 4
  %add.i83 = add i32 %41, 3
  %and.i84 = and i32 %add.i83, 1048575
  %add1.i85 = or i32 %and.i84, -18874368
  %42 = inttoptr i32 %add1.i85 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 7) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %43 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.i, align 4
  %add5.i86 = add i32 %44, 4
  %and6.i87 = and i32 %add5.i86, 1048575
  %add7.i88 = or i32 %and6.i87, -18874368
  %45 = inttoptr i32 %add7.i88 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %conv43) #14, !srcloc !422
  %shr44 = lshr i32 %16, 16
  %conv46 = trunc i32 %shr44 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %46 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port.i, align 4
  %add.i90 = add i32 %47, 3
  %and.i91 = and i32 %add.i90, 1048575
  %add1.i92 = or i32 %and.i91, -18874368
  %48 = inttoptr i32 %add1.i92 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 8) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %49 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.i, align 4
  %add5.i93 = add i32 %50, 4
  %and6.i94 = and i32 %add5.i93, 1048575
  %add7.i95 = or i32 %and6.i94, -18874368
  %51 = inttoptr i32 %add7.i95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %conv46) #14, !srcloc !422
  %conv47 = trunc i32 %tmp.1 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port.i, align 4
  %add.i97 = add i32 %53, 3
  %and.i98 = and i32 %add.i97, 1048575
  %add1.i99 = or i32 %and.i98, -18874368
  %54 = inttoptr i32 %add1.i99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 2) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %55 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port.i, align 4
  %add5.i100 = add i32 %56, 4
  %and6.i101 = and i32 %add5.i100, 1048575
  %add7.i102 = or i32 %and6.i101, -18874368
  %57 = inttoptr i32 %add7.i102 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %conv47) #14, !srcloc !422
  %conv49 = trunc i32 %sub to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %58 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port.i, align 4
  %add.i104 = add i32 %59, 3
  %and.i105 = and i32 %add.i104, 1048575
  %add1.i106 = or i32 %and.i105, -18874368
  %60 = inttoptr i32 %add1.i106 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 0) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %61 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port.i, align 4
  %add5.i107 = add i32 %62, 4
  %and6.i108 = and i32 %add5.i107, 1048575
  %add7.i109 = or i32 %and6.i108, -18874368
  %63 = inttoptr i32 %add7.i109 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %conv49) #14, !srcloc !422
  %shr50 = lshr i32 %sub, 8
  %conv51 = trunc i32 %shr50 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %64 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port.i, align 4
  %add.i111 = add i32 %65, 3
  %and.i112 = and i32 %add.i111, 1048575
  %add1.i113 = or i32 %and.i112, -18874368
  %66 = inttoptr i32 %add1.i113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 1) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %67 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port.i, align 4
  %add5.i114 = add i32 %68, 4
  %and6.i115 = and i32 %add5.i114, 1048575
  %add7.i116 = or i32 %and6.i115, -18874368
  %69 = inttoptr i32 %add7.i116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 %conv51) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %70 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port.i, align 4
  %add.i118 = add i32 %71, 3
  %and.i119 = and i32 %add.i118, 1048575
  %add1.i120 = or i32 %and.i119, -18874368
  %72 = inttoptr i32 %add1.i120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 3) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %73 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port.i, align 4
  %add5.i121 = add i32 %74, 4
  %and6.i122 = and i32 %add5.i121, 1048575
  %add7.i123 = or i32 %and6.i122, -18874368
  %75 = inttoptr i32 %add7.i123 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 0) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %76 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port.i, align 4
  %add.i125 = add i32 %77, 3
  %and.i126 = and i32 %add.i125, 1048575
  %add1.i127 = or i32 %and.i126, -18874368
  %78 = inttoptr i32 %add1.i127 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 4) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %79 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port.i, align 4
  %add5.i128 = add i32 %80, 4
  %and6.i129 = and i32 %add5.i128, 1048575
  %add7.i130 = or i32 %and6.i129, -18874368
  %81 = inttoptr i32 %add7.i130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 0) #14, !srcloc !422
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 2) #14, !srcloc !422
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %6, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %7 = inttoptr i32 %add5.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %cmd, label %entry.if.end18_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then4
    i32 3, label %if.then8
    i32 4, label %if.then13
  ]

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i8 %8, 1
  br label %if.end18

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and = and i8 %8, -2
  br label %if.end18

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %or9 = or i8 %8, 2
  br label %if.end18

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and14 = and i8 %8, -3
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then8, %if.then4, %if.then, %entry.if.end18_crit_edge
  %result.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then8 ], [ 0, %if.then13 ], [ -22, %entry.if.end18_crit_edge ]
  %tmp.0 = phi i8 [ %or, %if.then ], [ %and, %if.then4 ], [ %or9, %if.then8 ], [ %and14, %if.then13 ], [ %8, %entry.if.end18_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add.i32 = add i32 %11, 3
  %and.i33 = and i32 %add.i32, 1048575
  %add1.i34 = or i32 %and.i33, -18874368
  %12 = inttoptr i32 %add1.i34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 2) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add5.i35 = add i32 %14, 4
  %and6.i = and i32 %add5.i35, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %15 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %tmp.0) #14, !srcloc !422
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #14
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 4
  %add.i = add i32 %5, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 2) #14, !srcloc !422
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %8, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_size, align 4
  %ddma_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %ddma_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ddma_port, align 4
  %add = add i32 %15, 4
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %16 = inttoptr i32 %add3 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #14, !srcloc !441
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !490
  %conv6 = zext i16 %18 to i32
  %sub = sub i32 %13, %conv6
  %19 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %runtime1, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %22
  %23 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %24)
  %cmp = icmp eq i32 %div.i, %24
  %spec.store.select = select i1 %cmp, i32 0, i32 %div.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ice1712_capture_open(ptr noundef %substream) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %capture_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %capture_con_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %capture_con_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_ice1712_capture, i32 64)
  %ac97 = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac97, align 4
  %arrayidx = getelementptr %struct.snd_ac97, ptr %7, i32 0, i32 20, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %rates3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 2
  %10 = ptrtoint ptr %rates3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rates3, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 3
  %11 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 48000, ptr %rate_min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ice1712_capture_close(ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %capture_con_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_con_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_capture_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %div1.i.i = lshr i32 %mul.i.i, 5
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size.i, align 4
  %mul.i.i50 = mul i32 %9, %7
  %div1.i.i51 = lshr i32 %mul.i.i50, 3
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_width(i32 noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp = icmp eq i32 %call4, 16
  %spec.select = select i1 %cmp, i8 2, i8 6
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp6 = icmp eq i32 %13, 2
  %14 = and i8 %spec.select, 4
  %tmp.1 = select i1 %cmp6, i8 %14, i8 %spec.select
  %sub = add nsw i32 %div1.i.i, -1
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !491
  tail call void @arm_heavy_mb() #14
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %15 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr, align 8
  %capture_con_virt_addr = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 23
  %17 = ptrtoint ptr %capture_con_virt_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %capture_con_virt_addr, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %16)
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add = add i32 %20, 20
  %and13 = and i32 %add, 1048575
  %add14 = or i32 %and13, -18874368
  %21 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %18) #14, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !492
  tail call void @arm_heavy_mb() #14
  %22 = trunc i32 %div1.i.i51 to i16
  %conv19 = add i16 %22, -1
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv19)
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add21 = add i32 %25, 24
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %26 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #14, !srcloc !424
  %shr25 = lshr i32 %sub, 8
  %conv26 = trunc i32 %shr25 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add.i = add i32 %28, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %29 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 17) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add5.i = add i32 %31, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %32 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv26) #14, !srcloc !422
  %conv28 = trunc i32 %sub to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add.i53 = add i32 %34, 3
  %and.i54 = and i32 %add.i53, 1048575
  %add1.i55 = or i32 %and.i54, -18874368
  %35 = inttoptr i32 %add1.i55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 16) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add5.i56 = add i32 %37, 4
  %and6.i57 = and i32 %add5.i56, 1048575
  %add7.i58 = or i32 %and6.i57, -18874368
  %38 = inttoptr i32 %add7.i58 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv28) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add.i60 = add i32 %40, 3
  %and.i61 = and i32 %add.i60, 1048575
  %add1.i62 = or i32 %and.i61, -18874368
  %41 = inttoptr i32 %add1.i62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 18) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add5.i63 = add i32 %43, 4
  %and6.i64 = and i32 %add5.i63, 1048575
  %add7.i65 = or i32 %and6.i64, -18874368
  %44 = inttoptr i32 %add7.i65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %tmp.1) #14, !srcloc !422
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  %ac97 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 25
  %45 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ac97, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %47 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rate, align 4
  %call30 = tail call i32 @snd_ac97_set_rate(ptr noundef %46, i32 noundef 50, i32 noundef %48) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 18) #14, !srcloc !422
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %6, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %7 = inttoptr i32 %add5.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %cmd, label %entry.if.end8_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then4
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = or i8 %8, 1
  br label %if.end8

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = and i8 %8, -2
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then, %entry.if.end8_crit_edge
  %result.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ -22, %entry.if.end8_crit_edge ]
  %tmp.0 = phi i8 [ %10, %if.then ], [ %11, %if.then4 ], [ %8, %entry.if.end8_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add.i17 = add i32 %13, 3
  %and.i18 = and i32 %add.i17, 1048575
  %add1.i19 = or i32 %and.i18, -18874368
  %14 = inttoptr i32 %add1.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 18) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add5.i20 = add i32 %16, 4
  %and6.i = and i32 %add5.i20, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %17 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %tmp.0) #14, !srcloc !422
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #14
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_capture_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  tail call void @arm_heavy_mb() #14
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 18) #14, !srcloc !422
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %6, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %7 = inttoptr i32 %add5.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add = add i32 %11, 20
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %12 = inttoptr i32 %add2 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #14, !srcloc !462
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !493
  %capture_con_virt_addr = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %capture_con_virt_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capture_con_virt_addr, align 4
  %sub = sub i32 %14, %16
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %17 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %20
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 18
  %21 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %22)
  %cmp = icmp eq i32 %div.i, %22
  %spec.store.select = select i1 %cmp, i32 0, i32 %div.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_set_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ice1712_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %tm.067 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 9
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  %6 = and i8 %5, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %.not = icmp eq i8 %6, 8
  %inc = add nuw nsw i32 %tm.067, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 65536
  %or.cond = select i1 %.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !495
  tail call void @arm_heavy_mb() #14
  %conv9 = trunc i16 %reg to i8
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add11 = add i32 %8, 8
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %9 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv9) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !496
  tail call void @arm_heavy_mb() #14
  %10 = tail call i16 @llvm.bswap.i16(i16 %val)
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add19 = add i32 %12, 10
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %13 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #14, !srcloc !424
  %14 = and i8 %5, -36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !497
  tail call void @arm_heavy_mb() #14
  %15 = or i8 %14, 32
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add32 = add i32 %17, 9
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %18 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %15) #14, !srcloc !422
  br label %for.body39

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %do.body
  %tm.168 = phi i32 [ 0, %do.body ], [ %inc55, %for.body39.for.body39_crit_edge ]
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add42 = add i32 %20, 9
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %21 = inttoptr i32 %add44 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !498
  %23 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp50 = icmp eq i8 %23, 0
  %inc55 = add nuw nsw i32 %tm.168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %inc55)
  %exitcond69.not = icmp eq i32 %inc55, 65536
  %or.cond70 = select i1 %cmp50, i1 true, i1 %exitcond69.not
  br i1 %or.cond70, label %for.end56, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body39

for.end56:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_ice1712_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %tm.071 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 9
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !499
  %6 = and i8 %5, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %.not = icmp eq i8 %6, 8
  %inc = add nuw nsw i32 %tm.071, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 65536
  %or.cond = select i1 %.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !500
  tail call void @arm_heavy_mb() #14
  %conv9 = trunc i16 %reg to i8
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add11 = add i32 %8, 8
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %9 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv9) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !501
  tail call void @arm_heavy_mb() #14
  %10 = or i8 %5, 16
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add21 = add i32 %12, 9
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %13 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #14, !srcloc !422
  br label %for.body28

for.cond25:                                       ; preds = %for.body28
  %inc44 = add nuw nsw i32 %tm.172, 1
  %exitcond73.not = icmp eq i32 %inc44, 65536
  br i1 %exitcond73.not, label %for.cond25.cleanup_crit_edge, label %for.cond25.for.body28_crit_edge

for.cond25.for.body28_crit_edge:                  ; preds = %for.cond25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body28

for.cond25.cleanup_crit_edge:                     ; preds = %for.cond25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body28:                                       ; preds = %for.cond25.for.body28_crit_edge, %do.body
  %tm.172 = phi i32 [ 0, %do.body ], [ %inc44, %for.cond25.for.body28_crit_edge ]
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add31 = add i32 %15, 9
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %16 = inttoptr i32 %add33 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !502
  %18 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp39 = icmp eq i8 %18, 0
  br i1 %cmp39, label %if.end49, label %for.cond25

if.end49:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add52 = add i32 %20, 10
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %21 = inttoptr i32 %add54 to ptr
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %21) #14, !srcloc !441
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !503
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %for.cond25.cleanup_crit_edge
  %retval.0 = phi i16 [ %23, %if.end49 ], [ -1, %for.cond25.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ice1712_pro_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %tm.067 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 5
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !504
  %6 = and i8 %5, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %.not = icmp eq i8 %6, 8
  %inc = add nuw nsw i32 %tm.067, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 65536
  %or.cond = select i1 %.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !505
  tail call void @arm_heavy_mb() #14
  %conv9 = trunc i16 %reg to i8
  %7 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %profi_port, align 4
  %add11 = add i32 %8, 4
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %9 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv9) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !506
  tail call void @arm_heavy_mb() #14
  %10 = tail call i16 @llvm.bswap.i16(i16 %val)
  %11 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %profi_port, align 4
  %add19 = add i32 %12, 6
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %13 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #14, !srcloc !424
  %14 = and i8 %5, -36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !507
  tail call void @arm_heavy_mb() #14
  %15 = or i8 %14, 32
  %16 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %profi_port, align 4
  %add32 = add i32 %17, 5
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %18 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %15) #14, !srcloc !422
  br label %for.body39

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %do.body
  %tm.168 = phi i32 [ 0, %do.body ], [ %inc55, %for.body39.for.body39_crit_edge ]
  %19 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %profi_port, align 4
  %add42 = add i32 %20, 5
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %21 = inttoptr i32 %add44 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !508
  %23 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp50 = icmp eq i8 %23, 0
  %inc55 = add nuw nsw i32 %tm.168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %inc55)
  %exitcond69.not = icmp eq i32 %inc55, 65536
  %or.cond70 = select i1 %cmp50, i1 true, i1 %exitcond69.not
  br i1 %or.cond70, label %for.end56, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body39

for.end56:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_ice1712_pro_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %tm.071 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 5
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !509
  %6 = and i8 %5, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %.not = icmp eq i8 %6, 8
  %inc = add nuw nsw i32 %tm.071, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 65536
  %or.cond = select i1 %.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !510
  tail call void @arm_heavy_mb() #14
  %conv9 = trunc i16 %reg to i8
  %7 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %profi_port, align 4
  %add11 = add i32 %8, 4
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %9 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv9) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !511
  tail call void @arm_heavy_mb() #14
  %10 = or i8 %5, 16
  %11 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %profi_port, align 4
  %add21 = add i32 %12, 5
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %13 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #14, !srcloc !422
  br label %for.body28

for.cond25:                                       ; preds = %for.body28
  %inc44 = add nuw nsw i32 %tm.172, 1
  %exitcond73.not = icmp eq i32 %inc44, 65536
  br i1 %exitcond73.not, label %for.cond25.cleanup_crit_edge, label %for.cond25.for.body28_crit_edge

for.cond25.for.body28_crit_edge:                  ; preds = %for.cond25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body28

for.cond25.cleanup_crit_edge:                     ; preds = %for.cond25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body28:                                       ; preds = %for.cond25.for.body28_crit_edge, %do.body
  %tm.172 = phi i32 [ 0, %do.body ], [ %inc44, %for.cond25.for.body28_crit_edge ]
  %14 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profi_port, align 4
  %add31 = add i32 %15, 5
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %16 = inttoptr i32 %add33 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !512
  %18 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp39 = icmp eq i8 %18, 0
  br i1 %cmp39, label %if.end49, label %for.cond25

if.end49:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %profi_port, align 4
  %add52 = add i32 %20, 6
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %21 = inttoptr i32 %add54 to ptr
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %21) #14, !srcloc !441
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !513
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %for.cond25.cleanup_crit_edge
  %retval.0 = phi i16 [ %23, %if.end49 ], [ -1, %for.cond25.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_ice1712_mixer_free_ac97(ptr nocapture noundef readonly %ac97) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac971 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %ac971 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac971, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_digmix_route_ac97_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 60
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !514
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_digmix_route_ac97_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 60
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !515
  %and3 = and i8 %5, -2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  %masksel = zext i1 %tobool.not to i8
  %spec.select = or i8 %and3, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !516
  tail call void @arm_heavy_mb() #14
  %8 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %profi_port, align 4
  %add8 = add i32 %9, 60
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %10 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %spec.select) #14, !srcloc !422
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %spec.select)
  %cmp = icmp ne i8 %5, %spec.select
  %conv15 = zext i1 %cmp to i32
  ret i32 %conv15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ice1712_eeprom_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 52, ptr %count, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ice1712_eeprom_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %2 = call ptr @memcpy(ptr %value, ptr %eeprom, i32 52)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_internal_clock_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 14, ptr noundef nonnull @snd_ice1712_pro_internal_clock_info.texts) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_internal_clock_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port.i, align 4
  %add.i = add i32 %3, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !467
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %profi_port.i, align 4
  %add = add i32 %8, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %9 = inttoptr i32 %add1 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !517
  %11 = and i8 %10, 15
  %and4 = zext i8 %11 to i32
  %arrayidx5 = getelementptr [16 x i8], ptr @snd_ice1712_pro_internal_clock_get.xlate, i32 0, i32 %and4
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5, align 1
  %14 = add nsw i32 %and4, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp = icmp ult i32 %14, 3
  br i1 %cmp, label %do.end, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1790, i32 noundef 9, ptr noundef nonnull @.str.71) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.else.if.end26_crit_edge
  %val.0 = phi i8 [ 0, %do.end ], [ %13, %if.else.if.end26_crit_edge ]
  %conv27 = zext i8 %val.0 to i32
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %entry.if.end30_crit_edge
  %conv27.sink = phi i32 [ %conv27, %if.end26 ], [ 13, %entry.if.end30_crit_edge ]
  %value28 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv27.sink, ptr %value28, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_internal_clock_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !518
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %7)
  %cmp = icmp eq i32 %7, 13
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !519
  tail call void @arm_heavy_mb() #14
  %8 = or i8 %5, 16
  %9 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %profi_port, align 4
  %add5 = add i32 %10, 1
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %11 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %8) #14, !srcloc !422
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rem = srem i32 %7, 13
  %arrayidx11 = getelementptr [13 x i32], ptr @snd_ice1712_pro_internal_clock_put.xrate, i32 0, i32 %rem
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx11, align 4
  store i32 %13, ptr @PRO_RATE_DEFAULT, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  %14 = load i32, ptr @PRO_RATE_DEFAULT, align 4
  tail call fastcc void @snd_ice1712_set_pro_rate(ptr noundef %1, i32 noundef %14, i32 noundef 1)
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %15 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %profi_port, align 4
  %add16 = add i32 %16, 1
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %17 = inttoptr i32 %add18 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !520
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  %19 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %profi_port, align 4
  %add31 = add i32 %20, 1
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %21 = inttoptr i32 %add33 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !521
  %23 = xor i8 %22, %5
  %24 = and i8 %23, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp39.not = icmp eq i8 %24, 0
  br i1 %cmp39.not, label %if.end.if.end43_crit_edge, label %if.then41

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then41:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %profi_port, align 4
  %add.i = add i32 %26, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %27 = inttoptr i32 %add1.i to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !467
  %29 = lshr i8 %28, 4
  %.lobit.i = and i8 %29, 1
  %30 = zext i8 %.lobit.i to i32
  tail call fastcc void @snd_ice1712_set_input_clock_source(ptr noundef %1, i32 noundef %30)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end.if.end43_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %5)
  %cmp24 = icmp ne i8 %18, %5
  %conv25 = zext i1 %cmp24 to i32
  ret i32 %conv25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_internal_clock_default_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 13, ptr noundef nonnull @snd_ice1712_pro_internal_clock_default_info.texts) #14
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_internal_clock_default_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @PRO_RATE_DEFAULT, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %0, label %for.inc.12 [
    i32 8000, label %entry.for.end_crit_edge
    i32 9600, label %for.end.fold.split
    i32 11025, label %for.end.fold.split7
    i32 12000, label %for.end.fold.split8
    i32 16000, label %for.end.fold.split9
    i32 22050, label %for.end.fold.split10
    i32 24000, label %for.end.fold.split11
    i32 32000, label %for.end.fold.split12
    i32 44100, label %for.end.fold.split13
    i32 48000, label %for.end.fold.split14
    i32 64000, label %for.end.fold.split15
    i32 88200, label %for.end.fold.split16
    i32 96000, label %for.end.fold.split17
  ]

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.12:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split7:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split8:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split17, %for.end.fold.split16, %for.end.fold.split15, %for.end.fold.split14, %for.end.fold.split13, %for.end.fold.split12, %for.end.fold.split11, %for.end.fold.split10, %for.end.fold.split9, %for.end.fold.split8, %for.end.fold.split7, %for.end.fold.split, %for.inc.12, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 13, %for.inc.12 ], [ 1, %for.end.fold.split ], [ 2, %for.end.fold.split7 ], [ 3, %for.end.fold.split8 ], [ 4, %for.end.fold.split9 ], [ 5, %for.end.fold.split10 ], [ 6, %for.end.fold.split11 ], [ 7, %for.end.fold.split12 ], [ 8, %for.end.fold.split13 ], [ 9, %for.end.fold.split14 ], [ 10, %for.end.fold.split15 ], [ 11, %for.end.fold.split16 ], [ 12, %for.end.fold.split17 ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val.0.lcssa, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ice1712_pro_internal_clock_default_put(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @PRO_RATE_DEFAULT, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 8
  %rem = srem i32 %2, 13
  %arrayidx1 = getelementptr [13 x i32], ptr @snd_ice1712_pro_internal_clock_default_put.xrate, i32 0, i32 %rem
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  store i32 %4, ptr @PRO_RATE_DEFAULT, align 4
  %conv2 = and i32 %0, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv2)
  %cmp = icmp ne i32 %4, %conv2
  %conv3 = zext i1 %cmp to i32
  ret i32 %conv3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ice1712_pro_rate_locking_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @PRO_RATE_LOCKED, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_rate_locking_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %cond = zext i1 %tobool.not to i32
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %4 = load i32, ptr @PRO_RATE_LOCKED, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cond)
  %cmp = icmp ne i32 %4, %cond
  %conv = zext i1 %cmp to i32
  store i32 %cond, ptr @PRO_RATE_LOCKED, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ice1712_pro_rate_reset_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @PRO_RATE_RESET, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_rate_reset_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %cond = zext i1 %tobool.not to i32
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %4 = load i32, ptr @PRO_RATE_RESET, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cond)
  %cmp = icmp ne i32 %4, %cond
  %conv = zext i1 %cmp to i32
  store i32 %cond, ptr @PRO_RATE_RESET, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_route_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %uinfo, i32 0, i32 5
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %1, %3
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  %6 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %5) #14, !srcloc !485
  %and.i = and i32 %6, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp = icmp ult i32 %and.i, 2
  %cond = select i1 %cmp, i32 12, i32 11
  %call1 = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %cond, ptr noundef nonnull @snd_ice1712_pro_route_info.texts) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_route_analog_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #14, !srcloc !485
  %and.i = and i32 %8, %sub.i
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %profi_port, align 4
  %add = add i32 %10, 48
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %11 = inttoptr i32 %add1 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #14, !srcloc !441
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !522
  %conv = zext i16 %13 to i32
  %14 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profi_port, align 4
  %add6 = add i32 %15, 52
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %16 = inttoptr i32 %add8 to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #14, !srcloc !462
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !523
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  %and.i.frozen = freeze i32 %and.i
  %div = sdiv i32 %and.i.frozen, 2
  %19 = mul i32 %div, 2
  %rem.decomposed = sub i32 %and.i.frozen, %19
  %mul = shl nsw i32 %rem.decomposed, 3
  %mul13 = shl nsw i32 %div, 1
  %add14 = add i32 %mul, %mul13
  %shr = lshr i32 %conv, %add14
  %and15 = and i32 %shr, 3
  %mul17 = shl i32 %div, 3
  %mul19 = shl nsw i32 %rem.decomposed, 2
  %add20 = add i32 %mul17, %mul19
  %shr21 = lshr i32 %18, %add20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and15)
  %cmp = icmp eq i32 %and15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp23 = icmp slt i32 %and.i, 2
  %or.cond = select i1 %cmp, i1 %cmp23, i1 false
  br i1 %or.cond, label %entry.if.end45_crit_edge, label %if.else

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.else:                                          ; preds = %entry
  %20 = zext i32 %and15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %and15, label %if.else.if.end45_crit_edge [
    i32 2, label %if.then27
    i32 3, label %if.then35
  ]

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %and28 = and i32 %shr21, 7
  %add29 = add nuw nsw i32 %and28, 1
  br label %if.end45

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %shr36 = lshr i32 %shr21, 3
  %and37 = and i32 %shr36, 1
  %add38 = add nuw nsw i32 %and37, 9
  br label %if.end45

if.end45:                                         ; preds = %if.then35, %if.then27, %if.else.if.end45_crit_edge, %entry.if.end45_crit_edge
  %add29.sink = phi i32 [ %add29, %if.then27 ], [ %add38, %if.then35 ], [ 11, %entry.if.end45_crit_edge ], [ 0, %if.else.if.end45_crit_edge ]
  %value30 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %21 = ptrtoint ptr %value30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add29.sink, ptr %value30, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_route_analog_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #14, !srcloc !485
  %and.i = and i32 %8, %sub.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %cmp = icmp ugt i32 %10, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp1 = icmp slt i32 %and.i, 2
  %cond = zext i1 %cmp1 to i32
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp4 = icmp ugt i32 %10, 8
  br i1 %cmp4, label %if.else.if.end13_crit_edge, label %if.else6

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9.not = icmp eq i32 %10, 0
  %. = select i1 %cmp9.not, i32 0, i32 2
  br label %if.end13

if.end13:                                         ; preds = %if.else6, %if.else.if.end13_crit_edge, %if.then
  %nval.0 = phi i32 [ %cond, %if.then ], [ 3, %if.else.if.end13_crit_edge ], [ %., %if.else6 ]
  %and.i.frozen = freeze i32 %and.i
  %div = sdiv i32 %and.i.frozen, 2
  %11 = mul i32 %div, 2
  %rem.decomposed = sub i32 %and.i.frozen, %11
  %mul = shl nsw i32 %rem.decomposed, 3
  %mul14 = shl nsw i32 %div, 1
  %add = add i32 %mul, %mul14
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %profi_port, align 4
  %add15 = add i32 %13, 48
  %and = and i32 %add15, 1048575
  %add16 = or i32 %and, -18874368
  %14 = inttoptr i32 %add16 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #14, !srcloc !441
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !524
  %conv = zext i16 %16 to i32
  %shl = shl i32 3, %add
  %neg = xor i32 %shl, -1
  %and19 = and i32 %conv, %neg
  %shl20 = shl i32 %nval.0, %add
  %or = or i32 %and19, %shl20
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv)
  %cmp21 = icmp ne i32 %or, %conv
  %conv22 = zext i1 %cmp21 to i32
  br i1 %cmp21, label %do.body, label %if.end13.if.end30_crit_edge

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !525
  tail call void @arm_heavy_mb() #14
  %conv24 = trunc i32 %or to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv24)
  %18 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %profi_port, align 4
  %add26 = add i32 %19, 48
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %20 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %17) #14, !srcloc !424
  br label %if.end30

if.end30:                                         ; preds = %do.body, %if.end13.if.end30_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nval.0)
  %cmp32 = icmp ult i32 %nval.0, 2
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %21 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %profi_port, align 4
  %add39 = add i32 %22, 52
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %23 = inttoptr i32 %add41 to ptr
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %23) #14, !srcloc !462
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !526
  %mul46 = shl i32 %div, 3
  %mul48 = shl nsw i32 %rem.decomposed, 2
  %add49 = add i32 %mul46, %mul48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nval.0)
  %cmp50 = icmp eq i32 %nval.0, 2
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 8
  %sub63 = shl i32 %27, 3
  %shl64 = add i32 %sub63, -72
  %sub = add i32 %27, -1
  %.sink = select i1 %cmp50, i32 7, i32 8
  %shl64.sink = select i1 %cmp50, i32 %sub, i32 %shl64
  %shl65 = shl i32 %.sink, %add49
  %neg66 = xor i32 %shl65, -1
  %and67 = and i32 %25, %neg66
  %shl68 = shl i32 %shl64.sink, %add49
  %or69 = or i32 %shl68, %and67
  call void @__sanitizer_cov_trace_cmp4(i32 %or69, i32 %25)
  %cmp71.not = icmp eq i32 %or69, %25
  br i1 %cmp71.not, label %if.end35.if.end82_crit_edge, label %if.then73

if.end35.if.end82_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.then73:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !527
  tail call void @arm_heavy_mb() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %29 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %profi_port, align 4
  %add78 = add i32 %30, 52
  %and79 = and i32 %add78, 1048575
  %add80 = or i32 %and79, -18874368
  %31 = inttoptr i32 %add80 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 %28) #14, !srcloc !471
  br label %if.end82

if.end82:                                         ; preds = %if.then73, %if.end35.if.end82_crit_edge
  %change.0 = phi i32 [ 1, %if.then73 ], [ %conv22, %if.end35.if.end82_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %change.0, %if.end82 ], [ %conv22, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_route_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #14, !srcloc !485
  %and.i = and i32 %8, %sub.i
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %profi_port, align 4
  %add = add i32 %10, 50
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %11 = inttoptr i32 %add1 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #14, !srcloc !441
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !528
  %conv = zext i16 %13 to i32
  %mul = shl i32 %and.i, 2
  %add4 = add i32 %mul, 8
  %shr = lshr i32 %conv, %add4
  %mul6 = shl i32 %and.i, 1
  %shr7 = lshr i32 %conv, %mul6
  %and8 = and i32 %shr7, 3
  %14 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %and8, label %if.else26 [
    i32 1, label %entry.if.end30_crit_edge
    i32 2, label %if.then12
    i32 3, label %if.then20
  ]

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and13 = and i32 %shr, 7
  %add14 = add nuw nsw i32 %and13, 1
  br label %if.end30

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %shr21 = lshr i32 %shr, 3
  %and22 = and i32 %shr21, 1
  %add23 = add nuw nsw i32 %and22, 9
  br label %if.end30

if.else26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.then20, %if.then12, %entry.if.end30_crit_edge
  %add14.sink = phi i32 [ %add14, %if.then12 ], [ 0, %if.else26 ], [ %add23, %if.then20 ], [ 11, %entry.if.end30_crit_edge ]
  %value15 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add14.sink, ptr %value15, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_route_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %3, %5
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #14, !srcloc !485
  %and.i = and i32 %8, %sub.i
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %profi_port, align 4
  %add = add i32 %10, 50
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %11 = inttoptr i32 %add1 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #14, !srcloc !441
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !529
  %conv = zext i16 %13 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %15)
  %cmp = icmp ugt i32 %15, 10
  br i1 %cmp, label %entry.if.end18_crit_edge, label %if.else

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp7 = icmp ugt i32 %15, 8
  br i1 %cmp7, label %if.else.if.end18_crit_edge, label %if.else10

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.not = icmp eq i32 %15, 0
  %not.cmp13.not = xor i1 %cmp13.not, true
  %.86 = select i1 %cmp13.not, i32 0, i32 2
  br label %if.end18

if.end18:                                         ; preds = %if.else10, %if.else.if.end18_crit_edge, %entry.if.end18_crit_edge
  %cmp23 = phi i1 [ false, %entry.if.end18_crit_edge ], [ false, %if.else.if.end18_crit_edge ], [ %not.cmp13.not, %if.else10 ]
  %cmp34 = phi i1 [ false, %entry.if.end18_crit_edge ], [ true, %if.else.if.end18_crit_edge ], [ false, %if.else10 ]
  %nval.0 = phi i32 [ 1, %entry.if.end18_crit_edge ], [ 3, %if.else.if.end18_crit_edge ], [ %.86, %if.else10 ]
  %mul = shl i32 %and.i, 1
  %shl = shl i32 3, %mul
  %neg = xor i32 %shl, -1
  %and19 = and i32 %conv, %neg
  %shl20 = shl i32 %nval.0, %mul
  %or = or i32 %shl20, %and19
  %mul21 = shl i32 %and.i, 2
  %add22 = add i32 %mul21, 8
  br i1 %cmp23, label %if.then25, label %if.else33

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i32 %15, -1
  %shl28 = shl i32 7, %add22
  %neg29 = xor i32 %shl28, -1
  %and30 = and i32 %or, %neg29
  %shl31 = shl i32 %sub, %add22
  %or32 = or i32 %and30, %shl31
  br label %if.end47

if.else33:                                        ; preds = %if.end18
  br i1 %cmp34, label %if.then36, label %if.else33.if.end47_crit_edge

if.else33.if.end47_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then36:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #16
  %sub39 = shl i32 %15, 3
  %shl40 = add i32 %sub39, -72
  %shl41 = shl i32 8, %add22
  %neg42 = xor i32 %shl41, -1
  %and43 = and i32 %or, %neg42
  %shl44 = shl i32 %shl40, %add22
  %or45 = or i32 %and43, %shl44
  br label %if.end47

if.end47:                                         ; preds = %if.then36, %if.else33.if.end47_crit_edge, %if.then25
  %val.0 = phi i32 [ %or32, %if.then25 ], [ %or45, %if.then36 ], [ %or, %if.else33.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %conv)
  %cmp48 = icmp ne i32 %val.0, %conv
  br i1 %cmp48, label %do.body, label %if.end47.if.end57_crit_edge

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

do.body:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !530
  tail call void @arm_heavy_mb() #14
  %conv51 = trunc i32 %val.0 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv51)
  %17 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %profi_port, align 4
  %add53 = add i32 %18, 50
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %19 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %16) #14, !srcloc !424
  br label %if.end57

if.end57:                                         ; preds = %do.body, %if.end47.if.end57_crit_edge
  %conv49 = zext i1 %cmp48 to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 %conv49
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ice1712_pro_volume_rate_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_volume_rate_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 59
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !531
  %conv = zext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_volume_rate_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 59
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !532
  %conv = zext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp ne i32 %7, %conv
  %conv3 = zext i1 %cmp to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !533
  tail call void @arm_heavy_mb() #14
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %conv6 = trunc i32 %9 to i8
  %10 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %profi_port, align 4
  %add8 = add i32 %11, 59
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %12 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv6) #14, !srcloc !422
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 %conv3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ice1712_pro_peak_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 22, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_pro_peak_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %idx.016 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !534
  tail call void @arm_heavy_mb() #14
  %conv = trunc i32 %idx.016 to i8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 62
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #14, !srcloc !422
  %5 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %profi_port, align 4
  %add3 = add i32 %6, 63
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %7 = inttoptr i32 %add5 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !535
  %conv8 = zext i8 %8 to i32
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.016
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv8, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %idx.016, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.end:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_ds_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %3, i32 0, i32 15, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %arrayidx, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw, ptr @snd_ice1712_playback_ds, i32 64)
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %dmapath_port = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %dmapath_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dmapath_port, align 4
  %and = and i32 %9, 1048575
  %add2 = or i32 %and, -18874368
  %10 = inttoptr i32 %add2 to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #14, !srcloc !441
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !536
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  %mul = shl i32 %14, 1
  %shl = shl nuw i32 1, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !537
  tail call void @arm_heavy_mb() #14
  %15 = trunc i32 %shl to i16
  %16 = xor i16 %15, -1
  %conv7 = and i16 %12, %16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %18 = ptrtoint ptr %dmapath_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dmapath_port, align 4
  %and10 = and i32 %19, 1048575
  %add11 = or i32 %and10, -18874368
  %20 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %17) #14, !srcloc !424
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_ds_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %dmapath_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dmapath_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmapath_port, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #14, !srcloc !441
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !538
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number, align 4
  %mul = shl i32 %8, 1
  %shl = shl i32 3, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !539
  tail call void @arm_heavy_mb() #14
  %9 = trunc i32 %shl to i16
  %conv4 = or i16 %6, %9
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %11 = ptrtoint ptr %dmapath_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dmapath_port, align 4
  %and7 = and i32 %12, 1048575
  %add8 = or i32 %and7, -18874368
  %13 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #14, !srcloc !424
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  %14 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 15, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_ds_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sub = add nsw i32 %div1.i.i, -1
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 4
  %call2 = tail call i32 @snd_pcm_format_width(i32 noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call2)
  %cmp = icmp eq i32 %call2, 16
  %spec.select = select i1 %cmp, i32 1610612736, i32 1677721600
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp3 = icmp eq i32 %11, 2
  %rate6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %rate6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate6, align 4
  %mul = shl i32 %13, 13
  %div = udiv i32 %mul, 375
  %14 = tail call i32 @llvm.umin.i32(i32 %div, i32 1048575)
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %15 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 22, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %18 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr, align 8
  %20 = load i32, ptr %number, align 4
  %arrayidx11 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 21, i32 %20
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %arrayidx11, align 4
  %22 = load i32, ptr %number, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %.tr = trunc i32 %22 to i8
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %shl.i = shl i8 %.tr, 5
  %dmapath_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dmapath_port.i, align 4
  %add.i = add i32 %26, 8
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %27 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %shl.i) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %29 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dmapath_port.i, align 4
  %add7.i = add i32 %30, 4
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %31 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 %28) #14, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %or.i = or i8 %shl.i, 1
  %32 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dmapath_port.i, align 4
  %add.i75 = add i32 %33, 8
  %and.i76 = and i32 %add.i75, 1048575
  %add3.i77 = or i32 %and.i76, -18874368
  %34 = inttoptr i32 %add3.i77 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %or.i) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %35 = tail call i32 @llvm.bswap.i32(i32 %sub) #14
  %36 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dmapath_port.i, align 4
  %add7.i78 = add i32 %37, 4
  %and8.i79 = and i32 %add7.i78, 1048575
  %add9.i80 = or i32 %and8.i79, -18874368
  %38 = inttoptr i32 %add9.i80 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %35) #14, !srcloc !471
  %39 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_addr, align 8
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 17
  %41 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp18 = icmp ugt i32 %42, 1
  %cond = select i1 %cmp18, i32 %div1.i.i, i32 0
  %add20 = add i32 %cond, %40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %or.i82 = or i8 %shl.i, 2
  %43 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dmapath_port.i, align 4
  %add.i84 = add i32 %44, 8
  %and.i85 = and i32 %add.i84, 1048575
  %add3.i86 = or i32 %and.i85, -18874368
  %45 = inttoptr i32 %add3.i86 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %or.i82) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %46 = tail call i32 @llvm.bswap.i32(i32 %add20) #14
  %47 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dmapath_port.i, align 4
  %add7.i87 = add i32 %48, 4
  %and8.i88 = and i32 %add7.i87, 1048575
  %add9.i89 = or i32 %and8.i88, -18874368
  %49 = inttoptr i32 %add9.i89 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 %46) #14, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %or.i91 = or i8 %shl.i, 3
  %50 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dmapath_port.i, align 4
  %add.i93 = add i32 %51, 8
  %and.i94 = and i32 %add.i93, 1048575
  %add3.i95 = or i32 %and.i94, -18874368
  %52 = inttoptr i32 %add3.i95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %or.i91) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %53 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dmapath_port.i, align 4
  %add7.i96 = add i32 %54, 4
  %and8.i97 = and i32 %add7.i96, 1048575
  %add9.i98 = or i32 %and8.i97, -18874368
  %55 = inttoptr i32 %add9.i98 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 %35) #14, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %or.i100 = or i8 %shl.i, 5
  %56 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dmapath_port.i, align 4
  %add.i102 = add i32 %57, 8
  %and.i103 = and i32 %add.i102, 1048575
  %add3.i104 = or i32 %and.i103, -18874368
  %58 = inttoptr i32 %add3.i104 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %or.i100) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %59 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %60 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dmapath_port.i, align 4
  %add7.i105 = add i32 %61, 4
  %and8.i106 = and i32 %add7.i105, 1048575
  %add9.i107 = or i32 %and8.i106, -18874368
  %62 = inttoptr i32 %add9.i107 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %62, i32 %59) #14, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %or.i109 = or i8 %shl.i, 6
  %63 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dmapath_port.i, align 4
  %add.i111 = add i32 %64, 8
  %and.i112 = and i32 %add.i111, 1048575
  %add3.i113 = or i32 %and.i112, -18874368
  %65 = inttoptr i32 %add3.i113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 %or.i109) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %66 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dmapath_port.i, align 4
  %add7.i114 = add i32 %67, 4
  %and8.i115 = and i32 %add7.i114, 1048575
  %add9.i116 = or i32 %and8.i115, -18874368
  %68 = inttoptr i32 %add9.i116 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %68, i32 0) #14, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %or.i118 = or i8 %shl.i, 4
  %69 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dmapath_port.i, align 4
  %add.i120 = add i32 %70, 8
  %and.i121 = and i32 %add.i120, 1048575
  %add3.i122 = or i32 %and.i121, -18874368
  %71 = inttoptr i32 %add3.i122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 %or.i118) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %72 = or i32 %spec.select, 134217728
  %73 = select i1 %cmp3, i32 %72, i32 %spec.select
  %74 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dmapath_port.i, align 4
  %add7.i123 = add i32 %75, 4
  %and8.i124 = and i32 %add7.i123, 1048575
  %add9.i125 = or i32 %and8.i124, -18874368
  %76 = inttoptr i32 %add9.i125 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %76, i32 %73) #14, !srcloc !471
  %77 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp26 = icmp eq i32 %78, 2
  br i1 %cmp26, label %if.then28, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %or.i127 = or i8 %shl.i, 21
  %79 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dmapath_port.i, align 4
  %add.i129 = add i32 %80, 8
  %and.i130 = and i32 %add.i129, 1048575
  %add3.i131 = or i32 %and.i130, -18874368
  %81 = inttoptr i32 %add3.i131 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 %or.i127) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %82 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dmapath_port.i, align 4
  %add7.i132 = add i32 %83, 4
  %and8.i133 = and i32 %add7.i132, 1048575
  %add9.i134 = or i32 %and8.i133, -18874368
  %84 = inttoptr i32 %add9.i134 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %84, i32 %59) #14, !srcloc !471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %or.i136 = or i8 %shl.i, 22
  %85 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dmapath_port.i, align 4
  %add.i138 = add i32 %86, 8
  %and.i139 = and i32 %add.i138, 1048575
  %add3.i140 = or i32 %and.i139, -18874368
  %87 = inttoptr i32 %add3.i140 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 %or.i136) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %88 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dmapath_port.i, align 4
  %add7.i141 = add i32 %89, 4
  %and8.i142 = and i32 %add7.i141, 1048575
  %add9.i143 = or i32 %and8.i142, -18874368
  %90 = inttoptr i32 %add9.i143 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %90, i32 0) #14, !srcloc !471
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %entry.if.end33_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_ds_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #14
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %.tr = trunc i32 %3 to i8
  %conv = shl i8 %.tr, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !542
  tail call void @arm_heavy_mb() #14
  %or.i = or i8 %conv, 4
  %dmapath_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dmapath_port.i, align 4
  %add.i = add i32 %5, 8
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %or.i) #14, !srcloc !422
  %7 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dmapath_port.i, align 4
  %add5.i = add i32 %8, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %9 = inttoptr i32 %add7.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #14, !srcloc !462
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %cmd, label %entry.if.end18_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then4
    i32 3, label %if.then8
    i32 4, label %if.then13
  ]

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %11, 1
  br label %if.end18

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and = and i32 %11, -2
  br label %if.end18

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %or9 = or i32 %11, 2
  br label %if.end18

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and14 = and i32 %11, -3
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then8, %if.then4, %if.then, %entry.if.end18_crit_edge
  %result.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then8 ], [ 0, %if.then13 ], [ -22, %entry.if.end18_crit_edge ]
  %tmp.0 = phi i32 [ %or, %if.then ], [ %and, %if.then4 ], [ %or9, %if.then8 ], [ %and14, %if.then13 ], [ %11, %entry.if.end18_crit_edge ]
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  %.tr35 = trunc i32 %14 to i8
  %conv21 = shl i8 %.tr35, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !540
  tail call void @arm_heavy_mb() #14
  %or.i37 = or i8 %conv21, 4
  %15 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dmapath_port.i, align 4
  %add.i39 = add i32 %16, 8
  %and.i40 = and i32 %add.i39, 1048575
  %add3.i41 = or i32 %and.i40, -18874368
  %17 = inttoptr i32 %add3.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %or.i37) #14, !srcloc !422
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !541
  tail call void @arm_heavy_mb() #14
  %18 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #14
  %19 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dmapath_port.i, align 4
  %add7.i42 = add i32 %20, 4
  %and8.i = and i32 %add7.i42, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %21 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %18) #14, !srcloc !471
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #14
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_playback_ds_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %.tr = trunc i32 %3 to i8
  %conv = shl i8 %.tr, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !542
  tail call void @arm_heavy_mb() #14
  %or.i = or i8 %conv, 4
  %dmapath_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dmapath_port.i, align 4
  %add.i = add i32 %5, 8
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %or.i) #14, !srcloc !422
  %7 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dmapath_port.i, align 4
  %add5.i = add i32 %8, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %9 = inttoptr i32 %add7.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #14, !srcloc !462
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 22, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not = icmp eq i32 %15, 0
  %. = select i1 %tobool2.not, i8 0, i8 2
  %.tr29 = trunc i32 %13 to i8
  %conv7 = shl i8 %.tr29, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !542
  tail call void @arm_heavy_mb() #14
  %or.i31 = or i8 %., %conv7
  %16 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dmapath_port.i, align 4
  %add.i33 = add i32 %17, 8
  %and.i34 = and i32 %add.i33, 1048575
  %add3.i35 = or i32 %and.i34, -18874368
  %18 = inttoptr i32 %add3.i35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %or.i31) #14, !srcloc !422
  %19 = ptrtoint ptr %dmapath_port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dmapath_port.i, align 4
  %add5.i36 = add i32 %20, 4
  %and6.i37 = and i32 %add5.i36, 1048575
  %add7.i38 = or i32 %and6.i37, -18874368
  %21 = inttoptr i32 %add7.i38 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %21) #14, !srcloc !462
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %24 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number, align 4
  %arrayidx10 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 21, i32 %25
  %26 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx10, align 4
  %sub = sub i32 %23, %27
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %28 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 21
  %30 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %31
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 18
  %32 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %33)
  %cmp = icmp eq i32 %div.i, %33
  %spec.store.select = select i1 %cmp, i32 0, i32 %div.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_sendbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_readbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %pm_suspend_enabled = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %pm_suspend_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %5 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  %ac97 = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %7) #14
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %profi_port.i, align 4
  %add.i = add i32 %9, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !467
  %12 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load2 = load i8, ptr %pm_suspend_enabled, align 4
  %13 = shl i8 %11, 2
  %bf.value = and i8 %13, 64
  %bf.clear = and i8 %bf.load2, -65
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, ptr %pm_suspend_enabled, align 4
  %14 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profi_port.i, align 4
  %add = add i32 %15, 50
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %16 = inttoptr i32 %add3 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #14, !srcloc !441
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !544
  %conv = zext i16 %18 to i32
  %pm_saved_spdif_ctrl = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 62
  %19 = ptrtoint ptr %pm_saved_spdif_ctrl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %pm_saved_spdif_ctrl, align 4
  %20 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %profi_port.i, align 4
  %add8 = add i32 %21, 48
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %22 = inttoptr i32 %add10 to ptr
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %22) #14, !srcloc !441
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !545
  %conv14 = zext i16 %24 to i32
  %pm_saved_route = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 64
  %25 = ptrtoint ptr %pm_saved_route to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv14, ptr %pm_saved_route, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  %pm_suspend = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 59
  %26 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pm_suspend, align 4
  %tobool16.not = icmp eq ptr %27, null
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %if.then17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call i32 %27(ptr noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %pm_suspend_enabled = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %pm_suspend_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_rate = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 35
  %5 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.else, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = load i32, ptr @PRO_RATE_DEFAULT, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end.if.end4_crit_edge
  %rate.0 = phi i32 [ %7, %if.else ], [ %6, %if.end.if.end4_crit_edge ]
  tail call fastcc void @snd_ice1712_chip_init(ptr noundef %3)
  %8 = ptrtoint ptr %cur_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rate.0, ptr %cur_rate, align 4
  %pm_resume = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 60
  %9 = ptrtoint ptr %pm_resume to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pm_resume, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.end4.if.end14_crit_edge, label %if.then11

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 %10(ptr noundef %3) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end4.if.end14_crit_edge
  %11 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load15 = load i8, ptr %pm_suspend_enabled, align 4
  %12 = and i8 %bf.load15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not = icmp eq i8 %12, 0
  br i1 %tobool18.not, label %if.else30, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !546
  tail call void @arm_heavy_mb() #14
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %profi_port, align 4
  %add = add i32 %14, 1
  %and = and i32 %add, 1048575
  %add20 = or i32 %and, -18874368
  %15 = inttoptr i32 %add20 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #14, !srcloc !427
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !547
  %17 = or i8 %16, 16
  %18 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %profi_port, align 4
  %add25 = add i32 %19, 1
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %20 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %17) #14, !srcloc !422
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #14
  br label %do.body32

if.else30:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @snd_ice1712_set_pro_rate(ptr noundef %3, i32 noundef %rate.0, i32 noundef 1)
  br label %do.body32

do.body32:                                        ; preds = %if.else30, %if.then19
  %.sink = phi i32 [ 1, %if.then19 ], [ 0, %if.else30 ]
  tail call fastcc void @snd_ice1712_set_input_clock_source(ptr noundef %3, i32 noundef %.sink)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !548
  tail call void @arm_heavy_mb() #14
  %pm_saved_spdif_ctrl = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 62
  %21 = ptrtoint ptr %pm_saved_spdif_ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pm_saved_spdif_ctrl, align 4
  %conv35 = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv35)
  %profi_port36 = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %profi_port36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %profi_port36, align 4
  %add37 = add i32 %25, 50
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %26 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #14, !srcloc !424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !549
  tail call void @arm_heavy_mb() #14
  %pm_saved_route = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 64
  %27 = ptrtoint ptr %pm_saved_route to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pm_saved_route, align 4
  %conv44 = trunc i32 %28 to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv44)
  %30 = ptrtoint ptr %profi_port36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %profi_port36, align 4
  %add46 = add i32 %31, 48
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %32 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 %29) #14, !srcloc !424
  %ac97 = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 25
  %33 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %34) #14
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %35 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !270, !271, !272, !274, !276, !278, !280, !282, !284, !286, !287, !288, !289, !291, !292, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407}
!llvm.module.flags = !{!409, !410, !411, !412, !413, !414, !415, !416}
!llvm.ident = !{!417}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/ice1712.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/ice1712.c", i32 61, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/ice1712.c", i32 62, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/ice1712/ice1712.c", i32 72, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/ice1712.c", i32 73, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/ice1712.c", i32 74, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/ice1712/ice1712.c", i32 75, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/ice1712/ice1712.c", i32 76, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/ice1712.c", i32 77, i32 1}
!22 = !{ptr @__param_omni, !23, !"__param_omni", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/ice1712.c", i32 78, i32 1}
!24 = !{ptr @__UNIQUE_ID_omnitype252, !23, !"__UNIQUE_ID_omnitype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_omni253, !26, !"__UNIQUE_ID_omni253", i1 false, i1 false}
!26 = !{!"../sound/pci/ice1712/ice1712.c", i32 79, i32 1}
!27 = !{ptr @__param_cs8427_timeout, !28, !"__param_cs8427_timeout", i1 false, i1 false}
!28 = !{!"../sound/pci/ice1712/ice1712.c", i32 80, i32 1}
!29 = !{ptr @__UNIQUE_ID_cs8427_timeouttype254, !28, !"__UNIQUE_ID_cs8427_timeouttype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_cs8427_timeout255, !31, !"__UNIQUE_ID_cs8427_timeout255", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/ice1712.c", i32 81, i32 1}
!32 = !{ptr @__param_model, !33, !"__param_model", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/ice1712.c", i32 82, i32 1}
!34 = !{ptr @__UNIQUE_ID_modeltype256, !33, !"__UNIQUE_ID_modeltype256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_model257, !36, !"__UNIQUE_ID_model257", i1 false, i1 false}
!36 = !{!"../sound/pci/ice1712/ice1712.c", i32 83, i32 1}
!37 = !{ptr @__param_dxr_enable, !38, !"__param_dxr_enable", i1 false, i1 false}
!38 = !{!"../sound/pci/ice1712/ice1712.c", i32 84, i32 1}
!39 = !{ptr @__UNIQUE_ID_dxr_enabletype258, !38, !"__UNIQUE_ID_dxr_enabletype258", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_dxr_enable259, !41, !"__UNIQUE_ID_dxr_enable259", i1 false, i1 false}
!41 = !{!"../sound/pci/ice1712/ice1712.c", i32 85, i32 1}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/ice1712/ice1712.c", i32 377, i32 3}
!44 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @snd_ice1712_init_cs8427._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @snd_ice1712_init_cs8427._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @__initcall__kmod_snd_ice1712__261_2746_ice1712_driver_init6, !51, !"__initcall__kmod_snd_ice1712__261_2746_ice1712_driver_init6", i1 false, i1 false}
!51 = !{!"../sound/pci/ice1712/ice1712.c", i32 2746, i32 1}
!52 = !{ptr @__exitcall_ice1712_driver_exit, !51, !"__exitcall_ice1712_driver_exit", i1 false, i1 false}
!53 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!54 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!55 = !{ptr @index, !56, !"index", i1 false, i1 false}
!56 = !{!"../sound/pci/ice1712/ice1712.c", i32 64, i32 12}
!57 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!58 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!59 = !{ptr @id, !60, !"id", i1 false, i1 false}
!60 = !{!"../sound/pci/ice1712/ice1712.c", i32 65, i32 14}
!61 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!62 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!63 = !{ptr @enable, !64, !"enable", i1 false, i1 false}
!64 = !{!"../sound/pci/ice1712/ice1712.c", i32 66, i32 13}
!65 = !{ptr @__param_str_omni, !23, !"__param_str_omni", i1 false, i1 false}
!66 = !{ptr @__param_arr_omni, !23, !"__param_arr_omni", i1 false, i1 false}
!67 = !{ptr @omni, !68, !"omni", i1 false, i1 false}
!68 = !{!"../sound/pci/ice1712/ice1712.c", i32 68, i32 13}
!69 = !{ptr @__param_str_cs8427_timeout, !28, !"__param_str_cs8427_timeout", i1 false, i1 false}
!70 = !{ptr @__param_arr_cs8427_timeout, !28, !"__param_arr_cs8427_timeout", i1 false, i1 false}
!71 = !{ptr @cs8427_timeout, !72, !"cs8427_timeout", i1 false, i1 false}
!72 = !{!"../sound/pci/ice1712/ice1712.c", i32 69, i32 12}
!73 = !{ptr @__param_str_model, !33, !"__param_str_model", i1 false, i1 false}
!74 = !{ptr @__param_arr_model, !33, !"__param_arr_model", i1 false, i1 false}
!75 = !{ptr @model, !76, !"model", i1 false, i1 false}
!76 = !{!"../sound/pci/ice1712/ice1712.c", i32 67, i32 14}
!77 = !{ptr @__param_str_dxr_enable, !38, !"__param_str_dxr_enable", i1 false, i1 false}
!78 = !{ptr @__param_arr_dxr_enable, !38, !"__param_arr_dxr_enable", i1 false, i1 false}
!79 = !{ptr @dxr_enable, !80, !"dxr_enable", i1 false, i1 false}
!80 = !{!"../sound/pci/ice1712/ice1712.c", i32 70, i32 12}
!81 = !{ptr @.str.5, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/ice1712/ice1712.c", i32 1621, i32 18}
!83 = !{ptr @snd_ice1712_spdif_default, !84, !"snd_ice1712_spdif_default", i1 false, i1 false}
!84 = !{!"../sound/pci/ice1712/ice1712.c", i32 1618, i32 38}
!85 = !{ptr @.str.6, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/ice1712/ice1712.c", i32 1673, i32 18}
!87 = !{ptr @snd_ice1712_spdif_maskc, !88, !"snd_ice1712_spdif_maskc", i1 false, i1 false}
!88 = !{!"../sound/pci/ice1712/ice1712.c", i32 1669, i32 38}
!89 = !{ptr @.str.7, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/ice1712/ice1712.c", i32 1682, i32 18}
!91 = !{ptr @snd_ice1712_spdif_maskp, !92, !"snd_ice1712_spdif_maskp", i1 false, i1 false}
!92 = !{!"../sound/pci/ice1712/ice1712.c", i32 1678, i32 38}
!93 = !{ptr @.str.8, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/ice1712/ice1712.c", i32 1710, i32 18}
!95 = !{ptr @snd_ice1712_spdif_stream, !96, !"snd_ice1712_spdif_stream", i1 false, i1 false}
!96 = !{!"../sound/pci/ice1712/ice1712.c", i32 1705, i32 38}
!97 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ice1712_driver, !99, !"ice1712_driver", i1 false, i1 false}
!99 = !{!"../sound/pci/ice1712/ice1712.c", i32 2737, i32 26}
!100 = !{ptr @snd_ice1712_ids, !101, !"snd_ice1712_ids", i1 false, i1 false}
!101 = !{!"../sound/pci/ice1712/ice1712.c", i32 88, i32 35}
!102 = !{ptr @snd_ice1712_probe.dev, !103, !"dev", i1 false, i1 false}
!103 = !{!"../sound/pci/ice1712/ice1712.c", i32 2539, i32 13}
!104 = !{ptr @.str.10, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ice1712/ice1712.c", i32 2558, i32 23}
!106 = !{ptr @.str.11, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/ice1712/ice1712.c", i32 2559, i32 26}
!108 = !{ptr @.str.12, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ice1712/ice1712.c", i32 2627, i32 6}
!110 = !{ptr @.str.13, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/ice1712/ice1712.c", i32 2650, i32 26}
!112 = !{ptr @.str.14, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ice1712/ice1712.c", i32 2465, i32 3}
!114 = !{ptr @.str.15, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @snd_ice1712_create._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @snd_ice1712_create._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @snd_ice1712_create.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../sound/pci/ice1712/ice1712.c", i32 2477, i32 2}
!119 = !{ptr @.str.16, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @snd_ice1712_create.__key.17, !121, !"__key", i1 false, i1 false}
!121 = !{!"../sound/pci/ice1712/ice1712.c", i32 2478, i32 2}
!122 = !{ptr @.str.18, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @snd_ice1712_create.__key.19, !124, !"__key", i1 false, i1 false}
!124 = !{!"../sound/pci/ice1712/ice1712.c", i32 2479, i32 2}
!125 = !{ptr @.str.20, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @snd_ice1712_create.__key.21, !127, !"__key", i1 false, i1 false}
!127 = !{!"../sound/pci/ice1712/ice1712.c", i32 2480, i32 2}
!128 = !{ptr @.str.22, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.24, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/ice1712/ice1712.c", i32 2511, i32 3}
!131 = !{ptr @snd_ice1712_create._entry.23, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @snd_ice1712_create._entry_ptr.25, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.26, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/ice1712/ice1712.c", i32 1558, i32 34}
!135 = !{ptr @.str.27, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/ice1712/ice1712.c", i32 1522, i32 2}
!137 = !{ptr @.str.28, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/ice1712/ice1712.c", i32 1523, i32 2}
!139 = !{ptr @.str.29, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/ice1712/ice1712.c", i32 1525, i32 2}
!141 = !{ptr @.str.30, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/ice1712/ice1712.c", i32 1526, i32 2}
!143 = !{ptr @.str.31, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/ice1712/ice1712.c", i32 1527, i32 2}
!145 = !{ptr @.str.32, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/pci/ice1712/ice1712.c", i32 1528, i32 2}
!147 = !{ptr @.str.33, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/ice1712/ice1712.c", i32 1529, i32 2}
!149 = !{ptr @.str.34, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/ice1712/ice1712.c", i32 1530, i32 2}
!151 = !{ptr @.str.35, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/ice1712/ice1712.c", i32 1531, i32 2}
!153 = !{ptr @.str.36, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/ice1712/ice1712.c", i32 1532, i32 2}
!155 = !{ptr @.str.37, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/ice1712/ice1712.c", i32 1533, i32 2}
!157 = !{ptr @.str.38, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/ice1712/ice1712.c", i32 1534, i32 2}
!159 = !{ptr @.str.39, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/ice1712/ice1712.c", i32 1535, i32 2}
!161 = !{ptr @.str.40, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/ice1712/ice1712.c", i32 1536, i32 2}
!163 = !{ptr @.str.41, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/ice1712/ice1712.c", i32 1537, i32 2}
!165 = !{ptr @.str.42, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/ice1712/ice1712.c", i32 1538, i32 2}
!167 = !{ptr @.str.43, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/ice1712/ice1712.c", i32 1540, i32 3}
!169 = !{ptr @.str.44, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/ice1712/ice1712.c", i32 1542, i32 3}
!171 = !{ptr @.str.45, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/ice1712/ice1712.c", i32 1544, i32 3}
!173 = !{ptr @.str.46, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/ice1712/ice1712.c", i32 1546, i32 2}
!175 = !{ptr @.str.47, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/ice1712/ice1712.c", i32 1547, i32 2}
!177 = !{ptr @.str.48, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/ice1712/ice1712.c", i32 1548, i32 2}
!179 = !{ptr @.str.49, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/ice1712/ice1712.c", i32 1549, i32 2}
!181 = !{ptr @.str.50, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/ice1712/ice1712.c", i32 1550, i32 2}
!183 = !{ptr @.str.51, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/ice1712/ice1712.c", i32 1551, i32 2}
!185 = !{ptr @.str.52, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/ice1712/ice1712.c", i32 1552, i32 2}
!187 = !{ptr @.str.53, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/ice1712/ice1712.c", i32 1553, i32 2}
!189 = !{ptr @.str.54, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/ice1712/ice1712.c", i32 2256, i32 5}
!191 = !{ptr @.str.55, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @snd_ice1712_read_eeprom._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @snd_ice1712_read_eeprom._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.57, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/ice1712/ice1712.c", i32 2265, i32 5}
!196 = !{ptr @.str.58, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @snd_ice1712_read_eeprom._entry.56, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @snd_ice1712_read_eeprom._entry_ptr.59, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.60, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/ice1712/ice1712.c", i32 2273, i32 4}
!201 = !{ptr @snd_ice1712_read_eeprom.__UNIQUE_ID_ddebug260, !200, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!202 = !{ptr @.str.62, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/ice1712/ice1712.c", i32 2280, i32 2}
!204 = !{ptr @.str.63, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @snd_ice1712_read_eeprom._entry.61, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @snd_ice1712_read_eeprom._entry_ptr.64, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.66, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/ice1712/ice1712.c", i32 2288, i32 3}
!209 = !{ptr @snd_ice1712_read_eeprom._entry.65, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @snd_ice1712_read_eeprom._entry_ptr.67, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.69, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/ice1712/ice1712.c", i32 2294, i32 3}
!213 = !{ptr @snd_ice1712_read_eeprom._entry.68, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @snd_ice1712_read_eeprom._entry_ptr.70, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.71, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/ice1712/ice1712.c", i32 979, i32 3}
!217 = !{ptr @PRO_RATE_LOCKED, !218, !"PRO_RATE_LOCKED", i1 false, i1 false}
!218 = !{!"../sound/pci/ice1712/ice1712.c", i32 98, i32 12}
!219 = distinct !{null, !220, !"card_tables", i1 false, i1 false}
!220 = !{!"../sound/pci/ice1712/ice1712.c", i32 2215, i32 44}
!221 = !{ptr @no_matched, !222, !"no_matched", i1 false, i1 false}
!222 = !{!"../sound/pci/ice1712/ice1712.c", i32 2534, i32 37}
!223 = !{ptr @.str.72, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/ice1712/ice1712.c", i32 1210, i32 31}
!225 = !{ptr @snd_ice1712_playback_pro_ops, !226, !"snd_ice1712_playback_pro_ops", i1 false, i1 false}
!226 = !{!"../sound/pci/ice1712/ice1712.c", i32 1187, i32 33}
!227 = !{ptr @snd_ice1712_playback_pro, !228, !"snd_ice1712_playback_pro", i1 false, i1 false}
!228 = !{!"../sound/pci/ice1712/ice1712.c", i32 1087, i32 38}
!229 = !{ptr @hw_constraints_rates, !230, !"hw_constraints_rates", i1 false, i1 false}
!230 = !{!"../sound/pci/ice1712/ice1712.c", i32 894, i32 48}
!231 = !{ptr @rates, !232, !"rates", i1 false, i1 false}
!232 = !{!"../sound/pci/ice1712/ice1712.c", i32 891, i32 27}
!233 = !{ptr @PRO_RATE_DEFAULT, !234, !"PRO_RATE_DEFAULT", i1 false, i1 false}
!234 = !{!"../sound/pci/ice1712/ice1712.c", i32 100, i32 21}
!235 = !{ptr @PRO_RATE_RESET, !236, !"PRO_RATE_RESET", i1 false, i1 false}
!236 = !{!"../sound/pci/ice1712/ice1712.c", i32 99, i32 12}
!237 = !{ptr @snd_ice1712_capture_pro_ops, !238, !"snd_ice1712_capture_pro_ops", i1 false, i1 false}
!238 = !{!"../sound/pci/ice1712/ice1712.c", i32 1196, i32 33}
!239 = !{ptr @snd_ice1712_capture_pro, !240, !"snd_ice1712_capture_pro", i1 false, i1 false}
!240 = !{!"../sound/pci/ice1712/ice1712.c", i32 1106, i32 38}
!241 = !{ptr @.str.73, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/ice1712/ice1712.c", i32 1335, i32 11}
!243 = !{ptr @.str.74, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/ice1712/ice1712.c", i32 1346, i32 11}
!245 = !{ptr @snd_ice1712_multi_playback_ctrls, !246, !"snd_ice1712_multi_playback_ctrls", i1 false, i1 false}
!246 = !{!"../sound/pci/ice1712/ice1712.c", i32 1332, i32 38}
!247 = !{ptr @db_scale_playback, !248, !"db_scale_playback", i1 false, i1 false}
!248 = !{!"../sound/pci/ice1712/ice1712.c", i32 1330, i32 14}
!249 = !{ptr @.str.75, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/ice1712/ice1712.c", i32 1358, i32 10}
!251 = !{ptr @snd_ice1712_multi_capture_analog_switch, !252, !"snd_ice1712_multi_capture_analog_switch", i1 false, i1 false}
!252 = !{!"../sound/pci/ice1712/ice1712.c", i32 1356, i32 38}
!253 = !{ptr @.str.76, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/ice1712/ice1712.c", i32 1367, i32 10}
!255 = !{ptr @snd_ice1712_multi_capture_spdif_switch, !256, !"snd_ice1712_multi_capture_spdif_switch", i1 false, i1 false}
!256 = !{!"../sound/pci/ice1712/ice1712.c", i32 1365, i32 38}
!257 = !{ptr @.str.77, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/pci/ice1712/ice1712.c", i32 1379, i32 10}
!259 = !{ptr @snd_ice1712_multi_capture_analog_volume, !260, !"snd_ice1712_multi_capture_analog_volume", i1 false, i1 false}
!260 = !{!"../sound/pci/ice1712/ice1712.c", i32 1375, i32 38}
!261 = !{ptr @.str.78, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/ice1712/ice1712.c", i32 1389, i32 10}
!263 = !{ptr @snd_ice1712_multi_capture_spdif_volume, !264, !"snd_ice1712_multi_capture_spdif_volume", i1 false, i1 false}
!264 = !{!"../sound/pci/ice1712/ice1712.c", i32 1387, i32 38}
!265 = !{ptr @.str.79, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/pci/ice1712/ice1712.c", i32 844, i32 31}
!267 = !{ptr @.str.80, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/pci/ice1712/ice1712.c", i32 859, i32 2}
!269 = !{ptr @.str.81, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @snd_ice1712_pcm._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @snd_ice1712_pcm._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @snd_ice1712_playback_ops, !273, !"snd_ice1712_playback_ops", i1 false, i1 false}
!273 = !{!"../sound/pci/ice1712/ice1712.c", i32 815, i32 33}
!274 = !{ptr @snd_ice1712_playback, !275, !"snd_ice1712_playback", i1 false, i1 false}
!275 = !{!"../sound/pci/ice1712/ice1712.c", i32 692, i32 38}
!276 = !{ptr @snd_ice1712_capture_ops, !277, !"snd_ice1712_capture_ops", i1 false, i1 false}
!277 = !{!"../sound/pci/ice1712/ice1712.c", i32 831, i32 33}
!278 = !{ptr @snd_ice1712_capture, !279, !"snd_ice1712_capture", i1 false, i1 false}
!279 = !{!"../sound/pci/ice1712/ice1712.c", i32 730, i32 38}
!280 = !{ptr @snd_ice1712_ac97_mixer.con_ops, !281, !"con_ops", i1 false, i1 false}
!281 = !{!"../sound/pci/ice1712/ice1712.c", i32 1461, i32 39}
!282 = !{ptr @snd_ice1712_ac97_mixer.pro_ops, !283, !"pro_ops", i1 false, i1 false}
!283 = !{!"../sound/pci/ice1712/ice1712.c", i32 1465, i32 39}
!284 = !{ptr @.str.82, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/pci/ice1712/ice1712.c", i32 1479, i32 4}
!286 = !{ptr @.str.83, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @snd_ice1712_ac97_mixer._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @snd_ice1712_ac97_mixer._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.85, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/pci/ice1712/ice1712.c", i32 1497, i32 4}
!291 = !{ptr @snd_ice1712_ac97_mixer._entry.84, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @snd_ice1712_ac97_mixer._entry_ptr.86, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.87, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/pci/ice1712/ice1712.c", i32 1503, i32 31}
!295 = !{ptr @.str.88, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/pci/ice1712/ice1712.c", i32 264, i32 10}
!297 = !{ptr @snd_ice1712_mixer_digmix_route_ac97, !298, !"snd_ice1712_mixer_digmix_route_ac97", i1 false, i1 false}
!298 = !{!"../sound/pci/ice1712/ice1712.c", i32 262, i32 38}
!299 = !{ptr @.str.89, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/pci/ice1712/ice1712.c", i32 1584, i32 10}
!301 = !{ptr @snd_ice1712_eeprom, !302, !"snd_ice1712_eeprom", i1 false, i1 false}
!302 = !{!"../sound/pci/ice1712/ice1712.c", i32 1582, i32 38}
!303 = !{ptr @.str.90, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/pci/ice1712/ice1712.c", i32 1832, i32 10}
!305 = !{ptr @snd_ice1712_pro_internal_clock, !306, !"snd_ice1712_pro_internal_clock", i1 false, i1 false}
!306 = !{!"../sound/pci/ice1712/ice1712.c", i32 1830, i32 38}
!307 = !{ptr @.str.91, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/pci/ice1712/ice1712.c", i32 1757, i32 3}
!309 = !{ptr @.str.92, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/pci/ice1712/ice1712.c", i32 1758, i32 3}
!311 = !{ptr @.str.93, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/pci/ice1712/ice1712.c", i32 1759, i32 3}
!313 = !{ptr @.str.94, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/pci/ice1712/ice1712.c", i32 1760, i32 3}
!315 = !{ptr @.str.95, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/pci/ice1712/ice1712.c", i32 1761, i32 3}
!317 = !{ptr @.str.96, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/pci/ice1712/ice1712.c", i32 1762, i32 3}
!319 = !{ptr @.str.97, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/pci/ice1712/ice1712.c", i32 1763, i32 3}
!321 = !{ptr @.str.98, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/pci/ice1712/ice1712.c", i32 1764, i32 3}
!323 = !{ptr @.str.99, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/pci/ice1712/ice1712.c", i32 1765, i32 3}
!325 = !{ptr @.str.100, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/pci/ice1712/ice1712.c", i32 1766, i32 3}
!327 = !{ptr @.str.101, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/pci/ice1712/ice1712.c", i32 1767, i32 3}
!329 = !{ptr @.str.102, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/pci/ice1712/ice1712.c", i32 1768, i32 3}
!331 = !{ptr @.str.103, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/pci/ice1712/ice1712.c", i32 1769, i32 3}
!333 = !{ptr @.str.104, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/pci/ice1712/ice1712.c", i32 1770, i32 3}
!335 = !{ptr @snd_ice1712_pro_internal_clock_info.texts, !336, !"texts", i1 false, i1 false}
!336 = !{!"../sound/pci/ice1712/ice1712.c", i32 1756, i32 28}
!337 = !{ptr @snd_ice1712_pro_internal_clock_get.xlate, !338, !"xlate", i1 false, i1 false}
!338 = !{!"../sound/pci/ice1712/ice1712.c", i32 1779, i32 29}
!339 = !{ptr @snd_ice1712_pro_internal_clock_put.xrate, !340, !"xrate", i1 false, i1 false}
!340 = !{!"../sound/pci/ice1712/ice1712.c", i32 1803, i32 28}
!341 = !{ptr @.str.105, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/pci/ice1712/ice1712.c", i32 1897, i32 10}
!343 = !{ptr @snd_ice1712_pro_internal_clock_default, !344, !"snd_ice1712_pro_internal_clock_default", i1 false, i1 false}
!344 = !{!"../sound/pci/ice1712/ice1712.c", i32 1895, i32 38}
!345 = !{ptr @snd_ice1712_pro_internal_clock_default_info.texts, !346, !"texts", i1 false, i1 false}
!346 = !{!"../sound/pci/ice1712/ice1712.c", i32 1841, i32 28}
!347 = distinct !{null, !348, !"xrate", i1 false, i1 false}
!348 = !{!"../sound/pci/ice1712/ice1712.c", i32 1864, i32 28}
!349 = !{ptr @snd_ice1712_pro_internal_clock_default_put.xrate, !350, !"xrate", i1 false, i1 false}
!350 = !{!"../sound/pci/ice1712/ice1712.c", i32 1881, i32 28}
!351 = !{ptr @.str.106, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/pci/ice1712/ice1712.c", i32 1928, i32 10}
!353 = !{ptr @snd_ice1712_pro_rate_locking, !354, !"snd_ice1712_pro_rate_locking", i1 false, i1 false}
!354 = !{!"../sound/pci/ice1712/ice1712.c", i32 1926, i32 38}
!355 = !{ptr @.str.107, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/pci/ice1712/ice1712.c", i32 1959, i32 10}
!357 = !{ptr @snd_ice1712_pro_rate_reset, !358, !"snd_ice1712_pro_rate_reset", i1 false, i1 false}
!358 = !{!"../sound/pci/ice1712/ice1712.c", i32 1957, i32 38}
!359 = !{ptr @.str.108, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/pci/ice1712/ice1712.c", i32 2119, i32 10}
!361 = !{ptr @snd_ice1712_mixer_pro_analog_route, !362, !"snd_ice1712_mixer_pro_analog_route", i1 false, i1 false}
!362 = !{!"../sound/pci/ice1712/ice1712.c", i32 2117, i32 38}
!363 = !{ptr @.str.109, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/pci/ice1712/ice1712.c", i32 1972, i32 3}
!365 = !{ptr @.str.110, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/pci/ice1712/ice1712.c", i32 1973, i32 3}
!367 = !{ptr @.str.111, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/pci/ice1712/ice1712.c", i32 1973, i32 15}
!369 = !{ptr @.str.112, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/pci/ice1712/ice1712.c", i32 1973, i32 27}
!371 = !{ptr @.str.113, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/pci/ice1712/ice1712.c", i32 1973, i32 39}
!373 = !{ptr @.str.114, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/pci/ice1712/ice1712.c", i32 1974, i32 3}
!375 = !{ptr @.str.115, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/pci/ice1712/ice1712.c", i32 1974, i32 15}
!377 = !{ptr @.str.116, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/pci/ice1712/ice1712.c", i32 1974, i32 27}
!379 = !{ptr @.str.117, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/pci/ice1712/ice1712.c", i32 1974, i32 39}
!381 = !{ptr @.str.118, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/pci/ice1712/ice1712.c", i32 1975, i32 3}
!383 = !{ptr @.str.119, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/pci/ice1712/ice1712.c", i32 1975, i32 18}
!385 = !{ptr @.str.120, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/pci/ice1712/ice1712.c", i32 1976, i32 3}
!387 = !{ptr @snd_ice1712_pro_route_info.texts, !388, !"texts", i1 false, i1 false}
!388 = !{!"../sound/pci/ice1712/ice1712.c", i32 1971, i32 28}
!389 = !{ptr @.str.121, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/pci/ice1712/ice1712.c", i32 2127, i32 10}
!391 = !{ptr @snd_ice1712_mixer_pro_spdif_route, !392, !"snd_ice1712_mixer_pro_spdif_route", i1 false, i1 false}
!392 = !{!"../sound/pci/ice1712/ice1712.c", i32 2125, i32 38}
!393 = !{ptr @.str.122, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/pci/ice1712/ice1712.c", i32 2169, i32 10}
!395 = !{ptr @snd_ice1712_mixer_pro_volume_rate, !396, !"snd_ice1712_mixer_pro_volume_rate", i1 false, i1 false}
!396 = !{!"../sound/pci/ice1712/ice1712.c", i32 2167, i32 38}
!397 = !{ptr @.str.123, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/pci/ice1712/ice1712.c", i32 2202, i32 10}
!399 = !{ptr @snd_ice1712_mixer_pro_peak, !400, !"snd_ice1712_mixer_pro_peak", i1 false, i1 false}
!400 = !{!"../sound/pci/ice1712/ice1712.c", i32 2200, i32 38}
!401 = !{ptr @.str.124, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/pci/ice1712/ice1712.c", i32 870, i32 31}
!403 = !{ptr @snd_ice1712_playback_ds_ops, !404, !"snd_ice1712_playback_ds_ops", i1 false, i1 false}
!404 = !{!"../sound/pci/ice1712/ice1712.c", i32 823, i32 33}
!405 = !{ptr @snd_ice1712_playback_ds, !406, !"snd_ice1712_playback_ds", i1 false, i1 false}
!406 = !{!"../sound/pci/ice1712/ice1712.c", i32 711, i32 38}
!407 = !{ptr @snd_ice1712_pm, !408, !"snd_ice1712_pm", i1 false, i1 false}
!408 = !{!"../sound/pci/ice1712/ice1712.c", i32 2731, i32 8}
!409 = !{i32 1, !"wchar_size", i32 2}
!410 = !{i32 1, !"min_enum_size", i32 4}
!411 = !{i32 8, !"branch-target-enforcement", i32 0}
!412 = !{i32 8, !"sign-return-address", i32 0}
!413 = !{i32 8, !"sign-return-address-all", i32 0}
!414 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!415 = !{i32 7, !"uwtable", i32 1}
!416 = !{i32 7, !"frame-pointer", i32 2}
!417 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!418 = !{!"branch_weights", i32 1, i32 2000}
!419 = !{!"auto-init"}
!420 = !{i8 0, i8 2}
!421 = !{i64 2154964821}
!422 = !{i64 4285152}
!423 = !{i64 2154965312}
!424 = !{i64 4284729}
!425 = !{i64 2154855410}
!426 = !{i64 2154855830}
!427 = !{i64 4285547}
!428 = !{i64 2154922700}
!429 = !{i64 2154856421}
!430 = !{i64 2154856923}
!431 = !{i64 2154922315}
!432 = !{i64 2154923080}
!433 = !{i64 2154925133}
!434 = !{i64 2154925437}
!435 = !{i64 2154925878}
!436 = !{i64 2154926314}
!437 = !{i64 2154926840}
!438 = !{i64 2154927146}
!439 = !{i64 2154927590}
!440 = !{i64 2154928032}
!441 = !{i64 4284929}
!442 = !{i64 2154928978}
!443 = !{i64 2154929344}
!444 = !{i64 2154929900}
!445 = !{i64 2154930336}
!446 = !{i64 2154930772}
!447 = !{i64 2155010145}
!448 = !{i64 2155010577}
!449 = !{i64 2154993515}
!450 = !{i64 2154991790}
!451 = !{i64 2154992239}
!452 = !{i64 2154992749}
!453 = !{i64 2154993132}
!454 = !{i64 2148836240, i64 2148836245, i64 2148836258, i64 2148836302, i64 2148836336, i64 2148836357}
!455 = !{i64 2155004569}
!456 = !{i64 2155005548}
!457 = !{i64 2155006609}
!458 = !{i64 2155007582}
!459 = !{i64 2155008725}
!460 = !{i64 2155009153}
!461 = !{i64 2154974939}
!462 = !{i64 4285767}
!463 = !{i64 2154975878}
!464 = !{i64 2154976824}
!465 = !{i64 2154977339}
!466 = !{i64 2154950702}
!467 = !{i64 2154908232}
!468 = !{i64 2154951103}
!469 = !{i64 2154951400}
!470 = !{i64 2154951952}
!471 = !{i64 4285349}
!472 = !{i64 2154952616}
!473 = !{i64 2154953305}
!474 = !{i64 2154943752}
!475 = !{i64 2154944111}
!476 = !{i64 2154948844}
!477 = !{i64 2154949203}
!478 = !{i64 2154960693}
!479 = !{i64 2154961509}
!480 = !{i64 2154954074}
!481 = !{i64 2154954735}
!482 = !{i64 2154959481}
!483 = !{i64 2154962364}
!484 = !{i64 2154963178}
!485 = !{i64 716580, i64 716597}
!486 = !{i64 2154931372}
!487 = !{i64 2154931740}
!488 = !{i64 2154932139}
!489 = !{i64 2154932649}
!490 = !{i64 2154935061}
!491 = !{i64 2154933422}
!492 = !{i64 2154934079}
!493 = !{i64 2154935936}
!494 = !{i64 2154911422}
!495 = !{i64 2154911736}
!496 = !{i64 2154912201}
!497 = !{i64 2154912749}
!498 = !{i64 2154913259}
!499 = !{i64 2154913642}
!500 = !{i64 2154913956}
!501 = !{i64 2154914399}
!502 = !{i64 2154914909}
!503 = !{i64 2154915689}
!504 = !{i64 2154916083}
!505 = !{i64 2154916407}
!506 = !{i64 2154916888}
!507 = !{i64 2154917452}
!508 = !{i64 2154917984}
!509 = !{i64 2154918383}
!510 = !{i64 2154918707}
!511 = !{i64 2154919166}
!512 = !{i64 2154919698}
!513 = !{i64 2154920506}
!514 = !{i64 2154920954}
!515 = !{i64 2154921407}
!516 = !{i64 2154921741}
!517 = !{i64 2154979661}
!518 = !{i64 2154980577}
!519 = !{i64 2154980887}
!520 = !{i64 2154981411}
!521 = !{i64 2154981802}
!522 = !{i64 2154982920}
!523 = !{i64 2154983731}
!524 = !{i64 2154984580}
!525 = !{i64 2154984933}
!526 = !{i64 2154985977}
!527 = !{i64 2154986328}
!528 = !{i64 2154987406}
!529 = !{i64 2154988251}
!530 = !{i64 2154988600}
!531 = !{i64 2154989529}
!532 = !{i64 2154989967}
!533 = !{i64 2154990309}
!534 = !{i64 2154990875}
!535 = !{i64 2154991423}
!536 = !{i64 2154938490}
!537 = !{i64 2154938833}
!538 = !{i64 2154940012}
!539 = !{i64 2154940355}
!540 = !{i64 2154908896}
!541 = !{i64 2154909374}
!542 = !{i64 2154910101}
!543 = !{i64 2154911044}
!544 = !{i64 2155016336}
!545 = !{i64 2155017149}
!546 = !{i64 2155018063}
!547 = !{i64 2155017795}
!548 = !{i64 2155018571}
!549 = !{i64 2155019215}
