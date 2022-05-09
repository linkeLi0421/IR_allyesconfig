; ModuleID = '/llk/IR_all_yes/sound/pci/cs4281.c_pt.bc'
source_filename = "../sound/pci/cs4281.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_info_entry_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.cs4281 = type { i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x %struct.cs4281_dma], i8, i8, i8, i8, i32, i32, %struct.spinlock, i32, i32, ptr, [20 x i32] }
%struct.cs4281_dma = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_opl3 = type { i32, i32, ptr, ptr, i16, ptr, i16, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.spinlock, ptr, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, [32 x ptr], [18 x %struct.snd_opl3_voice], i32, i16, i8, %struct.spinlock, %struct.timer_list, i32, %struct.spinlock }
%struct.snd_opl3_voice = type { i32, i32, i8, i32, i32, i8, ptr }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.74, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.74 = type { i32, [28 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.76, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.76 = type { %struct.anon.79, [40 x i8] }
%struct.anon.79 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }
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
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [51 x i8] c"snd_cs4281.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [43 x i8] c"snd_cs4281.description=Cirrus Logic CS4281\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [37 x i8] c"snd_cs4281.file=sound/pci/snd-cs4281\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"snd_cs4281.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_cs4281.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [39 x i8] c"snd_cs4281.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [56 x i8] c"snd_cs4281.parm=index:Index value for CS4281 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_cs4281.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [38 x i8] c"snd_cs4281.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [51 x i8] c"snd_cs4281.parm=id:ID string for CS4281 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_cs4281.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [41 x i8] c"snd_cs4281.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [48 x i8] c"snd_cs4281.parm=enable:Enable CS4281 soundcard.\00", section ".modinfo", align 1
@__param_str_dual_codec = internal constant [22 x i8] c"snd_cs4281.dual_codec\00", align 1
@__param_arr_dual_codec = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @dual_codec }, align 4
@__param_dual_codec = internal constant %struct.kernel_param { ptr @__param_str_dual_codec, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_dual_codec } }, section "__param", align 4
@__UNIQUE_ID_dual_codectype252 = internal constant [45 x i8] c"snd_cs4281.parmtype=dual_codec:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dual_codec253 = internal constant [62 x i8] c"snd_cs4281.parm=dual_codec:Secondary Codec ID (0 = disabled).\00", section ".modinfo", align 1
@__initcall__kmod_snd_cs4281__254_1999_cs4281_driver_init6 = internal global ptr @cs4281_driver_init, section ".initcall6.init", align 4
@cs4281_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_cs4281_ids, ptr @snd_cs4281_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs4281_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cs4281_driver_exit = internal global ptr @cs4281_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@dual_codec = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_cs4281\00", [21 x i8] zeroinitializer }, align 32
@snd_cs4281_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4115, i32 24581, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cs4281_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cs4281_suspend, ptr @cs4281_resume, ptr @cs4281_suspend, ptr @cs4281_resume, ptr @cs4281_suspend, ptr @cs4281_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_cs4281_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS4281\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cirrus Logic CS4281\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %d\00", [44 x i8] zeroinitializer }, align 32
@snd_cs4281_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_cs4281_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1303, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid dual_codec option %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_cs4281_create\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/pci/cs4281.c\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_cs4281_create._entry_ptr = internal global ptr @snd_cs4281_create._entry, section ".printk_index", align 4
@snd_cs4281_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1319, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_cs4281_create._entry_ptr.12 = internal global ptr @snd_cs4281_create._entry.10, section ".printk_index", align 4
@snd_cs4281_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 1352, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CFLR setup failed (0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_cs4281_chip_init\00", [43 x i8] zeroinitializer }, align 32
@snd_cs4281_chip_init._entry_ptr = internal global ptr @snd_cs4281_chip_init._entry, section ".printk_index", align 4
@snd_cs4281_chip_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.7, i32 1365, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SERC1 AC'97 check failed (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_cs4281_chip_init._entry_ptr.17 = internal global ptr @snd_cs4281_chip_init._entry.15, section ".printk_index", align 4
@snd_cs4281_chip_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.7, i32 1371, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SERC2 AC'97 check failed (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_cs4281_chip_init._entry_ptr.20 = internal global ptr @snd_cs4281_chip_init._entry.18, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_cs4281_chip_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.7, i32 1433, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DLLRDY not seen\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_cs4281_chip_init._entry_ptr.23 = internal global ptr @snd_cs4281_chip_init._entry.21, section ".printk_index", align 4
@snd_cs4281_chip_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.7, i32 1461, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"never read codec ready from AC'97 (0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@snd_cs4281_chip_init._entry_ptr.26 = internal global ptr @snd_cs4281_chip_init._entry.24, section ".printk_index", align 4
@snd_cs4281_chip_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.7, i32 1473, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"secondary codec doesn't respond. disable it...\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_cs4281_chip_init._entry_ptr.30 = internal global ptr @snd_cs4281_chip_init._entry.27, section ".printk_index", align 4
@snd_cs4281_chip_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.14, ptr @.str.7, i32 1503, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"never read ISV3 and ISV4 from AC'97\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_cs4281_chip_init._entry_ptr.33 = internal global ptr @snd_cs4281_chip_init._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cs4281\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cs4281_BA0\00", [21 x i8] zeroinitializer }, align 32
@snd_cs4281_proc_ops_BA0 = internal constant { %struct.snd_info_entry_ops, [32 x i8] } { %struct.snd_info_entry_ops { ptr null, ptr null, ptr @snd_cs4281_BA0_read, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cs4281_BA1\00", [21 x i8] zeroinitializer }, align 32
@snd_cs4281_proc_ops_BA1 = internal constant { %struct.snd_info_entry_ops, [32 x i8] } { %struct.snd_info_entry_ops { ptr null, ptr null, ptr @snd_cs4281_BA1_read, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cirrus Logic CS4281\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Spurious half IRQs   : %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Spurious end IRQs    : %u\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_cs4281_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_cs4281_ac97_write, ptr @snd_cs4281_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_cs4281_fm_vol = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_cs4281_info_volume, ptr @snd_cs4281_get_volume, ptr @snd_cs4281_put_volume, %union.anon.87 { ptr @db_scale_dsp }, i32 122947416 }, [48 x i8] zeroinitializer }, align 32
@snd_cs4281_pcm_vol = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_cs4281_info_volume, ptr @snd_cs4281_get_volume, ptr @snd_cs4281_put_volume, %union.anon.87 { ptr @db_scale_dsp }, i32 123733860 }, [48 x i8] zeroinitializer }, align 32
@snd_cs4281_ac97_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.7, i32 552, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"AC'97 write problem, reg = 0x%x, val = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_cs4281_ac97_write\00", [42 x i8] zeroinitializer }, align 32
@snd_cs4281_ac97_write._entry_ptr = internal global ptr @snd_cs4281_ac97_write._entry, section ".printk_index", align 4
@snd_cs4281_ac97_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 613, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AC'97 read problem (ACCTL_DCV), reg = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_cs4281_ac97_read\00", [43 x i8] zeroinitializer }, align 32
@snd_cs4281_ac97_read._entry_ptr = internal global ptr @snd_cs4281_ac97_read._entry, section ".printk_index", align 4
@snd_cs4281_ac97_read._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.7, i32 633, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"AC'97 read problem (ACSTS_VSTS), reg = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_cs4281_ac97_read._entry_ptr.46 = internal global ptr @snd_cs4281_ac97_read._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Synth Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@db_scale_dsp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCM Stream Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@snd_cs4281_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs4281_playback_open, ptr @snd_cs4281_playback_close, ptr null, ptr null, ptr null, ptr @snd_cs4281_playback_prepare, ptr @snd_cs4281_trigger, ptr null, ptr @snd_cs4281_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cs4281_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cs4281_capture_open, ptr @snd_cs4281_capture_close, ptr null, ptr null, ptr null, ptr @snd_cs4281_capture_prepare, ptr @snd_cs4281_trigger, ptr null, ptr @snd_cs4281_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cs4281_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786691, i64 15423, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 524288, i32 64, i32 524288, i32 1, i32 2, i32 32 }, [32 x i8] zeroinitializer }, align 32
@snd_cs4281_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786691, i64 15423, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 524288, i32 64, i32 524288, i32 1, i32 2, i32 32 }, [32 x i8] zeroinitializer }, align 32
@snd_cs4281_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_cs4281_midi_output_open, ptr @snd_cs4281_midi_output_close, ptr @snd_cs4281_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_cs4281_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_cs4281_midi_input_open, ptr @snd_cs4281_midi_input_close, ptr @snd_cs4281_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_cs4281_create_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.7, i32 1238, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_cs4281_create_gameport\00", [37 x i8] zeroinitializer }, align 32
@snd_cs4281_create_gameport._entry_ptr = internal global ptr @snd_cs4281_create_gameport._entry, section ".printk_index", align 4
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CS4281 Gameport\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@saved_regs = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 1156, i32 1000, i32 1868, i32 1168, i32 1884, i32 1896, i32 1900, i32 1860, i32 1864, i32 1876, i32 1880, i32 1888, i32 1892, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.54 = internal global [8 x i64] [i64 6, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 44100, i64 48000]
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"cs4281_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1990, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 29, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 30, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 31, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"dual_codec\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 32, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1999, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"snd_cs4281_ids\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 481, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"cs4281_pm\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1984, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1833, i32 13 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1875, i32 23 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1876, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1877, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1297, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1303, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1319, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1351, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1364, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1370, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1433, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1459, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1472, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1503, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1148, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1149, i32 38 }
@___asan_gen_.176 = private unnamed_addr constant [24 x i8] c"snd_cs4281_proc_ops_BA0\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1136, i32 40 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1155, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant [24 x i8] c"snd_cs4281_proc_ops_BA1\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1140, i32 40 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1107, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1108, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1109, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1066, i32 39 }
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"snd_cs4281_fm_vol\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1024, i32 38 }
@___asan_gen_.200 = private unnamed_addr constant [19 x i8] c"snd_cs4281_pcm_vol\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1035, i32 38 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 551, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 612, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 632, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1027, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant [13 x i8] c"db_scale_dsp\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1022, i32 14 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1038, i32 10 }
@___asan_gen_.236 = private unnamed_addr constant [24 x i8] c"snd_cs4281_playback_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 926, i32 33 }
@___asan_gen_.239 = private unnamed_addr constant [23 x i8] c"snd_cs4281_capture_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 934, i32 33 }
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c"snd_cs4281_playback\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 822, i32 38 }
@___asan_gen_.245 = private unnamed_addr constant [19 x i8] c"snd_cs4281_capture\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 847, i32 38 }
@___asan_gen_.248 = private unnamed_addr constant [23 x i8] c"snd_cs4281_midi_output\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1698, i32 37 }
@___asan_gen_.251 = private unnamed_addr constant [22 x i8] c"snd_cs4281_midi_input\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1705, i32 37 }
@___asan_gen_.254 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1237, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1242, i32 24 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1243, i32 24 }
@___asan_gen_.269 = private unnamed_addr constant [11 x i8] c"saved_regs\00", align 1
@___asan_gen_.270 = private constant [22 x i8] c"../sound/pci/cs4281.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1896, i32 18 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_dual_codec253, ptr @__UNIQUE_ID_dual_codectype252, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_cs4281_driver_exit, ptr @__initcall__kmod_snd_cs4281__254_1999_cs4281_driver_init6, ptr @__param_dual_codec, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @cs4281_driver_exit, ptr @snd_cs4281_ac97_read._entry, ptr @snd_cs4281_ac97_read._entry.44, ptr @snd_cs4281_ac97_read._entry_ptr, ptr @snd_cs4281_ac97_read._entry_ptr.46, ptr @snd_cs4281_ac97_write._entry, ptr @snd_cs4281_ac97_write._entry_ptr, ptr @snd_cs4281_chip_init._entry, ptr @snd_cs4281_chip_init._entry.15, ptr @snd_cs4281_chip_init._entry.18, ptr @snd_cs4281_chip_init._entry.21, ptr @snd_cs4281_chip_init._entry.24, ptr @snd_cs4281_chip_init._entry.27, ptr @snd_cs4281_chip_init._entry.31, ptr @snd_cs4281_chip_init._entry_ptr, ptr @snd_cs4281_chip_init._entry_ptr.17, ptr @snd_cs4281_chip_init._entry_ptr.20, ptr @snd_cs4281_chip_init._entry_ptr.23, ptr @snd_cs4281_chip_init._entry_ptr.26, ptr @snd_cs4281_chip_init._entry_ptr.30, ptr @snd_cs4281_chip_init._entry_ptr.33, ptr @snd_cs4281_create._entry, ptr @snd_cs4281_create._entry.10, ptr @snd_cs4281_create._entry_ptr, ptr @snd_cs4281_create._entry_ptr.12, ptr @snd_cs4281_create_gameport._entry, ptr @snd_cs4281_create_gameport._entry_ptr, ptr @cs4281_driver, ptr @index, ptr @id, ptr @enable, ptr @dual_codec, ptr @.str, ptr @snd_cs4281_ids, ptr @cs4281_pm, ptr @snd_cs4281_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @snd_cs4281_create.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @snd_cs4281_proc_ops_BA0, ptr @.str.36, ptr @snd_cs4281_proc_ops_BA1, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @snd_cs4281_mixer.ops, ptr @snd_cs4281_fm_vol, ptr @snd_cs4281_pcm_vol, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @db_scale_dsp, ptr @.str.48, ptr @snd_cs4281_playback_ops, ptr @snd_cs4281_capture_ops, ptr @snd_cs4281_playback, ptr @snd_cs4281_capture, ptr @snd_cs4281_midi_output, ptr @snd_cs4281_midi_input, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @saved_regs], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4281_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dual_codec to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4281_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_chip_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_chip_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_chip_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_chip_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_chip_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_chip_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_proc_ops_BA0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_proc_ops_BA1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_fm_vol to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_pcm_vol to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_ac97_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_ac97_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_ac97_read._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_dsp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs4281_create_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_regs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4281_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cs4281_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs4281_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @cs4281_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %rmidi.i = alloca ptr, align 4
  %pcm.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  %opl3 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #12
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opl3) #12
  %1 = ptrtoint ptr %opl3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %opl3, align 4, !annotation !180
  %2 = load i32, ptr @snd_cs4281_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp = icmp sgt i32 %2, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @snd_cs4281_probe.dev, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx3 = getelementptr [32 x i32], ptr @index, i32 0, i32 %2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %2
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %6, ptr noundef %8, ptr noundef null, i32 noundef 464, ptr noundef nonnull %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 8
  %13 = load i32, ptr @snd_cs4281_probe.dev, align 4
  %arrayidx8 = getelementptr [32 x i8], ptr @dual_codec, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8, align 1, !range !181
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %do.body.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i:                                        ; preds = %if.end7
  %16 = zext i8 %15 to i32
  %reg_lock.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 22
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_cs4281_create.__key, i16 noundef signext 3) #12
  %card2.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 10
  %17 = ptrtoint ptr %card2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %10, ptr %card2.i, align 4
  %pci3.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 9
  %18 = ptrtoint ptr %pci3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pci, ptr %pci3.i, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %12, align 4
  call void @pci_set_master(ptr noundef %pci) #12
  %dual_codec11.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 5
  %20 = ptrtoint ptr %dual_codec11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %16, ptr %dual_codec11.i, align 4
  %call12.i = call i32 @pcim_iomap_regions(ptr noundef %pci, i32 noundef 3, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.body.i.cleanup_crit_edge, label %if.end15.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.i:                                       ; preds = %do.body.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %21 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource.i, align 8
  %ba0_addr.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 3
  %23 = ptrtoint ptr %ba0_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ba0_addr.i, align 4
  %arrayidx17.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i, align 8
  %ba1_addr.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 4
  %26 = ptrtoint ptr %ba1_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ba1_addr.i, align 4
  %call19.i = call ptr @pcim_iomap_table(ptr noundef %pci) #12
  %27 = ptrtoint ptr %call19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call19.i, align 4
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 1
  %29 = ptrtoint ptr %ba0.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %ba0.i, align 4
  %call21.i = call ptr @pcim_iomap_table(ptr noundef %pci) #12
  %arrayidx22.i = getelementptr ptr, ptr %call21.i, i32 1
  %30 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx22.i, align 4
  %ba1.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 2
  %32 = ptrtoint ptr %ba1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %ba1.i, align 4
  %irq24.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %33 = ptrtoint ptr %irq24.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq24.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %34, ptr noundef nonnull @snd_cs4281_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end32.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev30.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %35 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev30.i, align 8
  %37 = ptrtoint ptr %irq24.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq24.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.11, i32 noundef %38) #15
  br label %cleanup

