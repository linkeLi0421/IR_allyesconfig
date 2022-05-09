; ModuleID = '/llk/IR_all_yes/sound/pci/maestro3.c_pt.bc'
source_filename = "../sound/pci/maestro3.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.play_vals = type { i16, i16 }
%struct.rec_vals = type { i16, i16 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_m3 = type { ptr, i32, i32, i8, ptr, ptr, ptr, i32, i32, %struct.m3_list, %struct.m3_list, %struct.m3_list, %struct.m3_list, i8, i32, i32, i32, i8, ptr, i32, ptr, %struct.spinlock, ptr, [64 x i8], %struct.work_struct, i32, ptr, ptr, ptr }
%struct.m3_list = type { i32, i32, i32 }
%struct.m3_dma = type { i32, ptr, %struct.assp_instance, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x ptr], i32, %struct.list_head }
%struct.assp_instance = type { i16, i16 }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.75, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.75 = type { i32, [28 x i8] }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__UNIQUE_ID_author242 = internal constant [77 x i8] c"snd_maestro3.author=Zach Brown <zab@zabbo.net>, Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [42 x i8] c"snd_maestro3.description=ESS Maestro3 PCI\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [41 x i8] c"snd_maestro3.file=sound/pci/snd-maestro3\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [25 x i8] c"snd_maestro3.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware246 = internal constant [50 x i8] c"snd_maestro3.firmware=ess/maestro3_assp_kernel.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware247 = internal constant [51 x i8] c"snd_maestro3.firmware=ess/maestro3_assp_minisrc.fw\00", section ".modinfo", align 1
@__param_str_index = internal constant [19 x i8] c"snd_maestro3.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype248 = internal constant [41 x i8] c"snd_maestro3.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index249 = internal constant [83 x i8] c"snd_maestro3.parm=index:Index value for ESS Maestro3/Allegro/Canyon3D-2 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [16 x i8] c"snd_maestro3.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype250 = internal constant [40 x i8] c"snd_maestro3.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id251 = internal constant [78 x i8] c"snd_maestro3.parm=id:ID string for ESS Maestro3/Allegro/Canyon3D-2 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [20 x i8] c"snd_maestro3.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype252 = internal constant [43 x i8] c"snd_maestro3.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable253 = internal constant [48 x i8] c"snd_maestro3.parm=enable:Enable this soundcard.\00", section ".modinfo", align 1
@__param_str_external_amp = internal constant [26 x i8] c"snd_maestro3.external_amp\00", align 1
@__param_arr_external_amp = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @external_amp }, align 4
@__param_external_amp = internal constant %struct.kernel_param { ptr @__param_str_external_amp, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_external_amp } }, section "__param", align 4
@__UNIQUE_ID_external_amptype254 = internal constant [49 x i8] c"snd_maestro3.parmtype=external_amp:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_external_amp255 = internal constant [98 x i8] c"snd_maestro3.parm=external_amp:Enable external amp for ESS Maestro3/Allegro/Canyon3D-2 soundcard.\00", section ".modinfo", align 1
@__param_str_amp_gpio = internal constant [22 x i8] c"snd_maestro3.amp_gpio\00", align 1
@__param_arr_amp_gpio = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @amp_gpio }, align 4
@__param_amp_gpio = internal constant %struct.kernel_param { ptr @__param_str_amp_gpio, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_amp_gpio } }, section "__param", align 4
@__UNIQUE_ID_amp_gpiotype256 = internal constant [44 x i8] c"snd_maestro3.parmtype=amp_gpio:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_amp_gpio257 = internal constant [76 x i8] c"snd_maestro3.parm=amp_gpio:GPIO pin number for external amp. (default = -1)\00", section ".modinfo", align 1
@__initcall__kmod_snd_maestro3__259_2714_m3_driver_init6 = internal global ptr @m3_driver_init, section ".initcall6.init", align 4
@m3_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_m3_ids, ptr @snd_m3_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m3_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_m3_driver_exit = internal global ptr @m3_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@external_amp = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@amp_gpio = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_maestro3\00", [19 x i8] zeroinitializer }, align 32
@snd_m3_ids = internal constant { [9 x %struct.pci_device_id], [64 x i8] } { [9 x %struct.pci_device_id] [%struct.pci_device_id { i32 4701, i32 6536, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4701, i32 6537, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4701, i32 6544, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4701, i32 6546, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4701, i32 6552, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4701, i32 6553, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4701, i32 6554, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4701, i32 6555, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@m3_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @m3_suspend, ptr @m3_resume, ptr @m3_suspend, ptr @m3_resume, ptr @m3_suspend, ptr @m3_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_m3_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Canyon3D-2\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Maestro3\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ESS %s PCI\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %d\00", [44 x i8] zeroinitializer }, align 32
@snd_m3_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 2507, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"architecture does not support 28bit PCI busmaster DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_m3_create\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/pci/maestro3.c\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_m3_create._entry_ptr = internal global ptr @snd_m3_create._entry, section ".printk_index", align 4
@snd_m3_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_m3_create.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&chip->hwvol_work)\00", [59 x i8] zeroinitializer }, align 32
@m3_amp_quirk_list = internal constant { [6 x %struct.snd_pci_quirk], [32 x i8] } { [6 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 3601, i16 148, i16 -1, i32 12, ptr @.str.33 }, %struct.snd_pci_quirk { i16 4343, i16 -31938, i16 -1, i32 13, ptr @.str.34 }, %struct.snd_pci_quirk { i16 4343, i16 -31939, i16 -1, i32 13, ptr @.str.35 }, %struct.snd_pci_quirk { i16 4147, i16 -32527, i16 -1, i32 3, ptr @.str.36 }, %struct.snd_pci_quirk { i16 5385, i16 5952, i16 -1, i32 3, ptr @.str.37 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_m3_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 2535, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set amp-gpio for '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_m3_create._entry_ptr.17 = internal global ptr @snd_m3_create._entry.14, section ".printk_index", align 4
@m3_irda_quirk_list = internal constant { [4 x %struct.snd_pci_quirk], [32 x i8] } { [4 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4136, i16 176, i16 -1, i32 1, ptr @.str.38 }, %struct.snd_pci_quirk { i16 4136, i16 164, i16 -1, i32 1, ptr @.str.39 }, %struct.snd_pci_quirk { i16 4136, i16 230, i16 -1, i32 1, ptr @.str.40 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_m3_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 2546, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"enabled irda workaround for '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_m3_create._entry_ptr.20 = internal global ptr @snd_m3_create._entry.18, section ".printk_index", align 4
@m3_hv_quirk_list = internal constant { [60 x %struct.snd_pci_quirk], [224 x i8] } { [60 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 3601, i16 46, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 3601, i16 148, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 3601, i16 -20206, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 3601, i16 -20204, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 18, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 24, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 28, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 29, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 30, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4219, i16 13136, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4343, i16 -31944, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4343, i16 -31940, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4343, i16 -31939, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4343, i16 -31938, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4343, i16 -31937, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 5053, i16 4120, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 5053, i16 4121, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 5053, i16 4122, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 5375, i16 3843, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 5375, i16 3844, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 5375, i16 3845, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 5485, i16 -19456, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 5485, i16 -18539, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 5485, i16 -18537, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 5485, i16 -14592, i16 -1, i32 10485760, ptr null }, %struct.snd_pci_quirk { i16 4147, i16 -32527, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 26, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 4219, i16 13322, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 4219, i16 13392, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 4255, i16 12596, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 4255, i16 12641, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 5197, i16 12928, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 5197, i16 12929, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 5197, i16 -16382, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 5197, i16 -16381, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 5385, i16 5952, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 5648, i16 16, i16 -1, i32 14680064, ptr null }, %struct.snd_pci_quirk { i16 4162, i16 4162, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 4219, i16 -27392, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 5375, i16 3846, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 5464, i16 -31354, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 5663, i16 8209, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 14, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 16, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 17, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 27, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 4173, i16 -32602, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 4173, i16 -32598, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 4219, i16 21248, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 4362, i16 6552, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 5053, i16 4117, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 5053, i16 4124, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 5053, i16 6146, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 5529, i16 1813, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 22083, i16 22083, i16 -1, i32 8388608, ptr null }, %struct.snd_pci_quirk { i16 5197, i16 12896, i16 -1, i32 12582912, ptr null }, %struct.snd_pci_quirk { i16 5197, i16 12897, i16 -1, i32 12582912, ptr null }, %struct.snd_pci_quirk { i16 5197, i16 -16384, i16 -1, i32 12582912, ptr null }, %struct.snd_pci_quirk { i16 5197, i16 -16383, i16 -1, i32 12582912, ptr null }, %struct.snd_pci_quirk zeroinitializer], [224 x i8] zeroinitializer }, align 32
@m3_omnibook_quirk_list = internal constant { [3 x %struct.snd_pci_quirk], [48 x i8] } { [3 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 16, i16 -1, i32 0, ptr null }, %struct.snd_pci_quirk { i16 4156, i16 17, i16 -1, i32 0, ptr null }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ess/maestro3_assp_kernel.fw\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ess/maestro3_assp_minisrc.fw\00", [35 x i8] zeroinitializer }, align 32
@snd_m3_create._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.8, i32 2591, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_m3_create._entry_ptr.25 = internal global ptr @snd_m3_create._entry.23, section ".printk_index", align 4
@snd_m3_create._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.8, i32 2603, ptr @.str.28, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't allocate apm buffer\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_m3_create._entry_ptr.29 = internal global ptr @snd_m3_create._entry.26, section ".printk_index", align 4
@snd_m3_create._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.7, ptr @.str.8, i32 2627, ptr @.str.28, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Input device registration failed with error %i\00", [49 x i8] zeroinitializer }, align 32
@snd_m3_create._entry_ptr.32 = internal global ptr @snd_m3_create._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Compaq Evo N600c\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Panasonic CF-28\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Panasonic CF-72\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NEC LM800J/7\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LEGEND ZhaoYang 3100CF\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 4000\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 8000\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 8100\00", [45 x i8] zeroinitializer }, align 32
@minisrc_lpf = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 1859, i16 4356, i16 2636, i16 -1907, i16 9260, i16 4131, i16 6825, i16 2912, i16 -4131, i16 6255], [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_m3_ac97_reset.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.8, ptr @.str.42, i8 1, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_m3_ac97_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"retrying codec reset with delays of %d and %d ms\0A\00", [46 x i8] zeroinitializer }, align 32
@snd_m3_ac97_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.8, i32 1879, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ac97 serial bus busy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_m3_ac97_wait\00", [47 x i8] zeroinitializer }, align 32
@snd_m3_ac97_wait._entry_ptr = internal global ptr @snd_m3_ac97_wait._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@snd_m3_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_m3_ac97_write, ptr @snd_m3_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_m3_assp_client_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.8, i32 2195, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no memory for %d bytes at ind %d (addr 0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_m3_assp_client_init\00", [40 x i8] zeroinitializer }, align 32
@snd_m3_assp_client_init._entry_ptr = internal global ptr @snd_m3_assp_client_init._entry, section ".printk_index", align 4
@snd_m3_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_m3_playback_open, ptr @snd_m3_playback_close, ptr null, ptr @snd_m3_pcm_hw_params, ptr @snd_m3_pcm_hw_free, ptr @snd_m3_pcm_prepare, ptr @snd_m3_pcm_trigger, ptr null, ptr @snd_m3_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_m3_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_m3_capture_open, ptr @snd_m3_capture_close, ptr null, ptr @snd_m3_pcm_hw_params, ptr @snd_m3_pcm_hw_free, ptr @snd_m3_pcm_prepare, ptr @snd_m3_pcm_trigger, ptr null, ptr @snd_m3_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_m3_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 327939, i64 6, i32 1073742078, i32 8000, i32 48000, i32 1, i32 2, i32 524288, i32 64, i32 524288, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_m3_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.8, i32 1383, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"oh my, not aligned\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_m3_pcm_hw_params\00", [43 x i8] zeroinitializer }, align 32
@snd_m3_pcm_hw_params._entry_ptr = internal global ptr @snd_m3_pcm_hw_params._entry, section ".printk_index", align 4
@pv = internal constant { [20 x %struct.play_vals], [48 x i8] } { [20 x %struct.play_vals] [%struct.play_vals { i16 20, i16 26624 }, %struct.play_vals { i16 21, i16 26624 }, %struct.play_vals { i16 24, i16 0 }, %struct.play_vals { i16 27, i16 0 }, %struct.play_vals { i16 28, i16 0 }, %struct.play_vals { i16 29, i16 0 }, %struct.play_vals { i16 30, i16 0 }, %struct.play_vals { i16 31, i16 0 }, %struct.play_vals { i16 32, i16 0 }, %struct.play_vals { i16 33, i16 0 }, %struct.play_vals { i16 34, i16 -32768 }, %struct.play_vals { i16 35, i16 -256 }, %struct.play_vals { i16 37, i16 0 }, %struct.play_vals { i16 38, i16 0 }, %struct.play_vals { i16 39, i16 0 }, %struct.play_vals { i16 40, i16 8 }, %struct.play_vals { i16 41, i16 100 }, %struct.play_vals { i16 42, i16 1 }, %struct.play_vals { i16 44, i16 0 }, %struct.play_vals { i16 45, i16 0 }], [48 x i8] zeroinitializer }, align 32
@rv = internal constant { [22 x %struct.rec_vals], [40 x i8] } { [22 x %struct.rec_vals] [%struct.rec_vals { i16 20, i16 26624 }, %struct.rec_vals { i16 21, i16 26624 }, %struct.rec_vals { i16 24, i16 1 }, %struct.rec_vals { i16 27, i16 0 }, %struct.rec_vals { i16 28, i16 0 }, %struct.rec_vals { i16 29, i16 0 }, %struct.rec_vals { i16 30, i16 0 }, %struct.rec_vals { i16 31, i16 0 }, %struct.rec_vals { i16 32, i16 0 }, %struct.rec_vals { i16 33, i16 0 }, %struct.rec_vals { i16 34, i16 -32768 }, %struct.rec_vals { i16 35, i16 -256 }, %struct.rec_vals { i16 37, i16 0 }, %struct.rec_vals { i16 38, i16 0 }, %struct.rec_vals { i16 39, i16 0 }, %struct.rec_vals { i16 40, i16 50 }, %struct.rec_vals { i16 41, i16 8 }, %struct.rec_vals { i16 42, i16 0 }, %struct.rec_vals { i16 43, i16 0 }, %struct.rec_vals { i16 44, i16 0 }, %struct.rec_vals { i16 45, i16 0 }, %struct.rec_vals { i16 46, i16 255 }], [40 x i8] zeroinitializer }, align 32
@snd_m3_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 327939, i64 6, i32 1073742078, i32 8000, i32 48000, i32 1, i32 2, i32 524288, i32 64, i32 524288, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci-%s/input0\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 6536, i64 6537, i64 6544, i64 6546]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 16, i64 6536, i64 6537, i64 6544, i64 6546]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 8, i64 102, i64 136, i64 170]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"m3_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2705, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 45, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 46, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 47, i32 13 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"external_amp\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 48, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"amp_gpio\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 49, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2714, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"snd_m3_ids\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 783, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"m3_pm\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2449, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2642, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2671, i32 24 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2674, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2682, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2683, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2506, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2511, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2525, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"m3_amp_quirk_list\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 805, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2534, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [19 x i8] c"m3_irda_quirk_list\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 814, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2545, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"m3_hv_quirk_list\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 822, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant [23 x i8] c"m3_omnibook_quirk_list\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 900, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2562, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2567, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2591, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2603, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2625, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 806, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 807, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 808, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 809, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 810, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 815, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 816, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 817, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [12 x i8] c"minisrc_lpf\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2076, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2011, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1879, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2036, i32 39 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2193, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c"snd_m3_playback_ops\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1815, i32 33 }
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c"snd_m3_capture_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1825, i32 33 }
@___asan_gen_.241 = private unnamed_addr constant [16 x i8] c"snd_m3_playback\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1660, i32 38 }
@___asan_gen_.244 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1383, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1255, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [3 x i8] c"rv\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1322, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [15 x i8] c"snd_m3_capture\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1681, i32 38 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private constant [24 x i8] c"../sound/pci/maestro3.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 2465, i32 43 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_amp_gpio257, ptr @__UNIQUE_ID_amp_gpiotype256, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable253, ptr @__UNIQUE_ID_enabletype252, ptr @__UNIQUE_ID_external_amp255, ptr @__UNIQUE_ID_external_amptype254, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_firmware246, ptr @__UNIQUE_ID_firmware247, ptr @__UNIQUE_ID_id251, ptr @__UNIQUE_ID_idtype250, ptr @__UNIQUE_ID_index249, ptr @__UNIQUE_ID_indextype248, ptr @__UNIQUE_ID_license245, ptr @__exitcall_m3_driver_exit, ptr @__initcall__kmod_snd_maestro3__259_2714_m3_driver_init6, ptr @__param_amp_gpio, ptr @__param_enable, ptr @__param_external_amp, ptr @__param_id, ptr @__param_index, ptr @m3_driver_exit, ptr @snd_m3_ac97_wait._entry, ptr @snd_m3_ac97_wait._entry_ptr, ptr @snd_m3_assp_client_init._entry, ptr @snd_m3_assp_client_init._entry_ptr, ptr @snd_m3_create._entry, ptr @snd_m3_create._entry.14, ptr @snd_m3_create._entry.18, ptr @snd_m3_create._entry.23, ptr @snd_m3_create._entry.26, ptr @snd_m3_create._entry.30, ptr @snd_m3_create._entry_ptr, ptr @snd_m3_create._entry_ptr.17, ptr @snd_m3_create._entry_ptr.20, ptr @snd_m3_create._entry_ptr.25, ptr @snd_m3_create._entry_ptr.29, ptr @snd_m3_create._entry_ptr.32, ptr @snd_m3_pcm_hw_params._entry, ptr @snd_m3_pcm_hw_params._entry_ptr, ptr @m3_driver, ptr @index, ptr @id, ptr @enable, ptr @external_amp, ptr @amp_gpio, ptr @.str, ptr @snd_m3_ids, ptr @m3_pm, ptr @snd_m3_probe.dev, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @snd_m3_create.__key, ptr @.str.11, ptr @snd_m3_create.__key.12, ptr @.str.13, ptr @m3_amp_quirk_list, ptr @.str.15, ptr @.str.16, ptr @m3_irda_quirk_list, ptr @.str.19, ptr @m3_hv_quirk_list, ptr @m3_omnibook_quirk_list, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @minisrc_lpf, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @snd_m3_mixer.ops, ptr @.str.45, ptr @.str.46, ptr @snd_m3_playback_ops, ptr @snd_m3_capture_ops, ptr @snd_m3_playback, ptr @.str.47, ptr @.str.48, ptr @pv, ptr @rv, ptr @snd_m3_capture, ptr @.str.49], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m3_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @external_amp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_gpio to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_ids to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m3_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_create.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m3_amp_quirk_list to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m3_irda_quirk_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m3_hv_quirk_list to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m3_omnibook_quirk_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_create._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_create._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_create._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minisrc_lpf to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_ac97_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_assp_client_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_m3_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @m3_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @m3_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_m3_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pbus.i.i = alloca ptr, align 4
  %ac97.i.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !188
  %class = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 11
  %1 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %class, align 8
  %3 = and i32 %2, 16776960
  call void @__sanitizer_cov_trace_const_cmp4(i32 262400, i32 %3)
  %cmp.not = icmp eq i32 %3, 262400
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @snd_m3_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %4)
  %cmp1 = icmp sgt i32 %4, 31
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @snd_m3_probe.dev, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx6 = getelementptr [32 x i32], ptr @index, i32 0, i32 %4
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %4
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %8, ptr noundef %10, ptr noundef null, i32 noundef 288, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %sw.default [
    i16 6537, label %if.end10.sw.bb_crit_edge
    i16 6536, label %if.end10.sw.bb_crit_edge56
    i16 6544, label %if.end10.sw.bb12_crit_edge
    i16 6546, label %if.end10.sw.bb12_crit_edge57
  ]

if.end10.sw.bb12_crit_edge57:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.end10.sw.bb12_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.end10.sw.bb_crit_edge56:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge56
  %driver = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 2
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 4714262092733116160, ptr %driver, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end10.sw.bb12_crit_edge, %if.end10.sw.bb12_crit_edge57
  %driver13 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %driver13, ptr @.str.2, i32 11)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %driver16 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %driver16, ptr @.str.3, i32 9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb
  %21 = load i32, ptr @snd_m3_probe.dev, align 4
  %arrayidx19 = getelementptr [32 x i8], ptr @external_amp, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx19, align 1, !range !189
  %24 = zext i8 %23 to i32
  %arrayidx22 = getelementptr [32 x i32], ptr @amp_gpio, i32 0, i32 %21
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx22, align 4
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 268435455) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev4.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %29 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev4.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.6) #13
  br label %cleanup

do.body6.i:                                       ; preds = %if.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 268435455) #10
  %reg_lock.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 21
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @snd_m3_create.__key, i16 noundef signext 3) #10
  %31 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %device, align 2
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %32, label %do.body6.i.sw.epilog.i_crit_edge [
    i16 6537, label %do.body6.i.sw.bb.i_crit_edge
    i16 6536, label %do.body6.i.sw.bb.i_crit_edge58
    i16 6544, label %do.body6.i.sw.bb.i_crit_edge59
    i16 6546, label %do.body6.i.sw.bb.i_crit_edge60
  ]

do.body6.i.sw.bb.i_crit_edge60:                   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.body6.i.sw.bb.i_crit_edge59:                   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.body6.i.sw.bb.i_crit_edge58:                   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.body6.i.sw.bb.i_crit_edge:                     ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

