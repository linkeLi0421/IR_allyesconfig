; ModuleID = '/llk/IR_all_yes/sound/pci/sonicvibes.c_pt.bc'
source_filename = "../sound/pci/sonicvibes.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_ratdens = type { i32, ptr }
%struct.snd_ratden = type { i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sonicvibes = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, ptr, ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_mpu401 = type { ptr, i16, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.timer_list, ptr, ptr }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
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
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }

@__UNIQUE_ID_author242 = internal constant [55 x i8] c"snd_sonicvibes.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [45 x i8] c"snd_sonicvibes.description=S3 SonicVibes PCI\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [45 x i8] c"snd_sonicvibes.file=sound/pci/snd-sonicvibes\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [27 x i8] c"snd_sonicvibes.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [21 x i8] c"snd_sonicvibes.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [43 x i8] c"snd_sonicvibes.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [67 x i8] c"snd_sonicvibes.parm=index:Index value for S3 SonicVibes soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [18 x i8] c"snd_sonicvibes.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [42 x i8] c"snd_sonicvibes.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [62 x i8] c"snd_sonicvibes.parm=id:ID string for S3 SonicVibes soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [22 x i8] c"snd_sonicvibes.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [45 x i8] c"snd_sonicvibes.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [59 x i8] c"snd_sonicvibes.parm=enable:Enable S3 SonicVibes soundcard.\00", section ".modinfo", align 1
@__param_str_reverb = internal constant [22 x i8] c"snd_sonicvibes.reverb\00", align 1
@__param_arr_reverb = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @reverb }, align 4
@__param_reverb = internal constant %struct.kernel_param { ptr @__param_str_reverb, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_reverb } }, section "__param", align 4
@__UNIQUE_ID_reverbtype252 = internal constant [45 x i8] c"snd_sonicvibes.parmtype=reverb:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reverb253 = internal constant [88 x i8] c"snd_sonicvibes.parm=reverb:Enable reverb (SRAM is present) for S3 SonicVibes soundcard.\00", section ".modinfo", align 1
@__param_str_mge = internal constant [19 x i8] c"snd_sonicvibes.mge\00", align 1
@__param_arr_mge = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @mge }, align 4
@__param_mge = internal constant %struct.kernel_param { ptr @__param_str_mge, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_mge } }, section "__param", align 4
@__UNIQUE_ID_mgetype254 = internal constant [42 x i8] c"snd_sonicvibes.parmtype=mge:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_mge255 = internal constant [69 x i8] c"snd_sonicvibes.parm=mge:MIC Gain Enable for S3 SonicVibes soundcard.\00", section ".modinfo", align 1
@__param_str_dmaio = internal constant [21 x i8] c"snd_sonicvibes.dmaio\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dmaio = internal global { i32, [28 x i8] } { i32 31232, [28 x i8] zeroinitializer }, align 32
@__param_dmaio = internal constant %struct.kernel_param { ptr @__param_str_dmaio, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @dmaio } }, section "__param", align 4
@__UNIQUE_ID_dmaiotype256 = internal constant [35 x i8] c"snd_sonicvibes.parmtype=dmaio:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dmaio257 = internal constant [77 x i8] c"snd_sonicvibes.parm=dmaio:DDMA i/o base address for S3 SonicVibes soundcard.\00", section ".modinfo", align 1
@__initcall__kmod_snd_sonicvibes__258_1468_sonicvibes_driver_init6 = internal global ptr @sonicvibes_driver_init, section ".initcall6.init", align 4
@sonicvibes_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_sonic_ids, ptr @snd_sonic_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sonicvibes_driver_exit = internal global ptr @sonicvibes_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@reverb = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@mge = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_sonicvibes\00", [17 x i8] zeroinitializer }, align 32
@snd_sonic_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 21299, i32 51712, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_sonic_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SonicVibes\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"S3 SonicVibes\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s rev %i at 0x%llx, irq %i\00", [36 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1221, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"architecture does not support 24bit PCI busmaster DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_sonicvibes_create\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/pci/sonicvibes.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create._entry_ptr = internal global ptr @snd_sonicvibes_create._entry, section ".printk_index", align 4
@snd_sonicvibes_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sonic->reg_lock\00", [47 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1242, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create._entry_ptr.12 = internal global ptr @snd_sonicvibes_create._entry.10, section ".printk_index", align 4
@snd_sonicvibes_create._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1259, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"BIOS did not allocate DDMA channel A i/o, allocated at 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create._entry_ptr.16 = internal global ptr @snd_sonicvibes_create._entry.13, section ".printk_index", align 4
@snd_sonicvibes_create._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 1266, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"BIOS did not allocate DDMA channel C i/o, allocated at 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create._entry_ptr.19 = internal global ptr @snd_sonicvibes_create._entry.17, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"S3 SonicVibes DDMA-A\00", [43 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 1276, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to grab DDMA-A port at 0x%x-0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create._entry_ptr.23 = internal global ptr @snd_sonicvibes_create._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"S3 SonicVibes DDMA-C\00", [43 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 1284, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to grab DDMA-C port at 0x%x-0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create._entry_ptr.27 = internal global ptr @snd_sonicvibes_create._entry.25, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_sonicvibes_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 614, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IRQ failure - interrupts disabled!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sonicvibes_interrupt\00", [39 x i8] zeroinitializer }, align 32
@snd_sonicvibes_interrupt._entry_ptr = internal global ptr @snd_sonicvibes_interrupt._entry, section ".printk_index", align 4
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sonicvibes\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SRS 3D           : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SRS Space        : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"100%\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"75%\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"50%\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"25%\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0%\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SRS Center       : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WaveTable Source : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"on-board ROM\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCI bus\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"on-board ROM + PCI bus\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Onboard synth    : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Ext. Rx to synth : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MIDI to ext. Tx  : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3_86c617\00", [22 x i8] zeroinitializer }, align 32
@snd_sonicvibes_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_sonicvibes_playback_open, ptr @snd_sonicvibes_playback_close, ptr null, ptr null, ptr null, ptr @snd_sonicvibes_playback_prepare, ptr @snd_sonicvibes_playback_trigger, ptr null, ptr @snd_sonicvibes_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_sonicvibes_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_sonicvibes_capture_open, ptr @snd_sonicvibes_capture_close, ptr null, ptr null, ptr null, ptr @snd_sonicvibes_capture_prepare, ptr @snd_sonicvibes_capture_trigger, ptr null, ptr @snd_sonicvibes_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_sonicvibes_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 32, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_sonicvibes_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 32, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_sonicvibes_hw_constraints_adc_clock = internal constant { %struct.snd_pcm_hw_constraint_ratdens, [24 x i8] } { %struct.snd_pcm_hw_constraint_ratdens { i32 1, ptr @sonicvibes_adc_clock }, [24 x i8] zeroinitializer }, align 32
@sonicvibes_adc_clock = internal constant { %struct.snd_ratden, [16 x i8] } { %struct.snd_ratden { i32 262144000, i32 -1149239296, i32 1, i32 65536 }, [16 x i8] zeroinitializer }, align 32
@snd_sonicvibes_controls = internal constant { [21 x %struct.snd_kcontrol_new], [240 x i8] } { [21 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 251658496 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 25101058 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 524288770 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 25101572 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 524289284 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 25102086 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 524289798 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 16844552 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 17760264 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 66560 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 25103114 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 524290826 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 1, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 25103628 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 1, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 524291340 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 25104142 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 524291854 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 25104656 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_double, ptr @snd_sonicvibes_get_double, ptr @snd_sonicvibes_put_double, %union.anon.84 zeroinitializer, i32 1061163280 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 65558 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 20906518 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_mux, ptr @snd_sonicvibes_get_mux, ptr @snd_sonicvibes_put_mux, %union.anon.84 zeroinitializer, i32 0 }], [240 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic Boost\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Synth Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Synth Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Loopback Capture Switch\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Loopback Capture Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@snd_sonicvibes_info_mux.texts = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCM\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Aux1\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Aux0\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mix\00", [28 x i8] zeroinitializer }, align 32
@snd_sonicvibes_midi_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 65582 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 65838 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 65578 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 65834 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 66090 }], [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SonicVibes Wave Source RAM\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SonicVibes Wave Source RAM+ROM\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SonicVibes Onboard Synth\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SonicVibes External Rx to Synth\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SonicVibes External Tx\00", [41 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.6, i32 1165, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sonicvibes: cannot allocate memory for gameport\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_sonicvibes_create_gameport\00", [33 x i8] zeroinitializer }, align 32
@snd_sonicvibes_create_gameport._entry_ptr = internal global ptr @snd_sonicvibes_create_gameport._entry, section ".printk_index", align 4
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SonicVibes Gameport\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@snd_sonicvibes_game_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_sonicvibes_info_single, ptr @snd_sonicvibes_get_single, ptr @snd_sonicvibes_put_single, %union.anon.84 zeroinitializer, i32 983305 }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Joystick Speed\00", [17 x i8] zeroinitializer }, align 32
@switch.table.snd_sonicvibes_proc_read = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_sonicvibes_proc_read.85 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"dmaio\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 42, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"sonicvibes_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1462, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 37, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 38, i32 14 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 39, i32 13 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"reverb\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 40, i32 13 }
@___asan_gen_.104 = private unnamed_addr constant [4 x i8] c"mge\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 41, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1468, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"snd_sonic_ids\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 229, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1393, i32 13 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1418, i32 23 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1419, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1420, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1220, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1225, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1242, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1257, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1264, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1271, i32 20 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1274, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1279, i32 20 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1282, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 613, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1145, i32 36 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1120, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1122, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1128, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1134, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1138, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1139, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1140, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 855, i32 33 }
@___asan_gen_.254 = private unnamed_addr constant [28 x i8] c"snd_sonicvibes_playback_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 834, i32 33 }
@___asan_gen_.257 = private unnamed_addr constant [27 x i8] c"snd_sonicvibes_capture_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 842, i32 33 }
@___asan_gen_.260 = private unnamed_addr constant [24 x i8] c"snd_sonicvibes_playback\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 753, i32 38 }
@___asan_gen_.263 = private unnamed_addr constant [23 x i8] c"snd_sonicvibes_capture\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 772, i32 38 }
@___asan_gen_.266 = private unnamed_addr constant [40 x i8] c"snd_sonicvibes_hw_constraints_adc_clock\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 242, i32 51 }
@___asan_gen_.269 = private unnamed_addr constant [21 x i8] c"sonicvibes_adc_clock\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 236, i32 32 }
@___asan_gen_.272 = private unnamed_addr constant [24 x i8] c"snd_sonicvibes_controls\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1053, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1054, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1055, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1056, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1057, i32 1 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1058, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1059, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1060, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1061, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1062, i32 1 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1063, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1064, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1065, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1068, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1069, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1070, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1071, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1072, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1073, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1074, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 886, i32 28 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 887, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 887, i32 9 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 887, i32 16 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 887, i32 24 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 887, i32 32 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 887, i32 40 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 887, i32 47 }
@___asan_gen_.356 = private unnamed_addr constant [29 x i8] c"snd_sonicvibes_midi_controls\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1350, i32 38 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1351, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1352, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1353, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1354, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1355, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1164, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1169, i32 24 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1170, i32 24 }
@___asan_gen_.389 = private unnamed_addr constant [28 x i8] c"snd_sonicvibes_game_control\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1154, i32 38 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.393 = private constant [26 x i8] c"../sound/pci/sonicvibes.c\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1155, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant [38 x i8] c"switch.table.snd_sonicvibes_proc_read\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [41 x i8] c"switch.table.snd_sonicvibes_proc_read.85\00", align 1
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_dmaio257, ptr @__UNIQUE_ID_dmaiotype256, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_mge255, ptr @__UNIQUE_ID_mgetype254, ptr @__UNIQUE_ID_reverb253, ptr @__UNIQUE_ID_reverbtype252, ptr @__exitcall_sonicvibes_driver_exit, ptr @__initcall__kmod_snd_sonicvibes__258_1468_sonicvibes_driver_init6, ptr @__param_dmaio, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_mge, ptr @__param_reverb, ptr @snd_sonicvibes_create._entry, ptr @snd_sonicvibes_create._entry.10, ptr @snd_sonicvibes_create._entry.13, ptr @snd_sonicvibes_create._entry.17, ptr @snd_sonicvibes_create._entry.21, ptr @snd_sonicvibes_create._entry.25, ptr @snd_sonicvibes_create._entry_ptr, ptr @snd_sonicvibes_create._entry_ptr.12, ptr @snd_sonicvibes_create._entry_ptr.16, ptr @snd_sonicvibes_create._entry_ptr.19, ptr @snd_sonicvibes_create._entry_ptr.23, ptr @snd_sonicvibes_create._entry_ptr.27, ptr @snd_sonicvibes_create_gameport._entry, ptr @snd_sonicvibes_create_gameport._entry_ptr, ptr @snd_sonicvibes_interrupt._entry, ptr @snd_sonicvibes_interrupt._entry_ptr, ptr @sonicvibes_driver_exit, ptr @dmaio, ptr @sonicvibes_driver, ptr @index, ptr @id, ptr @enable, ptr @reverb, ptr @mge, ptr @.str, ptr @snd_sonic_ids, ptr @snd_sonic_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_sonicvibes_create.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @snd_sonicvibes_playback_ops, ptr @snd_sonicvibes_capture_ops, ptr @snd_sonicvibes_playback, ptr @snd_sonicvibes_capture, ptr @snd_sonicvibes_hw_constraints_adc_clock, ptr @sonicvibes_adc_clock, ptr @snd_sonicvibes_controls, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @snd_sonicvibes_info_mux.texts, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @snd_sonicvibes_midi_controls, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @snd_sonicvibes_game_control, ptr @.str.84, ptr @switch.table.snd_sonicvibes_proc_read, ptr @switch.table.snd_sonicvibes_proc_read.85], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmaio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sonicvibes_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reverb to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mge to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonic_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonic_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_create._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_create._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_create._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_create._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_hw_constraints_adc_clock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sonicvibes_adc_clock to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_controls to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_info_mux.texts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_midi_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_create_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sonicvibes_game_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_sonicvibes_proc_read to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_sonicvibes_proc_read.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sonicvibes_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sonicvibes_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sonicvibes_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @sonicvibes_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonic_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %dmaa.i = alloca i32, align 4
  %dmac.i = alloca i32, align 4
  %card = alloca ptr, align 4
  %midi_uart = alloca ptr, align 4
  %opl3 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #12
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %midi_uart) #12
  %1 = ptrtoint ptr %midi_uart to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %midi_uart, align 4, !annotation !247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opl3) #12
  %2 = ptrtoint ptr %opl3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %opl3, align 4, !annotation !247
  %3 = load i32, ptr @snd_sonic_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp = icmp sgt i32 %3, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @snd_sonic_probe.dev, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx3 = getelementptr [32 x i32], ptr @index, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %7, ptr noundef %9, ptr noundef null, i32 noundef 152, ptr noundef nonnull %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 8
  %14 = load i32, ptr @snd_sonic_probe.dev, align 4
  %arrayidx8 = getelementptr [32 x i8], ptr @reverb, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8, align 1, !range !248
  %arrayidx10 = getelementptr [32 x i8], ptr @mge, i32 0, i32 %14
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10, align 1, !range !248
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmaa.i) #12
  %19 = ptrtoint ptr %dmaa.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %dmaa.i, align 4, !annotation !247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dmac.i) #12
  %20 = ptrtoint ptr %dmac.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %dmac.i, align 4, !annotation !247
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.snd_sonicvibes_create.exit.thread_crit_edge, label %if.end.i

