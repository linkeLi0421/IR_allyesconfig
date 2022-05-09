; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/ice1724.c_pt.bc'
source_filename = "../sound/pci/ice1712/ice1724.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vt1724_pcm_reg = type { i32, i32, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.89, i32 }
%union.anon.89 = type { ptr }
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
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
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
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.85, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.85 = type { i32, [28 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [52 x i8] c"snd_ice1724.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [66 x i8] c"snd_ice1724.description=VIA ICEnsemble ICE1724/1720 (Envy24HT/PT)\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [47 x i8] c"snd_ice1724.file=sound/pci/ice1712/snd-ice1724\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [24 x i8] c"snd_ice1724.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_ice1724.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [40 x i8] c"snd_ice1724.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [58 x i8] c"snd_ice1724.parm=index:Index value for ICE1724 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_ice1724.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [39 x i8] c"snd_ice1724.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [53 x i8] c"snd_ice1724.parm=id:ID string for ICE1724 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_ice1724.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [42 x i8] c"snd_ice1724.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [50 x i8] c"snd_ice1724.parm=enable:Enable ICE1724 soundcard.\00", section ".modinfo", align 1
@__param_str_model = internal constant [18 x i8] c"snd_ice1724.model\00", align 1
@__param_arr_model = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @model }, align 4
@__param_model = internal constant %struct.kernel_param { ptr @__param_str_model, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_model } }, section "__param", align 4
@__UNIQUE_ID_modeltype252 = internal constant [42 x i8] c"snd_ice1724.parmtype=model:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_model253 = internal constant [50 x i8] c"snd_ice1724.parm=model:Use the given board model.\00", section ".modinfo", align 1
@snd_ice1724_get_route_val.xlate = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\FF\01\02\FF\FF\03\04", [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/ice1712/ice1724.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@snd_ice1724_put_route_val.xroute = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\03\06\07\00\00\00", [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_ice1724__261_2747_vt1724_driver_init6 = internal global ptr @vt1724_driver_init, section ".initcall6.init", align 4
@vt1724_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @snd_vt1724_ids, ptr @snd_vt1724_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_vt1724_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_vt1724_driver_exit = internal global ptr @vt1724_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@model = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@wait_i2c_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 2215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c busy timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wait_i2c_busy\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wait_i2c_busy._entry_ptr = internal global ptr @wait_i2c_busy._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_ice1724\00", [20 x i8] zeroinitializer }, align 32
@snd_vt1724_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5138, i32 5924, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_vt1724_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_vt1724_suspend, ptr @snd_vt1724_resume, ptr @snd_vt1724_suspend, ptr @snd_vt1724_resume, ptr @snd_vt1724_suspend, ptr @snd_vt1724_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_vt1724_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ICE1724\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ICEnsemble ICE1724\00", [45 x i8] zeroinitializer }, align 32
@ext_clock_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIDI\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ICE1724 MIDI\00", [19 x i8] zeroinitializer }, align 32
@vt1724_midi_output_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @vt1724_midi_output_open, ptr @vt1724_midi_output_close, ptr @vt1724_midi_output_trigger, ptr @vt1724_midi_output_drain }, [16 x i8] zeroinitializer }, align 32
@vt1724_midi_input_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @vt1724_midi_input_open, ptr @vt1724_midi_input_close, ptr @vt1724_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %i\00", [44 x i8] zeroinitializer }, align 32
@snd_vt1724_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ice->reg_lock\00", [17 x i8] zeroinitializer }, align 32
@snd_vt1724_create.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ice->gpio_mutex\00", [47 x i8] zeroinitializer }, align 32
@snd_vt1724_create.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ice->open_mutex\00", [47 x i8] zeroinitializer }, align 32
@snd_vt1724_create.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ice->i2c_mutex\00", [16 x i8] zeroinitializer }, align 32
@snd_vt1724_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 2498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_vt1724_create\00", [46 x i8] zeroinitializer }, align 32
@snd_vt1724_create._entry_ptr = internal global ptr @snd_vt1724_create._entry, section ".printk_index", align 4
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ice1724\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s\0A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EEPROM:\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  Subvendor        : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  Size             : %i bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  Version          : %i\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  System Config    : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  ACLink           : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  I2S              : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  S/PDIF           : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  GPIO direction   : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  GPIO mask        : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  GPIO state       : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  Extra #%02i        : 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0ARegisters:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  PSDOUT03 : 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  CCS%02x    : 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  MT%02x     : 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_vt1724_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Too long irq loop, status = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_vt1724_interrupt\00", [43 x i8] zeroinitializer }, align 32
@snd_vt1724_interrupt._entry_ptr = internal global ptr @snd_vt1724_interrupt._entry, section ".printk_index", align 4
@snd_vt1724_interrupt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disabling MPU_TX\0A\00", [46 x i8] zeroinitializer }, align 32
@snd_vt1724_interrupt._entry_ptr.43 = internal global ptr @snd_vt1724_interrupt._entry.41, section ".printk_index", align 4
@snd_vt1724_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 2280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No valid ID is found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_vt1724_read_eeprom\00", [41 x i8] zeroinitializer }, align 32
@snd_vt1724_read_eeprom._entry_ptr = internal global ptr @snd_vt1724_read_eeprom._entry, section ".printk_index", align 4
@card_tables = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @snd_vt1724_revo_cards, ptr @snd_vt1724_amp_cards, ptr @snd_vt1724_aureon_cards, ptr @snd_vt1720_mobo_cards, ptr @snd_vt1720_pontis_cards, ptr @snd_vt1724_prodigy_hifi_cards, ptr @snd_vt1724_prodigy192_cards, ptr @snd_vt1724_juli_cards, ptr @snd_vt1724_maya44_cards, ptr @snd_vt1724_phase_cards, ptr @snd_vt1724_wtm_cards, ptr @snd_vt1724_se_cards, ptr @snd_vt1724_qtet_cards, ptr @snd_vt1724_ooaoo_cards, ptr @snd_vt1724_psc724_cards, ptr null], [32 x i8] zeroinitializer }, align 32
@snd_vt1724_read_eeprom._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str, i32 2291, ptr @.str.48, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using board model %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_vt1724_read_eeprom._entry_ptr.49 = internal global ptr @snd_vt1724_read_eeprom._entry.46, section ".printk_index", align 4
@snd_vt1724_read_eeprom.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.45, ptr @.str, ptr @.str.50, i8 2, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"using the defined eeprom..\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_vt1724_read_eeprom._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str, i32 2307, ptr @.str.53, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No matching model found for ID 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_vt1724_read_eeprom._entry_ptr.54 = internal global ptr @snd_vt1724_read_eeprom._entry.51, section ".printk_index", align 4
@snd_vt1724_read_eeprom._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str, i32 2319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid EEPROM (size = %i)\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_vt1724_read_eeprom._entry_ptr.57 = internal global ptr @snd_vt1724_read_eeprom._entry.55, section ".printk_index", align 4
@snd_vt1724_read_eeprom._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str, i32 2325, ptr @.str.53, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid EEPROM version %i\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_vt1724_read_eeprom._entry_ptr.60 = internal global ptr @snd_vt1724_read_eeprom._entry.58, section ".printk_index", align 4
@snd_vt1724_revo_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_amp_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_aureon_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1720_mobo_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1720_pontis_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_prodigy_hifi_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_prodigy192_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_juli_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_maya44_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_phase_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_wtm_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_se_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_qtet_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@snd_vt1724_ooaoo_cards = internal constant { [2 x %struct.snd_ice1712_card_info], [48 x i8] } { [2 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 0, ptr @.str.61, ptr @.str.62, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, ptr null, ptr null, i32 13, ptr @ooaoo_sq210_eeprom }, %struct.snd_ice1712_card_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@snd_vt1724_psc724_cards = external dso_local global [0 x %struct.snd_ice1712_card_info], align 4
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ooAoo SQ210a\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sq210a\00", [25 x i8] zeroinitializer }, align 32
@ooaoo_sq210_eeprom = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"L\80x\C1\00\00\00\FF\FF\FF\00\00\00", [19 x i8] zeroinitializer }, align 32
@stdclock_rate_list = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 48000, i32 24000, i32 12000, i32 9600, i32 32000, i32 16000, i32 8000, i32 96000, i32 44100, i32 22050, i32 11025, i32 88200, i32 176400, i32 0, i32 192000, i32 64000], [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IEC958 In\00", [22 x i8] zeroinitializer }, align 32
@hw_constraints_rates_192 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates, i32 15, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hw_constraints_rates_96 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates, i32 13, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hw_constraints_rates_48 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates, i32 10, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rates = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 8000, i32 9600, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@snd_vt1724_playback_pro_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_vt1724_playback_pro_open, ptr @snd_vt1724_playback_pro_close, ptr null, ptr @snd_vt1724_pcm_hw_params, ptr @snd_vt1724_pcm_hw_free, ptr @snd_vt1724_playback_pro_prepare, ptr @snd_vt1724_pcm_trigger, ptr null, ptr @snd_vt1724_playback_pro_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_vt1724_capture_pro_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_vt1724_capture_pro_open, ptr @snd_vt1724_capture_pro_close, ptr null, ptr @snd_vt1724_pcm_hw_params, ptr @snd_vt1724_pcm_hw_free, ptr @snd_vt1724_pcm_prepare, ptr @snd_vt1724_pcm_trigger, ptr null, ptr @snd_vt1724_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vt1724_pdma0_reg = internal constant { %struct.vt1724_pcm_reg, [16 x i8] } { %struct.vt1724_pcm_reg { i32 16, i32 20, i32 28, i32 1 }, [16 x i8] zeroinitializer }, align 32
@snd_vt1724_playback_pro = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 1024, i32 -2147475458, i32 8000, i32 192000, i32 2, i32 8, i32 2097152, i32 64, i32 2097152, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@PRO_RATE_LOCKED = internal global { i32, [28 x i8] } zeroinitializer, align 32
@PRO_RATE_RESET = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@snd_vt1724_playback_pro_pointer.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.64, ptr @.str, ptr @.str.65, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_vt1724_playback_pro_pointer\00", [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid ptr %d (size=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@vt1724_rdma0_reg = internal constant { %struct.vt1724_pcm_reg, [16 x i8] } { %struct.vt1724_pcm_reg { i32 32, i32 36, i32 38, i32 2 }, [16 x i8] zeroinitializer }, align 32
@snd_vt1724_2ch_stereo = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 1024, i32 -2147475458, i32 8000, i32 192000, i32 2, i32 2, i32 262144, i32 16, i32 262144, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_vt1724_pcm_pointer.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.66, ptr @.str, ptr @.str.65, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_vt1724_pcm_pointer\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ICE1724 Secondary\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ICE1724 IEC958\00", [17 x i8] zeroinitializer }, align 32
@snd_vt1724_playback_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_vt1724_playback_spdif_open, ptr @snd_vt1724_playback_spdif_close, ptr null, ptr @snd_vt1724_pcm_hw_params, ptr @snd_vt1724_pcm_hw_free, ptr @snd_vt1724_playback_spdif_prepare, ptr @snd_vt1724_pcm_trigger, ptr null, ptr @snd_vt1724_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_vt1724_capture_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_vt1724_capture_spdif_open, ptr @snd_vt1724_capture_spdif_close, ptr null, ptr @snd_vt1724_pcm_hw_params, ptr @snd_vt1724_pcm_hw_free, ptr @snd_vt1724_pcm_prepare, ptr @snd_vt1724_pcm_trigger, ptr null, ptr @snd_vt1724_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vt1724_pdma4_reg = internal constant { %struct.vt1724_pcm_reg, [16 x i8] } { %struct.vt1724_pcm_reg { i32 64, i32 68, i32 70, i32 128 }, [16 x i8] zeroinitializer }, align 32
@snd_vt1724_spdif = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 1024, i32 7904, i32 32000, i32 192000, i32 2, i32 2, i32 262144, i32 16, i32 262144, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@vt1724_rdma1_reg = internal constant { %struct.vt1724_pcm_reg, [16 x i8] } { %struct.vt1724_pcm_reg { i32 48, i32 52, i32 54, i32 4 }, [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ICE1724 Surrounds\00", [46 x i8] zeroinitializer }, align 32
@snd_vt1724_playback_indep_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_vt1724_playback_indep_open, ptr @snd_vt1724_playback_indep_close, ptr null, ptr @snd_vt1724_pcm_hw_params, ptr @snd_vt1724_pcm_hw_free, ptr @snd_vt1724_playback_indep_prepare, ptr @snd_vt1724_pcm_trigger, ptr null, ptr @snd_vt1724_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ICE1724 Surround PCM\00", [43 x i8] zeroinitializer }, align 32
@vt1724_playback_dma_regs = internal constant { [3 x %struct.vt1724_pcm_reg], [48 x i8] } { [3 x %struct.vt1724_pcm_reg] [%struct.vt1724_pcm_reg { i32 112, i32 116, i32 118, i32 16 }, %struct.vt1724_pcm_reg { i32 96, i32 100, i32 102, i32 32 }, %struct.vt1724_pcm_reg { i32 80, i32 84, i32 86, i32 64 }], [48 x i8] zeroinitializer }, align 32
@snd_vt1724_ac97_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_vt1724_ac97_write, ptr @snd_vt1724_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_vt1724_ac97_mixer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str, i32 1468, ptr @.str.53, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot initialize pro ac97, skipped\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_vt1724_ac97_mixer\00", [42 x i8] zeroinitializer }, align 32
@snd_vt1724_ac97_mixer._entry_ptr = internal global ptr @snd_vt1724_ac97_mixer._entry, section ".printk_index", align 4
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ICE1724 - multitrack\00", [43 x i8] zeroinitializer }, align 32
@snd_vt1724_ac97_ready.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.74, ptr @.str, ptr @.str.75, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_vt1724_ac97_ready\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_vt1724_ac97_ready: timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_vt1724_ac97_wait_bit.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.76, ptr @.str, ptr @.str.77, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_vt1724_ac97_wait_bit\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snd_vt1724_ac97_wait_bit: timeout\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_vt1724_eeprom = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.78, i32 0, i32 1, i32 0, ptr @snd_vt1724_eeprom_info, ptr @snd_vt1724_eeprom_get, ptr null, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_vt1724_pro_internal_clock = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_vt1724_pro_internal_clock_info, ptr @snd_vt1724_pro_internal_clock_get, ptr @snd_vt1724_pro_internal_clock_put, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_vt1724_pro_rate_locking = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_vt1724_pro_rate_locking_get, ptr @snd_vt1724_pro_rate_locking_put, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_vt1724_pro_rate_reset = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_vt1724_pro_rate_reset_get, ptr @snd_vt1724_pro_rate_reset_put, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_vt1724_mixer_pro_analog_route = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_vt1724_pro_route_info, ptr @snd_vt1724_pro_route_analog_get, ptr @snd_vt1724_pro_route_analog_put, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_vt1724_mixer_pro_peak = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.89, i32 0, i32 5, i32 0, ptr @snd_vt1724_pro_peak_info, ptr @snd_vt1724_pro_peak_get, ptr null, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ICE1724 EEPROM\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Multi Track Internal Clock\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Multi Track Rate Locking\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Multi Track Rate Reset\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"H/W Playback Route\00", [45 x i8] zeroinitializer }, align 32
@snd_vt1724_pro_route_info.texts = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCM Out\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H/W In 0\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"H/W In 1\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IEC958 In L\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IEC958 In R\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Multi Track Peak\00", [47 x i8] zeroinitializer }, align 32
@snd_vt1724_mixer_pro_spdif_route = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 2, ptr @snd_vt1724_pro_route_info, ptr @snd_vt1724_pro_route_spdif_get, ptr @snd_vt1724_pro_route_spdif_put, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_vt1724_spdif_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_vt1724_spdif_sw_get, ptr @snd_vt1724_spdif_sw_put, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_vt1724_spdif_default = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_vt1724_spdif_info, ptr @snd_vt1724_spdif_default_get, ptr @snd_vt1724_spdif_default_put, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_vt1724_spdif_maskc = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.93, i32 0, i32 1, i32 0, ptr @snd_vt1724_spdif_info, ptr @snd_vt1724_spdif_maskc_get, ptr null, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_vt1724_spdif_maskp = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.94, i32 0, i32 1, i32 0, ptr @snd_vt1724_spdif_info, ptr @snd_vt1724_spdif_maskp_get, ptr null, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Playback Route\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Output Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Pro Mask\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 8000, i64 9600, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.97 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.98 = internal global [8 x i64] [i64 6, i64 32, i64 32000, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 10, i64 11]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 192]
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"xlate\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2022, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2031, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"xroute\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2042, i32 29 }
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"vt1724_driver\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2738, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 48, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 49, i32 14 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 50, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 51, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2215, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2747, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"snd_vt1724_ids\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 64, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"snd_vt1724_pm\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2732, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2525, i32 13 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2544, i32 23 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2545, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"ext_clock_names\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 76, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2631, i32 32 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2636, i32 24 }
@___asan_gen_.171 = private unnamed_addr constant [23 x i8] c"vt1724_midi_output_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 337, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"vt1724_midi_input_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 372, i32 37 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2654, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2474, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2475, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2476, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2477, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2498, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1532, i32 34 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1494, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1495, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1497, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1498, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1499, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1500, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1502, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1504, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1506, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1508, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1510, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1512, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1515, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1518, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1520, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1523, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1526, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 400, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 403, i32 5 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2279, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant [12 x i8] c"card_tables\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2186, i32 44 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2289, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2299, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2306, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2318, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2324, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [23 x i8] c"snd_vt1724_ooaoo_cards\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2176, i32 43 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2178, i32 11 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2179, i32 12 }
@___asan_gen_.336 = private unnamed_addr constant [19 x i8] c"ooaoo_sq210_eeprom\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2156, i32 28 }
@___asan_gen_.339 = private unnamed_addr constant [19 x i8] c"stdclock_rate_list\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 583, i32 27 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 76, i32 50 }
@___asan_gen_.345 = private unnamed_addr constant [25 x i8] c"hw_constraints_rates_192\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 509, i32 48 }
@___asan_gen_.348 = private unnamed_addr constant [24 x i8] c"hw_constraints_rates_96\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 497, i32 48 }
@___asan_gen_.351 = private unnamed_addr constant [24 x i8] c"hw_constraints_rates_48\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 503, i32 48 }
@___asan_gen_.354 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 491, i32 27 }
@___asan_gen_.357 = private unnamed_addr constant [28 x i8] c"snd_vt1724_playback_pro_ops\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1080, i32 33 }
@___asan_gen_.360 = private unnamed_addr constant [27 x i8] c"snd_vt1724_capture_pro_ops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1090, i32 33 }
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"vt1724_pdma0_reg\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 859, i32 36 }
@___asan_gen_.366 = private unnamed_addr constant [24 x i8] c"snd_vt1724_playback_pro\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 892, i32 38 }
@___asan_gen_.369 = private unnamed_addr constant [16 x i8] c"PRO_RATE_LOCKED\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 72, i32 12 }
@___asan_gen_.372 = private unnamed_addr constant [15 x i8] c"PRO_RATE_RESET\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 73, i32 12 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 807, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [17 x i8] c"vt1724_rdma0_reg\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 873, i32 36 }
@___asan_gen_.384 = private unnamed_addr constant [22 x i8] c"snd_vt1724_2ch_stereo\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 931, i32 38 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 851, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1300, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1302, i32 10 }
@___asan_gen_.396 = private unnamed_addr constant [30 x i8] c"snd_vt1724_playback_spdif_ops\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1256, i32 33 }
@___asan_gen_.399 = private unnamed_addr constant [29 x i8] c"snd_vt1724_capture_spdif_ops\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1266, i32 33 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"vt1724_pdma4_reg\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 866, i32 36 }
@___asan_gen_.405 = private unnamed_addr constant [17 x i8] c"snd_vt1724_spdif\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 910, i32 38 }
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"vt1724_rdma1_reg\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 880, i32 36 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1419, i32 31 }
@___asan_gen_.414 = private unnamed_addr constant [30 x i8] c"snd_vt1724_playback_indep_ops\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1398, i32 33 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1428, i32 20 }
@___asan_gen_.420 = private unnamed_addr constant [25 x i8] c"vt1724_playback_dma_regs\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1331, i32 36 }
@___asan_gen_.423 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1450, i32 40 }
@___asan_gen_.426 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1467, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1473, i32 31 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 116, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 126, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [18 x i8] c"snd_vt1724_eeprom\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1556, i32 38 }
@___asan_gen_.453 = private unnamed_addr constant [30 x i8] c"snd_vt1724_pro_internal_clock\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1922, i32 38 }
@___asan_gen_.456 = private unnamed_addr constant [28 x i8] c"snd_vt1724_pro_rate_locking\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1953, i32 38 }
@___asan_gen_.459 = private unnamed_addr constant [26 x i8] c"snd_vt1724_pro_rate_reset\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1984, i32 38 }
@___asan_gen_.462 = private unnamed_addr constant [34 x i8] c"snd_vt1724_mixer_pro_analog_route\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2100, i32 38 }
@___asan_gen_.465 = private unnamed_addr constant [26 x i8] c"snd_vt1724_mixer_pro_peak\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2145, i32 38 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1558, i32 10 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1924, i32 10 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1828, i32 41 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1955, i32 10 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1986, i32 10 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2103, i32 10 }
@___asan_gen_.486 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1999, i32 28 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2000, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2001, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2001, i32 15 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2002, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2002, i32 18 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2147, i32 10 }
@___asan_gen_.507 = private unnamed_addr constant [33 x i8] c"snd_vt1724_mixer_pro_spdif_route\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2109, i32 38 }
@___asan_gen_.510 = private unnamed_addr constant [24 x i8] c"snd_vt1724_spdif_switch\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1747, i32 38 }
@___asan_gen_.513 = private unnamed_addr constant [25 x i8] c"snd_vt1724_spdif_default\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1669, i32 38 }
@___asan_gen_.516 = private unnamed_addr constant [23 x i8] c"snd_vt1724_spdif_maskc\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1701, i32 38 }
@___asan_gen_.519 = private unnamed_addr constant [23 x i8] c"snd_vt1724_spdif_maskp\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1710, i32 38 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 2111, i32 10 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1752, i32 18 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1672, i32 18 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1705, i32 18 }
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.535 = private constant [31 x i8] c"../sound/pci/ice1712/ice1724.c\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1714, i32 18 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_model253, ptr @__UNIQUE_ID_modeltype252, ptr @__exitcall_vt1724_driver_exit, ptr @__initcall__kmod_snd_ice1724__261_2747_vt1724_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_model, ptr @snd_vt1724_ac97_mixer._entry, ptr @snd_vt1724_ac97_mixer._entry_ptr, ptr @snd_vt1724_create._entry, ptr @snd_vt1724_create._entry_ptr, ptr @snd_vt1724_interrupt._entry, ptr @snd_vt1724_interrupt._entry.41, ptr @snd_vt1724_interrupt._entry_ptr, ptr @snd_vt1724_interrupt._entry_ptr.43, ptr @snd_vt1724_read_eeprom._entry, ptr @snd_vt1724_read_eeprom._entry.46, ptr @snd_vt1724_read_eeprom._entry.51, ptr @snd_vt1724_read_eeprom._entry.55, ptr @snd_vt1724_read_eeprom._entry.58, ptr @snd_vt1724_read_eeprom._entry_ptr, ptr @snd_vt1724_read_eeprom._entry_ptr.49, ptr @snd_vt1724_read_eeprom._entry_ptr.54, ptr @snd_vt1724_read_eeprom._entry_ptr.57, ptr @snd_vt1724_read_eeprom._entry_ptr.60, ptr @vt1724_driver_exit, ptr @wait_i2c_busy._entry, ptr @wait_i2c_busy._entry_ptr, ptr @snd_ice1724_get_route_val.xlate, ptr @.str, ptr @.str.1, ptr @snd_ice1724_put_route_val.xroute, ptr @vt1724_driver, ptr @index, ptr @id, ptr @enable, ptr @model, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @snd_vt1724_ids, ptr @snd_vt1724_pm, ptr @snd_vt1724_probe.dev, ptr @.str.7, ptr @.str.8, ptr @ext_clock_names, ptr @.str.9, ptr @.str.10, ptr @vt1724_midi_output_ops, ptr @vt1724_midi_input_ops, ptr @.str.11, ptr @snd_vt1724_create.__key, ptr @.str.12, ptr @snd_vt1724_create.__key.13, ptr @.str.14, ptr @snd_vt1724_create.__key.15, ptr @.str.16, ptr @snd_vt1724_create.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @card_tables, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @snd_vt1724_ooaoo_cards, ptr @.str.61, ptr @.str.62, ptr @ooaoo_sq210_eeprom, ptr @stdclock_rate_list, ptr @.str.63, ptr @hw_constraints_rates_192, ptr @hw_constraints_rates_96, ptr @hw_constraints_rates_48, ptr @rates, ptr @snd_vt1724_playback_pro_ops, ptr @snd_vt1724_capture_pro_ops, ptr @vt1724_pdma0_reg, ptr @snd_vt1724_playback_pro, ptr @PRO_RATE_LOCKED, ptr @PRO_RATE_RESET, ptr @.str.64, ptr @.str.65, ptr @vt1724_rdma0_reg, ptr @snd_vt1724_2ch_stereo, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @snd_vt1724_playback_spdif_ops, ptr @snd_vt1724_capture_spdif_ops, ptr @vt1724_pdma4_reg, ptr @snd_vt1724_spdif, ptr @vt1724_rdma1_reg, ptr @.str.69, ptr @snd_vt1724_playback_indep_ops, ptr @.str.70, ptr @vt1724_playback_dma_regs, ptr @snd_vt1724_ac97_mixer.ops, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @snd_vt1724_eeprom, ptr @snd_vt1724_pro_internal_clock, ptr @snd_vt1724_pro_rate_locking, ptr @snd_vt1724_pro_rate_reset, ptr @snd_vt1724_mixer_pro_analog_route, ptr @snd_vt1724_mixer_pro_peak, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @snd_vt1724_pro_route_info.texts, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @snd_vt1724_mixer_pro_spdif_route, ptr @snd_vt1724_spdif_switch, ptr @snd_vt1724_spdif_default, ptr @snd_vt1724_spdif_maskc, ptr @snd_vt1724_spdif_maskp, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [145 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1724_get_route_val.xlate to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1724_put_route_val.xroute to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1724_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_i2c_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_clock_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1724_midi_output_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1724_midi_input_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_create.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_create.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_create.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_interrupt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_tables to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_read_eeprom._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_read_eeprom._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_read_eeprom._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_read_eeprom._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_ooaoo_cards to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ooaoo_sq210_eeprom to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdclock_rate_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_rates_192 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_rates_96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_rates_48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_playback_pro_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_capture_pro_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1724_pdma0_reg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_playback_pro to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PRO_RATE_LOCKED to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PRO_RATE_RESET to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1724_rdma0_reg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_2ch_stereo to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_playback_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_capture_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1724_pdma4_reg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_spdif to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1724_rdma1_reg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_playback_indep_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt1724_playback_dma_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_ac97_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_ac97_mixer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_eeprom to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_pro_internal_clock to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_pro_rate_locking to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_pro_rate_reset to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_mixer_pro_analog_route to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_mixer_pro_peak to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_pro_route_info.texts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_mixer_pro_spdif_route to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_spdif_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_spdif_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_spdif_maskc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_spdif_maskp to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ice1724_get_route_val(ptr nocapture noundef readonly %ice, i32 noundef %shift) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %0 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profi_port, align 4
  %add = add i32 %1, 44
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #16, !srcloc !326
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !327
  %shr = lshr i32 %4, %shift
  %and3 = and i32 %shr, 7
  %5 = lshr i32 50, %and3
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end21, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2031, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr [8 x i8], ptr @snd_ice1724_get_route_val.xlate, i32 0, i32 %and3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ice1724_put_route_val(ptr nocapture noundef readonly %ice, i32 noundef %val, i32 noundef %shift) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = urem i32 %val, 5
  %arrayidx = getelementptr [8 x i8], ptr @snd_ice1724_put_route_val.xroute, i32 0, i32 %rem
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 44
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #16, !srcloc !326
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !328
  %shl = shl i32 7, %shift
  %neg = xor i32 %shl, -1
  %and3 = and i32 %6, %neg
  %shl4 = shl i32 %conv, %shift
  %or = or i32 %and3, %shl4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %6)
  %cmp = icmp ne i32 %or, %6
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !329
  tail call void @arm_heavy_mb() #16
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %profi_port, align 4
  %add7 = add i32 %9, 44
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %10 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #16, !srcloc !330
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %conv5 = zext i1 %cmp to i32
  ret i32 %conv5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext %dev, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 42
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #16
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %t.0.i = phi i32 [ 65536, %entry ], [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 19
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !332
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %while.cond.i.wait_i2c_busy.exit_crit_edge, label %land.rhs.i

while.cond.i.wait_i2c_busy.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_i2c_busy.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %dec.i = add nsw i32 %t.0.i, -1
  %tobool4.not.i = icmp eq i32 %t.0.i, 0
  br i1 %tobool4.not.i, label %do.end.i, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #19
  br label %wait_i2c_busy.exit

wait_i2c_busy.exit:                               ; preds = %do.end.i, %while.cond.i.wait_i2c_busy.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !333
  tail call void @arm_heavy_mb() #16
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add = add i32 %10, 17
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %11 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %addr) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !335
  tail call void @arm_heavy_mb() #16
  %12 = and i8 %dev, -2
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add8 = add i32 %14, 16
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %15 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %12) #16, !srcloc !334
  br label %while.cond.i31