do.body6.i.sw.epilog.i_crit_edge:                 ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.body6.i.sw.bb.i_crit_edge, %do.body6.i.sw.bb.i_crit_edge58, %do.body6.i.sw.bb.i_crit_edge59, %do.body6.i.sw.bb.i_crit_edge60
  %allegro_flag.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 3
  %34 = ptrtoint ptr %allegro_flag.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %allegro_flag.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %allegro_flag.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %do.body6.i.sw.epilog.i_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %12, ptr %28, align 4
  %pci11.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 6
  %36 = ptrtoint ptr %pci11.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pci, ptr %pci11.i, align 4
  %irq.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 2
  %37 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %irq.i, align 4
  %hwvol_work.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 24
  call void @__init_work(ptr noundef %hwvol_work.i, i32 noundef 0) #10
  %38 = ptrtoint ptr %hwvol_work.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %hwvol_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 24, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @snd_m3_create.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry16.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 24, i32 1
  %39 = ptrtoint ptr %entry16.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry16.i, ptr %entry16.i, align 4
  %prev.i.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 24, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry16.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 24, i32 2
  %41 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @snd_m3_update_hw_volume, ptr %func.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 10
  %42 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @snd_m3_free, ptr %private_free.i, align 4
  %external_amp.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 14
  %43 = ptrtoint ptr %external_amp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %24, ptr %external_amp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %26)
  %44 = icmp ult i32 %26, 16
  br i1 %44, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %amp_gpio24.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 15
  %45 = ptrtoint ptr %amp_gpio24.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %26, ptr %amp_gpio24.i, align 4
  br label %if.end43.i

if.else.i:                                        ; preds = %sw.epilog.i
  %call25.i = call ptr @snd_pci_quirk_lookup(ptr noundef %pci, ptr noundef nonnull @m3_amp_quirk_list) #10
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.else33.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev31.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %46 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev31.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call25.i, i32 0, i32 4
  %48 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.15, ptr noundef %49) #13
  %value.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call25.i, i32 0, i32 3
  %50 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value.i, align 4
  %amp_gpio32.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 15
  %52 = ptrtoint ptr %amp_gpio32.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %amp_gpio32.i, align 4
  br label %if.end43.i

if.else33.i:                                      ; preds = %if.else.i
  %allegro_flag34.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 3
  %53 = ptrtoint ptr %allegro_flag34.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load35.i = load i8, ptr %allegro_flag34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load35.i)
  %tobool36.not.i = icmp sgt i8 %bf.load35.i, -1
  %amp_gpio40.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 15
  br i1 %tobool36.not.i, label %if.else39.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %amp_gpio40.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %amp_gpio40.i, align 4
  br label %if.end43.i

if.else39.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %amp_gpio40.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %amp_gpio40.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else39.i, %if.then37.i, %do.end30.i, %if.then23.i
  %call44.i = call ptr @snd_pci_quirk_lookup(ptr noundef %pci, ptr noundef nonnull @m3_irda_quirk_list) #10
  %tobool45.not.i = icmp eq ptr %call44.i, null
  br i1 %tobool45.not.i, label %if.end43.i.if.end55.i_crit_edge, label %do.end49.i

if.end43.i.if.end55.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

do.end49.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev50.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %56 = ptrtoint ptr %dev50.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev50.i, align 8
  %name51.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call44.i, i32 0, i32 4
  %58 = ptrtoint ptr %name51.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name51.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.19, ptr noundef %59) #13
  %irda_workaround.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 17
  %60 = ptrtoint ptr %irda_workaround.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load52.i = load i8, ptr %irda_workaround.i, align 4
  %bf.set54.i = or i8 %bf.load52.i, -128
  store i8 %bf.set54.i, ptr %irda_workaround.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end49.i, %if.end43.i.if.end55.i_crit_edge
  %call56.i = call ptr @snd_pci_quirk_lookup(ptr noundef %pci, ptr noundef nonnull @m3_hv_quirk_list) #10
  %tobool57.not.i = icmp eq ptr %call56.i, null
  br i1 %tobool57.not.i, label %if.end55.i.if.end60.i_crit_edge, label %if.then58.i

if.end55.i.if.end60.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %value59.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call56.i, i32 0, i32 3
  %61 = ptrtoint ptr %value59.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %value59.i, align 4
  %hv_config.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 16
  %63 = ptrtoint ptr %hv_config.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %hv_config.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then58.i, %if.end55.i.if.end60.i_crit_edge
  %call61.i = call ptr @snd_pci_quirk_lookup(ptr noundef %pci, ptr noundef nonnull @m3_omnibook_quirk_list) #10
  %tobool62.not.i = icmp eq ptr %call61.i, null
  br i1 %tobool62.not.i, label %if.end60.i.if.end67.i_crit_edge, label %if.then63.i

if.end60.i.if.end67.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.then63.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %is_omnibook.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 17
  %64 = ptrtoint ptr %is_omnibook.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load64.i = load i8, ptr %is_omnibook.i, align 4
  %bf.set66.i = or i8 %bf.load64.i, 64
  store i8 %bf.set66.i, ptr %is_omnibook.i, align 4
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then63.i, %if.end60.i.if.end67.i_crit_edge
  %num_substreams.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 19
  %65 = ptrtoint ptr %num_substreams.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %num_substreams.i, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 228, i32 noundef 3520) #10
  %substreams.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 20
  %66 = ptrtoint ptr %substreams.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call5.i.i.i, ptr %substreams.i, align 4
  %tobool72.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool72.not.i, label %if.end67.i.cleanup_crit_edge, label %if.end74.i

if.end67.i.cleanup_crit_edge:                     ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74.i:                                       ; preds = %if.end67.i
  %assp_kernel_image.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 27
  %call76.i = call i32 @request_firmware(ptr noundef %assp_kernel_image.i, ptr noundef nonnull @.str.21, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %if.end74.i.cleanup_crit_edge, label %if.end80.i

if.end74.i.cleanup_crit_edge:                     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end80.i:                                       ; preds = %if.end74.i
  %assp_minisrc_image.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 28
  %call82.i = call i32 @request_firmware(ptr noundef %assp_minisrc_image.i, ptr noundef nonnull @.str.22, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %cmp83.i = icmp slt i32 %call82.i, 0
  br i1 %cmp83.i, label %if.end80.i.cleanup_crit_edge, label %if.end86.i

if.end80.i.cleanup_crit_edge:                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end86.i:                                       ; preds = %if.end80.i
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 2
  %call87.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef %driver.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %cmp88.i = icmp slt i32 %call87.i, 0
  br i1 %cmp88.i, label %if.end86.i.cleanup_crit_edge, label %if.end91.i

if.end86.i.cleanup_crit_edge:                     ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end91.i:                                       ; preds = %if.end86.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %67 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %resource.i, align 8
  %iobase.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 1
  %69 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %iobase.i, align 4
  call void @pci_set_master(ptr noundef %pci) #10
  call fastcc void @snd_m3_chip_init(ptr noundef %28) #10
  %70 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iobase.i, align 4
  %add.i.i.i = add i32 %71, 164
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %72 = inttoptr i32 %add1.i.i.i to ptr
  %73 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %72) #10, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %74 = and i8 %73, -17
  %reset_state.i.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 13
  %75 = ptrtoint ptr %reset_state.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %reset_state.i.i, align 4
  call void @msleep(i32 noundef 10) #10
  %76 = ptrtoint ptr %reset_state.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %reset_state.i.i, align 4
  %78 = and i8 %77, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  call void @arm_heavy_mb() #10
  %79 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %iobase.i, align 4
  %add.i10.i.i = add i32 %80, 164
  %and.i11.i.i = and i32 %add.i10.i.i, 1048575
  %add1.i12.i.i = or i32 %and.i11.i.i, -18874368
  %81 = inttoptr i32 %add1.i12.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 %78) #10, !srcloc !193
  call fastcc void @snd_m3_ac97_reset(ptr noundef %28) #10
  call fastcc void @snd_m3_amp_enable(ptr noundef %28) #10
  call fastcc void @snd_m3_hv_init(ptr noundef %28) #10
  %irq94.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %82 = ptrtoint ptr %irq94.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq94.i, align 4
  %call.i249.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %83, ptr noundef nonnull @snd_m3_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249.i)
  %tobool96.not.i = icmp eq i32 %call.i249.i, 0
  br i1 %tobool96.not.i, label %if.end103.i, label %do.end100.i

do.end100.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev101.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %84 = ptrtoint ptr %dev101.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev101.i, align 8
  %86 = ptrtoint ptr %irq94.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq94.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.24, i32 noundef %87) #13
  br label %cleanup

if.end103.i:                                      ; preds = %if.end91.i
  %88 = ptrtoint ptr %irq94.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %irq94.i, align 4
  %90 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 33
  %91 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %89, ptr %sync_irq.i, align 4
  %call108.i = call noalias ptr @vmalloc(i32 noundef 20480) #14
  %suspend_mem.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 26
  %92 = ptrtoint ptr %suspend_mem.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call108.i, ptr %suspend_mem.i, align 4
  %cmp110.i = icmp eq ptr %call108.i, null
  br i1 %cmp110.i, label %do.end115.i, label %if.end103.i.if.end117.i_crit_edge

if.end103.i.if.end117.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117.i

do.end115.i:                                      ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev116.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %93 = ptrtoint ptr %dev116.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev116.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str.27) #13
  br label %if.end117.i

if.end117.i:                                      ; preds = %do.end115.i, %if.end103.i.if.end117.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i.i) #10
  %95 = ptrtoint ptr %pbus.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i.i, align 4, !annotation !188
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i.i) #10
  %96 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %28, align 4
  %call.i250.i = call i32 @snd_ac97_bus(ptr noundef %97, i32 noundef 0, ptr noundef nonnull @snd_m3_mixer.ops, ptr noundef null, ptr noundef nonnull %pbus.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250.i)
  %cmp.i251.i = icmp slt i32 %call.i250.i, 0
  br i1 %cmp.i251.i, label %if.end117.i.snd_m3_mixer.exit.thread.i_crit_edge, label %if.end.i.i

if.end117.i.snd_m3_mixer.exit.thread.i_crit_edge: ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_mixer.exit.thread.i

if.end.i.i:                                       ; preds = %if.end117.i
  %98 = getelementptr inbounds i8, ptr %ac97.i.i, i32 4
  %99 = call ptr @memset(ptr %98, i32 0, i32 20)
  %100 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %28, ptr %ac97.i.i, align 4
  %101 = ptrtoint ptr %pbus.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pbus.i.i, align 4
  %ac971.i.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 4
  %call2.i.i = call i32 @snd_ac97_mixer(ptr noundef %102, ptr noundef nonnull %ac97.i.i, ptr noundef %ac971.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.snd_m3_mixer.exit.thread.i_crit_edge, label %snd_m3_mixer.exit.i

if.end.i.i.snd_m3_mixer.exit.thread.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_mixer.exit.thread.i

snd_m3_mixer.exit.thread.i:                       ; preds = %if.end.i.i.snd_m3_mixer.exit.thread.i_crit_edge, %if.end117.i.snd_m3_mixer.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call2.i.i, %if.end.i.i.snd_m3_mixer.exit.thread.i_crit_edge ], [ %call.i250.i, %if.end117.i.snd_m3_mixer.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i.i) #10
  br label %cleanup

snd_m3_mixer.exit.i:                              ; preds = %if.end.i.i
  %103 = ptrtoint ptr %ac971.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ac971.i.i, align 4
  call void @snd_ac97_write(ptr noundef %104, i16 noundef zeroext 24, i16 noundef zeroext -28913) #10
  %call8.i.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #10
  %105 = ptrtoint ptr %ac971.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ac971.i.i, align 4
  call void @snd_ac97_write(ptr noundef %106, i16 noundef zeroext 24, i16 noundef zeroext 0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i.i) #10
  %107 = ptrtoint ptr %num_substreams.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_substreams.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp124261.i = icmp sgt i32 %108, 0
  br i1 %cmp124261.i, label %snd_m3_mixer.exit.i.for.body.i_crit_edge, label %snd_m3_mixer.exit.i.for.end.i_crit_edge

snd_m3_mixer.exit.i.for.end.i_crit_edge:          ; preds = %snd_m3_mixer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

snd_m3_mixer.exit.i.for.body.i_crit_edge:         ; preds = %snd_m3_mixer.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %snd_m3_mixer.exit.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 4736, %snd_m3_mixer.exit.i.for.body.i_crit_edge ]
  %i.0262.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %snd_m3_mixer.exit.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0262.i)
  %exitcond265.i = icmp eq i32 %i.0262.i, 7
  br i1 %exitcond265.i, label %snd_m3_assp_client_init.exit.thread.i, label %if.end.i253.i

snd_m3_assp_client_init.exit.thread.i:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %28, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %110, i32 0, i32 27
  %111 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.45, i32 noundef 768, i32 noundef 7, i32 noundef 7040) #13
  br label %cleanup

if.end.i253.i:                                    ; preds = %for.body.i
  %mul.i.i = mul nuw nsw i32 %i.0262.i, 384
  %add1.i.i = add nuw nsw i32 %mul.i.i, 4352
  %113 = ptrtoint ptr %substreams.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %substreams.i, align 4
  %arrayidx127.i = getelementptr %struct.m3_dma, ptr %114, i32 %i.0262.i
  %115 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %i.0262.i, ptr %arrayidx127.i, align 4
  %inst.i.i = getelementptr %struct.m3_dma, ptr %114, i32 %i.0262.i, i32 2
  %116 = ptrtoint ptr %inst.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1024, ptr %inst.i.i, align 4
  %conv.i.i = trunc i32 %add1.i.i to i16
  %data.i.i = getelementptr %struct.m3_dma, ptr %114, i32 %i.0262.i, i32 2, i32 1
  %117 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv.i.i, ptr %data.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i253.i
  %address.025.i.i = phi i32 [ %add1.i.i, %if.end.i253.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %conv8.i.i = trunc i32 %address.025.i.i to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %118 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %iobase.i, align 4
  %add.i.i.i.i = add i32 %119, 130
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %120 = inttoptr i32 %add1.i.i.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %120, i16 768) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %121 = call i16 @llvm.bswap.i16(i16 %conv8.i.i) #10
  %122 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %iobase.i, align 4
  %add.i5.i.i.i = add i32 %123, 128
  %and.i6.i.i.i = and i32 %add.i5.i.i.i, 1048575
  %add1.i7.i.i.i = or i32 %and.i6.i.i.i, -18874368
  %124 = inttoptr i32 %add1.i7.i.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %124, i16 %121) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %125 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %iobase.i, align 4
  %add.i9.i.i.i = add i32 %126, 132
  %and.i10.i.i.i = and i32 %add.i9.i.i.i, 1048575
  %add1.i11.i.i.i = or i32 %and.i10.i.i.i, -18874368
  %127 = inttoptr i32 %add1.i11.i.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %127, i16 0) #10, !srcloc !195
  %inc.i.i = add nuw nsw i32 %address.025.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i.i, %indvars.iv.i
  br i1 %exitcond.not.i, label %for.inc.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i:                                        ; preds = %for.body.i.i
  %inc.i = add nuw nsw i32 %i.0262.i, 1
  %128 = ptrtoint ptr %num_substreams.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_substreams.i, align 4
  %cmp124.i = icmp slt i32 %inc.i, %129
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 384
  br i1 %cmp124.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %snd_m3_mixer.exit.i.for.end.i_crit_edge
  %call133.i = call fastcc i32 @snd_m3_pcm(ptr noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %cmp134.i = icmp slt i32 %call133.i, 0
  br i1 %cmp134.i, label %for.end.i.cleanup_crit_edge, label %if.end137.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end137.i:                                      ; preds = %for.end.i
  %hv_config138.i = getelementptr inbounds %struct.snd_m3, ptr %28, i32 0, i32 16
  %130 = ptrtoint ptr %hv_config138.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hv_config138.i, align 4
  %and.i = and i32 %131, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool139.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool139.not.i, label %if.end137.i.if.end27_crit_edge, label %if.then140.i

if.end137.i.if.end27_crit_edge:                   ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then140.i:                                     ; preds = %if.end137.i
  %call141.i = call fastcc i32 @snd_m3_input_register(ptr noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %tobool142.not.i = icmp eq i32 %call141.i, 0
  br i1 %tobool142.not.i, label %if.then140.i.if.end27_crit_edge, label %do.end146.i

if.then140.i.if.end27_crit_edge:                  ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end146.i:                                      ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev147.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %132 = ptrtoint ptr %dev147.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev147.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %133, ptr noundef nonnull @.str.31, i32 noundef %call141.i) #13
  br label %if.end27

if.end27:                                         ; preds = %do.end146.i, %if.then140.i.if.end27_crit_edge, %if.end137.i.if.end27_crit_edge
  call fastcc void @snd_m3_enable_ints(ptr noundef %28) #10
  call fastcc void @snd_m3_assp_continue(ptr noundef %28) #10
  %134 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %135, i32 0, i32 3
  %driver29 = getelementptr inbounds %struct.snd_card, ptr %135, i32 0, i32 2
  %call31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname, ptr noundef nonnull @.str.4, ptr noundef %driver29)
  %136 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %137, i32 0, i32 4
  %shortname33 = getelementptr inbounds %struct.snd_card, ptr %137, i32 0, i32 3
  %iobase = getelementptr inbounds %struct.snd_m3, ptr %14, i32 0, i32 1
  %138 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %iobase, align 4
  %irq = getelementptr inbounds %struct.snd_m3, ptr %14, i32 0, i32 2
  %140 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %irq, align 4
  %call35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.5, ptr noundef %shortname33, i32 noundef %139, i32 noundef %141)
  %142 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %card, align 4
  %call36 = call i32 @snd_card_register(ptr noundef %143) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end27.cleanup_crit_edge, label %if.end40

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %146 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %driver_data.i.i, align 4
  %147 = load i32, ptr @snd_m3_probe.dev, align 4
  %inc41 = add i32 %147, 1
  store i32 %inc41, ptr @snd_m3_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end27.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %snd_m3_assp_client_init.exit.thread.i, %snd_m3_mixer.exit.thread.i, %do.end100.i, %if.end86.i.cleanup_crit_edge, %if.end80.i.cleanup_crit_edge, %if.end74.i.cleanup_crit_edge, %if.end67.i.cleanup_crit_edge, %do.end.i, %sw.epilog.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ -2, %if.then4 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call, %if.end5.cleanup_crit_edge ], [ %call36, %if.end27.cleanup_crit_edge ], [ -12, %snd_m3_assp_client_init.exit.thread.i ], [ %retval.0.i.ph.i, %snd_m3_mixer.exit.thread.i ], [ %call133.i, %for.end.i.cleanup_crit_edge ], [ %call87.i, %if.end86.i.cleanup_crit_edge ], [ %call82.i, %if.end80.i.cleanup_crit_edge ], [ %call76.i, %if.end74.i.cleanup_crit_edge ], [ -12, %if.end67.i.cleanup_crit_edge ], [ -5, %sw.epilog.cleanup_crit_edge ], [ -12, %do.end100.i ], [ -6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_m3_update_hw_volume(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr i8, ptr %work, i32 -224
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 28
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  %4 = and i8 %3, -18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add6 = add i32 %6, 28
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %7 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -120) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add14 = add i32 %9, 29
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %10 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -120) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add22 = add i32 %12, 30
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %13 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 -120) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add30 = add i32 %15, 31
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %16 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -120) #10, !srcloc !193
  %in_suspend = getelementptr i8, ptr %work, i32 44
  %17 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %in_suspend, align 4
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
  %20 = load ptr, ptr %input_dev, align 4
  %tobool34.not = icmp eq ptr %20, null
  br i1 %tobool34.not, label %if.end.cleanup_crit_edge, label %if.end36

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end
  %21 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.51)
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
  %23 = load ptr, ptr %input_dev, align 4
  tail call void @input_event(ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %24 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input_dev, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %val.0.ph, i32 noundef 0) #10
  %26 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input_dev, align 4
  tail call void @input_event(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_m3_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %hwvol_work = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 24
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %hwvol_work) #10
  %substreams = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substreams, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %num_substreams = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %num_substreams to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_substreams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp31 = icmp sgt i32 %5, 0
  br i1 %cmp31, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %6 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substreams, align 4
  %arrayidx = getelementptr %struct.m3_dma, ptr %7, i32 %i.032
  %substream = getelementptr %struct.m3_dma, ptr %7, i32 %i.032, i32 1
  %8 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %running = getelementptr %struct.m3_dma, ptr %7, i32 %i.032, i32 3
  %10 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then4

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc i32 @snd_m3_pcm_stop(ptr noundef %1, ptr noundef %arrayidx, ptr noundef nonnull %9)
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %12 = ptrtoint ptr %num_substreams to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_substreams, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  br label %if.end8

if.end8:                                          ; preds = %for.end, %entry.if.end8_crit_edge
  %iobase = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.end8.if.end14_crit_edge, label %do.body

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !201
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add = add i32 %17, 24
  %and = and i32 %add, 1048575
  %add12 = or i32 %and, -18874368
  %18 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 0) #10, !srcloc !195
  br label %if.end14