if.end7.snd_sonicvibes_create.exit.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_sonicvibes_create.exit.thread

if.end.i:                                         ; preds = %if.end7
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 16777215) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %21 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev3.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.4) #15
  br label %snd_sonicvibes_create.exit.thread

do.body5.i:                                       ; preds = %if.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 16777215) #12
  %reg_lock.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 28
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @snd_sonicvibes_create.__key, i16 noundef signext 3) #12
  %card9.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 22
  %23 = ptrtoint ptr %card9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %11, ptr %card9.i, align 4
  %pci10.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 21
  %24 = ptrtoint ptr %pci10.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pci, ptr %pci10.i, align 4
  %irq.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 2
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %irq.i, align 4
  %call11.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.body5.i.snd_sonicvibes_create.exit.thread_crit_edge, label %if.end14.i

do.body5.i.snd_sonicvibes_create.exit.thread_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_sonicvibes_create.exit.thread

if.end14.i:                                       ; preds = %do.body5.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %26 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resource.i, align 8
  %sb_port.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 3
  %28 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sb_port.i, align 4
  %arrayidx16.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %29 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx16.i, align 8
  %enh_port.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 4
  %31 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %enh_port.i, align 4
  %arrayidx19.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2
  %32 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx19.i, align 8
  %synth_port.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 5
  %34 = ptrtoint ptr %synth_port.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %synth_port.i, align 4
  %arrayidx22.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 3
  %35 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx22.i, align 8
  %midi_port.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 6
  %37 = ptrtoint ptr %midi_port.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %midi_port.i, align 4
  %arrayidx25.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 4
  %38 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx25.i, align 8
  %game_port.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 7
  %40 = ptrtoint ptr %game_port.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %game_port.i, align 4
  %irq28.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %41 = ptrtoint ptr %irq28.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq28.i, align 4
  %call.i251.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %42, ptr noundef nonnull @snd_sonicvibes_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.i)
  %tobool30.not.i = icmp eq i32 %call.i251.i, 0
  br i1 %tobool30.not.i, label %if.end37.i, label %do.end34.i

do.end34.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev35.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %43 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev35.i, align 8
  %45 = ptrtoint ptr %irq28.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq28.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.11, i32 noundef %46) #15
  br label %snd_sonicvibes_create.exit.thread

if.end37.i:                                       ; preds = %if.end14.i
  %47 = ptrtoint ptr %irq28.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq28.i, align 4
  %49 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 33
  %50 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 10
  %51 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @snd_sonicvibes_free, ptr %private_free.i, align 4
  %call41.i = call i32 @pci_read_config_dword(ptr noundef %pci, i32 noundef 64, ptr noundef nonnull %dmaa.i) #12
  %call42.i = call i32 @pci_read_config_dword(ptr noundef %pci, i32 noundef 72, ptr noundef nonnull %dmac.i) #12
  %52 = load i32, ptr @dmaio, align 4
  %and.i = and i32 %52, -16
  store i32 %and.i, ptr @dmaio, align 4
  %53 = ptrtoint ptr %dmaa.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dmaa.i, align 4
  %and43.i = and i32 %54, -16
  store i32 %and43.i, ptr %dmaa.i, align 4
  %55 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dmac.i, align 4
  %and44.i = and i32 %56, -16
  store i32 %and44.i, ptr %dmac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool45.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end37.i.if.end51.i_crit_edge

if.end37.i.if.end51.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %dmaa.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i, ptr %dmaa.i, align 4
  %add.i = add i32 %and.i, 16
  store i32 %add.i, ptr @dmaio, align 4
  %dev50.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %58 = ptrtoint ptr %dev50.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev50.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.14, i32 noundef %and.i) #15
  %60 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr.i = load i32, ptr %dmac.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.end37.i.if.end51.i_crit_edge
  %61 = phi i32 [ %.pr.i, %if.then46.i ], [ %and44.i, %if.end37.i.if.end51.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool52.not.i = icmp eq i32 %61, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %if.end51.i.if.end59.i_crit_edge

if.end51.i.if.end59.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then53.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = load i32, ptr @dmaio, align 4
  %63 = ptrtoint ptr %dmac.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %dmac.i, align 4
  %add54.i = add i32 %62, 16
  store i32 %add54.i, ptr @dmaio, align 4
  %dev58.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %64 = ptrtoint ptr %dev58.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev58.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.18, i32 noundef %62) #15
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then53.i, %if.end51.i.if.end59.i_crit_edge
  %66 = ptrtoint ptr %dmaa.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dmaa.i, align 4
  %call60.i = call i32 @pci_write_config_dword(ptr noundef %pci, i32 noundef 64, i32 noundef %67) #12
  %68 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dmac.i, align 4
  %call61.i = call i32 @pci_write_config_dword(ptr noundef %pci, i32 noundef 72, i32 noundef %69) #12
  %70 = ptrtoint ptr %dmaa.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dmaa.i, align 4
  %call63.i = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %71, i32 noundef 16, ptr noundef nonnull @.str.20) #12
  %res_dmaa.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 9
  %72 = ptrtoint ptr %res_dmaa.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call63.i, ptr %res_dmaa.i, align 4
  %tobool65.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool65.not.i, label %do.end69.i, label %if.end72.i

do.end69.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev70.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %73 = ptrtoint ptr %dev70.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev70.i, align 8
  %75 = ptrtoint ptr %dmaa.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dmaa.i, align 4
  %sub.i = add i32 %76, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.22, i32 noundef %76, i32 noundef %sub.i) #15
  br label %snd_sonicvibes_create.exit.thread

if.end72.i:                                       ; preds = %if.end59.i
  %77 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dmac.i, align 4
  %call74.i = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %78, i32 noundef 16, ptr noundef nonnull @.str.24) #12
  %res_dmac.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 11
  %79 = ptrtoint ptr %res_dmac.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call74.i, ptr %res_dmac.i, align 4
  %tobool76.not.i = icmp eq ptr %call74.i, null
  br i1 %tobool76.not.i, label %do.end80.i, label %if.end16

do.end80.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev81.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %80 = ptrtoint ptr %dev81.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev81.i, align 8
  %82 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dmac.i, align 4
  %sub83.i = add i32 %83, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.26, i32 noundef %83, i32 noundef %sub83.i) #15
  br label %snd_sonicvibes_create.exit.thread