while.cond.i31:                                   ; preds = %land.rhs.i34.while.cond.i31_crit_edge, %wait_i2c_busy.exit
  %t.0.i26 = phi i32 [ 65536, %wait_i2c_busy.exit ], [ %dec.i32, %land.rhs.i34.while.cond.i31_crit_edge ]
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add.i27 = add i32 %17, 19
  %and.i28 = and i32 %add.i27, 1048575
  %add1.i29 = or i32 %and.i28, -18874368
  %18 = inttoptr i32 %add1.i29 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !332
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i30 = icmp eq i8 %20, 0
  br i1 %tobool.not.i30, label %while.cond.i31.wait_i2c_busy.exit38_crit_edge, label %land.rhs.i34

while.cond.i31.wait_i2c_busy.exit38_crit_edge:    ; preds = %while.cond.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_i2c_busy.exit38

land.rhs.i34:                                     ; preds = %while.cond.i31
  %dec.i32 = add nsw i32 %t.0.i26, -1
  %tobool4.not.i33 = icmp eq i32 %t.0.i26, 0
  br i1 %tobool4.not.i33, label %do.end.i37, label %land.rhs.i34.while.cond.i31_crit_edge

land.rhs.i34.while.cond.i31_crit_edge:            ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i31

do.end.i37:                                       ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #18
  %card.i35 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %21 = ptrtoint ptr %card.i35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i35, align 4
  %dev.i36 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.2) #19
  br label %wait_i2c_busy.exit38

wait_i2c_busy.exit38:                             ; preds = %do.end.i37, %while.cond.i31.wait_i2c_busy.exit38_crit_edge
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i, align 4
  %add13 = add i32 %26, 18
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %27 = inttoptr i32 %add15 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !336
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #16
  ret i8 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_vt1724_write_i2c(ptr noundef %ice, i8 noundef zeroext %dev, i8 noundef zeroext %addr, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 42
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #16
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %t.0.i = phi i32 [ 65536, %entry ], [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ]
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 19
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !332
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %while.cond.i.wait_i2c_busy.exit_crit_edge, label %land.rhs.i

while.cond.i.wait_i2c_busy.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_i2c_busy.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %dec.i = add nsw i32 %t.0.i, -1
  %tobool4.not.i = icmp eq i32 %t.0.i, 0
  br i1 %tobool4.not.i, label %do.end.i, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #19
  br label %wait_i2c_busy.exit

wait_i2c_busy.exit:                               ; preds = %do.end.i, %while.cond.i.wait_i2c_busy.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !337
  tail call void @arm_heavy_mb() #16
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add = add i32 %10, 17
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %11 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %addr) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !338
  tail call void @arm_heavy_mb() #16
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add5 = add i32 %13, 18
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %14 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %data) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !339
  tail call void @arm_heavy_mb() #16
  %15 = or i8 %dev, 1
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add13 = add i32 %17, 16
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %18 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %15) #16, !srcloc !334
  br label %while.cond.i30

while.cond.i30:                                   ; preds = %land.rhs.i33.while.cond.i30_crit_edge, %wait_i2c_busy.exit
  %t.0.i25 = phi i32 [ 65536, %wait_i2c_busy.exit ], [ %dec.i31, %land.rhs.i33.while.cond.i30_crit_edge ]
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %add.i26 = add i32 %20, 19
  %and.i27 = and i32 %add.i26, 1048575
  %add1.i28 = or i32 %and.i27, -18874368
  %21 = inttoptr i32 %add1.i28 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !332
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i29 = icmp eq i8 %23, 0
  br i1 %tobool.not.i29, label %while.cond.i30.wait_i2c_busy.exit37_crit_edge, label %land.rhs.i33

while.cond.i30.wait_i2c_busy.exit37_crit_edge:    ; preds = %while.cond.i30
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_i2c_busy.exit37

land.rhs.i33:                                     ; preds = %while.cond.i30
  %dec.i31 = add nsw i32 %t.0.i25, -1
  %tobool4.not.i32 = icmp eq i32 %t.0.i25, 0
  br i1 %tobool4.not.i32, label %do.end.i36, label %land.rhs.i33.while.cond.i30_crit_edge

land.rhs.i33.while.cond.i30_crit_edge:            ; preds = %land.rhs.i33
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i30

do.end.i36:                                       ; preds = %land.rhs.i33
  call void @__sanitizer_cov_trace_pc() #18
  %card.i34 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %24 = ptrtoint ptr %card.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card.i34, align 4
  %dev.i35 = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i35, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.2) #19
  br label %wait_i2c_busy.exit37

wait_i2c_busy.exit37:                             ; preds = %do.end.i36, %while.cond.i30.wait_i2c_busy.exit37_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1724_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @vt1724_driver, ptr noundef null, ptr noundef nonnull @.str.6) #16
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vt1724_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @pci_unregister_driver(ptr noundef nonnull @vt1724_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #0 align 64 {
entry:
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %pcm.i274 = alloca ptr, align 4
  %pcm.i259 = alloca ptr, align 4
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #16
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !340
  %1 = load i32, ptr @snd_vt1724_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup167_crit_edge, label %if.end

entry.cleanup167_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !341
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_vt1724_probe.dev, align 4
  br label %cleanup167

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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 840, ptr noundef nonnull %card) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup167_crit_edge, label %if.end7

if.end2.cleanup167_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

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
  store i64 5279139265890104320, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %shortname, ptr @.str.8, i32 19)
  %14 = load i32, ptr @snd_vt1724_probe.dev, align 4
  %arrayidx11 = getelementptr [32 x ptr], ptr @model, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11, align 4
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup167_crit_edge, label %if.end.i

if.end7.cleanup167_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

if.end.i:                                         ; preds = %if.end7
  %vt1724.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 32
  %17 = ptrtoint ptr %vt1724.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %vt1724.i, align 4
  %bf.set.i = or i16 %bf.load.i, 8192
  store i16 %bf.set.i, ptr %vt1724.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 27
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @snd_vt1724_create.__key, i16 noundef signext 3) #16
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 47
  call void @__mutex_init(ptr noundef %gpio_mutex.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @snd_vt1724_create.__key.13) #16
  %open_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 36
  call void @__mutex_init(ptr noundef %open_mutex.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @snd_vt1724_create.__key.15) #16
  %i2c_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 42
  call void @__mutex_init(ptr noundef %i2c_mutex.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @snd_vt1724_create.__key.17) #16
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 3
  %18 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_vt1724_set_gpio_mask, ptr %set_mask.i, align 4
  %get_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 4
  %19 = ptrtoint ptr %get_mask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_vt1724_get_gpio_mask, ptr %get_mask.i, align 4
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 5
  %20 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @snd_vt1724_set_gpio_dir, ptr %set_dir.i, align 4
  %get_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 6
  %21 = ptrtoint ptr %get_dir.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @snd_vt1724_get_gpio_dir, ptr %get_dir.i, align 4
  %set_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 7
  %22 = ptrtoint ptr %set_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @snd_vt1724_set_gpio_data, ptr %set_data.i, align 4
  %get_data.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 46, i32 8
  %23 = ptrtoint ptr %get_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @snd_vt1724_get_gpio_data, ptr %get_data.i, align 4
  %card16.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 10
  %24 = ptrtoint ptr %card16.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %9, ptr %card16.i, align 4
  %pci17.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 9
  %25 = ptrtoint ptr %pci17.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pci, ptr %pci17.i, align 4
  %irq.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 4
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %irq.i, align 4
  call void @pci_set_master(ptr noundef %pci) #16
  %27 = ptrtoint ptr %card16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card16.i, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %28, ptr noundef nonnull @.str.21, ptr noundef %11, ptr noundef nonnull @snd_vt1724_proc_read, ptr noundef null) #16
  %call18.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end.i.cleanup167_crit_edge, label %if.end21.i

if.end.i.cleanup167_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

if.end21.i:                                       ; preds = %if.end.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %29 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 5
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %port.i, align 4
  %arrayidx23.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %32 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx23.i, align 8
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 8
  %34 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %profi_port.i, align 4
  %irq25.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %35 = ptrtoint ptr %irq25.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq25.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %36, ptr noundef nonnull @snd_vt1724_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef %11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end33.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev31.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %37 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev31.i, align 8
  %39 = ptrtoint ptr %irq25.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq25.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.19, i32 noundef %40) #19
  br label %cleanup167

if.end33.i:                                       ; preds = %if.end21.i
  %41 = ptrtoint ptr %irq25.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq25.i, align 4
  %43 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %44 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %42, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %45 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @snd_vt1724_free, ptr %private_free.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !342
  call void @arm_heavy_mb() #16
  %46 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port.i, align 4
  %and.i.i = and i32 %47, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %48 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 -128) #16, !srcloc !334
  %49 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.i, align 4
  %and4.i.i = and i32 %50, 1048575
  %add5.i.i = or i32 %and4.i.i, -18874368
  %51 = inttoptr i32 %add5.i.i to ptr
  %52 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !343
  call void @msleep(i32 noundef 10) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !344
  call void @arm_heavy_mb() #16
  %53 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port.i, align 4
  %and12.i.i = and i32 %54, 1048575
  %add13.i.i = or i32 %and12.i.i, -18874368
  %55 = inttoptr i32 %add13.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 0) #16, !srcloc !334
  %56 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port.i, align 4
  %and18.i.i = and i32 %57, 1048575
  %add19.i.i = or i32 %and18.i.i, -18874368
  %58 = inttoptr i32 %add19.i.i to ptr
  %59 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !345
  call void @msleep(i32 noundef 10) #16
  %call37.i = call fastcc i32 @snd_vt1724_read_eeprom(ptr noundef %11, ptr noundef %16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end33.i.cleanup167_crit_edge, label %if.end15

if.end33.i.cleanup167_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

if.end15:                                         ; preds = %if.end33.i
  call fastcc void @snd_vt1724_chip_init(ptr noundef %11) #16
  %ext_clock_count = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 57
  %60 = ptrtoint ptr %ext_clock_count to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %ext_clock_count, align 4
  %card_info = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 30
  %61 = ptrtoint ptr %card_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card_info, align 4
  %tobool16.not = icmp eq ptr %62, null
  br i1 %tobool16.not, label %if.end15.if.end37_crit_edge, label %if.then17

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then17:                                        ; preds = %if.end15
  %63 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card, align 4
  %shortname18 = getelementptr inbounds %struct.snd_card, ptr %64, i32 0, i32 3
  %name = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name, align 4
  %call20 = call ptr @strcpy(ptr noundef %shortname18, ptr noundef %66) #20
  %driver21 = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %62, i32 0, i32 3
  %67 = ptrtoint ptr %driver21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver21, align 4
  %tobool22.not = icmp eq ptr %68, null
  br i1 %tobool22.not, label %if.then17.if.end28_crit_edge, label %if.then23

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  %driver24 = getelementptr inbounds %struct.snd_card, ptr %64, i32 0, i32 2
  %call27 = call ptr @strcpy(ptr noundef %driver24, ptr noundef nonnull %68) #20
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then17.if.end28_crit_edge
  %chip_init = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %62, i32 0, i32 4
  %69 = ptrtoint ptr %chip_init to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chip_init, align 4
  %tobool29.not = icmp eq ptr %70, null
  br i1 %tobool29.not, label %if.end28.if.end37_crit_edge, label %if.then30

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then30:                                        ; preds = %if.end28
  %call32 = call i32 %70(ptr noundef %11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then30.cleanup167_crit_edge, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then30.cleanup167_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

if.end37:                                         ; preds = %if.then30.if.end37_crit_edge, %if.end28.if.end37_crit_edge, %if.end15.if.end37_crit_edge
  %pro_rate_default = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 49
  %71 = ptrtoint ptr %pro_rate_default to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 44100, ptr %pro_rate_default, align 4
  %is_spdif_master = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 50
  %72 = ptrtoint ptr %is_spdif_master to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %is_spdif_master, align 4
  %tobool38.not = icmp eq ptr %73, null
  br i1 %tobool38.not, label %if.then39, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %74 = ptrtoint ptr %is_spdif_master to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @stdclock_is_spdif_master, ptr %is_spdif_master, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37.if.end41_crit_edge
  %get_rate = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 51
  %75 = ptrtoint ptr %get_rate to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %get_rate, align 4
  %tobool42.not = icmp eq ptr %76, null
  br i1 %tobool42.not, label %if.then43, label %if.end41.if.end45_crit_edge

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %77 = ptrtoint ptr %get_rate to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @stdclock_get_rate, ptr %get_rate, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %set_rate = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 52
  %78 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_rate, align 4
  %tobool46.not = icmp eq ptr %79, null
  br i1 %tobool46.not, label %if.then47, label %if.end45.if.end49_crit_edge

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %80 = ptrtoint ptr %set_rate to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @stdclock_set_rate, ptr %set_rate, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge
  %set_mclk = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 53
  %81 = ptrtoint ptr %set_mclk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %set_mclk, align 4
  %tobool50.not = icmp eq ptr %82, null
  br i1 %tobool50.not, label %if.then51, label %if.end49.if.end53_crit_edge

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %set_mclk to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @stdclock_set_mclk, ptr %set_mclk, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge
  %set_spdif_clock = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 54
  %84 = ptrtoint ptr %set_spdif_clock to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_spdif_clock, align 4
  %tobool54.not = icmp eq ptr %85, null
  br i1 %tobool54.not, label %if.then55, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  %86 = ptrtoint ptr %set_spdif_clock to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @stdclock_set_spdif_clock, ptr %set_spdif_clock, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge
  %get_spdif_master_type = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 55
  %87 = ptrtoint ptr %get_spdif_master_type to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %get_spdif_master_type, align 4
  %tobool58.not = icmp eq ptr %88, null
  br i1 %tobool58.not, label %if.then59, label %if.end57.if.end61_crit_edge

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  %89 = ptrtoint ptr %get_spdif_master_type to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @stdclock_get_spdif_master_type, ptr %get_spdif_master_type, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57.if.end61_crit_edge
  %ext_clock_names = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 56
  %90 = ptrtoint ptr %ext_clock_names to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ext_clock_names, align 4
  %tobool62.not = icmp eq ptr %91, null
  br i1 %tobool62.not, label %if.then63, label %if.end61.if.end65_crit_edge

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  %92 = ptrtoint ptr %ext_clock_names to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @ext_clock_names, ptr %ext_clock_names, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61.if.end65_crit_edge
  %93 = ptrtoint ptr %ext_clock_count to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ext_clock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool67.not = icmp eq i32 %94, 0
  br i1 %tobool67.not, label %if.then68, label %if.end65.if.end70_crit_edge

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  %95 = ptrtoint ptr %ext_clock_count to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %ext_clock_count, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  %hw_rates = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 38
  %96 = ptrtoint ptr %hw_rates to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw_rates, align 4
  %tobool71.not = icmp eq ptr %97, null
  br i1 %tobool71.not, label %if.then72, label %if.end70.if.end73_crit_edge

if.end70.if.end73_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end73

if.then72:                                        ; preds = %if.end70
  %arrayidx.i = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 29, i32 3, i32 1
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %99)
  %tobool.not.i252 = icmp sgt i8 %99, -1
  br i1 %tobool.not.i252, label %if.then72.set_std_hw_rates.exit_crit_edge, label %if.then.i

if.then72.set_std_hw_rates.exit_crit_edge:        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_std_hw_rates.exit

if.then.i:                                        ; preds = %if.then72
  %arrayidx3.i = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 29, i32 3, i32 2
  %100 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx3.i, align 2
  %102 = and i8 %101, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool6.not.i = icmp eq i8 %102, 0
  br i1 %tobool6.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %103 = ptrtoint ptr %vt1724.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %bf.load.i253 = load i16, ptr %vt1724.i, align 4
  %104 = and i16 %bf.load.i253, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool7.not.i = icmp eq i16 %104, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.set_std_hw_rates.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i.set_std_hw_rates.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_std_hw_rates.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  br label %set_std_hw_rates.exit

set_std_hw_rates.exit:                            ; preds = %if.else.i, %land.lhs.true.i.set_std_hw_rates.exit_crit_edge, %if.then72.set_std_hw_rates.exit_crit_edge
  %hw_constraints_rates_192.sink.i = phi ptr [ @hw_constraints_rates_96, %if.else.i ], [ @hw_constraints_rates_192, %land.lhs.true.i.set_std_hw_rates.exit_crit_edge ], [ @hw_constraints_rates_48, %if.then72.set_std_hw_rates.exit_crit_edge ]
  %105 = ptrtoint ptr %hw_rates to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %hw_constraints_rates_192.sink.i, ptr %hw_rates, align 4
  br label %if.end73

if.end73:                                         ; preds = %set_std_hw_rates.exit, %if.end70.if.end73_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #16
  %106 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !340
  %data.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 29, i32 3
  %107 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %data.i, align 2
  %109 = and i8 %108, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %109)
  %cmp.i254 = icmp eq i8 %109, 12
  %not.cmp.i = xor i1 %cmp.i254, true
  %..i = zext i1 %not.cmp.i to i32
  %110 = ptrtoint ptr %card16.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %card16.i, align 4
  %call.i255 = call i32 @snd_pcm_new(ptr noundef %111, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 1, i32 noundef %..i, ptr noundef nonnull %pcm.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %cmp2.i = icmp slt i32 %call.i255, 0
  br i1 %cmp2.i, label %snd_vt1724_pcm_profi.exit.thread, label %if.end5.i

snd_vt1724_pcm_profi.exit.thread:                 ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #16
  br label %cleanup167

if.end5.i:                                        ; preds = %if.end73
  %112 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %113, i32 noundef 0, ptr noundef nonnull @snd_vt1724_playback_pro_ops) #16
  br i1 %cmp.i254, label %if.end5.i.if.end78_crit_edge, label %if.then6.i

if.end5.i.if.end78_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %114 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %115, i32 noundef 1, ptr noundef nonnull @snd_vt1724_capture_pro_ops) #16
  br label %if.end78

if.end78:                                         ; preds = %if.then6.i, %if.end5.i.if.end78_crit_edge
  %116 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pcm.i, align 4
  %private_data.i256 = getelementptr inbounds %struct.snd_pcm, ptr %117, i32 0, i32 11
  %118 = ptrtoint ptr %private_data.i256 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %11, ptr %private_data.i256, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %117, i32 0, i32 3
  %119 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %117, i32 0, i32 7
  %120 = ptrtoint ptr %name.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 8)
  store i64 5279139265890104320, ptr %name.i, align 1
  %121 = ptrtoint ptr %pci17.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pci17.i, align 4
  %dev.i257 = getelementptr inbounds %struct.pci_dev, ptr %122, i32 0, i32 44
  %call9.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %117, i32 noundef 2, ptr noundef %dev.i257, i32 noundef 262144, i32 noundef 262144) #16
  %123 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pcm.i, align 4
  %pcm_pro.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 13
  %125 = ptrtoint ptr %pcm_pro.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %pcm_pro.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i259) #16
  %126 = ptrtoint ptr %pcm.i259 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i259, align 4, !annotation !340
  %127 = ptrtoint ptr %vt1724.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load.i260 = load i16, ptr %vt1724.i, align 4
  %128 = and i16 %bf.load.i260, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool.not.i261 = icmp eq i16 %128, 0
  br i1 %tobool.not.i261, label %lor.lhs.false.i, label %if.end78.if.then.i264_crit_edge

if.end78.if.then.i264_crit_edge:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i264

lor.lhs.false.i:                                  ; preds = %if.end78
  %arrayidx.i262 = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 29, i32 3, i32 3
  %129 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i262, align 1
  %131 = and i8 %130, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool1.not.i = icmp eq i8 %131, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end.i265_crit_edge, label %lor.lhs.false.i.if.then.i264_crit_edge

lor.lhs.false.i.if.then.i264_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i264

lor.lhs.false.i.if.end.i265_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i265

if.then.i264:                                     ; preds = %lor.lhs.false.i.if.then.i264_crit_edge, %if.end78.if.then.i264_crit_edge
  %bf.set.i263 = or i16 %bf.load.i260, 2048
  %132 = ptrtoint ptr %vt1724.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %bf.set.i263, ptr %vt1724.i, align 4
  br label %if.end.i265

if.end.i265:                                      ; preds = %if.then.i264, %lor.lhs.false.i.if.end.i265_crit_edge
  %tobool23.not.i = phi i1 [ false, %if.then.i264 ], [ true, %lor.lhs.false.i.if.end.i265_crit_edge ]
  %play.0.i = phi i32 [ 1, %if.then.i264 ], [ 0, %lor.lhs.false.i.if.end.i265_crit_edge ]
  %133 = ptrtoint ptr %vt1724.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %bf.load4.i = load i16, ptr %vt1724.i, align 4
  %134 = and i16 %bf.load4.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %tobool8.not.i = icmp eq i16 %134, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %if.end.i265.if.end22.thread.i_crit_edge

if.end.i265.if.end22.thread.i_crit_edge:          ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.thread.i

lor.lhs.false9.i:                                 ; preds = %if.end.i265
  %arrayidx12.i = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 29, i32 3, i32 3
  %135 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx12.i, align 1
  %137 = and i8 %136, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool15.not.i = icmp eq i8 %137, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %lor.lhs.false9.i.if.end22.thread.i_crit_edge

lor.lhs.false9.i.if.end22.thread.i_crit_edge:     ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.thread.i

if.end22.thread.i:                                ; preds = %lor.lhs.false9.i.if.end22.thread.i_crit_edge, %if.end.i265.if.end22.thread.i_crit_edge
  %bf.set20.i = or i16 %bf.load4.i, 2048
  %138 = ptrtoint ptr %vt1724.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %bf.set20.i, ptr %vt1724.i, align 4
  br label %if.end26.i

if.end22.i:                                       ; preds = %lor.lhs.false9.i
  br i1 %tobool23.not.i, label %if.end22.i.if.end83_crit_edge, label %if.end22.i.if.end26.i_crit_edge

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.end22.i.if.end83_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.end26.i:                                       ; preds = %if.end22.i.if.end26.i_crit_edge, %if.end22.thread.i
  %capt.07.i = phi i32 [ 1, %if.end22.thread.i ], [ 0, %if.end22.i.if.end26.i_crit_edge ]
  %tobool24.not6.i = phi i1 [ false, %if.end22.thread.i ], [ true, %if.end22.i.if.end26.i_crit_edge ]
  %139 = ptrtoint ptr %vt1724.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load28.i = load i16, ptr %vt1724.i, align 4
  %140 = and i16 %bf.load28.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %141 = icmp eq i16 %140, 0
  %name.0.i = select i1 %141, ptr @.str.68, ptr @.str.67
  %142 = ptrtoint ptr %card16.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %card16.i, align 4
  %call.i267 = call i32 @snd_pcm_new(ptr noundef %143, ptr noundef nonnull %name.0.i, i32 noundef 1, i32 noundef %play.0.i, i32 noundef %capt.07.i, ptr noundef nonnull %pcm.i259) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %cmp.i268 = icmp slt i32 %call.i267, 0
  br i1 %cmp.i268, label %snd_vt1724_pcm_spdif.exit, label %if.end45.i

if.end45.i:                                       ; preds = %if.end26.i
  br i1 %tobool23.not.i, label %if.end45.i.if.end48.i_crit_edge, label %if.then47.i

if.end45.i.if.end48.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  %144 = ptrtoint ptr %pcm.i259 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pcm.i259, align 4
  call void @snd_pcm_set_ops(ptr noundef %145, i32 noundef 0, ptr noundef nonnull @snd_vt1724_playback_spdif_ops) #16
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.end45.i.if.end48.i_crit_edge
  br i1 %tobool24.not6.i, label %if.end48.i.if.end51.i_crit_edge, label %if.then50.i

if.end48.i.if.end51.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #18
  %146 = ptrtoint ptr %pcm.i259 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pcm.i259, align 4
  call void @snd_pcm_set_ops(ptr noundef %147, i32 noundef 1, ptr noundef nonnull @snd_vt1724_capture_spdif_ops) #16
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then50.i, %if.end48.i.if.end51.i_crit_edge
  %148 = ptrtoint ptr %pcm.i259 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pcm.i259, align 4
  %private_data.i269 = getelementptr inbounds %struct.snd_pcm, ptr %149, i32 0, i32 11
  %150 = ptrtoint ptr %private_data.i269 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %11, ptr %private_data.i269, align 8
  %info_flags.i270 = getelementptr inbounds %struct.snd_pcm, ptr %149, i32 0, i32 3
  %151 = ptrtoint ptr %info_flags.i270 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %info_flags.i270, align 8
  %name52.i = getelementptr inbounds %struct.snd_pcm, ptr %149, i32 0, i32 7
  %call53.i = call ptr @strcpy(ptr noundef %name52.i, ptr noundef nonnull %name.0.i) #21
  %152 = ptrtoint ptr %pci17.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pci17.i, align 4
  %dev.i272 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %call54.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %149, i32 noundef 2, ptr noundef %dev.i272, i32 noundef 262144, i32 noundef 262144) #16
  %154 = ptrtoint ptr %pcm.i259 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pcm.i259, align 4
  %pcm55.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 11
  %156 = ptrtoint ptr %pcm55.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %pcm55.i, align 4
  br label %if.end83

snd_vt1724_pcm_spdif.exit:                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i259) #16
  br label %cleanup167

if.end83:                                         ; preds = %if.end51.i, %if.end22.i.if.end83_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i259) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i274) #16
  %157 = ptrtoint ptr %pcm.i274 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i274, align 4, !annotation !340
  %num_total_dacs.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 33
  %158 = ptrtoint ptr %num_total_dacs.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %num_total_dacs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %159)
  %cmp.i275 = icmp ult i32 %159, 4
  br i1 %cmp.i275, label %if.end83.if.end88_crit_edge, label %if.end.i278

if.end83.if.end88_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.end.i278:                                      ; preds = %if.end83
  %div1.i = lshr i32 %159, 1
  %sub.i = add nsw i32 %div1.i, -1
  %160 = ptrtoint ptr %card16.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %card16.i, align 4
  %call.i277 = call i32 @snd_pcm_new(ptr noundef %161, ptr noundef nonnull @.str.69, i32 noundef 2, i32 noundef %sub.i, i32 noundef 0, ptr noundef nonnull %pcm.i274) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %cmp1.i = icmp slt i32 %call.i277, 0
  br i1 %cmp1.i, label %snd_vt1724_pcm_indep.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #18
  %162 = ptrtoint ptr %pcm.i274 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pcm.i274, align 4
  call void @snd_pcm_set_ops(ptr noundef %163, i32 noundef 0, ptr noundef nonnull @snd_vt1724_playback_indep_ops) #16
  %164 = ptrtoint ptr %pcm.i274 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pcm.i274, align 4
  %private_data.i279 = getelementptr inbounds %struct.snd_pcm, ptr %165, i32 0, i32 11
  %166 = ptrtoint ptr %private_data.i279 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %11, ptr %private_data.i279, align 8
  %info_flags.i280 = getelementptr inbounds %struct.snd_pcm, ptr %165, i32 0, i32 3
  %167 = ptrtoint ptr %info_flags.i280 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %info_flags.i280, align 8
  %name.i281 = getelementptr inbounds %struct.snd_pcm, ptr %165, i32 0, i32 7
  %168 = call ptr @memcpy(ptr %name.i281, ptr @.str.70, i32 21)
  %169 = ptrtoint ptr %pci17.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pci17.i, align 4
  %dev.i283 = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  %call5.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %165, i32 noundef 2, ptr noundef %dev.i283, i32 noundef 262144, i32 noundef 262144) #16
  %171 = ptrtoint ptr %pcm.i274 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pcm.i274, align 4
  %pcm_ds.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 12
  %173 = ptrtoint ptr %pcm_ds.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %172, ptr %pcm_ds.i, align 4
  br label %if.end88

snd_vt1724_pcm_indep.exit:                        ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i274) #16
  br label %cleanup167

if.end88:                                         ; preds = %if.end3.i, %if.end83.if.end88_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i274) #16
  %arrayidx.i285 = getelementptr %struct.snd_ice1712, ptr %11, i32 0, i32 29, i32 3, i32 1
  %174 = ptrtoint ptr %arrayidx.i285 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.i285, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %175)
  %tobool.not.i286 = icmp sgt i8 %175, -1
  br i1 %tobool.not.i286, label %if.then.i290, label %if.end88.snd_vt1724_ac97_mixer.exit.thread_crit_edge