if.end14:                                         ; preds = %do.body, %if.end8.if.end14_crit_edge
  %suspend_mem = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 26
  %19 = ptrtoint ptr %suspend_mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %suspend_mem, align 4
  tail call void @vfree(ptr noundef %20) #10
  %assp_kernel_image = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 27
  %21 = ptrtoint ptr %assp_kernel_image to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %assp_kernel_image, align 4
  tail call void @release_firmware(ptr noundef %22) #10
  %assp_minisrc_image = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 28
  %23 = ptrtoint ptr %assp_minisrc_image to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %assp_minisrc_image, align 4
  tail call void @release_firmware(ptr noundef %24) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_m3_chip_init(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %n = alloca i32, align 4
  %w = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %iobase = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #10
  %4 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %n, align 4, !annotation !188
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w) #10
  %5 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %w, align 2, !annotation !188
  %call = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 64, ptr noundef nonnull %w) #10
  %6 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %w, align 2
  %8 = and i16 %7, 32708
  store i16 %8, ptr %w, align 2
  %call2 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 64, i16 noundef zeroext %8) #10
  %call3 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 80, ptr noundef nonnull %n) #10
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  %and4 = and i32 %10, -182452289
  %hv_config = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 16
  %11 = ptrtoint ptr %hv_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hv_config, align 4
  %or = or i32 %and4, %12
  %or6 = or i32 %or, 171966528
  store i32 %or6, ptr %n, align 4
  %call7 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 80, i32 noundef %or6) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add = add i32 %14, 164
  %and9 = and i32 %add, 1048575
  %add10 = or i32 %and9, -18874368
  %15 = inttoptr i32 %add10 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #10, !srcloc !193
  %call12 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 80, ptr noundef nonnull %n) #10
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  %and13 = and i32 %17, -1073741825
  store i32 %and13, ptr %n, align 4
  %allegro_flag = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 3
  %18 = ptrtoint ptr %allegro_flag to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %allegro_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and14 = and i32 %17, 1072693247
  %or15 = or i32 %and14, 1048576
  %19 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or15, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  %and16 = and i32 %21, -805568513
  store i32 %and16, ptr %n, align 4
  %call17 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 80, i32 noundef %and16) #10
  %22 = ptrtoint ptr %allegro_flag to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load19 = load i8, ptr %allegro_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %tobool22.not = icmp sgt i8 %bf.load19, -1
  br i1 %tobool22.not, label %if.end.if.end27_crit_edge, label %if.then23

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 88, ptr noundef nonnull %n) #10
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  %or25 = or i32 %24, 256
  store i32 %or25, ptr %n, align 4
  %call26 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 88, i32 noundef %or25) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end.if.end27_crit_edge
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add29 = add i32 %26, 162
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %27 = inttoptr i32 %add31 to ptr
  %28 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #10, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  %29 = and i8 %28, -74
  %30 = or i8 %29, 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %add47 = add i32 %32, 162
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %33 = inttoptr i32 %add49 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %30) #10, !srcloc !193
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end27
  %i.0206.i = phi i32 [ 0, %if.end27 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %34 = trunc i32 %i.0206.i to i16
  %conv.i = add nuw nsw i16 %34, 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add.i.i.i = add i32 %36, 130
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %37 = inttoptr i32 %add1.i.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 768) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %38 = call i16 @llvm.bswap.i16(i16 %conv.i) #10
  %39 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase, align 4
  %add.i5.i.i = add i32 %40, 128
  %and.i6.i.i = and i32 %add.i5.i.i, 1048575
  %add1.i7.i.i = or i32 %and.i6.i.i, -18874368
  %41 = inttoptr i32 %add1.i7.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 %38) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase, align 4
  %add.i9.i.i = add i32 %43, 132
  %and.i10.i.i = and i32 %add.i9.i.i, 1048575
  %add1.i11.i.i = or i32 %and.i10.i.i, -18874368
  %44 = inttoptr i32 %add1.i11.i.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 0) #10, !srcloc !195
  %inc.i = add nuw nsw i32 %i.0206.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.body.i.for.body4.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.body4.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body.i.for.body4.i_crit_edge
  %i.1207.i = phi i32 [ %inc8.i, %for.body4.i.for.body4.i_crit_edge ], [ 0, %for.body.i.for.body4.i_crit_edge ]
  %45 = trunc i32 %i.1207.i to i16
  %conv6.i = add nuw nsw i16 %45, 4224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase, align 4
  %add.i.i107.i = add i32 %47, 130
  %and.i.i108.i = and i32 %add.i.i107.i, 1048575
  %add1.i.i109.i = or i32 %and.i.i108.i, -18874368
  %48 = inttoptr i32 %add1.i.i109.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %48, i16 768) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %49 = call i16 @llvm.bswap.i16(i16 %conv6.i) #10
  %50 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase, align 4
  %add.i5.i110.i = add i32 %51, 128
  %and.i6.i111.i = and i32 %add.i5.i110.i, 1048575
  %add1.i7.i112.i = or i32 %and.i6.i111.i, -18874368
  %52 = inttoptr i32 %add1.i7.i112.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %52, i16 %49) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iobase, align 4
  %add.i9.i113.i = add i32 %54, 132
  %and.i10.i114.i = and i32 %add.i9.i113.i, 1048575
  %add1.i11.i115.i = or i32 %and.i10.i114.i, -18874368
  %55 = inttoptr i32 %add1.i11.i115.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %55, i16 0) #10, !srcloc !195
  %inc8.i = add nuw nsw i32 %i.1207.i, 1
  %exitcond213.not.i = icmp eq i32 %inc8.i, 128
  br i1 %exitcond213.not.i, label %for.end9.i, label %for.body4.i.for.body4.i_crit_edge

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i

for.end9.i:                                       ; preds = %for.body4.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase, align 4
  %add.i.i117.i = add i32 %57, 130
  %and.i.i118.i = and i32 %add.i.i117.i, 1048575
  %add1.i.i119.i = or i32 %and.i.i118.i, -18874368
  %58 = inttoptr i32 %add1.i.i119.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %58, i16 768) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %59 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iobase, align 4
  %add.i5.i120.i = add i32 %60, 128
  %and.i6.i121.i = and i32 %add.i5.i120.i, 1048575
  %add1.i7.i122.i = or i32 %and.i6.i121.i, -18874368
  %61 = inttoptr i32 %add1.i7.i122.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %61, i16 9744) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iobase, align 4
  %add.i9.i123.i = add i32 %63, 132
  %and.i10.i124.i = and i32 %add.i9.i123.i, 1048575
  %add1.i11.i125.i = or i32 %and.i10.i124.i, -18874368
  %64 = inttoptr i32 %add1.i11.i125.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %64, i16 10512) #10, !srcloc !195
  %assp_kernel_image.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 27
  %65 = ptrtoint ptr %assp_kernel_image.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %assp_kernel_image.i, align 4
  %data10.i = getelementptr inbounds %struct.firmware, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %data10.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data10.i, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp13208.not.i = icmp eq i32 %70, 0
  br i1 %cmp13208.not.i, label %for.end9.i.for.end20.i_crit_edge, label %for.end9.i.for.body15.i_crit_edge

for.end9.i.for.body15.i_crit_edge:                ; preds = %for.end9.i
  br label %for.body15.i

for.end9.i.for.end20.i_crit_edge:                 ; preds = %for.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %for.end9.i.for.body15.i_crit_edge
  %i.2209.i = phi i32 [ %inc19.i, %for.body15.i.for.body15.i_crit_edge ], [ 0, %for.end9.i.for.body15.i_crit_edge ]
  %conv17.i = trunc i32 %i.2209.i to i16
  %arrayidx.i = getelementptr i16, ptr %68, i32 %i.2209.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iobase, align 4
  %add.i.i127.i = add i32 %74, 130
  %and.i.i128.i = and i32 %add.i.i127.i, 1048575
  %add1.i.i129.i = or i32 %and.i.i128.i, -18874368
  %75 = inttoptr i32 %add1.i.i129.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %75, i16 512) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %76 = call i16 @llvm.bswap.i16(i16 %conv17.i) #10
  %77 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iobase, align 4
  %add.i5.i130.i = add i32 %78, 128
  %and.i6.i131.i = and i32 %add.i5.i130.i, 1048575
  %add1.i7.i132.i = or i32 %and.i6.i131.i, -18874368
  %79 = inttoptr i32 %add1.i7.i132.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %79, i16 %76) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %80 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iobase, align 4
  %add.i9.i133.i = add i32 %81, 132
  %and.i10.i134.i = and i32 %add.i9.i133.i, 1048575
  %add1.i11.i135.i = or i32 %and.i10.i134.i, -18874368
  %82 = inttoptr i32 %add1.i11.i135.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %82, i16 %72) #10, !srcloc !195
  %inc19.i = add i32 %i.2209.i, 1
  %mul.i = shl i32 %inc19.i, 1
  %83 = ptrtoint ptr %assp_kernel_image.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %assp_kernel_image.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %cmp13.i = icmp ult i32 %mul.i, %86
  br i1 %cmp13.i, label %for.body15.i.for.body15.i_crit_edge, label %for.body15.i.for.end20.i_crit_edge

for.body15.i.for.end20.i_crit_edge:               ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20.i

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15.i

for.end20.i:                                      ; preds = %for.body15.i.for.end20.i_crit_edge, %for.end9.i.for.end20.i_crit_edge
  %assp_minisrc_image.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 28
  %87 = ptrtoint ptr %assp_minisrc_image.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %assp_minisrc_image.i, align 4
  %data21.i = getelementptr inbounds %struct.firmware, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %data21.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data21.i, align 4
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp26210.not.i = icmp eq i32 %92, 0
  br i1 %cmp26210.not.i, label %for.end20.i.for.body38.i.preheader_crit_edge, label %for.end20.i.for.body28.i_crit_edge

for.end20.i.for.body28.i_crit_edge:               ; preds = %for.end20.i
  br label %for.body28.i

for.end20.i.for.body38.i.preheader_crit_edge:     ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.i.preheader

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.end20.i.for.body28.i_crit_edge
  %i.3211.i = phi i32 [ %inc33.i, %for.body28.i.for.body28.i_crit_edge ], [ 0, %for.end20.i.for.body28.i_crit_edge ]
  %93 = trunc i32 %i.3211.i to i16
  %conv30.i = add i16 %93, 1024
  %arrayidx31.i = getelementptr i16, ptr %90, i32 %i.3211.i
  %94 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx31.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %96 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %iobase, align 4
  %add.i.i137.i = add i32 %97, 130
  %and.i.i138.i = and i32 %add.i.i137.i, 1048575
  %add1.i.i139.i = or i32 %and.i.i138.i, -18874368
  %98 = inttoptr i32 %add1.i.i139.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %98, i16 512) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %99 = call i16 @llvm.bswap.i16(i16 %conv30.i) #10
  %100 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %iobase, align 4
  %add.i5.i140.i = add i32 %101, 128
  %and.i6.i141.i = and i32 %add.i5.i140.i, 1048575
  %add1.i7.i142.i = or i32 %and.i6.i141.i, -18874368
  %102 = inttoptr i32 %add1.i7.i142.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %102, i16 %99) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %103 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %iobase, align 4
  %add.i9.i143.i = add i32 %104, 132
  %and.i10.i144.i = and i32 %add.i9.i143.i, 1048575
  %add1.i11.i145.i = or i32 %and.i10.i144.i, -18874368
  %105 = inttoptr i32 %add1.i11.i145.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %105, i16 %95) #10, !srcloc !195
  %inc33.i = add i32 %i.3211.i, 1
  %mul23.i = shl i32 %inc33.i, 1
  %106 = ptrtoint ptr %assp_minisrc_image.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %assp_minisrc_image.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %cmp26.i = icmp ult i32 %mul23.i, %109
  br i1 %cmp26.i, label %for.body28.i.for.body28.i_crit_edge, label %for.body28.i.for.body38.i.preheader_crit_edge

for.body28.i.for.body38.i.preheader_crit_edge:    ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.i.preheader

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.i

for.body38.i.preheader:                           ; preds = %for.body28.i.for.body38.i.preheader_crit_edge, %for.end20.i.for.body38.i.preheader_crit_edge
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.body38.i.for.body38.i_crit_edge, %for.body38.i.preheader
  %i.4212.i = phi i32 [ %inc43.i, %for.body38.i.for.body38.i_crit_edge ], [ 0, %for.body38.i.preheader ]
  %110 = trunc i32 %i.4212.i to i16
  %conv40.i = add nuw nsw i16 %110, 1397
  %arrayidx41.i = getelementptr [10 x i16], ptr @minisrc_lpf, i32 0, i32 %i.4212.i
  %111 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx41.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %113 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %iobase, align 4
  %add.i.i147.i = add i32 %114, 130
  %and.i.i148.i = and i32 %add.i.i147.i, 1048575
  %add1.i.i149.i = or i32 %and.i.i148.i, -18874368
  %115 = inttoptr i32 %add1.i.i149.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %115, i16 512) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %116 = call i16 @llvm.bswap.i16(i16 %conv40.i) #10
  %117 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %iobase, align 4
  %add.i5.i150.i = add i32 %118, 128
  %and.i6.i151.i = and i32 %add.i5.i150.i, 1048575
  %add1.i7.i152.i = or i32 %and.i6.i151.i, -18874368
  %119 = inttoptr i32 %add1.i7.i152.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %119, i16 %116) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %120 = call i16 @llvm.bswap.i16(i16 %112) #10
  %121 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %iobase, align 4
  %add.i9.i153.i = add i32 %122, 132
  %and.i10.i154.i = and i32 %add.i9.i153.i, 1048575
  %add1.i11.i155.i = or i32 %and.i10.i154.i, -18874368
  %123 = inttoptr i32 %add1.i11.i155.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %123, i16 %120) #10, !srcloc !195
  %inc43.i = add nuw nsw i32 %i.4212.i, 1
  %exitcond214.not.i = icmp eq i32 %inc43.i, 10
  br i1 %exitcond214.not.i, label %snd_m3_assp_init.exit, label %for.body38.i.for.body38.i_crit_edge

for.body38.i.for.body38.i_crit_edge:              ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.i

snd_m3_assp_init.exit:                            ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %124 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %iobase, align 4
  %add.i.i157.i = add i32 %125, 130
  %and.i.i158.i = and i32 %add.i.i157.i, 1048575
  %add1.i.i159.i = or i32 %and.i.i158.i, -18874368
  %126 = inttoptr i32 %add1.i.i159.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %126, i16 512) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %127 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %iobase, align 4
  %add.i5.i160.i = add i32 %128, 128
  %and.i6.i161.i = and i32 %add.i5.i160.i, 1048575
  %add1.i7.i162.i = or i32 %and.i6.i161.i, -18874368
  %129 = inttoptr i32 %add1.i7.i162.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %129, i16 32517) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %130 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %iobase, align 4
  %add.i9.i163.i = add i32 %131, 132
  %and.i10.i164.i = and i32 %add.i9.i163.i, 1048575
  %add1.i11.i165.i = or i32 %and.i10.i164.i, -18874368
  %132 = inttoptr i32 %add1.i11.i165.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %132, i16 128) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %133 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %iobase, align 4
  %add.i.i167.i = add i32 %134, 130
  %and.i.i168.i = and i32 %add.i.i167.i, 1048575
  %add1.i.i169.i = or i32 %and.i.i168.i, -18874368
  %135 = inttoptr i32 %add1.i.i169.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %135, i16 768) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %136 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %iobase, align 4
  %add.i5.i170.i = add i32 %137, 128
  %and.i6.i171.i = and i32 %add.i5.i170.i, 1048575
  %add1.i7.i172.i = or i32 %and.i6.i171.i, -18874368
  %138 = inttoptr i32 %add1.i7.i172.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %138, i16 16) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %139 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %iobase, align 4
  %add.i9.i173.i = add i32 %140, 132
  %and.i10.i174.i = and i32 %add.i9.i173.i, 1048575
  %add1.i11.i175.i = or i32 %and.i10.i174.i, -18874368
  %141 = inttoptr i32 %add1.i11.i175.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %141, i16 4) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %142 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %iobase, align 4
  %add.i.i177.i = add i32 %143, 130
  %and.i.i178.i = and i32 %add.i.i177.i, 1048575
  %add1.i.i179.i = or i32 %and.i.i178.i, -18874368
  %144 = inttoptr i32 %add1.i.i179.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %144, i16 768) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %145 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %iobase, align 4
  %add.i5.i180.i = add i32 %146, 128
  %and.i6.i181.i = and i32 %add.i5.i180.i, 1048575
  %add1.i7.i182.i = or i32 %and.i6.i181.i, -18874368
  %147 = inttoptr i32 %add1.i7.i182.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %147, i16 -25840) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %148 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %iobase, align 4
  %add.i9.i183.i = add i32 %149, 132
  %and.i10.i184.i = and i32 %add.i9.i183.i, 1048575
  %add1.i11.i185.i = or i32 %and.i10.i184.i, -18874368
  %150 = inttoptr i32 %add1.i11.i185.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %150, i16 0) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %151 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %iobase, align 4
  %add.i.i187.i = add i32 %152, 130
  %and.i.i188.i = and i32 %add.i.i187.i, 1048575
  %add1.i.i189.i = or i32 %and.i.i188.i, -18874368
  %153 = inttoptr i32 %add1.i.i189.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %153, i16 768) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %154 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %iobase, align 4
  %add.i5.i190.i = add i32 %155, 128
  %and.i6.i191.i = and i32 %add.i5.i190.i, 1048575
  %add1.i7.i192.i = or i32 %and.i6.i191.i, -18874368
  %156 = inttoptr i32 %add1.i7.i192.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %156, i16 -24816) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %157 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %iobase, align 4
  %add.i9.i193.i = add i32 %158, 132
  %and.i10.i194.i = and i32 %add.i9.i193.i, 1048575
  %add1.i11.i195.i = or i32 %and.i10.i194.i, -18874368
  %159 = inttoptr i32 %add1.i11.i195.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %159, i16 104) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %160 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %iobase, align 4
  %add.i.i197.i = add i32 %161, 130
  %and.i.i198.i = and i32 %add.i.i197.i, 1048575
  %add1.i.i199.i = or i32 %and.i.i198.i, -18874368
  %162 = inttoptr i32 %add1.i.i199.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %162, i16 768) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %163 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %iobase, align 4
  %add.i5.i200.i = add i32 %164, 128
  %and.i6.i201.i = and i32 %add.i5.i200.i, 1048575
  %add1.i7.i202.i = or i32 %and.i6.i201.i, -18874368
  %165 = inttoptr i32 %add1.i7.i202.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %165, i16 -24560) #10, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  call void @arm_heavy_mb() #10
  %166 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %iobase, align 4
  %add.i9.i203.i = add i32 %167, 132
  %and.i10.i204.i = and i32 %add.i9.i203.i, 1048575
  %add1.i11.i205.i = or i32 %and.i10.i204.i, -18874368
  %168 = inttoptr i32 %add1.i11.i205.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %168, i16 104) #10, !srcloc !195
  %mixer_list.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 10
  %169 = ptrtoint ptr %mixer_list.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %mixer_list.i, align 4
  %mem_addr.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 10, i32 1
  %170 = ptrtoint ptr %mem_addr.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 4240, ptr %mem_addr.i, align 4
  %max.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 10, i32 2
  %171 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 10, ptr %max.i, align 4
  %adc1_list.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 11
  %172 = ptrtoint ptr %adc1_list.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %adc1_list.i, align 4
  %mem_addr49.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 11, i32 1
  %173 = ptrtoint ptr %mem_addr49.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 4155, ptr %mem_addr49.i, align 4
  %max51.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 11, i32 2
  %174 = ptrtoint ptr %max51.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %max51.i, align 4
  %dma_list.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 12
  %175 = ptrtoint ptr %dma_list.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %dma_list.i, align 4
  %mem_addr54.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 12, i32 1
  %176 = ptrtoint ptr %mem_addr54.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 4137, ptr %mem_addr54.i, align 4
  %max56.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 12, i32 2
  %177 = ptrtoint ptr %max56.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 9, ptr %max56.i, align 4
  %msrc_list.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 9
  %178 = ptrtoint ptr %msrc_list.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %msrc_list.i, align 4
  %mem_addr59.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 9, i32 1
  %179 = ptrtoint ptr %mem_addr59.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 4126, ptr %mem_addr59.i, align 4
  %max61.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 9, i32 2
  %180 = ptrtoint ptr %max61.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 4, ptr %max61.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  call void @arm_heavy_mb() #10
  %181 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %iobase, align 4
  %add55 = add i32 %182, 164
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %183 = inttoptr i32 %add57 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 1) #10, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  call void @arm_heavy_mb() #10
  %add62 = add i32 %3, 27
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %184 = inttoptr i32 %add64 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %184, i8 0) #10, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  call void @arm_heavy_mb() #10
  %add69 = add i32 %3, 28
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %185 = inttoptr i32 %add71 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %185, i8 -120) #10, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  call void @arm_heavy_mb() #10
  %add76 = add i32 %3, 29
  %and77 = and i32 %add76, 1048575
  %add78 = or i32 %and77, -18874368
  %186 = inttoptr i32 %add78 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %186, i8 -120) #10, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  call void @arm_heavy_mb() #10
  %add83 = add i32 %3, 30
  %and84 = and i32 %add83, 1048575
  %add85 = or i32 %and84, -18874368
  %187 = inttoptr i32 %add85 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %187, i8 -120) #10, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  call void @arm_heavy_mb() #10
  %add90 = add i32 %3, 31
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %188 = inttoptr i32 %add92 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 -120) #10, !srcloc !193
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_m3_ac97_reset(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %allegro_flag = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %allegro_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %allegro_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %. = select i1 %tobool.not, i32 500, i32 800
  %.109 = select i1 %tobool.not, i32 20, i32 50
  %add = add i32 %1, 104
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %irda_workaround = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 17
  %pci.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 6
  %add10 = add i32 %1, 54
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %4 = inttoptr i32 %add12 to ptr
  %add27 = add i32 %1, 100
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %5 = inttoptr i32 %add29 to ptr
  %add34 = add i32 %1, 96
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %6 = inttoptr i32 %add36 to ptr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %delay1.1130 = phi i32 [ %.109, %entry ], [ %add77, %for.inc.for.body_crit_edge ]
  %delay2.1128 = phi i32 [ %., %entry ], [ %add78, %for.inc.for.body_crit_edge ]
  %i.0127 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %3) #10, !srcloc !211
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %9 = ptrtoint ptr %irda_workaround to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load3 = load i8, ptr %irda_workaround, align 4
  %10 = or i16 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load3)
  %tobool6.not126 = icmp slt i8 %bf.load3, 0
  %spec.select = select i1 %tobool6.not126, i16 %8, i16 %10
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add.i = add i32 %12, 56
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add1.i to ptr
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %15 = and i16 %14, -769
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  %17 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci.i, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4136, i16 %20)
  %cmp.i120 = icmp eq i16 %20, 4136
  br i1 %cmp.i120, label %land.lhs.true.i, label %for.body.snd_m3_remote_codec_config.exit_crit_edge

for.body.snd_m3_remote_codec_config.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_remote_codec_config.exit

land.lhs.true.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 10
  %21 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 229, i16 %22)
  %cmp10.i = icmp eq i16 %22, 229
  %23 = or i16 %16, 128
  %spec.select.i = select i1 %cmp10.i, i16 %23, i16 %16
  br label %snd_m3_remote_codec_config.exit