if.end32.i:                                       ; preds = %if.end15.i
  %39 = ptrtoint ptr %irq24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq24.i, align 4
  %41 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %12, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 33
  %42 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 10
  %43 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @snd_cs4281_free, ptr %private_free.i, align 4
  %call36.i = call fastcc i32 @snd_cs4281_chip_init(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %snd_cs4281_create.exit

if.end39.i:                                       ; preds = %if.end32.i
  %44 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card2.i, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %45, ptr noundef nonnull @.str.34, ptr noundef %12, ptr noundef nonnull @snd_cs4281_proc_read, ptr noundef null) #12
  %46 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card2.i, align 4
  %proc_root.i.i.i = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 20
  %48 = ptrtoint ptr %proc_root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %proc_root.i.i.i, align 8
  %call.i18.i.i = call ptr @snd_info_create_card_entry(ptr noundef %47, ptr noundef nonnull @.str.35, ptr noundef %49) #12
  %tobool.not.i.not.i.i = icmp eq ptr %call.i18.i.i, null
  br i1 %tobool.not.i.not.i.i, label %if.end39.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end39.i.if.end.i.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %content.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i18.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %content.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %content.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i18.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %12, ptr %private_data.i.i, align 4
  %c.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i18.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @snd_cs4281_proc_ops_BA0, ptr %c.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i18.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4096, ptr %size.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end39.i.if.end.i.i_crit_edge
  %54 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card2.i, align 4
  %proc_root.i19.i.i = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %proc_root.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %proc_root.i19.i.i, align 8
  %call.i20.i.i = call ptr @snd_info_create_card_entry(ptr noundef %55, ptr noundef nonnull @.str.36, ptr noundef %57) #12
  %tobool.not.i21.not.i.i = icmp eq ptr %call.i20.i.i, null
  br i1 %tobool.not.i21.not.i.i, label %if.end.i.i.if.end14_crit_edge, label %if.then7.i.i

if.end.i.i.if.end14_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %content8.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i20.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %content8.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %content8.i.i, align 4
  %private_data9.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i20.i.i, i32 0, i32 7
  %59 = ptrtoint ptr %private_data9.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %12, ptr %private_data9.i.i, align 4
  %c10.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i20.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %c10.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @snd_cs4281_proc_ops_BA1, ptr %c10.i.i, align 4
  %size11.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i20.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %size11.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 65536, ptr %size11.i.i, align 4
  br label %if.end14

snd_cs4281_create.exit:                           ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp11 = icmp slt i32 %call36.i, 0
  br i1 %cmp11, label %snd_cs4281_create.exit.cleanup_crit_edge, label %snd_cs4281_create.exit.if.end14_crit_edge

snd_cs4281_create.exit.if.end14_crit_edge:        ; preds = %snd_cs4281_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