if.end88.snd_vt1724_ac97_mixer.exit.thread_crit_edge: ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #18
  br label %snd_vt1724_ac97_mixer.exit.thread

if.then.i290:                                     ; preds = %if.end88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #16
  %176 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !340
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !346
  call void @arm_heavy_mb() #16
  %177 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %profi_port.i, align 4
  %add.i = add i32 %178, 5
  %and1.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and1.i, -18874368
  %179 = inttoptr i32 %add2.i to ptr
  %180 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %179) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !347
  %181 = or i8 %180, -128
  %182 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %profi_port.i, align 4
  %add7.i = add i32 %183, 5
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %184 = inttoptr i32 %add9.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %184, i8 %181) #16, !srcloc !334
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %185(i32 noundef 214748000) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %186(i32 noundef 214748000) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %187(i32 noundef 214748000) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %188(i32 noundef 214748000) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %189 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %189(i32 noundef 214748000) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !348
  call void @arm_heavy_mb() #16
  %190 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %profi_port.i, align 4
  %add17.i = add i32 %191, 5
  %and18.i = and i32 %add17.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %192 = inttoptr i32 %add19.i to ptr
  %193 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %192) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !349
  %194 = and i8 %193, 127
  %195 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %profi_port.i, align 4
  %add27.i = add i32 %196, 5
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %197 = inttoptr i32 %add29.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %197, i8 %194) #16, !srcloc !334
  %198 = ptrtoint ptr %card16.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %card16.i, align 4
  %call31.i = call i32 @snd_ac97_bus(ptr noundef %199, i32 noundef 0, ptr noundef nonnull @snd_vt1724_ac97_mixer.ops, ptr noundef null, ptr noundef nonnull %pbus.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp.i289 = icmp slt i32 %call31.i, 0
  br i1 %cmp.i289, label %snd_vt1724_ac97_mixer.exit.thread304, label %if.end.i291

snd_vt1724_ac97_mixer.exit.thread304:             ; preds = %if.then.i290
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #16
  br label %cleanup167

if.end.i291:                                      ; preds = %if.then.i290
  %200 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %201 = call ptr @memset(ptr %200, i32 0, i32 20)
  %202 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %11, ptr %ac97.i, align 4
  %203 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pbus.i, align 4
  %ac9734.i = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 25
  %call35.i = call i32 @snd_ac97_mixer(ptr noundef %204, ptr noundef nonnull %ac97.i, ptr noundef %ac9734.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %cleanup.i, label %snd_vt1724_ac97_mixer.exit

cleanup.i:                                        ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #18
  %205 = ptrtoint ptr %card16.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %card16.i, align 4
  %dev.i292 = getelementptr inbounds %struct.snd_card, ptr %206, i32 0, i32 27
  %207 = ptrtoint ptr %dev.i292 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev.i292, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %208, ptr noundef nonnull @.str.71) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #16
  br label %snd_vt1724_ac97_mixer.exit.thread

snd_vt1724_ac97_mixer.exit.thread:                ; preds = %cleanup.i, %if.end88.snd_vt1724_ac97_mixer.exit.thread_crit_edge
  %209 = ptrtoint ptr %card16.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %card16.i, align 4
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %210, i32 0, i32 6
  %strlen.i = call i32 @strlen(ptr noundef %mixername.i) #21
  %endptr.i = getelementptr i8, ptr %mixername.i, i32 %strlen.i
  %211 = call ptr @memcpy(ptr %endptr.i, ptr @.str.73, i32 21)
  br label %if.end92

snd_vt1724_ac97_mixer.exit:                       ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #16
  br label %if.end92

if.end92:                                         ; preds = %snd_vt1724_ac97_mixer.exit, %snd_vt1724_ac97_mixer.exit.thread
  %call93 = call fastcc i32 @snd_vt1724_build_controls(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.end92.cleanup167_crit_edge, label %if.end96

if.end92.cleanup167_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

if.end96:                                         ; preds = %if.end92
  %pcm = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 11
  %212 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pcm, align 4
  %tobool97.not = icmp eq ptr %213, null
  br i1 %tobool97.not, label %if.end96.if.end104_crit_edge, label %land.lhs.true

if.end96.if.end104_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end104

land.lhs.true:                                    ; preds = %if.end96
  %214 = ptrtoint ptr %vt1724.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %bf.load = load i16, ptr %vt1724.i, align 4
  %215 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %215)
  %tobool98.not = icmp eq i16 %215, 0
  br i1 %tobool98.not, label %land.lhs.true.if.end104_crit_edge, label %if.then99

land.lhs.true.if.end104_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end104

if.then99:                                        ; preds = %land.lhs.true
  %call100 = call fastcc i32 @snd_vt1724_spdif_build_controls(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then99.cleanup167_crit_edge, label %if.then99.if.end104_crit_edge

if.then99.if.end104_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end104

if.then99.cleanup167_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

if.end104:                                        ; preds = %if.then99.if.end104_crit_edge, %land.lhs.true.if.end104_crit_edge, %if.end96.if.end104_crit_edge
  br i1 %tobool16.not, label %if.end104.if.then120_crit_edge, label %land.lhs.true106

if.end104.if.then120_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then120

land.lhs.true106:                                 ; preds = %if.end104
  %build_controls = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %62, i32 0, i32 6
  %216 = ptrtoint ptr %build_controls to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %build_controls, align 4
  %tobool107.not = icmp eq ptr %217, null
  br i1 %tobool107.not, label %land.lhs.true106.lor.lhs.false_crit_edge, label %if.then108

land.lhs.true106.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

if.then108:                                       ; preds = %land.lhs.true106
  %call110 = call i32 %217(ptr noundef %11) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then108.cleanup167_crit_edge, label %if.then108.lor.lhs.false_crit_edge

if.then108.lor.lhs.false_crit_edge:               ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

if.then108.cleanup167_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

lor.lhs.false:                                    ; preds = %if.then108.lor.lhs.false_crit_edge, %land.lhs.true106.lor.lhs.false_crit_edge
  %no_mpu401 = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %62, i32 0, i32 7
  %218 = ptrtoint ptr %no_mpu401 to i32
  call void @__asan_load1_noabort(i32 %218)
  %bf.load116 = load i8, ptr %no_mpu401, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load116)
  %tobool119.not = icmp sgt i8 %bf.load116, -1
  br i1 %tobool119.not, label %lor.lhs.false.if.then120_crit_edge, label %lor.lhs.false.if.end155_crit_edge

lor.lhs.false.if.end155_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end155

lor.lhs.false.if.then120_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then120

if.then120:                                       ; preds = %lor.lhs.false.if.then120_crit_edge, %if.end104.if.then120_crit_edge
  %219 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %data.i, align 2
  %221 = and i8 %220, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool122.not = icmp eq i8 %221, 0
  br i1 %tobool122.not, label %if.then120.if.end155_crit_edge, label %if.then123

if.then120.if.end155_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end155

if.then123:                                       ; preds = %if.then120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #16
  %222 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !340
  %223 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %card, align 4
  %call124 = call i32 @snd_rawmidi_new(ptr noundef %224, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %cleanup167.critedge, label %if.end128

if.end128:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #18
  %225 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rmidi, align 4
  %rmidi129 = getelementptr inbounds %struct.snd_ice1712, ptr %11, i32 0, i32 26
  %227 = ptrtoint ptr %rmidi129 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %226, ptr %rmidi129, align 4
  %private_data131 = getelementptr inbounds %struct.snd_rawmidi, ptr %226, i32 0, i32 9
  %228 = ptrtoint ptr %private_data131 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %11, ptr %private_data131, align 4
  %name132 = getelementptr inbounds %struct.snd_rawmidi, ptr %226, i32 0, i32 5
  %229 = call ptr @memcpy(ptr %name132, ptr @.str.10, i32 13)
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %226, i32 0, i32 3
  %230 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 7, ptr %info_flags, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %226, i32 noundef 0, ptr noundef nonnull @vt1724_midi_output_ops) #16
  %231 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %232, i32 noundef 1, ptr noundef nonnull @vt1724_midi_input_ops) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !350
  call void @arm_heavy_mb() #16
  %233 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %port.i, align 4
  %add = add i32 %234, 14
  %and135 = and i32 %add, 1048575
  %add136 = or i32 %and135, -18874368
  %235 = inttoptr i32 %add136 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %235, i8 33) #16, !srcloc !334
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !351
  call void @arm_heavy_mb() #16
  %236 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %port.i, align 4
  %add142 = add i32 %237, 14
  %and143 = and i32 %add142, 1048575
  %add144 = or i32 %and143, -18874368
  %238 = inttoptr i32 %add144 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %238, i8 1) #16, !srcloc !334
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !352
  call void @arm_heavy_mb() #16
  %239 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %port.i, align 4
  %add150 = add i32 %240, 13
  %and151 = and i32 %add150, 1048575
  %add152 = or i32 %and151, -18874368
  %241 = inttoptr i32 %add152 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %241, i8 1) #16, !srcloc !334
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #16
  br label %if.end155

if.end155:                                        ; preds = %if.end128, %if.then120.if.end155_crit_edge, %lor.lhs.false.if.end155_crit_edge
  %242 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %243, i32 0, i32 4
  %shortname157 = getelementptr inbounds %struct.snd_card, ptr %243, i32 0, i32 3
  %244 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %port.i, align 4
  %246 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %irq.i, align 4
  %call160 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.11, ptr noundef %shortname157, i32 noundef %245, i32 noundef %247)
  %248 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %card, align 4
  %call161 = call i32 @snd_card_register(ptr noundef %249) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %if.end155.cleanup167_crit_edge, label %if.end165

if.end155.cleanup167_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup167

if.end165:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #18
  %250 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %252 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %251, ptr %driver_data.i.i, align 4
  %253 = load i32, ptr @snd_vt1724_probe.dev, align 4
  %inc166 = add i32 %253, 1
  store i32 %inc166, ptr @snd_vt1724_probe.dev, align 4
  br label %cleanup167

cleanup167.critedge:                              ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #16
  br label %cleanup167

cleanup167:                                       ; preds = %cleanup167.critedge, %if.end165, %if.end155.cleanup167_crit_edge, %if.then108.cleanup167_crit_edge, %if.then99.cleanup167_crit_edge, %if.end92.cleanup167_crit_edge, %snd_vt1724_ac97_mixer.exit.thread304, %snd_vt1724_pcm_indep.exit, %snd_vt1724_pcm_spdif.exit, %snd_vt1724_pcm_profi.exit.thread, %if.then30.cleanup167_crit_edge, %if.end33.i.cleanup167_crit_edge, %do.end30.i, %if.end.i.cleanup167_crit_edge, %if.end7.cleanup167_crit_edge, %if.end2.cleanup167_crit_edge, %if.then1, %entry.cleanup167_crit_edge
  %retval.1 = phi i32 [ 0, %if.end165 ], [ -2, %if.then1 ], [ -19, %entry.cleanup167_crit_edge ], [ %call, %if.end2.cleanup167_crit_edge ], [ %call32, %if.then30.cleanup167_crit_edge ], [ %call.i267, %snd_vt1724_pcm_spdif.exit ], [ %call.i277, %snd_vt1724_pcm_indep.exit ], [ %call93, %if.end92.cleanup167_crit_edge ], [ %call100, %if.then99.cleanup167_crit_edge ], [ %call110, %if.then108.cleanup167_crit_edge ], [ %call124, %cleanup167.critedge ], [ %call161, %if.end155.cleanup167_crit_edge ], [ %call.i255, %snd_vt1724_pcm_profi.exit.thread ], [ %call31.i, %snd_vt1724_ac97_mixer.exit.thread304 ], [ -5, %if.end33.i.cleanup167_crit_edge ], [ %call18.i, %if.end.i.cleanup167_crit_edge ], [ %call.i, %if.end7.cleanup167_crit_edge ], [ -5, %do.end30.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #16
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stdclock_is_spdif_master(ptr nocapture noundef readonly %ice) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %0 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profi_port, align 4
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !353
  %4 = lshr i8 %3, 4
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stdclock_get_rate(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %0 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profi_port, align 4
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !354
  %4 = and i8 %3, 15
  %and3 = zext i8 %4 to i32
  %arrayidx = getelementptr [16 x i32], ptr @stdclock_rate_list, i32 0, i32 %and3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stdclock_set_rate(ptr nocapture noundef readonly %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 48000, label %entry.do.body_crit_edge
    i32 24000, label %do.body.fold.split
    i32 12000, label %do.body.fold.split9
    i32 9600, label %do.body.fold.split10
    i32 32000, label %do.body.fold.split11
    i32 16000, label %do.body.fold.split12
    i32 8000, label %do.body.fold.split13
    i32 96000, label %do.body.fold.split14
    i32 44100, label %do.body.fold.split15
    i32 22050, label %do.body.fold.split16
    i32 11025, label %do.body.fold.split17
    i32 88200, label %do.body.fold.split18
    i32 176400, label %do.body.fold.split19
    i32 0, label %do.body.fold.split20
    i32 192000, label %do.body.fold.split21
    i32 64000, label %do.body.fold.split22
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %do.body.fold.split22, %do.body.fold.split21, %do.body.fold.split20, %do.body.fold.split19, %do.body.fold.split18, %do.body.fold.split17, %do.body.fold.split16, %do.body.fold.split15, %do.body.fold.split14, %do.body.fold.split13, %do.body.fold.split12, %do.body.fold.split11, %do.body.fold.split10, %do.body.fold.split9, %do.body.fold.split, %entry.do.body_crit_edge
  %i.07.lcssa = phi i8 [ 0, %entry.do.body_crit_edge ], [ 1, %do.body.fold.split ], [ 2, %do.body.fold.split9 ], [ 3, %do.body.fold.split10 ], [ 4, %do.body.fold.split11 ], [ 5, %do.body.fold.split12 ], [ 6, %do.body.fold.split13 ], [ 7, %do.body.fold.split14 ], [ 8, %do.body.fold.split15 ], [ 9, %do.body.fold.split16 ], [ 10, %do.body.fold.split17 ], [ 11, %do.body.fold.split18 ], [ 12, %do.body.fold.split19 ], [ 13, %do.body.fold.split20 ], [ 14, %do.body.fold.split21 ], [ 15, %do.body.fold.split22 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !355
  tail call void @arm_heavy_mb() #16
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %1 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %profi_port, align 4
  %add = add i32 %2, 1
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %3 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %i.07.lcssa) #16, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @stdclock_set_mclk(ptr nocapture noundef readonly %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 2
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %4 = inttoptr i32 %add2 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !356
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %cmp = icmp ugt i32 %rate, 96000
  %6 = and i8 %5, -9
  %masksel = select i1 %cmp, i8 8, i8 0
  %val.0 = or i8 %6, %masksel
  call void @__sanitizer_cov_trace_cmp1(i8 %val.0, i8 %5)
  %cmp13.not = icmp eq i8 %val.0, %5
  br i1 %cmp13.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !357
  tail call void @arm_heavy_mb() #16
  %7 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %profi_port, align 4
  %add17 = add i32 %8, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %9 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %val.0) #16, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %do.body ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stdclock_set_spdif_clock(ptr nocapture noundef readonly %ice, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %0 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profi_port, align 4
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !358
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !359
  tail call void @arm_heavy_mb() #16
  %4 = or i8 %3, 16
  %5 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %profi_port, align 4
  %add5 = add i32 %6, 1
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #16, !srcloc !334
  %8 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %profi_port, align 4
  %add11 = add i32 %9, 2
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %10 = inttoptr i32 %add13 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !361
  tail call void @arm_heavy_mb() #16
  %12 = and i8 %11, -9
  %13 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %profi_port, align 4
  %add24 = add i32 %14, 2
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %15 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %12) #16, !srcloc !334
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stdclock_get_spdif_master_type(ptr nocapture noundef readnone %ice) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_vt1724_build_controls(ptr noundef %ice) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vt1724_eeprom, ptr noundef %ice) #16
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup44

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call3 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vt1724_pro_internal_clock, ptr noundef %ice) #16
  %call4 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup44_crit_edge, label %if.end7

if.end.cleanup44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup44

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call9 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vt1724_pro_rate_locking, ptr noundef %ice) #16
  %call10 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end7.cleanup44_crit_edge, label %if.end13

if.end7.cleanup44_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup44

if.end13:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %call15 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vt1724_pro_rate_reset, ptr noundef %ice) #16
  %call16 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end13.cleanup44_crit_edge, label %if.end19

if.end13.cleanup44_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup44

if.end19:                                         ; preds = %if.end13
  %own_routing = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %8 = ptrtoint ptr %own_routing to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %own_routing, align 4
  %9 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end19.if.end40_crit_edge

if.end19.if.end40_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end19
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %10 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20.not = icmp eq i32 %11, 0
  br i1 %cmp20.not, label %land.lhs.true.if.end40_crit_edge, label %if.then21

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then21:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tmp) #16
  %12 = call ptr @memcpy(ptr %tmp, ptr @snd_vt1724_mixer_pro_analog_route, i32 48)
  %count = getelementptr inbounds %struct.snd_kcontrol_new, ptr %tmp, i32 0, i32 6
  %13 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool27.not = icmp ne i16 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp30 = icmp ugt i32 %11, 2
  %or.cond = select i1 %tobool27.not, i1 %cmp30, i1 false
  %spec.store.select = select i1 %or.cond, i32 2, i32 %11
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.store.select, ptr %count, align 4
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %call35 = call ptr @snd_ctl_new1(ptr noundef nonnull %tmp, ptr noundef %ice) #16
  %call36 = call i32 @snd_ctl_add(ptr noundef %16, ptr noundef %call35) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tmp) #16
  br i1 %cmp37, label %if.then21.cleanup44_crit_edge, label %if.then21.if.end40_crit_edge

if.then21.if.end40_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then21.cleanup44_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup44

if.end40:                                         ; preds = %if.then21.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %if.end19.if.end40_crit_edge
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %call42 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vt1724_mixer_pro_peak, ptr noundef %ice) #16
  %call43 = call i32 @snd_ctl_add(ptr noundef %18, ptr noundef %call42) #16
  br label %cleanup44

cleanup44:                                        ; preds = %if.end40, %if.then21.cleanup44_crit_edge, %if.end13.cleanup44_crit_edge, %if.end7.cleanup44_crit_edge, %if.end.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.1 = phi i32 [ %call43, %if.end40 ], [ %call36, %if.then21.cleanup44_crit_edge ], [ %call1, %entry.cleanup44_crit_edge ], [ %call4, %if.end.cleanup44_crit_edge ], [ %call10, %if.end7.cleanup44_crit_edge ], [ %call16, %if.end13.cleanup44_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_vt1724_spdif_build_controls(ptr noundef %ice) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 11
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !362

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2381, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end23:                                         ; preds = %entry
  %own_routing = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %2 = ptrtoint ptr %own_routing to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %own_routing, align 4
  %3 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool24.not = icmp eq i16 %3, 0
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then25:                                        ; preds = %if.end23
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vt1724_mixer_pro_spdif_route, ptr noundef %ice) #16
  %call26 = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.then25.cleanup_crit_edge, label %if.then25.if.end29_crit_edge

if.then25.if.end29_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %if.then25.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %card30 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %6 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card30, align 4
  %call31 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vt1724_spdif_switch, ptr noundef %ice) #16
  %call32 = tail call i32 @snd_ctl_add(ptr noundef %7, ptr noundef %call31) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %8 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card30, align 4
  %call37 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vt1724_spdif_default, ptr noundef %ice) #16
  %call38 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call37) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end35.cleanup_crit_edge, label %if.end41

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device, align 4
  %device43 = getelementptr inbounds %struct.snd_kcontrol, ptr %call37, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %device43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %device43, align 4
  %15 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card30, align 4
  %call45 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vt1724_spdif_maskc, ptr noundef %ice) #16
  %call46 = tail call i32 @snd_ctl_add(ptr noundef %16, ptr noundef %call45) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end41.cleanup_crit_edge, label %if.end49

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %17 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcm, align 4
  %device51 = getelementptr inbounds %struct.snd_pcm, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %device51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %device51, align 4
  %device53 = getelementptr inbounds %struct.snd_kcontrol, ptr %call45, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %device53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %device53, align 4
  %22 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card30, align 4
  %call55 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vt1724_spdif_maskp, ptr noundef %ice) #16
  %call56 = tail call i32 @snd_ctl_add(ptr noundef %23, ptr noundef %call55) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end49.cleanup_crit_edge, label %if.end59

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcm, align 4
  %device61 = getelementptr inbounds %struct.snd_pcm, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %device61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %device61, align 4
  %device63 = getelementptr inbounds %struct.snd_kcontrol, ptr %call55, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %device63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %device63, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end59 ], [ %call26, %if.then25.cleanup_crit_edge ], [ %call32, %if.end29.cleanup_crit_edge ], [ %call38, %if.end35.cleanup_crit_edge ], [ %call46, %if.end41.cleanup_crit_edge ], [ %call56, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_vt1724_set_gpio_mask(ptr nocapture noundef readonly %ice, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !363
  tail call void @arm_heavy_mb() #16
  %conv = trunc i32 %data to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 22
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 %0) #16, !srcloc !364
  %vt1720 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %4 = ptrtoint ptr %vt1720 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %vt1720, align 4
  %5 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %do.body2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !365
  tail call void @arm_heavy_mb() #16
  %shr = lshr i32 %data, 16
  %conv5 = trunc i32 %shr to i8
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add7 = add i32 %7, 31
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %8 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv5) #16, !srcloc !334
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add12 = add i32 %10, 22
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %11 = inttoptr i32 %add14 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #16, !srcloc !366
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !367
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_get_gpio_mask(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vt1720 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %0 = ptrtoint ptr %vt1720 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %vt1720, align 4
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 31
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !368
  %conv = zext i8 %5 to i32
  %phi.bo = shl nuw nsw i32 %conv, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mask.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %port4 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %6 = ptrtoint ptr %port4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port4, align 4
  %add5 = add i32 %7, 22
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %8 = inttoptr i32 %add7 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #16, !srcloc !366
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %conv11 = zext i16 %10 to i32
  %or = or i32 %mask.0, %conv11
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_vt1724_set_gpio_dir(ptr nocapture noundef readonly %ice, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %0 = tail call i32 @llvm.bswap.i32(i32 %data)
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 24
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #16, !srcloc !330
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add3 = add i32 %5, 24
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %6 = inttoptr i32 %add5 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #16, !srcloc !366
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_get_gpio_dir(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 24
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #16, !srcloc !326
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !372
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_vt1724_set_gpio_data(ptr nocapture noundef readonly %ice, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !373
  tail call void @arm_heavy_mb() #16
  %conv = trunc i32 %data to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 %0) #16, !srcloc !364
  %vt1720 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %4 = ptrtoint ptr %vt1720 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %vt1720, align 4
  %5 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %do.body2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !374
  tail call void @arm_heavy_mb() #16
  %shr = lshr i32 %data, 16
  %conv4 = trunc i32 %shr to i8
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add6 = add i32 %7, 30
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %8 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv4) #16, !srcloc !334
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add11 = add i32 %10, 20
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %11 = inttoptr i32 %add13 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #16, !srcloc !366
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !375
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_get_gpio_data(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vt1720 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %0 = ptrtoint ptr %vt1720 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %vt1720, align 4
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 30
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !376
  %conv = zext i8 %5 to i32
  %phi.bo = shl nuw nsw i32 %conv, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %port4 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %6 = ptrtoint ptr %port4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port4, align 4
  %add5 = add i32 %7, 20
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %8 = inttoptr i32 %add7 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #16, !srcloc !366
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !377
  %conv11 = zext i16 %10 to i32
  %or = or i32 %data.0, %conv11
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %buffer.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add266 = add i32 %1, 2
  %and267 = and i32 %add266, 1048575
  %add1268 = or i32 %and267, -18874368
  %2 = inttoptr i32 %add1268 to ptr
  %3 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !378
  %and4250269 = and i8 %3, -80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4250269)
  %cmp271 = icmp eq i8 %and4250269, 0
  br i1 %cmp271, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 27
  %midi_output = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 32
  %rmidi.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 26
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 8
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 17
  %capture_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 18
  %playback_con_substream_ds = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 15
  %arrayidx108 = getelementptr %struct.snd_ice1712, ptr %dev_id, i32 0, i32 15, i32 1
  %arrayidx120 = getelementptr %struct.snd_ice1712, ptr %dev_id, i32 0, i32 15, i32 2
  %playback_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 14
  %capture_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 16
  call void @_raw_spin_lock(ptr noundef %reg_lock) #16
  br label %if.end30

if.end:                                           ; preds = %if.end192
  call void @_raw_spin_lock(ptr noundef %reg_lock) #16
  %inc = add nuw nsw i32 %inc284, 1
  %exitcond = icmp eq i32 %inc284, 10
  br i1 %exitcond, label %if.then10, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then10:                                        ; preds = %if.end
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add13 = add i32 %5, 2
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %6 = inttoptr i32 %add15 to ptr
  %7 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !379
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %dev_id, i32 0, i32 10
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %conv19 = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.39, i32 noundef %conv19) #19
  %and21 = and i32 %conv19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not = icmp eq i32 %and21, 0
  br i1 %tobool.not, label %if.then10.if.end28_crit_edge, label %do.end25

if.then10.if.end28_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

do.end25:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %dev27 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev27, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.42) #19
  call fastcc void @enable_midi_irq(ptr noundef %dev_id, i8 noundef zeroext 32, i32 noundef 0)
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.then10.if.end28_crit_edge
  call void @_raw_spin_unlock(ptr noundef %reg_lock) #16
  br label %while.end

if.end30:                                         ; preds = %if.end.if.end30_crit_edge, %if.end.lr.ph
  %inc284 = phi i32 [ 1, %if.end.lr.ph ], [ %inc, %if.end.if.end30_crit_edge ]
  %status_mask.0274282 = phi i8 [ -80, %if.end.lr.ph ], [ %status_mask.1, %if.end.if.end30_crit_edge ]
  %and4250275281 = phi i8 [ %and4250269, %if.end.lr.ph ], [ %and4250, %if.end.if.end30_crit_edge ]
  %conv6276283 = zext i8 %and4250275281 to i32
  %and32 = and i32 %conv6276283, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end41_crit_edge, label %if.then34

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then34:                                        ; preds = %if.end30
  %16 = ptrtoint ptr %midi_output to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %midi_output, align 4
  %17 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool35.not = icmp eq i16 %17, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @vt1724_midi_write(ptr noundef %dev_id)
  br label %if.end37

if.else:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add.i = add i32 %19, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %20 = inttoptr i32 %add1.i to ptr
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !380
  %or18.i = or i8 %21, 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !381
  call void @arm_heavy_mb() #16
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %add10.i = add i32 %23, 1
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %24 = inttoptr i32 %add12.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %or18.i) #16, !srcloc !334
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then36
  %25 = and i8 %status_mask.0274282, -33
  br label %if.end41

if.end41:                                         ; preds = %if.end37, %if.end30.if.end41_crit_edge
  %status_mask.1 = phi i8 [ %25, %if.end37 ], [ %status_mask.0274282, %if.end30.if.end41_crit_edge ]
  %and43 = and i32 %conv6276283, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.do.body55_crit_edge, label %if.then45

if.end41.do.body55_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body55

if.then45:                                        ; preds = %if.end41
  %26 = ptrtoint ptr %midi_output to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load46 = load i16, ptr %midi_output, align 4
  %27 = and i16 %bf.load46, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool50.not = icmp eq i16 %27, 0
  br i1 %tobool50.not, label %if.else52, label %if.then51

if.then51:                                        ; preds = %if.then45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer.i) #16
  %28 = call ptr @memset(ptr %buffer.i, i32 255, i32 32)
  %29 = ptrtoint ptr %rmidi.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmidi.i.i, align 4
  %substreams.i.i = getelementptr %struct.snd_rawmidi, ptr %30, i32 0, i32 8, i32 1, i32 2
  %31 = ptrtoint ptr %substreams.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %substreams.i.i, align 4
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add.i252 = add i32 %34, 11
  %and.i253 = and i32 %add.i252, 1048575
  %add1.i254 = or i32 %and.i253, -18874368
  %35 = inttoptr i32 %add1.i254 to ptr
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !382
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.not.i = icmp eq i8 %36, 0
  br i1 %cmp.not.i, label %if.then51.vt1724_midi_read.exit_crit_edge, label %if.then.i

if.then51.vt1724_midi_read.exit_crit_edge:        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %vt1724_midi_read.exit