snd_m3_remote_codec_config.exit:                  ; preds = %land.lhs.true.i, %for.body.snd_m3_remote_codec_config.exit_crit_edge
  %tmp.0.i = phi i16 [ %16, %for.body.snd_m3_remote_codec_config.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %24 = tail call i16 @llvm.bswap.i16(i16 %tmp.0.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %24) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %add25.i = add i32 %12, 58
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %25 = inttoptr i32 %add27.i to ptr
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %25) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %27 = and i16 %26, -769
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 %27) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %add43.i = add i32 %12, 60
  %and44.i = and i32 %add43.i, 1048575
  %add45.i = or i32 %and44.i, -18874368
  %28 = inttoptr i32 %add45.i to ptr
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %30 = and i16 %29, -769
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %30) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 32) #10, !srcloc !195
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 4294960) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  tail call void @arm_heavy_mb() #10
  %and18 = and i16 %spec.select, -2
  %32 = tail call i16 @llvm.bswap.i16(i16 %and18)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 %32) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 -257) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 0) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void @arm_heavy_mb() #10
  %33 = or i16 %spec.select, 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 %34) #10, !srcloc !195
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %delay1.1130) #10
  %call49 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %call2.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 256) #10, !srcloc !195
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 48) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 -1) #10, !srcloc !195
  %call2.i115 = tail call i32 @__msecs_to_jiffies(i32 noundef %delay2.1128) #10
  %call72 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %call2.i115) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %snd_m3_remote_codec_config.exit
  %i.0.i.i = phi i32 [ 10000, %snd_m3_remote_codec_config.exit ], [ %dec.i.i, %do.end.i.i.do.body.i.i_crit_edge ]
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %add.i.i.i = add i32 %37, 48
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %38 = inttoptr i32 %add1.i.i.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i, label %if.end.i121, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !228
  %dec.i.i = add nsw i32 %i.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %i.0.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i.if.end76.sink.split_crit_edge, label %do.end.i.i.do.body.i.i_crit_edge

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end.i.i.if.end76.sink.split_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.sink.split

if.end.i121:                                      ; preds = %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase, align 4
  %add.i.i = add i32 %42, 48
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %43 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 -4) #10, !srcloc !193
  br label %do.body.i20.i

do.body.i20.i:                                    ; preds = %do.end.i23.i.do.body.i20.i_crit_edge, %if.end.i121
  %i.0.i15.i = phi i32 [ 10000, %if.end.i121 ], [ %dec.i21.i, %do.end.i23.i.do.body.i20.i_crit_edge ]
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase, align 4
  %add.i.i16.i = add i32 %45, 48
  %and.i.i17.i = and i32 %add.i.i16.i, 1048575
  %add1.i.i18.i = or i32 %and.i.i17.i, -18874368
  %46 = inttoptr i32 %add1.i.i18.i to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i19.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i19.i, label %snd_m3_try_read_vendor.exit, label %do.end.i23.i

do.end.i23.i:                                     ; preds = %do.body.i20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !228
  %dec.i21.i = add nsw i32 %i.0.i15.i, -1
  %cmp.not.i22.i = icmp eq i32 %i.0.i15.i, 0
  br i1 %cmp.not.i22.i, label %do.end.i23.i.if.end76.sink.split_crit_edge, label %do.end.i23.i.do.body.i20.i_crit_edge

do.end.i23.i.do.body.i20.i_crit_edge:             ; preds = %do.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i20.i

do.end.i23.i.if.end76.sink.split_crit_edge:       ; preds = %do.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.sink.split

snd_m3_try_read_vendor.exit:                      ; preds = %do.body.i20.i
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase, align 4
  %add.i29.i = add i32 %50, 50
  %and.i30.i = and i32 %add.i29.i, 1048575
  %add1.i31.i = or i32 %and.i30.i, -18874368
  %51 = inttoptr i32 %add1.i31.i to ptr
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %51) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %53 = add i16 %52, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %53)
  %54 = icmp ult i16 %53, -2
  br i1 %54, label %snd_m3_try_read_vendor.exit.for.end_crit_edge, label %snd_m3_try_read_vendor.exit.if.end76_crit_edge

snd_m3_try_read_vendor.exit.if.end76_crit_edge:   ; preds = %snd_m3_try_read_vendor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

snd_m3_try_read_vendor.exit.for.end_crit_edge:    ; preds = %snd_m3_try_read_vendor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end76.sink.split:                              ; preds = %do.end.i23.i.if.end76.sink.split_crit_edge, %do.end.i.i.if.end76.sink.split_crit_edge
  %55 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chip, align 4
  %dev.i24.i = getelementptr inbounds %struct.snd_card, ptr %56, i32 0, i32 27
  %57 = ptrtoint ptr %dev.i24.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i24.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.43) #13
  br label %if.end76

if.end76:                                         ; preds = %if.end76.sink.split, %snd_m3_try_read_vendor.exit.if.end76_crit_edge
  %add77 = add nuw nsw i32 %delay1.1130, 10
  %add78 = add nuw nsw i32 %delay2.1128, 100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_m3_ac97_reset.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_m3_ac97_reset, %if.then85)) #10
          to label %for.inc [label %if.then85], !srcloc !230

if.then85:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %60, i32 0, i32 27
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_m3_ac97_reset.__UNIQUE_ID_ddebug258, ptr noundef %62, ptr noundef nonnull @.str.42, i32 noundef %add77, i32 noundef %add78) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then85, %if.end76
  %inc = add nuw nsw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %snd_m3_try_read_vendor.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_m3_amp_enable(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %external_amp = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 14
  %0 = ptrtoint ptr %external_amp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %external_amp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iobase = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %amp_gpio = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 15
  %4 = ptrtoint ptr %amp_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %amp_gpio, align 4
  %shl5 = shl nuw i32 1, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %6 = trunc i32 %shl5 to i16
  %conv8 = xor i16 %6, -1
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %add = add i32 %3, 100
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %8 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %7) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  tail call void @arm_heavy_mb() #10
  %add13 = add i32 %3, 104
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %9 = inttoptr i32 %add15 to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #10, !srcloc !211
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %conv20 = or i16 %11, %6
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %12) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  tail call void @arm_heavy_mb() #10
  %add31 = add i32 %3, 96
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %13 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 2304) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 -1) #10, !srcloc !195
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_m3_hv_init(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_omnibook = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 17
  %0 = ptrtoint ptr %is_omnibook to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_omnibook, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iobase = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %add = add i32 %3, 100
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 -1) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  %add5 = add i32 %3, 96
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 0) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 -12289) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %add20 = add i32 %3, 104
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %6 = inttoptr i32 %add22 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  %8 = and i16 %7, -12289
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 %8) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 12288) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 -1) #10, !srcloc !195
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_m3_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.snd_m3, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 26
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and5 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hwvol_work = getelementptr inbounds %struct.snd_m3, ptr %dev_id, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %hwvol_work) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %and10 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.do.body51_crit_edge, label %if.then12

if.end8.do.body51_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

if.then12:                                        ; preds = %if.end8
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add15 = add i32 %6, 164
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %7 = inttoptr i32 %add17 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  %9 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool23.not = icmp eq i8 %9, 0
  br i1 %tobool23.not, label %if.then24, label %if.then12.do.body51_crit_edge

if.then12.do.body51_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

if.then24:                                        ; preds = %if.then12
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add27 = add i32 %11, 172
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %12 = inttoptr i32 %add29 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool35.not = icmp eq i8 %14, 0
  br i1 %tobool35.not, label %if.then24.do.body51_crit_edge, label %do.body

if.then24.do.body51_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body51

do.body:                                          ; preds = %if.then24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add38 = add i32 %16, 172
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %17 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 4) #10, !srcloc !193
  %reg_lock = getelementptr inbounds %struct.snd_m3, ptr %dev_id, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %num_substreams = getelementptr inbounds %struct.snd_m3, ptr %dev_id, i32 0, i32 19
  %18 = ptrtoint ptr %num_substreams to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_substreams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4278 = icmp sgt i32 %19, 0
  br i1 %cmp4278, label %for.body.lr.ph, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body
  %substreams = getelementptr inbounds %struct.snd_m3, ptr %dev_id, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end46.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end46.for.body_crit_edge ]
  %20 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %substreams, align 4
  %running = getelementptr %struct.m3_dma, ptr %21, i32 %i.079, i32 3
  %22 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool44.not = icmp eq i32 %23, 0
  br i1 %tobool44.not, label %for.body.if.end46_crit_edge, label %if.then45

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then45:                                        ; preds = %for.body
  %substream.i = getelementptr %struct.m3_dma, ptr %21, i32 %i.079, i32 1
  %24 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %substream.i, align 4
  %26 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.then45.if.end46_crit_edge, label %if.end.i

if.then45.if.end46_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end.i:                                         ; preds = %if.then45
  %arrayidx = getelementptr %struct.m3_dma, ptr %21, i32 %i.079
  %call.i = tail call fastcc i32 @snd_m3_get_pointer(ptr noundef %dev_id, ptr noundef %arrayidx) #10
  %dma_size.i = getelementptr %struct.m3_dma, ptr %21, i32 %i.079, i32 6
  %28 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %29)
  %cmp.not.i = icmp ult i32 %call.i, %29
  br i1 %cmp.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %rem.i = urem i32 %call.i, %29
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %hwptr.0.i = phi i32 [ %rem.i, %if.then1.i ], [ %call.i, %if.end.i.if.end3.i_crit_edge ]
  %add.i = add i32 %hwptr.0.i, %29
  %hwptr5.i = getelementptr %struct.m3_dma, ptr %21, i32 %i.079, i32 8
  %30 = ptrtoint ptr %hwptr5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwptr5.i, align 4
  %sub.i = sub i32 %add.i, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %29)
  %cmp7.not.i = icmp slt i32 %sub.i, %29
  br i1 %cmp7.not.i, label %if.end3.i.if.end11.i_crit_edge, label %if.then8.i

if.end3.i.if.end11.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %rem10.i = srem i32 %sub.i, %29
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end3.i.if.end11.i_crit_edge
  %diff.0.i = phi i32 [ %rem10.i, %if.then8.i ], [ %sub.i, %if.end3.i.if.end11.i_crit_edge ]
  %32 = ptrtoint ptr %hwptr5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %hwptr.0.i, ptr %hwptr5.i, align 4
  %count.i = getelementptr %struct.m3_dma, ptr %21, i32 %i.079, i32 9
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i, align 4
  %add13.i = add i32 %34, %diff.0.i
  store i32 %add13.i, ptr %count.i, align 4
  %period_size.i = getelementptr %struct.m3_dma, ptr %21, i32 %i.079, i32 7
  %35 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %period_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %36)
  %cmp15.not.i = icmp slt i32 %add13.i, %36
  br i1 %cmp15.not.i, label %if.end11.i.if.end46_crit_edge, label %if.then16.i

if.end11.i.if.end46_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then16.i:                                      ; preds = %if.end11.i
  %mul.i = shl i32 %36, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %mul.i)
  %cmp19.i = icmp slt i32 %add13.i, %mul.i
  br i1 %cmp19.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub23.i = sub i32 %add13.i, %36
  br label %if.end27.i

if.else.i:                                        ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %rem26.i = srem i32 %add13.i, %36
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.then20.i
  %storemerge.i = phi i32 [ %rem26.i, %if.else.i ], [ %sub23.i, %if.then20.i ]
  %37 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge.i, ptr %count.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  tail call void @snd_pcm_period_elapsed(ptr noundef %25) #10
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  br label %if.end46

if.end46:                                         ; preds = %if.end27.i, %if.end11.i.if.end46_crit_edge, %if.then45.if.end46_crit_edge, %for.body.if.end46_crit_edge
  %inc = add nuw nsw i32 %i.079, 1
  %38 = ptrtoint ptr %num_substreams to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_substreams, align 4
  %cmp42 = icmp slt i32 %inc, %39
  br i1 %cmp42, label %if.end46.for.body_crit_edge, label %if.end46.for.end_crit_edge

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end46.for.end_crit_edge, %do.body.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  br label %do.body51

do.body51:                                        ; preds = %for.end, %if.then24.do.body51_crit_edge, %if.then12.do.body51_crit_edge, %if.end8.do.body51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase, align 4
  %add55 = add i32 %41, 26
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %42 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %3) #10, !srcloc !193
  br label %cleanup

cleanup:                                          ; preds = %do.body51, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body51 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_m3_pcm(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #10
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !188
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 2
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef %driver, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %pcm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_m3_playback_ops) #10
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @snd_m3_capture_ops) #10
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %chip, ptr %private_data, align 8
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 3
  %10 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %driver4 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 2
  %call6 = call ptr @strcpy(ptr noundef %name, ptr noundef %driver4) #15
  %pcm7 = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 5
  %13 = ptrtoint ptr %pcm7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %8, ptr %pcm7, align 4
  %pci = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 6
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call8 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %8, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 65536) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_m3_input_register(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %phys = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.end.pci_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.49, ptr noundef %retval.0.i.i)
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %driver, ptr %call, align 8
  %phys7 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %phys7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %phys, ptr %phys7, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %id, align 4
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vendor, align 8
  %vendor10 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %vendor10 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vendor10, align 2
  %18 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %product, align 4
  %22 = load ptr, ptr %pci, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %parent = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev14, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 5
  %24 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %evbit, align 4
  %or.i = or i32 %25, 2
  store i32 %or.i, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  %or.i53 = or i32 %27, 917504
  store i32 %or.i53, ptr %add.ptr.i, align 4
  %call22 = tail call i32 @input_register_device(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %input_dev26 = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 22
  %28 = ptrtoint ptr %input_dev26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call, ptr %input_dev26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %pci_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ], [ %call22, %pci_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_m3_enable_ints(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %hv_config = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 16
  %2 = ptrtoint ptr %hv_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hv_config, align 4
  %and = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i16 16, i16 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @arm_heavy_mb() #10
  %conv2 = trunc i16 %spec.select to i8
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 26
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %6 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv2) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  %7 = shl nuw nsw i16 %spec.select, 8
  %add9 = add i32 %1, 24
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %8 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %7) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %add16 = add i32 %1, 166
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %9 = inttoptr i32 %add18 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  %11 = or i8 %10, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %11) #10, !srcloc !193
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_m3_assp_continue(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_state = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 13
  %0 = ptrtoint ptr %reset_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reset_state, align 4
  %2 = or i8 %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %iobase.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %4, 164
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %2) #10, !srcloc !193
  ret void
}

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
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_m3_pcm_stop(ptr nocapture noundef %chip, ptr noundef readonly %s, ptr noundef readonly %subs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  %tobool1.not = icmp eq ptr %subs, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.m3_dma, ptr %s, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %iobase.i.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %3, 130
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %5 = tail call i16 @llvm.bswap.i16(i16 %1) #10
  %6 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i = add i32 %7, 128
  %and.i6.i = and i32 %add.i5.i, 1048575
  %add1.i7.i = or i32 %and.i6.i, -18874368
  %8 = inttoptr i32 %add1.i7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i = add i32 %10, 132
  %and.i10.i = and i32 %add.i9.i, 1048575
  %add1.i11.i = or i32 %and.i10.i, -18874368
  %11 = inttoptr i32 %add1.i11.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 0) #10, !srcloc !195
  %timer_users.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 8
  %12 = ptrtoint ptr %timer_users.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timer_users.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %timer_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %if.end.snd_m3_dec_timer_users.exit_crit_edge, label %if.end.i

if.end.snd_m3_dec_timer_users.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_dec_timer_users.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i.i, align 4
  %add.i.i.i = add i32 %15, 130
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %16 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i.i = add i32 %18, 128
  %and.i6.i.i = and i32 %add.i5.i.i, 1048575
  %add1.i7.i.i = or i32 %and.i6.i.i, -18874368
  %19 = inttoptr i32 %add1.i7.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 13840) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i.i = add i32 %21, 132
  %and.i10.i.i = and i32 %add.i9.i.i, 1048575
  %add1.i11.i.i = or i32 %and.i10.i.i, -18874368
  %22 = inttoptr i32 %add1.i11.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 0) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase.i.i, align 4
  %add.i.i9.i = add i32 %24, 130
  %and.i.i10.i = and i32 %add.i.i9.i, 1048575
  %add1.i.i11.i = or i32 %and.i.i10.i, -18874368
  %25 = inttoptr i32 %add1.i.i11.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i12.i = add i32 %27, 128
  %and.i6.i13.i = and i32 %add.i5.i12.i, 1048575
  %add1.i7.i14.i = or i32 %and.i6.i13.i, -18874368
  %28 = inttoptr i32 %add1.i7.i14.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 14096) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i15.i = add i32 %30, 132
  %and.i10.i16.i = and i32 %add.i9.i15.i, 1048575
  %add1.i11.i17.i = or i32 %and.i10.i16.i, -18874368
  %31 = inttoptr i32 %add1.i11.i17.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %31, i16 0) #10, !srcloc !195
  %32 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i.i, align 4
  %add.i.i13 = add i32 %33, 24
  %and.i.i14 = and i32 %add.i.i13, 1048575
  %add1.i.i15 = or i32 %and.i.i14, -18874368
  %34 = inttoptr i32 %add1.i.i15 to ptr
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %34) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %36 = and i16 %35, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i.i, align 4
  %add.i19.i = add i32 %38, 24
  %and.i20.i = and i32 %add.i19.i, 1048575
  %add1.i21.i = or i32 %and.i20.i, -18874368
  %39 = inttoptr i32 %add1.i21.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #10, !srcloc !195
  br label %snd_m3_dec_timer_users.exit

snd_m3_dec_timer_users.exit:                      ; preds = %if.end.i, %if.end.snd_m3_dec_timer_users.exit_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 5
  %40 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stream, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %41, label %snd_m3_dec_timer_users.exit.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

snd_m3_dec_timer_users.exit.return_crit_edge:     ; preds = %snd_m3_dec_timer_users.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %snd_m3_dec_timer_users.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dacs_active = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 7
  %43 = ptrtoint ptr %dacs_active to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dacs_active, align 4
  %dec = add i32 %44, -1
  store i32 %dec, ptr %dacs_active, align 4
  %conv4 = trunc i32 %dec to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase.i.i, align 4
  %add.i.i17 = add i32 %46, 130
  %and.i.i18 = and i32 %add.i.i17, 1048575
  %add1.i.i19 = or i32 %and.i.i18, -18874368
  %47 = inttoptr i32 %add1.i.i19 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %47, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i20 = add i32 %49, 128
  %and.i6.i21 = and i32 %add.i5.i20, 1048575
  %add1.i7.i22 = or i32 %and.i6.i21, -18874368
  %50 = inttoptr i32 %add1.i7.i22 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %50, i16 -25840) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv4) #10
  %52 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i23 = add i32 %53, 132
  %and.i10.i24 = and i32 %add.i9.i23, 1048575
  %add1.i11.i25 = or i32 %and.i10.i24, -18874368
  %54 = inttoptr i32 %add1.i11.i25 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 %51) #10, !srcloc !195
  br label %return

sw.bb5:                                           ; preds = %snd_m3_dec_timer_users.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase.i.i, align 4
  %add.i.i27 = add i32 %56, 130
  %and.i.i28 = and i32 %add.i.i27, 1048575
  %add1.i.i29 = or i32 %and.i.i28, -18874368
  %57 = inttoptr i32 %add1.i.i29 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %57, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %58 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i30 = add i32 %59, 128
  %and.i6.i31 = and i32 %add.i5.i30, 1048575
  %add1.i7.i32 = or i32 %and.i6.i31, -18874368
  %60 = inttoptr i32 %add1.i7.i32 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %60, i16 29712) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i33 = add i32 %62, 132
  %and.i10.i34 = and i32 %add.i9.i33, 1048575
  %add1.i11.i35 = or i32 %and.i10.i34, -18874368
  %63 = inttoptr i32 %add1.i11.i35 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 0) #10, !srcloc !195
  br label %return

return:                                           ; preds = %sw.bb5, %sw.bb, %snd_m3_dec_timer_users.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %snd_m3_dec_timer_users.exit.return_crit_edge ], [ 0, %sw.bb5 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_m3_get_pointer(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.m3_dma, ptr %s, i32 0, i32 2, i32 1
  %iobase.i.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %retry.021 = phi i32 [ 10, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  %add = add i16 %1, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %3, 130
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %5 = tail call i16 @llvm.bswap.i16(i16 %add) #10
  %6 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i = add i32 %7, 128
  %and.i6.i = and i32 %add.i5.i, 1048575
  %add1.i7.i = or i32 %and.i6.i, -18874368
  %8 = inttoptr i32 %add1.i7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #10, !srcloc !195
  %9 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i = add i32 %10, 132
  %and.i10.i = and i32 %add.i9.i, 1048575
  %add1.i11.i = or i32 %and.i10.i, -18874368
  %11 = inttoptr i32 %add1.i11.i to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data, align 2
  %add5 = add i16 %14, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i.i, align 4
  %add.i.i2 = add i32 %16, 130
  %and.i.i3 = and i32 %add.i.i2, 1048575
  %add1.i.i4 = or i32 %and.i.i3, -18874368
  %17 = inttoptr i32 %add1.i.i4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %18 = tail call i16 @llvm.bswap.i16(i16 %add5) #10
  %19 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i5 = add i32 %20, 128
  %and.i6.i6 = and i32 %add.i5.i5, 1048575
  %add1.i7.i7 = or i32 %and.i6.i6, -18874368
  %21 = inttoptr i32 %add1.i7.i7 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 %18) #10, !srcloc !195
  %22 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i8 = add i32 %23, 132
  %and.i10.i9 = and i32 %add.i9.i8, 1048575
  %add1.i11.i10 = or i32 %and.i10.i9, -18874368
  %24 = inttoptr i32 %add1.i11.i10 to ptr
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %24) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data, align 2
  %add12 = add i16 %27, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i.i, align 4
  %add.i.i12 = add i32 %29, 130
  %and.i.i13 = and i32 %add.i.i12, 1048575
  %add1.i.i14 = or i32 %and.i.i13, -18874368
  %30 = inttoptr i32 %add1.i.i14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %31 = tail call i16 @llvm.bswap.i16(i16 %add12) #10
  %32 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i15 = add i32 %33, 128
  %and.i6.i16 = and i32 %add.i5.i15, 1048575
  %add1.i7.i17 = or i32 %and.i6.i16, -18874368
  %34 = inttoptr i32 %add1.i7.i17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #10, !srcloc !195
  %35 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i18 = add i32 %36, 132
  %and.i10.i19 = and i32 %add.i9.i18, 1048575
  %add1.i11.i20 = or i32 %and.i10.i19, -18874368
  %37 = inttoptr i32 %add1.i11.i20 to ptr
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %37) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %38)
  %cmp = icmp eq i16 %12, %38
  %dec = add nsw i32 %retry.021, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %39 = zext i16 %12 to i32
  %40 = zext i16 %25 to i32
  %41 = shl nuw i32 %40, 16
  %42 = or i32 %41, %39
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %buffer_addr = getelementptr inbounds %struct.m3_dma, ptr %s, i32 0, i32 5
  %44 = ptrtoint ptr %buffer_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buffer_addr, align 4
  %sub = sub i32 %43, %45
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_m3_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %entry
  %i.0.i = phi i32 [ 10000, %entry ], [ %dec.i, %do.end.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %3, 48
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add1.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !228
  %dec.i = add nsw i32 %i.0.i, -1
  %cmp.not.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp.not.i, label %snd_m3_ac97_wait.exit, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

snd_m3_ac97_wait.exit:                            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.43) #13
  br label %cleanup