snd_cs4281_create.exit.cleanup_crit_edge:         ; preds = %snd_cs4281_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %snd_cs4281_create.exit.if.end14_crit_edge, %if.then7.i.i, %if.end.i.i.if.end14_crit_edge
  %62 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card2.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #12
  %64 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 3
  %ac97_bus.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 6
  %call.i82 = call i32 @snd_ac97_bus(ptr noundef %63, i32 noundef 0, ptr noundef nonnull @snd_cs4281_mixer.ops, ptr noundef %12, ptr noundef %ac97_bus.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i83 = icmp slt i32 %call.i82, 0
  br i1 %cmp.i83, label %if.end14.snd_cs4281_mixer.exit.thread_crit_edge, label %if.end.i

if.end14.snd_cs4281_mixer.exit.thread_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_mixer.exit.thread

if.end.i:                                         ; preds = %if.end14
  %65 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 1
  %66 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ac97_bus.i, align 4
  %private_free.i84 = getelementptr inbounds %struct.snd_ac97_bus, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %private_free.i84 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @snd_cs4281_mixer_free_ac97_bus, ptr %private_free.i84, align 4
  %69 = getelementptr inbounds i8, ptr %ac97.i, i32 8
  %70 = call ptr @memset(ptr %69, i32 0, i32 16)
  %71 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %12, ptr %ac97.i, align 4
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @snd_cs4281_mixer_free_ac97, ptr %65, align 4
  %73 = load ptr, ptr %ac97_bus.i, align 4
  %ac975.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 7
  %call6.i = call i32 @snd_ac97_mixer(ptr noundef %73, ptr noundef nonnull %ac97.i, ptr noundef %ac975.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i.snd_cs4281_mixer.exit.thread_crit_edge, label %if.end9.i

if.end.i.snd_cs4281_mixer.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_mixer.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %74 = ptrtoint ptr %dual_codec11.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dual_codec11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i85 = icmp eq i32 %75, 0
  br i1 %tobool.not.i85, label %if.end9.i.if.end16.i_crit_edge, label %if.then10.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end9.i
  %76 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %64, align 4
  %77 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ac97_bus.i, align 4
  %ac97_secondary.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 8
  %call12.i86 = call i32 @snd_ac97_mixer(ptr noundef %78, ptr noundef nonnull %ac97.i, ptr noundef %ac97_secondary.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i86)
  %cmp13.i87 = icmp slt i32 %call12.i86, 0
  br i1 %cmp13.i87, label %if.then10.i.snd_cs4281_mixer.exit.thread_crit_edge, label %if.then10.i.if.end16.i_crit_edge

if.then10.i.if.end16.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then10.i.snd_cs4281_mixer.exit.thread_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_mixer.exit.thread

if.end16.i:                                       ; preds = %if.then10.i.if.end16.i_crit_edge, %if.end9.i.if.end16.i_crit_edge
  %call17.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cs4281_fm_vol, ptr noundef %12) #12
  %call18.i = call i32 @snd_ctl_add(ptr noundef %63, ptr noundef %call17.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end16.i.snd_cs4281_mixer.exit.thread_crit_edge, label %snd_cs4281_mixer.exit

if.end16.i.snd_cs4281_mixer.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_mixer.exit.thread

snd_cs4281_mixer.exit.thread:                     ; preds = %if.end16.i.snd_cs4281_mixer.exit.thread_crit_edge, %if.then10.i.snd_cs4281_mixer.exit.thread_crit_edge, %if.end.i.snd_cs4281_mixer.exit.thread_crit_edge, %if.end14.snd_cs4281_mixer.exit.thread_crit_edge
  %retval.0.i88.ph = phi i32 [ %call18.i, %if.end16.i.snd_cs4281_mixer.exit.thread_crit_edge ], [ %call12.i86, %if.then10.i.snd_cs4281_mixer.exit.thread_crit_edge ], [ %call6.i, %if.end.i.snd_cs4281_mixer.exit.thread_crit_edge ], [ %call.i82, %if.end14.snd_cs4281_mixer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #12
  br label %cleanup

snd_cs4281_mixer.exit:                            ; preds = %if.end16.i
  %call22.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cs4281_pcm_vol, ptr noundef %12) #12
  %call23.i = call i32 @snd_ctl_add(ptr noundef %63, ptr noundef %call22.i) #12
  %79 = call i32 @llvm.smin.i32(i32 %call23.i, i32 0) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp16 = icmp slt i32 %call23.i, 0
  br i1 %cmp16, label %snd_cs4281_mixer.exit.cleanup_crit_edge, label %if.end19

snd_cs4281_mixer.exit.cleanup_crit_edge:          ; preds = %snd_cs4281_mixer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %snd_cs4281_mixer.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #12
  %80 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !180
  %81 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card2.i, align 4
  %call.i89 = call i32 @snd_pcm_new(ptr noundef %82, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i90 = icmp slt i32 %call.i89, 0
  br i1 %cmp.i90, label %snd_cs4281_pcm.exit.thread, label %if.end24

snd_cs4281_pcm.exit.thread:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %83 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %84, i32 noundef 0, ptr noundef nonnull @snd_cs4281_playback_ops) #12
  %85 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %86, i32 noundef 1, ptr noundef nonnull @snd_cs4281_capture_ops) #12
  %87 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pcm.i, align 4
  %private_data.i91 = getelementptr inbounds %struct.snd_pcm, ptr %88, i32 0, i32 11
  %89 = ptrtoint ptr %private_data.i91 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %12, ptr %private_data.i91, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %88, i32 0, i32 3
  %90 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %88, i32 0, i32 7
  %91 = call ptr @memcpy(ptr %name.i, ptr @.str.1, i32 7)
  %pcm2.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 11
  %92 = ptrtoint ptr %pcm2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %88, ptr %pcm2.i, align 4
  %93 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pci3.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %call3.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %88, i32 noundef 2, ptr noundef %dev.i, i32 noundef 65536, i32 noundef 524288) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi.i) #12
  %95 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi.i, align 4, !annotation !180
  %96 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %card2.i, align 4
  %call.i95 = call i32 @snd_rawmidi_new(ptr noundef %97, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp.i96 = icmp slt i32 %call.i95, 0
  br i1 %cmp.i96, label %snd_cs4281_midi.exit.thread, label %if.end29

snd_cs4281_midi.exit.thread:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %98 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmidi.i, align 4
  %name.i97 = getelementptr inbounds %struct.snd_rawmidi, ptr %99, i32 0, i32 5
  %100 = call ptr @memcpy(ptr %name.i97, ptr @.str.1, i32 7)
  call void @snd_rawmidi_set_ops(ptr noundef %99, i32 noundef 0, ptr noundef nonnull @snd_cs4281_midi_output) #12
  %101 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmidi.i, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %102, i32 noundef 1, ptr noundef nonnull @snd_cs4281_midi_input) #12
  %103 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rmidi.i, align 4
  %info_flags.i98 = getelementptr inbounds %struct.snd_rawmidi, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %info_flags.i98 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %info_flags.i98, align 8
  %or.i = or i32 %106, 7
  store i32 %or.i, ptr %info_flags.i98, align 8
  %private_data.i99 = getelementptr inbounds %struct.snd_rawmidi, ptr %104, i32 0, i32 9
  %107 = ptrtoint ptr %private_data.i99 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %12, ptr %private_data.i99, align 4
  %rmidi2.i = getelementptr inbounds %struct.cs4281, ptr %12, i32 0, i32 12
  %108 = ptrtoint ptr %rmidi2.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %104, ptr %rmidi2.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #12
  %109 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %card, align 4
  %call30 = call i32 @snd_opl3_new(ptr noundef %110, i16 noundef zeroext 772, ptr noundef nonnull %opl3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %111 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %opl3, align 4
  %private_data35 = getelementptr inbounds %struct.snd_opl3, ptr %112, i32 0, i32 11
  %113 = ptrtoint ptr %private_data35 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %12, ptr %private_data35, align 4
  %command = getelementptr inbounds %struct.snd_opl3, ptr %112, i32 0, i32 5
  %114 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @snd_cs4281_opl3_command, ptr %command, align 4
  %call36 = call i32 @snd_opl3_init(ptr noundef %112) #12
  %115 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %opl3, align 4
  %call37 = call i32 @snd_opl3_hwdep_new(ptr noundef %116, i32 noundef 0, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end34.cleanup_crit_edge, label %if.end41

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  call fastcc void @snd_cs4281_create_gameport(ptr noundef %12)
  %117 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %118, i32 0, i32 2
  %119 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %118, i32 0, i32 3
  %120 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 20)
  %longname = getelementptr inbounds %struct.snd_card, ptr %118, i32 0, i32 4
  %121 = ptrtoint ptr %ba0_addr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ba0_addr.i, align 4
  %123 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %12, align 4
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname, i32 noundef %122, i32 noundef %124)
  %125 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %card, align 4
  %call50 = call i32 @snd_card_register(ptr noundef %126) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end41.cleanup_crit_edge, label %if.end54

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end54:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %127 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %129 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %driver_data.i.i, align 4
  %130 = load i32, ptr @snd_cs4281_probe.dev, align 4
  %inc55 = add i32 %130, 1
  store i32 %inc55, ptr @snd_cs4281_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end41.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %snd_cs4281_midi.exit.thread, %snd_cs4281_pcm.exit.thread, %snd_cs4281_mixer.exit.cleanup_crit_edge, %snd_cs4281_mixer.exit.thread, %snd_cs4281_create.exit.cleanup_crit_edge, %do.end29.i, %do.body.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call36.i, %snd_cs4281_create.exit.cleanup_crit_edge ], [ %79, %snd_cs4281_mixer.exit.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call37, %if.end34.cleanup_crit_edge ], [ %call50, %if.end41.cleanup_crit_edge ], [ %retval.0.i88.ph, %snd_cs4281_mixer.exit.thread ], [ %call.i89, %snd_cs4281_pcm.exit.thread ], [ %call.i95, %snd_cs4281_midi.exit.thread ], [ %call12.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -12, %do.end29.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opl3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_new(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs4281_opl3_command(ptr noundef %opl3, i16 noundef zeroext %cmd, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conv = zext i16 %cmd to i32
  %and = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ba01 = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ba01 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ba01, align 4
  %. = select i1 %tobool.not, i32 1840, i32 1848
  %add.ptr2 = getelementptr i8, ptr %3, i32 %.
  %reg_lock = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 14
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !184
  tail call void @arm_heavy_mb() #12
  %conv15 = zext i8 %val to i32
  %6 = shl nuw i32 %conv15, 24
  %add.ptr16 = getelementptr i8, ptr %add.ptr2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %6) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 6442440) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_hwdep_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_cs4281_create_gameport(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1248) #16
  %gameport = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 25
  %1 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %gameport, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.49) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.51, i32 noundef 32) #12
  %pci = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 9
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.end.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.52, ptr noundef %retval.0.i.i) #12
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %parent = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev3, ptr %parent, align 8
  %open = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @snd_cs4281_gameport_open, ptr %open, align 8
  %read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @snd_cs4281_gameport_read, ptr %read, align 4
  %trigger = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @snd_cs4281_gameport_trigger, ptr %trigger, align 8
  %cooked_read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %cooked_read to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cooked_read, align 8
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %chip, ptr %call7.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 1
  %20 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %23, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 16777216) #12, !srcloc !183
  tail call void @__gameport_register_port(ptr noundef nonnull %call7.i.i.i, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %do.end
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %c = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev_id, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ba0.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #12, !srcloc !186
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %and = and i32 %3, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #12, !srcloc !183
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %3, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end3.if.end37_crit_edge, label %for.cond.preheader

if.end3.if.end37_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

for.cond.preheader:                               ; preds = %if.end3
  %reg_lock = getelementptr inbounds %struct.cs4281, ptr %dev_id, i32 0, i32 22
  %spurious_dtc_irq = getelementptr inbounds %struct.cs4281, ptr %dev_id, i32 0, i32 21
  %spurious_dhtc_irq = getelementptr inbounds %struct.cs4281, ptr %dev_id, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %dma.0135 = phi i32 [ 0, %for.cond.preheader ], [ %inc36, %for.inc.for.body_crit_edge ]
  %shl = shl i32 256, %dma.0135
  %and7 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then9:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.cs4281, ptr %dev_id, i32 0, i32 15, i32 %dma.0135
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %regHDSR = getelementptr %struct.cs4281, ptr %dev_id, i32 0, i32 15, i32 %dma.0135, i32 7
  %6 = ptrtoint ptr %regHDSR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regHDSR, align 4
  %8 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #12, !srcloc !186
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %frag = getelementptr %struct.cs4281, ptr %dev_id, i32 0, i32 15, i32 %dma.0135, i32 16
  %12 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frag, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %frag, align 4
  %and12 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp ne i32 %and12, 0
  %and15 = and i32 %inc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool13.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %frag, align 4
  %15 = ptrtoint ptr %spurious_dhtc_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %spurious_dhtc_irq, align 4
  %inc19 = add i32 %16, 1
  store i32 %inc19, ptr %spurious_dhtc_irq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  br label %for.inc

if.end21:                                         ; preds = %if.then9
  %and22 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %brmerge = select i1 %tobool23.not, i1 true, i1 %tobool16.not
  br i1 %brmerge, label %if.end33, label %if.then28

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %frag, align 4
  %18 = ptrtoint ptr %spurious_dtc_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %spurious_dtc_irq, align 4
  %inc31 = add i32 %19, 1
  store i32 %inc31, ptr %spurious_dtc_irq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  br label %for.inc

if.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %21) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %if.then28, %if.then17, %for.body.for.inc_crit_edge
  %inc36 = add nuw nsw i32 %dma.0135, 1
  %exitcond.not = icmp eq i32 %inc36, 4
  br i1 %exitcond.not, label %for.inc.if.end37_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end37_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end37:                                         ; preds = %for.inc.if.end37_crit_edge, %if.end3.if.end37_crit_edge
  %and38 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end77_crit_edge, label %land.lhs.true40

if.end37.if.end77_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

land.lhs.true40:                                  ; preds = %if.end37
  %rmidi = getelementptr inbounds %struct.cs4281, ptr %dev_id, i32 0, i32 12
  %22 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmidi, align 4
  %tobool41.not = icmp eq ptr %23, null
  br i1 %tobool41.not, label %land.lhs.true40.if.end77_crit_edge, label %if.then42

land.lhs.true40.if.end77_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then42:                                        ; preds = %land.lhs.true40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #12
  %24 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %c, align 1, !annotation !180
  %reg_lock43 = getelementptr inbounds %struct.cs4281, ptr %dev_id, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %reg_lock43) #12
  %25 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i124137 = getelementptr i8, ptr %26, i32 1172
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124137) #12, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp46138 = icmp sgt i32 %27, -1
  br i1 %cmp46138, label %while.body.lr.ph, label %if.then42.while.cond54.preheader_crit_edge

if.then42.while.cond54.preheader_crit_edge:       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond54.preheader

while.body.lr.ph:                                 ; preds = %if.then42
  %midcr = getelementptr inbounds %struct.cs4281, ptr %dev_id, i32 0, i32 23
  %midi_input = getelementptr inbounds %struct.cs4281, ptr %dev_id, i32 0, i32 13
  br label %while.body

while.cond54.preheader:                           ; preds = %while.cond.backedge.while.cond54.preheader_crit_edge, %if.then42.while.cond54.preheader_crit_edge
  %28 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i128139 = getelementptr i8, ptr %29, i32 1172
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128139) #12, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %31 = and i32 %30, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp57140 = icmp eq i32 %31, 0
  br i1 %cmp57140, label %while.body59.lr.ph, label %while.cond54.preheader.while.end75_crit_edge

while.cond54.preheader.while.end75_crit_edge:     ; preds = %while.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end75