snd_sonicvibes_create.exit.thread:                ; preds = %do.end80.i, %do.end69.i, %do.end34.i, %do.body5.i.snd_sonicvibes_create.exit.thread_crit_edge, %do.end.i, %if.end7.snd_sonicvibes_create.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call11.i, %do.body5.i.snd_sonicvibes_create.exit.thread_crit_edge ], [ %call.i, %if.end7.snd_sonicvibes_create.exit.thread_crit_edge ], [ -16, %do.end69.i ], [ -16, %do.end80.i ], [ -16, %do.end34.i ], [ -6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmac.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmaa.i) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end72.i
  %dmaa_port.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 8
  %call85.i = call i32 @pci_read_config_dword(ptr noundef %pci, i32 noundef 64, ptr noundef %dmaa_port.i) #12
  %dmac_port.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 10
  %call86.i = call i32 @pci_read_config_dword(ptr noundef %pci, i32 noundef 72, ptr noundef %dmac_port.i) #12
  %84 = ptrtoint ptr %dmaa_port.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dmaa_port.i, align 4
  %and88.i = and i32 %85, -16
  store i32 %and88.i, ptr %dmaa_port.i, align 4
  %86 = ptrtoint ptr %dmac_port.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dmac_port.i, align 4
  %and90.i = and i32 %87, -16
  store i32 %and90.i, ptr %dmac_port.i, align 4
  %or.i = or i32 %and88.i, 9
  %call92.i = call i32 @pci_write_config_dword(ptr noundef %pci, i32 noundef 64, i32 noundef %or.i) #12
  %88 = ptrtoint ptr %dmac_port.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dmac_port.i, align 4
  %or94.i = or i32 %89, 9
  %call95.i = call i32 @pci_write_config_dword(ptr noundef %pci, i32 noundef 72, i32 noundef %or94.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !249
  call void @arm_heavy_mb() #12
  %90 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %enh_port.i, align 4
  %and101.i = and i32 %91, 1048575
  %add102.i = or i32 %and101.i, -18874368
  %92 = inttoptr i32 %add102.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 -128) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 21474800) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !251
  call void @arm_heavy_mb() #12
  %94 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %enh_port.i, align 4
  %and109.i = and i32 %95, 1048575
  %add110.i = or i32 %and109.i, -18874368
  %96 = inttoptr i32 %add110.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %97(i32 noundef 21474800) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  call void @arm_heavy_mb() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool115.not.i = icmp eq i8 %16, 0
  %conv.i = select i1 %tobool115.not.i, i8 33, i8 37
  %98 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %enh_port.i, align 4
  %and119.i = and i32 %99, 1048575
  %add120.i = or i32 %and119.i, -18874368
  %100 = inttoptr i32 %add120.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 %conv.i) #12, !srcloc !250
  %101 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %enh_port.i, align 4
  %add123.i = add i32 %102, 2
  %and124.i = and i32 %add123.i, 1048575
  %add125.i = or i32 %and124.i, -18874368
  %103 = inttoptr i32 %add125.i to ptr
  %104 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %103) #12, !srcloc !253
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %105 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %enh_port.i, align 4
  %add.i.i = add i32 %106, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add8.i.i = or i32 %and.i.i, -18874368
  %107 = inttoptr i32 %add8.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 43) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %108(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %109 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %enh_port.i, align 4
  %add14.i.i = add i32 %110, 5
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %111 = inttoptr i32 %add16.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %111, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %112(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i.i) #12
  %enable.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 12
  %113 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %enable.i, align 4
  %call2.i253.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %114 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %enh_port.i, align 4
  %add.i255.i = add i32 %115, 4
  %and.i256.i = and i32 %add.i255.i, 1048575
  %add8.i257.i = or i32 %and.i256.i, -18874368
  %116 = inttoptr i32 %add8.i257.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 19) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %118 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %enh_port.i, align 4
  %add14.i258.i = add i32 %119, 5
  %and15.i259.i = and i32 %add14.i258.i, 1048575
  %add16.i260.i = or i32 %and15.i259.i, -18874368
  %120 = inttoptr i32 %add16.i260.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %121(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i253.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  call void @arm_heavy_mb() #12
  %irqmask.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 13
  %122 = ptrtoint ptr %irqmask.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -70, ptr %irqmask.i, align 1
  %123 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %enh_port.i, align 4
  %add132.i = add i32 %124, 1
  %and133.i = and i32 %add132.i, 1048575
  %add134.i = or i32 %and133.i, -18874368
  %125 = inttoptr i32 %add134.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 -70) #12, !srcloc !250
  %126 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %enh_port.i, align 4
  %add138.i = add i32 %127, 2
  %and139.i = and i32 %add138.i, 1048575
  %add140.i = or i32 %and139.i, -18874368
  %128 = inttoptr i32 %add140.i to ptr
  %129 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %128) #12, !srcloc !253
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %call2.i262.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %130 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %enh_port.i, align 4
  %add.i264.i = add i32 %131, 4
  %and.i265.i = and i32 %add.i264.i, 1048575
  %add8.i266.i = or i32 %and.i265.i, -18874368
  %132 = inttoptr i32 %add8.i266.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 34) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %133(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %134 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %enh_port.i, align 4
  %add14.i267.i = add i32 %135, 5
  %and15.i268.i = and i32 %add14.i267.i, 1048575
  %add16.i269.i = or i32 %and15.i268.i, -18874368
  %136 = inttoptr i32 %add16.i269.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %137(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i262.i) #12
  %call2.i271.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %138 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %enh_port.i, align 4
  %add.i273.i = add i32 %139, 4
  %and.i274.i = and i32 %add.i273.i, 1048575
  %add8.i275.i = or i32 %and.i274.i, -18874368
  %140 = inttoptr i32 %add8.i275.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %140, i8 48) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %141(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %142 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %enh_port.i, align 4
  %add14.i276.i = add i32 %143, 5
  %and15.i277.i = and i32 %add14.i276.i, 1048575
  %add16.i278.i = or i32 %and15.i277.i, -18874368
  %144 = inttoptr i32 %add16.i278.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %145(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i271.i) #12
  %call2.i280.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %146 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %enh_port.i, align 4
  %add.i282.i = add i32 %147, 4
  %and.i283.i = and i32 %add.i282.i, 1048575
  %add8.i284.i = or i32 %and.i283.i, -18874368
  %148 = inttoptr i32 %add8.i284.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 49) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %149(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %150 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %enh_port.i, align 4
  %add14.i285.i = add i32 %151, 5
  %and15.i286.i = and i32 %add14.i285.i, 1048575
  %add16.i287.i = or i32 %and15.i286.i, -18874368
  %152 = inttoptr i32 %add16.i287.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %153(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i280.i) #12
  call fastcc void @snd_sonicvibes_setpll(ptr noundef %13, i32 noundef 8000) #12
  %srs_space.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 16
  %154 = ptrtoint ptr %srs_space.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -128, ptr %srs_space.i, align 4
  %call2.i289.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %155 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %enh_port.i, align 4
  %add.i291.i = add i32 %156, 4
  %and.i292.i = and i32 %add.i291.i, 1048575
  %add8.i293.i = or i32 %and.i292.i, -18874368
  %157 = inttoptr i32 %add8.i293.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %157, i8 44) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %158(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %159 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %enh_port.i, align 4
  %add14.i294.i = add i32 %160, 5
  %and15.i295.i = and i32 %add14.i294.i, 1048575
  %add16.i296.i = or i32 %and15.i295.i, -18874368
  %161 = inttoptr i32 %add16.i296.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 -128) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %162(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i289.i) #12
  %srs_center.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 17
  %163 = ptrtoint ptr %srs_center.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %srs_center.i, align 1
  %call2.i298.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %164 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %enh_port.i, align 4
  %add.i300.i = add i32 %165, 4
  %and.i301.i = and i32 %add.i300.i, 1048575
  %add8.i302.i = or i32 %and.i301.i, -18874368
  %166 = inttoptr i32 %add8.i302.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 45) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %167(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %168 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %enh_port.i, align 4
  %add14.i303.i = add i32 %169, 5
  %and15.i304.i = and i32 %add14.i303.i, 1048575
  %add16.i305.i = or i32 %and15.i304.i, -18874368
  %170 = inttoptr i32 %add16.i305.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %171(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i298.i) #12
  %mpu_switch.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 18
  %172 = ptrtoint ptr %mpu_switch.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 5, ptr %mpu_switch.i, align 2
  %call2.i307.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %173 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %enh_port.i, align 4
  %add.i309.i = add i32 %174, 4
  %and.i310.i = and i32 %add.i309.i, 1048575
  %add8.i311.i = or i32 %and.i310.i, -18874368
  %175 = inttoptr i32 %add8.i311.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %175, i8 42) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %176(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %177 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %enh_port.i, align 4
  %add14.i312.i = add i32 %178, 5
  %and15.i313.i = and i32 %add14.i312.i, 1048575
  %add16.i314.i = or i32 %and15.i313.i, -18874368
  %179 = inttoptr i32 %add16.i314.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 5) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %180(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i307.i) #12
  %wave_source.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 19
  %181 = ptrtoint ptr %wave_source.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %wave_source.i, align 1
  %call2.i316.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %182 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %enh_port.i, align 4
  %add.i318.i = add i32 %183, 4
  %and.i319.i = and i32 %add.i318.i, 1048575
  %add8.i320.i = or i32 %and.i319.i, -18874368
  %184 = inttoptr i32 %add8.i320.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %184, i8 46) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %185(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %186 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %enh_port.i, align 4
  %add14.i321.i = add i32 %187, 5
  %and15.i322.i = and i32 %add14.i321.i, 1048575
  %add16.i323.i = or i32 %and15.i322.i, -18874368
  %188 = inttoptr i32 %add16.i323.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %189 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %189(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i316.i) #12
  %call2.i325.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %190 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %enh_port.i, align 4
  %add.i327.i = add i32 %191, 4
  %and.i328.i = and i32 %add.i327.i, 1048575
  %add8.i329.i = or i32 %and.i328.i, -18874368
  %192 = inttoptr i32 %add8.i329.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %192, i8 30) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %193(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %194 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %enh_port.i, align 4
  %add14.i330.i = add i32 %195, 5
  %and15.i331.i = and i32 %add14.i330.i, 1048575
  %add16.i332.i = or i32 %and15.i331.i, -18874368
  %196 = inttoptr i32 %add16.i332.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %196, i8 -86) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %197(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i325.i) #12
  %call2.i334.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %198 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %enh_port.i, align 4
  %add.i336.i = add i32 %199, 4
  %and.i337.i = and i32 %add.i336.i, 1048575
  %add8.i338.i = or i32 %and.i337.i, -18874368
  %200 = inttoptr i32 %add8.i338.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %200, i8 31) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %201(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %202 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %enh_port.i, align 4
  %add14.i339.i = add i32 %203, 5
  %and15.i340.i = and i32 %add14.i339.i, 1048575
  %add16.i341.i = or i32 %and15.i340.i, -18874368
  %204 = inttoptr i32 %add16.i341.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %204, i8 42) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %205(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i334.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool144.not.i = icmp eq i8 %18, 0
  %conv146.i = select i1 %tobool144.not.i, i8 -64, i8 -48
  %call2.i343.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %206 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %enh_port.i, align 4
  %add.i345.i = add i32 %207, 4
  %and.i346.i = and i32 %add.i345.i, 1048575
  %add8.i347.i = or i32 %and.i346.i, -18874368
  %208 = inttoptr i32 %add8.i347.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %208, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %209(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %210 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %enh_port.i, align 4
  %add14.i348.i = add i32 %211, 5
  %and15.i349.i = and i32 %add14.i348.i, 1048575
  %add16.i350.i = or i32 %and15.i349.i, -18874368
  %212 = inttoptr i32 %add16.i350.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %212, i8 %conv146.i) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %213 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %213(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i343.i) #12
  %call2.i352.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %214 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %enh_port.i, align 4
  %add.i354.i = add i32 %215, 4
  %and.i355.i = and i32 %add.i354.i, 1048575
  %add8.i356.i = or i32 %and.i355.i, -18874368
  %216 = inttoptr i32 %add8.i356.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %216, i8 1) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %217(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %218 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %enh_port.i, align 4
  %add14.i357.i = add i32 %219, 5
  %and15.i358.i = and i32 %add14.i357.i, 1048575
  %add16.i359.i = or i32 %and15.i358.i, -18874368
  %220 = inttoptr i32 %add16.i359.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %220, i8 -64) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %221(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i352.i) #12
  %call2.i361.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %222 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %enh_port.i, align 4
  %add.i363.i = add i32 %223, 4
  %and.i364.i = and i32 %add.i363.i, 1048575
  %add8.i365.i = or i32 %and.i364.i, -18874368
  %224 = inttoptr i32 %add8.i365.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %224, i8 2) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %225 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %225(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %226 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %enh_port.i, align 4
  %add14.i366.i = add i32 %227, 5
  %and15.i367.i = and i32 %add14.i366.i, 1048575
  %add16.i368.i = or i32 %and15.i367.i, -18874368
  %228 = inttoptr i32 %add16.i368.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %228, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %229(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i361.i) #12
  %call2.i370.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %230 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %enh_port.i, align 4
  %add.i372.i = add i32 %231, 4
  %and.i373.i = and i32 %add.i372.i, 1048575
  %add8.i374.i = or i32 %and.i373.i, -18874368
  %232 = inttoptr i32 %add8.i374.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %232, i8 3) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %233(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %234 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %enh_port.i, align 4
  %add14.i375.i = add i32 %235, 5
  %and15.i376.i = and i32 %add14.i375.i, 1048575
  %add16.i377.i = or i32 %and15.i376.i, -18874368
  %236 = inttoptr i32 %add16.i377.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %236, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %237 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %237(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i370.i) #12
  %call2.i379.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %238 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %enh_port.i, align 4
  %add.i381.i = add i32 %239, 4
  %and.i382.i = and i32 %add.i381.i, 1048575
  %add8.i383.i = or i32 %and.i382.i, -18874368
  %240 = inttoptr i32 %add8.i383.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %240, i8 4) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %241 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %241(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %242 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %enh_port.i, align 4
  %add14.i384.i = add i32 %243, 5
  %and15.i385.i = and i32 %add14.i384.i, 1048575
  %add16.i386.i = or i32 %and15.i385.i, -18874368
  %244 = inttoptr i32 %add16.i386.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %244, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %245(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i379.i) #12
  %call2.i388.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %246 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %enh_port.i, align 4
  %add.i390.i = add i32 %247, 4
  %and.i391.i = and i32 %add.i390.i, 1048575
  %add8.i392.i = or i32 %and.i391.i, -18874368
  %248 = inttoptr i32 %add8.i392.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %248, i8 5) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %249 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %249(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %250 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %enh_port.i, align 4
  %add14.i393.i = add i32 %251, 5
  %and15.i394.i = and i32 %add14.i393.i, 1048575
  %add16.i395.i = or i32 %and15.i394.i, -18874368
  %252 = inttoptr i32 %add16.i395.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %252, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %253(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i388.i) #12
  %call2.i397.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %254 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %enh_port.i, align 4
  %add.i399.i = add i32 %255, 4
  %and.i400.i = and i32 %add.i399.i, 1048575
  %add8.i401.i = or i32 %and.i400.i, -18874368
  %256 = inttoptr i32 %add8.i401.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %256, i8 6) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %257(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %258 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %enh_port.i, align 4
  %add14.i402.i = add i32 %259, 5
  %and15.i403.i = and i32 %add14.i402.i, 1048575
  %add16.i404.i = or i32 %and15.i403.i, -18874368
  %260 = inttoptr i32 %add16.i404.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %260, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %261 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %261(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i397.i) #12
  %call2.i406.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %262 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %enh_port.i, align 4
  %add.i408.i = add i32 %263, 4
  %and.i409.i = and i32 %add.i408.i, 1048575
  %add8.i410.i = or i32 %and.i409.i, -18874368
  %264 = inttoptr i32 %add8.i410.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %264, i8 7) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %265(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %266 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %enh_port.i, align 4
  %add14.i411.i = add i32 %267, 5
  %and15.i412.i = and i32 %add14.i411.i, 1048575
  %add16.i413.i = or i32 %and15.i412.i, -18874368
  %268 = inttoptr i32 %add16.i413.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %268, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %269 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %269(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i406.i) #12
  %call2.i415.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %270 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %enh_port.i, align 4
  %add.i417.i = add i32 %271, 4
  %and.i418.i = and i32 %add.i417.i, 1048575
  %add8.i419.i = or i32 %and.i418.i, -18874368
  %272 = inttoptr i32 %add8.i419.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %272, i8 8) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %273 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %273(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %274 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %enh_port.i, align 4
  %add14.i420.i = add i32 %275, 5
  %and15.i421.i = and i32 %add14.i420.i, 1048575
  %add16.i422.i = or i32 %and15.i421.i, -18874368
  %276 = inttoptr i32 %add16.i422.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %276, i8 -113) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %277 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %277(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i415.i) #12
  %call2.i424.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %278 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %enh_port.i, align 4
  %add.i426.i = add i32 %279, 4
  %and.i427.i = and i32 %add.i426.i, 1048575
  %add8.i428.i = or i32 %and.i427.i, -18874368
  %280 = inttoptr i32 %add8.i428.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %280, i8 10) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %281 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %281(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %282 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %enh_port.i, align 4
  %add14.i429.i = add i32 %283, 5
  %and15.i430.i = and i32 %add14.i429.i, 1048575
  %add16.i431.i = or i32 %and15.i430.i, -18874368
  %284 = inttoptr i32 %add16.i431.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %284, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %285 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %285(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i424.i) #12
  %call2.i433.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %286 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %enh_port.i, align 4
  %add.i435.i = add i32 %287, 4
  %and.i436.i = and i32 %add.i435.i, 1048575
  %add8.i437.i = or i32 %and.i436.i, -18874368
  %288 = inttoptr i32 %add8.i437.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %288, i8 11) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %289 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %289(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %290 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %enh_port.i, align 4
  %add14.i438.i = add i32 %291, 5
  %and15.i439.i = and i32 %add14.i438.i, 1048575
  %add16.i440.i = or i32 %and15.i439.i, -18874368
  %292 = inttoptr i32 %add16.i440.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %292, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %293 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %293(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i433.i) #12
  %call2.i442.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %294 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %enh_port.i, align 4
  %add.i444.i = add i32 %295, 4
  %and.i445.i = and i32 %add.i444.i, 1048575
  %add8.i446.i = or i32 %and.i445.i, -18874368
  %296 = inttoptr i32 %add8.i446.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %296, i8 12) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %297 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %297(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %298 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %enh_port.i, align 4
  %add14.i447.i = add i32 %299, 5
  %and15.i448.i = and i32 %add14.i447.i, 1048575
  %add16.i449.i = or i32 %and15.i448.i, -18874368
  %300 = inttoptr i32 %add16.i449.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %300, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %301 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %301(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i442.i) #12
  %call2.i451.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %302 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %enh_port.i, align 4
  %add.i453.i = add i32 %303, 4
  %and.i454.i = and i32 %add.i453.i, 1048575
  %add8.i455.i = or i32 %and.i454.i, -18874368
  %304 = inttoptr i32 %add8.i455.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %304, i8 13) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %305 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %305(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %306 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %enh_port.i, align 4
  %add14.i456.i = add i32 %307, 5
  %and15.i457.i = and i32 %add14.i456.i, 1048575
  %add16.i458.i = or i32 %and15.i457.i, -18874368
  %308 = inttoptr i32 %add16.i458.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %308, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %309 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %309(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i451.i) #12
  %call2.i460.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %310 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %enh_port.i, align 4
  %add.i462.i = add i32 %311, 4
  %and.i463.i = and i32 %add.i462.i, 1048575
  %add8.i464.i = or i32 %and.i463.i, -18874368
  %312 = inttoptr i32 %add8.i464.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %312, i8 14) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %313 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %313(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %314 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %enh_port.i, align 4
  %add14.i465.i = add i32 %315, 5
  %and15.i466.i = and i32 %add14.i465.i, 1048575
  %add16.i467.i = or i32 %and15.i466.i, -18874368
  %316 = inttoptr i32 %add16.i467.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %316, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %317 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %317(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i460.i) #12
  %call2.i469.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %318 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %enh_port.i, align 4
  %add.i471.i = add i32 %319, 4
  %and.i472.i = and i32 %add.i471.i, 1048575
  %add8.i473.i = or i32 %and.i472.i, -18874368
  %320 = inttoptr i32 %add8.i473.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %320, i8 15) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %321 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %321(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %322 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %enh_port.i, align 4
  %add14.i474.i = add i32 %323, 5
  %and15.i475.i = and i32 %add14.i474.i, 1048575
  %add16.i476.i = or i32 %and15.i475.i, -18874368
  %324 = inttoptr i32 %add16.i476.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %324, i8 -97) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %325 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %325(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i469.i) #12
  %call2.i478.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %326 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %enh_port.i, align 4
  %add.i480.i = add i32 %327, 4
  %and.i481.i = and i32 %add.i480.i, 1048575
  %add8.i482.i = or i32 %and.i481.i, -18874368
  %328 = inttoptr i32 %add8.i482.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %328, i8 16) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %329(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %330 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %enh_port.i, align 4
  %add14.i483.i = add i32 %331, 5
  %and15.i484.i = and i32 %add14.i483.i, 1048575
  %add16.i485.i = or i32 %and15.i484.i, -18874368
  %332 = inttoptr i32 %add16.i485.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %332, i8 -65) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %333 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %333(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i478.i) #12
  %call2.i487.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %334 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %enh_port.i, align 4
  %add.i489.i = add i32 %335, 4
  %and.i490.i = and i32 %add.i489.i, 1048575
  %add8.i491.i = or i32 %and.i490.i, -18874368
  %336 = inttoptr i32 %add8.i491.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %336, i8 17) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %337 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %337(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %338 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %enh_port.i, align 4
  %add14.i492.i = add i32 %339, 5
  %and15.i493.i = and i32 %add14.i492.i, 1048575
  %add16.i494.i = or i32 %and15.i493.i, -18874368
  %340 = inttoptr i32 %add16.i494.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %340, i8 -65) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %341 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %341(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i487.i) #12
  %call2.i496.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  call void @arm_heavy_mb() #12
  %342 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %enh_port.i, align 4
  %add.i498.i = add i32 %343, 4
  %and.i499.i = and i32 %add.i498.i, 1048575
  %add8.i500.i = or i32 %and.i499.i, -18874368
  %344 = inttoptr i32 %add8.i500.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %344, i8 22) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %345 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %345(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void @arm_heavy_mb() #12
  %346 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %enh_port.i, align 4
  %add14.i501.i = add i32 %347, 5
  %and15.i502.i = and i32 %add14.i501.i, 1048575
  %add16.i503.i = or i32 %and15.i502.i, -18874368
  %348 = inttoptr i32 %add16.i503.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %348, i8 -4) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %349 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %349(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i496.i) #12
  %call2.i505.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  call void @arm_heavy_mb() #12
  %350 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %enh_port.i, align 4
  %add.i507.i = add i32 %351, 4
  %and.i508.i = and i32 %add.i507.i, 1048575
  %add8.i509.i = or i32 %and.i508.i, -18874368
  %352 = inttoptr i32 %add8.i509.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %352, i8 21) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %353 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %353(i32 noundef 2147480) #12
  %354 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %enh_port.i, align 4
  %add11.i.i = add i32 %355, 5
  %and12.i.i = and i32 %add11.i.i, 1048575
  %add13.i.i = or i32 %and12.i.i, -18874368
  %356 = inttoptr i32 %add13.i.i to ptr
  %357 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %356) #12, !srcloc !253
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %358 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %358(i32 noundef 2147480) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i505.i) #12
  %revision.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 14
  %359 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %357, ptr %revision.i, align 2
  %360 = ptrtoint ptr %card9.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %card9.i, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %361, ptr noundef nonnull @.str.30, ptr noundef %13, ptr noundef nonnull @snd_sonicvibes_proc_read, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmac.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dmaa.i) #12
  %362 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %363, i32 0, i32 2
  %364 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 11)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %363, i32 0, i32 3
  %365 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 14)
  %longname = getelementptr inbounds %struct.snd_card, ptr %363, i32 0, i32 4
  %366 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %revision.i, align 2
  %conv = zext i8 %367 to i32
  %368 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx16.i, align 8
  %conv24 = zext i32 %369 to i64
  %370 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %irq.i, align 4
  %call25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname, i32 noundef %conv, i64 noundef %conv24, i32 noundef %371)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #12
  %372 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !247
  %373 = ptrtoint ptr %card9.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %card9.i, align 4
  %call.i96 = call i32 @snd_pcm_new(ptr noundef %374, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp.i97 = icmp slt i32 %call.i96, 0
  br i1 %cmp.i97, label %if.end16.snd_sonicvibes_pcm.exit.thread_crit_edge, label %if.end.i98

if.end16.snd_sonicvibes_pcm.exit.thread_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_sonicvibes_pcm.exit.thread

if.end.i98:                                       ; preds = %if.end16
  %375 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %pcm.i, align 4
  %tobool.not.i = icmp eq ptr %376, null
  br i1 %tobool.not.i, label %do.end.i99, label %if.end30, !prof !261

do.end.i99:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 858, i32 noundef 9, ptr noundef null) #12
  br label %snd_sonicvibes_pcm.exit.thread