if.end:                                           ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %11 = tail call i16 @llvm.bswap.i16(i16 %val) #10
  %12 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i.i, align 4
  %add.i = add i32 %13, 50
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %11) #10, !srcloc !195
  %15 = trunc i16 %reg to i8
  %conv1 = and i8 %15, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i.i, align 4
  %add.i22 = add i32 %17, 48
  %and.i23 = and i32 %add.i22, 1048575
  %add1.i24 = or i32 %and.i23, -18874368
  %18 = inttoptr i32 %add1.i24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv1) #10, !srcloc !193
  %id = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 13
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1166246664, i32 %20)
  %cmp = icmp eq i32 %20, 1166246664
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %reg)
  %cmp4 = icmp eq i16 %reg, 2
  %or.cond = and i1 %cmp4, %cmp
  br i1 %or.cond, label %if.end.do.body.i31_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.do.body.i31_crit_edge:                     ; preds = %if.end
  br label %do.body.i31

do.body.i31:                                      ; preds = %do.end.i34.do.body.i31_crit_edge, %if.end.do.body.i31_crit_edge
  %i.0.i26 = phi i32 [ %dec.i32, %do.end.i34.do.body.i31_crit_edge ], [ 10000, %if.end.do.body.i31_crit_edge ]
  %21 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i.i, align 4
  %add.i.i27 = add i32 %22, 48
  %and.i.i28 = and i32 %add.i.i27, 1048575
  %add1.i.i29 = or i32 %and.i.i28, -18874368
  %23 = inttoptr i32 %add1.i.i29 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i30 = icmp eq i8 %25, 0
  br i1 %tobool.not.i30, label %do.body.i31.snd_m3_ac97_wait.exit38_crit_edge, label %do.end.i34

do.body.i31.snd_m3_ac97_wait.exit38_crit_edge:    ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_ac97_wait.exit38

do.end.i34:                                       ; preds = %do.body.i31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !228
  %dec.i32 = add nsw i32 %i.0.i26, -1
  %cmp.not.i33 = icmp eq i32 %i.0.i26, 0
  br i1 %cmp.not.i33, label %do.end13.i36, label %do.end.i34.do.body.i31_crit_edge

do.end.i34.do.body.i31_crit_edge:                 ; preds = %do.end.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i31

do.end13.i36:                                     ; preds = %do.end.i34
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev.i35 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev.i35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i35, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.43) #13
  br label %snd_m3_ac97_wait.exit38

snd_m3_ac97_wait.exit38:                          ; preds = %do.end13.i36, %do.body.i31.snd_m3_ac97_wait.exit38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase.i.i, align 4
  %add.i40 = add i32 %31, 50
  %and.i41 = and i32 %add.i40, 1048575
  %add1.i42 = or i32 %and.i41, -18874368
  %32 = inttoptr i32 %add1.i42 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 %11) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase.i.i, align 4
  %add.i44 = add i32 %34, 48
  %and.i45 = and i32 %add.i44, 1048575
  %add1.i46 = or i32 %and.i45, -18874368
  %35 = inttoptr i32 %add1.i46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv1) #10, !srcloc !193
  br label %cleanup

cleanup:                                          ; preds = %snd_m3_ac97_wait.exit38, %if.end.cleanup_crit_edge, %snd_m3_ac97_wait.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_m3_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %entry
  %i.0.i = phi i32 [ 10000, %entry ], [ %dec.i, %do.end.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %3, 48
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add1.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !228
  %dec.i = add nsw i32 %i.0.i, -1
  %cmp.not.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp.not.i, label %snd_m3_ac97_wait.exit, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

snd_m3_ac97_wait.exit:                            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.43) #13
  br label %fail

if.end:                                           ; preds = %do.body.i
  %11 = trunc i16 %reg to i8
  %conv1 = or i8 %11, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i.i, align 4
  %add.i = add i32 %13, 48
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv1) #10, !srcloc !193
  br label %do.body.i16

do.body.i16:                                      ; preds = %do.end.i19.do.body.i16_crit_edge, %if.end
  %i.0.i11 = phi i32 [ 10000, %if.end ], [ %dec.i17, %do.end.i19.do.body.i16_crit_edge ]
  %15 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i.i, align 4
  %add.i.i12 = add i32 %16, 48
  %and.i.i13 = and i32 %add.i.i12, 1048575
  %add1.i.i14 = or i32 %and.i.i13, -18874368
  %17 = inttoptr i32 %add1.i.i14 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i15 = icmp eq i8 %19, 0
  br i1 %tobool.not.i15, label %if.end5, label %do.end.i19

do.end.i19:                                       ; preds = %do.body.i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !228
  %dec.i17 = add nsw i32 %i.0.i11, -1
  %cmp.not.i18 = icmp eq i32 %i.0.i11, 0
  br i1 %cmp.not.i18, label %snd_m3_ac97_wait.exit23, label %do.end.i19.do.body.i16_crit_edge

do.end.i19.do.body.i16_crit_edge:                 ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i16

snd_m3_ac97_wait.exit23:                          ; preds = %do.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev.i20 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.43) #13
  br label %fail

if.end5:                                          ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i.i, align 4
  %add.i25 = add i32 %25, 50
  %and.i26 = and i32 %add.i25, 1048575
  %add1.i27 = or i32 %and.i26, -18874368
  %26 = inttoptr i32 %add1.i27 to ptr
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %26) #10, !srcloc !211
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  br label %fail

fail:                                             ; preds = %if.end5, %snd_m3_ac97_wait.exit23, %snd_m3_ac97_wait.exit
  %data.0 = phi i16 [ -1, %snd_m3_ac97_wait.exit ], [ -1, %snd_m3_ac97_wait.exit23 ], [ %28, %if.end5 ]
  ret i16 %data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_m3_playback_open(ptr noundef %subs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #10
  %num_substreams.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %num_substreams.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_substreams.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp37.i = icmp sgt i32 %5, 0
  br i1 %cmp37.i, label %for.body.lr.ph.i, label %entry.snd_m3_substream_open.exit.thread_crit_edge

entry.snd_m3_substream_open.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_substream_open.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %substreams.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %substreams.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substreams.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %opened.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 4
  %8 = ptrtoint ptr %opened.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.snd_m3_substream_open.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.snd_m3_substream_open.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_substream_open.exit.thread

snd_m3_substream_open.exit.thread:                ; preds = %for.inc.i.snd_m3_substream_open.exit.thread_crit_edge, %entry.snd_m3_substream_open.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #10
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i
  %10 = ptrtoint ptr %opened.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %opened.i, align 4
  %running.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 3
  %11 = ptrtoint ptr %running.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %running.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #10
  %12 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime1, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %private_data.i, align 8
  %substream.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 1
  %15 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %subs, ptr %substream.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 5
  %16 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.i = icmp eq i32 %17, 0
  %mixer_list.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 10
  %adc1_list.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 11
  %adc1_list.sink.i = select i1 %cmp4.i, ptr %mixer_list.i, ptr %adc1_list.i
  %18 = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 11
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %adc1_list.sink.i, ptr %18, align 4
  %msrc_list.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 9
  %arrayidx11.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 11, i32 1
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msrc_list.i, ptr %arrayidx11.i, align 4
  %dma_list.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 12
  %arrayidx13.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 11, i32 2
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dma_list.i, ptr %arrayidx13.i, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %22 = call ptr @memcpy(ptr %hw, ptr @snd_m3_playback, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_m3_substream_open.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %snd_m3_substream_open.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_m3_playback_close(ptr nocapture noundef readonly %subs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @snd_m3_substream_close(ptr noundef %1, ptr noundef %subs)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_m3_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr, align 8
  %buffer_addr = getelementptr inbounds %struct.m3_dma, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %buffer_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %buffer_addr, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %substream, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.47) #13
  %13 = ptrtoint ptr %buffer_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_addr, align 4
  %and4 = and i32 %14, -4
  store i32 %and4, ptr %buffer_addr, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_m3_pcm_hw_free(ptr nocapture noundef readonly %substream) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_addr = getelementptr inbounds %struct.m3_dma, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %buffer_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buffer_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_m3_pcm_prepare(ptr nocapture noundef readonly %subs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !252

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1407, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end25:                                         ; preds = %entry
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  %.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %10 = add i32 %9, -48001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -40001, i32 %10)
  %11 = icmp ult i32 %10, -40001
  br i1 %11, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %reg_lock = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %12 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime1, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 5
  %14 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  %..i = select i1 %cmp.i, i32 48, i32 64
  %.161.i = select i1 %cmp.i, i32 128, i32 144
  %data.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data.i, align 2
  %conv.i = zext i16 %17 to i32
  %add.i = add nuw nsw i32 %conv.i, 76
  %add2.i = add nuw nsw i32 %add.i, %..i
  %add3.i = add nuw nsw i32 %add2.i, 1
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 18
  %18 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 21
  %20 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %21, %19
  %div1.i.i = lshr i32 %mul.i.i, 3
  %dma_size.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div1.i.i, ptr %dma_size.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 16
  %23 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %period_size.i, align 4
  %25 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i163.i = mul i32 %25, %24
  %div1.i164.i = lshr i32 %mul.i163.i, 3
  %period_size5.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %period_size5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div1.i164.i, ptr %period_size5.i, align 4
  %hwptr.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 8
  %27 = ptrtoint ptr %hwptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %hwptr.i, align 4
  %count.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 9
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %count.i, align 4
  %add9.i = add i16 %17, 1
  %buffer_addr.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 5
  %29 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer_addr.i, align 4
  %conv11.i = trunc i32 %30 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %iobase.i.i.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i.i = add i32 %32, 130
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %33 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %34 = tail call i16 @llvm.bswap.i16(i16 %add9.i) #10
  %35 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i.i = add i32 %36, 128
  %and.i6.i.i = and i32 %add.i5.i.i, 1048575
  %add1.i7.i.i = or i32 %and.i6.i.i, -18874368
  %37 = inttoptr i32 %add1.i7.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 %34) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv11.i) #10
  %39 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i.i = add i32 %40, 132
  %and.i10.i.i = and i32 %add.i9.i.i, 1048575
  %add1.i11.i.i = or i32 %and.i10.i.i, -18874368
  %41 = inttoptr i32 %add1.i11.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 %38) #10, !srcloc !195
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %data.i, align 2
  %add15.i = add i16 %43, 2
  %44 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buffer_addr.i, align 4
  %shr.i = lshr i32 %45, 16
  %conv19.i = trunc i32 %shr.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i166.i = add i32 %47, 130
  %and.i.i167.i = and i32 %add.i.i166.i, 1048575
  %add1.i.i168.i = or i32 %and.i.i167.i, -18874368
  %48 = inttoptr i32 %add1.i.i168.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %48, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %49 = tail call i16 @llvm.bswap.i16(i16 %add15.i) #10
  %50 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i169.i = add i32 %51, 128
  %and.i6.i170.i = and i32 %add.i5.i169.i, 1048575
  %add1.i7.i171.i = or i32 %and.i6.i170.i, -18874368
  %52 = inttoptr i32 %add1.i7.i171.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %52, i16 %49) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv19.i) #10
  %54 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i172.i = add i32 %55, 132
  %and.i10.i173.i = and i32 %add.i9.i172.i, 1048575
  %add1.i11.i174.i = or i32 %and.i10.i173.i, -18874368
  %56 = inttoptr i32 %add1.i11.i174.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %56, i16 %53) #10, !srcloc !195
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %data.i, align 2
  %add23.i = add i16 %58, 3
  %59 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buffer_addr.i, align 4
  %61 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_size.i, align 4
  %add27.i = add i32 %62, %60
  %conv29.i = trunc i32 %add27.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i176.i = add i32 %64, 130
  %and.i.i177.i = and i32 %add.i.i176.i, 1048575
  %add1.i.i178.i = or i32 %and.i.i177.i, -18874368
  %65 = inttoptr i32 %add1.i.i178.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %65, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %66 = tail call i16 @llvm.bswap.i16(i16 %add23.i) #10
  %67 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i179.i = add i32 %68, 128
  %and.i6.i180.i = and i32 %add.i5.i179.i, 1048575
  %add1.i7.i181.i = or i32 %and.i6.i180.i, -18874368
  %69 = inttoptr i32 %add1.i7.i181.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %69, i16 %66) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %70 = tail call i16 @llvm.bswap.i16(i16 %conv29.i) #10
  %71 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i182.i = add i32 %72, 132
  %and.i10.i183.i = and i32 %add.i9.i182.i, 1048575
  %add1.i11.i184.i = or i32 %and.i10.i183.i, -18874368
  %73 = inttoptr i32 %add1.i11.i184.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %73, i16 %70) #10, !srcloc !195
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %data.i, align 2
  %add33.i = add i16 %75, 4
  %76 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %buffer_addr.i, align 4
  %78 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_size.i, align 4
  %add37.i = add i32 %79, %77
  %shr38.i = lshr i32 %add37.i, 16
  %conv40.i = trunc i32 %shr38.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %80 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i186.i = add i32 %81, 130
  %and.i.i187.i = and i32 %add.i.i186.i, 1048575
  %add1.i.i188.i = or i32 %and.i.i187.i, -18874368
  %82 = inttoptr i32 %add1.i.i188.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %82, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %83 = tail call i16 @llvm.bswap.i16(i16 %add33.i) #10
  %84 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i189.i = add i32 %85, 128
  %and.i6.i190.i = and i32 %add.i5.i189.i, 1048575
  %add1.i7.i191.i = or i32 %and.i6.i190.i, -18874368
  %86 = inttoptr i32 %add1.i7.i191.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %86, i16 %83) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %87 = tail call i16 @llvm.bswap.i16(i16 %conv40.i) #10
  %88 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i192.i = add i32 %89, 132
  %and.i10.i193.i = and i32 %add.i9.i192.i, 1048575
  %add1.i11.i194.i = or i32 %and.i10.i193.i, -18874368
  %90 = inttoptr i32 %add1.i11.i194.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %90, i16 %87) #10, !srcloc !195
  %91 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %data.i, align 2
  %add44.i = add i16 %92, 5
  %93 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %buffer_addr.i, align 4
  %conv48.i = trunc i32 %94 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %95 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i196.i = add i32 %96, 130
  %and.i.i197.i = and i32 %add.i.i196.i, 1048575
  %add1.i.i198.i = or i32 %and.i.i197.i, -18874368
  %97 = inttoptr i32 %add1.i.i198.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %97, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %98 = tail call i16 @llvm.bswap.i16(i16 %add44.i) #10
  %99 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i199.i = add i32 %100, 128
  %and.i6.i200.i = and i32 %add.i5.i199.i, 1048575
  %add1.i7.i201.i = or i32 %and.i6.i200.i, -18874368
  %101 = inttoptr i32 %add1.i7.i201.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %101, i16 %98) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %102 = tail call i16 @llvm.bswap.i16(i16 %conv48.i) #10
  %103 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i202.i = add i32 %104, 132
  %and.i10.i203.i = and i32 %add.i9.i202.i, 1048575
  %add1.i11.i204.i = or i32 %and.i10.i203.i, -18874368
  %105 = inttoptr i32 %add1.i11.i204.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %105, i16 %102) #10, !srcloc !195
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %data.i, align 2
  %add52.i = add i16 %107, 6
  %108 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %buffer_addr.i, align 4
  %shr55.i = lshr i32 %109, 16
  %conv57.i = trunc i32 %shr55.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %110 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i206.i = add i32 %111, 130
  %and.i.i207.i = and i32 %add.i.i206.i, 1048575
  %add1.i.i208.i = or i32 %and.i.i207.i, -18874368
  %112 = inttoptr i32 %add1.i.i208.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %112, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %113 = tail call i16 @llvm.bswap.i16(i16 %add52.i) #10
  %114 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i209.i = add i32 %115, 128
  %and.i6.i210.i = and i32 %add.i5.i209.i, 1048575
  %add1.i7.i211.i = or i32 %and.i6.i210.i, -18874368
  %116 = inttoptr i32 %add1.i7.i211.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %116, i16 %113) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %117 = tail call i16 @llvm.bswap.i16(i16 %conv57.i) #10
  %118 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i212.i = add i32 %119, 132
  %and.i10.i213.i = and i32 %add.i9.i212.i, 1048575
  %add1.i11.i214.i = or i32 %and.i10.i213.i, -18874368
  %120 = inttoptr i32 %add1.i11.i214.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %120, i16 %117) #10, !srcloc !195
  %121 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %data.i, align 2
  %add61.i = add i16 %122, 9
  %conv63.i = trunc i32 %add.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %123 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i216.i = add i32 %124, 130
  %and.i.i217.i = and i32 %add.i.i216.i, 1048575
  %add1.i.i218.i = or i32 %and.i.i217.i, -18874368
  %125 = inttoptr i32 %add1.i.i218.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %125, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %126 = tail call i16 @llvm.bswap.i16(i16 %add61.i) #10
  %127 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i219.i = add i32 %128, 128
  %and.i6.i220.i = and i32 %add.i5.i219.i, 1048575
  %add1.i7.i221.i = or i32 %and.i6.i220.i, -18874368
  %129 = inttoptr i32 %add1.i7.i221.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %129, i16 %126) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %130 = tail call i16 @llvm.bswap.i16(i16 %conv63.i) #10
  %131 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i222.i = add i32 %132, 132
  %and.i10.i223.i = and i32 %add.i9.i222.i, 1048575
  %add1.i11.i224.i = or i32 %and.i10.i223.i, -18874368
  %133 = inttoptr i32 %add1.i11.i224.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %133, i16 %130) #10, !srcloc !195
  %134 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %data.i, align 2
  %add67.i = add i16 %135, 10
  %conv71.i = trunc i32 %add2.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %136 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i226.i = add i32 %137, 130
  %and.i.i227.i = and i32 %add.i.i226.i, 1048575
  %add1.i.i228.i = or i32 %and.i.i227.i, -18874368
  %138 = inttoptr i32 %add1.i.i228.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %138, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %139 = tail call i16 @llvm.bswap.i16(i16 %add67.i) #10
  %140 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i229.i = add i32 %141, 128
  %and.i6.i230.i = and i32 %add.i5.i229.i, 1048575
  %add1.i7.i231.i = or i32 %and.i6.i230.i, -18874368
  %142 = inttoptr i32 %add1.i7.i231.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %142, i16 %139) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %143 = tail call i16 @llvm.bswap.i16(i16 %conv71.i) #10
  %144 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i232.i = add i32 %145, 132
  %and.i10.i233.i = and i32 %add.i9.i232.i, 1048575
  %add1.i11.i234.i = or i32 %and.i10.i233.i, -18874368
  %146 = inttoptr i32 %add1.i11.i234.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %146, i16 %143) #10, !srcloc !195
  %147 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %data.i, align 2
  %add75.i = add i16 %148, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %149 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i236.i = add i32 %150, 130
  %and.i.i237.i = and i32 %add.i.i236.i, 1048575
  %add1.i.i238.i = or i32 %and.i.i237.i, -18874368
  %151 = inttoptr i32 %add1.i.i238.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %151, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %152 = tail call i16 @llvm.bswap.i16(i16 %add75.i) #10
  %153 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i239.i = add i32 %154, 128
  %and.i6.i240.i = and i32 %add.i5.i239.i, 1048575
  %add1.i7.i241.i = or i32 %and.i6.i240.i, -18874368
  %155 = inttoptr i32 %add1.i7.i241.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %155, i16 %152) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %156 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i242.i = add i32 %157, 132
  %and.i10.i243.i = and i32 %add.i9.i242.i, 1048575
  %add1.i11.i244.i = or i32 %and.i10.i243.i, -18874368
  %158 = inttoptr i32 %add1.i11.i244.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %158, i16 %130) #10, !srcloc !195
  %159 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %data.i, align 2
  %add81.i = add i16 %160, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %161 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i246.i = add i32 %162, 130
  %and.i.i247.i = and i32 %add.i.i246.i, 1048575
  %add1.i.i248.i = or i32 %and.i.i247.i, -18874368
  %163 = inttoptr i32 %add1.i.i248.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %163, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %164 = tail call i16 @llvm.bswap.i16(i16 %add81.i) #10
  %165 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i249.i = add i32 %166, 128
  %and.i6.i250.i = and i32 %add.i5.i249.i, 1048575
  %add1.i7.i251.i = or i32 %and.i6.i250.i, -18874368
  %167 = inttoptr i32 %add1.i7.i251.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %167, i16 %164) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %168 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i252.i = add i32 %169, 132
  %and.i10.i253.i = and i32 %add.i9.i252.i, 1048575
  %add1.i11.i254.i = or i32 %and.i10.i253.i, -18874368
  %170 = inttoptr i32 %add1.i11.i254.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %170, i16 %130) #10, !srcloc !195
  %171 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %data.i, align 2
  %add87.i = add i16 %172, 13
  %conv89.i = trunc i32 %add3.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %173 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i256.i = add i32 %174, 130
  %and.i.i257.i = and i32 %add.i.i256.i, 1048575
  %add1.i.i258.i = or i32 %and.i.i257.i, -18874368
  %175 = inttoptr i32 %add1.i.i258.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %175, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %176 = tail call i16 @llvm.bswap.i16(i16 %add87.i) #10
  %177 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i259.i = add i32 %178, 128
  %and.i6.i260.i = and i32 %add.i5.i259.i, 1048575
  %add1.i7.i261.i = or i32 %and.i6.i260.i, -18874368
  %179 = inttoptr i32 %add1.i7.i261.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %179, i16 %176) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %180 = tail call i16 @llvm.bswap.i16(i16 %conv89.i) #10
  %181 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i262.i = add i32 %182, 132
  %and.i10.i263.i = and i32 %add.i9.i262.i, 1048575
  %add1.i11.i264.i = or i32 %and.i10.i263.i, -18874368
  %183 = inttoptr i32 %add1.i11.i264.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %183, i16 %180) #10, !srcloc !195
  %184 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %data.i, align 2
  %add93.i = add i16 %185, 14
  %add96.i = add nuw nsw i32 %add3.i, %.161.i
  %conv97.i = trunc i32 %add96.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %186 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i266.i = add i32 %187, 130
  %and.i.i267.i = and i32 %add.i.i266.i, 1048575
  %add1.i.i268.i = or i32 %and.i.i267.i, -18874368
  %188 = inttoptr i32 %add1.i.i268.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %188, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %189 = tail call i16 @llvm.bswap.i16(i16 %add93.i) #10
  %190 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i269.i = add i32 %191, 128
  %and.i6.i270.i = and i32 %add.i5.i269.i, 1048575
  %add1.i7.i271.i = or i32 %and.i6.i270.i, -18874368
  %192 = inttoptr i32 %add1.i7.i271.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %192, i16 %189) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %193 = tail call i16 @llvm.bswap.i16(i16 %conv97.i) #10
  %194 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i272.i = add i32 %195, 132
  %and.i10.i273.i = and i32 %add.i9.i272.i, 1048575
  %add1.i11.i274.i = or i32 %and.i10.i273.i, -18874368
  %196 = inttoptr i32 %add1.i11.i274.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %196, i16 %193) #10, !srcloc !195
  %197 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %data.i, align 2
  %add101.i = add i16 %198, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %199 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i276.i = add i32 %200, 130
  %and.i.i277.i = and i32 %add.i.i276.i, 1048575
  %add1.i.i278.i = or i32 %and.i.i277.i, -18874368
  %201 = inttoptr i32 %add1.i.i278.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %201, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %202 = tail call i16 @llvm.bswap.i16(i16 %add101.i) #10
  %203 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i279.i = add i32 %204, 128
  %and.i6.i280.i = and i32 %add.i5.i279.i, 1048575
  %add1.i7.i281.i = or i32 %and.i6.i280.i, -18874368
  %205 = inttoptr i32 %add1.i7.i281.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %205, i16 %202) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %206 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i282.i = add i32 %207, 132
  %and.i10.i283.i = and i32 %add.i9.i282.i, 1048575
  %add1.i11.i284.i = or i32 %and.i10.i283.i, -18874368
  %208 = inttoptr i32 %add1.i11.i284.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %208, i16 %180) #10, !srcloc !195
  %209 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %data.i, align 2
  %add107.i = add i16 %210, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %211 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i286.i = add i32 %212, 130
  %and.i.i287.i = and i32 %add.i.i286.i, 1048575
  %add1.i.i288.i = or i32 %and.i.i287.i, -18874368
  %213 = inttoptr i32 %add1.i.i288.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %213, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %214 = tail call i16 @llvm.bswap.i16(i16 %add107.i) #10
  %215 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i289.i = add i32 %216, 128
  %and.i6.i290.i = and i32 %add.i5.i289.i, 1048575
  %add1.i7.i291.i = or i32 %and.i6.i290.i, -18874368
  %217 = inttoptr i32 %add1.i7.i291.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %217, i16 %214) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %218 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i292.i = add i32 %219, 132
  %and.i10.i293.i = and i32 %add.i9.i292.i, 1048575
  %add1.i11.i294.i = or i32 %and.i10.i293.i, -18874368
  %220 = inttoptr i32 %add1.i11.i294.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %220, i16 %180) #10, !srcloc !195
  %221 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp35 = icmp eq i32 %222, 0
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end34
  %inst.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 2
  %223 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %data.i, align 2
  %add1.i = add i16 %224, 36
  %add7.i = add i16 %224, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %225 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i.i64 = add i32 %226, 130
  %and.i.i.i65 = and i32 %add.i.i.i64, 1048575
  %add1.i.i.i66 = or i32 %and.i.i.i65, -18874368
  %227 = inttoptr i32 %add1.i.i.i66 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %227, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %228 = tail call i16 @llvm.bswap.i16(i16 %add1.i) #10
  %229 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i.i67 = add i32 %230, 128
  %and.i6.i.i68 = and i32 %add.i5.i.i67, 1048575
  %add1.i7.i.i69 = or i32 %and.i6.i.i68, -18874368
  %231 = inttoptr i32 %add1.i7.i.i69 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %231, i16 %228) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %232 = tail call i16 @llvm.bswap.i16(i16 %add7.i) #10
  %233 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i.i70 = add i32 %234, 132
  %and.i10.i.i71 = and i32 %add.i9.i.i70, 1048575
  %add1.i11.i.i72 = or i32 %and.i10.i.i71, -18874368
  %235 = inttoptr i32 %add1.i11.i.i72 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %235, i16 %232) #10, !srcloc !195
  %236 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %data.i, align 2
  %add13.i = add i16 %237, 43
  %238 = ptrtoint ptr %inst.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %inst.i, align 4
  %add17.i = add i16 %239, 373
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %240 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i55.i = add i32 %241, 130
  %and.i.i56.i = and i32 %add.i.i55.i, 1048575
  %add1.i.i57.i = or i32 %and.i.i56.i, -18874368
  %242 = inttoptr i32 %add1.i.i57.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %242, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %243 = tail call i16 @llvm.bswap.i16(i16 %add13.i) #10
  %244 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i58.i = add i32 %245, 128
  %and.i6.i59.i = and i32 %add.i5.i58.i, 1048575
  %add1.i7.i60.i = or i32 %and.i6.i59.i, -18874368
  %246 = inttoptr i32 %add1.i7.i60.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %246, i16 %243) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %247 = tail call i16 @llvm.bswap.i16(i16 %add17.i) #10
  %248 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i61.i = add i32 %249, 132
  %and.i10.i62.i = and i32 %add.i9.i61.i, 1048575
  %add1.i11.i63.i = or i32 %and.i10.i62.i, -18874368
  %250 = inttoptr i32 %add1.i11.i63.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %250, i16 %247) #10, !srcloc !195
  %251 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %data.i, align 2
  %add23.i73 = add i16 %252, 46
  %253 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %runtime1, align 4
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %254, i32 0, i32 14
  %255 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000, i32 %256)
  %cmp.i74 = icmp ugt i32 %256, 45000
  %conv26.i = select i1 %cmp.i74, i16 -256, i16 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %257 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i65.i = add i32 %258, 130
  %and.i.i66.i = and i32 %add.i.i65.i, 1048575
  %add1.i.i67.i = or i32 %and.i.i66.i, -18874368
  %259 = inttoptr i32 %add1.i.i67.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %259, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %260 = tail call i16 @llvm.bswap.i16(i16 %add23.i73) #10
  %261 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i68.i = add i32 %262, 128
  %and.i6.i69.i = and i32 %add.i5.i68.i, 1048575
  %add1.i7.i70.i = or i32 %and.i6.i69.i, -18874368
  %263 = inttoptr i32 %add1.i7.i70.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %263, i16 %260) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %264 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i71.i = add i32 %265, 132
  %and.i10.i72.i = and i32 %add.i9.i71.i, 1048575
  %add1.i11.i73.i = or i32 %and.i10.i72.i, -18874368
  %266 = inttoptr i32 %add1.i11.i73.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %266, i16 %conv26.i) #10, !srcloc !195
  %267 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %data.i, align 2
  %add30.i = add i16 %268, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %269 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i75.i = add i32 %270, 130
  %and.i.i76.i = and i32 %add.i.i75.i, 1048575
  %add1.i.i77.i = or i32 %and.i.i76.i, -18874368
  %271 = inttoptr i32 %add1.i.i77.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %271, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %272 = tail call i16 @llvm.bswap.i16(i16 %add30.i) #10
  %273 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i78.i = add i32 %274, 128
  %and.i6.i79.i = and i32 %add.i5.i78.i, 1048575
  %add1.i7.i80.i = or i32 %and.i6.i79.i, -18874368
  %275 = inttoptr i32 %add1.i7.i80.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %275, i16 %272) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %276 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i81.i = add i32 %277, 132
  %and.i10.i82.i = and i32 %add.i9.i81.i, 1048575
  %add1.i11.i83.i = or i32 %and.i10.i82.i, -18874368
  %278 = inttoptr i32 %add1.i11.i83.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %278, i16 3856) #10, !srcloc !195
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then36
  %i.094.i = phi i32 [ 0, %if.then36 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %279 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %data.i, align 2
  %arrayidx.i = getelementptr [20 x %struct.play_vals], ptr @pv, i32 0, i32 %i.094.i
  %281 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %arrayidx.i, align 2
  %add38.i = add i16 %282, %280
  %val.i = getelementptr [20 x %struct.play_vals], ptr @pv, i32 0, i32 %i.094.i, i32 1
  %283 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %val.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %285 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i85.i = add i32 %286, 130
  %and.i.i86.i = and i32 %add.i.i85.i, 1048575
  %add1.i.i87.i = or i32 %and.i.i86.i, -18874368
  %287 = inttoptr i32 %add1.i.i87.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %287, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %288 = tail call i16 @llvm.bswap.i16(i16 %add38.i) #10
  %289 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i88.i = add i32 %290, 128
  %and.i6.i89.i = and i32 %add.i5.i88.i, 1048575
  %add1.i7.i90.i = or i32 %and.i6.i89.i, -18874368
  %291 = inttoptr i32 %add1.i7.i90.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %291, i16 %288) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %292 = tail call i16 @llvm.bswap.i16(i16 %284) #10
  %293 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i91.i = add i32 %294, 132
  %and.i10.i92.i = and i32 %add.i9.i91.i, 1048575
  %add1.i11.i93.i = or i32 %and.i10.i92.i, -18874368
  %295 = inttoptr i32 %add1.i11.i93.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %295, i16 %292) #10, !srcloc !195
  %inc.i = add nuw nsw i32 %i.094.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.body.i.if.end37_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end37_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.else:                                          ; preds = %if.end34
  %296 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %data.i, align 2
  %add1.i76 = add i16 %297, 36
  %add7.i77 = add i16 %297, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %298 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i.i79 = add i32 %299, 130
  %and.i.i.i80 = and i32 %add.i.i.i79, 1048575
  %add1.i.i.i81 = or i32 %and.i.i.i80, -18874368
  %300 = inttoptr i32 %add1.i.i.i81 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %300, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %301 = tail call i16 @llvm.bswap.i16(i16 %add1.i76) #10
  %302 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i.i82 = add i32 %303, 128
  %and.i6.i.i83 = and i32 %add.i5.i.i82, 1048575
  %add1.i7.i.i84 = or i32 %and.i6.i.i83, -18874368
  %304 = inttoptr i32 %add1.i7.i.i84 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %304, i16 %301) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %305 = tail call i16 @llvm.bswap.i16(i16 %add7.i77) #10
  %306 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i.i85 = add i32 %307, 132
  %and.i10.i.i86 = and i32 %add.i9.i.i85, 1048575
  %add1.i11.i.i87 = or i32 %and.i10.i.i86, -18874368
  %308 = inttoptr i32 %add1.i11.i.i87 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %308, i16 %305) #10, !srcloc !195
  %309 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %data.i, align 2
  %add12.i = add i16 %310, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %311 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i2.i = add i32 %312, 130
  %and.i.i3.i = and i32 %add.i.i2.i, 1048575
  %add1.i.i4.i = or i32 %and.i.i3.i, -18874368
  %313 = inttoptr i32 %add1.i.i4.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %313, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %314 = tail call i16 @llvm.bswap.i16(i16 %add12.i) #10
  %315 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i5.i = add i32 %316, 128
  %and.i6.i6.i = and i32 %add.i5.i5.i, 1048575
  %add1.i7.i7.i = or i32 %and.i6.i6.i, -18874368
  %317 = inttoptr i32 %add1.i7.i7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %317, i16 %314) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %318 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i8.i = add i32 %319, 132
  %and.i10.i9.i = and i32 %add.i9.i8.i, 1048575
  %add1.i11.i10.i = or i32 %and.i10.i9.i, -18874368
  %320 = inttoptr i32 %add1.i11.i10.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %320, i16 3857) #10, !srcloc !195
  br label %for.body.i92