while.body59.lr.ph:                               ; preds = %while.cond54.preheader
  %midcr60 = getelementptr inbounds %struct.cs4281, ptr %dev_id, i32 0, i32 23
  %midi_output = getelementptr inbounds %struct.cs4281, ptr %dev_id, i32 0, i32 14
  br label %while.body59

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %32 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %33, i32 1180
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #12, !srcloc !186
  %35 = lshr i32 %34, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %conv = trunc i32 %35 to i8
  %36 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv, ptr %c, align 1
  %37 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %midcr, align 4
  %and48 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %cmp49 = icmp eq i32 %and48, 0
  br i1 %cmp49, label %while.body.while.cond.backedge_crit_edge, label %if.end52

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end52:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %midi_input to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %midi_input, align 4
  %call53 = call i32 @snd_rawmidi_receive(ptr noundef %40, ptr noundef nonnull %c, i32 noundef 1) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end52, %while.body.while.cond.backedge_crit_edge
  %41 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %42, i32 1172
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #12, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %cmp46 = icmp sgt i32 %43, -1
  br i1 %cmp46, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.cond54.preheader_crit_edge

while.cond.backedge.while.cond54.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond54.preheader

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body59:                                     ; preds = %if.end73.while.body59_crit_edge, %while.body59.lr.ph
  %44 = ptrtoint ptr %midcr60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %midcr60, align 4
  %and61 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %while.body59.while.end75_crit_edge, label %if.end65

while.body59.while.end75_crit_edge:               ; preds = %while.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end75

if.end65:                                         ; preds = %while.body59
  %46 = ptrtoint ptr %midi_output to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %midi_output, align 4
  %call66 = call i32 @snd_rawmidi_transmit(ptr noundef %47, ptr noundef nonnull %c, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 1
  br i1 %cmp67.not, label %if.end73, label %if.then69

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %midcr60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %midcr60, align 4
  %and71 = and i32 %49, -9
  store i32 %and71, ptr %midcr60, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  call void @arm_heavy_mb() #12
  %50 = call i32 @llvm.bswap.i32(i32 %and71) #12
  %51 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %52, i32 1168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %50) #12, !srcloc !183
  br label %while.end75

if.end73:                                         ; preds = %if.end65
  %53 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %c, align 1
  %conv74 = zext i8 %54 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  call void @arm_heavy_mb() #12
  %55 = shl nuw i32 %conv74, 24
  %56 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %57, i32 1176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %55) #12, !srcloc !183
  %58 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %59, i32 1172
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #12, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %61 = and i32 %60, 1073741824
  %cmp57 = icmp eq i32 %61, 0
  br i1 %cmp57, label %if.end73.while.body59_crit_edge, label %if.end73.while.end75_crit_edge

if.end73.while.end75_crit_edge:                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end75

if.end73.while.body59_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body59

while.end75:                                      ; preds = %if.end73.while.end75_crit_edge, %if.then69, %while.body59.while.end75_crit_edge, %while.cond54.preheader.while.end75_crit_edge
  call void @_raw_spin_unlock(ptr noundef %reg_lock43) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #12
  br label %if.end77

if.end77:                                         ; preds = %while.end75, %land.lhs.true40.if.end77_crit_edge, %if.end37.if.end77_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  call void @arm_heavy_mb() #12
  %62 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %63, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 50331648) #12, !srcloc !183
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end77 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs4281_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %gameport.i = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.snd_cs4281_free_gameport.exit_crit_edge, label %if.then.i

entry.snd_cs4281_free_gameport.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_free_gameport.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gameport_unregister_port(ptr noundef nonnull %3) #12
  %4 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %gameport.i, align 4
  br label %snd_cs4281_free_gameport.exit

snd_cs4281_free_gameport.exit:                    ; preds = %if.then.i, %entry.snd_cs4281_free_gameport.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -129) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %8, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 0) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 1856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #12, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_cs4281_chip_init(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 996
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !186
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and1 = and i32 %3, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1) #12
  %5 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i258 = getelementptr i8, ptr %6, i32 996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i258, i32 %4) #12, !srcloc !183
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dual_codec = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 5
  %card86 = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 10
  br label %__retry

__retry:                                          ; preds = %do.end101.__retry_crit_edge, %if.end
  %cmp102 = phi i1 [ false, %do.end101.__retry_crit_edge ], [ true, %if.end ]
  %7 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i260 = getelementptr i8, ptr %8, i32 1008
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %9)
  %cmp.not = icmp eq i32 %9, 16777216
  br i1 %cmp.not, label %__retry.if.end8_crit_edge, label %if.then3

__retry.if.end8_crit_edge:                        ; preds = %__retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %__retry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i262 = getelementptr i8, ptr %11, i32 1008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 16777216) #12, !srcloc !183
  %12 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i264 = getelementptr i8, ptr %13, i32 1008
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i264) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %14)
  %cmp5.not = icmp eq i32 %14, 16777216
  br i1 %cmp5.not, label %if.then3.if.end8_crit_edge, label %do.end

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %16 = ptrtoint ptr %card86 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card86, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef %15) #15
  br label %cleanup

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %__retry.if.end8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i266 = getelementptr i8, ptr %21, i32 992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i266, i32 -2126381056) #12, !srcloc !183
  %22 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i268 = getelementptr i8, ptr %23, i32 1064
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i268) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %24)
  %cmp10.not = icmp eq i32 %24, 50331648
  br i1 %cmp10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  %26 = ptrtoint ptr %card86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card86, align 4
  %dev16 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.16, i32 noundef %25) #15
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %30 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i270 = getelementptr i8, ptr %31, i32 1068
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i270) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %32)
  %cmp19.not = icmp eq i32 %32, 50331648
  br i1 %cmp19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  %34 = ptrtoint ptr %card86 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card86, align 4
  %dev25 = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.19, i32 noundef %33) #15
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i272 = getelementptr i8, ptr %39, i32 1856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i272, i32 2113929216) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i274 = getelementptr i8, ptr %41, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 0) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %42 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i276 = getelementptr i8, ptr %43, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276, i32 0) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %44 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i278 = getelementptr i8, ptr %45, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 0) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %47 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i280 = getelementptr i8, ptr %48, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 0) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i282 = getelementptr i8, ptr %51, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 16777216) #12, !srcloc !183
  tail call void @msleep(i32 noundef 50) #12
  %52 = ptrtoint ptr %dual_codec to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dual_codec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool27.not = icmp eq i32 %53, 0
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i284 = getelementptr i8, ptr %55, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 16842752) #12, !srcloc !183
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %56 = ptrtoint ptr %dual_codec to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dual_codec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool31.not = icmp eq i32 %57, 0
  %and33 = shl i32 %57, 16
  %shl = and i32 %and33, 196608
  %shl.op = or i32 %shl, 3
  %or34 = select i1 %tobool31.not, i32 65539, i32 %shl.op
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %58 = tail call i32 @llvm.bswap.i32(i32 %or34) #12
  %59 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i286 = getelementptr i8, ptr %60, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286, i32 %58) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %61 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i288 = getelementptr i8, ptr %62, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i288, i32 268435456) #12, !srcloc !183
  tail call void @msleep(i32 noundef 50) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %63 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i290 = getelementptr i8, ptr %64, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i290, i32 805306368) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %65, 100
  br label %do.body35

do.body35:                                        ; preds = %if.end40.do.body35_crit_edge, %if.end29
  %66 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i292 = getelementptr i8, ptr %67, i32 1024
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i292) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %69 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool38.not = icmp eq i32 %69, 0
  br i1 %tobool38.not, label %if.end40, label %__ok0

if.end40:                                         ; preds = %do.body35
  %call41 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %70
  %cmp43 = icmp sgt i32 %sub, -1
  br i1 %cmp43, label %if.end40.do.body35_crit_edge, label %do.end47

if.end40.do.body35_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %card86 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %card86, align 4
  %dev49 = getelementptr inbounds %struct.snd_card, ptr %72, i32 0, i32 27
  %73 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.22) #15
  br label %cleanup

__ok0:                                            ; preds = %do.body35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %75 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i294 = getelementptr i8, ptr %76, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i294, i32 33554432) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add50 = add i32 %77, 100
  br label %do.body51

do.body51:                                        ; preds = %if.end56.do.body51_crit_edge, %__ok0
  %78 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i296 = getelementptr i8, ptr %79, i32 1124
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i296) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %81 = and i32 %80, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool54.not = icmp eq i32 %81, 0
  br i1 %tobool54.not, label %if.end56, label %__ok1

if.end56:                                         ; preds = %do.body51
  %call57 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %sub59 = sub i32 %add50, %82
  %cmp60 = icmp sgt i32 %sub59, -1
  br i1 %cmp60, label %if.end56.do.body51_crit_edge, label %do.end64

if.end56.do.body51_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51

do.end64:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %card86 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %card86, align 4
  %dev66 = getelementptr inbounds %struct.snd_card, ptr %84, i32 0, i32 27
  %85 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev66, align 8
  %87 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i298 = getelementptr i8, ptr %88, i32 1124
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i298) #12, !srcloc !186
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.25, i32 noundef %90) #15
  br label %cleanup

__ok1:                                            ; preds = %do.body51
  %91 = ptrtoint ptr %dual_codec to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dual_codec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool69.not = icmp eq i32 %92, 0
  br i1 %tobool69.not, label %__ok1.if.end89_crit_edge, label %if.then70

__ok1.if.end89_crit_edge:                         ; preds = %__ok1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then70:                                        ; preds = %__ok1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %add71 = add i32 %93, 100
  br label %do.body72

do.body72:                                        ; preds = %if.end77.do.body72_crit_edge, %if.then70
  %94 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i300 = getelementptr i8, ptr %95, i32 1252
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i300) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %97 = and i32 %96, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool75.not = icmp eq i32 %97, 0
  br i1 %tobool75.not, label %if.end77, label %do.body72.if.end89_crit_edge

do.body72.if.end89_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.end77:                                         ; preds = %do.body72
  %call78 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %sub80 = sub i32 %add71, %98
  %cmp81 = icmp sgt i32 %sub80, -1
  br i1 %cmp81, label %if.end77.do.body72_crit_edge, label %do.end85

if.end77.do.body72_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body72

do.end85:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %card86 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %card86, align 4
  %dev87 = getelementptr inbounds %struct.snd_card, ptr %100, i32 0, i32 27
  %101 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev87, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.28) #15
  %103 = ptrtoint ptr %dual_codec to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %dual_codec, align 4
  br label %if.end89

if.end89:                                         ; preds = %do.end85, %do.body72.if.end89_crit_edge, %__ok1.if.end89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %104 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i302 = getelementptr i8, ptr %105, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i302, i32 100663296) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %add90 = add i32 %106, 100
  br label %do.body91

do.body91:                                        ; preds = %if.end96.do.body91_crit_edge, %if.end89
  %107 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i304 = getelementptr i8, ptr %108, i32 1140
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i304) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %110 = and i32 %109, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %110)
  %cmp94 = icmp eq i32 %110, 50331648
  br i1 %cmp94, label %__ok2, label %if.end96

if.end96:                                         ; preds = %do.body91
  %call97 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %111 = load volatile i32, ptr @jiffies, align 128
  %sub99 = sub i32 %add90, %111
  %cmp100 = icmp sgt i32 %sub99, -1
  br i1 %cmp100, label %if.end96.do.body91_crit_edge, label %do.end101

if.end96.do.body91_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body91

do.end101:                                        ; preds = %if.end96
  br i1 %cmp102, label %do.end101.__retry_crit_edge, label %do.end107

do.end101.__retry_crit_edge:                      ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %__retry

do.end107:                                        ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %card86 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %card86, align 4
  %dev109 = getelementptr inbounds %struct.snd_card, ptr %113, i32 0, i32 27
  %114 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev109, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.32) #15
  br label %cleanup