snd_sonicvibes_pcm.exit.thread:                   ; preds = %do.end.i99, %if.end16.snd_sonicvibes_pcm.exit.thread_crit_edge
  %retval.0.i102.ph = phi i32 [ %call.i96, %if.end16.snd_sonicvibes_pcm.exit.thread_crit_edge ], [ -22, %do.end.i99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end.i98
  call void @snd_pcm_set_ops(ptr noundef nonnull %376, i32 noundef 0, ptr noundef nonnull @snd_sonicvibes_playback_ops) #12
  %377 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %378, i32 noundef 1, ptr noundef nonnull @snd_sonicvibes_capture_ops) #12
  %379 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %pcm.i, align 4
  %private_data.i100 = getelementptr inbounds %struct.snd_pcm, ptr %380, i32 0, i32 11
  %381 = ptrtoint ptr %private_data.i100 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %13, ptr %private_data.i100, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %380, i32 0, i32 3
  %382 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %380, i32 0, i32 7
  %383 = call ptr @memcpy(ptr %name.i, ptr @.str.2, i32 14)
  %pcm27.i = getelementptr inbounds %struct.sonicvibes, ptr %13, i32 0, i32 23
  %384 = ptrtoint ptr %pcm27.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr %380, ptr %pcm27.i, align 4
  %385 = ptrtoint ptr %pci10.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %pci10.i, align 4
  %dev.i101 = getelementptr inbounds %struct.pci_dev, ptr %386, i32 0, i32 44
  %call28.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %380, i32 noundef 2, ptr noundef %dev.i101, i32 noundef 65536, i32 noundef 131072) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #12
  %tobool.not.i103 = icmp eq ptr %13, null
  br i1 %tobool.not.i103, label %if.end30.do.end.i104_crit_edge, label %lor.rhs.i

if.end30.do.end.i104_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i104

lor.rhs.i:                                        ; preds = %if.end30
  %387 = ptrtoint ptr %card9.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %card9.i, align 4
  %tobool2.not.i = icmp eq ptr %388, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i104_crit_edge, label %if.end25.i105, !prof !261

lor.rhs.i.do.end.i104_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i104

do.end.i104:                                      ; preds = %lor.rhs.i.do.end.i104_crit_edge, %if.end30.do.end.i104_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1091, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end25.i105:                                    ; preds = %lor.rhs.i
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %388, i32 0, i32 6
  %389 = call ptr @memcpy(ptr %mixername.i, ptr @.str.2, i32 14)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end25.i105
  %idx.045.i = phi i32 [ 0, %if.end25.i105 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [21 x %struct.snd_kcontrol_new], ptr @snd_sonicvibes_controls, i32 0, i32 %idx.045.i
  %call27.i = call ptr @snd_ctl_new1(ptr noundef %arrayidx.i, ptr noundef nonnull %13) #12
  %call28.i106 = call i32 @snd_ctl_add(ptr noundef nonnull %388, ptr noundef %call27.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i106)
  %cmp29.i = icmp slt i32 %call28.i106, 0
  br i1 %cmp29.i, label %for.body.i.cleanup_crit_edge, label %if.end31.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %idx.045.i)
  %switch.i = icmp ult i32 %idx.045.i, 2
  br i1 %switch.i, label %sw.bb.i, label %if.end31.i.for.inc.i_crit_edge

if.end31.i.for.inc.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %private_free.i107 = getelementptr inbounds %struct.snd_kcontrol, ptr %call27.i, i32 0, i32 9
  %390 = ptrtoint ptr %private_free.i107 to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr @snd_sonicvibes_master_free, ptr %private_free.i107, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb.i, %if.end31.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %if.end35, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end35:                                         ; preds = %for.inc.i
  %391 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %card, align 4
  %393 = ptrtoint ptr %midi_port.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %midi_port.i, align 4
  %call36 = call i32 @snd_mpu401_uart_new(ptr noundef %392, i32 noundef 0, i16 noundef zeroext 5, i32 noundef %394, i32 noundef 36, i32 noundef -1, ptr noundef nonnull %midi_uart) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %395 = ptrtoint ptr %midi_uart to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %midi_uart, align 4
  %private_data.i109 = getelementptr inbounds %struct.snd_rawmidi, ptr %396, i32 0, i32 9
  %397 = ptrtoint ptr %private_data.i109 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %private_data.i109, align 4
  %399 = ptrtoint ptr %card9.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %card9.i, align 4
  %private_data2.i = getelementptr inbounds %struct.snd_mpu401, ptr %398, i32 0, i32 13
  %401 = ptrtoint ptr %private_data2.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %13, ptr %private_data2.i, align 4
  %open_input.i = getelementptr inbounds %struct.snd_mpu401, ptr %398, i32 0, i32 9
  %402 = ptrtoint ptr %open_input.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr @snd_sonicvibes_midi_input_open, ptr %open_input.i, align 4
  %close_input.i = getelementptr inbounds %struct.snd_mpu401, ptr %398, i32 0, i32 10
  %403 = ptrtoint ptr %close_input.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr @snd_sonicvibes_midi_input_close, ptr %close_input.i, align 4
  %call.i111 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_sonicvibes_midi_controls, ptr noundef %13) #12
  %call3.i = call i32 @snd_ctl_add(ptr noundef %400, ptr noundef %call.i111) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end40.snd_sonicvibes_midi.exit_crit_edge, label %for.cond.i

if.end40.snd_sonicvibes_midi.exit_crit_edge:      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_sonicvibes_midi.exit

for.cond.i:                                       ; preds = %if.end40
  %call.1.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_sonicvibes_midi_controls, i32 0, i32 1), ptr noundef %13) #12
  %call3.1.i = call i32 @snd_ctl_add(ptr noundef %400, ptr noundef %call.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %cmp4.1.i = icmp slt i32 %call3.1.i, 0
  br i1 %cmp4.1.i, label %for.cond.i.snd_sonicvibes_midi.exit_crit_edge, label %for.cond.1.i

for.cond.i.snd_sonicvibes_midi.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_sonicvibes_midi.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_sonicvibes_midi_controls, i32 0, i32 2), ptr noundef %13) #12
  %call3.2.i = call i32 @snd_ctl_add(ptr noundef %400, ptr noundef %call.2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %cmp4.2.i = icmp slt i32 %call3.2.i, 0
  br i1 %cmp4.2.i, label %for.cond.1.i.snd_sonicvibes_midi.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.snd_sonicvibes_midi.exit_crit_edge:  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_sonicvibes_midi.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_sonicvibes_midi_controls, i32 0, i32 3), ptr noundef %13) #12
  %call3.3.i = call i32 @snd_ctl_add(ptr noundef %400, ptr noundef %call.3.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3.i)
  %cmp4.3.i = icmp slt i32 %call3.3.i, 0
  br i1 %cmp4.3.i, label %for.cond.2.i.snd_sonicvibes_midi.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.snd_sonicvibes_midi.exit_crit_edge:  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_sonicvibes_midi.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.4.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_sonicvibes_midi_controls, i32 0, i32 4), ptr noundef %13) #12
  %call3.4.i = call i32 @snd_ctl_add(ptr noundef %400, ptr noundef %call.4.i) #12
  br label %snd_sonicvibes_midi.exit

snd_sonicvibes_midi.exit:                         ; preds = %for.cond.3.i, %for.cond.2.i.snd_sonicvibes_midi.exit_crit_edge, %for.cond.1.i.snd_sonicvibes_midi.exit_crit_edge, %for.cond.i.snd_sonicvibes_midi.exit_crit_edge, %if.end40.snd_sonicvibes_midi.exit_crit_edge
  %404 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %card, align 4
  %406 = ptrtoint ptr %synth_port.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %synth_port.i, align 4
  %add = add i32 %407, 2
  %call43 = call i32 @snd_opl3_create(ptr noundef %405, i32 noundef %407, i32 noundef %add, i16 noundef zeroext 769, i32 noundef 1, ptr noundef nonnull %opl3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %snd_sonicvibes_midi.exit.cleanup_crit_edge, label %if.end47

snd_sonicvibes_midi.exit.cleanup_crit_edge:       ; preds = %snd_sonicvibes_midi.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end47:                                         ; preds = %snd_sonicvibes_midi.exit
  %408 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %opl3, align 4
  %call48 = call i32 @snd_opl3_hwdep_new(ptr noundef %409, i32 noundef 0, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end47.cleanup_crit_edge, label %if.end52

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %call53 = call fastcc i32 @snd_sonicvibes_create_gameport(ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.cleanup_crit_edge, label %if.end57

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %410 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %card, align 4
  %call58 = call i32 @snd_card_register(ptr noundef %411) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.cleanup_crit_edge, label %if.end62

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %412 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %414 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr %413, ptr %driver_data.i.i, align 4
  %415 = load i32, ptr @snd_sonic_probe.dev, align 4
  %inc63 = add i32 %415, 1
  store i32 %inc63, ptr @snd_sonic_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end57.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %snd_sonicvibes_midi.exit.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %do.end.i104, %snd_sonicvibes_pcm.exit.thread, %snd_sonicvibes_create.exit.thread, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ %call43, %snd_sonicvibes_midi.exit.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ %call58, %if.end57.cleanup_crit_edge ], [ %retval.0.i.ph, %snd_sonicvibes_create.exit.thread ], [ %retval.0.i102.ph, %snd_sonicvibes_pcm.exit.thread ], [ -22, %do.end.i104 ], [ %call28.i106, %for.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opl3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %midi_uart) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_create(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_hwdep_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_sonicvibes_create_gameport(ptr noundef %sonic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1248) #16
  %gameport = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 33
  %1 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %gameport, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 22
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.80) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.82, i32 noundef 32) #12
  %pci = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 21
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
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.83, ptr noundef %retval.0.i.i) #12
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %parent = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev3, ptr %parent, align 8
  %game_port = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 7
  %15 = ptrtoint ptr %game_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %game_port, align 4
  %io = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %io, align 4
  tail call void @__gameport_register_port(ptr noundef nonnull %call7.i.i.i, ptr noundef null) #12
  %card5 = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 22
  %18 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card5, align 4
  %call6 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_sonicvibes_game_control, ptr noundef %sonic) #12
  %call7 = tail call i32 @snd_ctl_add(ptr noundef %19, ptr noundef %call6) #12
  %20 = tail call i32 @llvm.smin.i32(i32 %call7, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %20, %pci_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %enh_port = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enh_port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !262
  %conv = zext i8 %3 to i32
  %and3 = and i32 %conv, 133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @arm_heavy_mb() #12
  %irqmask = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %irqmask to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %irqmask, align 1
  %5 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enh_port, align 4
  %add8 = add i32 %6, 1
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %7 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -1) #12, !srcloc !250
  %card = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 22
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.28) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %pcm = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 23
  %12 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %if.end15.if.end28_crit_edge, label %if.then17

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then17:                                        ; preds = %if.end15
  %and19 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then17.if.end22_crit_edge, label %if.then21

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %playback_substream = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 24
  %14 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %playback_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %15) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then17.if.end22_crit_edge
  %and24 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end28_crit_edge, label %if.then26

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %capture_substream = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 25
  %16 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %capture_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %17) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge, %if.end15.if.end28_crit_edge
  %rmidi = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 26
  %18 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmidi, align 4
  %tobool29.not = icmp eq ptr %19, null
  %and32 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond = select i1 %tobool29.not, i1 true, i1 %tobool33.not
  br i1 %or.cond, label %if.end28.if.end38_crit_edge, label %if.then34

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data, align 4
  %call36 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %21) #12
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end28.if.end38_crit_edge
  %and40 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %if.then42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %reg_lock = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enh_port, align 4
  %add.i = add i32 %23, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %24 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 20) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #12
  %26 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enh_port, align 4
  %add3.i = add i32 %27, 5
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %28 = inttoptr i32 %add5.i to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #12
  %conv44 = zext i8 %29 to i32
  %and45 = and i32 %conv44, 63
  %and47 = and i32 %conv44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %sub = sub nsw i32 0, %and45
  %spec.select = select i1 %tobool48.not, i32 %sub, i32 %and45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %enh_port, align 4
  %add.i136 = add i32 %32, 4
  %and.i137 = and i32 %add.i136, 1048575
  %add1.i138 = or i32 %and.i137, -18874368
  %33 = inttoptr i32 %add1.i138 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 14) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #12
  %35 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %enh_port, align 4
  %add3.i139 = add i32 %36, 5
  %and4.i140 = and i32 %add3.i139, 1048575
  %add5.i141 = or i32 %and4.i140, -18874368
  %37 = inttoptr i32 %add5.i141 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #12
  %conv52 = zext i8 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %enh_port, align 4
  %add.i143 = add i32 %41, 4
  %and.i144 = and i32 %add.i143, 1048575
  %add1.i145 = or i32 %and.i144, -18874368
  %42 = inttoptr i32 %add1.i145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 15) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #12
  %44 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %enh_port, align 4
  %add3.i146 = add i32 %45, 5
  %and4.i147 = and i32 %add3.i146, 1048575
  %add5.i148 = or i32 %and4.i147, -18874368
  %46 = inttoptr i32 %add5.i148 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #12
  %conv54 = zext i8 %47 to i32
  %and55 = and i32 %conv52, 31
  %and56 = and i32 %conv54, 31
  %add57 = add nsw i32 %and55, %spec.select
  %49 = tail call i32 @llvm.smax.i32(i32 %add57, i32 0)
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 31)
  %add66 = add nsw i32 %and56, %spec.select
  %51 = tail call i32 @llvm.smax.i32(i32 %add66, i32 0)
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 31)
  %53 = ashr i8 %29, 7
  %sext = sext i8 %53 to i32
  %mleft.0 = xor i32 %conv52, %sext
  %mright.0 = xor i32 %conv54, %sext
  %and81 = and i32 %mleft.0, 128
  %or = or i32 %50, %and81
  %and82 = and i32 %mright.0, 128
  %or83 = or i32 %52, %and82
  %conv84 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %enh_port, align 4
  %add.i150 = add i32 %55, 4
  %and.i151 = and i32 %add.i150, 1048575
  %add1.i152 = or i32 %and.i151, -18874368
  %56 = inttoptr i32 %add1.i152 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 14) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %58 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %enh_port, align 4
  %add5.i153 = add i32 %59, 5
  %and6.i = and i32 %add5.i153, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %60 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %conv84) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 2147480) #12
  %conv85 = trunc i32 %or83 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %62 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %enh_port, align 4
  %add.i155 = add i32 %63, 4
  %and.i156 = and i32 %add.i155, 1048575
  %add1.i157 = or i32 %and.i156, -18874368
  %64 = inttoptr i32 %add1.i157 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 15) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %66 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %enh_port, align 4
  %add5.i158 = add i32 %67, 5
  %and6.i159 = and i32 %add5.i158, 1048575
  %add7.i160 = or i32 %and6.i159, -18874368
  %68 = inttoptr i32 %add7.i160 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %conv85) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 2147480) #12
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  %card87 = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 22
  %70 = ptrtoint ptr %card87 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card87, align 4
  %master_mute = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 31
  %72 = ptrtoint ptr %master_mute to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %master_mute, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %73, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %71, i32 noundef 1, ptr noundef %id) #12
  %74 = ptrtoint ptr %card87 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card87, align 4
  %master_volume = getelementptr inbounds %struct.sonicvibes, ptr %dev_id, i32 0, i32 32
  %76 = ptrtoint ptr %master_volume to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %master_volume, align 4
  %id89 = getelementptr inbounds %struct.snd_kcontrol, ptr %77, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %75, i32 noundef 1, ptr noundef %id89) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end38.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then42 ], [ 1, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_sonicvibes_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %gameport.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.snd_sonicvibes_free_gameport.exit_crit_edge, label %if.then.i

entry.snd_sonicvibes_free_gameport.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_sonicvibes_free_gameport.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gameport_unregister_port(ptr noundef nonnull %3) #12
  %4 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %gameport.i, align 4
  br label %snd_sonicvibes_free_gameport.exit

snd_sonicvibes_free_gameport.exit:                ; preds = %if.then.i, %entry.snd_sonicvibes_free_gameport.exit_crit_edge
  %pci = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %dmaa_port = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %dmaa_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dmaa_port, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %6, i32 noundef 64, i32 noundef %8) #12
  %9 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci, align 4
  %dmac_port = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %dmac_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dmac_port, align 4
  %call2 = tail call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef 72, i32 noundef %12) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_sonicvibes_setpll(ptr noundef %sonic, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %rate, i32 1220) #12
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 292968) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 146484, i32 %1)
  %cmp442.i = icmp ult i32 %1, 146484
  br i1 %cmp442.i, label %entry.for.inc.i_crit_edge, label %entry.for.cond5.preheader.i_crit_edge