if.then.i:                                        ; preds = %if.then51
  %37 = call i8 @llvm.umin.i8(i8 %36, i8 32) #16
  %conv..i = zext i8 %37 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %i.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i ]
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add12.i255 = add i32 %39, 12
  %and13.i = and i32 %add12.i255, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %40 = inttoptr i32 %add14.i to ptr
  %41 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !383
  %arrayidx.i = getelementptr [32 x i8], ptr %buffer.i, i32 0, i32 %i.029.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv..i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %call18.i = call i32 @snd_rawmidi_receive(ptr noundef %32, ptr noundef nonnull %buffer.i, i32 noundef %conv..i) #16
  br label %vt1724_midi_read.exit

vt1724_midi_read.exit:                            ; preds = %for.end.i, %if.then51.vt1724_midi_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer.i) #16
  br label %do.body55

if.else52:                                        ; preds = %if.then45
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %add.i257 = add i32 %44, 11
  %and.i258 = and i32 %add.i257, 1048575
  %add1.i259 = or i32 %and.i258, -18874368
  %45 = inttoptr i32 %add1.i259 to ptr
  %46 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.not14.i = icmp eq i8 %46, 0
  br i1 %cmp.not14.i, label %if.else52.do.body55_crit_edge, label %for.body.preheader.i

if.else52.do.body55_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body55

for.body.preheader.i:                             ; preds = %if.else52
  %conv.i = zext i8 %46 to i32
  br label %for.body.i261

for.body.i261:                                    ; preds = %for.body.i261.for.body.i261_crit_edge, %for.body.preheader.i
  %count.015.i = phi i32 [ %dec.i, %for.body.i261.for.body.i261_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add6.i = add i32 %48, 12
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %49 = inttoptr i32 %add8.i to ptr
  %50 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !385
  %dec.i = add nsw i32 %count.015.i, -1
  %cmp.not.i260 = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i260, label %for.body.i261.do.body55_crit_edge, label %for.body.i261.for.body.i261_crit_edge

for.body.i261.for.body.i261_crit_edge:            ; preds = %for.body.i261
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i261

for.body.i261.do.body55_crit_edge:                ; preds = %for.body.i261
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body55

do.body55:                                        ; preds = %for.body.i261.do.body55_crit_edge, %if.else52.do.body55_crit_edge, %vt1724_midi_read.exit, %if.end41.do.body55_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !386
  call void @arm_heavy_mb() #16
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %add59 = add i32 %52, 2
  %and60 = and i32 %add59, 1048575
  %add61 = or i32 %and60, -18874368
  %53 = inttoptr i32 %add61 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %and4250275281) #16, !srcloc !334
  call void @_raw_spin_unlock(ptr noundef %reg_lock) #16
  %and65 = and i32 %conv6276283, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body55.if.end192_crit_edge, label %if.then67

do.body55.if.end192_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end192

if.then67:                                        ; preds = %do.body55
  %54 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %profi_port, align 4
  %and70 = and i32 %55, 1048575
  %add71 = or i32 %and70, -18874368
  %56 = inttoptr i32 %add71 to ptr
  %57 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !387
  %conv75 = zext i8 %57 to i32
  %and76 = and i32 %conv75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then67.if.end83_crit_edge, label %if.then78

if.then67.if.end83_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.then78:                                        ; preds = %if.then67
  %58 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %playback_pro_substream, align 4
  %tobool79.not = icmp eq ptr %59, null
  br i1 %tobool79.not, label %if.then78.if.end83_crit_edge, label %if.then80

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.then80:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #18
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %59) #16
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.then78.if.end83_crit_edge, %if.then67.if.end83_crit_edge
  %and85 = and i32 %conv75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end83.if.end92_crit_edge, label %if.then87

if.end83.if.end92_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.then87:                                        ; preds = %if.end83
  %60 = ptrtoint ptr %capture_pro_substream to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %capture_pro_substream, align 4
  %tobool88.not = icmp eq ptr %61, null
  br i1 %tobool88.not, label %if.then87.if.end92_crit_edge, label %if.then89

if.then87.if.end92_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.then89:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #18
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %61) #16
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.then87.if.end92_crit_edge, %if.end83.if.end92_crit_edge
  %and94 = and i32 %conv75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end92.if.end102_crit_edge, label %if.then96

if.end92.if.end102_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

if.then96:                                        ; preds = %if.end92
  %62 = ptrtoint ptr %playback_con_substream_ds to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %playback_con_substream_ds, align 4
  %tobool97.not = icmp eq ptr %63, null
  br i1 %tobool97.not, label %if.then96.if.end102_crit_edge, label %if.then98

if.then96.if.end102_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

if.then98:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #18
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %63) #16
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.then96.if.end102_crit_edge, %if.end92.if.end102_crit_edge
  %and104 = and i32 %conv75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end102.if.end114_crit_edge, label %if.then106

if.end102.if.end114_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114

if.then106:                                       ; preds = %if.end102
  %64 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx108, align 4
  %tobool109.not = icmp eq ptr %65, null
  br i1 %tobool109.not, label %if.then106.if.end114_crit_edge, label %if.then110

if.then106.if.end114_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114

if.then110:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #18
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %65) #16
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.then106.if.end114_crit_edge, %if.end102.if.end114_crit_edge
  %and116 = and i32 %conv75, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end114.if.end126_crit_edge, label %if.then118

if.end114.if.end126_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126

if.then118:                                       ; preds = %if.end114
  %66 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx120, align 4
  %tobool121.not = icmp eq ptr %67, null
  br i1 %tobool121.not, label %if.then118.if.end126_crit_edge, label %if.then122

if.then118.if.end126_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126

if.then122:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #18
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %67) #16
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %if.then118.if.end126_crit_edge, %if.end114.if.end126_crit_edge
  %and128 = and i32 %conv75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.end135_crit_edge, label %if.then130

if.end126.if.end135_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end135

if.then130:                                       ; preds = %if.end126
  %68 = ptrtoint ptr %playback_con_substream to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %playback_con_substream, align 4
  %tobool131.not = icmp eq ptr %69, null
  br i1 %tobool131.not, label %if.then130.if.end135_crit_edge, label %if.then132

if.then130.if.end135_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end135

if.then132:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #18
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %69) #16
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.then130.if.end135_crit_edge, %if.end126.if.end135_crit_edge
  %and137 = and i32 %conv75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end135.do.body145_crit_edge, label %if.then139

if.end135.do.body145_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body145

if.then139:                                       ; preds = %if.end135
  %70 = ptrtoint ptr %capture_con_substream to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %capture_con_substream, align 4
  %tobool140.not = icmp eq ptr %71, null
  br i1 %tobool140.not, label %if.then139.do.body145_crit_edge, label %if.then141

if.then139.do.body145_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body145

if.then141:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #18
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %71) #16
  br label %do.body145

do.body145:                                       ; preds = %if.then141, %if.then139.do.body145_crit_edge, %if.end135.do.body145_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !388
  call void @arm_heavy_mb() #16
  %72 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %profi_port, align 4
  %and150 = and i32 %73, 1048575
  %add151 = or i32 %and150, -18874368
  %74 = inttoptr i32 %add151 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 %57) #16, !srcloc !334
  %and154 = and i32 %conv75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %do.body145.if.end192_crit_edge, label %if.then156

do.body145.if.end192_crit_edge:                   ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end192

if.then156:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #18
  %75 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %profi_port, align 4
  %add159 = add i32 %76, 26
  %and160 = and i32 %add159, 1048575
  %add161 = or i32 %and160, -18874368
  %77 = inttoptr i32 %add161 to ptr
  %78 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !389
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !390
  call void @arm_heavy_mb() #16
  %79 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %profi_port, align 4
  %add169 = add i32 %80, 26
  %and170 = and i32 %add169, 1048575
  %add171 = or i32 %and170, -18874368
  %81 = inttoptr i32 %add171 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 %78) #16, !srcloc !334
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !391
  call void @arm_heavy_mb() #16
  %82 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %profi_port, align 4
  %add178 = add i32 %83, 3
  %and179 = and i32 %add178, 1048575
  %add180 = or i32 %and179, -18874368
  %84 = inttoptr i32 %add180 to ptr
  %85 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !392
  %86 = or i8 %85, 8
  %87 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %profi_port, align 4
  %add187 = add i32 %88, 3
  %and188 = and i32 %add187, 1048575
  %add189 = or i32 %and188, -18874368
  %89 = inttoptr i32 %add189 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 %86) #16, !srcloc !334
  br label %if.end192

if.end192:                                        ; preds = %if.then156, %do.body145.if.end192_crit_edge, %do.body55.if.end192_crit_edge
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %add = add i32 %91, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %92 = inttoptr i32 %add1 to ptr
  %93 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !378
  %and4250 = and i8 %93, %status_mask.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4250)
  %cmp = icmp eq i8 %and4250, 0
  br i1 %cmp, label %if.end192.while.end_crit_edge, label %if.end

if.end192.while.end_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end192.while.end_crit_edge, %if.end28, %entry.while.end_crit_edge
  %tobool193.not265 = phi i32 [ 1, %if.end28 ], [ 0, %entry.while.end_crit_edge ], [ 1, %if.end192.while.end_crit_edge ]
  ret i32 %tobool193.not265
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_vt1724_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !393
  tail call void @arm_heavy_mb() #16
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -1) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !394
  tail call void @arm_heavy_mb() #16
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add5 = add i32 %6, 1
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -1) #16, !srcloc !334
  tail call void @snd_ice1712_akm4xxx_free(ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_vt1724_read_eeprom(ptr noundef %ice, ptr noundef readonly %modelname) unnamed_addr #0 align 64 {
entry:
  %vendor = alloca i16, align 2
  %device = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %modelname, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %modelname to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modelname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end55_crit_edge

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
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
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !395
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.not = icmp sgt i8 %6, -1
  br i1 %cmp.not, label %if.endthread-pre-split, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext -96, i8 noundef zeroext 0)
  %conv8 = zext i8 %call7 to i32
  %call9 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext -96, i8 noundef zeroext 1)
  %conv10 = zext i8 %call9 to i32
  %shl11 = shl nuw nsw i32 %conv10, 8
  %or = or i32 %shl11, %conv8
  %call12 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext -96, i8 noundef zeroext 2)
  %conv13 = zext i8 %call12 to i32
  %shl14 = shl nuw nsw i32 %conv13, 16
  %or15 = or i32 %or, %shl14
  %call16 = tail call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext -96, i8 noundef zeroext 3)
  %conv17 = zext i8 %call16 to i32
  %shl18 = shl nuw i32 %conv17, 24
  %or19 = or i32 %or15, %shl18
  %7 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or19, ptr %eeprom, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %eeprom, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then6
  %9 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %or19, %if.then6 ]
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %9, label %if.end.if.end55_crit_edge [
    i32 0, label %if.end.if.then31_crit_edge
    i32 -1, label %if.end.if.then31_crit_edge324
  ]

if.end.if.then31_crit_edge324:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then31

if.end.if.then31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then31

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then31:                                        ; preds = %if.end.if.then31_crit_edge, %if.end.if.then31_crit_edge324
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor) #16
  %11 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %vendor, align 2, !annotation !340
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %device) #16
  %12 = ptrtoint ptr %device to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %device, align 2, !annotation !340
  %pci = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 9
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %call32 = call i32 @pci_read_config_word(ptr noundef %14, i32 noundef 44, ptr noundef nonnull %vendor) #16
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 4
  %call34 = call i32 @pci_read_config_word(ptr noundef %16, i32 noundef 46, ptr noundef nonnull %device) #16
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vendor, align 2
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %21 = zext i16 %18 to i32
  %22 = zext i16 %20 to i32
  %23 = shl nuw i32 %22, 16
  %24 = or i32 %23, %21
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %eeprom, align 4
  %27 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %24, label %cleanup [
    i32 0, label %if.then31.do.end_crit_edge
    i32 -1, label %if.then31.do.end_crit_edge325
  ]

if.then31.do.end_crit_edge325:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then31.do.end_crit_edge:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %if.then31.do.end_crit_edge, %if.then31.do.end_crit_edge325
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %dev51 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev51, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.44) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %device) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor) #16
  br label %cleanup192

cleanup:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %device) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor) #16
  br label %if.end55

if.end55:                                         ; preds = %cleanup, %if.end.if.end55_crit_edge, %lor.lhs.false.if.end55_crit_edge
  %eeprom77 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  br label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %for.inc110.for.cond57.preheader_crit_edge, %if.end55
  %32 = phi ptr [ @snd_vt1724_revo_cards, %if.end55 ], [ %70, %for.inc110.for.cond57.preheader_crit_edge ]
  %tbl.0296 = phi ptr [ @card_tables, %if.end55 ], [ %incdec.ptr111, %for.inc110.for.cond57.preheader_crit_edge ]
  %name293 = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %name293 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name293, align 4
  %tobool58.not294 = icmp eq ptr %34, null
  br i1 %tobool58.not294, label %for.cond57.preheader.for.inc110_crit_edge, label %for.cond57.preheader.for.body59_crit_edge

for.cond57.preheader.for.body59_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body59

for.cond57.preheader.for.inc110_crit_edge:        ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc110

for.body59:                                       ; preds = %for.inc.for.body59_crit_edge, %for.cond57.preheader.for.body59_crit_edge
  %35 = phi ptr [ %68, %for.inc.for.body59_crit_edge ], [ %34, %for.cond57.preheader.for.body59_crit_edge ]
  %c.0295 = phi ptr [ %incdec.ptr, %for.inc.for.body59_crit_edge ], [ %32, %for.cond57.preheader.for.body59_crit_edge ]
  br i1 %tobool.not, label %for.body59.if.else_crit_edge, label %land.lhs.true

for.body59.if.else_crit_edge:                     ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %for.body59
  %model = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0295, i32 0, i32 2
  %36 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %model, align 4
  %tobool61.not = icmp eq ptr %37, null
  br i1 %tobool61.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true62

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true62:                                  ; preds = %land.lhs.true
  %call64 = call i32 @strcmp(ptr noundef nonnull %modelname, ptr noundef nonnull %37) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.end69, label %land.lhs.true62.if.else_crit_edge

land.lhs.true62.if.else_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

do.end69:                                         ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  %card70 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %38 = ptrtoint ptr %card70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card70, align 4
  %dev71 = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev71, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.47, ptr noundef nonnull %35) #19
  %42 = ptrtoint ptr %c.0295 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %c.0295, align 4
  %44 = ptrtoint ptr %eeprom77 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %eeprom77, align 4
  br label %if.end83

if.else:                                          ; preds = %land.lhs.true62.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body59.if.else_crit_edge
  %45 = ptrtoint ptr %c.0295 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %c.0295, align 4
  %47 = ptrtoint ptr %eeprom77 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %eeprom77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp79.not = icmp eq i32 %46, %48
  br i1 %cmp79.not, label %if.else.if.end83_crit_edge, label %for.inc

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.end83:                                         ; preds = %if.else.if.end83_crit_edge, %do.end69
  %card_info = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 30
  %49 = ptrtoint ptr %card_info to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %c.0295, ptr %card_info, align 4
  %eeprom_size = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0295, i32 0, i32 12
  %50 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %eeprom_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool84.not = icmp eq i32 %51, 0
  br i1 %tobool84.not, label %if.end83.found_crit_edge, label %lor.lhs.false85

if.end83.found_crit_edge:                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %found

lor.lhs.false85:                                  ; preds = %if.end83
  %eeprom_data = getelementptr inbounds %struct.snd_ice1712_card_info, ptr %c.0295, i32 0, i32 13
  %52 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %eeprom_data, align 4
  %tobool86.not = icmp eq ptr %53, null
  br i1 %tobool86.not, label %lor.lhs.false85.found_crit_edge, label %do.body89

lor.lhs.false85.found_crit_edge:                  ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #18
  br label %found

do.body89:                                        ; preds = %lor.lhs.false85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_vt1724_read_eeprom.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_vt1724_read_eeprom, %if.then95)) #16
          to label %do.end100 [label %if.then95], !srcloc !396

if.then95:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #18
  %card96 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %54 = ptrtoint ptr %card96 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card96, align 4
  %dev97 = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev97, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_vt1724_read_eeprom.__UNIQUE_ID_ddebug260, ptr noundef %57, ptr noundef nonnull @.str.50) #16
  br label %do.end100

do.end100:                                        ; preds = %if.then95, %do.body89
  %version = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 2
  %58 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %version, align 1
  %59 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %eeprom_size, align 4
  %61 = trunc i32 %60 to i8
  %conv104 = add i8 %61, 6
  %size106 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 1
  %62 = ptrtoint ptr %size106 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv104, ptr %size106, align 4
  %data = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3
  %63 = ptrtoint ptr %eeprom_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %eeprom_data, align 4
  %65 = load i32, ptr %eeprom_size, align 4
  %66 = call ptr @memcpy(ptr %data, ptr %64, i32 %65)
  br label %read_skipped

for.inc:                                          ; preds = %if.else
  %incdec.ptr = getelementptr %struct.snd_ice1712_card_info, ptr %c.0295, i32 1
  %name = getelementptr %struct.snd_ice1712_card_info, ptr %c.0295, i32 1, i32 1
  %67 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name, align 4
  %tobool58.not = icmp eq ptr %68, null
  br i1 %tobool58.not, label %for.inc.for.inc110_crit_edge, label %for.inc.for.body59_crit_edge

for.inc.for.body59_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body59

for.inc.for.inc110_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc110

for.inc110:                                       ; preds = %for.inc.for.inc110_crit_edge, %for.cond57.preheader.for.inc110_crit_edge
  %incdec.ptr111 = getelementptr ptr, ptr %tbl.0296, i32 1
  %69 = ptrtoint ptr %incdec.ptr111 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %incdec.ptr111, align 4
  %tobool56.not = icmp eq ptr %70, null
  br i1 %tobool56.not, label %do.end115, label %for.inc110.for.cond57.preheader_crit_edge

for.inc110.for.cond57.preheader_crit_edge:        ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond57.preheader

do.end115:                                        ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #18
  %card116 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %71 = ptrtoint ptr %card116 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %card116, align 4
  %dev117 = getelementptr inbounds %struct.snd_card, ptr %72, i32 0, i32 27
  %73 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev117, align 8
  %75 = ptrtoint ptr %eeprom77 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %eeprom77, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.52, i32 noundef %76) #19
  %pm_suspend_enabled = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 61
  %77 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load = load i8, ptr %pm_suspend_enabled, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pm_suspend_enabled, align 4
  br label %found

found:                                            ; preds = %do.end115, %lor.lhs.false85.found_crit_edge, %if.end83.found_crit_edge
  %call120 = call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext -96, i8 noundef zeroext 4)
  %size122 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 1
  %78 = ptrtoint ptr %size122 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %call120, ptr %size122, align 4
  %conv125 = zext i8 %call120 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %call120)
  %cmp126 = icmp ult i8 %call120, 6
  br i1 %cmp126, label %if.then128, label %if.else131

if.then128:                                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #18
  %79 = ptrtoint ptr %size122 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 32, ptr %size122, align 4
  br label %if.end147

if.else131:                                       ; preds = %found
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %call120)
  %cmp135 = icmp ugt i8 %call120, 32
  br i1 %cmp135, label %do.end140, label %if.else131.if.end147_crit_edge

if.else131.if.end147_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end147

do.end140:                                        ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #18
  %card141 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %80 = ptrtoint ptr %card141 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %card141, align 4
  %dev142 = getelementptr inbounds %struct.snd_card, ptr %81, i32 0, i32 27
  %82 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev142, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.56, i32 noundef %conv125) #19
  br label %cleanup192

if.end147:                                        ; preds = %if.else131.if.end147_crit_edge, %if.then128
  %call148 = call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext -96, i8 noundef zeroext 5)
  %version150 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 2
  %84 = ptrtoint ptr %version150 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %call148, ptr %version150, align 1
  %call148.off = add i8 %call148, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call148.off)
  %switch = icmp ult i8 %call148.off, 2
  br i1 %switch, label %if.end147.if.end171_crit_edge, label %do.end165

if.end147.if.end171_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end171

do.end165:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #18
  %conv153 = zext i8 %call148 to i32
  %card166 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %85 = ptrtoint ptr %card166 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card166, align 4
  %dev167 = getelementptr inbounds %struct.snd_card, ptr %86, i32 0, i32 27
  %87 = ptrtoint ptr %dev167 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev167, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.59, i32 noundef %conv153) #19
  br label %if.end171

if.end171:                                        ; preds = %do.end165, %if.end147.if.end171_crit_edge
  %89 = ptrtoint ptr %size122 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %size122, align 4
  %conv174 = zext i8 %90 to i32
  %sub = add nsw i32 %conv174, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp176297.not = icmp eq i32 %sub, 0
  br i1 %cmp176297.not, label %if.end171.read_skipped_crit_edge, label %if.end171.for.body178_crit_edge

if.end171.for.body178_crit_edge:                  ; preds = %if.end171
  br label %for.body178

if.end171.read_skipped_crit_edge:                 ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #18
  br label %read_skipped

for.body178:                                      ; preds = %for.body178.for.body178_crit_edge, %if.end171.for.body178_crit_edge
  %i.0298 = phi i32 [ %inc, %for.body178.for.body178_crit_edge ], [ 0, %if.end171.for.body178_crit_edge ]
  %91 = trunc i32 %i.0298 to i8
  %conv180 = add i8 %91, 6
  %call181 = call zeroext i8 @snd_vt1724_read_i2c(ptr noundef %ice, i8 noundef zeroext -96, i8 noundef zeroext %conv180)
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 %i.0298
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %call181, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.0298, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body178.read_skipped_crit_edge, label %for.body178.for.body178_crit_edge

for.body178.for.body178_crit_edge:                ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body178

for.body178.read_skipped_crit_edge:               ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #18
  br label %read_skipped

read_skipped:                                     ; preds = %for.body178.read_skipped_crit_edge, %if.end171.read_skipped_crit_edge, %do.end100
  %arrayidx.i = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 7
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %94 to i32
  %arrayidx3.i = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 8
  %95 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %96 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %arrayidx8.i = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 9
  %97 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %98 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 16
  %or11.i = or i32 %or.i, %shl10.i
  %gpiomask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 4
  %99 = ptrtoint ptr %gpiomask to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or11.i, ptr %gpiomask, align 4
  %arrayidx.i267 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 10
  %100 = ptrtoint ptr %arrayidx.i267 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i267, align 1
  %conv.i268 = zext i8 %101 to i32
  %arrayidx3.i269 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 11
  %102 = ptrtoint ptr %arrayidx3.i269 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx3.i269, align 1
  %conv4.i270 = zext i8 %103 to i32
  %shl.i271 = shl nuw nsw i32 %conv4.i270, 8
  %or.i272 = or i32 %shl.i271, %conv.i268
  %arrayidx8.i273 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 12
  %104 = ptrtoint ptr %arrayidx8.i273 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx8.i273, align 1
  %conv9.i274 = zext i8 %105 to i32
  %shl10.i275 = shl nuw nsw i32 %conv9.i274, 16
  %or11.i276 = or i32 %or.i272, %shl10.i275
  %gpiostate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 5
  %106 = ptrtoint ptr %gpiostate to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or11.i276, ptr %gpiostate, align 4
  %arrayidx.i277 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 4
  %107 = ptrtoint ptr %arrayidx.i277 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i277, align 1
  %conv.i278 = zext i8 %108 to i32
  %arrayidx3.i279 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 5
  %109 = ptrtoint ptr %arrayidx3.i279 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx3.i279, align 1
  %conv4.i280 = zext i8 %110 to i32
  %shl.i281 = shl nuw nsw i32 %conv4.i280, 8
  %or.i282 = or i32 %shl.i281, %conv.i278
  %arrayidx8.i283 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 6
  %111 = ptrtoint ptr %arrayidx8.i283 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx8.i283, align 1
  %conv9.i284 = zext i8 %112 to i32
  %shl10.i285 = shl nuw nsw i32 %conv9.i284, 16
  %or11.i286 = or i32 %or.i282, %shl10.i285
  %gpiodir = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 6
  %113 = ptrtoint ptr %gpiodir to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or11.i286, ptr %gpiodir, align 4
  br label %cleanup192

cleanup192:                                       ; preds = %read_skipped, %do.end140, %do.end
  %retval.1 = phi i32 [ 0, %read_skipped ], [ -5, %do.end140 ], [ -6, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_vt1724_chip_init(ptr nocapture noundef %ice) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !397
  tail call void @arm_heavy_mb() #16
  %data = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 2
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %1) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !398
  tail call void @arm_heavy_mb() #16
  %arrayidx6 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx6, align 1
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add8 = add i32 %8, 5
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %9 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %6) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !399
  tail call void @arm_heavy_mb() #16
  %arrayidx16 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 2
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add18 = add i32 %13, 6
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %14 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %11) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !400
  tail call void @arm_heavy_mb() #16
  %arrayidx26 = getelementptr %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 3, i32 3
  %15 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx26, align 1
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add28 = add i32 %18, 7
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %19 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #16, !srcloc !334
  %gpiomask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 4
  %20 = ptrtoint ptr %gpiomask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpiomask, align 4
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %write_mask = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 1
  %22 = ptrtoint ptr %write_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %write_mask, align 4
  %gpiodir = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 6
  %23 = ptrtoint ptr %gpiodir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpiodir, align 4
  %25 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %gpio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !363
  tail call void @arm_heavy_mb() #16
  %conv.i = trunc i32 %21 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #16
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add.i = add i32 %28, 22
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %29 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 %26) #16, !srcloc !364
  %vt1720.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %30 = ptrtoint ptr %vt1720.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i = load i16, ptr %vt1720.i, align 4
  %31 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i, label %do.body2.i, label %entry.snd_vt1724_set_gpio_mask.exit_crit_edge

entry.snd_vt1724_set_gpio_mask.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %snd_vt1724_set_gpio_mask.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !365
  tail call void @arm_heavy_mb() #16
  %shr.i = lshr i32 %21, 16
  %conv5.i = trunc i32 %shr.i to i8
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add7.i = add i32 %33, 31
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %34 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv5.i) #16, !srcloc !334
  br label %snd_vt1724_set_gpio_mask.exit

snd_vt1724_set_gpio_mask.exit:                    ; preds = %do.body2.i, %entry.snd_vt1724_set_gpio_mask.exit_crit_edge
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add12.i = add i32 %36, 22
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %37 = inttoptr i32 %add14.i to ptr
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %37) #16, !srcloc !366
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !367
  %39 = ptrtoint ptr %gpiodir to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %gpiodir, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #16
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add.i2 = add i32 %43, 24
  %and.i3 = and i32 %add.i2, 1048575
  %add1.i4 = or i32 %and.i3, -18874368
  %44 = inttoptr i32 %add1.i4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %44, i32 %41) #16, !srcloc !330
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port, align 4
  %add3.i = add i32 %46, 24
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %47 = inttoptr i32 %add5.i to ptr
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %47) #16, !srcloc !366
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  %gpiostate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 5
  %49 = ptrtoint ptr %gpiostate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %gpiostate, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !373
  tail call void @arm_heavy_mb() #16
  %conv.i5 = trunc i32 %50 to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv.i5) #16
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add.i7 = add i32 %53, 20
  %and.i8 = and i32 %add.i7, 1048575
  %add1.i9 = or i32 %and.i8, -18874368
  %54 = inttoptr i32 %add1.i9 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 %51) #16, !srcloc !364
  %55 = ptrtoint ptr %vt1720.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i11 = load i16, ptr %vt1720.i, align 4
  %56 = and i16 %bf.load.i11, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool.not.i12 = icmp eq i16 %56, 0
  br i1 %tobool.not.i12, label %do.body2.i14, label %snd_vt1724_set_gpio_mask.exit.snd_vt1724_set_gpio_data.exit_crit_edge

snd_vt1724_set_gpio_mask.exit.snd_vt1724_set_gpio_data.exit_crit_edge: ; preds = %snd_vt1724_set_gpio_mask.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %snd_vt1724_set_gpio_data.exit

do.body2.i14:                                     ; preds = %snd_vt1724_set_gpio_mask.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !374
  tail call void @arm_heavy_mb() #16
  %shr.i13 = lshr i32 %50, 16
  %conv4.i = trunc i32 %shr.i13 to i8
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add6.i = add i32 %58, 30
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %59 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %conv4.i) #16, !srcloc !334
  br label %snd_vt1724_set_gpio_data.exit