__ok2:                                            ; preds = %do.body91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %116 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i306 = getelementptr i8, ptr %117, i32 1128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i306, i32 50331648) #12, !srcloc !183
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %__ok2
  %tmp.0335 = phi i32 [ 0, %__ok2 ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %tmp.0335, 4
  %add112 = add nuw nsw i32 %mul, 280
  %regDBA = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 %tmp.0335, i32 1
  %118 = ptrtoint ptr %regDBA to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add112, ptr %regDBA, align 4
  %add114 = add nuw nsw i32 %mul, 272
  %regDCA = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 %tmp.0335, i32 2
  %119 = ptrtoint ptr %regDCA to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add114, ptr %regDCA, align 4
  %add116 = add nuw nsw i32 %mul, 284
  %regDBC = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 %tmp.0335, i32 3
  %120 = ptrtoint ptr %regDBC to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %add116, ptr %regDBC, align 4
  %add118 = add nuw nsw i32 %mul, 276
  %regDCC = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 %tmp.0335, i32 4
  %121 = ptrtoint ptr %regDCC to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add118, ptr %regDCC, align 4
  %mul119 = shl nuw nsw i32 %tmp.0335, 3
  %add120 = add nuw nsw i32 %mul119, 336
  %regDMR = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 %tmp.0335, i32 5
  %122 = ptrtoint ptr %regDMR to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %add120, ptr %regDMR, align 4
  %add122 = add nuw nsw i32 %mul119, 340
  %regDCR = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 %tmp.0335, i32 6
  %123 = ptrtoint ptr %regDCR to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add122, ptr %regDCR, align 4
  %mul123 = shl nuw nsw i32 %tmp.0335, 2
  %add124 = add nuw nsw i32 %mul123, 240
  %regHDSR = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 %tmp.0335, i32 7
  %124 = ptrtoint ptr %regHDSR to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add124, ptr %regHDSR, align 4
  %add126 = add nuw nsw i32 %mul123, 384
  %regFCR = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 %tmp.0335, i32 8
  %125 = ptrtoint ptr %regFCR to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add126, ptr %regFCR, align 4
  %add128 = add nuw nsw i32 %mul123, 528
  %regFSIC = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 %tmp.0335, i32 9
  %126 = ptrtoint ptr %regFSIC to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add128, ptr %regFSIC, align 4
  %mul129 = shl nuw nsw i32 %tmp.0335, 5
  %fifo_offset = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 %tmp.0335, i32 13
  %127 = ptrtoint ptr %fifo_offset to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %mul129, ptr %fifo_offset, align 4
  %or134 = or i32 %mul129, 522133504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %128 = tail call i32 @llvm.bswap.i32(i32 %or134) #12
  %129 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i308 = getelementptr i8, ptr %130, i32 %add126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i308, i32 %128) #12, !srcloc !183
  %inc = add nuw nsw i32 %tmp.0335, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %src_left_play_slot = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 16
  %131 = ptrtoint ptr %src_left_play_slot to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %src_left_play_slot, align 4
  %src_right_play_slot = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 17
  %132 = ptrtoint ptr %src_right_play_slot to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %src_right_play_slot, align 1
  %src_left_rec_slot = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 18
  %133 = ptrtoint ptr %src_left_rec_slot to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 10, ptr %src_left_rec_slot, align 2
  %src_right_rec_slot = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 19
  %134 = ptrtoint ptr %src_right_rec_slot to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 11, ptr %src_right_rec_slot, align 1
  %fifo_offset137 = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 15, i32 0, i32 13
  %135 = ptrtoint ptr %fifo_offset137 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %fifo_offset137, align 4
  %and138 = and i32 %136, 127
  %or140 = or i32 %and138, -2130698240
  %valFCR = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 15, i32 0, i32 12
  %137 = ptrtoint ptr %valFCR to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or140, ptr %valFCR, align 4
  %regFCR145 = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 15, i32 0, i32 8
  %138 = ptrtoint ptr %regFCR145 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %regFCR145, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %140 = tail call i32 @llvm.bswap.i32(i32 %or140) #12
  %141 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i310 = getelementptr i8, ptr %142, i32 %139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i310, i32 %140) #12, !srcloc !183
  %143 = ptrtoint ptr %src_left_play_slot to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %src_left_play_slot, align 4
  %conv = zext i8 %144 to i32
  %145 = ptrtoint ptr %src_right_play_slot to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %src_right_play_slot, align 1
  %conv152 = zext i8 %146 to i32
  %shl153 = shl nuw nsw i32 %conv152, 8
  %or154 = or i32 %shl153, %conv
  %147 = ptrtoint ptr %src_left_rec_slot to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %src_left_rec_slot, align 2
  %conv156 = zext i8 %148 to i32
  %shl157 = shl nuw nsw i32 %conv156, 16
  %or158 = or i32 %or154, %shl157
  %149 = ptrtoint ptr %src_right_rec_slot to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %src_right_rec_slot, align 1
  %conv160 = zext i8 %150 to i32
  %shl161 = shl nuw i32 %conv160, 24
  %or162 = or i32 %or158, %shl161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %151 = tail call i32 @llvm.bswap.i32(i32 %or162) #12
  %152 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i312 = getelementptr i8, ptr %153, i32 1884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i312, i32 %151) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %154 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i314 = getelementptr i8, ptr %155, i32 1888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 0) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %156 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i316 = getelementptr i8, ptr %157, i32 1892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i316, i32 0) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %158 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i318 = getelementptr i8, ptr %159, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i318, i32 50331648) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %160 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i320 = getelementptr i8, ptr %161, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i320, i32 -1000577) #12, !srcloc !183
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end107, %do.end64, %do.end47, %do.end23, %do.end14, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end14 ], [ -5, %do.end23 ], [ 0, %for.end ], [ -5, %do.end107 ], [ -5, %do.end64 ], [ -5, %do.end47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs4281_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.37) #12
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %spurious_dhtc_irq = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %spurious_dhtc_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spurious_dhtc_irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %7) #12
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %spurious_dtc_irq = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %spurious_dtc_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spurious_dtc_irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.39, i32 noundef %11) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_BA0_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readnone %file_private_data, ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, i64 noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ba0 = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ba0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ba0, align 4
  %idx.ext = trunc i64 %pos to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %call = tail call i32 @copy_to_user_fromio(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count. = select i1 %tobool.not, i32 %count, i32 -14
  ret i32 %count.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_to_user_fromio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_BA1_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readnone %file_private_data, ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, i64 noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ba1 = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ba1, align 4
  %idx.ext = trunc i64 %pos to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %call = tail call i32 @copy_to_user_fromio(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count. = select i1 %tobool.not, i32 %count, i32 -14
  ret i32 %count.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs4281_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conv = zext i16 %reg to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #12, !srcloc !183
  %conv1 = zext i16 %val to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv1) #12
  %6 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %5) #12, !srcloc !183
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %or = select i1 %tobool.not, i32 234881024, i32 1308622848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %or) #12, !srcloc !183
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %count.022, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %do.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %count.022 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #12
  %13 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %14, i32 1120
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %16 = and i32 %15, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.40, i32 noundef %conv, i32 noundef %conv1) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_cs4281_ac97_read(ptr noundef %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  %ac97_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ac97_num)
  %2 = ptrtoint ptr %ac97_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 -1, ptr %ac97_num, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load volatile i16, ptr %num, align 8
  %conv = zext i16 %4 to i32
  store volatile i32 %conv, ptr %ac97_num, align 4
  %ac97_num.0.ac97_num.0.ac97_num.0. = load volatile i32, ptr %ac97_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ac97_num.0.ac97_num.0.ac97_num.0.)
  %tobool.not = icmp eq i32 %ac97_num.0.ac97_num.0.ac97_num.0., 0
  %cond = select i1 %tobool.not, i32 1148, i32 1276
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %cond
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %conv1 = zext i16 %reg to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv1) #12
  %9 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %10, i32 1132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %8) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %12, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 0) #12, !srcloc !183
  %13 = ptrtoint ptr %ac97_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %ac97_num.0.ac97_num.0.ac97_num.0.32 = load volatile i32, ptr %ac97_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ac97_num.0.ac97_num.0.ac97_num.0.32)
  %tobool2.not = icmp eq i32 %ac97_num.0.ac97_num.0.ac97_num.0.32, 0
  %or = select i1 %tobool2.not, i32 503316480, i32 1577058304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %15, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %or) #12, !srcloc !183
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %count.061, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %do.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %count.061 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #12
  %17 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %18, i32 1120
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %20 = and i32 %19, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not = icmp eq i32 %20, 0
  br i1 %tobool6.not, label %for.body.for.body11_crit_edge, label %for.cond

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.42, i32 noundef %conv1) #15
  br label %__end

for.body11:                                       ; preds = %if.end18.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %count.162 = phi i32 [ %inc20, %if.end18.for.body11_crit_edge ], [ 0, %for.body.for.body11_crit_edge ]
  %25 = ptrtoint ptr %ac97_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %ac97_num.0.ac97_num.0.ac97_num.0.33 = load volatile i32, ptr %ac97_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ac97_num.0.ac97_num.0.ac97_num.0.33)
  %tobool12.not = icmp eq i32 %ac97_num.0.ac97_num.0.ac97_num.0.33, 0
  %cond13 = select i1 %tobool12.not, i32 1124, i32 1252
  %26 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %27, i32 %cond13
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %29 = and i32 %28, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not = icmp eq i32 %29, 0
  br i1 %tobool16.not, label %if.end18, label %__ok2

if.end18:                                         ; preds = %for.body11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #12
  %inc20 = add nuw nsw i32 %count.162, 1
  %exitcond63.not = icmp eq i32 %inc20, 100
  br i1 %exitcond63.not, label %do.end24, label %if.end18.for.body11_crit_edge

if.end18.for.body11_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %card25 = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %card25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card25, align 4
  %dev26 = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.45, i32 noundef %conv1) #15
  br label %__end

__ok2:                                            ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %ac97_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %ac97_num.0.ac97_num.0.ac97_num.0.34 = load volatile i32, ptr %ac97_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ac97_num.0.ac97_num.0.ac97_num.0.34)
  %tobool28.not = icmp eq i32 %ac97_num.0.ac97_num.0.ac97_num.0.34, 0
  %cond29 = select i1 %tobool28.not, i32 1148, i32 1276
  %36 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %37, i32 %cond29
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #12, !srcloc !186
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %conv31 = trunc i32 %39 to i16
  br label %__end