entry.for.cond5.preheader.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  br label %for.inc.i

for.cond5.preheader.i:                            ; preds = %for.inc.i.for.cond5.preheader.i_crit_edge, %entry.for.cond5.preheader.i_crit_edge
  %rate.addr.0.lcssa.i = phi i32 [ %1, %entry.for.cond5.preheader.i_crit_edge ], [ %shl.i, %for.inc.i.for.cond5.preheader.i_crit_edge ]
  %r.0.lcssa.i = phi i32 [ 0, %entry.for.cond5.preheader.i_crit_edge ], [ %add.i, %for.inc.i.for.cond5.preheader.i_crit_edge ]
  br label %for.cond8.preheader.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %r.044.i = phi i32 [ %add.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %entry.for.inc.i_crit_edge ]
  %rate.addr.043.i = phi i32 [ %shl.i, %for.inc.i.for.inc.i_crit_edge ], [ %1, %entry.for.inc.i_crit_edge ]
  %add.i = add i32 %r.044.i, 32
  %shl.i = shl nuw nsw i32 %rate.addr.043.i, 1
  %cmp4.i = icmp ult i32 %rate.addr.043.i, 73242
  br i1 %cmp4.i, label %for.inc.i.for.inc.i_crit_edge, label %for.inc.i.for.cond5.preheader.i_crit_edge

for.inc.i.for.cond5.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.i

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.cond8.preheader.i:                            ; preds = %for.inc22.i.for.cond8.preheader.i_crit_edge, %for.cond5.preheader.i
  %metric.053.i = phi i32 [ -1, %for.cond5.preheader.i ], [ %2, %for.inc22.i.for.cond8.preheader.i_crit_edge ]
  %xn.052.i = phi i32 [ 3, %for.cond5.preheader.i ], [ %inc23.i, %for.inc22.i.for.cond8.preheader.i_crit_edge ]
  %n.051.i = phi i32 [ 0, %for.cond5.preheader.i ], [ %n.2.i, %for.inc22.i.for.cond8.preheader.i_crit_edge ]
  %m.050.i = phi i32 [ 0, %for.cond5.preheader.i ], [ %m.2.i, %for.inc22.i.for.cond8.preheader.i_crit_edge ]
  %sub18.i = add nsw i32 %xn.052.i, -2
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.cond8.preheader.i
  %metric.149.i = phi i32 [ %metric.053.i, %for.cond8.preheader.i ], [ %2, %for.body10.i.for.body10.i_crit_edge ]
  %xm.048.i = phi i32 [ 3, %for.cond8.preheader.i ], [ %inc.i, %for.body10.i.for.body10.i_crit_edge ]
  %n.147.i = phi i32 [ %n.051.i, %for.cond8.preheader.i ], [ %n.2.i, %for.body10.i.for.body10.i_crit_edge ]
  %m.146.i = phi i32 [ %m.050.i, %for.cond8.preheader.i ], [ %m.2.i, %for.body10.i.for.body10.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %xm.048.i, 48000
  %div.i = udiv i32 %mul.i, %xn.052.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %rate.addr.0.lcssa.i)
  %cmp11.not.i = icmp ult i32 %div.i, %rate.addr.0.lcssa.i
  %sub.i = sub i32 %div.i, %rate.addr.0.lcssa.i
  %sub13.i = sub i32 %rate.addr.0.lcssa.i, %div.i
  %xd.0.i = select i1 %cmp11.not.i, i32 %sub13.i, i32 %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %xd.0.i, i32 %metric.149.i)
  %cmp15.i = icmp ult i32 %xd.0.i, %metric.149.i
  %sub17.i = add nsw i32 %xm.048.i, -2
  %m.2.i = select i1 %cmp15.i, i32 %sub17.i, i32 %m.146.i
  %n.2.i = select i1 %cmp15.i, i32 %sub18.i, i32 %n.147.i
  %2 = tail call i32 @llvm.umin.i32(i32 %xd.0.i, i32 %metric.149.i) #12
  %inc.i = add nuw nsw i32 %xm.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 257
  br i1 %exitcond.not.i, label %for.inc22.i, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10.i

for.inc22.i:                                      ; preds = %for.body10.i
  %inc23.i = add nuw nsw i32 %xn.052.i, 1
  %exitcond54.not.i = icmp eq i32 %inc23.i, 33
  br i1 %exitcond54.not.i, label %snd_sonicvibes_pll.exit, label %for.inc22.i.for.cond8.preheader.i_crit_edge

for.inc22.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond8.preheader.i

snd_sonicvibes_pll.exit:                          ; preds = %for.inc22.i
  %cmp.not = icmp eq ptr %sonic, null
  br i1 %cmp.not, label %snd_sonicvibes_pll.exit.if.end_crit_edge, label %do.body1

snd_sonicvibes_pll.exit.if.end_crit_edge:         ; preds = %snd_sonicvibes_pll.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body1:                                         ; preds = %snd_sonicvibes_pll.exit
  call void @__sanitizer_cov_trace_pc() #14
  %reg_lock = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 28
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #12
  %conv6 = trunc i32 %m.2.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %enh_port.i = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 4
  %3 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enh_port.i, align 4
  %add.i1 = add i32 %4, 4
  %and.i = and i32 %add.i1, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 36) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enh_port.i, align 4
  %add5.i = add i32 %8, 5
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %9 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv6) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #12
  %or = or i32 %n.2.i, %r.0.lcssa.i
  %conv9 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enh_port.i, align 4
  %add.i3 = add i32 %12, 4
  %and.i4 = and i32 %add.i3, 1048575
  %add1.i5 = or i32 %and.i4, -18874368
  %13 = inttoptr i32 %add1.i5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 37) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enh_port.i, align 4
  %add5.i6 = add i32 %16, 5
  %and6.i7 = and i32 %add5.i6, 1048575
  %add7.i8 = or i32 %and6.i7, -18874368
  %17 = inttoptr i32 %add7.i8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv9) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #12
  br label %if.end

if.end:                                           ; preds = %do.body1, %snd_sonicvibes_pll.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_sonicvibes_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %srs_space = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %srs_space to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %srs_space, align 4
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  %cond = select i1 %tobool.not, ptr @.str.33, ptr @.str.32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond) #12
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %trunc = trunc i8 %3 to i4
  %8 = sext i4 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %9 = icmp ult i4 %trunc, 3
  br i1 %9, label %switch.lookup, label %cond.false19

cond.false19:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and)
  %cmp21 = icmp eq i8 %and, 3
  %cond23 = select i1 %cmp21, ptr @.str.38, ptr @.str.39
  br label %cond.end27

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = sext i4 %trunc to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.snd_sonicvibes_proc_read, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cond.end27

cond.end27:                                       ; preds = %switch.lookup, %cond.false19
  %cond28 = phi ptr [ %cond23, %cond.false19 ], [ %switch.load, %switch.lookup ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond28) #12
  %srs_center = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %srs_center to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %srs_center, align 1
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %trunc112 = trunc i8 %13 to i4
  %16 = sext i4 %trunc112 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %17 = icmp ult i4 %trunc112, 3
  br i1 %17, label %switch.lookup113, label %cond.false47

cond.false47:                                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #14
  %18 = and i8 %13, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp49 = icmp eq i8 %18, 3
  %cond51 = select i1 %cmp49, ptr @.str.38, ptr @.str.39
  br label %cond.end56