snd_vt1724_set_gpio_data.exit:                    ; preds = %do.body2.i14, %snd_vt1724_set_gpio_mask.exit.snd_vt1724_set_gpio_data.exit_crit_edge
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add11.i = add i32 %61, 20
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %62 = inttoptr i32 %add13.i to ptr
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %62) #16, !srcloc !366
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !401
  tail call void @arm_heavy_mb() #16
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %add43 = add i32 %65, 28
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %66 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !402
  tail call void @arm_heavy_mb() #16
  %67 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port, align 4
  %add50 = add i32 %68, 1
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %69 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 -96) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !403
  tail call void @arm_heavy_mb() #16
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %70 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %profi_port, align 4
  %add56 = add i32 %71, 3
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %72 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 8) #16, !srcloc !334
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_vt1724_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.22, ptr noundef %longname) #16
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.23) #16
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eeprom, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.24, i32 noundef %11) #16
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %size = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %size, align 4
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.25, i32 noundef %conv) #16
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %version = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 2
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %version, align 1
  %conv9 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.26, i32 noundef %conv9) #16
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %data = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 2
  %conv12 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.27, i32 noundef %conv12) #16
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %arrayidx16 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.28, i32 noundef %conv17) #16
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %arrayidx21 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 2
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx21, align 2
  %conv22 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.29, i32 noundef %conv22) #16
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %arrayidx26 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.30, i32 noundef %conv27) #16
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %gpiodir = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 6
  %38 = ptrtoint ptr %gpiodir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gpiodir, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.31, i32 noundef %39) #16
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %gpiomask = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 4
  %42 = ptrtoint ptr %gpiomask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gpiomask, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.32, i32 noundef %43) #16
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %gpiostate = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 5
  %46 = ptrtoint ptr %gpiostate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gpiostate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.33, i32 noundef %47) #16
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %49)
  %cmp123 = icmp ugt i8 %49, 18
  br i1 %cmp123, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %idx.0124 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 18, %entry.for.body_crit_edge ]
  %50 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer, align 4
  %arrayidx41 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 %idx.0124
  %52 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %51, ptr noundef nonnull @.str.34, i32 noundef %idx.0124, i32 noundef %conv42) #16
  %inc = add nuw nsw i32 %idx.0124, 1
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %size, align 4
  %conv36 = zext i8 %55 to i32
  %cmp = icmp ult i32 %inc, %conv36
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %56 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef nonnull @.str.35) #16
  %58 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer, align 4
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %60 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %profi_port, align 4
  %add = add i32 %61, 44
  %and = and i32 %add, 1048575
  %add45 = or i32 %and, -18874368
  %62 = inttoptr i32 %add45 to ptr
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %62) #16, !srcloc !326
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !404
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %59, ptr noundef nonnull @.str.36, i32 noundef %64) #16
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.end
  %idx.1125 = phi i32 [ 0, %for.end ], [ %inc61, %for.body50.for.body50_crit_edge ]
  %65 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buffer, align 4
  %67 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port, align 4
  %add53 = add i32 %68, %idx.1125
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %69 = inttoptr i32 %add55 to ptr
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !405
  %conv59 = zext i8 %70 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %66, ptr noundef nonnull @.str.37, i32 noundef %idx.1125, i32 noundef %conv59) #16
  %inc61 = add nuw nsw i32 %idx.1125, 1
  %exitcond.not = icmp eq i32 %inc61, 32
  br i1 %exitcond.not, label %for.body50.for.body66_crit_edge, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body50

for.body50.for.body66_crit_edge:                  ; preds = %for.body50
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.body50.for.body66_crit_edge
  %idx.2126 = phi i32 [ %inc78, %for.body66.for.body66_crit_edge ], [ 0, %for.body50.for.body66_crit_edge ]
  %71 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buffer, align 4
  %73 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %profi_port, align 4
  %add70 = add i32 %74, %idx.2126
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %75 = inttoptr i32 %add72 to ptr
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !406
  %conv76 = zext i8 %76 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %72, ptr noundef nonnull @.str.38, i32 noundef %idx.2126, i32 noundef %conv76) #16
  %inc78 = add nuw nsw i32 %idx.2126, 1
  %exitcond127.not = icmp eq i32 %inc78, 48
  br i1 %exitcond127.not, label %for.end79, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body66

for.end79:                                        ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_midi_irq(ptr nocapture noundef readonly %ice, i8 noundef zeroext %flag, i32 noundef %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !380
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %neg = xor i8 %flag, -1
  %and4 = and i8 %3, %neg
  %or18 = or i8 %3, %flag
  %mask.0 = select i1 %tobool.not, i8 %or18, i8 %and4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !381
  tail call void @arm_heavy_mb() #16
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add10 = add i32 %5, 1
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %6 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %mask.0) #16, !srcloc !334
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vt1724_midi_write(ptr nocapture noundef readonly %ice) unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer) #16
  %rmidi.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 26
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  %1 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmidi.i, align 4
  %substreams.i = getelementptr %struct.snd_rawmidi, ptr %2, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %substreams.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %substreams.i, align 4
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add = add i32 %6, 10
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %7 = inttoptr i32 %add1 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !407
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %8)
  %cmp = icmp ult i8 %8, 31
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i8 %8 to i32
  %sub = sub nuw nsw i32 31, %conv
  %call5 = call i32 @snd_rawmidi_transmit(ptr noundef %4, ptr noundef nonnull %buffer, i32 noundef %sub) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp622 = icmp sgt i32 %call5, 0
  br i1 %cmp622, label %if.then.do.body_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.do.body_crit_edge:                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then.do.body_crit_edge
  %i.023 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %if.then.do.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !408
  call void @arm_heavy_mb() #16
  %arrayidx = getelementptr [32 x i8], ptr %buffer, i32 0, i32 %i.023
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add9 = add i32 %12, 12
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %13 = inttoptr i32 %add11 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #16, !srcloc !334
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %call5
  br i1 %exitcond.not, label %do.body.if.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %do.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call i32 @snd_rawmidi_transmit_empty(ptr noundef %4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not.not = icmp eq i32 %call13, 0
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add.i = add i32 %15, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add1.i to ptr
  %17 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #16, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !380
  %and4.i = and i8 %17, -33
  %masksel = select i1 %tobool.not.not, i8 0, i8 32
  %mask.0.i = or i8 %and4.i, %masksel
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !381
  call void @arm_heavy_mb() #16
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add10.i = add i32 %19, 1
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %20 = inttoptr i32 %add12.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %mask.0.i) #16, !srcloc !334
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ice1712_akm4xxx_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_playback_pro_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vt1724_pdma0_reg, ptr %private_data2, align 8
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 17
  %5 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %playback_pro_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @snd_vt1724_playback_pro, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #16
  %call = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %1, i32 noundef 0, i32 noundef 32, i32 noundef 24) #16
  %7 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime1, align 4
  %hw_rates.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 38
  %9 = ptrtoint ptr %hw_rates.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_rates.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %rate_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46, i32 3
  %15 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rate_min.i, align 4
  %16 = load ptr, ptr %hw_rates.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %count.i = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 4
  %sub.i = add i32 %20, -1
  %arrayidx5.i = getelementptr i32, ptr %18, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5.i, align 4
  %rate_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46, i32 4
  %23 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rate_max.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46, i32 2
  %24 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2147483648, ptr %rates.i, align 8
  %25 = load ptr, ptr %hw_rates.i, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %8, i32 noundef 0, i32 noundef 11, ptr noundef %25) #16
  %open_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 36
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #16
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 33
  %26 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_total_dacs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp45 = icmp ugt i32 %27, 3
  br i1 %cmp45, label %for.body.preheader, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %channels_max51 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 6
  %28 = ptrtoint ptr %channels_max51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %channels_max51, align 8
  br label %if.end8

for.body.preheader:                               ; preds = %entry
  %div41 = lshr i32 %27, 1
  %smax = add nsw i32 %div41, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %chs.046 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %3, i32 0, i32 37, i32 %chs.046
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %chs.046, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %chs.0.lcssa = phi i32 [ %smax, %for.inc.for.end_crit_edge ], [ %chs.046, %for.body.for.end_crit_edge ]
  %add = shl i32 %chs.0.lcssa, 1
  %mul = add i32 %add, 2
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 6
  %31 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %channels_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mul)
  %cmp5 = icmp sgt i32 %mul, 2
  br i1 %cmp5, label %if.then6, label %for.end.if.end8_crit_edge

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 10, i32 noundef 2) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.end.if.end8_crit_edge, %for.end.thread
  tail call void @mutex_unlock(ptr noundef %open_mutex) #16
  %call10 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 14, i32 noundef 32) #16
  %call11 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 18, i32 noundef 32) #16
  %32 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private_data, align 4
  %34 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %runtime1, align 4
  %is_spdif_master.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %33, i32 0, i32 50
  %36 = ptrtoint ptr %is_spdif_master.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %is_spdif_master.i.i, align 4
  %call.i.i = tail call i32 %37(ptr noundef %33) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %is_pro_rate_locked.exit.i, label %if.end8.constrain_rate_if_locked.exit_crit_edge

if.end8.constrain_rate_if_locked.exit_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

is_pro_rate_locked.exit.i:                        ; preds = %if.end8
  %38 = load i32, ptr @PRO_RATE_LOCKED, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool1.i.not.i = icmp eq i32 %38, 0
  br i1 %tobool1.i.not.i, label %is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge, label %if.then.i

is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %is_pro_rate_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

if.then.i:                                        ; preds = %is_pro_rate_locked.exit.i
  %get_rate.i = getelementptr inbounds %struct.snd_ice1712, ptr %33, i32 0, i32 51
  %39 = ptrtoint ptr %get_rate.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_rate.i, align 4
  %call2.i = tail call i32 %40(ptr noundef %33) #16
  %rate_min.i43 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 46, i32 3
  %41 = ptrtoint ptr %rate_min.i43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rate_min.i43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %42)
  %cmp.not.i = icmp ult i32 %call2.i, %42
  br i1 %cmp.not.i, label %if.then.i.constrain_rate_if_locked.exit_crit_edge, label %land.lhs.true.i

if.then.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %rate_max.i44 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 46, i32 4
  %43 = ptrtoint ptr %rate_max.i44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rate_max.i44, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %44)
  %cmp4.not.i = icmp ugt i32 %call2.i, %44
  br i1 %cmp4.not.i, label %land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge, label %if.then5.i

land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %45 = ptrtoint ptr %rate_min.i43 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call2.i, ptr %rate_min.i43, align 4
  %46 = ptrtoint ptr %rate_max.i44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call2.i, ptr %rate_max.i44, align 8
  br label %constrain_rate_if_locked.exit

constrain_rate_if_locked.exit:                    ; preds = %if.then5.i, %land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge, %if.then.i.constrain_rate_if_locked.exit_crit_edge, %is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge, %if.end8.constrain_rate_if_locked.exit_crit_edge
  %pro_open = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 58
  %47 = ptrtoint ptr %pro_open to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pro_open, align 4
  %tobool12.not = icmp eq ptr %48, null
  br i1 %tobool12.not, label %constrain_rate_if_locked.exit.if.end15_crit_edge, label %if.then13

constrain_rate_if_locked.exit.if.end15_crit_edge: ; preds = %constrain_rate_if_locked.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then13:                                        ; preds = %constrain_rate_if_locked.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %48(ptr noundef %3, ptr noundef %substream) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %constrain_rate_if_locked.exit.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_playback_pro_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pro_rate_default = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 49
  %3 = ptrtoint ptr %pro_rate_default to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pro_rate_default, align 4
  %call = tail call fastcc i32 @snd_vt1724_set_pro_rate(ptr noundef %1, i32 noundef %4, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %playback_pro_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pcm_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %open_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 36
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #16
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback_pro_substream, align 4
  %cmp = icmp eq ptr %5, %substream
  br i1 %cmp, label %if.then, label %for.body24.preheader

for.body24.preheader:                             ; preds = %entry
  %arrayidx25 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 15, i32 0
  %6 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx25, align 4
  %cmp26 = icmp eq ptr %7, %substream
  br i1 %cmp26, label %for.body24.preheader.if.then27_crit_edge, label %for.inc41

for.body24.preheader.if.then27_crit_edge:         ; preds = %for.body24.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp194 = icmp sgt i32 %3, 3
  br i1 %cmp194, label %for.body.preheader, label %if.then.for.body11.preheader_crit_edge

if.then.for.body11.preheader_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body11.preheader

for.body.preheader:                               ; preds = %if.then
  %div104105 = lshr i32 %3, 1
  %smax = add nsw i32 %div104105, -1
  br label %for.body

for.cond9.preheader:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax)
  %cmp1096 = icmp ult i32 %smax, 3
  br i1 %cmp1096, label %for.cond9.preheader.for.body11.preheader_crit_edge, label %for.cond9.preheader.if.end44_crit_edge

for.cond9.preheader.if.end44_crit_edge:           ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

for.cond9.preheader.for.body11.preheader_crit_edge: ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.cond9.preheader.for.body11.preheader_crit_edge, %if.then.for.body11.preheader_crit_edge
  %i.197.ph = phi i32 [ 0, %if.then.for.body11.preheader_crit_edge ], [ %smax, %for.cond9.preheader.for.body11.preheader_crit_edge ]
  br label %for.body11

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.095 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 37, i32 %i.095
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  %cmp4.not = icmp eq ptr %9, %substream
  %or.cond = or i1 %tobool.not, %cmp4.not
  br i1 %or.cond, label %if.end, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef %open_mutex) #16
  br label %cleanup

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.cond9.preheader, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body11:                                       ; preds = %for.inc19.for.body11_crit_edge, %for.body11.preheader
  %i.197 = phi i32 [ %inc20, %for.inc19.for.body11_crit_edge ], [ %i.197.ph, %for.body11.preheader ]
  %arrayidx13 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 37, i32 %i.197
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx13, align 4
  %cmp14 = icmp eq ptr %12, %substream
  br i1 %cmp14, label %if.then15, label %for.body11.for.inc19_crit_edge

for.body11.for.inc19_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc19

if.then15:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx13, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %if.then15, %for.body11.for.inc19_crit_edge
  %inc20 = add nuw nsw i32 %i.197, 1
  %exitcond100.not = icmp eq i32 %inc20, 3
  br i1 %exitcond100.not, label %for.inc19.if.end44_crit_edge, label %for.inc19.for.body11_crit_edge

for.inc19.for.body11_crit_edge:                   ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body11

for.inc19.if.end44_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then27:                                        ; preds = %for.inc41.1.if.then27_crit_edge, %for.inc41.if.then27_crit_edge, %for.body24.preheader.if.then27_crit_edge
  %i.293.lcssa = phi i32 [ 0, %for.body24.preheader.if.then27_crit_edge ], [ 1, %for.inc41.if.then27_crit_edge ], [ 2, %for.inc41.1.if.then27_crit_edge ]
  %arrayidx29 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 37, i32 %i.293.lcssa
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %15, null
  %cmp34.not = icmp eq ptr %15, %substream
  %or.cond88 = or i1 %tobool30.not, %cmp34.not
  br i1 %or.cond88, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef %open_mutex) #16
  br label %cleanup

if.end37:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %substream, ptr %arrayidx29, align 4
  br label %if.end44

for.inc41:                                        ; preds = %for.body24.preheader
  %arrayidx25.1 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx25.1, align 4
  %cmp26.1 = icmp eq ptr %18, %substream
  br i1 %cmp26.1, label %for.inc41.if.then27_crit_edge, label %for.inc41.1

for.inc41.if.then27_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then27

for.inc41.1:                                      ; preds = %for.inc41
  %arrayidx25.2 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 15, i32 2
  %19 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx25.2, align 4
  %cmp26.2 = icmp eq ptr %20, %substream
  br i1 %cmp26.2, label %for.inc41.1.if.then27_crit_edge, label %for.inc41.1.if.end44_crit_edge

for.inc41.1.if.end44_crit_edge:                   ; preds = %for.inc41.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

for.inc41.1.if.then27_crit_edge:                  ; preds = %for.inc41.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then27

if.end44:                                         ; preds = %for.inc41.1.if.end44_crit_edge, %if.end37, %for.inc19.if.end44_crit_edge, %for.cond9.preheader.if.end44_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #16
  %arrayidx.i.i89 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %arrayidx.i.i89 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i89, align 4
  %call47 = tail call fastcc i32 @snd_vt1724_set_pro_rate(ptr noundef %1, i32 noundef %22, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then35, %if.then5
  %retval.0 = phi i32 [ -16, %if.then5 ], [ %call47, %if.end44 ], [ -16, %if.then35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pcm_hw_free(ptr noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %open_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 36
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #16
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 37, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %3, %substream
  br i1 %cmp1, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 37, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.1 = icmp eq ptr %6, %substream
  br i1 %cmp1.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 37, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %cmp1.2 = icmp eq ptr %9, %substream
  br i1 %cmp1.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_playback_pro_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels, align 8
  %sub = sub i32 8, %5
  %shr = lshr i32 %sub, 1
  %conv = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !409
  tail call void @arm_heavy_mb() #16
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %profi_port, align 4
  %add = add i32 %7, 25
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !410
  tail call void @arm_heavy_mb() #16
  %9 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 51
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profi_port, align 4
  %add7 = add i32 %15, 16
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %16 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #16, !srcloc !330
  %17 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 21
  %21 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %22, %20
  %div1.i.i = lshr i32 %mul.i.i, 5
  %sub13 = add nsw i32 %div1.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !411
  tail call void @arm_heavy_mb() #16
  %conv17 = trunc i32 %sub13 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv17)
  %24 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %profi_port, align 4
  %add19 = add i32 %25, 20
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %26 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #16, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !412
  tail call void @arm_heavy_mb() #16
  %shr26 = lshr i32 %sub13, 16
  %conv27 = trunc i32 %shr26 to i8
  %27 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %profi_port, align 4
  %add30 = add i32 %28, 22
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %29 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv27) #16, !srcloc !334
  %30 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i73 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 21
  %34 = ptrtoint ptr %frame_bits.i.i73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_bits.i.i73, align 8
  %mul.i.i74 = mul i32 %35, %33
  %div1.i.i75 = lshr i32 %mul.i.i74, 5
  %sub36 = add nsw i32 %div1.i.i75, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !413
  tail call void @arm_heavy_mb() #16
  %conv40 = trunc i32 %sub36 to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv40)
  %37 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %profi_port, align 4
  %add42 = add i32 %38, 28
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %39 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #16, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !414
  tail call void @arm_heavy_mb() #16
  %shr49 = lshr i32 %sub36, 16
  %conv50 = trunc i32 %shr49 to i8
  %40 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %profi_port, align 4
  %add53 = add i32 %41, 30
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %42 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv50) #16, !srcloc !334
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pcm_trigger(ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn97 = load ptr, ptr %substreams, align 4
  %cmp.not99 = icmp eq ptr %.pn97, %substreams
  br i1 %cmp.not99, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn101 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn97, %entry.for.body_crit_edge ]
  %what.0100 = phi i8 [ %what.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %private_data3 = getelementptr i8, ptr %.pn101, i32 -132
  %5 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data3, align 4
  %cmp4 = icmp eq ptr %6, %1
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %runtime = getelementptr i8, ptr %.pn101, i32 -20
  %7 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime, align 4
  %private_data5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %private_data5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data5, align 8
  %start = getelementptr inbounds %struct.vt1724_pcm_reg, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start, align 4
  %13 = trunc i32 %12 to i8
  %conv6 = or i8 %what.0100, %13
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %substream, ptr %8, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %what.1 = phi i8 [ %conv6, %if.then ], [ %what.0100, %for.body.for.inc_crit_edge ]
  %15 = ptrtoint ptr %.pn101 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn101, align 4
  %16 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %group, align 4
  %substreams2 = getelementptr inbounds %struct.snd_pcm_group, ptr %17, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %what.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %what.1, %for.inc.for.end_crit_edge ]
  %18 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %cmd, label %for.end.cleanup_crit_edge [
    i32 3, label %for.end.sw.bb_crit_edge
    i32 4, label %for.end.sw.bb_crit_edge102
    i32 1, label %for.end.sw.bb33_crit_edge
    i32 0, label %for.end.sw.bb33_crit_edge103
    i32 5, label %for.end.sw.bb33_crit_edge104
    i32 6, label %for.end.sw.epilog_crit_edge
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.end.sw.bb33_crit_edge104:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb33

for.end.sw.bb33_crit_edge103:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb33

for.end.sw.bb33_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb33

for.end.sw.bb_crit_edge102:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

for.end.sw.bb_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %for.end.sw.bb_crit_edge, %for.end.sw.bb_crit_edge102
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #16
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %profi_port, align 4
  %add = add i32 %20, 27
  %and = and i32 %add, 1048575
  %add12 = or i32 %and, -18874368
  %21 = inttoptr i32 %add12 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !415
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd)
  %cmp15 = icmp eq i32 %cmd, 3
  %or2096 = or i8 %22, %what.0.lcssa
  %neg = xor i8 %what.0.lcssa, -1
  %and24 = and i8 %22, %neg
  %old.0 = select i1 %cmp15, i8 %or2096, i8 %and24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !416
  tail call void @arm_heavy_mb() #16
  %23 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %profi_port, align 4
  %add28 = add i32 %24, 27
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %25 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %old.0) #16, !srcloc !334
  br label %sw.epilog.sink.split

sw.bb33:                                          ; preds = %for.end.sw.bb33_crit_edge, %for.end.sw.bb33_crit_edge103, %for.end.sw.bb33_crit_edge104
  %reg_lock34 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %reg_lock34) #16
  %profi_port36 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %profi_port36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %profi_port36, align 4
  %add37 = add i32 %27, 24
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %28 = inttoptr i32 %add39 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !417
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp43 = icmp eq i32 %cmd, 1
  %or4895 = or i8 %29, %what.0.lcssa
  %neg52 = xor i8 %what.0.lcssa, -1
  %and54 = and i8 %29, %neg52
  %old.1 = select i1 %cmp43, i8 %or4895, i8 %and54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !418
  tail call void @arm_heavy_mb() #16
  %30 = ptrtoint ptr %profi_port36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %profi_port36, align 4
  %add61 = add i32 %31, 24
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %32 = inttoptr i32 %add63 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %old.1) #16, !srcloc !334
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb33, %sw.bb
  %reg_lock34.sink = phi ptr [ %reg_lock34, %sw.bb33 ], [ %reg_lock, %sw.bb ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock34.sink) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_playback_pro_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #16, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !419
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %profi_port, align 4
  %add6 = add i32 %8, 20
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %9 = inttoptr i32 %add8 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #16, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !420
  %11 = and i32 %10, -256
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %add13 = shl nuw nsw i32 %12, 5
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %13 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime, align 4
  %mul.i = add nuw nsw i32 %add13, 32
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %mul.i)
  %tobool15.not = icmp ugt i32 %16, %mul.i
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %if.end
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 18
  %17 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %div.i)
  %cmp.not = icmp ult i32 %18, %div.i
  br i1 %cmp.not, label %do.body, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %sub = sub i32 %18, %div.i
  br label %cleanup

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_vt1724_playback_pro_pointer.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_vt1724_playback_pro_pointer, %if.then27)) #16
          to label %cleanup [label %if.then27], !srcloc !396

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %23 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime, align 4
  %buffer_size29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %buffer_size29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_size29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_vt1724_playback_pro_pointer.__UNIQUE_ID_ddebug258, ptr noundef %22, ptr noundef nonnull @.str.65, i32 noundef %div.i, i32 noundef %26) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %sub, %if.then18 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_vt1724_set_pro_rate(ptr noundef %ice, i32 noundef %rate, i32 noundef %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rates = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 38
  %0 = ptrtoint ptr %hw_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_rates, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %count = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %sub = add i32 %5, -1
  %arrayidx = getelementptr i32, ptr %3, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rate)
  %cmp = icmp ult i32 %7, %rate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body2:                                         ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 27
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #16
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %8 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %profi_port, align 4
  %add = add i32 %9, 24
  %and = and i32 %add, 1048575
  %add7 = or i32 %and, -18874368
  %10 = inttoptr i32 %add7 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !421
  %12 = and i8 %11, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body2.if.then24_crit_edge

do.body2.if.then24_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

lor.lhs.false:                                    ; preds = %do.body2
  %13 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %profi_port, align 4
  %add15 = add i32 %14, 27
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %15 = inttoptr i32 %add17 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !422
  %17 = and i8 %16, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool23.not = icmp eq i8 %17, 0
  br i1 %tobool23.not, label %if.end29, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %do.body2.if.then24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call4) #16
  %cur_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 35
  %18 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %rate)
  %cmp26 = icmp eq i32 %19, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool28.not = icmp eq i32 %force, 0
  %20 = and i1 %tobool28.not, %cmp26
  %21 = select i1 %20, i32 0, i32 -16
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool30.not = icmp eq i32 %force, 0
  br i1 %tobool30.not, label %land.lhs.true, label %if.end29.if.then44_crit_edge

if.end29.if.then44_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44

land.lhs.true:                                    ; preds = %if.end29
  %is_spdif_master.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 50
  %22 = ptrtoint ptr %is_spdif_master.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %is_spdif_master.i, align 4
  %call.i = tail call i32 %23(ptr noundef %ice) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %is_pro_rate_locked.exit, label %land.lhs.true.lor.lhs.false41.critedge_crit_edge

land.lhs.true.lor.lhs.false41.critedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false41.critedge

is_pro_rate_locked.exit:                          ; preds = %land.lhs.true
  %24 = load i32, ptr @PRO_RATE_LOCKED, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool1.i.not = icmp eq i32 %24, 0
  br i1 %tobool1.i.not, label %is_pro_rate_locked.exit.lor.lhs.false41.critedge_crit_edge, label %if.then33

is_pro_rate_locked.exit.lor.lhs.false41.critedge_crit_edge: ; preds = %is_pro_rate_locked.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false41.critedge

if.then33:                                        ; preds = %is_pro_rate_locked.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call4) #16
  %cur_rate35 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 35
  %25 = ptrtoint ptr %cur_rate35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cur_rate35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %rate)
  %cmp36 = icmp eq i32 %26, %rate
  %cond38 = select i1 %cmp36, i32 0, i32 -16
  br label %cleanup

lor.lhs.false41.critedge:                         ; preds = %is_pro_rate_locked.exit.lor.lhs.false41.critedge_crit_edge, %land.lhs.true.lor.lhs.false41.critedge_crit_edge
  %27 = ptrtoint ptr %is_spdif_master.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %is_spdif_master.i, align 4
  %call42 = tail call i32 %28(ptr noundef %ice) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false41.critedge.if.then44_crit_edge, label %if.end63.critedge159

lor.lhs.false41.critedge.if.then44_crit_edge:     ; preds = %lor.lhs.false41.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false41.critedge.if.then44_crit_edge, %if.end29.if.then44_crit_edge
  %get_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 51
  %29 = ptrtoint ptr %get_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_rate, align 4
  %call45 = tail call i32 %30(ptr noundef %ice) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call45, i32 %rate)
  %cmp48.not = icmp eq i32 %call45, %rate
  %or.cond = select i1 %tobool30.not, i1 %cmp48.not, i1 false
  %cur_rate51 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 35
  br i1 %or.cond, label %if.else, label %if.end58

if.else:                                          ; preds = %if.then44
  %31 = ptrtoint ptr %cur_rate51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_rate51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %rate)
  %cmp52 = icmp eq i32 %32, %rate
  br i1 %cmp52, label %if.then54, label %if.end63.critedge

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call4) #16
  br label %cleanup

if.end58:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %cur_rate51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rate, ptr %cur_rate51, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call4) #16
  %set_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 52
  %34 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_rate, align 4
  tail call void %35(ptr noundef %ice, i32 noundef %rate) #16
  br label %if.end63

if.end63.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %cur_rate51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %rate, ptr %cur_rate51, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call4) #16
  br label %if.end63

if.end63.critedge159:                             ; preds = %lor.lhs.false41.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %cur_rate59.c160 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 35
  %37 = ptrtoint ptr %cur_rate59.c160 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %rate, ptr %cur_rate59.c160, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call4) #16
  br label %if.end63

if.end63:                                         ; preds = %if.end63.critedge159, %if.end63.critedge, %if.end58
  %set_mclk = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 53
  %38 = ptrtoint ptr %set_mclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_mclk, align 4
  %call64 = tail call zeroext i8 %39(ptr noundef %ice, i32 noundef %rate) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call64)
  %tobool66.not = icmp eq i8 %call64, 0
  br i1 %tobool66.not, label %if.end63.if.end72_crit_edge, label %land.lhs.true67

if.end63.if.end72_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

land.lhs.true67:                                  ; preds = %if.end63
  %i2s_mclk_changed = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 10
  %40 = ptrtoint ptr %i2s_mclk_changed to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2s_mclk_changed, align 4
  %tobool68.not = icmp eq ptr %41, null
  br i1 %tobool68.not, label %land.lhs.true67.if.end72_crit_edge, label %if.then69

land.lhs.true67.if.end72_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.then69:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %41(ptr noundef %ice) #16
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %land.lhs.true67.if.end72_crit_edge, %if.end63.if.end72_crit_edge
  %set_pro_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 9
  %42 = ptrtoint ptr %set_pro_rate to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_pro_rate, align 4
  %tobool74.not = icmp eq ptr %43, null
  br i1 %tobool74.not, label %if.end72.if.end78_crit_edge, label %if.then75

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %43(ptr noundef %ice, i32 noundef %rate) #16
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end72.if.end78_crit_edge
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %44 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %akm_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp79162.not = icmp eq i32 %45, 0
  br i1 %cmp79162.not, label %if.end78.for.end_crit_edge, label %for.body.lr.ph