__end:                                            ; preds = %__ok2, %do.end24, %do.end
  %result.0 = phi i16 [ %conv31, %__ok2 ], [ -1, %do.end24 ], [ -1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac97_num)
  ret i16 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_cs4281_mixer_free_ac97_bus(ptr nocapture noundef readonly %bus) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97_bus = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac97_bus, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_cs4281_mixer_free_ac97(ptr nocapture noundef readonly %ac97) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %ac971 = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 7
  %ac97_secondary = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 8
  %ac971.sink = select i1 %tobool.not, ptr %ac971, ptr %ac97_secondary
  %4 = ptrtoint ptr %ac971.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ac971.sink, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cs4281_info_volume(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  store i32 31, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_get_volume(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 16
  %and2 = and i32 %3, 65535
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !186
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %and3 = and i32 %7, 31
  %sub = xor i32 %and3, 31
  %8 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %9, i32 %and2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #12, !srcloc !186
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %and5 = and i32 %11, 31
  %sub6 = xor i32 %and5, 31
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %value, align 8
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub6, ptr %arrayidx8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_put_volume(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 16
  %and2 = and i32 %3, 65535
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !186
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %and3 = and i32 %7, 31
  %sub = xor i32 %and3, 31
  %8 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %9, i32 %and2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #12, !srcloc !186
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %and5 = and i32 %11, 31
  %sub6 = xor i32 %and5, 31
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub)
  %cmp.not = icmp eq i32 %13, %sub
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %and9 = shl i32 %13, 24
  %sub10 = and i32 %and9, 520093696
  %14 = xor i32 %sub10, 520093696
  %15 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %16, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %14) #12, !srcloc !183
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %change.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %arrayidx12 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub6)
  %cmp13.not = icmp eq i32 %18, %sub6
  br i1 %cmp13.not, label %if.end.if.end19_crit_edge, label %if.then14

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %and17 = shl i32 %18, 24
  %sub18 = and i32 %and17, 520093696
  %19 = xor i32 %sub18, 520093696
  %20 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %21, i32 %and2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %19) #12, !srcloc !183
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end.if.end19_crit_edge
  %change.1 = phi i32 [ 1, %if.then14 ], [ %change.0, %if.end.if.end19_crit_edge ]
  ret i32 %change.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dma2 = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %dma2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %dma2, align 4
  %left_slot = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 15, i32 0, i32 14
  %5 = ptrtoint ptr %left_slot to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %left_slot, align 4
  %right_slot = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 15, i32 0, i32 15
  %6 = ptrtoint ptr %right_slot to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %right_slot, align 1
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %7 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dma2, ptr %private_data4, align 8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %8 = call ptr @memcpy(ptr %hw, ptr @snd_cs4281_playback, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 20) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cs4281_playback_close(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %private_data2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 4
  %reg_lock = getelementptr inbounds %struct.cs4281, ptr %5, i32 0, i32 22
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  tail call fastcc void @snd_cs4281_mode(ptr noundef %5, ptr noundef %3, ptr noundef %1, i32 noundef 0)
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %private_data1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %reg_lock = getelementptr inbounds %struct.cs4281, ptr %5, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb3
    i32 1, label %entry.sw.bb7_crit_edge
    i32 6, label %entry.sw.bb7_crit_edge64
    i32 0, label %entry.sw.bb15_crit_edge
    i32 5, label %entry.sw.bb15_crit_edge65
  ]

entry.sw.bb15_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

entry.sw.bb7_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %valDCR = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %valDCR to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %valDCR, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %valDCR, align 4
  %valFCR = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %valFCR to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %valFCR, align 4
  %or2 = or i32 %10, -2147483648
  store i32 %or2, ptr %valFCR, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %valDCR4 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %valDCR4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %valDCR4, align 4
  %and = and i32 %12, -2
  store i32 %and, ptr %valDCR4, align 4
  %valFCR5 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %valFCR5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %valFCR5, align 4
  %and6 = and i32 %14, 2147483647
  store i32 %and6, ptr %valFCR5, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge64
  %regDMR = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %regDMR to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regDMR, align 4
  %valDMR = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %valDMR to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %valDMR, align 4
  %and8 = and i32 %18, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %and8) #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #12, !srcloc !183
  %22 = ptrtoint ptr %valDMR to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %valDMR, align 4
  %or10 = or i32 %23, 536870912
  store i32 %or10, ptr %valDMR, align 4
  %valDCR11 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %valDCR11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %valDCR11, align 4
  %and12 = and i32 %25, -2
  store i32 %and12, ptr %valDCR11, align 4
  %valFCR13 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %valFCR13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %valFCR13, align 4
  %or14 = or i32 %27, -2147483648
  store i32 %or14, ptr %valFCR13, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge65
  %valDMR16 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 10
  %28 = ptrtoint ptr %valDMR16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %valDMR16, align 4
  %and17 = and i32 %29, -805306369
  store i32 %and17, ptr %valDMR16, align 4
  %valDCR18 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 11
  %30 = ptrtoint ptr %valDCR18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %valDCR18, align 4
  %or19 = or i32 %31, 1
  store i32 %or19, ptr %valDCR18, align 4
  %valFCR20 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 12
  %32 = ptrtoint ptr %valFCR20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %valFCR20, align 4
  %and21 = and i32 %33, 2147483647
  store i32 %and21, ptr %valFCR20, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb7, %sw.bb3, %sw.bb
  %regDMR25 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %regDMR25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %regDMR25, align 4
  %valDMR26 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 10
  %36 = ptrtoint ptr %valDMR26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %valDMR26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  %ba0.i58 = getelementptr inbounds %struct.cs4281, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %ba0.i58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ba0.i58, align 4
  %add.ptr.i59 = getelementptr i8, ptr %40, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %38) #12, !srcloc !183
  %regFCR27 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 8
  %41 = ptrtoint ptr %regFCR27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %regFCR27, align 4
  %valFCR28 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 12
  %43 = ptrtoint ptr %valFCR28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %valFCR28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  %46 = ptrtoint ptr %ba0.i58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ba0.i58, align 4
  %add.ptr.i61 = getelementptr i8, ptr %47, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %45) #12, !srcloc !183
  %regDCR = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 6
  %48 = ptrtoint ptr %regDCR to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %regDCR, align 4
  %valDCR29 = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 11
  %50 = ptrtoint ptr %valDCR29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %valDCR29, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %53 = ptrtoint ptr %ba0.i58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ba0.i58, align 4
  %add.ptr.i63 = getelementptr i8, ptr %54, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %52) #12, !srcloc !183
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %private_data2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_size, align 4
  %regDCC = getelementptr inbounds %struct.cs4281_dma, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %regDCC to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regDCC, align 4
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %13 = xor i32 %12, -1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %sub3 = add i32 %14, %7
  ret i32 %sub3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_cs4281_mode(ptr nocapture noundef readonly %chip, ptr nocapture noundef %dma, ptr nocapture noundef readonly %runtime, i32 noundef %capture) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capture)
  %tobool.not = icmp eq i32 %capture, 0
  %or = select i1 %tobool.not, i32 88, i32 84
  %valDMR = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 10
  %0 = ptrtoint ptr %valDMR to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %valDMR, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 15
  %1 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or2 = or i32 %or, 131072
  %3 = ptrtoint ptr %valDMR to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or2, ptr %valDMR, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 12
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_unsigned(i32 noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp sgt i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %valDMR to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %valDMR, align 4
  %or6 = or i32 %7, 524288
  store i32 %or6, ptr %valDMR, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 4
  %call9 = tail call i32 @snd_pcm_format_big_endian(i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %valDMR to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %valDMR, align 4
  %or13 = or i32 %11, 262144
  store i32 %or13, ptr %valDMR, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format, align 4
  %call16 = tail call i32 @snd_pcm_format_width(i32 noundef %13) #12
  %14 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call16, label %if.end14.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 32, label %sw.bb25
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  %15 = ptrtoint ptr %valDMR to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %valDMR, align 4
  %or18 = or i32 %16, 65536
  store i32 %or18, ptr %valDMR, align 4
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp20 = icmp eq i32 %18, 1
  br i1 %cmp20, label %if.then21, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then21:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %or23 = or i32 %16, 4259840
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %valDMR to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %valDMR, align 4
  %or27 = or i32 %20, 1048576
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb25, %if.then21
  %or23.sink = phi i32 [ %or23, %if.then21 ], [ %or27, %sw.bb25 ]
  %21 = ptrtoint ptr %valDMR to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or23.sink, ptr %valDMR, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge
  %frag = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 16
  %22 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %frag, align 4
  %valDCR = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 11
  %23 = ptrtoint ptr %valDCR to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65537, ptr %valDCR, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 18
  %24 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buffer_size, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 16
  %26 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp28.not = icmp eq i32 %25, %27
  %spec.store.select = select i1 %cmp28.not, i32 65537, i32 196609
  %28 = ptrtoint ptr %valDCR to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.store.select, ptr %valDCR, align 4
  %regDBA = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 1
  %29 = ptrtoint ptr %regDBA to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regDBA, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 51
  %31 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 1
  %34 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #12, !srcloc !183
  %regDBC = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 3
  %36 = ptrtoint ptr %regDBC to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regDBC, align 4
  %38 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buffer_size, align 4
  %sub = add i32 %39, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %40 = tail call i32 @llvm.bswap.i32(i32 %sub) #12
  %41 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %42, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %40) #12, !srcloc !183
  %valDMR35 = getelementptr %struct.cs4281, ptr %chip, i32 0, i32 15, i32 1, i32 10
  %43 = ptrtoint ptr %valDMR35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %valDMR35, align 4
  %and = and i32 %44, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp36.not = icmp eq i32 %and, 0
  %src_left_play_slot = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 16
  %45 = ptrtoint ptr %src_left_play_slot to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %src_left_play_slot, align 4
  %conv37 = zext i8 %46 to i32
  %src_right_play_slot = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 17
  %47 = ptrtoint ptr %src_right_play_slot to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %src_right_play_slot, align 1
  %conv38 = zext i8 %48 to i32
  %shl39 = shl nuw nsw i32 %conv38, 8
  %or40 = or i32 %shl39, %conv37
  %src_left_rec_slot = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 18
  %49 = ptrtoint ptr %src_left_rec_slot to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %src_left_rec_slot, align 2
  %conv41 = zext i8 %50 to i32
  %shl42 = shl nuw nsw i32 %conv41, 16
  %or43 = or i32 %or40, %shl42
  br i1 %cmp36.not, label %cond.false, label %sw.epilog.cond.end_crit_edge

sw.epilog.cond.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %src_right_rec_slot = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 19
  %51 = ptrtoint ptr %src_right_rec_slot to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %src_right_rec_slot, align 1
  %conv45 = zext i8 %52 to i32
  %phi.bo = shl nuw i32 %conv45, 24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.epilog.cond.end_crit_edge
  %cond46 = phi i32 [ %phi.bo, %cond.false ], [ 520093696, %sw.epilog.cond.end_crit_edge ]
  %or48 = or i32 %or43, %cond46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %53 = tail call i32 @llvm.bswap.i32(i32 %or48) #12
  %54 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %55, i32 1884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %53) #12, !srcloc !183
  %left_slot = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 14
  %56 = ptrtoint ptr %left_slot to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %left_slot, align 4
  br i1 %tobool.not, label %if.then53, label %if.else

if.then53:                                        ; preds = %cond.end
  %58 = ptrtoint ptr %src_left_play_slot to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %src_left_play_slot, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp57 = icmp eq i8 %57, %59
  br i1 %cmp57, label %if.then59, label %if.then53.__skip_src_crit_edge

if.then53.__skip_src_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skip_src

if.then59:                                        ; preds = %if.then53
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 14
  %60 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rate, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %61, label %if.end9.i [
    i32 8000, label %if.then59.snd_cs4281_rate.exit_crit_edge
    i32 11025, label %sw.bb1.i
    i32 16000, label %sw.bb2.i
    i32 22050, label %sw.bb3.i
    i32 44100, label %sw.bb4.i
    i32 48000, label %sw.bb5.i
  ]

if.then59.snd_cs4281_rate.exit_crit_edge:         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit

sw.bb1.i:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit

sw.bb2.i:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit

sw.bb3.i:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit

sw.bb4.i:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit

sw.bb5.i:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit

if.end9.i:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %div.i = udiv i32 1536000, %61
  br label %snd_cs4281_rate.exit

snd_cs4281_rate.exit:                             ; preds = %if.end9.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then59.snd_cs4281_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i, %if.end9.i ], [ 0, %sw.bb5.i ], [ 1, %sw.bb4.i ], [ 2, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 5, %if.then59.snd_cs4281_rate.exit_crit_edge ]
  %right_slot = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 15
  %63 = ptrtoint ptr %right_slot to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %right_slot, align 1
  %65 = ptrtoint ptr %src_right_play_slot to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %src_right_play_slot, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp64.not = icmp eq i8 %64, %66
  br i1 %cmp64.not, label %snd_cs4281_rate.exit.if.end80_crit_edge, label %do.end, !prof !188

snd_cs4281_rate.exit.if.end80_crit_edge:          ; preds = %snd_cs4281_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

do.end:                                           ; preds = %snd_cs4281_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 755, i32 noundef 9, ptr noundef null) #12
  br label %if.end80

if.end80:                                         ; preds = %do.end, %snd_cs4281_rate.exit.if.end80_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %67 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #12
  %68 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %69, i32 1860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %67) #12, !srcloc !183
  br label %__skip_src