for.body.i92:                                     ; preds = %for.body.i92.for.body.i92_crit_edge, %if.else
  %i.021.i = phi i32 [ 0, %if.else ], [ %inc.i90, %for.body.i92.for.body.i92_crit_edge ]
  %321 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %data.i, align 2
  %arrayidx.i88 = getelementptr [22 x %struct.rec_vals], ptr @rv, i32 0, i32 %i.021.i
  %323 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %arrayidx.i88, align 2
  %add19.i = add i16 %324, %322
  %val.i89 = getelementptr [22 x %struct.rec_vals], ptr @rv, i32 0, i32 %i.021.i, i32 1
  %325 = ptrtoint ptr %val.i89 to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %val.i89, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %327 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i12.i = add i32 %328, 130
  %and.i.i13.i = and i32 %add.i.i12.i, 1048575
  %add1.i.i14.i = or i32 %and.i.i13.i, -18874368
  %329 = inttoptr i32 %add1.i.i14.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %329, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %330 = tail call i16 @llvm.bswap.i16(i16 %add19.i) #10
  %331 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i15.i = add i32 %332, 128
  %and.i6.i16.i = and i32 %add.i5.i15.i, 1048575
  %add1.i7.i17.i = or i32 %and.i6.i16.i, -18874368
  %333 = inttoptr i32 %add1.i7.i17.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %333, i16 %330) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %334 = tail call i16 @llvm.bswap.i16(i16 %326) #10
  %335 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i18.i = add i32 %336, 132
  %and.i10.i19.i = and i32 %add.i9.i18.i, 1048575
  %add1.i11.i20.i = or i32 %and.i10.i19.i, -18874368
  %337 = inttoptr i32 %add1.i11.i20.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %337, i16 %334) #10, !srcloc !195
  %inc.i90 = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i91 = icmp eq i32 %inc.i90, 22
  br i1 %exitcond.not.i91, label %for.body.i92.if.end37_crit_edge, label %for.body.i92.for.body.i92_crit_edge

for.body.i92.for.body.i92_crit_edge:              ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i92

for.body.i92.if.end37_crit_edge:                  ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %for.body.i92.if.end37_crit_edge, %for.body.i.if.end37_crit_edge
  %in_lists.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 12
  %338 = ptrtoint ptr %in_lists.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %in_lists.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool.not.i = icmp eq i32 %339, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end37.snd_m3_pcm_setup2.exit_crit_edge

if.end37.snd_m3_pcm_setup2.exit_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_pcm_setup2.exit

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %index_list.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 11
  %340 = ptrtoint ptr %index_list.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %index_list.i, align 4
  %342 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %data.i, align 2
  %344 = lshr i16 %343, 7
  %mem_addr.i.i = getelementptr inbounds %struct.m3_list, ptr %341, i32 0, i32 1
  %345 = ptrtoint ptr %mem_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %mem_addr.i.i, align 4
  %347 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %341, align 4
  %add.i.i = add i32 %348, %346
  %conv.i.i = trunc i32 %add.i.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %349 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i.i.i = add i32 %350, 130
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %351 = inttoptr i32 %add1.i.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %351, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %352 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  %353 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i.i.i = add i32 %354, 128
  %and.i6.i.i.i = and i32 %add.i5.i.i.i, 1048575
  %add1.i7.i.i.i = or i32 %and.i6.i.i.i, -18874368
  %355 = inttoptr i32 %add1.i7.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %355, i16 %352) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %356 = tail call i16 @llvm.bswap.i16(i16 %344) #10
  %357 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i.i.i = add i32 %358, 132
  %and.i10.i.i.i = and i32 %add.i9.i.i.i, 1048575
  %add1.i11.i.i.i = or i32 %and.i10.i.i.i, -18874368
  %359 = inttoptr i32 %add1.i11.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %359, i16 %356) #10, !srcloc !195
  %360 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %341, align 4
  %inc.i.i = add i32 %361, 1
  store i32 %inc.i.i, ptr %341, align 4
  %index.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 10
  %362 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %361, ptr %index.i, align 4
  %arrayidx4.i = getelementptr %struct.m3_dma, ptr %5, i32 0, i32 11, i32 1
  %363 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %arrayidx4.i, align 4
  %365 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %data.i, align 2
  %367 = lshr i16 %366, 7
  %mem_addr.i76.i = getelementptr inbounds %struct.m3_list, ptr %364, i32 0, i32 1
  %368 = ptrtoint ptr %mem_addr.i76.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %mem_addr.i76.i, align 4
  %370 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %364, align 4
  %add.i77.i = add i32 %371, %369
  %conv.i78.i = trunc i32 %add.i77.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %372 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i.i80.i = add i32 %373, 130
  %and.i.i.i81.i = and i32 %add.i.i.i80.i, 1048575
  %add1.i.i.i82.i = or i32 %and.i.i.i81.i, -18874368
  %374 = inttoptr i32 %add1.i.i.i82.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %374, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %375 = tail call i16 @llvm.bswap.i16(i16 %conv.i78.i) #10
  %376 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i.i83.i = add i32 %377, 128
  %and.i6.i.i84.i = and i32 %add.i5.i.i83.i, 1048575
  %add1.i7.i.i85.i = or i32 %and.i6.i.i84.i, -18874368
  %378 = inttoptr i32 %add1.i7.i.i85.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %378, i16 %375) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %379 = tail call i16 @llvm.bswap.i16(i16 %367) #10
  %380 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i.i86.i = add i32 %381, 132
  %and.i10.i.i87.i = and i32 %add.i9.i.i86.i, 1048575
  %add1.i11.i.i88.i = or i32 %and.i10.i.i87.i, -18874368
  %382 = inttoptr i32 %add1.i11.i.i88.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %382, i16 %379) #10, !srcloc !195
  %383 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %364, align 4
  %inc.i89.i = add i32 %384, 1
  store i32 %inc.i89.i, ptr %364, align 4
  %arrayidx12.i = getelementptr %struct.m3_dma, ptr %5, i32 0, i32 10, i32 1
  %385 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %384, ptr %arrayidx12.i, align 4
  %arrayidx14.i = getelementptr %struct.m3_dma, ptr %5, i32 0, i32 11, i32 2
  %386 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx14.i, align 4
  %388 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %data.i, align 2
  %390 = lshr i16 %389, 7
  %mem_addr.i90.i = getelementptr inbounds %struct.m3_list, ptr %387, i32 0, i32 1
  %391 = ptrtoint ptr %mem_addr.i90.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %mem_addr.i90.i, align 4
  %393 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %387, align 4
  %add.i91.i = add i32 %394, %392
  %conv.i92.i = trunc i32 %add.i91.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %395 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i.i94.i = add i32 %396, 130
  %and.i.i.i95.i = and i32 %add.i.i.i94.i, 1048575
  %add1.i.i.i96.i = or i32 %and.i.i.i95.i, -18874368
  %397 = inttoptr i32 %add1.i.i.i96.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %397, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %398 = tail call i16 @llvm.bswap.i16(i16 %conv.i92.i) #10
  %399 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i.i97.i = add i32 %400, 128
  %and.i6.i.i98.i = and i32 %add.i5.i.i97.i, 1048575
  %add1.i7.i.i99.i = or i32 %and.i6.i.i98.i, -18874368
  %401 = inttoptr i32 %add1.i7.i.i99.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %401, i16 %398) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %402 = tail call i16 @llvm.bswap.i16(i16 %390) #10
  %403 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i.i100.i = add i32 %404, 132
  %and.i10.i.i101.i = and i32 %add.i9.i.i100.i, 1048575
  %add1.i11.i.i102.i = or i32 %and.i10.i.i101.i, -18874368
  %405 = inttoptr i32 %add1.i11.i.i102.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %405, i16 %402) #10, !srcloc !195
  %406 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %387, align 4
  %inc.i103.i = add i32 %407, 1
  store i32 %inc.i103.i, ptr %387, align 4
  %arrayidx22.i = getelementptr %struct.m3_dma, ptr %5, i32 0, i32 10, i32 2
  %408 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %407, ptr %arrayidx22.i, align 4
  %409 = ptrtoint ptr %in_lists.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 1, ptr %in_lists.i, align 4
  br label %snd_m3_pcm_setup2.exit