if.end78.for.end_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end78
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %46 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %akm, align 4
  %set_rate_val = getelementptr %struct.snd_akm4xxx, ptr %47, i32 %i.0163, i32 11, i32 3
  %48 = ptrtoint ptr %set_rate_val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_rate_val, align 4
  %tobool82.not = icmp eq ptr %49, null
  br i1 %tobool82.not, label %for.body.for.inc_crit_edge, label %if.then83

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then83:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx81 = getelementptr %struct.snd_akm4xxx, ptr %47, i32 %i.0163
  tail call void %49(ptr noundef %arrayidx81, i32 noundef %rate) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then83, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0163, 1
  %50 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %akm_codecs, align 4
  %cmp79 = icmp ult i32 %inc, %51
  br i1 %cmp79, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end78.for.end_crit_edge
  %setup_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 1
  %52 = ptrtoint ptr %setup_rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %setup_rate, align 4
  %tobool92.not = icmp eq ptr %53, null
  br i1 %tobool92.not, label %for.end.cleanup_crit_edge, label %if.then93

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then93:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %53(ptr noundef %ice, i32 noundef %rate) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %for.end.cleanup_crit_edge, %if.then54, %if.then33, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then24 ], [ 0, %if.then54 ], [ %cond38, %if.then33 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then93 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_capture_pro_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vt1724_rdma0_reg, ptr %private_data2, align 8
  %capture_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %capture_pro_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %capture_pro_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @snd_vt1724_2ch_stereo, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #16
  %call = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 24) #16
  %7 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime1, align 4
  %hw_rates.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 38
  %9 = ptrtoint ptr %hw_rates.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_rates.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %rate_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46, i32 3
  %15 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rate_min.i, align 4
  %16 = load ptr, ptr %hw_rates.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %count.i = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 4
  %sub.i = add i32 %20, -1
  %arrayidx5.i = getelementptr i32, ptr %18, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5.i, align 4
  %rate_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46, i32 4
  %23 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rate_max.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46, i32 2
  %24 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2147483648, ptr %rates.i, align 8
  %25 = load ptr, ptr %hw_rates.i, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %8, i32 noundef 0, i32 noundef 11, ptr noundef %25) #16
  %call4 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 32) #16
  %call5 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 18, i32 noundef 32) #16
  %26 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private_data, align 4
  %28 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime1, align 4
  %is_spdif_master.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %27, i32 0, i32 50
  %30 = ptrtoint ptr %is_spdif_master.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %is_spdif_master.i.i, align 4
  %call.i.i = tail call i32 %31(ptr noundef %27) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %is_pro_rate_locked.exit.i, label %entry.constrain_rate_if_locked.exit_crit_edge

entry.constrain_rate_if_locked.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

is_pro_rate_locked.exit.i:                        ; preds = %entry
  %32 = load i32, ptr @PRO_RATE_LOCKED, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool1.i.not.i = icmp eq i32 %32, 0
  br i1 %tobool1.i.not.i, label %is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge, label %if.then.i

is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %is_pro_rate_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

if.then.i:                                        ; preds = %is_pro_rate_locked.exit.i
  %get_rate.i = getelementptr inbounds %struct.snd_ice1712, ptr %27, i32 0, i32 51
  %33 = ptrtoint ptr %get_rate.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_rate.i, align 4
  %call2.i = tail call i32 %34(ptr noundef %27) #16
  %rate_min.i22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 46, i32 3
  %35 = ptrtoint ptr %rate_min.i22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rate_min.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %36)
  %cmp.not.i = icmp ult i32 %call2.i, %36
  br i1 %cmp.not.i, label %if.then.i.constrain_rate_if_locked.exit_crit_edge, label %land.lhs.true.i

if.then.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %rate_max.i23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 46, i32 4
  %37 = ptrtoint ptr %rate_max.i23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rate_max.i23, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %38)
  %cmp4.not.i = icmp ugt i32 %call2.i, %38
  br i1 %cmp4.not.i, label %land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge, label %if.then5.i

land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %rate_min.i22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call2.i, ptr %rate_min.i22, align 4
  %40 = ptrtoint ptr %rate_max.i23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call2.i, ptr %rate_max.i23, align 8
  br label %constrain_rate_if_locked.exit

constrain_rate_if_locked.exit:                    ; preds = %if.then5.i, %land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge, %if.then.i.constrain_rate_if_locked.exit_crit_edge, %is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge, %entry.constrain_rate_if_locked.exit_crit_edge
  %pro_open = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 58
  %41 = ptrtoint ptr %pro_open to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pro_open, align 4
  %tobool.not = icmp eq ptr %42, null
  br i1 %tobool.not, label %constrain_rate_if_locked.exit.if.end_crit_edge, label %if.then

constrain_rate_if_locked.exit.if.end_crit_edge:   ; preds = %constrain_rate_if_locked.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %constrain_rate_if_locked.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %42(ptr noundef %1, ptr noundef %substream) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %constrain_rate_if_locked.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_capture_pro_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pro_rate_default = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 49
  %3 = ptrtoint ptr %pro_rate_default to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pro_rate_default, align 4
  %call = tail call fastcc i32 @snd_vt1724_set_pro_rate(ptr noundef %1, i32 noundef %4, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %capture_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %capture_pro_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %capture_pro_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pcm_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !423
  tail call void @arm_heavy_mb() #16
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %profi_port, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %add = add i32 %14, %12
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %15 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %10) #16, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !424
  tail call void @arm_heavy_mb() #16
  %16 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 21
  %20 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %21, %19
  %div1.i.i = lshr i32 %mul.i.i, 5
  %22 = trunc i32 %div1.i.i to i16
  %conv = add i16 %22, -1
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %24 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %profi_port, align 4
  %size = getelementptr inbounds %struct.vt1724_pcm_reg, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %add9 = add i32 %27, %25
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %28 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %23) #16, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !425
  tail call void @arm_heavy_mb() #16
  %29 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %runtime, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i37 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %30, i32 0, i32 21
  %33 = ptrtoint ptr %frame_bits.i.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %frame_bits.i.i37, align 8
  %mul.i.i38 = mul i32 %34, %32
  %div1.i.i39 = lshr i32 %mul.i.i38, 5
  %35 = trunc i32 %div1.i.i39 to i16
  %conv19 = add i16 %35, -1
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv19)
  %37 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %profi_port, align 4
  %count = getelementptr inbounds %struct.vt1724_pcm_reg, ptr %5, i32 0, i32 2
  %39 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count, align 4
  %add21 = add i32 %40, %38
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %41 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 %36) #16, !srcloc !364
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pcm_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %profi_port, align 4
  %add = add i32 %7, 24
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #16, !srcloc !326
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !426
  %start = getelementptr inbounds %struct.vt1724_pcm_reg, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start, align 4
  %and4 = and i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %profi_port, align 4
  %size = getelementptr inbounds %struct.vt1724_pcm_reg, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %add7 = add i32 %16, %14
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %17 = inttoptr i32 %add9 to ptr
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %17) #16, !srcloc !366
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !427
  %conv = zext i16 %19 to i32
  %add13 = shl nuw nsw i32 %conv, 5
  %20 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime, align 4
  %mul.i = add nuw nsw i32 %add13, 32
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %mul.i)
  %tobool16.not = icmp ugt i32 %23, %mul.i
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %if.end
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 18
  %24 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %div.i)
  %cmp.not = icmp ult i32 %25, %div.i
  br i1 %cmp.not, label %do.body, label %if.then20

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %sub = sub i32 %25, %div.i
  br label %cleanup

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_vt1724_pcm_pointer.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_vt1724_pcm_pointer, %if.then29)) #16
          to label %cleanup [label %if.then29], !srcloc !396

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %30 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime, align 4
  %buffer_size31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %buffer_size31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer_size31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_vt1724_pcm_pointer.__UNIQUE_ID_ddebug259, ptr noundef %29, ptr noundef nonnull @.str.65, i32 noundef %div.i, i32 noundef %33) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body, %if.then20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %sub, %if.then20 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_playback_spdif_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vt1724_pdma4_reg, ptr %private_data2, align 8
  %playback_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %playback_con_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %playback_con_substream, align 4
  %force_pdma4 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %force_pdma4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %force_pdma4, align 4
  %7 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %hw3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = call ptr @memcpy(ptr %hw3, ptr @snd_vt1724_2ch_stereo, i32 64)
  %9 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime1, align 4
  %hw_rates.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 38
  %11 = ptrtoint ptr %hw_rates.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_rates.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %rate_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 46, i32 3
  %17 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rate_min.i, align 4
  %18 = load ptr, ptr %hw_rates.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %count.i = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i, align 4
  %sub.i = add i32 %22, -1
  %arrayidx5.i = getelementptr i32, ptr %20, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx5.i, align 4
  %rate_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 46, i32 4
  %25 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rate_max.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 46, i32 2
  %26 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -2147483648, ptr %rates.i, align 8
  %27 = load ptr, ptr %hw_rates.i, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %10, i32 noundef 0, i32 noundef 11, ptr noundef %27) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %28 = call ptr @memcpy(ptr %hw3, ptr @snd_vt1724_spdif, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #16
  %call4 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 24) #16
  %call5 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 32) #16
  %call6 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 18, i32 noundef 32) #16
  %29 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private_data, align 4
  %31 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %runtime1, align 4
  %is_spdif_master.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %30, i32 0, i32 50
  %33 = ptrtoint ptr %is_spdif_master.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %is_spdif_master.i.i, align 4
  %call.i.i = tail call i32 %34(ptr noundef %30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %is_pro_rate_locked.exit.i, label %if.end.constrain_rate_if_locked.exit_crit_edge

if.end.constrain_rate_if_locked.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

is_pro_rate_locked.exit.i:                        ; preds = %if.end
  %35 = load i32, ptr @PRO_RATE_LOCKED, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool1.i.not.i, label %is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge, label %if.then.i

is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %is_pro_rate_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

if.then.i:                                        ; preds = %is_pro_rate_locked.exit.i
  %get_rate.i = getelementptr inbounds %struct.snd_ice1712, ptr %30, i32 0, i32 51
  %36 = ptrtoint ptr %get_rate.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_rate.i, align 4
  %call2.i = tail call i32 %37(ptr noundef %30) #16
  %rate_min.i30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 46, i32 3
  %38 = ptrtoint ptr %rate_min.i30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate_min.i30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %39)
  %cmp.not.i = icmp ult i32 %call2.i, %39
  br i1 %cmp.not.i, label %if.then.i.constrain_rate_if_locked.exit_crit_edge, label %land.lhs.true.i

if.then.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %rate_max.i31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 46, i32 4
  %40 = ptrtoint ptr %rate_max.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rate_max.i31, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %41)
  %cmp4.not.i = icmp ugt i32 %call2.i, %41
  br i1 %cmp4.not.i, label %land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge, label %if.then5.i

land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %rate_min.i30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call2.i, ptr %rate_min.i30, align 4
  %43 = ptrtoint ptr %rate_max.i31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call2.i, ptr %rate_max.i31, align 8
  br label %constrain_rate_if_locked.exit

constrain_rate_if_locked.exit:                    ; preds = %if.then5.i, %land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge, %if.then.i.constrain_rate_if_locked.exit_crit_edge, %is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge, %if.end.constrain_rate_if_locked.exit_crit_edge
  %ops = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %tobool7.not = icmp eq ptr %45, null
  br i1 %tobool7.not, label %constrain_rate_if_locked.exit.if.end12_crit_edge, label %if.then8

constrain_rate_if_locked.exit.if.end12_crit_edge: ; preds = %constrain_rate_if_locked.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then8:                                         ; preds = %constrain_rate_if_locked.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %45(ptr noundef %1, ptr noundef %substream) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %constrain_rate_if_locked.exit.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_playback_spdif_close(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pro_rate_default = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 49
  %3 = ptrtoint ptr %pro_rate_default to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pro_rate_default, align 4
  %call = tail call fastcc i32 @snd_vt1724_set_pro_rate(ptr noundef %1, i32 noundef %4, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %playback_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %playback_con_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %playback_con_substream, align 4
  %close = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3, i32 2
  %6 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %close, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %7(ptr noundef %1, ptr noundef %substream) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_playback_spdif_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %force_pdma4 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %force_pdma4 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %force_pdma4, align 4
  %3 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #16
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %profi_port.i, align 4
  %add.i = add i32 %9, 60
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add5.i to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #16, !srcloc !366
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !428
  %conv9.i = zext i16 %12 to i32
  %and10.i = and i32 %conv9.i, 36863
  %13 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %7, label %if.then.sw.epilog.i_crit_edge [
    i32 176400, label %sw.bb19.i
    i32 48000, label %sw.bb.i
    i32 32000, label %sw.bb11.i
    i32 88200, label %sw.bb13.i
    i32 96000, label %sw.bb15.i
    i32 192000, label %sw.bb17.i
  ]

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %or.i = or i32 %and10.i, 8192
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %or12.i = or i32 %and10.i, 12288
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %or14.i = or i32 %and10.i, 16384
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %or16.i = or i32 %and10.i, 20480
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %or18.i = or i32 %and10.i, 24576
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %or20.i = or i32 %conv9.i, 28672
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb19.i, %sw.bb17.i, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb.i, %if.then.sw.epilog.i_crit_edge
  %nval.0.i = phi i32 [ %and10.i, %if.then.sw.epilog.i_crit_edge ], [ %or18.i, %sw.bb17.i ], [ %or16.i, %sw.bb15.i ], [ %or14.i, %sw.bb13.i ], [ %or12.i, %sw.bb11.i ], [ %or.i, %sw.bb.i ], [ %or20.i, %sw.bb19.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nval.0.i, i32 %conv9.i)
  %cmp21.not.i = icmp eq i32 %nval.0.i, %conv9.i
  br i1 %cmp21.not.i, label %sw.epilog.i.update_spdif_rate.exit_crit_edge, label %if.then.i

sw.epilog.i.update_spdif_rate.exit_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %update_spdif_rate.exit

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @update_spdif_bits(ptr noundef %1, i32 noundef %nval.0.i) #16
  br label %update_spdif_rate.exit

update_spdif_rate.exit:                           ; preds = %if.then.i, %sw.epilog.i.update_spdif_rate.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #16
  br label %if.end

if.end:                                           ; preds = %update_spdif_rate.exit, %entry.if.end_crit_edge
  %call = tail call i32 @snd_vt1724_pcm_prepare(ptr noundef %substream)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_spdif_bits(ptr nocapture noundef readonly %ice, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !429
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %entry.do.body13_crit_edge, label %do.body

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %and3 = and i8 %3, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !430
  tail call void @arm_heavy_mb() #16
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add9 = add i32 %6, 7
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %7 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %and3) #16, !srcloc !334
  br label %do.body13

do.body13:                                        ; preds = %do.body, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !431
  tail call void @arm_heavy_mb() #16
  %conv16 = trunc i32 %val to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %9 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %profi_port, align 4
  %add17 = add i32 %10, 60
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %11 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %8) #16, !srcloc !364
  br i1 %4, label %do.body13.do.body35_crit_edge, label %do.body26

do.body13.do.body35_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body35

do.body26:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !432
  tail call void @arm_heavy_mb() #16
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add30 = add i32 %13, 7
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %14 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %3) #16, !srcloc !334
  br label %do.body35

do.body35:                                        ; preds = %do.body26, %do.body13.do.body35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !433
  tail call void @arm_heavy_mb() #16
  %15 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %profi_port, align 4
  %add40 = add i32 %16, 60
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %17 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %8) #16, !srcloc !364
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_capture_spdif_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vt1724_rdma1_reg, ptr %private_data2, align 8
  %capture_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %capture_con_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %capture_con_substream, align 4
  %force_rdma1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %force_rdma1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %force_rdma1, align 4
  %7 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %hw3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = call ptr @memcpy(ptr %hw3, ptr @snd_vt1724_2ch_stereo, i32 64)
  %9 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime1, align 4
  %hw_rates.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 38
  %11 = ptrtoint ptr %hw_rates.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_rates.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %rate_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 46, i32 3
  %17 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rate_min.i, align 4
  %18 = load ptr, ptr %hw_rates.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %count.i = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i, align 4
  %sub.i = add i32 %22, -1
  %arrayidx5.i = getelementptr i32, ptr %20, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx5.i, align 4
  %rate_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 46, i32 4
  %25 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rate_max.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 46, i32 2
  %26 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -2147483648, ptr %rates.i, align 8
  %27 = load ptr, ptr %hw_rates.i, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %10, i32 noundef 0, i32 noundef 11, ptr noundef %27) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %28 = call ptr @memcpy(ptr %hw3, ptr @snd_vt1724_spdif, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #16
  %call4 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 24) #16
  %call5 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 32) #16
  %call6 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 18, i32 noundef 32) #16
  %29 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private_data, align 4
  %31 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %runtime1, align 4
  %is_spdif_master.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %30, i32 0, i32 50
  %33 = ptrtoint ptr %is_spdif_master.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %is_spdif_master.i.i, align 4
  %call.i.i = tail call i32 %34(ptr noundef %30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %is_pro_rate_locked.exit.i, label %if.end.constrain_rate_if_locked.exit_crit_edge

if.end.constrain_rate_if_locked.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

is_pro_rate_locked.exit.i:                        ; preds = %if.end
  %35 = load i32, ptr @PRO_RATE_LOCKED, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool1.i.not.i, label %is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge, label %if.then.i

is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %is_pro_rate_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

if.then.i:                                        ; preds = %is_pro_rate_locked.exit.i
  %get_rate.i = getelementptr inbounds %struct.snd_ice1712, ptr %30, i32 0, i32 51
  %36 = ptrtoint ptr %get_rate.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_rate.i, align 4
  %call2.i = tail call i32 %37(ptr noundef %30) #16
  %rate_min.i30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 46, i32 3
  %38 = ptrtoint ptr %rate_min.i30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate_min.i30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %39)
  %cmp.not.i = icmp ult i32 %call2.i, %39
  br i1 %cmp.not.i, label %if.then.i.constrain_rate_if_locked.exit_crit_edge, label %land.lhs.true.i

if.then.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  %rate_max.i31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 46, i32 4
  %40 = ptrtoint ptr %rate_max.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rate_max.i31, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %41)
  %cmp4.not.i = icmp ugt i32 %call2.i, %41
  br i1 %cmp4.not.i, label %land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge, label %if.then5.i

land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %constrain_rate_if_locked.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %rate_min.i30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call2.i, ptr %rate_min.i30, align 4
  %43 = ptrtoint ptr %rate_max.i31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call2.i, ptr %rate_max.i31, align 8
  br label %constrain_rate_if_locked.exit

constrain_rate_if_locked.exit:                    ; preds = %if.then5.i, %land.lhs.true.i.constrain_rate_if_locked.exit_crit_edge, %if.then.i.constrain_rate_if_locked.exit_crit_edge, %is_pro_rate_locked.exit.i.constrain_rate_if_locked.exit_crit_edge, %if.end.constrain_rate_if_locked.exit_crit_edge
  %ops = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %tobool7.not = icmp eq ptr %45, null
  br i1 %tobool7.not, label %constrain_rate_if_locked.exit.if.end12_crit_edge, label %if.then8

constrain_rate_if_locked.exit.if.end12_crit_edge: ; preds = %constrain_rate_if_locked.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then8:                                         ; preds = %constrain_rate_if_locked.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %45(ptr noundef %1, ptr noundef %substream) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %constrain_rate_if_locked.exit.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_capture_spdif_close(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pro_rate_default = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 49
  %3 = ptrtoint ptr %pro_rate_default to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pro_rate_default, align 4
  %call = tail call fastcc i32 @snd_vt1724_set_pro_rate(ptr noundef %1, i32 noundef %4, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %capture_con_substream = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %capture_con_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %capture_con_substream, align 4
  %close = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 41, i32 3, i32 2
  %6 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %close, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %7(ptr noundef %1, ptr noundef %substream) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_playback_indep_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %open_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 36
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #16
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 37, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  tail call void @mutex_unlock(ptr noundef %open_mutex) #16
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %arrayidx5 = getelementptr [3 x %struct.vt1724_pcm_reg], ptr @vt1724_playback_dma_regs, i32 0, i32 %9
  %private_data6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %10 = ptrtoint ptr %private_data6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx5, ptr %private_data6, align 8
  %11 = load i32, ptr %number, align 4
  %arrayidx8 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 15, i32 %11
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %substream, ptr %arrayidx8, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %13 = call ptr @memcpy(ptr %hw, ptr @snd_vt1724_2ch_stereo, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #16
  %call = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 24) #16
  %14 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime1, align 4
  %hw_rates.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 38
  %16 = ptrtoint ptr %hw_rates.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_rates.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %rate_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 46, i32 3
  %22 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rate_min.i, align 4
  %23 = load ptr, ptr %hw_rates.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %count.i = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i, align 4
  %sub.i = add i32 %27, -1
  %arrayidx5.i = getelementptr i32, ptr %25, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx5.i, align 4
  %rate_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 46, i32 4
  %30 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rate_max.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 46, i32 2
  %31 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -2147483648, ptr %rates.i, align 8
  %32 = load ptr, ptr %hw_rates.i, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %15, i32 noundef 0, i32 noundef 11, ptr noundef %32) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_playback_indep_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pro_rate_default = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 49
  %3 = ptrtoint ptr %pro_rate_default to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pro_rate_default, align 4
  %call = tail call fastcc i32 @snd_vt1724_set_pro_rate(ptr noundef %1, i32 noundef %4, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 15, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  %8 = load i32, ptr %number, align 4
  %arrayidx2 = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 37, i32 %8
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_playback_indep_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %4 = trunc i32 %3 to i8
  %conv = sub i8 3, %4
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %profi_port, align 4
  %add = add i32 %6, 25
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %7 = inttoptr i32 %add1 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !434
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %conv)
  %cmp = icmp ult i8 %8, %conv
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !435
  tail call void @arm_heavy_mb() #16
  %9 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %profi_port, align 4
  %add7 = add i32 %10, 25
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %11 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #16, !srcloc !334
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  %call12 = tail call i32 @snd_vt1724_pcm_prepare(ptr noundef %substream)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_vt1724_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %tm.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65536
  br i1 %exitcond.not.i, label %do.body.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %tm.024.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port.i, align 4
  %add.i = add i32 %3, 5
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !436
  %6 = and i8 %5, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %.not.i = icmp eq i8 %6, 8
  br i1 %.not.i, label %for.body.i.snd_vt1724_ac97_ready.exit_crit_edge, label %for.cond.i

for.body.i.snd_vt1724_ac97_ready.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %snd_vt1724_ac97_ready.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_vt1724_ac97_ready.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_vt1724_ac97_write, %if.then14.i)) #16
          to label %snd_vt1724_ac97_ready.exit [label %if.then14.i], !srcloc !396

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_vt1724_ac97_ready.__UNIQUE_ID_ddebug254, ptr noundef %10, ptr noundef nonnull @.str.75) #16
  br label %snd_vt1724_ac97_ready.exit

snd_vt1724_ac97_ready.exit:                       ; preds = %if.then14.i, %do.body.i, %for.body.i.snd_vt1724_ac97_ready.exit_crit_edge
  %11 = and i8 %5, -36
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num, align 8
  %conv2 = trunc i16 %13 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !437
  tail call void @arm_heavy_mb() #16
  %conv5 = trunc i16 %reg to i8
  %14 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profi_port.i, align 4
  %add = add i32 %15, 4
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %16 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv5) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !438
  tail call void @arm_heavy_mb() #16
  %17 = tail call i16 @llvm.bswap.i16(i16 %val)
  %18 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %profi_port.i, align 4
  %add13 = add i32 %19, 6
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %20 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %17) #16, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !439
  tail call void @arm_heavy_mb() #16
  %or = or i8 %11, %conv2
  %21 = or i8 %or, 32
  %22 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %profi_port.i, align 4
  %add24 = add i32 %23, 5
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %24 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %21) #16, !srcloc !334
  br label %for.body.i43

for.cond.i39:                                     ; preds = %for.body.i43
  %inc.i37 = add nuw nsw i32 %tm.017.i, 1
  %exitcond.not.i38 = icmp eq i32 %inc.i37, 65536
  br i1 %exitcond.not.i38, label %do.body.i44, label %for.cond.i39.for.body.i43_crit_edge

for.cond.i39.for.body.i43_crit_edge:              ; preds = %for.cond.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.cond.i39.for.body.i43_crit_edge, %snd_vt1724_ac97_ready.exit
  %tm.017.i = phi i32 [ 0, %snd_vt1724_ac97_ready.exit ], [ %inc.i37, %for.cond.i39.for.body.i43_crit_edge ]
  %25 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %profi_port.i, align 4
  %add.i40 = add i32 %26, 5
  %and.i41 = and i32 %add.i40, 1048575
  %add1.i42 = or i32 %and.i41, -18874368
  %27 = inttoptr i32 %add1.i42 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !440
  %and415.i = and i8 %28, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and415.i)
  %cmp5.i = icmp eq i8 %and415.i, 0
  br i1 %cmp5.i, label %for.body.i43.snd_vt1724_ac97_wait_bit.exit_crit_edge, label %for.cond.i39

for.body.i43.snd_vt1724_ac97_wait_bit.exit_crit_edge: ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #18
  br label %snd_vt1724_ac97_wait_bit.exit

do.body.i44:                                      ; preds = %for.cond.i39
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_vt1724_ac97_wait_bit.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_vt1724_ac97_write, %if.then11.i)) #16
          to label %snd_vt1724_ac97_wait_bit.exit [label %if.then11.i], !srcloc !396

if.then11.i:                                      ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #18
  %card.i45 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %card.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card.i45, align 4
  %dev.i46 = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i46, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_vt1724_ac97_wait_bit.__UNIQUE_ID_ddebug255, ptr noundef %32, ptr noundef nonnull @.str.77) #16
  br label %snd_vt1724_ac97_wait_bit.exit

snd_vt1724_ac97_wait_bit.exit:                    ; preds = %if.then11.i, %do.body.i44, %for.body.i43.snd_vt1724_ac97_wait_bit.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_vt1724_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %tm.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65536
  br i1 %exitcond.not.i, label %do.body.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %tm.024.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port.i, align 4
  %add.i = add i32 %3, 5
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !436
  %6 = and i8 %5, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %.not.i = icmp eq i8 %6, 8
  br i1 %.not.i, label %for.body.i.snd_vt1724_ac97_ready.exit_crit_edge, label %for.cond.i

for.body.i.snd_vt1724_ac97_ready.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %snd_vt1724_ac97_ready.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_vt1724_ac97_ready.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_vt1724_ac97_read, %if.then14.i)) #16
          to label %snd_vt1724_ac97_ready.exit [label %if.then14.i], !srcloc !396

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_vt1724_ac97_ready.__UNIQUE_ID_ddebug254, ptr noundef %10, ptr noundef nonnull @.str.75) #16
  br label %snd_vt1724_ac97_ready.exit

snd_vt1724_ac97_ready.exit:                       ; preds = %if.then14.i, %do.body.i, %for.body.i.snd_vt1724_ac97_ready.exit_crit_edge
  %11 = and i8 %5, -20
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num, align 8
  %conv2 = trunc i16 %13 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !441
  tail call void @arm_heavy_mb() #16
  %conv5 = trunc i16 %reg to i8
  %14 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profi_port.i, align 4
  %add = add i32 %15, 4
  %and6 = and i32 %add, 1048575
  %add7 = or i32 %and6, -18874368
  %16 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv5) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !442
  tail call void @arm_heavy_mb() #16
  %or = or i8 %11, %conv2
  %17 = or i8 %or, 16
  %18 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %profi_port.i, align 4
  %add16 = add i32 %19, 5
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %20 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %17) #16, !srcloc !334
  br label %for.body.i43

for.cond.i39:                                     ; preds = %for.body.i43
  %inc.i37 = add nuw nsw i32 %tm.017.i, 1
  %exitcond.not.i38 = icmp eq i32 %inc.i37, 65536
  br i1 %exitcond.not.i38, label %do.body.i44, label %for.cond.i39.for.body.i43_crit_edge

for.cond.i39.for.body.i43_crit_edge:              ; preds = %for.cond.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.cond.i39.for.body.i43_crit_edge, %snd_vt1724_ac97_ready.exit
  %tm.017.i = phi i32 [ 0, %snd_vt1724_ac97_ready.exit ], [ %inc.i37, %for.cond.i39.for.body.i43_crit_edge ]
  %21 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %profi_port.i, align 4
  %add.i40 = add i32 %22, 5
  %and.i41 = and i32 %add.i40, 1048575
  %add1.i42 = or i32 %and.i41, -18874368
  %23 = inttoptr i32 %add1.i42 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !440
  %and415.i = and i8 %24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and415.i)
  %cmp5.i = icmp eq i8 %and415.i, 0
  br i1 %cmp5.i, label %if.end, label %for.cond.i39