if.else:                                          ; preds = %cond.end
  %70 = ptrtoint ptr %src_left_rec_slot to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %src_left_rec_slot, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %71)
  %cmp92 = icmp eq i8 %57, %71
  br i1 %cmp92, label %if.then94, label %if.else.__skip_src_crit_edge

if.else.__skip_src_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skip_src

if.then94:                                        ; preds = %if.else
  %rate96 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 14
  %72 = ptrtoint ptr %rate96 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rate96, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %73, label %if.end9.i15 [
    i32 8000, label %if.then94.snd_cs4281_rate.exit17_crit_edge
    i32 11025, label %sw.bb1.i9
    i32 16000, label %sw.bb2.i10
    i32 22050, label %sw.bb3.i11
    i32 44100, label %sw.bb4.i12
    i32 48000, label %sw.bb5.i13
  ]

if.then94.snd_cs4281_rate.exit17_crit_edge:       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit17

sw.bb1.i9:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit17

sw.bb2.i10:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit17

sw.bb3.i11:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit17

sw.bb4.i12:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit17

sw.bb5.i13:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cs4281_rate.exit17

if.end9.i15:                                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  %div.i14 = udiv i32 1536000, %73
  br label %snd_cs4281_rate.exit17

snd_cs4281_rate.exit17:                           ; preds = %if.end9.i15, %sw.bb5.i13, %sw.bb4.i12, %sw.bb3.i11, %sw.bb2.i10, %sw.bb1.i9, %if.then94.snd_cs4281_rate.exit17_crit_edge
  %retval.0.i16 = phi i32 [ %div.i14, %if.end9.i15 ], [ 0, %sw.bb5.i13 ], [ 1, %sw.bb4.i12 ], [ 2, %sw.bb3.i11 ], [ 3, %sw.bb2.i10 ], [ 4, %sw.bb1.i9 ], [ 5, %if.then94.snd_cs4281_rate.exit17_crit_edge ]
  %right_slot99 = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 15
  %75 = ptrtoint ptr %right_slot99 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %right_slot99, align 1
  %src_right_rec_slot101 = getelementptr inbounds %struct.cs4281, ptr %chip, i32 0, i32 19
  %77 = ptrtoint ptr %src_right_rec_slot101 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %src_right_rec_slot101, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %78)
  %cmp103.not = icmp eq i8 %76, %78
  br i1 %cmp103.not, label %snd_cs4281_rate.exit17.if.end126_crit_edge, label %do.end120, !prof !188

snd_cs4281_rate.exit17.if.end126_crit_edge:       ; preds = %snd_cs4281_rate.exit17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end126

do.end120:                                        ; preds = %snd_cs4281_rate.exit17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 761, i32 noundef 9, ptr noundef null) #12
  br label %if.end126

if.end126:                                        ; preds = %do.end120, %snd_cs4281_rate.exit17.if.end126_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %79 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i16) #12
  %80 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %81, i32 1864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %79) #12, !srcloc !183
  br label %__skip_src

__skip_src:                                       ; preds = %if.end126, %if.else.__skip_src_crit_edge, %if.end80, %if.then53.__skip_src_crit_edge
  %regFCR = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 8
  %82 = ptrtoint ptr %regFCR to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %regFCR, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %83)
  %cmp136 = icmp eq i32 %83, 384
  br i1 %cmp136, label %if.then138, label %__skip_src.if.end143_crit_edge

__skip_src.if.end143_crit_edge:                   ; preds = %__skip_src
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then138:                                       ; preds = %__skip_src
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %85, i32 384
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %87 = and i32 %86, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %88 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %89, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %87) #12, !srcloc !183
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %__skip_src.if.end143_crit_edge
  %left_slot144 = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 14
  %90 = ptrtoint ptr %left_slot144 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %left_slot144, align 4
  %92 = and i8 %91, 31
  %and146 = zext i8 %92 to i32
  %shl147 = shl nuw nsw i32 %and146, 16
  br i1 %tobool.not, label %if.end143.cond.false153_crit_edge, label %land.lhs.true

if.end143.cond.false153_crit_edge:                ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false153

land.lhs.true:                                    ; preds = %if.end143
  %93 = ptrtoint ptr %valDMR to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %valDMR, align 4
  %and150 = and i32 %94, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %land.lhs.true.cond.false153_crit_edge, label %land.lhs.true.cond.end156_crit_edge

land.lhs.true.cond.end156_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end156

land.lhs.true.cond.false153_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false153

cond.false153:                                    ; preds = %land.lhs.true.cond.false153_crit_edge, %if.end143.cond.false153_crit_edge
  %right_slot154 = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 15
  %95 = ptrtoint ptr %right_slot154 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %right_slot154, align 1
  %97 = and i8 %96, 31
  %phi.bo1 = zext i8 %97 to i32
  %phi.bo2 = shl nuw nsw i32 %phi.bo1, 24
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false153, %land.lhs.true.cond.end156_crit_edge
  %cond157 = phi i32 [ %phi.bo2, %cond.false153 ], [ 520093696, %land.lhs.true.cond.end156_crit_edge ]
  %or160 = or i32 %cond157, %shl147
  %fifo_offset = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 13
  %98 = ptrtoint ptr %fifo_offset to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fifo_offset, align 4
  %and162 = and i32 %99, 127
  %or161 = or i32 %and162, %or160
  %or164 = or i32 %or161, 8192
  %valFCR = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 12
  %100 = ptrtoint ptr %valFCR to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or164, ptr %valFCR, align 4
  %101 = ptrtoint ptr %regFCR to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %regFCR, align 4
  %cond168 = select i1 %tobool.not, i32 0, i32 536870912
  %or169 = or i32 %or164, %cond168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %103 = tail call i32 @llvm.bswap.i32(i32 %or169) #12
  %104 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %105, i32 %102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %103) #12, !srcloc !183
  %106 = ptrtoint ptr %regFCR to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %regFCR, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %107)
  %cmp171 = icmp eq i32 %107, 384
  br i1 %cmp171, label %if.then173, label %cond.end156.if.end177_crit_edge

cond.end156.if.end177_crit_edge:                  ; preds = %cond.end156
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end177

if.then173:                                       ; preds = %cond.end156
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %valFCR to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %valFCR, align 4
  %or176 = or i32 %109, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %110 = tail call i32 @llvm.bswap.i32(i32 %or176) #12
  %111 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %112, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %110) #12, !srcloc !183
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %cond.end156.if.end177_crit_edge
  %regFSIC = getelementptr inbounds %struct.cs4281_dma, ptr %dma, i32 0, i32 9
  %113 = ptrtoint ptr %regFSIC to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %regFSIC, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %115 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %116, i32 %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 0) #12, !srcloc !183
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_unsigned(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_big_endian(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %arrayidx = getelementptr %struct.cs4281, ptr %1, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %arrayidx, align 4
  %left_slot = getelementptr %struct.cs4281, ptr %1, i32 0, i32 15, i32 1, i32 14
  %5 = ptrtoint ptr %left_slot to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %left_slot, align 4
  %right_slot = getelementptr %struct.cs4281, ptr %1, i32 0, i32 15, i32 1, i32 15
  %6 = ptrtoint ptr %right_slot to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 11, ptr %right_slot, align 1
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %7 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %private_data4, align 8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %8 = call ptr @memcpy(ptr %hw, ptr @snd_cs4281_capture, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 20) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cs4281_capture_close(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %private_data2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 4
  %reg_lock = getelementptr inbounds %struct.cs4281, ptr %5, i32 0, i32 22
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  tail call fastcc void @snd_cs4281_mode(ptr noundef %5, ptr noundef %3, ptr noundef %1, i32 noundef 1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_midi_output_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 22
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %uartm = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartm, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %uartm, align 4
  %midcr = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %midcr, align 4
  %or1 = or i32 %7, 1
  store i32 %or1, ptr %midcr, align 4
  %midi_output = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %midi_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %midi_output, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %7, 33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %ba0.i.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %ba0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ba0.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #12
  %13 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %midcr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %16 = ptrtoint ptr %ba0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ba0.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %17, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %15) #12, !srcloc !183
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %or1) #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #12, !srcloc !183
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_midi_output_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 22
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %midcr = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %midcr, align 4
  %and = and i32 %5, -10
  store i32 %and, ptr %midcr, align 4
  %midi_output = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %midi_output to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %midi_output, align 4
  %uartm = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 24
  %7 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uartm, align 4
  %and1 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %and, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %ba0.i.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %ba0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ba0.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #12
  %13 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %midcr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %16 = ptrtoint ptr %ba0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ba0.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %17, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %15) #12, !srcloc !183
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #12, !srcloc !183
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %uartm, align 4
  %and4 = and i32 %22, -2
  store i32 %and4, ptr %uartm, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs4281_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #2 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #12
  %4 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %byte, align 1, !annotation !180
  %reg_lock = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %midcr26 = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 23
  %5 = ptrtoint ptr %midcr26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %midcr26, align 4
  %and27 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.else25, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool28.not, label %land.rhs.preheader, label %if.then.if.end34_crit_edge

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.rhs.preheader:                               ; preds = %if.then
  %or = or i32 %6, 8
  %7 = ptrtoint ptr %midcr26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %midcr26, align 4
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.preheader
  %8 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1172
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %11 = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call16 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 1
  br i1 %cmp17.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %midcr26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %midcr26, align 4
  %and21 = and i32 %13, -9
  store i32 %and21, ptr %midcr26, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %byte, align 1
  %conv22 = zext i8 %15 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  call void @arm_heavy_mb() #12
  %16 = shl nuw i32 %conv22, 24
  %17 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %18, i32 1176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %16) #12, !srcloc !183
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then19
  %19 = ptrtoint ptr %midcr26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %midcr26, align 4
  %and10 = and i32 %20, 8
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %21 = ptrtoint ptr %midcr26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %midcr26, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  call void @arm_heavy_mb() #12
  %23 = call i32 @llvm.bswap.i32(i32 %22) #12
  %24 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %25, i32 1168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %23) #12, !srcloc !183
  br label %if.end34

if.else25:                                        ; preds = %entry
  br i1 %tobool28.not, label %if.else25.if.end34_crit_edge, label %if.then29

if.else25.if.end34_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  %and31 = and i32 %6, -9
  %26 = ptrtoint ptr %midcr26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and31, ptr %midcr26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %and31) #12
  %ba0.i54 = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %ba0.i54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ba0.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %29, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %27) #12, !srcloc !183
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.else25.if.end34_crit_edge, %while.end, %if.then.if.end34_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_midi_input_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 22
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %midcr = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %midcr, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %midcr, align 4
  %midi_input = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %midi_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %midi_input, align 4
  %uartm = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 24
  %7 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uartm, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %5, 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %ba0.i.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %ba0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ba0.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #12
  %13 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %midcr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %16 = ptrtoint ptr %ba0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ba0.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %17, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %15) #12, !srcloc !183
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #12, !srcloc !183
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs4281_midi_input_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 22
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %midcr = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %midcr, align 4
  %and = and i32 %5, -7
  store i32 %and, ptr %midcr, align 4
  %midi_input = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %midi_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %midi_input, align 4
  %uartm = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 24
  %7 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uartm, align 4
  %and1 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %and, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %ba0.i.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %ba0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ba0.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #12, !srcloc !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #12
  %13 = ptrtoint ptr %midcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %midcr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %16 = ptrtoint ptr %ba0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ba0.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %17, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %15) #12, !srcloc !183
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #12, !srcloc !183
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %uartm, align 4
  %and4 = and i32 %22, -3
  store i32 %and4, ptr %uartm, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs4281_midi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %midcr10 = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %midcr10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %midcr10, align 4
  %and11 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool12.not, label %if.then7, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %5, 4
  %6 = ptrtoint ptr %midcr10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %midcr10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #12, !srcloc !183
  br label %if.end18