switch.lookup113:                                 ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #14
  %19 = sext i4 %trunc112 to i32
  %switch.gep114 = getelementptr inbounds [3 x ptr], ptr @switch.table.snd_sonicvibes_proc_read.85, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep114 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load115 = load ptr, ptr %switch.gep114, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %switch.lookup113, %cond.false47
  %cond57 = phi ptr [ %cond51, %cond.false47 ], [ %switch.load115, %switch.lookup113 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond57) #12
  %wave_source = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %wave_source to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wave_source, align 1
  %23 = and i8 %22, 3
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp63 = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp68 = icmp eq i8 %23, 1
  %cond70 = select i1 %cmp68, ptr @.str.43, ptr @.str.44
  %cond72 = select i1 %cmp63, ptr @.str.42, ptr %cond70
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond72) #12
  %mpu_switch = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %mpu_switch to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mpu_switch, align 2
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %conv74 = zext i8 %27 to i32
  %and75 = and i32 %conv74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %cond77 = select i1 %tobool76.not, ptr @.str.32, ptr @.str.33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond77) #12
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  %and80 = and i32 %conv74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %cond82 = select i1 %tobool81.not, ptr @.str.32, ptr @.str.33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond82) #12
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %and85 = and i32 %conv74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %cond87 = select i1 %tobool86.not, ptr @.str.32, ptr @.str.33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond87) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_playback_open(ptr noundef %substream) #2 align 64 {
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
  %mode = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %mode, align 4
  %playback_substream = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %playback_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw, ptr @snd_sonicvibes_playback, i32 64)
  %call = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_sonicvibes_hw_constraint_dac_rate, ptr noundef null, i32 noundef 11, i32 noundef -1) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_sonicvibes_playback_close(ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback_substream = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %playback_substream, align 4
  %mode = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %and = and i32 %4, -2
  store i32 %and, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size.i, align 4
  %mul.i.i35 = mul i32 %9, %7
  %div1.i.i36 = lshr i32 %mul.i.i35, 3
  %p_dma_size = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %p_dma_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div1.i.i, ptr %p_dma_size, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp ugt i32 %12, 1
  %spec.select = zext i1 %cmp to i8
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_width(i32 noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 16
  %15 = or i8 %spec.select, 2
  %fmt.1 = select i1 %cmp5, i8 %15, i8 %spec.select
  %dec = add nsw i32 %div1.i.i36, -1
  tail call fastcc void @snd_sonicvibes_setfmt(ptr noundef %1, i8 noundef zeroext -4, i8 noundef zeroext %fmt.1)
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  %mul.i = shl i32 %17, 16
  %add.i = or i32 %mul.i, 23936
  %div2.i = udiv i32 %add.i, 48000
  %18 = tail call i32 @llvm.umin.i32(i32 %div2.i, i32 65535) #12
  %reg_lock.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 28
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  %shr.i = lshr i32 %18, 8
  %conv9.i = trunc i32 %shr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %enh_port.i.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enh_port.i.i, align 4
  %add.i.i = add i32 %20, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %21 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 31) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enh_port.i.i, align 4
  %add5.i.i = add i32 %24, 5
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %25 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv9.i) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #12
  %conv10.i = trunc i32 %18 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enh_port.i.i, align 4
  %add.i19.i = add i32 %28, 4
  %and.i20.i = and i32 %add.i19.i, 1048575
  %add1.i21.i = or i32 %and.i20.i, -18874368
  %29 = inttoptr i32 %add1.i21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 30) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %enh_port.i.i, align 4
  %add5.i22.i = add i32 %32, 5
  %and6.i23.i = and i32 %add5.i22.i, 1048575
  %add7.i24.i = or i32 %and6.i23.i, -18874368
  %33 = inttoptr i32 %add7.i24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv10.i) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call6.i) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %35 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_addr, align 8
  %dec.i = add nsw i32 %div1.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  %dmaa_port.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %dmaa_port.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dmaa_port.i, align 4
  %and.i = and i32 %39, 1048575
  %add1.i = or i32 %and.i, -18874368
  %40 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %40, i32 %37) #12, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !270
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %dec.i) #12
  %42 = ptrtoint ptr %dmaa_port.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dmaa_port.i, align 4
  %add5.i = add i32 %43, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %44 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %44, i32 %41) #12, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !271
  tail call void @arm_heavy_mb() #12
  %45 = ptrtoint ptr %dmaa_port.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dmaa_port.i, align 4
  %add12.i = add i32 %46, 11
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %47 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 24) #12, !srcloc !250
  %shr = lshr i32 %dec, 8
  %conv12 = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %48 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %enh_port.i.i, align 4
  %add.i37 = add i32 %49, 4
  %and.i38 = and i32 %add.i37, 1048575
  %add1.i39 = or i32 %and.i38, -18874368
  %50 = inttoptr i32 %add1.i39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 24) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %enh_port.i.i, align 4
  %add5.i40 = add i32 %53, 5
  %and6.i41 = and i32 %add5.i40, 1048575
  %add7.i42 = or i32 %and6.i41, -18874368
  %54 = inttoptr i32 %add7.i42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv12) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #12
  %conv13 = trunc i32 %dec to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %56 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %enh_port.i.i, align 4
  %add.i44 = add i32 %57, 4
  %and.i45 = and i32 %add.i44, 1048575
  %add1.i46 = or i32 %and.i45, -18874368
  %58 = inttoptr i32 %add1.i46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 25) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %60 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %enh_port.i.i, align 4
  %add5.i47 = add i32 %61, 5
  %and6.i48 = and i32 %add5.i47, 1048575
  %add7.i49 = or i32 %and6.i48, -18874368
  %62 = inttoptr i32 %add7.i49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %conv13) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 2147480) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_sonicvibes_trigger(ptr noundef %1, i32 noundef 1, i32 noundef %cmd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_playback_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %enable = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %p_dma_size = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 29
  %5 = ptrtoint ptr %p_dma_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p_dma_size, align 4
  %dmaa_port.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %dmaa_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dmaa_port.i, align 4
  %add.i = add i32 %8, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %11 = and i32 %10, -256
  %12 = xor i32 %11, -1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %sub = add i32 %13, %6
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
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_hw_constraint_dac_rate(ptr nocapture noundef %params, ptr nocapture noundef readnone %rule) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %max = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end58_crit_edge

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then:                                          ; preds = %entry
  %div4 = udiv i32 48000, %1
  %4 = tail call i32 @llvm.umin.i32(i32 %div4, i32 8)
  %div7.rhs.trunc = trunc i32 %4 to i16
  %div773 = udiv i16 -17536, %div7.rhs.trunc
  %div7.zext = zext i16 %div773 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div7.zext)
  %cmp8 = icmp eq i32 %1, %div7.zext
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %rate_num = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 9
  %5 = ptrtoint ptr %rate_num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %rate_num, align 4
  br label %if.end58.sink.split

if.else:                                          ; preds = %if.then
  %6 = tail call i32 @llvm.umax.i32(i32 %1, i32 1220) #12
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 292968) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 146484, i32 %7)
  %cmp442.i = icmp ult i32 %7, 146484
  br i1 %cmp442.i, label %if.else.for.inc.i_crit_edge, label %if.else.for.cond5.preheader.i_crit_edge

if.else.for.cond5.preheader.i_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.i

if.else.for.inc.i_crit_edge:                      ; preds = %if.else
  br label %for.inc.i

for.cond5.preheader.i:                            ; preds = %for.inc.i.for.cond5.preheader.i_crit_edge, %if.else.for.cond5.preheader.i_crit_edge
  %rate.addr.0.lcssa.i = phi i32 [ %7, %if.else.for.cond5.preheader.i_crit_edge ], [ %shl.i, %for.inc.i.for.cond5.preheader.i_crit_edge ]
  %r.0.lcssa.i = phi i32 [ 0, %if.else.for.cond5.preheader.i_crit_edge ], [ %add.i, %for.inc.i.for.cond5.preheader.i_crit_edge ]
  br label %for.cond8.preheader.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %if.else.for.inc.i_crit_edge
  %r.044.i = phi i32 [ %add.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %if.else.for.inc.i_crit_edge ]
  %rate.addr.043.i = phi i32 [ %shl.i, %for.inc.i.for.inc.i_crit_edge ], [ %7, %if.else.for.inc.i_crit_edge ]
  %add.i = add i32 %r.044.i, 32
  %shl.i = shl nuw nsw i32 %rate.addr.043.i, 1
  %cmp4.i = icmp ult i32 %rate.addr.043.i, 73242
  br i1 %cmp4.i, label %for.inc.i.for.inc.i_crit_edge, label %for.inc.i.for.cond5.preheader.i_crit_edge

for.inc.i.for.cond5.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.i

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.cond8.preheader.i:                            ; preds = %for.inc22.i.for.cond8.preheader.i_crit_edge, %for.cond5.preheader.i
  %metric.053.i = phi i32 [ -1, %for.cond5.preheader.i ], [ %8, %for.inc22.i.for.cond8.preheader.i_crit_edge ]
  %xn.052.i = phi i32 [ 3, %for.cond5.preheader.i ], [ %inc23.i, %for.inc22.i.for.cond8.preheader.i_crit_edge ]
  %n.051.i = phi i32 [ 0, %for.cond5.preheader.i ], [ %n.2.i, %for.inc22.i.for.cond8.preheader.i_crit_edge ]
  %m.050.i = phi i32 [ 0, %for.cond5.preheader.i ], [ %m.2.i, %for.inc22.i.for.cond8.preheader.i_crit_edge ]
  %sub18.i = add nsw i32 %xn.052.i, -2
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.cond8.preheader.i
  %metric.149.i = phi i32 [ %metric.053.i, %for.cond8.preheader.i ], [ %8, %for.body10.i.for.body10.i_crit_edge ]
  %xm.048.i = phi i32 [ 3, %for.cond8.preheader.i ], [ %inc.i, %for.body10.i.for.body10.i_crit_edge ]
  %n.147.i = phi i32 [ %n.051.i, %for.cond8.preheader.i ], [ %n.2.i, %for.body10.i.for.body10.i_crit_edge ]
  %m.146.i = phi i32 [ %m.050.i, %for.cond8.preheader.i ], [ %m.2.i, %for.body10.i.for.body10.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %xm.048.i, 48000
  %div.i = udiv i32 %mul.i, %xn.052.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %rate.addr.0.lcssa.i)
  %cmp11.not.i = icmp ult i32 %div.i, %rate.addr.0.lcssa.i
  %sub.i = sub i32 %div.i, %rate.addr.0.lcssa.i
  %sub13.i = sub i32 %rate.addr.0.lcssa.i, %div.i
  %xd.0.i = select i1 %cmp11.not.i, i32 %sub13.i, i32 %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %xd.0.i, i32 %metric.149.i)
  %cmp15.i = icmp ult i32 %xd.0.i, %metric.149.i
  %sub17.i = add nsw i32 %xm.048.i, -2
  %m.2.i = select i1 %cmp15.i, i32 %sub17.i, i32 %m.146.i
  %n.2.i = select i1 %cmp15.i, i32 %sub18.i, i32 %n.147.i
  %8 = tail call i32 @llvm.umin.i32(i32 %xd.0.i, i32 %metric.149.i) #12
  %inc.i = add nuw nsw i32 %xm.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 257
  br i1 %exitcond.not.i, label %for.inc22.i, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10.i

for.inc22.i:                                      ; preds = %for.body10.i
  %inc23.i = add nuw nsw i32 %xn.052.i, 1
  %exitcond54.not.i = icmp eq i32 %inc23.i, 33
  br i1 %exitcond54.not.i, label %snd_sonicvibes_pll.exit, label %for.inc22.i.for.cond8.preheader.i_crit_edge

for.inc22.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond8.preheader.i

snd_sonicvibes_pll.exit:                          ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = mul i32 %n.2.i, 1536000
  %mul = add i32 %9, 3072000
  %mul52 = mul i32 %mul, %r.0.lcssa.i
  %rate_num53 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 9
  %10 = ptrtoint ptr %rate_num53 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul52, ptr %rate_num53, align 4
  %add54 = add i32 %m.2.i, 2
  br label %if.end58.sink.split

if.end58.sink.split:                              ; preds = %snd_sonicvibes_pll.exit, %if.then9
  %.sink = phi i32 [ 1, %if.then9 ], [ %add54, %snd_sonicvibes_pll.exit ]
  %rate_den = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 10
  %11 = ptrtoint ptr %rate_den to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %rate_den, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %entry.if.end58_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_sonicvibes_setfmt(ptr noundef %sonic, i8 noundef zeroext %mask, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 28
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !274
  tail call void @arm_heavy_mb() #12
  %enh_port = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 4
  %0 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enh_port, align 4
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %2 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 82) #12, !srcloc !250
  %3 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enh_port, align 4
  %add11 = add i32 %4, 5
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %5 = inttoptr i32 %add13 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !275
  %format = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 15
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %format, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #12
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %format, align 1
  %and2052 = and i8 %10, %mask
  %or53 = or i8 %and2052, %value
  store i8 %or53, ptr %format, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !276
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %format, align 1
  %13 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enh_port, align 4
  %add29 = add i32 %14, 5
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %15 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %12) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !277
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enh_port, align 4
  %add37 = add i32 %18, 4
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %19 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_sonicvibes_trigger(ptr noundef %sonic, i32 noundef %what, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.if.end22_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then8
  ]

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then:                                          ; preds = %entry
  %enable = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 12
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enable, align 4
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, %what
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %3 = trunc i32 %what to i8
  %conv4 = or i8 %2, %3
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4, ptr %enable, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %enh_port.i = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 4
  %5 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enh_port.i, align 4
  %add.i = add i32 %6, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 19) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enh_port.i, align 4
  %add5.i = add i32 %10, 5
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %11 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv4) #12, !srcloc !250
  br label %if.end22.sink.split

if.then8:                                         ; preds = %entry
  %enable9 = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 12
  %12 = ptrtoint ptr %enable9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enable9, align 4
  %conv10 = zext i8 %13 to i32
  %and11 = and i32 %conv10, %what
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then8.if.end22_crit_edge, label %if.then13