snd_m3_pcm_setup2.exit:                           ; preds = %if.then.i, %if.end37.snd_m3_pcm_setup2.exit_crit_edge
  %410 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %data.i, align 2
  %add27.i94 = add i16 %411, 25
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %412 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %413)
  %cmp.not.i = icmp eq i32 %413, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %414 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i.i96 = add i32 %415, 130
  %and.i.i.i97 = and i32 %add.i.i.i96, 1048575
  %add1.i.i.i98 = or i32 %and.i.i.i97, -18874368
  %416 = inttoptr i32 %add1.i.i.i98 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %416, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %417 = tail call i16 @llvm.bswap.i16(i16 %add27.i94) #10
  %418 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i.i99 = add i32 %419, 128
  %and.i6.i.i100 = and i32 %add.i5.i.i99, 1048575
  %add1.i7.i.i101 = or i32 %and.i6.i.i100, -18874368
  %420 = inttoptr i32 %add1.i7.i.i101 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %420, i16 %417) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %421 = select i1 %cmp.not.i, i16 0, i16 256
  %422 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i.i102 = add i32 %423, 132
  %and.i10.i.i103 = and i32 %add.i9.i.i102, 1048575
  %add1.i11.i.i104 = or i32 %and.i10.i.i103, -18874368
  %424 = inttoptr i32 %add1.i11.i.i104 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %424, i16 %421) #10, !srcloc !195
  %425 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %data.i, align 2
  %add35.i = add i16 %426, 26
  %427 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %format, align 4
  %call37.i = tail call i32 @snd_pcm_format_width(i32 noundef %428) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call37.i)
  %cmp38.not.i = icmp eq i32 %call37.i, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %429 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i105.i = add i32 %430, 130
  %and.i.i106.i = and i32 %add.i.i105.i, 1048575
  %add1.i.i107.i = or i32 %and.i.i106.i, -18874368
  %431 = inttoptr i32 %add1.i.i107.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %431, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %432 = tail call i16 @llvm.bswap.i16(i16 %add35.i) #10
  %433 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i108.i = add i32 %434, 128
  %and.i6.i109.i = and i32 %add.i5.i108.i, 1048575
  %add1.i7.i110.i = or i32 %and.i6.i109.i, -18874368
  %435 = inttoptr i32 %add1.i7.i110.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %435, i16 %432) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %436 = select i1 %cmp38.not.i, i16 0, i16 256
  %437 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i111.i = add i32 %438, 132
  %and.i10.i112.i = and i32 %add.i9.i111.i, 1048575
  %add1.i11.i113.i = or i32 %and.i10.i112.i, -18874368
  %439 = inttoptr i32 %add1.i11.i113.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %439, i16 %436) #10, !srcloc !195
  %440 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %rate, align 4
  %shl.i = shl i32 %441, 15
  %add42.i = or i32 %shl.i, 23936
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %add42.i)
  %442 = icmp ult i32 %add42.i, 48000
  %div43.i = udiv i32 %add42.i, 48000
  %443 = trunc i32 %div43.i to i16
  %phi.cast.i = add i16 %443, -1
  %freq.0.i = select i1 %442, i16 0, i16 %phi.cast.i
  %444 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %data.i, align 2
  %add50.i = add i16 %445, 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %446 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i115.i = add i32 %447, 130
  %and.i.i116.i = and i32 %add.i.i115.i, 1048575
  %add1.i.i117.i = or i32 %and.i.i116.i, -18874368
  %448 = inttoptr i32 %add1.i.i117.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %448, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %449 = tail call i16 @llvm.bswap.i16(i16 %add50.i) #10
  %450 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i118.i = add i32 %451, 128
  %and.i6.i119.i = and i32 %add.i5.i118.i, 1048575
  %add1.i7.i120.i = or i32 %and.i6.i119.i, -18874368
  %452 = inttoptr i32 %add1.i7.i120.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %452, i16 %449) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %453 = tail call i16 @llvm.bswap.i16(i16 %freq.0.i) #10
  %454 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i121.i = add i32 %455, 132
  %and.i10.i122.i = and i32 %add.i9.i121.i, 1048575
  %add1.i11.i123.i = or i32 %and.i10.i122.i, -18874368
  %456 = inttoptr i32 %add1.i11.i123.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %456, i16 %453) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %snd_m3_pcm_setup2.exit, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %snd_m3_pcm_setup2.exit ], [ -22, %if.end25.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_m3_pcm_trigger(ptr noundef %subs, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !252

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1098, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %cmd, label %if.end24.sw.epilog_crit_edge [
    i32 1, label %if.end24.sw.bb_crit_edge
    i32 6, label %if.end24.sw.bb_crit_edge53
    i32 0, label %if.end24.sw.bb29_crit_edge
    i32 5, label %if.end24.sw.bb29_crit_edge54
  ]

if.end24.sw.bb29_crit_edge54:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb29

if.end24.sw.bb29_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb29

if.end24.sw.bb_crit_edge53:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end24.sw.bb_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24.sw.bb_crit_edge, %if.end24.sw.bb_crit_edge53
  %running = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool25.not = icmp eq i32 %8, 0
  br i1 %tobool25.not, label %if.else, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %9 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %running, align 4
  %tobool1.not.i = icmp eq ptr %subs, null
  br i1 %tobool1.not.i, label %if.else.sw.epilog_crit_edge, label %if.end.i

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %if.else
  %timer_users.i.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %timer_users.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timer_users.i.i, align 4
  %inc.i.i = add i32 %11, 1
  store i32 %inc.i.i, ptr %timer_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.snd_m3_inc_timer_users.exit.i_crit_edge

if.end.i.snd_m3_inc_timer_users.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_inc_timer_users.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %iobase.i.i.i.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %iobase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 130
  %and.i.i.i.i = and i32 %add.i.i.i.i, 1048575
  %add1.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %14 = inttoptr i32 %add1.i.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %iobase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i.i.i.i, align 4
  %add.i5.i.i.i = add i32 %16, 128
  %and.i6.i.i.i = and i32 %add.i5.i.i.i, 1048575
  %add1.i7.i.i.i = or i32 %and.i6.i.i.i, -18874368
  %17 = inttoptr i32 %add1.i7.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 13840) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %iobase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i.i.i.i, align 4
  %add.i9.i.i.i = add i32 %19, 132
  %and.i10.i.i.i = and i32 %add.i9.i.i.i, 1048575
  %add1.i11.i.i.i = or i32 %and.i10.i.i.i, -18874368
  %20 = inttoptr i32 %add1.i11.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 -4096) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %iobase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i.i.i.i, align 4
  %add.i.i9.i.i = add i32 %22, 130
  %and.i.i10.i.i = and i32 %add.i.i9.i.i, 1048575
  %add1.i.i11.i.i = or i32 %and.i.i10.i.i, -18874368
  %23 = inttoptr i32 %add1.i.i11.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %iobase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i.i.i.i, align 4
  %add.i5.i12.i.i = add i32 %25, 128
  %and.i6.i13.i.i = and i32 %add.i5.i12.i.i, 1048575
  %add1.i7.i14.i.i = or i32 %and.i6.i13.i.i, -18874368
  %26 = inttoptr i32 %add1.i7.i14.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 14096) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %iobase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase.i.i.i.i, align 4
  %add.i9.i15.i.i = add i32 %28, 132
  %and.i10.i16.i.i = and i32 %add.i9.i15.i.i, 1048575
  %add1.i11.i17.i.i = or i32 %and.i10.i16.i.i, -18874368
  %29 = inttoptr i32 %add1.i11.i17.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 -4096) #10, !srcloc !195
  %30 = ptrtoint ptr %iobase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 24
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %32 = inttoptr i32 %add1.i.i.i to ptr
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %32) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %34 = or i16 %33, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %iobase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i.i.i.i, align 4
  %add.i19.i.i = add i32 %36, 24
  %and.i20.i.i = and i32 %add.i19.i.i, 1048575
  %add1.i21.i.i = or i32 %and.i20.i.i, -18874368
  %37 = inttoptr i32 %add1.i21.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 %34) #10, !srcloc !195
  br label %snd_m3_inc_timer_users.exit.i

snd_m3_inc_timer_users.exit.i:                    ; preds = %if.end.i.i, %if.end.i.snd_m3_inc_timer_users.exit.i_crit_edge
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 5
  %38 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stream.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %39, label %snd_m3_inc_timer_users.exit.i.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i
  ]

snd_m3_inc_timer_users.exit.i.sw.epilog_crit_edge: ; preds = %snd_m3_inc_timer_users.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.i:                                          ; preds = %snd_m3_inc_timer_users.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dacs_active.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %dacs_active.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dacs_active.i, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr %dacs_active.i, align 4
  %data.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %data.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %iobase.i.i.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i20.i = add i32 %46, 130
  %and.i.i21.i = and i32 %add.i.i20.i, 1048575
  %add1.i.i22.i = or i32 %and.i.i21.i, -18874368
  %47 = inttoptr i32 %add1.i.i22.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %47, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %48 = tail call i16 @llvm.bswap.i16(i16 %44) #10
  %49 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i.i = add i32 %50, 128
  %and.i6.i.i = and i32 %add.i5.i.i, 1048575
  %add1.i7.i.i = or i32 %and.i6.i.i, -18874368
  %51 = inttoptr i32 %add1.i7.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %48) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i.i = add i32 %53, 132
  %and.i10.i.i = and i32 %add.i9.i.i, 1048575
  %add1.i11.i.i = or i32 %and.i10.i.i, -18874368
  %54 = inttoptr i32 %add1.i11.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 256) #10, !srcloc !195
  %55 = ptrtoint ptr %dacs_active.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dacs_active.i, align 4
  %conv4.i = trunc i32 %56 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iobase.i.i.i, align 4
  %add.i.i24.i = add i32 %58, 130
  %and.i.i25.i = and i32 %add.i.i24.i, 1048575
  %add1.i.i26.i = or i32 %and.i.i25.i, -18874368
  %59 = inttoptr i32 %add1.i.i26.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iobase.i.i.i, align 4
  %add.i5.i27.i = add i32 %61, 128
  %and.i6.i28.i = and i32 %add.i5.i27.i, 1048575
  %add1.i7.i29.i = or i32 %and.i6.i28.i, -18874368
  %62 = inttoptr i32 %add1.i7.i29.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %62, i16 -25840) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv4.i) #10
  %64 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase.i.i.i, align 4
  %add.i9.i30.i = add i32 %65, 132
  %and.i10.i31.i = and i32 %add.i9.i30.i, 1048575
  %add1.i11.i32.i = or i32 %and.i10.i31.i, -18874368
  %66 = inttoptr i32 %add1.i11.i32.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %66, i16 %63) #10, !srcloc !195
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %snd_m3_inc_timer_users.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %iobase.i.i33.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %iobase.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iobase.i.i33.i, align 4
  %add.i.i34.i = add i32 %68, 130
  %and.i.i35.i = and i32 %add.i.i34.i, 1048575
  %add1.i.i36.i = or i32 %and.i.i35.i, -18874368
  %69 = inttoptr i32 %add1.i.i36.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %69, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %70 = ptrtoint ptr %iobase.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iobase.i.i33.i, align 4
  %add.i5.i37.i = add i32 %71, 128
  %and.i6.i38.i = and i32 %add.i5.i37.i, 1048575
  %add1.i7.i39.i = or i32 %and.i6.i38.i, -18874368
  %72 = inttoptr i32 %add1.i7.i39.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %72, i16 29712) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %iobase.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iobase.i.i33.i, align 4
  %add.i9.i40.i = add i32 %74, 132
  %and.i10.i41.i = and i32 %add.i9.i40.i, 1048575
  %add1.i11.i42.i = or i32 %and.i10.i41.i, -18874368
  %75 = inttoptr i32 %add1.i11.i42.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %75, i16 256) #10, !srcloc !195
  %data7.i = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %data7.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %data7.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %78 = ptrtoint ptr %iobase.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %iobase.i.i33.i, align 4
  %add.i.i44.i = add i32 %79, 130
  %and.i.i45.i = and i32 %add.i.i44.i, 1048575
  %add1.i.i46.i = or i32 %and.i.i45.i, -18874368
  %80 = inttoptr i32 %add1.i.i46.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %80, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %81 = tail call i16 @llvm.bswap.i16(i16 %77) #10
  %82 = ptrtoint ptr %iobase.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %iobase.i.i33.i, align 4
  %add.i5.i47.i = add i32 %83, 128
  %and.i6.i48.i = and i32 %add.i5.i47.i, 1048575
  %add1.i7.i49.i = or i32 %and.i6.i48.i, -18874368
  %84 = inttoptr i32 %add1.i7.i49.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %84, i16 %81) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %85 = ptrtoint ptr %iobase.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %iobase.i.i33.i, align 4
  %add.i9.i50.i = add i32 %86, 132
  %and.i10.i51.i = and i32 %add.i9.i50.i, 1048575
  %add1.i11.i52.i = or i32 %and.i10.i51.i, -18874368
  %87 = inttoptr i32 %add1.i11.i52.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %87, i16 256) #10, !srcloc !195
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end24.sw.bb29_crit_edge, %if.end24.sw.bb29_crit_edge54
  %running30 = getelementptr inbounds %struct.m3_dma, ptr %5, i32 0, i32 3
  %88 = ptrtoint ptr %running30 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %running30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool31.not = icmp eq i32 %89, 0
  br i1 %tobool31.not, label %sw.bb29.sw.epilog_crit_edge, label %if.else33

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else33:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %running30 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %running30, align 4
  %call35 = tail call fastcc i32 @snd_m3_pcm_stop(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %subs)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else33, %sw.bb29.sw.epilog_crit_edge, %sw.bb5.i, %sw.bb.i, %snd_m3_inc_timer_users.exit.i.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end24.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %if.end24.sw.epilog_crit_edge ], [ %call35, %if.else33 ], [ -16, %sw.bb.sw.epilog_crit_edge ], [ 0, %sw.bb29.sw.epilog_crit_edge ], [ -22, %if.else.sw.epilog_crit_edge ], [ 0, %snd_m3_inc_timer_users.exit.i.sw.epilog_crit_edge ], [ 0, %sw.bb5.i ], [ 0, %sw.bb.i ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %err.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_m3_pcm_pointer(ptr nocapture noundef readonly %subs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !252

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1468, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_m3, ptr %5, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %call = tail call fastcc i32 @snd_m3_get_pointer(ptr noundef %5, ptr noundef nonnull %3)
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %call, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %div.i, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_m3_substream_close(ptr noundef %chip, ptr nocapture noundef readonly %subs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 21
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %substream = getelementptr inbounds %struct.m3_dma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %running = getelementptr inbounds %struct.m3_dma, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end4_crit_edge, label %if.then2

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @snd_m3_pcm_stop(ptr noundef %chip, ptr noundef nonnull %3, ptr noundef nonnull %5)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %in_lists = getelementptr inbounds %struct.m3_dma, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %in_lists to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_lists, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end4.if.end17_crit_edge, label %if.then6

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %index_list = getelementptr inbounds %struct.m3_dma, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %index_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %index_list, align 4
  %index = getelementptr inbounds %struct.m3_dma, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  tail call fastcc void @snd_m3_remove_list(ptr noundef %chip, ptr noundef %11, i32 noundef %13)
  %arrayidx9 = getelementptr %struct.m3_dma, ptr %3, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.m3_dma, ptr %3, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11, align 4
  tail call fastcc void @snd_m3_remove_list(ptr noundef %chip, ptr noundef %15, i32 noundef %17)
  %arrayidx13 = getelementptr %struct.m3_dma, ptr %3, i32 0, i32 11, i32 2
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr %struct.m3_dma, ptr %3, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15, align 4
  tail call fastcc void @snd_m3_remove_list(ptr noundef %chip, ptr noundef %19, i32 noundef %21)
  %22 = ptrtoint ptr %in_lists to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %in_lists, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.end4.if.end17_crit_edge
  %running18 = getelementptr inbounds %struct.m3_dma, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %running18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %running18, align 4
  %opened = getelementptr inbounds %struct.m3_dma, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %opened, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_m3_remove_list(ptr nocapture noundef readonly %chip, ptr nocapture noundef %list, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %list, align 4
  %sub = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %index)
  %cmp.not = icmp eq i32 %sub, %index
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mem_addr = getelementptr inbounds %struct.m3_list, ptr %list, i32 0, i32 1
  %2 = ptrtoint ptr %mem_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_addr, align 4
  %add = add i32 %3, %sub
  %conv = trunc i32 %add to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %iobase.i.i = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %5, 130
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %8 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i = add i32 %9, 128
  %and.i6.i = and i32 %add.i5.i, 1048575
  %add1.i7.i = or i32 %and.i6.i, -18874368
  %10 = inttoptr i32 %add1.i7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 %7) #10, !srcloc !195
  %11 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i = add i32 %12, 132
  %and.i10.i = and i32 %add.i9.i, 1048575
  %add1.i11.i = or i32 %and.i10.i, -18874368
  %13 = inttoptr i32 %add1.i11.i to ptr
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %15 = ptrtoint ptr %mem_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mem_addr, align 4
  %add2 = add i32 %16, %index
  %conv3 = trunc i32 %add2 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i.i, align 4
  %add.i.i18 = add i32 %18, 130
  %and.i.i19 = and i32 %add.i.i18, 1048575
  %add1.i.i20 = or i32 %and.i.i19, -18874368
  %19 = inttoptr i32 %add1.i.i20 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv3) #10
  %21 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i21 = add i32 %22, 128
  %and.i6.i22 = and i32 %add.i5.i21, 1048575
  %add1.i7.i23 = or i32 %and.i6.i22, -18874368
  %23 = inttoptr i32 %add1.i7.i23 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %20) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i24 = add i32 %25, 132
  %and.i10.i25 = and i32 %add.i9.i24, 1048575
  %add1.i11.i26 = or i32 %and.i10.i25, -18874368
  %26 = inttoptr i32 %add1.i11.i26 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %14) #10, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mem_addr4 = getelementptr inbounds %struct.m3_list, ptr %list, i32 0, i32 1
  %27 = ptrtoint ptr %mem_addr4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mem_addr4, align 4
  %add5 = add i32 %28, %sub
  %conv6 = trunc i32 %add5 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %iobase.i.i27 = getelementptr inbounds %struct.snd_m3, ptr %chip, i32 0, i32 1
  %29 = ptrtoint ptr %iobase.i.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase.i.i27, align 4
  %add.i.i28 = add i32 %30, 130
  %and.i.i29 = and i32 %add.i.i28, 1048575
  %add1.i.i30 = or i32 %and.i.i29, -18874368
  %31 = inttoptr i32 %add1.i.i30 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %31, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv6) #10
  %33 = ptrtoint ptr %iobase.i.i27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase.i.i27, align 4
  %add.i5.i31 = add i32 %34, 128
  %and.i6.i32 = and i32 %add.i5.i31, 1048575
  %add1.i7.i33 = or i32 %and.i6.i32, -18874368
  %35 = inttoptr i32 %add1.i7.i33 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 %32) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %iobase.i.i27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i.i27, align 4
  %add.i9.i34 = add i32 %37, 132
  %and.i10.i35 = and i32 %add.i9.i34, 1048575
  %add1.i11.i36 = or i32 %and.i10.i35, -18874368
  %38 = inttoptr i32 %add1.i11.i36 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 0) #10, !srcloc !195
  %39 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %list, align 4
  %dec = add i32 %40, -1
  store i32 %dec, ptr %list, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_m3_capture_open(ptr noundef %subs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #10
  %num_substreams.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %num_substreams.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_substreams.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp37.i = icmp sgt i32 %5, 0
  br i1 %cmp37.i, label %for.body.lr.ph.i, label %entry.snd_m3_substream_open.exit.thread_crit_edge

entry.snd_m3_substream_open.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_substream_open.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %substreams.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %substreams.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substreams.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %opened.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 4
  %8 = ptrtoint ptr %opened.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.snd_m3_substream_open.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.snd_m3_substream_open.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_m3_substream_open.exit.thread

snd_m3_substream_open.exit.thread:                ; preds = %for.inc.i.snd_m3_substream_open.exit.thread_crit_edge, %entry.snd_m3_substream_open.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #10
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i
  %10 = ptrtoint ptr %opened.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %opened.i, align 4
  %running.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 3
  %11 = ptrtoint ptr %running.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %running.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #10
  %12 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime1, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %private_data.i, align 8
  %substream.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 1
  %15 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %subs, ptr %substream.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 5
  %16 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.i = icmp eq i32 %17, 0
  %mixer_list.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 10
  %adc1_list.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 11
  %adc1_list.sink.i = select i1 %cmp4.i, ptr %mixer_list.i, ptr %adc1_list.i
  %18 = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 11
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %adc1_list.sink.i, ptr %18, align 4
  %msrc_list.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 9
  %arrayidx11.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 11, i32 1
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msrc_list.i, ptr %arrayidx11.i, align 4
  %dma_list.i = getelementptr inbounds %struct.snd_m3, ptr %1, i32 0, i32 12
  %arrayidx13.i = getelementptr %struct.m3_dma, ptr %7, i32 %i.038.i, i32 11, i32 2
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dma_list.i, ptr %arrayidx13.i, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %22 = call ptr @memcpy(ptr %hw, ptr @snd_m3_capture, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_m3_substream_open.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %snd_m3_substream_open.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_m3_capture_close(ptr nocapture noundef readonly %subs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @snd_m3_substream_close(ptr noundef %1, ptr noundef %subs)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m3_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %suspend_mem = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %suspend_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend_mem, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_suspend = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %in_suspend, align 4
  %hwvol_work = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 24
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %hwvol_work) #10
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %7 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %ac97 = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %9) #10
  tail call void @msleep(i32 noundef 10) #10
  %iobase.i.i = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %11, 164
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %12 = inttoptr i32 %add1.i.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %14 = and i8 %13, -17
  %reset_state.i = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 13
  %15 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %reset_state.i, align 4
  tail call void @msleep(i32 noundef 10) #10
  %16 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reset_state.i, align 4
  %18 = and i8 %17, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i.i, align 4
  %add.i10.i = add i32 %20, 164
  %and.i11.i = and i32 %add.i10.i, 1048575
  %add1.i12.i = or i32 %and.i11.i, -18874368
  %21 = inttoptr i32 %add1.i12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %18) #10, !srcloc !193
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %dsp_index.051 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %dsp_index.051 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i.i, align 4
  %add.i.i37 = add i32 %23, 130
  %and.i.i38 = and i32 %add.i.i37, 1048575
  %add1.i.i39 = or i32 %and.i.i38, -18874368
  %24 = inttoptr i32 %add1.i.i39 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 512) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %26 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i = add i32 %27, 128
  %and.i6.i = and i32 %add.i5.i, 1048575
  %add1.i7.i = or i32 %and.i6.i, -18874368
  %28 = inttoptr i32 %add1.i7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %25) #10, !srcloc !195
  %29 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i = add i32 %30, 132
  %and.i10.i = and i32 %add.i9.i, 1048575
  %add1.i11.i = or i32 %and.i10.i, -18874368
  %31 = inttoptr i32 %add1.i11.i to ptr
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %31) #10, !srcloc !211
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %34 = ptrtoint ptr %suspend_mem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %suspend_mem, align 4
  %inc = add nuw nsw i32 %dsp_index.051, 1
  %arrayidx = getelementptr i16, ptr %35, i32 %dsp_index.051
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %33, ptr %arrayidx, align 2
  %exitcond.not = icmp eq i32 %inc, 3072
  br i1 %exitcond.not, label %for.body.for.body9_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.body9_crit_edge:                     ; preds = %for.body
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body.for.body9_crit_edge
  %dsp_index.153 = phi i32 [ %inc13, %for.body9.for.body9_crit_edge ], [ 3072, %for.body.for.body9_crit_edge ]
  %i.152 = phi i32 [ %inc16, %for.body9.for.body9_crit_edge ], [ 4096, %for.body.for.body9_crit_edge ]
  %conv10 = trunc i32 %i.152 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i.i, align 4
  %add.i.i41 = add i32 %38, 130
  %and.i.i42 = and i32 %add.i.i41, 1048575
  %add1.i.i43 = or i32 %and.i.i42, -18874368
  %39 = inttoptr i32 %add1.i.i43 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv10) #10
  %41 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase.i.i, align 4
  %add.i5.i44 = add i32 %42, 128
  %and.i6.i45 = and i32 %add.i5.i44, 1048575
  %add1.i7.i46 = or i32 %and.i6.i45, -18874368
  %43 = inttoptr i32 %add1.i7.i46 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 %40) #10, !srcloc !195
  %44 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase.i.i, align 4
  %add.i9.i47 = add i32 %45, 132
  %and.i10.i48 = and i32 %add.i9.i47, 1048575
  %add1.i11.i49 = or i32 %and.i10.i48, -18874368
  %46 = inttoptr i32 %add1.i11.i49 to ptr
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %46) #10, !srcloc !211
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %49 = ptrtoint ptr %suspend_mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %suspend_mem, align 4
  %inc13 = add nuw nsw i32 %dsp_index.153, 1
  %arrayidx14 = getelementptr i16, ptr %50, i32 %dsp_index.153
  %51 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %48, ptr %arrayidx14, align 2
  %inc16 = add nuw nsw i32 %i.152, 1
  %exitcond54.not = icmp eq i32 %inc13, 10240
  br i1 %exitcond54.not, label %for.body9.cleanup_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m3_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %suspend_mem = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %suspend_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend_mem, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %iobase.i = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 84
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 0) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add.i43 = add i32 %10, 86
  %and.i44 = and i32 %add.i43, 1048575
  %add1.i45 = or i32 %and.i44, -18874368
  %11 = inttoptr i32 %add1.i45 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 0) #10, !srcloc !195
  tail call fastcc void @snd_m3_chip_init(ptr noundef %3)
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %add.i.i = add i32 %13, 164
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %14 = inttoptr i32 %add1.i.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %16 = and i8 %15, -17
  %reset_state.i = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 13
  %17 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %reset_state.i, align 4
  tail call void @msleep(i32 noundef 10) #10
  %18 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reset_state.i, align 4
  %20 = and i8 %19, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i, align 4
  %add.i10.i = add i32 %22, 164
  %and.i11.i = and i32 %add.i10.i, 1048575
  %add1.i12.i = or i32 %and.i11.i, -18874368
  %23 = inttoptr i32 %add1.i12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %20) #10, !srcloc !193
  tail call fastcc void @snd_m3_ac97_reset(ptr noundef %3)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %dsp_index.079 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %dsp_index.079 to i16
  %24 = ptrtoint ptr %suspend_mem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %suspend_mem, align 4
  %inc = add nuw nsw i32 %dsp_index.079, 1
  %arrayidx = getelementptr i16, ptr %25, i32 %dsp_index.079
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i, align 4
  %add.i.i47 = add i32 %29, 130
  %and.i.i48 = and i32 %add.i.i47, 1048575
  %add1.i.i49 = or i32 %and.i.i48, -18874368
  %30 = inttoptr i32 %add1.i.i49 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 512) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i, align 4
  %add.i5.i = add i32 %33, 128
  %and.i6.i = and i32 %add.i5.i, 1048575
  %add1.i7.i = or i32 %and.i6.i, -18874368
  %34 = inttoptr i32 %add1.i7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %35 = tail call i16 @llvm.bswap.i16(i16 %27) #10
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i, align 4
  %add.i9.i = add i32 %37, 132
  %and.i10.i = and i32 %add.i9.i, 1048575
  %add1.i11.i = or i32 %and.i10.i, -18874368
  %38 = inttoptr i32 %add1.i11.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 %35) #10, !srcloc !195
  %exitcond.not = icmp eq i32 %inc, 3072
  br i1 %exitcond.not, label %for.body.for.body8_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.body8_crit_edge:                     ; preds = %for.body
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body.for.body8_crit_edge
  %dsp_index.181 = phi i32 [ %inc11, %for.body8.for.body8_crit_edge ], [ 3072, %for.body.for.body8_crit_edge ]
  %i.180 = phi i32 [ %inc14, %for.body8.for.body8_crit_edge ], [ 4096, %for.body.for.body8_crit_edge ]
  %conv9 = trunc i32 %i.180 to i16
  %39 = ptrtoint ptr %suspend_mem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %suspend_mem, align 4
  %inc11 = add nuw nsw i32 %dsp_index.181, 1
  %arrayidx12 = getelementptr i16, ptr %40, i32 %dsp_index.181
  %41 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx12, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase.i, align 4
  %add.i.i51 = add i32 %44, 130
  %and.i.i52 = and i32 %add.i.i51, 1048575
  %add1.i.i53 = or i32 %and.i.i52, -18874368
  %45 = inttoptr i32 %add1.i.i53 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv9) #10
  %47 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iobase.i, align 4
  %add.i5.i54 = add i32 %48, 128
  %and.i6.i55 = and i32 %add.i5.i54, 1048575
  %add1.i7.i56 = or i32 %and.i6.i55, -18874368
  %49 = inttoptr i32 %add1.i7.i56 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %49, i16 %46) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %50 = tail call i16 @llvm.bswap.i16(i16 %42) #10
  %51 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iobase.i, align 4
  %add.i9.i57 = add i32 %52, 132
  %and.i10.i58 = and i32 %add.i9.i57, 1048575
  %add1.i11.i59 = or i32 %and.i10.i58, -18874368
  %53 = inttoptr i32 %add1.i11.i59 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %53, i16 %50) #10, !srcloc !195
  %inc14 = add nuw nsw i32 %i.180, 1
  %exitcond82.not = icmp eq i32 %inc11, 10240
  br i1 %exitcond82.not, label %for.end15, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.end15:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iobase.i, align 4
  %add.i.i61 = add i32 %55, 130
  %and.i.i62 = and i32 %add.i.i61, 1048575
  %add1.i.i63 = or i32 %and.i.i62, -18874368
  %56 = inttoptr i32 %add1.i.i63 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %56, i16 768) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iobase.i, align 4
  %add.i5.i64 = add i32 %58, 128
  %and.i6.i65 = and i32 %add.i5.i64, 1048575
  %add1.i7.i66 = or i32 %and.i6.i65, -18874368
  %59 = inttoptr i32 %add1.i7.i66 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 10256) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iobase.i, align 4
  %add.i9.i67 = add i32 %61, 132
  %and.i10.i68 = and i32 %add.i9.i67, 1048575
  %add1.i11.i69 = or i32 %and.i10.i68, -18874368
  %62 = inttoptr i32 %add1.i11.i69 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %62, i16 0) #10, !srcloc !195
  %ac97 = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 4
  %63 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %64) #10
  %65 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %reset_state.i, align 4
  %67 = or i8 %66, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iobase.i, align 4
  %add.i.i72 = add i32 %69, 164
  %and.i.i73 = and i32 %add.i.i72, 1048575
  %add1.i.i74 = or i32 %and.i.i73, -18874368
  %70 = inttoptr i32 %add1.i.i74 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %67) #10, !srcloc !193
  %71 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iobase.i, align 4
  %hv_config.i = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 16
  %73 = ptrtoint ptr %hv_config.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hv_config.i, align 4
  %and.i76 = and i32 %74, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %tobool.not.i = icmp eq i32 %and.i76, 0
  %spec.select.i = select i1 %tobool.not.i, i16 16, i16 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @arm_heavy_mb() #10
  %conv2.i = trunc i16 %spec.select.i to i8
  %75 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %iobase.i, align 4
  %add.i77 = add i32 %76, 26
  %and4.i = and i32 %add.i77, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %77 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %conv2.i) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  %78 = shl nuw nsw i16 %spec.select.i, 8
  %add9.i = add i32 %72, 24
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %79 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %79, i16 %78) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %add16.i = add i32 %72, 166
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %80 = inttoptr i32 %add18.i to ptr
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  %82 = or i8 %81, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 %82) #10, !srcloc !193
  tail call fastcc void @snd_m3_amp_enable(ptr noundef %3)
  tail call fastcc void @snd_m3_hv_init(ptr noundef %3)
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %83 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %in_suspend = getelementptr inbounds %struct.snd_m3, ptr %3, i32 0, i32 25
  %84 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %in_suspend, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end15, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !146, !148, !149, !150, !151, !153, !155, !156, !157, !158, !160, !162, !164, !165, !166, !167, !169, !171, !173, !175, !177}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/maestro3.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/maestro3.c", i32 40, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/maestro3.c", i32 41, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_firmware246, !8, !"__UNIQUE_ID_firmware246", i1 false, i1 false}