if.else:                                          ; preds = %entry
  br i1 %tobool12.not, label %if.else.if.end18_crit_edge, label %if.then13

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and15 = and i32 %5, -5
  %10 = ptrtoint ptr %midcr10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and15, ptr %midcr10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %and15) #12
  %ba0.i29 = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %ba0.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ba0.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %13, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %11) #12, !srcloc !183
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.else.if.end18_crit_edge, %if.then7, %if.then.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cs4281_gameport_open(ptr nocapture noundef readnone %gameport, i32 noundef %mode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp ne i32 %mode, 1
  %. = sext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @snd_cs4281_gameport_read(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !189

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1182, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1152
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !186
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %conv = trunc i32 %5 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ %conv, %if.end23 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs4281_gameport_trigger(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !189

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1173, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #12, !srcloc !183
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4281_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %ac97 = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %6) #12
  %ac97_secondary = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %ac97_secondary to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ac97_secondary, align 4
  tail call void @snd_ac97_suspend(ptr noundef %8) #12
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 1024
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %12 = or i32 %11, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %14, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %12) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 33554432) #12, !srcloc !183
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.044 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %17 = add nsw i32 %i.044, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %17)
  %tobool.not = icmp ult i32 %17, 7
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [20 x i32], ptr @saved_regs, i32 0, i32 %i.044
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %21, i32 %19
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #12, !srcloc !186
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %arrayidx4 = getelementptr %struct.cs4281, ptr %3, i32 0, i32 26, i32 %i.044
  %24 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %26, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %28, i32 1856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 0) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %30, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 0) #12, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %32, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 0) #12, !srcloc !183
  %33 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %34, i32 1024
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %36 = and i32 %35, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %38, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %36) #12, !srcloc !183
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs4281_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %ba0.i = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %7 = or i32 %6, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %9, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %7) #12, !srcloc !183
  %call2 = tail call fastcc i32 @snd_cs4281_chip_init(ptr noundef %3)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = add nsw i32 %i.030, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %tobool.not = icmp ult i32 %10, 7
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [20 x i32], ptr @saved_regs, i32 0, i32 %i.030
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.cs4281, ptr %3, i32 0, i32 26, i32 %i.030
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %16 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %15) #12, !srcloc !183
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %ac97 = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %19) #12
  %ac97_secondary = getelementptr inbounds %struct.cs4281, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %ac97_secondary to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ac97_secondary, align 4
  tail call void @snd_ac97_resume(ptr noundef %21) #12
  %22 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %23, i32 1024
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %25 = and i32 %24, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %ba0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ba0.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %27, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %25) #12, !srcloc !183
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %28 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !65, !66, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/cs4281.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/cs4281.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/cs4281.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/cs4281.c", i32 34, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/cs4281.c", i32 35, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/cs4281.c", i32 36, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/cs4281.c", i32 37, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/cs4281.c", i32 38, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/cs4281.c", i32 39, i32 1}
!22 = !{ptr @__param_dual_codec, !23, !"__param_dual_codec", i1 false, i1 false}
!23 = !{!"../sound/pci/cs4281.c", i32 40, i32 1}
!24 = !{ptr @__UNIQUE_ID_dual_codectype252, !23, !"__UNIQUE_ID_dual_codectype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_dual_codec253, !26, !"__UNIQUE_ID_dual_codec253", i1 false, i1 false}
!26 = !{!"../sound/pci/cs4281.c", i32 41, i32 1}
!27 = !{ptr @__initcall__kmod_snd_cs4281__254_1999_cs4281_driver_init6, !28, !"__initcall__kmod_snd_cs4281__254_1999_cs4281_driver_init6", i1 false, i1 false}
!28 = !{!"../sound/pci/cs4281.c", i32 1999, i32 1}
!29 = !{ptr @__exitcall_cs4281_driver_exit, !28, !"__exitcall_cs4281_driver_exit", i1 false, i1 false}
!30 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!31 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!32 = !{ptr @index, !33, !"index", i1 false, i1 false}
!33 = !{!"../sound/pci/cs4281.c", i32 29, i32 12}
!34 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!35 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!36 = !{ptr @id, !37, !"id", i1 false, i1 false}
!37 = !{!"../sound/pci/cs4281.c", i32 30, i32 14}
!38 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!39 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!40 = !{ptr @enable, !41, !"enable", i1 false, i1 false}
!41 = !{!"../sound/pci/cs4281.c", i32 31, i32 13}
!42 = !{ptr @__param_str_dual_codec, !23, !"__param_str_dual_codec", i1 false, i1 false}
!43 = !{ptr @__param_arr_dual_codec, !23, !"__param_arr_dual_codec", i1 false, i1 false}
!44 = !{ptr @dual_codec, !45, !"dual_codec", i1 false, i1 false}
!45 = !{!"../sound/pci/cs4281.c", i32 32, i32 13}
!46 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cs4281_driver, !48, !"cs4281_driver", i1 false, i1 false}
!48 = !{!"../sound/pci/cs4281.c", i32 1990, i32 26}
!49 = !{ptr @snd_cs4281_ids, !50, !"snd_cs4281_ids", i1 false, i1 false}
!50 = !{!"../sound/pci/cs4281.c", i32 481, i32 35}
!51 = !{ptr @snd_cs4281_probe.dev, !52, !"dev", i1 false, i1 false}
!52 = !{!"../sound/pci/cs4281.c", i32 1833, i32 13}
!53 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/cs4281.c", i32 1875, i32 23}
!55 = !{ptr @.str.2, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/cs4281.c", i32 1876, i32 26}
!57 = !{ptr @.str.3, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/cs4281.c", i32 1877, i32 26}
!59 = !{ptr @snd_cs4281_create.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../sound/pci/cs4281.c", i32 1297, i32 2}
!61 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.5, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/cs4281.c", i32 1303, i32 3}
!64 = !{ptr @.str.6, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.7, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.9, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @snd_cs4281_create._entry, !63, !"_entry", i1 false, i1 false}
!69 = !{ptr @snd_cs4281_create._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.11, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/cs4281.c", i32 1319, i32 3}
!72 = !{ptr @snd_cs4281_create._entry.10, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @snd_cs4281_create._entry_ptr.12, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/cs4281.c", i32 1351, i32 4}
!76 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @snd_cs4281_chip_init._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @snd_cs4281_chip_init._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/cs4281.c", i32 1364, i32 3}
!81 = !{ptr @snd_cs4281_chip_init._entry.15, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @snd_cs4281_chip_init._entry_ptr.17, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.19, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/cs4281.c", i32 1370, i32 3}
!85 = !{ptr @snd_cs4281_chip_init._entry.18, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @snd_cs4281_chip_init._entry_ptr.20, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/cs4281.c", i32 1433, i32 2}
!89 = !{ptr @snd_cs4281_chip_init._entry.21, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @snd_cs4281_chip_init._entry_ptr.23, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/cs4281.c", i32 1459, i32 2}
!93 = !{ptr @snd_cs4281_chip_init._entry.24, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @snd_cs4281_chip_init._entry_ptr.26, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/cs4281.c", i32 1472, i32 3}
!97 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @snd_cs4281_chip_init._entry.27, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @snd_cs4281_chip_init._entry_ptr.30, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/cs4281.c", i32 1503, i32 2}
!102 = !{ptr @snd_cs4281_chip_init._entry.31, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @snd_cs4281_chip_init._entry_ptr.33, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/cs4281.c", i32 1148, i32 35}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/cs4281.c", i32 1149, i32 38}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/cs4281.c", i32 1155, i32 38}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/cs4281.c", i32 1107, i32 2}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/cs4281.c", i32 1108, i32 2}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/cs4281.c", i32 1109, i32 2}
!116 = !{ptr @snd_cs4281_proc_ops_BA0, !117, !"snd_cs4281_proc_ops_BA0", i1 false, i1 false}
!117 = !{!"../sound/pci/cs4281.c", i32 1136, i32 40}
!118 = !{ptr @snd_cs4281_proc_ops_BA1, !119, !"snd_cs4281_proc_ops_BA1", i1 false, i1 false}
!119 = !{!"../sound/pci/cs4281.c", i32 1140, i32 40}
!120 = !{ptr @snd_cs4281_mixer.ops, !121, !"ops", i1 false, i1 false}
!121 = !{!"../sound/pci/cs4281.c", i32 1066, i32 39}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/cs4281.c", i32 551, i32 2}
!124 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @snd_cs4281_ac97_write._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @snd_cs4281_ac97_write._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/cs4281.c", i32 612, i32 2}
!129 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @snd_cs4281_ac97_read._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @snd_cs4281_ac97_read._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/cs4281.c", i32 632, i32 2}
!134 = !{ptr @snd_cs4281_ac97_read._entry.44, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @snd_cs4281_ac97_read._entry_ptr.46, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/cs4281.c", i32 1027, i32 10}
!138 = !{ptr @snd_cs4281_fm_vol, !139, !"snd_cs4281_fm_vol", i1 false, i1 false}
!139 = !{!"../sound/pci/cs4281.c", i32 1024, i32 38}
!140 = !{ptr @db_scale_dsp, !141, !"db_scale_dsp", i1 false, i1 false}
!141 = !{!"../sound/pci/cs4281.c", i32 1022, i32 14}
!142 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/cs4281.c", i32 1038, i32 10}
!144 = !{ptr @snd_cs4281_pcm_vol, !145, !"snd_cs4281_pcm_vol", i1 false, i1 false}
!145 = !{!"../sound/pci/cs4281.c", i32 1035, i32 38}
!146 = !{ptr @snd_cs4281_playback_ops, !147, !"snd_cs4281_playback_ops", i1 false, i1 false}
!147 = !{!"../sound/pci/cs4281.c", i32 926, i32 33}
!148 = !{ptr @snd_cs4281_playback, !149, !"snd_cs4281_playback", i1 false, i1 false}
!149 = !{!"../sound/pci/cs4281.c", i32 822, i32 38}
!150 = !{ptr @snd_cs4281_capture_ops, !151, !"snd_cs4281_capture_ops", i1 false, i1 false}
!151 = !{!"../sound/pci/cs4281.c", i32 934, i32 33}
!152 = !{ptr @snd_cs4281_capture, !153, !"snd_cs4281_capture", i1 false, i1 false}
!153 = !{!"../sound/pci/cs4281.c", i32 847, i32 38}
!154 = !{ptr @snd_cs4281_midi_output, !155, !"snd_cs4281_midi_output", i1 false, i1 false}
!155 = !{!"../sound/pci/cs4281.c", i32 1698, i32 37}
!156 = !{ptr @snd_cs4281_midi_input, !157, !"snd_cs4281_midi_input", i1 false, i1 false}
!157 = !{!"../sound/pci/cs4281.c", i32 1705, i32 37}
!158 = !{ptr @.str.49, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/cs4281.c", i32 1237, i32 3}
!160 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @snd_cs4281_create_gameport._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @snd_cs4281_create_gameport._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.51, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/cs4281.c", i32 1242, i32 24}
!165 = !{ptr @.str.52, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/cs4281.c", i32 1243, i32 24}
!167 = !{ptr @cs4281_pm, !168, !"cs4281_pm", i1 false, i1 false}
!168 = !{!"../sound/pci/cs4281.c", i32 1984, i32 8}
!169 = !{ptr @saved_regs, !170, !"saved_regs", i1 false, i1 false}
!170 = !{!"../sound/pci/cs4281.c", i32 1896, i32 18}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{!"auto-init"}
!181 = !{i8 0, i8 2}
!182 = !{i64 2154956800}
!183 = !{i64 746052}
!184 = !{i64 2154957765}
!185 = !{i64 2154917020}
!186 = !{i64 746470}
!187 = !{i64 2154917855}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{!"branch_weights", i32 1, i32 2000}