if.then8.if.end22_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %14 = trunc i32 %what to i8
  %15 = xor i8 %14, -1
  %conv17 = and i8 %13, %15
  %16 = ptrtoint ptr %enable9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv17, ptr %enable9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %enh_port.i37 = getelementptr inbounds %struct.sonicvibes, ptr %sonic, i32 0, i32 4
  %17 = ptrtoint ptr %enh_port.i37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enh_port.i37, align 4
  %add.i38 = add i32 %18, 4
  %and.i39 = and i32 %add.i38, 1048575
  %add1.i40 = or i32 %and.i39, -18874368
  %19 = inttoptr i32 %add1.i40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 19) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %enh_port.i37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enh_port.i37, align 4
  %add5.i41 = add i32 %22, 5
  %and6.i42 = and i32 %add5.i41, 1048575
  %add7.i43 = or i32 %and6.i42, -18874368
  %23 = inttoptr i32 %add7.i43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv17) #12, !srcloc !250
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.then13, %if.then1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #12
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.then8.if.end22_crit_edge, %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  %result.0 = phi i32 [ 0, %if.then.if.end22_crit_edge ], [ 0, %if.then8.if.end22_crit_edge ], [ -22, %entry.if.end22_crit_edge ], [ 0, %if.end22.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_capture_open(ptr noundef %substream) #2 align 64 {
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
  %mode = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %mode, align 4
  %capture_substream = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %capture_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw, ptr @snd_sonicvibes_capture, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_ratdens(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_sonicvibes_hw_constraints_adc_clock) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_sonicvibes_capture_close(ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_substream = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_substream, align 4
  %mode = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %and = and i32 %4, -3
  store i32 %and, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size.i, align 4
  %c_dma_size = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 30
  %10 = ptrtoint ptr %c_dma_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div1.i.i, ptr %c_dma_size, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp ugt i32 %12, 1
  %spec.select = select i1 %cmp, i8 16, i8 0
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_width(i32 noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 16
  %15 = or i8 %spec.select, 32
  %fmt.1 = select i1 %cmp5, i8 %15, i8 %spec.select
  tail call fastcc void @snd_sonicvibes_setfmt(ptr noundef %1, i8 noundef zeroext -49, i8 noundef zeroext %fmt.1)
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  %div1.i = udiv i32 48000, %17
  %18 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 8) #12
  %div2.rhs.trunc.i = trunc i32 %18 to i16
  %div228.i = udiv i16 -17536, %div2.rhs.trunc.i
  %div2.zext.i = zext i16 %div228.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div2.zext.i)
  %cmp3.i = icmp eq i32 %17, %div2.zext.i
  br i1 %cmp3.i, label %entry.snd_sonicvibes_set_adc_rate.exit_crit_edge, label %if.else.i

entry.snd_sonicvibes_set_adc_rate.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_sonicvibes_set_adc_rate.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @snd_sonicvibes_setpll(ptr noundef %1, i32 noundef %17) #12
  br label %snd_sonicvibes_set_adc_rate.exit

snd_sonicvibes_set_adc_rate.exit:                 ; preds = %if.else.i, %entry.snd_sonicvibes_set_adc_rate.exit_crit_edge
  %clock.0.i = phi i8 [ 0, %if.else.i ], [ 16, %entry.snd_sonicvibes_set_adc_rate.exit_crit_edge ]
  %mul.i.i37 = mul i32 %9, %7
  %div1.i.i38 = lshr i32 %mul.i.i37, 4
  %dec = add nsw i32 %div1.i.i38, -1
  %reg_lock.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 28
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  %.tr.i = trunc i32 %18 to i8
  %19 = shl nuw i8 %.tr.i, 4
  %conv11.i = add i8 %19, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %enh_port.i.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enh_port.i.i, align 4
  %add.i.i = add i32 %21, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %22 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 35) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enh_port.i.i, align 4
  %add5.i.i = add i32 %25, 5
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %26 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv11.i) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enh_port.i.i, align 4
  %add.i22.i = add i32 %29, 4
  %and.i23.i = and i32 %add.i22.i, 1048575
  %add1.i24.i = or i32 %and.i23.i, -18874368
  %30 = inttoptr i32 %add1.i24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 34) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enh_port.i.i, align 4
  %add5.i25.i = add i32 %33, 5
  %and6.i26.i = and i32 %add5.i25.i, 1048575
  %add7.i27.i = or i32 %and6.i26.i, -18874368
  %34 = inttoptr i32 %add7.i27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %clock.0.i) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call8.i) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %36 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_addr, align 8
  %shr.i = lshr i32 %mul.i.i, 4
  %dec.i = add nsw i32 %shr.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !278
  tail call void @arm_heavy_mb() #12
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  %dmac_port.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 10
  %39 = ptrtoint ptr %dmac_port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dmac_port.i, align 4
  %and.i = and i32 %40, 1048575
  %add1.i = or i32 %and.i, -18874368
  %41 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 %38) #12, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !279
  tail call void @arm_heavy_mb() #12
  %42 = tail call i32 @llvm.bswap.i32(i32 %dec.i) #12
  %43 = ptrtoint ptr %dmac_port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dmac_port.i, align 4
  %add5.i = add i32 %44, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %45 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 %42) #12, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !280
  tail call void @arm_heavy_mb() #12
  %46 = ptrtoint ptr %dmac_port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dmac_port.i, align 4
  %add12.i = add i32 %47, 11
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %48 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 20) #12, !srcloc !250
  %shr12 = lshr i32 %dec, 8
  %conv13 = trunc i32 %shr12 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %enh_port.i.i, align 4
  %add.i = add i32 %50, 4
  %and.i39 = and i32 %add.i, 1048575
  %add1.i40 = or i32 %and.i39, -18874368
  %51 = inttoptr i32 %add1.i40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 28) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %53 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %enh_port.i.i, align 4
  %add5.i41 = add i32 %54, 5
  %and6.i42 = and i32 %add5.i41, 1048575
  %add7.i43 = or i32 %and6.i42, -18874368
  %55 = inttoptr i32 %add7.i43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %conv13) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #12
  %conv14 = trunc i32 %dec to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %57 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %enh_port.i.i, align 4
  %add.i45 = add i32 %58, 4
  %and.i46 = and i32 %add.i45, 1048575
  %add1.i47 = or i32 %and.i46, -18874368
  %59 = inttoptr i32 %add1.i47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 29) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %61 = ptrtoint ptr %enh_port.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %enh_port.i.i, align 4
  %add5.i48 = add i32 %62, 5
  %and6.i49 = and i32 %add5.i48, 1048575
  %add7.i50 = or i32 %and6.i49, -18874368
  %63 = inttoptr i32 %add7.i50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %conv14) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 2147480) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_sonicvibes_trigger(ptr noundef %1, i32 noundef 2, i32 noundef %cmd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %enable = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable, align 4
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %c_dma_size = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %c_dma_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c_dma_size, align 4
  %dmac_port.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %dmac_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dmac_port.i, align 4
  %add.i = add i32 %8, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !281
  %11 = and i32 %10, -256
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  %add4.i.neg = mul i32 %12, 536870910
  %shl.i.neg = add i32 %6, 536870910
  %sub = add i32 %shl.i.neg, %add4.i.neg
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %13 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_ratdens(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_sonicvibes_master_free(ptr nocapture noundef readonly %kcontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %master_mute = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %master_mute to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %master_mute, align 4
  %master_volume = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %master_volume to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %master_volume, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_sonicvibes_info_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_get_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
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
  %shr = lshr i32 %3, 8
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 7
  %shr7 = lshr i32 %3, 19
  %and8 = and i32 %shr7, 7
  %shr10 = lshr i32 %3, 24
  %reg_lock = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %conv = trunc i32 %3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %enh_port.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enh_port.i, align 4
  %add.i = add i32 %5, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #12
  %8 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enh_port.i, align 4
  %add3.i = add i32 %9, 5
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %10 = inttoptr i32 %add5.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #12
  %conv15 = zext i8 %11 to i32
  %shr16 = lshr i32 %conv15, %and5
  %and17 = and i32 %shr16, %shr10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and17, ptr %value, align 8
  %conv18 = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enh_port.i, align 4
  %add.i53 = add i32 %15, 4
  %and.i54 = and i32 %add.i53, 1048575
  %add1.i55 = or i32 %and.i54, -18874368
  %16 = inttoptr i32 %add1.i55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv18) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #12
  %18 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enh_port.i, align 4
  %add3.i56 = add i32 %19, 5
  %and4.i57 = and i32 %add3.i56, 1048575
  %add5.i58 = or i32 %and4.i57, -18874368
  %20 = inttoptr i32 %add5.i58 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #12
  %conv20 = zext i8 %21 to i32
  %shr21 = lshr i32 %conv20, %and8
  %and22 = and i32 %shr21, %shr10
  %arrayidx24 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and22, ptr %arrayidx24, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  %24 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value, align 8
  %sub = sub i32 %shr10, %26
  store i32 %sub, ptr %value, align 8
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx24, align 4
  %sub32 = sub i32 %shr10, %28
  store i32 %sub32, ptr %arrayidx24, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_put_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %shr = lshr i32 %3, 8
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 7
  %shr7 = lshr i32 %3, 19
  %and8 = and i32 %shr7, 7
  %shr10 = lshr i32 %3, 24
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %and15 = and i32 %5, %shr10
  %arrayidx17 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx17, align 4
  %and18 = and i32 %7, %shr10
  %8 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %sub = sub nsw i32 %shr10, %and15
  %sub23 = sub nsw i32 %shr10, %and18
  %val1.0 = select i1 %tobool.not, i32 %and15, i32 %sub
  %val2.0 = select i1 %tobool.not, i32 %and18, i32 %sub23
  %shl = shl nsw i32 %val1.0, %and5
  %shl28 = shl nsw i32 %val2.0, %and8
  %reg_lock = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %conv30 = trunc i32 %3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %enh_port.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enh_port.i, align 4
  %add.i = add i32 %10, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv30) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #12
  %13 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enh_port.i, align 4
  %add3.i = add i32 %14, 5
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %15 = inttoptr i32 %add5.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #12
  %conv32 = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enh_port.i, align 4
  %add.i91 = add i32 %19, 4
  %and.i92 = and i32 %add.i91, 1048575
  %add1.i93 = or i32 %and.i92, -18874368
  %20 = inttoptr i32 %add1.i93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv32) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #12
  %22 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enh_port.i, align 4
  %add3.i94 = add i32 %23, 5
  %and4.i95 = and i32 %add3.i94, 1048575
  %add5.i96 = or i32 %and4.i95, -18874368
  %24 = inttoptr i32 %add5.i96 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #12
  %conv35 = zext i8 %16 to i32
  %shl36 = shl nuw nsw i32 %shr10, %and5
  %neg = xor i32 %shl36, -1
  %and37 = and i32 %conv35, %neg
  %or = or i32 %and37, %shl
  %conv40 = zext i8 %25 to i32
  %shl41 = shl nuw nsw i32 %shr10, %and8
  %neg42 = xor i32 %shl41, -1
  %and43 = and i32 %conv40, %neg42
  %or45 = or i32 %and43, %shl28
  %conv47 = and i32 %or, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv47, i32 %conv35)
  %cmp.not = icmp ne i32 %conv47, %conv35
  %conv50 = and i32 %or45, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv50, i32 %conv40)
  %cmp52 = icmp ne i32 %conv50, %conv40
  %narrow = select i1 %cmp.not, i1 true, i1 %cmp52
  %27 = zext i1 %narrow to i32
  %conv55 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enh_port.i, align 4
  %add.i98 = add i32 %29, 4
  %and.i99 = and i32 %add.i98, 1048575
  %add1.i100 = or i32 %and.i99, -18874368
  %30 = inttoptr i32 %add1.i100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv30) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enh_port.i, align 4
  %add5.i101 = add i32 %33, 5
  %and6.i = and i32 %add5.i101, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %34 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv55) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #12
  %conv57 = trunc i32 %or45 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enh_port.i, align 4
  %add.i103 = add i32 %37, 4
  %and.i104 = and i32 %add.i103, 1048575
  %add1.i105 = or i32 %and.i104, -18874368
  %38 = inttoptr i32 %add1.i105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv32) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %enh_port.i, align 4
  %add5.i106 = add i32 %41, 5
  %and6.i107 = and i32 %add5.i106, 1048575
  %add7.i108 = or i32 %and6.i107, -18874368
  %42 = inttoptr i32 %add7.i108 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv57) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_sonicvibes_info_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 16
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_get_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
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
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 255
  %reg_lock = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %conv = trunc i32 %3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %enh_port.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enh_port.i, align 4
  %add.i = add i32 %5, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #12
  %8 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enh_port.i, align 4
  %add3.i = add i32 %9, 5
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %10 = inttoptr i32 %add5.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #12
  %conv9 = zext i8 %11 to i32
  %shr10 = lshr i32 %conv9, %and2
  %and11 = and i32 %shr10, %and5
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and11, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool.not = icmp ult i32 %3, 16777216
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  %sub = sub i32 %and5, %15
  store i32 %sub, ptr %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_put_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %and9 = and i32 %and5, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool.not = icmp ult i32 %3, 16777216
  %sub = sub nsw i32 %and5, %and9
  %spec.select = select i1 %tobool.not, i32 %and9, i32 %sub
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %shl = shl i32 %spec.select, %and2
  %reg_lock = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %conv14 = trunc i32 %3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %enh_port.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enh_port.i, align 4
  %add.i = add i32 %7, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv14) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #12
  %10 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enh_port.i, align 4
  %add3.i = add i32 %11, 5
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %12 = inttoptr i32 %add5.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #12
  %conv16 = zext i8 %13 to i32
  %shl17 = shl i32 %and5, %and2
  %neg = xor i32 %shl17, -1
  %and18 = and i32 %conv16, %neg
  %or = or i32 %and18, %shl
  %conv21 = and i32 %or, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv21, i32 %conv16)
  %cmp = icmp ne i32 %conv21, %conv16
  %conv23 = zext i1 %cmp to i32
  %conv25 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enh_port.i, align 4
  %add.i44 = add i32 %16, 4
  %and.i45 = and i32 %add.i44, 1048575
  %add1.i46 = or i32 %and.i45, -18874368
  %17 = inttoptr i32 %add1.i46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv14) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enh_port.i, align 4
  %add5.i47 = add i32 %20, 5
  %and6.i = and i32 %add5.i47, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %21 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv25) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 %conv23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_info_mux(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 2, i32 noundef 7, ptr noundef nonnull @snd_sonicvibes_info_mux.texts) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_get_mux(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %enh_port.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enh_port.i, align 4
  %add.i = add i32 %3, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #12
  %6 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enh_port.i, align 4
  %add3.i = add i32 %7, 5
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %8 = inttoptr i32 %add5.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #12
  %11 = lshr i8 %9, 5
  %12 = zext i8 %11 to i32
  %sub = add nsw i32 %12, -1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %value, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enh_port.i, align 4
  %add.i14 = add i32 %15, 4
  %and.i15 = and i32 %add.i14, 1048575
  %add1.i16 = or i32 %and.i15, -18874368
  %16 = inttoptr i32 %add1.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 1) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #12
  %18 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enh_port.i, align 4
  %add3.i17 = add i32 %19, 5
  %and4.i18 = and i32 %add3.i17, 1048575
  %add5.i19 = or i32 %and4.i18, -18874368
  %20 = inttoptr i32 %add5.i19 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #12
  %23 = lshr i8 %21, 5
  %24 = zext i8 %23 to i32
  %sub5 = add nsw i32 %24, -1
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub5, ptr %arrayidx7, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_put_mux(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp ugt i32 %3, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp3 = icmp ugt i32 %5, 6
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %6 = shl nuw nsw i32 %3, 5
  %conv = add nuw nsw i32 %6, 32
  %7 = shl nuw nsw i32 %5, 5
  %conv10 = add nuw nsw i32 %7, 32
  %reg_lock = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %enh_port.i = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enh_port.i, align 4
  %add.i = add i32 %9, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #12
  %12 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enh_port.i, align 4
  %add3.i = add i32 %13, 5
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %14 = inttoptr i32 %add5.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enh_port.i, align 4
  %add.i55 = add i32 %18, 4
  %and.i56 = and i32 %add.i55, 1048575
  %add1.i57 = or i32 %and.i56, -18874368
  %19 = inttoptr i32 %add1.i57 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 1) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #12
  %21 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enh_port.i, align 4
  %add3.i58 = add i32 %22, 5
  %and4.i59 = and i32 %add3.i58, 1048575
  %add5.i60 = or i32 %and4.i59, -18874368
  %23 = inttoptr i32 %add5.i60 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #12, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #12
  %conv14 = zext i8 %15 to i32
  %and = and i32 %conv14, 31
  %or = or i32 %and, %conv
  %conv17 = zext i8 %24 to i32
  %and18 = and i32 %conv17, 31
  %or20 = or i32 %and18, %conv10
  %conv22 = and i32 %or, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22, i32 %conv14)
  %cmp24.not = icmp ne i32 %conv22, %conv14
  %conv26 = and i32 %or20, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26, i32 %conv17)
  %cmp28 = icmp ne i32 %conv26, %conv17
  %narrow = select i1 %cmp24.not, i1 true, i1 %cmp28
  %26 = zext i1 %narrow to i32
  %conv30 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enh_port.i, align 4
  %add.i62 = add i32 %28, 4
  %and.i63 = and i32 %add.i62, 1048575
  %add1.i64 = or i32 %and.i63, -18874368
  %29 = inttoptr i32 %add1.i64 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %enh_port.i, align 4
  %add5.i65 = add i32 %32, 5
  %and6.i = and i32 %add5.i65, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %33 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv30) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #12
  %conv31 = trunc i32 %or20 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %enh_port.i, align 4
  %add.i67 = add i32 %36, 4
  %and.i68 = and i32 %add.i67, 1048575
  %add1.i69 = or i32 %and.i68, -18874368
  %37 = inttoptr i32 %add1.i69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 1) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %enh_port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %enh_port.i, align 4
  %add5.i70 = add i32 %40, 5
  %and6.i71 = and i32 %add5.i70, 1048575
  %add7.i72 = or i32 %and6.i71, -18874368
  %41 = inttoptr i32 %add7.i72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv31) #12, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sonicvibes_midi_input_open(ptr nocapture noundef readonly %mpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 13
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  tail call void @arm_heavy_mb() #12
  %irqmask = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %irqmask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irqmask, align 1
  %4 = and i8 %3, 127
  store i8 %4, ptr %irqmask, align 1
  %enh_port = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enh_port, align 4
  %add = add i32 %6, 1
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %7 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #12, !srcloc !250
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_sonicvibes_midi_input_close(ptr nocapture noundef readonly %mpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 13
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  %irqmask = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %irqmask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irqmask, align 1
  %4 = or i8 %3, -128
  store i8 %4, ptr %irqmask, align 1
  %enh_port = getelementptr inbounds %struct.sonicvibes, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %enh_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enh_port, align 4
  %add = add i32 %6, 1
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #12, !srcloc !250
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !108, !110, !111, !112, !114, !115, !116, !117, !119, !121, !122, !123, !125, !126, !127, !128, !129, !130, !132, !134, !135, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !228, !229, !230, !232, !234, !236}
!llvm.module.flags = !{!238, !239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/sonicvibes.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/sonicvibes.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/sonicvibes.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/sonicvibes.c", i32 44, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/sonicvibes.c", i32 45, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/sonicvibes.c", i32 46, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/sonicvibes.c", i32 47, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/sonicvibes.c", i32 48, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/sonicvibes.c", i32 49, i32 1}
!22 = !{ptr @__param_reverb, !23, !"__param_reverb", i1 false, i1 false}
!23 = !{!"../sound/pci/sonicvibes.c", i32 50, i32 1}
!24 = !{ptr @__UNIQUE_ID_reverbtype252, !23, !"__UNIQUE_ID_reverbtype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_reverb253, !26, !"__UNIQUE_ID_reverb253", i1 false, i1 false}
!26 = !{!"../sound/pci/sonicvibes.c", i32 51, i32 1}
!27 = !{ptr @__param_mge, !28, !"__param_mge", i1 false, i1 false}
!28 = !{!"../sound/pci/sonicvibes.c", i32 52, i32 1}
!29 = !{ptr @__UNIQUE_ID_mgetype254, !28, !"__UNIQUE_ID_mgetype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_mge255, !31, !"__UNIQUE_ID_mge255", i1 false, i1 false}
!31 = !{!"../sound/pci/sonicvibes.c", i32 53, i32 1}
!32 = !{ptr @__param_dmaio, !33, !"__param_dmaio", i1 false, i1 false}
!33 = !{!"../sound/pci/sonicvibes.c", i32 54, i32 1}
!34 = !{ptr @__UNIQUE_ID_dmaiotype256, !33, !"__UNIQUE_ID_dmaiotype256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_dmaio257, !36, !"__UNIQUE_ID_dmaio257", i1 false, i1 false}
!36 = !{!"../sound/pci/sonicvibes.c", i32 55, i32 1}
!37 = !{ptr @__initcall__kmod_snd_sonicvibes__258_1468_sonicvibes_driver_init6, !38, !"__initcall__kmod_snd_sonicvibes__258_1468_sonicvibes_driver_init6", i1 false, i1 false}
!38 = !{!"../sound/pci/sonicvibes.c", i32 1468, i32 1}
!39 = !{ptr @__exitcall_sonicvibes_driver_exit, !38, !"__exitcall_sonicvibes_driver_exit", i1 false, i1 false}
!40 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!41 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!42 = !{ptr @index, !43, !"index", i1 false, i1 false}
!43 = !{!"../sound/pci/sonicvibes.c", i32 37, i32 12}
!44 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!45 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!46 = !{ptr @id, !47, !"id", i1 false, i1 false}
!47 = !{!"../sound/pci/sonicvibes.c", i32 38, i32 14}
!48 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!49 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!50 = !{ptr @enable, !51, !"enable", i1 false, i1 false}
!51 = !{!"../sound/pci/sonicvibes.c", i32 39, i32 13}
!52 = !{ptr @__param_str_reverb, !23, !"__param_str_reverb", i1 false, i1 false}
!53 = !{ptr @__param_arr_reverb, !23, !"__param_arr_reverb", i1 false, i1 false}
!54 = !{ptr @reverb, !55, !"reverb", i1 false, i1 false}
!55 = !{!"../sound/pci/sonicvibes.c", i32 40, i32 13}
!56 = !{ptr @__param_str_mge, !28, !"__param_str_mge", i1 false, i1 false}
!57 = !{ptr @__param_arr_mge, !28, !"__param_arr_mge", i1 false, i1 false}
!58 = !{ptr @mge, !59, !"mge", i1 false, i1 false}
!59 = !{!"../sound/pci/sonicvibes.c", i32 41, i32 13}
!60 = !{ptr @__param_str_dmaio, !33, !"__param_str_dmaio", i1 false, i1 false}
!61 = !{ptr @dmaio, !62, !"dmaio", i1 false, i1 false}
!62 = !{!"../sound/pci/sonicvibes.c", i32 42, i32 21}
!63 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sonicvibes_driver, !65, !"sonicvibes_driver", i1 false, i1 false}
!65 = !{!"../sound/pci/sonicvibes.c", i32 1462, i32 26}
!66 = !{ptr @snd_sonic_ids, !67, !"snd_sonic_ids", i1 false, i1 false}
!67 = !{!"../sound/pci/sonicvibes.c", i32 229, i32 35}
!68 = !{ptr @snd_sonic_probe.dev, !69, !"dev", i1 false, i1 false}
!69 = !{!"../sound/pci/sonicvibes.c", i32 1393, i32 13}
!70 = !{ptr @.str.1, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/sonicvibes.c", i32 1418, i32 23}
!72 = !{ptr @.str.2, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/sonicvibes.c", i32 1419, i32 26}
!74 = !{ptr @.str.3, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/sonicvibes.c", i32 1420, i32 26}
!76 = !{ptr @.str.4, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/sonicvibes.c", i32 1220, i32 3}
!78 = !{ptr @.str.5, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.6, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.7, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.8, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @snd_sonicvibes_create._entry, !77, !"_entry", i1 false, i1 false}
!83 = !{ptr @snd_sonicvibes_create._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @snd_sonicvibes_create.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../sound/pci/sonicvibes.c", i32 1225, i32 2}
!86 = !{ptr @.str.9, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.11, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/sonicvibes.c", i32 1242, i32 3}
!89 = !{ptr @snd_sonicvibes_create._entry.10, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @snd_sonicvibes_create._entry_ptr.12, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.14, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/sonicvibes.c", i32 1257, i32 3}
!93 = !{ptr @.str.15, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @snd_sonicvibes_create._entry.13, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @snd_sonicvibes_create._entry_ptr.16, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.18, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/sonicvibes.c", i32 1264, i32 3}
!98 = !{ptr @snd_sonicvibes_create._entry.17, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @snd_sonicvibes_create._entry_ptr.19, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.20, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/sonicvibes.c", i32 1271, i32 20}
!102 = !{ptr @.str.22, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/sonicvibes.c", i32 1274, i32 3}
!104 = !{ptr @snd_sonicvibes_create._entry.21, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @snd_sonicvibes_create._entry_ptr.23, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.24, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/sonicvibes.c", i32 1279, i32 20}
!108 = !{ptr @.str.26, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/sonicvibes.c", i32 1282, i32 3}
!110 = !{ptr @snd_sonicvibes_create._entry.25, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @snd_sonicvibes_create._entry_ptr.27, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.28, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/sonicvibes.c", i32 613, i32 3}
!114 = !{ptr @.str.29, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @snd_sonicvibes_interrupt._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @snd_sonicvibes_interrupt._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/sonicvibes.c", i32 1145, i32 36}
!119 = !{ptr @.str.31, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/sonicvibes.c", i32 1120, i32 2}
!121 = !{ptr @.str.32, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.33, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.34, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/sonicvibes.c", i32 1122, i32 2}
!125 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.36, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.37, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.40, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/sonicvibes.c", i32 1128, i32 2}
!132 = !{ptr @.str.41, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/sonicvibes.c", i32 1134, i32 2}
!134 = !{ptr @.str.42, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/sonicvibes.c", i32 1138, i32 2}
!139 = !{ptr @.str.46, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/sonicvibes.c", i32 1139, i32 2}
!141 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/sonicvibes.c", i32 1140, i32 2}
!143 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/sonicvibes.c", i32 855, i32 33}
!145 = !{ptr @snd_sonicvibes_playback_ops, !146, !"snd_sonicvibes_playback_ops", i1 false, i1 false}
!146 = !{!"../sound/pci/sonicvibes.c", i32 834, i32 33}
!147 = !{ptr @snd_sonicvibes_playback, !148, !"snd_sonicvibes_playback", i1 false, i1 false}
!148 = !{!"../sound/pci/sonicvibes.c", i32 753, i32 38}
!149 = !{ptr @snd_sonicvibes_capture_ops, !150, !"snd_sonicvibes_capture_ops", i1 false, i1 false}
!150 = !{!"../sound/pci/sonicvibes.c", i32 842, i32 33}
!151 = !{ptr @snd_sonicvibes_capture, !152, !"snd_sonicvibes_capture", i1 false, i1 false}
!152 = !{!"../sound/pci/sonicvibes.c", i32 772, i32 38}
!153 = !{ptr @snd_sonicvibes_hw_constraints_adc_clock, !154, !"snd_sonicvibes_hw_constraints_adc_clock", i1 false, i1 false}
!154 = !{!"../sound/pci/sonicvibes.c", i32 242, i32 51}
!155 = !{ptr @sonicvibes_adc_clock, !156, !"sonicvibes_adc_clock", i1 false, i1 false}
!156 = !{!"../sound/pci/sonicvibes.c", i32 236, i32 32}
!157 = !{ptr @.str.49, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/sonicvibes.c", i32 1054, i32 1}
!159 = !{ptr @.str.50, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/sonicvibes.c", i32 1055, i32 1}
!161 = !{ptr @.str.51, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/sonicvibes.c", i32 1056, i32 1}
!163 = !{ptr @.str.52, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/sonicvibes.c", i32 1057, i32 1}
!165 = !{ptr @.str.53, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/sonicvibes.c", i32 1058, i32 1}
!167 = !{ptr @.str.54, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/sonicvibes.c", i32 1059, i32 1}
!169 = !{ptr @.str.55, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/sonicvibes.c", i32 1060, i32 1}
!171 = !{ptr @.str.56, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/sonicvibes.c", i32 1061, i32 1}
!173 = !{ptr @.str.57, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/sonicvibes.c", i32 1062, i32 1}
!175 = !{ptr @.str.58, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/sonicvibes.c", i32 1063, i32 1}
!177 = !{ptr @.str.59, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/sonicvibes.c", i32 1064, i32 1}
!179 = !{ptr @.str.60, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/sonicvibes.c", i32 1065, i32 1}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/sonicvibes.c", i32 1068, i32 1}
!183 = !{ptr @.str.62, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/sonicvibes.c", i32 1069, i32 1}
!185 = !{ptr @.str.63, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/sonicvibes.c", i32 1070, i32 1}
!187 = !{ptr @.str.64, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/sonicvibes.c", i32 1071, i32 1}
!189 = !{ptr @.str.65, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/sonicvibes.c", i32 1072, i32 1}
!191 = !{ptr @.str.66, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/sonicvibes.c", i32 1073, i32 1}
!193 = !{ptr @.str.67, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/sonicvibes.c", i32 1074, i32 1}
!195 = !{ptr @snd_sonicvibes_controls, !196, !"snd_sonicvibes_controls", i1 false, i1 false}
!196 = !{!"../sound/pci/sonicvibes.c", i32 1053, i32 38}
!197 = !{ptr @.str.68, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/sonicvibes.c", i32 887, i32 3}
!199 = !{ptr @.str.69, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/sonicvibes.c", i32 887, i32 9}
!201 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/sonicvibes.c", i32 887, i32 16}
!203 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/sonicvibes.c", i32 887, i32 24}
!205 = !{ptr @.str.72, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/pci/sonicvibes.c", i32 887, i32 32}
!207 = !{ptr @.str.73, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/sonicvibes.c", i32 887, i32 40}
!209 = !{ptr @.str.74, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/pci/sonicvibes.c", i32 887, i32 47}
!211 = !{ptr @snd_sonicvibes_info_mux.texts, !212, !"texts", i1 false, i1 false}
!212 = !{!"../sound/pci/sonicvibes.c", i32 886, i32 28}
!213 = !{ptr @.str.75, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/pci/sonicvibes.c", i32 1351, i32 1}
!215 = !{ptr @.str.76, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/sonicvibes.c", i32 1352, i32 1}
!217 = !{ptr @.str.77, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/pci/sonicvibes.c", i32 1353, i32 1}
!219 = !{ptr @.str.78, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/sonicvibes.c", i32 1354, i32 1}
!221 = !{ptr @.str.79, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/pci/sonicvibes.c", i32 1355, i32 1}
!223 = !{ptr @snd_sonicvibes_midi_controls, !224, !"snd_sonicvibes_midi_controls", i1 false, i1 false}
!224 = !{!"../sound/pci/sonicvibes.c", i32 1350, i32 38}
!225 = !{ptr @.str.80, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/pci/sonicvibes.c", i32 1164, i32 3}
!227 = !{ptr @.str.81, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @snd_sonicvibes_create_gameport._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @snd_sonicvibes_create_gameport._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.82, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/sonicvibes.c", i32 1169, i32 24}
!232 = !{ptr @.str.83, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/sonicvibes.c", i32 1170, i32 24}
!234 = !{ptr @.str.84, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/sonicvibes.c", i32 1155, i32 1}
!236 = !{ptr @snd_sonicvibes_game_control, !237, !"snd_sonicvibes_game_control", i1 false, i1 false}
!237 = !{!"../sound/pci/sonicvibes.c", i32 1154, i32 38}
!238 = !{i32 1, !"wchar_size", i32 2}
!239 = !{i32 1, !"min_enum_size", i32 4}
!240 = !{i32 8, !"branch-target-enforcement", i32 0}
!241 = !{i32 8, !"sign-return-address", i32 0}
!242 = !{i32 8, !"sign-return-address-all", i32 0}
!243 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!244 = !{i32 7, !"uwtable", i32 1}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!247 = !{!"auto-init"}
!248 = !{i8 0, i8 2}
!249 = !{i64 2154929069}
!250 = !{i64 4253255}
!251 = !{i64 2154930050}
!252 = !{i64 2154931078}
!253 = !{i64 4253650}
!254 = !{i64 2154931600}
!255 = !{i64 2154887584}
!256 = !{i64 2154888557}
!257 = !{i64 2154931959}
!258 = !{i64 2154932481}
!259 = !{i64 2154891789}
!260 = !{i64 2154892849}
!261 = !{!"branch_weights", i32 1, i32 2000}
!262 = !{i64 2154900081}
!263 = !{i64 2154900409}
!264 = !{i64 2154889530}
!265 = !{i64 2154890590}
!266 = !{i64 2154885274}
!267 = !{i64 2154886247}
!268 = !{i64 2154880616}
!269 = !{i64 4253452}
!270 = !{i64 2154881112}
!271 = !{i64 2154881573}
!272 = !{i64 4253870}
!273 = !{i64 2154884105}
!274 = !{i64 2154894066}
!275 = !{i64 2154894584}
!276 = !{i64 2154895427}
!277 = !{i64 2154896398}
!278 = !{i64 2154882140}
!279 = !{i64 2154882636}
!280 = !{i64 2154883097}
!281 = !{i64 2154884981}
!282 = !{i64 2154934687}
!283 = !{i64 2154935146}