do.body.i44:                                      ; preds = %for.cond.i39
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_vt1724_ac97_wait_bit.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_vt1724_ac97_read, %snd_vt1724_ac97_wait_bit.exit.thread)) #16
          to label %cleanup [label %snd_vt1724_ac97_wait_bit.exit.thread], !srcloc !396

snd_vt1724_ac97_wait_bit.exit.thread:             ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #18
  %card.i45 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %card.i45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card.i45, align 4
  %dev.i46 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev.i46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i46, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_vt1724_ac97_wait_bit.__UNIQUE_ID_ddebug255, ptr noundef %28, ptr noundef nonnull @.str.77) #16
  br label %cleanup

if.end:                                           ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %profi_port.i, align 4
  %add23 = add i32 %30, 6
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %31 = inttoptr i32 %add25 to ptr
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %31) #16, !srcloc !366
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !443
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_vt1724_ac97_wait_bit.exit.thread, %do.body.i44
  %retval.0 = phi i16 [ %33, %if.end ], [ -1, %snd_vt1724_ac97_wait_bit.exit.thread ], [ -1, %do.body.i44 ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_vt1724_eeprom_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
define internal i32 @snd_vt1724_eeprom_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pro_internal_clock_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hw_rates = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %hw_rates to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_rates, align 4
  %count = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %type, align 8
  %count1 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %7 = ptrtoint ptr %count1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %count1, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %value, align 8
  %force_rdma1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %force_rdma1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %force_rdma1, align 4
  %10 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 29, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %ext_clock_count = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 57
  %14 = ptrtoint ptr %ext_clock_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ext_clock_count, align 4
  %add = add i32 %15, %5
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %item = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %item, align 4
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not = icmp ult i32 %18, %20
  br i1 %cmp.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add i32 %20, -1
  %21 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %item, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %22 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %item, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %5)
  %cmp17.not = icmp ult i32 %23, %5
  %name26 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  br i1 %cmp17.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %ext_clock_names = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 56
  %24 = ptrtoint ptr %ext_clock_names to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ext_clock_names, align 4
  %sub23 = sub i32 %23, %5
  %arrayidx24 = getelementptr ptr, ptr %25, i32 %sub23
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx24, align 4
  %call = tail call ptr @strcpy(ptr noundef %name26, ptr noundef %27) #20
  br label %if.end33

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %hw_rates to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_rates, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %arrayidx31 = getelementptr i32, ptr %31, i32 %23
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx31, align 4
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name26, ptr noundef nonnull @.str.80, i32 noundef %33)
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pro_internal_clock_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  %is_spdif_master = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %is_spdif_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_spdif_master, align 4
  %call = tail call i32 %3(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %hw_rates = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %hw_rates to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_rates, align 4
  %count = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %get_spdif_master_type = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 55
  %8 = ptrtoint ptr %get_spdif_master_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_spdif_master_type, align 4
  %call1 = tail call i32 %9(ptr noundef %1) #16
  %add = add i32 %call1, %7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %value, align 8
  br label %if.end13

if.else:                                          ; preds = %entry
  %get_rate = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 51
  %11 = ptrtoint ptr %get_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_rate, align 4
  %call2 = tail call i32 %12(ptr noundef %1) #16
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %value3, align 8
  %hw_rates5 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 38
  %14 = ptrtoint ptr %hw_rates5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_rates5, align 4
  %count6 = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp31.not = icmp eq i32 %17, 0
  br i1 %cmp31.not, label %if.else.if.end13_crit_edge, label %for.body.lr.ph

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

for.body.lr.ph:                                   ; preds = %if.else
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx8 = getelementptr i32, ptr %19, i32 %i.032
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %call2)
  %cmp9 = icmp eq i32 %21, %call2
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %value3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.032, ptr %value3, align 8
  br label %if.end13

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.inc.if.end13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end13:                                         ; preds = %for.inc.if.end13_crit_edge, %if.then10, %if.else.if.end13_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pro_internal_clock_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %hw_rates = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %hw_rates to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_rates, align 4
  %count = getelementptr inbounds %struct.snd_pcm_hw_constraint_list, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %ext_clock_count = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 57
  %8 = ptrtoint ptr %ext_clock_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ext_clock_count, align 4
  %add = add i32 %7, -1
  %sub = add i32 %add, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp = icmp ugt i32 %3, %sub
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  %is_spdif_master = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 50
  %10 = ptrtoint ptr %is_spdif_master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is_spdif_master, align 4
  %call = tail call i32 %11(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %get_rate = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 51
  %12 = ptrtoint ptr %get_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_rate, align 4
  %call2 = tail call i32 %13(ptr noundef %1) #16
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end.if.end3_crit_edge
  %old_rate.0 = phi i32 [ %call2, %if.else ], [ 0, %if.end.if.end3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp4.not = icmp ult i32 %3, %7
  br i1 %cmp4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %set_spdif_clock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 54
  %14 = ptrtoint ptr %set_spdif_clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_spdif_clock, align 4
  %sub6 = sub i32 %3, %7
  %call7 = tail call i32 %15(ptr noundef %1, i32 noundef %sub6) #16
  br label %if.end15

if.else8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %hw_rates to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_rates, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %arrayidx10 = getelementptr i32, ptr %19, i32 %3
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10, align 4
  %pro_rate_default = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 49
  %22 = ptrtoint ptr %pro_rate_default to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pro_rate_default, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  %23 = ptrtoint ptr %pro_rate_default to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pro_rate_default, align 4
  %call13 = tail call fastcc i32 @snd_vt1724_set_pro_rate(ptr noundef %1, i32 noundef %24, i32 noundef 1)
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  br label %if.end15

if.end15:                                         ; preds = %if.else8, %if.then5
  %new_rate.0 = phi i32 [ 0, %if.then5 ], [ %21, %if.else8 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %old_rate.0, i32 %new_rate.0)
  %cmp17 = icmp ne i32 %old_rate.0, %new_rate.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_rate.0)
  %tobool18.not = icmp eq i32 %new_rate.0, 0
  %or.cond = and i1 %cmp17, %tobool18.not
  br i1 %or.cond, label %if.then19, label %if.end15.if.end36_crit_edge

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then19:                                        ; preds = %if.end15
  %set_pro_rate = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 9
  %25 = ptrtoint ptr %set_pro_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_pro_rate, align 4
  %tobool20.not = icmp eq ptr %26, null
  br i1 %tobool20.not, label %if.then19.if.end24_crit_edge, label %if.then21

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %26(ptr noundef %1, i32 noundef 0) #16
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then19.if.end24_crit_edge
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 39
  %27 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %akm_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2580.not = icmp eq i32 %28, 0
  br i1 %cmp2580.not, label %if.end24.if.end36_crit_edge, label %for.body.lr.ph

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

for.body.lr.ph:                                   ; preds = %if.end24
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %akm, align 4
  %set_rate_val = getelementptr %struct.snd_akm4xxx, ptr %30, i32 %i.081, i32 11, i32 3
  %31 = ptrtoint ptr %set_rate_val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_rate_val, align 4
  %tobool27.not = icmp eq ptr %32, null
  br i1 %tobool27.not, label %for.body.for.inc_crit_edge, label %if.then28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx26 = getelementptr %struct.snd_akm4xxx, ptr %30, i32 %i.081
  tail call void %32(ptr noundef %arrayidx26, i32 noundef 0) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.081, 1
  %33 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %akm_codecs, align 4
  %cmp25 = icmp ult i32 %inc, %34
  br i1 %cmp25, label %for.inc.for.body_crit_edge, label %for.inc.if.end36_crit_edge

for.inc.if.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end36:                                         ; preds = %for.inc.if.end36_crit_edge, %if.end24.if.end36_crit_edge, %if.end15.if.end36_crit_edge
  %conv = zext i1 %cmp17 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end36 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_vt1724_pro_rate_locking_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @PRO_RATE_LOCKED, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pro_rate_locking_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  %4 = load i32, ptr @PRO_RATE_LOCKED, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cond)
  %cmp = icmp ne i32 %4, %cond
  %conv = zext i1 %cmp to i32
  store i32 %cond, ptr @PRO_RATE_LOCKED, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_vt1724_pro_rate_reset_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @PRO_RATE_RESET, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp ne i32 %0, 0
  %cond = zext i1 %tobool.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pro_rate_reset_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  %4 = load i32, ptr @PRO_RATE_RESET, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cond)
  %cmp = icmp ne i32 %4, %cond
  %conv = zext i1 %cmp to i32
  store i32 %cond, ptr @PRO_RATE_RESET, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pro_route_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @snd_vt1724_pro_route_info.texts) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pro_route_analog_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #16, !srcloc !444
  %and.i = and i32 %8, %sub.i
  %and.i.frozen = freeze i32 %and.i
  %div.i = sdiv i32 %and.i.frozen, 2
  %9 = mul i32 %div.i, 2
  %rem.i.decomposed = sub i32 %and.i.frozen, %9
  %mul.i = mul nsw i32 %rem.i.decomposed, 12
  %mul1.i = mul i32 %div.i, 3
  %add.i = add i32 %mul1.i, 8
  %add2.i = add i32 %add.i, %mul.i
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %profi_port.i, align 4
  %add.i5 = add i32 %11, 44
  %and.i6 = and i32 %add.i5, 1048575
  %add1.i = or i32 %and.i6, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #16, !srcloc !326
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !327
  %shr.i = lshr i32 %14, %add2.i
  %and3.i = and i32 %shr.i, 7
  %15 = lshr i32 50, %and3.i
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2031, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %snd_ice1724_get_route_val.exit

if.end21.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr [8 x i8], ptr @snd_ice1724_get_route_val.xlate, i32 0, i32 %and3.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %18 to i32
  br label %snd_ice1724_get_route_val.exit

snd_ice1724_get_route_val.exit:                   ; preds = %if.end21.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %conv.i, %if.end21.i ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pro_route_analog_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #16, !srcloc !444
  %and.i = and i32 %8, %sub.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %and.i.frozen = freeze i32 %and.i
  %div.i = sdiv i32 %and.i.frozen, 2
  %11 = mul i32 %div.i, 2
  %rem.i.decomposed = sub i32 %and.i.frozen, %11
  %mul.i = mul nsw i32 %rem.i.decomposed, 12
  %mul1.i = mul i32 %div.i, 3
  %add.i = add i32 %mul1.i, 8
  %add2.i = add i32 %add.i, %mul.i
  %rem.i5 = urem i32 %10, 5
  %arrayidx.i = getelementptr [8 x i8], ptr @snd_ice1724_put_route_val.xroute, i32 0, i32 %rem.i5
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %profi_port.i, align 4
  %add.i6 = add i32 %15, 44
  %and.i7 = and i32 %add.i6, 1048575
  %add1.i = or i32 %and.i7, -18874368
  %16 = inttoptr i32 %add1.i to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #16, !srcloc !326
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !328
  %shl.i = shl i32 7, %add2.i
  %neg.i = xor i32 %shl.i, -1
  %and3.i = and i32 %18, %neg.i
  %shl4.i = shl i32 %conv.i, %add2.i
  %or.i = or i32 %and3.i, %shl4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %18)
  %cmp.i = icmp ne i32 %or.i, %18
  br i1 %cmp.i, label %do.body.i, label %entry.snd_ice1724_put_route_val.exit_crit_edge

entry.snd_ice1724_put_route_val.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %snd_ice1724_put_route_val.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !329
  tail call void @arm_heavy_mb() #16
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #16
  %20 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %profi_port.i, align 4
  %add7.i = add i32 %21, 44
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %22 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #16, !srcloc !330
  br label %snd_ice1724_put_route_val.exit

snd_ice1724_put_route_val.exit:                   ; preds = %do.body.i, %entry.snd_ice1724_put_route_val.exit_crit_edge
  %conv5.i = zext i1 %cmp.i to i32
  ret i32 %conv5.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_vt1724_pro_peak_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
define internal i32 @snd_vt1724_pro_peak_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %idx.016 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !445
  tail call void @arm_heavy_mb() #16
  %conv = trunc i32 %idx.016 to i8
  %2 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %profi_port, align 4
  %add = add i32 %3, 62
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #16, !srcloc !334
  %5 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %profi_port, align 4
  %add3 = add i32 %6, 63
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %7 = inttoptr i32 %add5 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !446
  %conv8 = zext i8 %8 to i32
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.016
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv8, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %idx.016, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

for.end:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pro_route_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #16, !srcloc !444
  %and.i = and i32 %8, %sub.i
  %mul.i = mul i32 %and.i, 3
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %profi_port.i, align 4
  %add.i = add i32 %10, 44
  %and.i5 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i5, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #16, !srcloc !326
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !327
  %shr.i = lshr i32 %13, %mul.i
  %and3.i = and i32 %shr.i, 7
  %14 = lshr i32 50, %and3.i
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2031, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %snd_ice1724_get_route_val.exit

if.end21.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr [8 x i8], ptr @snd_ice1724_get_route_val.xlate, i32 0, i32 %and3.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %17 to i32
  br label %snd_ice1724_get_route_val.exit

snd_ice1724_get_route_val.exit:                   ; preds = %if.end21.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %conv.i, %if.end21.i ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_pro_route_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #16, !srcloc !444
  %and.i = and i32 %8, %sub.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %mul.i = mul i32 %and.i, 3
  %rem.i = urem i32 %10, 5
  %arrayidx.i = getelementptr [8 x i8], ptr @snd_ice1724_put_route_val.xroute, i32 0, i32 %rem.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %profi_port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %profi_port.i, align 4
  %add.i = add i32 %14, 44
  %and.i5 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i5, -18874368
  %15 = inttoptr i32 %add1.i to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #16, !srcloc !326
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !328
  %shl.i = shl i32 7, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and3.i = and i32 %17, %neg.i
  %shl4.i = shl i32 %conv.i, %mul.i
  %or.i = or i32 %and3.i, %shl4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %17)
  %cmp.i = icmp ne i32 %or.i, %17
  br i1 %cmp.i, label %do.body.i, label %entry.snd_ice1724_put_route_val.exit_crit_edge

entry.snd_ice1724_put_route_val.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %snd_ice1724_put_route_val.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !329
  tail call void @arm_heavy_mb() #16
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #16
  %19 = ptrtoint ptr %profi_port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %profi_port.i, align 4
  %add7.i = add i32 %20, 44
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %21 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %18) #16, !srcloc !330
  br label %snd_ice1724_put_route_val.exit

snd_ice1724_put_route_val.exit:                   ; preds = %do.body.i, %entry.snd_ice1724_put_route_val.exit_crit_edge
  %conv5.i = zext i1 %cmp.i to i32
  ret i32 %conv5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_spdif_sw_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !447
  %call2.lobit = lshr i8 %5, 7
  %6 = zext i8 %call2.lobit to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_spdif_sw_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !448
  %and3 = and i8 %5, 127
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %masksel = select i1 %tobool.not, i8 0, i8 -128
  %spec.select = or i8 %masksel, %and3
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %spec.select)
  %cmp = icmp ne i8 %5, %spec.select
  br i1 %cmp, label %do.body, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !449
  tail call void @arm_heavy_mb() #16
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add12 = add i32 %9, 7
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %10 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %spec.select) #16, !srcloc !334
  br label %if.end16

if.end16:                                         ; preds = %do.body, %entry.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  %conv21 = zext i1 %cmp to i32
  ret i32 %conv21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_vt1724_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
define internal i32 @snd_vt1724_spdif_default_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #16, !srcloc !366
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !450
  %conv = zext i16 %6 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = getelementptr i8, ptr %value, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 23)
  %9 = trunc i16 %6 to i8
  %conv.i = and i8 %9, 3
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %value, align 1
  %and2.i = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %and3.i = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = or i8 %conv.i, 12
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %value, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %shr.i = lshr i32 %conv, 12
  %and10.i = and i32 %shr.i, 7
  %13 = zext i32 %and10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %and10.i, label %sw.default.i [
    i32 0, label %if.end.i.decode_spdif_bits.exit_crit_edge
    i32 2, label %sw.bb.i
  ]

if.end.i.decode_spdif_bits.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %decode_spdif_bits.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %value, align 1
  %16 = or i8 %15, -64
  store i8 %16, ptr %value, align 1
  br label %decode_spdif_bits.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %value, align 1
  %19 = or i8 %18, -128
  store i8 %19, ptr %value, align 1
  br label %decode_spdif_bits.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %20 = and i8 %9, 15
  %21 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %value, align 1
  %shr36.i = lshr i16 %6, 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %7, align 1
  %24 = trunc i16 %shr36.i to i8
  %25 = and i8 %24, 63
  %conv42.i = or i8 %23, %25
  store i8 %conv42.i, ptr %7, align 1
  %shr43.i = lshr i16 %6, 12
  %arrayidx46.i = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx46.i, align 1
  %28 = trunc i16 %shr43.i to i8
  %29 = and i8 %28, 7
  %conv49.i = or i8 %27, %29
  store i8 %conv49.i, ptr %arrayidx46.i, align 1
  br label %decode_spdif_bits.exit

decode_spdif_bits.exit:                           ; preds = %if.else.i, %sw.default.i, %sw.bb.i, %if.end.i.decode_spdif_bits.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_spdif_default_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 1
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 3
  %and1.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.else30.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %and5.i = and i32 %conv.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and5.i)
  %cmp.i = icmp eq i32 %and5.i, 12
  %or.i = or i32 %and.i, 8
  %spec.select.i = select i1 %cmp.i, i32 %or.i, i32 %and.i
  %arrayidx9.i = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9.i, align 1
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not.i = icmp eq i8 %7, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then.i
  %and11.i = zext i8 %7 to i32
  %8 = zext i32 %and11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %and11.i, label %if.then13.i.encode_spdif_bits.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb15.i
    i32 10, label %sw.bb17.i
    i32 11, label %sw.bb19.i
  ]

if.then13.i.encode_spdif_bits.exit_crit_edge:     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %encode_spdif_bits.exit

sw.bb.i:                                          ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  %or14.i = or i32 %spec.select.i, 20480
  br label %encode_spdif_bits.exit

sw.bb15.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  %or16.i = or i32 %spec.select.i, 24576
  br label %encode_spdif_bits.exit

sw.bb17.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  %or18.i = or i32 %spec.select.i, 16384
  br label %encode_spdif_bits.exit

sw.bb19.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  %or20.i = or i32 %spec.select.i, 28672
  br label %encode_spdif_bits.exit

if.else.i:                                        ; preds = %if.then.i
  %9 = and i8 %3, -64
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %9, label %sw.default.i [
    i8 64, label %if.else.i.encode_spdif_bits.exit_crit_edge
    i8 -64, label %sw.bb25.i
  ]

if.else.i.encode_spdif_bits.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %encode_spdif_bits.exit

sw.bb25.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %or26.i = or i32 %spec.select.i, 12288
  br label %encode_spdif_bits.exit

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %or27.i = or i32 %spec.select.i, 8192
  br label %encode_spdif_bits.exit

if.else30.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx32.i = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx32.i, align 1
  %13 = and i8 %12, 4
  %and34.i = zext i8 %13 to i32
  %or35.i = or i32 %and.i, %and34.i
  %and39.i = and i32 %conv.i, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and39.i)
  %cmp40.i = icmp eq i32 %and39.i, 8
  %or43.i = or i32 %or35.i, 8
  %spec.select77.i = select i1 %cmp40.i, i32 %or43.i, i32 %or35.i
  %14 = and i8 %12, 63
  %and48.i = zext i8 %14 to i32
  %shl.i = shl nuw nsw i32 %and48.i, 4
  %or49.i = or i32 %spec.select77.i, %shl.i
  %arrayidx51.i = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx51.i, align 1
  %17 = and i8 %16, 15
  %and53.i = zext i8 %17 to i32
  %shl54.i = shl nuw nsw i32 %and53.i, 12
  %or55.i = or i32 %or49.i, %shl54.i
  br label %encode_spdif_bits.exit

encode_spdif_bits.exit:                           ; preds = %if.else30.i, %sw.default.i, %sw.bb25.i, %if.else.i.encode_spdif_bits.exit_crit_edge, %sw.bb19.i, %sw.bb17.i, %sw.bb15.i, %sw.bb.i, %if.then13.i.encode_spdif_bits.exit_crit_edge
  %val.2.i = phi i32 [ %spec.select.i, %if.then13.i.encode_spdif_bits.exit_crit_edge ], [ %or20.i, %sw.bb19.i ], [ %or18.i, %sw.bb17.i ], [ %or16.i, %sw.bb15.i ], [ %or14.i, %sw.bb.i ], [ %or27.i, %sw.default.i ], [ %or26.i, %sw.bb25.i ], [ %spec.select.i, %if.else.i.encode_spdif_bits.exit_crit_edge ], [ %or55.i, %if.else30.i ]
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %profi_port, align 4
  %add = add i32 %19, 60
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %20 = inttoptr i32 %add1 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #16, !srcloc !366
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !451
  %conv = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %val.2.i, i32 %conv)
  %cmp = icmp ne i32 %val.2.i, %conv
  br i1 %cmp, label %if.then, label %encode_spdif_bits.exit.if.end_crit_edge

encode_spdif_bits.exit.if.end_crit_edge:          ; preds = %encode_spdif_bits.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %encode_spdif_bits.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @update_spdif_bits(ptr noundef %1, i32 noundef %val.2.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %encode_spdif_bits.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  %conv7 = zext i1 %cmp to i32
  ret i32 %conv7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_vt1724_spdif_maskc_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 63, ptr %value, align 8
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %arrayidx6, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_vt1724_spdif_maskp_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -33, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vt1724_midi_output_open(ptr nocapture noundef readnone %s) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vt1724_midi_output_close(ptr nocapture noundef readnone %s) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt1724_midi_output_trigger(ptr nocapture noundef readonly %s, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 27
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %midi_output5 = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %midi_output5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load6 = load i16, ptr %midi_output5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bf.set = or i16 %bf.load6, 256
  %5 = ptrtoint ptr %midi_output5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %bf.set, ptr %midi_output5, align 4
  tail call fastcc void @vt1724_midi_write(ptr noundef %3)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear7 = and i16 %bf.load6, -257
  %6 = ptrtoint ptr %midi_output5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %bf.clear7, ptr %midi_output5, align 4
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add.i = add i32 %8, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !380
  %or18.i = or i8 %10, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !381
  tail call void @arm_heavy_mb() #16
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add10.i = add i32 %12, 1
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %13 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %or18.i) #16, !srcloc !334
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt1724_midi_output_drain(ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #16
  %port.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %5, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !380
  %or18.i.i = or i8 %7, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !381
  tail call void @arm_heavy_mb() #16
  %8 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i.i, align 4
  %add10.i.i = add i32 %9, 1
  %and11.i.i = and i32 %add10.i.i, 1048575
  %add12.i.i = or i32 %and11.i.i, -18874368
  %10 = inttoptr i32 %add12.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %or18.i.i) #16, !srcloc !334
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -2, %11
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %12 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i.i, align 4
  %add1 = add i32 %13, 13
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %14 = inttoptr i32 %add2 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !452
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end:                                           ; preds = %do.body
  %call6 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %17
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1724_midi_input_open(ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 4
  %add.i = add i32 %5, 11
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not14.i = icmp eq i8 %7, 0
  br i1 %cmp.not14.i, label %entry.vt1724_midi_clear_rx.exit_crit_edge, label %for.body.preheader.i

entry.vt1724_midi_clear_rx.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %vt1724_midi_clear_rx.exit

for.body.preheader.i:                             ; preds = %entry
  %conv.i = zext i8 %7 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %count.015.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add6.i = add i32 %9, 12
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %10 = inttoptr i32 %add8.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !385
  %dec.i = add nsw i32 %count.015.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.body.i.vt1724_midi_clear_rx.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.vt1724_midi_clear_rx.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vt1724_midi_clear_rx.exit

vt1724_midi_clear_rx.exit:                        ; preds = %for.body.i.vt1724_midi_clear_rx.exit_crit_edge, %entry.vt1724_midi_clear_rx.exit_crit_edge
  %12 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmidi, align 4
  %private_data.i = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_ice1712, ptr %15, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #16
  %port.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %17, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %18 = inttoptr i32 %add1.i.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !380
  %and4.i.i = and i8 %19, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !381
  tail call void @arm_heavy_mb() #16
  %20 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i.i, align 4
  %add10.i.i = add i32 %21, 1
  %and11.i.i = and i32 %add10.i.i, 1048575
  %add12.i.i = or i32 %and11.i.i, -18874368
  %22 = inttoptr i32 %add12.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %and4.i.i) #16, !srcloc !334
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt1724_midi_input_close(ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #16
  %port.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %5, 1
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !380
  %or18.i.i = or i8 %7, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !381
  tail call void @arm_heavy_mb() #16
  %8 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i.i, align 4
  %add10.i.i = add i32 %9, 1
  %and11.i.i = and i32 %add10.i.i, 1048575
  %add12.i.i = or i32 %and11.i.i, -18874368
  %10 = inttoptr i32 %add12.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %or18.i.i) #16, !srcloc !334
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vt1724_midi_input_trigger(ptr nocapture noundef readonly %s, i32 noundef %up) #0 align 64 {
entry:
  %buffer.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 27
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %midi_input5 = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %midi_input5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load6 = load i16, ptr %midi_input5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bf.set = or i16 %bf.load6, 128
  %5 = ptrtoint ptr %midi_input5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %bf.set, ptr %midi_input5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer.i) #16
  %rmidi.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 26
  %6 = call ptr @memset(ptr %buffer.i, i32 255, i32 32)
  %7 = ptrtoint ptr %rmidi.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmidi.i.i, align 4
  %substreams.i.i = getelementptr %struct.snd_rawmidi, ptr %8, i32 0, i32 8, i32 1, i32 2
  %9 = ptrtoint ptr %substreams.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %substreams.i.i, align 4
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add.i = add i32 %12, 11
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add1.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !382
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 0
  br i1 %cmp.not.i, label %if.then.vt1724_midi_read.exit_crit_edge, label %if.then.i

if.then.vt1724_midi_read.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %vt1724_midi_read.exit

if.then.i:                                        ; preds = %if.then
  %15 = tail call i8 @llvm.umin.i8(i8 %14, i8 32) #16
  %conv..i = zext i8 %15 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %i.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.i ]
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add12.i = add i32 %17, 12
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %18 = inttoptr i32 %add14.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !383
  %arrayidx.i = getelementptr [32 x i8], ptr %buffer.i, i32 0, i32 %i.029.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv..i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %call18.i = call i32 @snd_rawmidi_receive(ptr noundef %10, ptr noundef nonnull %buffer.i, i32 noundef %conv..i) #16
  br label %vt1724_midi_read.exit

vt1724_midi_read.exit:                            ; preds = %for.end.i, %if.then.vt1724_midi_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer.i) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear7 = and i16 %bf.load6, -129
  %21 = ptrtoint ptr %midi_input5 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %bf.clear7, ptr %midi_input5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %vt1724_midi_read.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %5 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  %ac97 = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %7) #16
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #16
  %is_spdif_master = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 50
  %8 = ptrtoint ptr %is_spdif_master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is_spdif_master, align 4
  %call1 = tail call i32 %9(ptr noundef %3) #16
  %10 = trunc i32 %call1 to i8
  %11 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load2 = load i8, ptr %pm_suspend_enabled, align 4
  %bf.value = shl i8 %10, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load2, -65
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %pm_suspend_enabled, align 4
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %profi_port, align 4
  %add = add i32 %13, 60
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %14 = inttoptr i32 %add3 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #16, !srcloc !366
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !453
  %conv = zext i16 %16 to i32
  %pm_saved_spdif_ctrl = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 62
  %17 = ptrtoint ptr %pm_saved_spdif_ctrl to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %pm_saved_spdif_ctrl, align 4
  %port = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add7 = add i32 %19, 7
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %20 = inttoptr i32 %add9 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !454
  %pm_saved_spdif_cfg = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 63
  %22 = ptrtoint ptr %pm_saved_spdif_cfg to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %pm_saved_spdif_cfg, align 4
  %23 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %profi_port, align 4
  %add15 = add i32 %24, 44
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %25 = inttoptr i32 %add17 to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #16, !srcloc !326
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !455
  %pm_saved_route = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 64
  %28 = ptrtoint ptr %pm_saved_route to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %pm_saved_route, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #16
  %pm_suspend = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 59
  %29 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pm_suspend, align 4
  %tobool22.not = icmp eq ptr %30, null
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %if.then23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call25 = tail call i32 %30(ptr noundef %3) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vt1724_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !342
  tail call void @arm_heavy_mb() #16
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %and.i = and i32 %6, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -128) #16, !srcloc !334
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %and4.i = and i32 %9, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %10 = inttoptr i32 %add5.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !343
  tail call void @msleep(i32 noundef 10) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !344
  tail call void @arm_heavy_mb() #16
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %and12.i = and i32 %13, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %14 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #16, !srcloc !334
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %and18.i = and i32 %16, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %17 = inttoptr i32 %add19.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #16, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !345
  tail call void @msleep(i32 noundef 10) #16
  tail call fastcc void @snd_vt1724_chip_init(ptr noundef %3)
  %pm_resume = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 60
  %19 = ptrtoint ptr %pm_resume to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pm_resume, align 4
  %tobool5.not = icmp eq ptr %20, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = tail call i32 %20(ptr noundef %3) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %21 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load10 = load i8, ptr %pm_suspend_enabled, align 4
  %22 = and i8 %bf.load10, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool13.not = icmp eq i8 %22, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %set_spdif_clock = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 54
  %23 = ptrtoint ptr %set_spdif_clock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_spdif_clock, align 4
  %call15 = tail call i32 %24(ptr noundef %3, i32 noundef 0) #16
  br label %if.end22