!8 = !{!"../sound/pci/maestro3.c", i32 42, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware247, !10, !"__UNIQUE_ID_firmware247", i1 false, i1 false}
!10 = !{!"../sound/pci/maestro3.c", i32 43, i32 1}
!11 = !{ptr @__param_index, !12, !"__param_index", i1 false, i1 false}
!12 = !{!"../sound/pci/maestro3.c", i32 51, i32 1}
!13 = !{ptr @__UNIQUE_ID_indextype248, !12, !"__UNIQUE_ID_indextype248", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_index249, !15, !"__UNIQUE_ID_index249", i1 false, i1 false}
!15 = !{!"../sound/pci/maestro3.c", i32 52, i32 1}
!16 = !{ptr @__param_id, !17, !"__param_id", i1 false, i1 false}
!17 = !{!"../sound/pci/maestro3.c", i32 53, i32 1}
!18 = !{ptr @__UNIQUE_ID_idtype250, !17, !"__UNIQUE_ID_idtype250", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_id251, !20, !"__UNIQUE_ID_id251", i1 false, i1 false}
!20 = !{!"../sound/pci/maestro3.c", i32 54, i32 1}
!21 = !{ptr @__param_enable, !22, !"__param_enable", i1 false, i1 false}
!22 = !{!"../sound/pci/maestro3.c", i32 55, i32 1}
!23 = !{ptr @__UNIQUE_ID_enabletype252, !22, !"__UNIQUE_ID_enabletype252", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_enable253, !25, !"__UNIQUE_ID_enable253", i1 false, i1 false}
!25 = !{!"../sound/pci/maestro3.c", i32 56, i32 1}
!26 = !{ptr @__param_external_amp, !27, !"__param_external_amp", i1 false, i1 false}
!27 = !{!"../sound/pci/maestro3.c", i32 57, i32 1}
!28 = !{ptr @__UNIQUE_ID_external_amptype254, !27, !"__UNIQUE_ID_external_amptype254", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_external_amp255, !30, !"__UNIQUE_ID_external_amp255", i1 false, i1 false}
!30 = !{!"../sound/pci/maestro3.c", i32 58, i32 1}
!31 = !{ptr @__param_amp_gpio, !32, !"__param_amp_gpio", i1 false, i1 false}
!32 = !{!"../sound/pci/maestro3.c", i32 59, i32 1}
!33 = !{ptr @__UNIQUE_ID_amp_gpiotype256, !32, !"__UNIQUE_ID_amp_gpiotype256", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_amp_gpio257, !35, !"__UNIQUE_ID_amp_gpio257", i1 false, i1 false}
!35 = !{!"../sound/pci/maestro3.c", i32 60, i32 1}
!36 = !{ptr @__initcall__kmod_snd_maestro3__259_2714_m3_driver_init6, !37, !"__initcall__kmod_snd_maestro3__259_2714_m3_driver_init6", i1 false, i1 false}
!37 = !{!"../sound/pci/maestro3.c", i32 2714, i32 1}
!38 = !{ptr @__exitcall_m3_driver_exit, !37, !"__exitcall_m3_driver_exit", i1 false, i1 false}
!39 = !{ptr @__param_str_index, !12, !"__param_str_index", i1 false, i1 false}
!40 = !{ptr @__param_arr_index, !12, !"__param_arr_index", i1 false, i1 false}
!41 = !{ptr @index, !42, !"index", i1 false, i1 false}
!42 = !{!"../sound/pci/maestro3.c", i32 45, i32 12}
!43 = !{ptr @__param_str_id, !17, !"__param_str_id", i1 false, i1 false}
!44 = !{ptr @__param_arr_id, !17, !"__param_arr_id", i1 false, i1 false}
!45 = !{ptr @id, !46, !"id", i1 false, i1 false}
!46 = !{!"../sound/pci/maestro3.c", i32 46, i32 14}
!47 = !{ptr @__param_str_enable, !22, !"__param_str_enable", i1 false, i1 false}
!48 = !{ptr @__param_arr_enable, !22, !"__param_arr_enable", i1 false, i1 false}
!49 = !{ptr @enable, !50, !"enable", i1 false, i1 false}
!50 = !{!"../sound/pci/maestro3.c", i32 47, i32 13}
!51 = !{ptr @__param_str_external_amp, !27, !"__param_str_external_amp", i1 false, i1 false}
!52 = !{ptr @__param_arr_external_amp, !27, !"__param_arr_external_amp", i1 false, i1 false}
!53 = !{ptr @external_amp, !54, !"external_amp", i1 false, i1 false}
!54 = !{!"../sound/pci/maestro3.c", i32 48, i32 13}
!55 = !{ptr @__param_str_amp_gpio, !32, !"__param_str_amp_gpio", i1 false, i1 false}
!56 = !{ptr @__param_arr_amp_gpio, !32, !"__param_arr_amp_gpio", i1 false, i1 false}
!57 = !{ptr @amp_gpio, !58, !"amp_gpio", i1 false, i1 false}
!58 = !{!"../sound/pci/maestro3.c", i32 49, i32 12}
!59 = !{ptr @.str, !37, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @m3_driver, !61, !"m3_driver", i1 false, i1 false}
!61 = !{!"../sound/pci/maestro3.c", i32 2705, i32 26}
!62 = !{ptr @snd_m3_ids, !63, !"snd_m3_ids", i1 false, i1 false}
!63 = !{!"../sound/pci/maestro3.c", i32 783, i32 35}
!64 = !{ptr @snd_m3_probe.dev, !65, !"dev", i1 false, i1 false}
!65 = !{!"../sound/pci/maestro3.c", i32 2642, i32 13}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/maestro3.c", i32 2667, i32 24}
!68 = !{ptr @.str.2, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/maestro3.c", i32 2671, i32 24}
!70 = !{ptr @.str.3, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/maestro3.c", i32 2674, i32 24}
!72 = !{ptr @.str.4, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/maestro3.c", i32 2682, i32 27}
!74 = !{ptr @.str.5, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/maestro3.c", i32 2683, i32 26}
!76 = !{ptr @.str.6, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/maestro3.c", i32 2506, i32 3}
!78 = !{ptr @.str.7, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.8, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.9, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @snd_m3_create._entry, !77, !"_entry", i1 false, i1 false}
!83 = !{ptr @snd_m3_create._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @snd_m3_create.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../sound/pci/maestro3.c", i32 2511, i32 2}
!86 = !{ptr @.str.11, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @snd_m3_create.__key.12, !88, !"__key", i1 false, i1 false}
!88 = !{!"../sound/pci/maestro3.c", i32 2525, i32 2}
!89 = !{ptr @.str.13, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.15, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/maestro3.c", i32 2534, i32 4}
!92 = !{ptr @.str.16, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @snd_m3_create._entry.14, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @snd_m3_create._entry_ptr.17, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.19, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/maestro3.c", i32 2545, i32 3}
!97 = !{ptr @snd_m3_create._entry.18, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @snd_m3_create._entry_ptr.20, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.21, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/maestro3.c", i32 2562, i32 11}
!101 = !{ptr @.str.22, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/maestro3.c", i32 2567, i32 11}
!103 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/maestro3.c", i32 2591, i32 3}
!105 = !{ptr @snd_m3_create._entry.23, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @snd_m3_create._entry_ptr.25, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/maestro3.c", i32 2603, i32 3}
!109 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @snd_m3_create._entry.26, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @snd_m3_create._entry_ptr.29, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/maestro3.c", i32 2625, i32 4}
!114 = !{ptr @snd_m3_create._entry.30, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @snd_m3_create._entry_ptr.32, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/maestro3.c", i32 806, i32 2}
!118 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/maestro3.c", i32 807, i32 2}
!120 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/maestro3.c", i32 808, i32 2}
!122 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/maestro3.c", i32 809, i32 2}
!124 = !{ptr @.str.37, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/maestro3.c", i32 810, i32 2}
!126 = !{ptr @m3_amp_quirk_list, !127, !"m3_amp_quirk_list", i1 false, i1 false}
!127 = !{!"../sound/pci/maestro3.c", i32 805, i32 35}
!128 = !{ptr @.str.38, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/maestro3.c", i32 815, i32 2}
!130 = !{ptr @.str.39, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/maestro3.c", i32 816, i32 2}
!132 = !{ptr @.str.40, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/maestro3.c", i32 817, i32 2}
!134 = !{ptr @m3_irda_quirk_list, !135, !"m3_irda_quirk_list", i1 false, i1 false}
!135 = !{!"../sound/pci/maestro3.c", i32 814, i32 35}
!136 = !{ptr @m3_hv_quirk_list, !137, !"m3_hv_quirk_list", i1 false, i1 false}
!137 = !{!"../sound/pci/maestro3.c", i32 822, i32 35}
!138 = !{ptr @m3_omnibook_quirk_list, !139, !"m3_omnibook_quirk_list", i1 false, i1 false}
!139 = !{!"../sound/pci/maestro3.c", i32 900, i32 35}
!140 = !{ptr @minisrc_lpf, !141, !"minisrc_lpf", i1 false, i1 false}
!141 = !{!"../sound/pci/maestro3.c", i32 2076, i32 18}
!142 = !{ptr @.str.41, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/maestro3.c", i32 2011, i32 3}
!144 = !{ptr @.str.42, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @snd_m3_ac97_reset.__UNIQUE_ID_ddebug258, !143, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!146 = !{ptr @.str.43, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/maestro3.c", i32 1879, i32 2}
!148 = !{ptr @.str.44, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @snd_m3_ac97_wait._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @snd_m3_ac97_wait._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @snd_m3_mixer.ops, !152, !"ops", i1 false, i1 false}
!152 = !{!"../sound/pci/maestro3.c", i32 2036, i32 39}
!153 = !{ptr @.str.45, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/maestro3.c", i32 2193, i32 3}
!155 = !{ptr @.str.46, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @snd_m3_assp_client_init._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @snd_m3_assp_client_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @snd_m3_playback_ops, !159, !"snd_m3_playback_ops", i1 false, i1 false}
!159 = !{!"../sound/pci/maestro3.c", i32 1815, i32 33}
!160 = !{ptr @snd_m3_playback, !161, !"snd_m3_playback", i1 false, i1 false}
!161 = !{!"../sound/pci/maestro3.c", i32 1660, i32 38}
!162 = !{ptr @.str.47, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/maestro3.c", i32 1383, i32 3}
!164 = !{ptr @.str.48, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @snd_m3_pcm_hw_params._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @snd_m3_pcm_hw_params._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @pv, !168, !"pv", i1 false, i1 false}
!168 = !{!"../sound/pci/maestro3.c", i32 1255, i32 3}
!169 = !{ptr @rv, !170, !"rv", i1 false, i1 false}
!170 = !{!"../sound/pci/maestro3.c", i32 1322, i32 3}
!171 = !{ptr @snd_m3_capture_ops, !172, !"snd_m3_capture_ops", i1 false, i1 false}
!172 = !{!"../sound/pci/maestro3.c", i32 1825, i32 33}
!173 = !{ptr @snd_m3_capture, !174, !"snd_m3_capture", i1 false, i1 false}
!174 = !{!"../sound/pci/maestro3.c", i32 1681, i32 38}
!175 = !{ptr @.str.49, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/maestro3.c", i32 2465, i32 43}
!177 = !{ptr @m3_pm, !178, !"m3_pm", i1 false, i1 false}
!178 = !{!"../sound/pci/maestro3.c", i32 2449, i32 8}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"auto-init"}
!189 = !{i8 0, i8 2}
!190 = !{i64 764993}
!191 = !{i64 2154919575}
!192 = !{i64 2154918982}
!193 = !{i64 764598}
!194 = !{i64 2154917515}
!195 = !{i64 764175}
!196 = !{i64 2154927643}
!197 = !{i64 2154927869}
!198 = !{i64 2154928223}
!199 = !{i64 2154928577}
!200 = !{i64 2154928931}
!201 = !{i64 2154963803}
!202 = !{i64 2154958958}
!203 = !{i64 2154959476}
!204 = !{i64 2154959719}
!205 = !{i64 2154960078}
!206 = !{i64 2154960422}
!207 = !{i64 2154960756}
!208 = !{i64 2154961090}
!209 = !{i64 2154961424}
!210 = !{i64 2154961758}
!211 = !{i64 764375}
!212 = !{i64 2154939780}
!213 = !{i64 2154934533}
!214 = !{i64 2154934809}
!215 = !{i64 2154936259}
!216 = !{i64 2154936943}
!217 = !{i64 2154938299}
!218 = !{i64 2154938983}
!219 = !{i64 2154940041}
!220 = !{i64 2154941071}
!221 = !{i64 2154941569}
!222 = !{i64 2154942041}
!223 = !{i64 2154942517}
!224 = !{i64 2154943009}
!225 = !{i64 2154944041}
!226 = !{i64 2154944528}
!227 = !{i64 2154932266}
!228 = !{i64 2154932108}
!229 = !{i64 2154918592}
!230 = !{i64 2148231952, i64 2148231957, i64 2148231970, i64 2148232014, i64 2148232048, i64 2148232069}
!231 = !{i64 2154951007}
!232 = !{i64 2154952410}
!233 = !{i64 2154953072}
!234 = !{i64 2154953486}
!235 = !{i64 2154954005}
!236 = !{i64 2154954492}
!237 = !{i64 2154954965}
!238 = !{i64 2154955436}
!239 = !{i64 2154956840}
!240 = !{i64 2154957503}
!241 = !{i64 2154957878}
!242 = !{i64 2154958345}
!243 = !{i64 2154929375}
!244 = !{i64 2154929689}
!245 = !{i64 2154929998}
!246 = !{i64 2154930234}
!247 = !{i64 2154930590}
!248 = !{i64 2154962126}
!249 = !{i64 2154962505}
!250 = !{i64 2154963426}
!251 = !{i64 2154963240}
!252 = !{!"branch_weights", i32 1, i32 2000}