if.else:                                          ; preds = %if.end9
  %cur_rate = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 35
  %25 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cur_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not = icmp eq i32 %26, 0
  br i1 %tobool16.not, label %if.else19, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %pro_rate_default = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 49
  %27 = ptrtoint ptr %pro_rate_default to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pro_rate_default, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.else.if.end20_crit_edge
  %rate.0 = phi i32 [ %28, %if.else19 ], [ %26, %if.else.if.end20_crit_edge ]
  %call21 = tail call fastcc i32 @snd_vt1724_set_pro_rate(ptr noundef %3, i32 noundef %rate.0, i32 noundef 1)
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.then14
  %pm_saved_spdif_ctrl = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 62
  %29 = ptrtoint ptr %pm_saved_spdif_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pm_saved_spdif_ctrl, align 4
  tail call fastcc void @update_spdif_bits(ptr noundef %3, i32 noundef %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !456
  tail call void @arm_heavy_mb() #16
  %pm_saved_spdif_cfg = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 63
  %31 = ptrtoint ptr %pm_saved_spdif_cfg to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pm_saved_spdif_cfg, align 4
  %33 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port.i, align 4
  %add = add i32 %34, 7
  %and = and i32 %add, 1048575
  %add23 = or i32 %and, -18874368
  %35 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %32) #16, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !457
  tail call void @arm_heavy_mb() #16
  %pm_saved_route = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 64
  %36 = ptrtoint ptr %pm_saved_route to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pm_saved_route, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 8
  %39 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %profi_port, align 4
  %add28 = add i32 %40, 44
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %41 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 %38) #16, !srcloc !330
  %ac97 = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 25
  %42 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %43) #16
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %44 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !204, !205, !207, !209, !211, !213, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !241, !242, !243, !245, !247, !248, !249, !251, !252, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315}
!llvm.module.flags = !{!317, !318, !319, !320, !321, !322, !323, !324}
!llvm.ident = !{!325}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/ice1724.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/ice1724.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/ice1724.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/ice1712/ice1724.c", i32 53, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/ice1724.c", i32 54, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/ice1724.c", i32 55, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/ice1712/ice1724.c", i32 56, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/ice1712/ice1724.c", i32 57, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/ice1724.c", i32 58, i32 1}
!22 = !{ptr @__param_model, !23, !"__param_model", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/ice1724.c", i32 59, i32 1}
!24 = !{ptr @__UNIQUE_ID_modeltype252, !23, !"__UNIQUE_ID_modeltype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_model253, !26, !"__UNIQUE_ID_model253", i1 false, i1 false}
!26 = !{!"../sound/pci/ice1712/ice1724.c", i32 60, i32 1}
!27 = !{ptr @snd_ice1724_get_route_val.xlate, !28, !"xlate", i1 false, i1 false}
!28 = !{!"../sound/pci/ice1712/ice1724.c", i32 2022, i32 29}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/ice1712/ice1724.c", i32 2031, i32 3}
!31 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @snd_ice1724_put_route_val.xroute, !33, !"xroute", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/ice1724.c", i32 2042, i32 29}
!34 = !{ptr @__initcall__kmod_snd_ice1724__261_2747_vt1724_driver_init6, !35, !"__initcall__kmod_snd_ice1724__261_2747_vt1724_driver_init6", i1 false, i1 false}
!35 = !{!"../sound/pci/ice1712/ice1724.c", i32 2747, i32 1}
!36 = !{ptr @__exitcall_vt1724_driver_exit, !35, !"__exitcall_vt1724_driver_exit", i1 false, i1 false}
!37 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!38 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!39 = !{ptr @index, !40, !"index", i1 false, i1 false}
!40 = !{!"../sound/pci/ice1712/ice1724.c", i32 48, i32 12}
!41 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!42 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!43 = !{ptr @id, !44, !"id", i1 false, i1 false}
!44 = !{!"../sound/pci/ice1712/ice1724.c", i32 49, i32 14}
!45 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!46 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!47 = !{ptr @enable, !48, !"enable", i1 false, i1 false}
!48 = !{!"../sound/pci/ice1712/ice1724.c", i32 50, i32 13}
!49 = !{ptr @__param_str_model, !23, !"__param_str_model", i1 false, i1 false}
!50 = !{ptr @__param_arr_model, !23, !"__param_arr_model", i1 false, i1 false}
!51 = !{ptr @model, !52, !"model", i1 false, i1 false}
!52 = !{!"../sound/pci/ice1712/ice1724.c", i32 51, i32 14}
!53 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/ice1712/ice1724.c", i32 2215, i32 3}
!55 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @wait_i2c_busy._entry, !54, !"_entry", i1 false, i1 false}
!59 = !{ptr @wait_i2c_busy._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @vt1724_driver, !62, !"vt1724_driver", i1 false, i1 false}
!62 = !{!"../sound/pci/ice1712/ice1724.c", i32 2738, i32 26}
!63 = !{ptr @snd_vt1724_ids, !64, !"snd_vt1724_ids", i1 false, i1 false}
!64 = !{!"../sound/pci/ice1712/ice1724.c", i32 64, i32 35}
!65 = !{ptr @snd_vt1724_probe.dev, !66, !"dev", i1 false, i1 false}
!66 = !{!"../sound/pci/ice1712/ice1724.c", i32 2525, i32 13}
!67 = !{ptr @.str.7, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/ice1712/ice1724.c", i32 2544, i32 23}
!69 = !{ptr @.str.8, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/ice1712/ice1724.c", i32 2545, i32 26}
!71 = !{ptr @.str.9, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/ice1712/ice1724.c", i32 2631, i32 32}
!73 = !{ptr @.str.10, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/ice1712/ice1724.c", i32 2636, i32 24}
!75 = !{ptr @.str.11, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/ice1712/ice1724.c", i32 2654, i32 26}
!77 = !{ptr @snd_vt1724_create.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../sound/pci/ice1712/ice1724.c", i32 2474, i32 2}
!79 = !{ptr @.str.12, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @snd_vt1724_create.__key.13, !81, !"__key", i1 false, i1 false}
!81 = !{!"../sound/pci/ice1712/ice1724.c", i32 2475, i32 2}
!82 = !{ptr @.str.14, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @snd_vt1724_create.__key.15, !84, !"__key", i1 false, i1 false}
!84 = !{!"../sound/pci/ice1712/ice1724.c", i32 2476, i32 2}
!85 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @snd_vt1724_create.__key.17, !87, !"__key", i1 false, i1 false}
!87 = !{!"../sound/pci/ice1712/ice1724.c", i32 2477, i32 2}
!88 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/ice1712/ice1724.c", i32 2498, i32 3}
!91 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @snd_vt1724_create._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @snd_vt1724_create._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/ice1712/ice1724.c", i32 1532, i32 34}
!96 = !{ptr @.str.22, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ice1712/ice1724.c", i32 1494, i32 2}
!98 = !{ptr @.str.23, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ice1712/ice1724.c", i32 1495, i32 2}
!100 = !{ptr @.str.24, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/ice1712/ice1724.c", i32 1497, i32 2}
!102 = !{ptr @.str.25, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/ice1712/ice1724.c", i32 1498, i32 2}
!104 = !{ptr @.str.26, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ice1712/ice1724.c", i32 1499, i32 2}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/ice1712/ice1724.c", i32 1500, i32 2}
!108 = !{ptr @.str.28, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ice1712/ice1724.c", i32 1502, i32 2}
!110 = !{ptr @.str.29, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/ice1712/ice1724.c", i32 1504, i32 2}
!112 = !{ptr @.str.30, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ice1712/ice1724.c", i32 1506, i32 2}
!114 = !{ptr @.str.31, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/ice1712/ice1724.c", i32 1508, i32 2}
!116 = !{ptr @.str.32, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/ice1712/ice1724.c", i32 1510, i32 2}
!118 = !{ptr @.str.33, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/ice1712/ice1724.c", i32 1512, i32 2}
!120 = !{ptr @.str.34, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/ice1712/ice1724.c", i32 1515, i32 3}
!122 = !{ptr @.str.35, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/ice1712/ice1724.c", i32 1518, i32 2}
!124 = !{ptr @.str.36, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/ice1712/ice1724.c", i32 1520, i32 2}
!126 = !{ptr @.str.37, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/ice1712/ice1724.c", i32 1523, i32 3}
!128 = !{ptr @.str.38, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/ice1712/ice1724.c", i32 1526, i32 3}
!130 = !{ptr @.str.39, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/ice1712/ice1724.c", i32 400, i32 4}
!132 = !{ptr @.str.40, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @snd_vt1724_interrupt._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @snd_vt1724_interrupt._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.42, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/ice1712/ice1724.c", i32 403, i32 5}
!137 = !{ptr @snd_vt1724_interrupt._entry.41, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @snd_vt1724_interrupt._entry_ptr.43, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/ice1712/ice1724.c", i32 2279, i32 5}
!141 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @snd_vt1724_read_eeprom._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @snd_vt1724_read_eeprom._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/ice1712/ice1724.c", i32 2289, i32 5}
!146 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @snd_vt1724_read_eeprom._entry.46, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @snd_vt1724_read_eeprom._entry_ptr.49, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/ice1712/ice1724.c", i32 2299, i32 4}
!151 = !{ptr @snd_vt1724_read_eeprom.__UNIQUE_ID_ddebug260, !150, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!152 = !{ptr @.str.52, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/ice1712/ice1724.c", i32 2306, i32 2}
!154 = !{ptr @.str.53, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @snd_vt1724_read_eeprom._entry.51, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @snd_vt1724_read_eeprom._entry_ptr.54, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/ice1712/ice1724.c", i32 2318, i32 3}
!159 = !{ptr @snd_vt1724_read_eeprom._entry.55, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @snd_vt1724_read_eeprom._entry_ptr.57, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/ice1712/ice1724.c", i32 2324, i32 3}
!163 = !{ptr @snd_vt1724_read_eeprom._entry.58, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @snd_vt1724_read_eeprom._entry_ptr.60, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @card_tables, !166, !"card_tables", i1 false, i1 false}
!166 = !{!"../sound/pci/ice1712/ice1724.c", i32 2186, i32 44}
!167 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/ice1712/ice1724.c", i32 2178, i32 11}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/ice1712/ice1724.c", i32 2179, i32 12}
!171 = !{ptr @snd_vt1724_ooaoo_cards, !172, !"snd_vt1724_ooaoo_cards", i1 false, i1 false}
!172 = !{!"../sound/pci/ice1712/ice1724.c", i32 2176, i32 43}
!173 = !{ptr @ooaoo_sq210_eeprom, !174, !"ooaoo_sq210_eeprom", i1 false, i1 false}
!174 = !{!"../sound/pci/ice1712/ice1724.c", i32 2156, i32 28}
!175 = distinct !{null, !176, !"PRO_RATE_DEFAULT", i1 false, i1 false}
!176 = !{!"../sound/pci/ice1712/ice1724.c", i32 74, i32 21}
!177 = !{ptr @stdclock_rate_list, !178, !"stdclock_rate_list", i1 false, i1 false}
!178 = !{!"../sound/pci/ice1712/ice1724.c", i32 583, i32 27}
!179 = !{ptr @.str.63, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/ice1712/ice1724.c", i32 76, i32 50}
!181 = !{ptr @ext_clock_names, !182, !"ext_clock_names", i1 false, i1 false}
!182 = !{!"../sound/pci/ice1712/ice1724.c", i32 76, i32 27}
!183 = !{ptr @hw_constraints_rates_192, !184, !"hw_constraints_rates_192", i1 false, i1 false}
!184 = !{!"../sound/pci/ice1712/ice1724.c", i32 509, i32 48}
!185 = !{ptr @rates, !186, !"rates", i1 false, i1 false}
!186 = !{!"../sound/pci/ice1712/ice1724.c", i32 491, i32 27}
!187 = !{ptr @hw_constraints_rates_96, !188, !"hw_constraints_rates_96", i1 false, i1 false}
!188 = !{!"../sound/pci/ice1712/ice1724.c", i32 497, i32 48}
!189 = !{ptr @hw_constraints_rates_48, !190, !"hw_constraints_rates_48", i1 false, i1 false}
!190 = !{!"../sound/pci/ice1712/ice1724.c", i32 503, i32 48}
!191 = !{ptr @snd_vt1724_playback_pro_ops, !192, !"snd_vt1724_playback_pro_ops", i1 false, i1 false}
!192 = !{!"../sound/pci/ice1712/ice1724.c", i32 1080, i32 33}
!193 = !{ptr @vt1724_pdma0_reg, !194, !"vt1724_pdma0_reg", i1 false, i1 false}
!194 = !{!"../sound/pci/ice1712/ice1724.c", i32 859, i32 36}
!195 = !{ptr @snd_vt1724_playback_pro, !196, !"snd_vt1724_playback_pro", i1 false, i1 false}
!196 = !{!"../sound/pci/ice1712/ice1724.c", i32 892, i32 38}
!197 = !{ptr @PRO_RATE_LOCKED, !198, !"PRO_RATE_LOCKED", i1 false, i1 false}
!198 = !{!"../sound/pci/ice1712/ice1724.c", i32 72, i32 12}
!199 = !{ptr @PRO_RATE_RESET, !200, !"PRO_RATE_RESET", i1 false, i1 false}
!200 = !{!"../sound/pci/ice1712/ice1724.c", i32 73, i32 12}
!201 = !{ptr @.str.64, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/ice1712/ice1724.c", i32 807, i32 3}
!203 = !{ptr @.str.65, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @snd_vt1724_playback_pro_pointer.__UNIQUE_ID_ddebug258, !202, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!205 = !{ptr @snd_vt1724_capture_pro_ops, !206, !"snd_vt1724_capture_pro_ops", i1 false, i1 false}
!206 = !{!"../sound/pci/ice1712/ice1724.c", i32 1090, i32 33}
!207 = !{ptr @vt1724_rdma0_reg, !208, !"vt1724_rdma0_reg", i1 false, i1 false}
!208 = !{!"../sound/pci/ice1712/ice1724.c", i32 873, i32 36}
!209 = !{ptr @snd_vt1724_2ch_stereo, !210, !"snd_vt1724_2ch_stereo", i1 false, i1 false}
!210 = !{!"../sound/pci/ice1712/ice1724.c", i32 931, i32 38}
!211 = !{ptr @.str.66, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/ice1712/ice1724.c", i32 851, i32 3}
!213 = !{ptr @snd_vt1724_pcm_pointer.__UNIQUE_ID_ddebug259, !212, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!214 = !{ptr @.str.67, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/ice1712/ice1724.c", i32 1300, i32 10}
!216 = !{ptr @.str.68, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/ice1712/ice1724.c", i32 1302, i32 10}
!218 = !{ptr @snd_vt1724_playback_spdif_ops, !219, !"snd_vt1724_playback_spdif_ops", i1 false, i1 false}
!219 = !{!"../sound/pci/ice1712/ice1724.c", i32 1256, i32 33}
!220 = !{ptr @vt1724_pdma4_reg, !221, !"vt1724_pdma4_reg", i1 false, i1 false}
!221 = !{!"../sound/pci/ice1712/ice1724.c", i32 866, i32 36}
!222 = !{ptr @snd_vt1724_spdif, !223, !"snd_vt1724_spdif", i1 false, i1 false}
!223 = !{!"../sound/pci/ice1712/ice1724.c", i32 910, i32 38}
!224 = !{ptr @snd_vt1724_capture_spdif_ops, !225, !"snd_vt1724_capture_spdif_ops", i1 false, i1 false}
!225 = !{!"../sound/pci/ice1712/ice1724.c", i32 1266, i32 33}
!226 = !{ptr @vt1724_rdma1_reg, !227, !"vt1724_rdma1_reg", i1 false, i1 false}
!227 = !{!"../sound/pci/ice1712/ice1724.c", i32 880, i32 36}
!228 = !{ptr @.str.69, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/ice1712/ice1724.c", i32 1419, i32 31}
!230 = !{ptr @.str.70, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/ice1712/ice1724.c", i32 1428, i32 20}
!232 = !{ptr @snd_vt1724_playback_indep_ops, !233, !"snd_vt1724_playback_indep_ops", i1 false, i1 false}
!233 = !{!"../sound/pci/ice1712/ice1724.c", i32 1398, i32 33}
!234 = !{ptr @vt1724_playback_dma_regs, !235, !"vt1724_playback_dma_regs", i1 false, i1 false}
!235 = !{!"../sound/pci/ice1712/ice1724.c", i32 1331, i32 36}
!236 = !{ptr @snd_vt1724_ac97_mixer.ops, !237, !"ops", i1 false, i1 false}
!237 = !{!"../sound/pci/ice1712/ice1724.c", i32 1450, i32 40}
!238 = !{ptr @.str.71, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/ice1712/ice1724.c", i32 1467, i32 4}
!240 = !{ptr @.str.72, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @snd_vt1724_ac97_mixer._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @snd_vt1724_ac97_mixer._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.73, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/ice1712/ice1724.c", i32 1473, i32 31}
!245 = !{ptr @.str.74, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/ice1712/ice1724.c", i32 116, i32 2}
!247 = !{ptr @.str.75, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @snd_vt1724_ac97_ready.__UNIQUE_ID_ddebug254, !246, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!249 = !{ptr @.str.76, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/ice1712/ice1724.c", i32 126, i32 2}
!251 = !{ptr @.str.77, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @snd_vt1724_ac97_wait_bit.__UNIQUE_ID_ddebug255, !250, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!253 = !{ptr @.str.78, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/ice1712/ice1724.c", i32 1558, i32 10}
!255 = !{ptr @snd_vt1724_eeprom, !256, !"snd_vt1724_eeprom", i1 false, i1 false}
!256 = !{!"../sound/pci/ice1712/ice1724.c", i32 1556, i32 38}
!257 = !{ptr @.str.79, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/pci/ice1712/ice1724.c", i32 1924, i32 10}
!259 = !{ptr @snd_vt1724_pro_internal_clock, !260, !"snd_vt1724_pro_internal_clock", i1 false, i1 false}
!260 = !{!"../sound/pci/ice1712/ice1724.c", i32 1922, i32 38}
!261 = !{ptr @.str.80, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/ice1712/ice1724.c", i32 1828, i32 41}
!263 = !{ptr @.str.81, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/pci/ice1712/ice1724.c", i32 1955, i32 10}
!265 = !{ptr @snd_vt1724_pro_rate_locking, !266, !"snd_vt1724_pro_rate_locking", i1 false, i1 false}
!266 = !{!"../sound/pci/ice1712/ice1724.c", i32 1953, i32 38}
!267 = !{ptr @.str.82, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/pci/ice1712/ice1724.c", i32 1986, i32 10}
!269 = !{ptr @snd_vt1724_pro_rate_reset, !270, !"snd_vt1724_pro_rate_reset", i1 false, i1 false}
!270 = !{!"../sound/pci/ice1712/ice1724.c", i32 1984, i32 38}
!271 = !{ptr @.str.83, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/pci/ice1712/ice1724.c", i32 2103, i32 10}
!273 = !{ptr @snd_vt1724_mixer_pro_analog_route, !274, !"snd_vt1724_mixer_pro_analog_route", i1 false, i1 false}
!274 = !{!"../sound/pci/ice1712/ice1724.c", i32 2100, i32 38}
!275 = !{ptr @.str.84, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/pci/ice1712/ice1724.c", i32 2000, i32 3}
!277 = !{ptr @.str.85, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/pci/ice1712/ice1724.c", i32 2001, i32 3}
!279 = !{ptr @.str.86, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/pci/ice1712/ice1724.c", i32 2001, i32 15}
!281 = !{ptr @.str.87, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/pci/ice1712/ice1724.c", i32 2002, i32 3}
!283 = !{ptr @.str.88, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/pci/ice1712/ice1724.c", i32 2002, i32 18}
!285 = !{ptr @snd_vt1724_pro_route_info.texts, !286, !"texts", i1 false, i1 false}
!286 = !{!"../sound/pci/ice1712/ice1724.c", i32 1999, i32 28}
!287 = !{ptr @.str.89, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/pci/ice1712/ice1724.c", i32 2147, i32 10}
!289 = !{ptr @snd_vt1724_mixer_pro_peak, !290, !"snd_vt1724_mixer_pro_peak", i1 false, i1 false}
!290 = !{!"../sound/pci/ice1712/ice1724.c", i32 2145, i32 38}
!291 = !{ptr @.str.90, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/pci/ice1712/ice1724.c", i32 2111, i32 10}
!293 = !{ptr @snd_vt1724_mixer_pro_spdif_route, !294, !"snd_vt1724_mixer_pro_spdif_route", i1 false, i1 false}
!294 = !{!"../sound/pci/ice1712/ice1724.c", i32 2109, i32 38}
!295 = !{ptr @.str.91, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/pci/ice1712/ice1724.c", i32 1752, i32 18}
!297 = !{ptr @snd_vt1724_spdif_switch, !298, !"snd_vt1724_spdif_switch", i1 false, i1 false}
!298 = !{!"../sound/pci/ice1712/ice1724.c", i32 1747, i32 38}
!299 = !{ptr @.str.92, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/pci/ice1712/ice1724.c", i32 1672, i32 18}
!301 = !{ptr @snd_vt1724_spdif_default, !302, !"snd_vt1724_spdif_default", i1 false, i1 false}
!302 = !{!"../sound/pci/ice1712/ice1724.c", i32 1669, i32 38}
!303 = !{ptr @.str.93, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/pci/ice1712/ice1724.c", i32 1705, i32 18}
!305 = !{ptr @snd_vt1724_spdif_maskc, !306, !"snd_vt1724_spdif_maskc", i1 false, i1 false}
!306 = !{!"../sound/pci/ice1712/ice1724.c", i32 1701, i32 38}
!307 = !{ptr @.str.94, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/pci/ice1712/ice1724.c", i32 1714, i32 18}
!309 = !{ptr @snd_vt1724_spdif_maskp, !310, !"snd_vt1724_spdif_maskp", i1 false, i1 false}
!310 = !{!"../sound/pci/ice1712/ice1724.c", i32 1710, i32 38}
!311 = !{ptr @vt1724_midi_output_ops, !312, !"vt1724_midi_output_ops", i1 false, i1 false}
!312 = !{!"../sound/pci/ice1712/ice1724.c", i32 337, i32 37}
!313 = !{ptr @vt1724_midi_input_ops, !314, !"vt1724_midi_input_ops", i1 false, i1 false}
!314 = !{!"../sound/pci/ice1712/ice1724.c", i32 372, i32 37}
!315 = !{ptr @snd_vt1724_pm, !316, !"snd_vt1724_pm", i1 false, i1 false}
!316 = !{!"../sound/pci/ice1712/ice1724.c", i32 2732, i32 8}
!317 = !{i32 1, !"wchar_size", i32 2}
!318 = !{i32 1, !"min_enum_size", i32 4}
!319 = !{i32 8, !"branch-target-enforcement", i32 0}
!320 = !{i32 8, !"sign-return-address", i32 0}
!321 = !{i32 8, !"sign-return-address-all", i32 0}
!322 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!323 = !{i32 7, !"uwtable", i32 1}
!324 = !{i32 7, !"frame-pointer", i32 2}
!325 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!326 = !{i64 4281334}
!327 = !{i64 2154963401}
!328 = !{i64 2154964706}
!329 = !{i64 2154965057}
!330 = !{i64 4280916}
!331 = !{i64 4281114}
!332 = !{i64 2154967032}
!333 = !{i64 2154968934}
!334 = !{i64 4280719}
!335 = !{i64 2154969381}
!336 = !{i64 2154969889}
!337 = !{i64 2154970236}
!338 = !{i64 2154970662}
!339 = !{i64 2154971107}
!340 = !{!"auto-init"}
!341 = !{i8 0, i8 2}
!342 = !{i64 2154982661}
!343 = !{i64 2154983167}
!344 = !{i64 2154983456}
!345 = !{i64 2154983962}
!346 = !{i64 2154944282}
!347 = !{i64 2154944008}
!348 = !{i64 2154946628}
!349 = !{i64 2154946353}
!350 = !{i64 2154991722}
!351 = !{i64 2154992153}
!352 = !{i64 2154992584}
!353 = !{i64 2154880611}
!354 = !{i64 2154919710}
!355 = !{i64 2154920443}
!356 = !{i64 2154920982}
!357 = !{i64 2154921299}
!358 = !{i64 2154960678}
!359 = !{i64 2154960986}
!360 = !{i64 2154961520}
!361 = !{i64 2154961846}
!362 = !{!"branch_weights", i32 1, i32 2000}
!363 = !{i64 2154891985}
!364 = !{i64 4280296}
!365 = !{i64 2154892543}
!366 = !{i64 4280496}
!367 = !{i64 2154893460}
!368 = !{i64 2154893856}
!369 = !{i64 2154894641}
!370 = !{i64 2154889846}
!371 = !{i64 2154890858}
!372 = !{i64 2154891641}
!373 = !{i64 2154894973}
!374 = !{i64 2154895510}
!375 = !{i64 2154896415}
!376 = !{i64 2154896799}
!377 = !{i64 2154897572}
!378 = !{i64 2154906004}
!379 = !{i64 2154906378}
!380 = !{i64 2154903724}
!381 = !{i64 2154904016}
!382 = !{i64 2154901707}
!383 = !{i64 2154903350}
!384 = !{i64 2154897952}
!385 = !{i64 2154898328}
!386 = !{i64 2154909958}
!387 = !{i64 2154910477}
!388 = !{i64 2154910808}
!389 = !{i64 2154911351}
!390 = !{i64 2154911664}
!391 = !{i64 2154912742}
!392 = !{i64 2154912467}
!393 = !{i64 2154987953}
!394 = !{i64 2154988383}
!395 = !{i64 2154971615}
!396 = !{i64 2148831807, i64 2148831812, i64 2148831825, i64 2148831869, i64 2148831903, i64 2148831924}
!397 = !{i64 2154984284}
!398 = !{i64 2154984739}
!399 = !{i64 2154985199}
!400 = !{i64 2154985655}
!401 = !{i64 2154986080}
!402 = !{i64 2154986521}
!403 = !{i64 2154986970}
!404 = !{i64 2154951204}
!405 = !{i64 2154951606}
!406 = !{i64 2154952026}
!407 = !{i64 2154900891}
!408 = !{i64 2154901190}
!409 = !{i64 2154923473}
!410 = !{i64 2154923985}
!411 = !{i64 2154924618}
!412 = !{i64 2154925177}
!413 = !{i64 2154925671}
!414 = !{i64 2154926232}
!415 = !{i64 2154918023}
!416 = !{i64 2154918330}
!417 = !{i64 2154918872}
!418 = !{i64 2154919183}
!419 = !{i64 2154927217}
!420 = !{i64 2154928031}
!421 = !{i64 2154922198}
!422 = !{i64 2154922765}
!423 = !{i64 2154930842}
!424 = !{i64 2154931430}
!425 = !{i64 2154932055}
!426 = !{i64 2154933216}
!427 = !{i64 2154933934}
!428 = !{i64 2154941998}
!429 = !{i64 2154938818}
!430 = !{i64 2154939123}
!431 = !{i64 2154939598}
!432 = !{i64 2154940127}
!433 = !{i64 2154940602}
!434 = !{i64 2154942774}
!435 = !{i64 2154943071}
!436 = !{i64 2154881177}
!437 = !{i64 2154886617}
!438 = !{i64 2154887096}
!439 = !{i64 2154887648}
!440 = !{i64 2154883930}
!441 = !{i64 2154888103}
!442 = !{i64 2154888560}
!443 = !{i64 2154889504}
!444 = !{i64 712147, i64 712164}
!445 = !{i64 2154966049}
!446 = !{i64 2154966595}
!447 = !{i64 2154955051}
!448 = !{i64 2154955470}
!449 = !{i64 2154955775}
!450 = !{i64 2154953096}
!451 = !{i64 2154953935}
!452 = !{i64 2154904894}
!453 = !{i64 2154993554}
!454 = !{i64 2154993932}
!455 = !{i64 2154994743}
!456 = !{i64 2154995060}
!457 = !{i64 2154995559}
