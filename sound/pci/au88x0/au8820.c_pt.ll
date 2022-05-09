; ModuleID = '/llk/IR_all_yes/sound/pci/au88x0/au8820.c_pt.bc'
source_filename = "../sound/pci/au88x0/au8820.c"
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
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
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
%struct.snd_vortex = type { ptr, [5 x ptr], ptr, ptr, [16 x %struct.stream_t], i32, [32 x %struct.stream_t], [32 x %struct.wt_voice_t], [6 x i8], [2 x i8], [4 x i8], [5 x i32], [16 x %struct.pcm_vol], i32, ptr, i32, ptr, i32, %struct.spinlock, ptr, i16, i16, i8 }
%struct.stream_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, ptr }
%struct.wt_voice_t = type { i32, i32, i32, i32, i32 }
%struct.pcm_vol = type { ptr, i32, i32, [4 x i32], [4 x i32] }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.85, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.85 = type { i32, [28 x i8] }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_mpu401 = type { ptr, i16, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.timer_list, ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
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

@__param_str_index = internal constant [17 x i8] c"snd_au8820.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype245 = internal constant [39 x i8] c"snd_au8820.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index246 = internal constant [63 x i8] c"snd_au8820.parm=index:Index value for Aureal Vortex soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_au8820.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype247 = internal constant [38 x i8] c"snd_au8820.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id248 = internal constant [58 x i8] c"snd_au8820.parm=id:ID string for Aureal Vortex soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_au8820.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype249 = internal constant [41 x i8] c"snd_au8820.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable250 = internal constant [55 x i8] c"snd_au8820.parm=enable:Enable Aureal Vortex soundcard.\00", section ".modinfo", align 1
@__param_str_pcifix = internal constant [18 x i8] c"snd_au8820.pcifix\00", align 1
@__param_arr_pcifix = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pcifix }, align 4
@__param_pcifix = internal constant %struct.kernel_param { ptr @__param_str_pcifix, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_pcifix } }, section "__param", align 4
@__UNIQUE_ID_pcifixtype251 = internal constant [40 x i8] c"snd_au8820.parmtype=pcifix:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcifix252 = internal constant [74 x i8] c"snd_au8820.parm=pcifix:Enable VIA-workaround for Aureal Vortex soundcard.\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [37 x i8] c"snd_au8820.description=Aureal vortex\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [44 x i8] c"snd_au8820.file=sound/pci/au88x0/snd-au8820\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [23 x i8] c"snd_au8820.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_snd_au8820__256_320_vortex_driver_init6 = internal global ptr @vortex_driver_init, section ".initcall6.init", align 4
@vortex_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_vortex_ids, ptr @snd_vortex_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_vortex_driver_exit = internal global ptr @vortex_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@pcifix = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_au8820\00", [21 x i8] zeroinitializer }, align 32
@snd_vortex_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4843, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_vortex_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"au8820\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Aureal Vortex %s\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%lx irq %i\00", [45 x i8] zeroinitializer }, align 32
@snd_vortex_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 147, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error to set DMA mask\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_vortex_create\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/au88x0/au88x0.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_vortex_create._entry_ptr = internal global ptr @snd_vortex_create._entry, section ".printk_index", align 4
@snd_vortex_create._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 175, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hw core init failed\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_vortex_create._entry_ptr.11 = internal global ptr @snd_vortex_create._entry.9, section ".printk_index", align 4
@snd_vortex_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 182, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot grab irq\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_vortex_create._entry_ptr.14 = internal global ptr @snd_vortex_create._entry.12, section ".printk_index", align 4
@vortex_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 2686, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init started\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vortex_core_init\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/pci/au88x0/au88x0_core.c\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vortex_core_init._entry_ptr = internal global ptr @vortex_core_init._entry, section ".printk_index", align 4
@vortex_core_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.17, i32 2731, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init.... done.\0A\00", [16 x i8] zeroinitializer }, align 32
@vortex_core_init._entry_ptr.21 = internal global ptr @vortex_core_init._entry.19, section ".printk_index", align 4
@vortex_core_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vortex->lock\00", [18 x i8] zeroinitializer }, align 32
@vortex_fifo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.17, i32 1034, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad adb fifo reset!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vortex_fifo_init\00", [47 x i8] zeroinitializer }, align 32
@vortex_fifo_init._entry_ptr = internal global ptr @vortex_fifo_init._entry, section ".printk_index", align 4
@vortex_fifo_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.17, i32 1047, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bad wt fifo reset (0x%08x, 0x%08x)!\0A\00", [59 x i8] zeroinitializer }, align 32
@vortex_fifo_init._entry_ptr.27 = internal global ptr @vortex_fifo_init._entry.25, section ".printk_index", align 4
@mchannels = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@rampchs = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@vortex_wt_SetReg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 191, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"WT SetReg: bank out of range. reg=0x%x, wt=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vortex_wt_SetReg\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/pci/au88x0/au88x0_synth.c\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vortex_wt_SetReg._entry_ptr = internal global ptr @vortex_wt_SetReg._entry, section ".printk_index", align 4
@vortex_wt_SetReg._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.30, i32 197, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WT SetReg: voice out of range\0A\00", [33 x i8] zeroinitializer }, align 32
@vortex_wt_SetReg._entry_ptr.34 = internal global ptr @vortex_wt_SetReg._entry.32, section ".printk_index", align 4
@vortex_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.17, i32 2423, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"missing irq source\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vortex_interrupt\00", [47 x i8] zeroinitializer }, align 32
@vortex_interrupt._entry_ptr = internal global ptr @vortex_interrupt._entry, section ".printk_index", align 4
@vortex_interrupt._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.17, i32 2431, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ fatal error\0A\00", [47 x i8] zeroinitializer }, align 32
@vortex_interrupt._entry_ptr.39 = internal global ptr @vortex_interrupt._entry.37, section ".printk_index", align 4
@vortex_interrupt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.17, i32 2434, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQ parity error\0A\00", [46 x i8] zeroinitializer }, align 32
@vortex_interrupt._entry_ptr.42 = internal global ptr @vortex_interrupt._entry.40, section ".printk_index", align 4
@vortex_interrupt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.17, i32 2437, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IRQ reg error\0A\00", [17 x i8] zeroinitializer }, align 32
@vortex_interrupt._entry_ptr.45 = internal global ptr @vortex_interrupt._entry.43, section ".printk_index", align 4
@vortex_interrupt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.17, i32 2440, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IRQ fifo error\0A\00", [16 x i8] zeroinitializer }, align 32
@vortex_interrupt._entry_ptr.48 = internal global ptr @vortex_interrupt._entry.46, section ".printk_index", align 4
@vortex_interrupt._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.36, ptr @.str.17, i32 2443, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IRQ dma error\0A\00", [17 x i8] zeroinitializer }, align 32
@vortex_interrupt._entry_ptr.51 = internal global ptr @vortex_interrupt._entry.49, section ".printk_index", align 4
@vortex_interrupt._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.36, ptr @.str.17, i32 2491, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown irq source %x\0A\00", [41 x i8] zeroinitializer }, align 32
@vortex_interrupt._entry_ptr.54 = internal global ptr @vortex_interrupt._entry.52, section ".printk_index", align 4
@vortex_adbdma_bufshift._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.17, i32 1210, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d virt=%d, real=%d, delta=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vortex_adbdma_bufshift\00", [41 x i8] zeroinitializer }, align 32
@vortex_adbdma_bufshift._entry_ptr = internal global ptr @vortex_adbdma_bufshift._entry, section ".printk_index", align 4
@vortex_wtdma_bufshift._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.17, i32 1481, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wt virt = %d, delta = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vortex_wtdma_bufshift\00", [42 x i8] zeroinitializer }, align 32
@vortex_wtdma_bufshift._entry_ptr = internal global ptr @vortex_wtdma_bufshift._entry, section ".printk_index", align 4
@vortex_core_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.17, i32 2740, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"shutdown started\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vortex_core_shutdown\00", [43 x i8] zeroinitializer }, align 32
@vortex_core_shutdown._entry_ptr = internal global ptr @vortex_core_shutdown._entry, section ".printk_index", align 4
@vortex_core_shutdown._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.17, i32 2762, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"shutdown.... done.\0A\00", [44 x i8] zeroinitializer }, align 32
@vortex_core_shutdown._entry_ptr.63 = internal global ptr @vortex_core_shutdown._entry.61, section ".printk_index", align 4
@snd_vortex_workaround._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.6, i32 102, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Activating latency workaround...\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_vortex_workaround\00", [42 x i8] zeroinitializer }, align 32
@snd_vortex_workaround._entry_ptr = internal global ptr @snd_vortex_workaround._entry, section ".printk_index", align 4
@vortex_fix_latency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.6, i32 51, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vortex latency is 0xff\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vortex_fix_latency\00", [45 x i8] zeroinitializer }, align 32
@vortex_fix_latency._entry_ptr = internal global ptr @vortex_fix_latency._entry, section ".printk_index", align 4
@vortex_fix_latency._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.6, i32 54, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"could not set vortex latency: pci error 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@vortex_fix_latency._entry_ptr.70 = internal global ptr @vortex_fix_latency._entry.68, section ".printk_index", align 4
@vortex_fix_agp_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.6, i32 75, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bridge config is 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vortex_fix_agp_bridge\00", [42 x i8] zeroinitializer }, align 32
@vortex_fix_agp_bridge._entry_ptr = internal global ptr @vortex_fix_agp_bridge._entry, section ".printk_index", align 4
@vortex_fix_agp_bridge._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.72, ptr @.str.6, i32 78, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@vortex_fix_agp_bridge._entry_ptr.74 = internal global ptr @vortex_fix_agp_bridge._entry.73, section ".printk_index", align 4
@snd_vortex_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @vortex_codec_write, ptr @vortex_codec_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Master Mono Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Master Mono Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vortex_codec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.17, i32 2548, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ac97 codec stuck busy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vortex_codec_write\00", [45 x i8] zeroinitializer }, align 32
@vortex_codec_write._entry_ptr = internal global ptr @vortex_codec_write._entry, section ".printk_index", align 4
@vortex_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.79, ptr @.str.17, i32 2574, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vortex_codec_read\00", [46 x i8] zeroinitializer }, align 32
@vortex_codec_read._entry_ptr = internal global ptr @vortex_codec_read._entry, section ".printk_index", align 4
@vortex_codec_read._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.17, i32 2589, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ac97 address never arrived\0A\00", [36 x i8] zeroinitializer }, align 32
@vortex_codec_read._entry_ptr.82 = internal global ptr @vortex_codec_read._entry.80, section ".printk_index", align 4
@vortex_pcm_prettyname = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@vortex_pcm_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], [44 x i8] zeroinitializer }, align 32
@snd_vortex_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_vortex_pcm_open, ptr @snd_vortex_pcm_close, ptr null, ptr @snd_vortex_pcm_hw_params, ptr @snd_vortex_pcm_hw_free, ptr @snd_vortex_pcm_prepare, ptr @snd_vortex_pcm_trigger, ptr null, ptr @snd_vortex_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_pcm_std_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@snd_vortex_mixer_spdif = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_vortex_spdif_info, ptr @snd_vortex_spdif_get, ptr @snd_vortex_spdif_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.133, i32 0, i32 1, i32 0, ptr @snd_vortex_spdif_info, ptr @snd_vortex_spdif_mask_get, ptr null, %union.anon.87 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@snd_vortex_pcm_vol = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.134, i32 0, i32 275, i32 0, ptr @snd_vortex_pcm_vol_info, ptr @snd_vortex_pcm_vol_get, ptr @snd_vortex_pcm_vol_put, %union.anon.87 { ptr @vortex_pcm_vol_db_scale }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Aureal Vortex ADB\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aureal Vortex SPDIF\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Aureal Vortex A3D\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Aureal Vortex WT\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Aureal Vortex I2S\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adb\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"a3d\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wt\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@snd_vortex_playback_hw_spdif = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 524547, i64 3407878, i32 224, i32 32000, i32 48000, i32 1, i32 2, i32 65536, i32 256, i32 4096, i32 2, i32 64, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_vortex_playback_hw_adb = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 524547, i64 3145734, i32 1073741824, i32 5000, i32 48000, i32 1, i32 2, i32 65536, i32 32, i32 4096, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_vortex_playback_hw_wt = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 1073742078, i32 8000, i32 48000, i32 1, i32 2, i32 65536, i32 1024, i32 4096, i32 2, i32 64, i32 0 }, [32 x i8] zeroinitializer }, align 32
@resnum = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 16, i32 16, i32 16, i32 0], [44 x i8] zeroinitializer }, align 32
@vortex_adb_checkinout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.17, i32 2045, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"FATAL: ResManager: resource type %d exhausted.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vortex_adb_checkinout\00", [42 x i8] zeroinitializer }, align 32
@vortex_adb_checkinout._entry_ptr = internal global ptr @vortex_adb_checkinout._entry, section ".printk_index", align 4
@vortex_adb_addroutes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.17, i32 1667, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"vortex_adb_addroutes: unending route! 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vortex_adb_addroutes\00", [43 x i8] zeroinitializer }, align 32
@vortex_adb_addroutes._entry_ptr = internal global ptr @vortex_adb_addroutes._entry, section ".printk_index", align 4
@vortex_src_addWTD._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.17, i32 676, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vortex_src_addWTD: lifeboat overflow\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vortex_src_addWTD\00", [46 x i8] zeroinitializer }, align 32
@vortex_src_addWTD._entry_ptr = internal global ptr @vortex_src_addWTD._entry, section ".printk_index", align 4
@vortex_mixer_addWTD._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.17, i32 277, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vortex_mixer_addWTD: lifeboat overflow\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vortex_mixer_addWTD\00", [44 x i8] zeroinitializer }, align 32
@vortex_mixer_addWTD._entry_ptr = internal global ptr @vortex_mixer_addWTD._entry, section ".printk_index", align 4
@vortex_adb_delroutes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.17, i32 1703, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"vortex_adb_delroutes: route not found! 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vortex_adb_delroutes\00", [43 x i8] zeroinitializer }, align 32
@vortex_adb_delroutes._entry_ptr = internal global ptr @vortex_adb_delroutes._entry, section ".printk_index", align 4
@vortex_src_delWTD._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.17, i32 694, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"src alarm\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vortex_src_delWTD\00", [46 x i8] zeroinitializer }, align 32
@vortex_src_delWTD._entry_ptr = internal global ptr @vortex_src_delWTD._entry, section ".printk_index", align 4
@vortex_src_delWTD._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.17, i32 716, ptr @.str.31, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"srcdelWTD: error, lifeboat overflow\0A\00", [59 x i8] zeroinitializer }, align 32
@vortex_src_delWTD._entry_ptr.108 = internal global ptr @vortex_src_delWTD._entry.106, section ".printk_index", align 4
@vortex_mixer_delWTD._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.17, i32 294, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mix ALARM %x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vortex_mixer_delWTD\00", [44 x i8] zeroinitializer }, align 32
@vortex_mixer_delWTD._entry_ptr = internal global ptr @vortex_mixer_delWTD._entry, section ".printk_index", align 4
@vortex_mixer_delWTD._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.17, i32 316, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mixdelWTD: error lifeboat overflow\0A\00", [60 x i8] zeroinitializer }, align 32
@vortex_mixer_delWTD._entry_ptr.113 = internal global ptr @vortex_mixer_delWTD._entry.111, section ".printk_index", align 4
@vortex_wt_allocroute.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.30, ptr @.str.115, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vortex_wt_allocroute\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WT PARM3: %x\0A\00", [18 x i8] zeroinitializer }, align 32
@vortex_wt_allocroute.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.30, ptr @.str.116, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WT GMODE: %x\0A\00", [18 x i8] zeroinitializer }, align 32
@vortex_wt_allocroute.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.30, ptr @.str.117, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WT GMODE 2 : %x\0A\00", [47 x i8] zeroinitializer }, align 32
@vortex_alsafmt_aspfmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.17, i32 2797, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"format unsupported %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vortex_alsafmt_aspfmt\00", [42 x i8] zeroinitializer }, align 32
@vortex_alsafmt_aspfmt._entry_ptr = internal global ptr @vortex_alsafmt_aspfmt._entry, section ".printk_index", align 4
@vortex_src_persist_convratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.17, i32 483, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Src cvr fail\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vortex_src_persist_convratio\00", [35 x i8] zeroinitializer }, align 32
@vortex_src_persist_convratio._entry_ptr = internal global ptr @vortex_src_persist_convratio._entry, section ".printk_index", align 4
@snd_vortex_pcm_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.124, i32 354, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wt start %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_vortex_pcm_trigger\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/pci/au88x0/au88x0_pcm.c\00", [34 x i8] zeroinitializer }, align 32
@snd_vortex_pcm_trigger._entry_ptr = internal global ptr @snd_vortex_pcm_trigger._entry, section ".printk_index", align 4
@snd_vortex_pcm_trigger._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.123, ptr @.str.124, i32 367, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wt stop %d\0A\00", [20 x i8] zeroinitializer }, align 32
@snd_vortex_pcm_trigger._entry_ptr.127 = internal global ptr @snd_vortex_pcm_trigger._entry.125, section ".printk_index", align 4
@vortex_fifo_setadbctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.17, i32 811, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vortex_fifo_setadbctrl fail\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vortex_fifo_setadbctrl\00", [41 x i8] zeroinitializer }, align 32
@vortex_fifo_setadbctrl._entry_ptr = internal global ptr @vortex_fifo_setadbctrl._entry, section ".printk_index", align 4
@vortex_fifo_setwtctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.17, i32 907, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vortex_fifo_setwtctrl fail\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vortex_fifo_setwtctrl\00", [42 x i8] zeroinitializer }, align 32
@vortex_fifo_setwtctrl._entry_ptr = internal global ptr @vortex_fifo_setwtctrl._entry, section ".printk_index", align 4
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@vortex_pcm_vol_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -9600, i32 2400], [16 x i8] zeroinitializer }, align 32
@snd_vortex_midi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.137, i32 62, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"midi port doesn't acknowledge!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_vortex_midi\00", [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/pci/au88x0/au88x0_mpu401.c\00", [63 x i8] zeroinitializer }, align 32
@snd_vortex_midi._entry_ptr = internal global ptr @snd_vortex_midi._entry, section ".printk_index", align 4
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s MIDI %d\00", [21 x i8] zeroinitializer }, align 32
@vortex_gameport_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.141, i32 89, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vortex_gameport_register\00", [39 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/pci/au88x0/au88x0_game.c\00", [33 x i8] zeroinitializer }, align 32
@vortex_gameport_register._entry_ptr = internal global ptr @vortex_gameport_register._entry, section ".printk_index", align 4
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AU88x0 Gameport\00", [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.148 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 18, i64 20, i64 21, i64 31]
@__sancov_gen_cov_switch_values.149 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.160 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.163 = internal global [5 x i64] [i64 3, i64 16, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.166 = private unnamed_addr constant [14 x i8] c"vortex_driver\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 314, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 28, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 29, i32 14 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 30, i32 13 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"pcifix\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 31, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 320, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"snd_vortex_ids\00", align 1
@___asan_gen_.185 = private constant [29 x i8] c"../sound/pci/au88x0/au8820.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 4, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 198, i32 13 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 224, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 225, i32 27 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 226, i32 26 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 147, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 175, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 182, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2686, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2731, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2732, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1034, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1045, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant [10 x i8] c"mchannels\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 74, i32 12 }
@___asan_gen_.274 = private unnamed_addr constant [8 x i8] c"rampchs\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 75, i32 12 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 189, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 196, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2423, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2431, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2434, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2437, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2440, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2443, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2491, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1208, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1480, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2740, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2762, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 101, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 51, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 53, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 75, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [29 x i8] c"../sound/pci/au88x0/au88x0.c\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 77, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 28, i32 39 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 42, i32 27 }
@___asan_gen_.419 = private unnamed_addr constant [35 x i8] c"../sound/pci/au88x0/au88x0_mixer.c\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 43, i32 27 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2548, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2574, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2588, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant [22 x i8] c"vortex_pcm_prettyname\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 436, i32 27 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 616, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant [16 x i8] c"vortex_pcm_name\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 443, i32 27 }
@___asan_gen_.451 = private unnamed_addr constant [24 x i8] c"snd_vortex_playback_ops\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 422, i32 33 }
@___asan_gen_.454 = private unnamed_addr constant [23 x i8] c"snd_vortex_mixer_spdif\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 500, i32 38 }
@___asan_gen_.457 = private unnamed_addr constant [19 x i8] c"snd_vortex_pcm_vol\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 582, i32 38 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 437, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 438, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 439, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 440, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 441, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 444, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 445, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 446, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 447, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 448, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [29 x i8] c"snd_vortex_playback_hw_spdif\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 62, i32 38 }
@___asan_gen_.493 = private unnamed_addr constant [27 x i8] c"snd_vortex_playback_hw_adb\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 21, i32 38 }
@___asan_gen_.496 = private unnamed_addr constant [26 x i8] c"snd_vortex_playback_hw_wt\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 85, i32 38 }
@___asan_gen_.499 = private unnamed_addr constant [7 x i8] c"resnum\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1992, i32 18 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2043, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1665, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 675, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 276, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1701, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 694, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 715, i32 6 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 294, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 315, i32 6 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 81, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 89, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [35 x i8] c"../sound/pci/au88x0/au88x0_synth.c\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 98, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2796, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 483, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 354, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 367, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 810, i32 4 }
@___asan_gen_.641 = private unnamed_addr constant [34 x i8] c"../sound/pci/au88x0/au88x0_core.c\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 906, i32 4 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 503, i32 12 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 511, i32 12 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 584, i32 10 }
@___asan_gen_.652 = private unnamed_addr constant [24 x i8] c"vortex_pcm_vol_db_scale\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [33 x i8] c"../sound/pci/au88x0/au88x0_pcm.c\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 580, i32 14 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 62, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant [36 x i8] c"../sound/pci/au88x0/au88x0_mpu401.c\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.668, i32 94, i32 45 }
@___asan_gen_.670 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 88, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 93, i32 24 }
@___asan_gen_.685 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.686 = private unnamed_addr constant [34 x i8] c"../sound/pci/au88x0/au88x0_game.c\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 94, i32 24 }
@llvm.compiler.used = appending global [237 x ptr] [ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_enable250, ptr @__UNIQUE_ID_enabletype249, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_id248, ptr @__UNIQUE_ID_idtype247, ptr @__UNIQUE_ID_index246, ptr @__UNIQUE_ID_indextype245, ptr @__UNIQUE_ID_license255, ptr @__UNIQUE_ID_pcifix252, ptr @__UNIQUE_ID_pcifixtype251, ptr @__exitcall_vortex_driver_exit, ptr @__initcall__kmod_snd_au8820__256_320_vortex_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_pcifix, ptr @snd_vortex_create._entry, ptr @snd_vortex_create._entry.12, ptr @snd_vortex_create._entry.9, ptr @snd_vortex_create._entry_ptr, ptr @snd_vortex_create._entry_ptr.11, ptr @snd_vortex_create._entry_ptr.14, ptr @snd_vortex_midi._entry, ptr @snd_vortex_midi._entry_ptr, ptr @snd_vortex_pcm_trigger._entry, ptr @snd_vortex_pcm_trigger._entry.125, ptr @snd_vortex_pcm_trigger._entry_ptr, ptr @snd_vortex_pcm_trigger._entry_ptr.127, ptr @snd_vortex_workaround._entry, ptr @snd_vortex_workaround._entry_ptr, ptr @vortex_adb_addroutes._entry, ptr @vortex_adb_addroutes._entry_ptr, ptr @vortex_adb_checkinout._entry, ptr @vortex_adb_checkinout._entry_ptr, ptr @vortex_adb_delroutes._entry, ptr @vortex_adb_delroutes._entry_ptr, ptr @vortex_adbdma_bufshift._entry, ptr @vortex_adbdma_bufshift._entry_ptr, ptr @vortex_alsafmt_aspfmt._entry, ptr @vortex_alsafmt_aspfmt._entry_ptr, ptr @vortex_codec_read._entry, ptr @vortex_codec_read._entry.80, ptr @vortex_codec_read._entry_ptr, ptr @vortex_codec_read._entry_ptr.82, ptr @vortex_codec_write._entry, ptr @vortex_codec_write._entry_ptr, ptr @vortex_core_init._entry, ptr @vortex_core_init._entry.19, ptr @vortex_core_init._entry_ptr, ptr @vortex_core_init._entry_ptr.21, ptr @vortex_core_shutdown._entry, ptr @vortex_core_shutdown._entry.61, ptr @vortex_core_shutdown._entry_ptr, ptr @vortex_core_shutdown._entry_ptr.63, ptr @vortex_driver_exit, ptr @vortex_fifo_init._entry, ptr @vortex_fifo_init._entry.25, ptr @vortex_fifo_init._entry_ptr, ptr @vortex_fifo_init._entry_ptr.27, ptr @vortex_fifo_setadbctrl._entry, ptr @vortex_fifo_setadbctrl._entry_ptr, ptr @vortex_fifo_setwtctrl._entry, ptr @vortex_fifo_setwtctrl._entry_ptr, ptr @vortex_fix_agp_bridge._entry, ptr @vortex_fix_agp_bridge._entry.73, ptr @vortex_fix_agp_bridge._entry_ptr, ptr @vortex_fix_agp_bridge._entry_ptr.74, ptr @vortex_fix_latency._entry, ptr @vortex_fix_latency._entry.68, ptr @vortex_fix_latency._entry_ptr, ptr @vortex_fix_latency._entry_ptr.70, ptr @vortex_gameport_register._entry, ptr @vortex_gameport_register._entry_ptr, ptr @vortex_interrupt._entry, ptr @vortex_interrupt._entry.37, ptr @vortex_interrupt._entry.40, ptr @vortex_interrupt._entry.43, ptr @vortex_interrupt._entry.46, ptr @vortex_interrupt._entry.49, ptr @vortex_interrupt._entry.52, ptr @vortex_interrupt._entry_ptr, ptr @vortex_interrupt._entry_ptr.39, ptr @vortex_interrupt._entry_ptr.42, ptr @vortex_interrupt._entry_ptr.45, ptr @vortex_interrupt._entry_ptr.48, ptr @vortex_interrupt._entry_ptr.51, ptr @vortex_interrupt._entry_ptr.54, ptr @vortex_mixer_addWTD._entry, ptr @vortex_mixer_addWTD._entry_ptr, ptr @vortex_mixer_delWTD._entry, ptr @vortex_mixer_delWTD._entry.111, ptr @vortex_mixer_delWTD._entry_ptr, ptr @vortex_mixer_delWTD._entry_ptr.113, ptr @vortex_src_addWTD._entry, ptr @vortex_src_addWTD._entry_ptr, ptr @vortex_src_delWTD._entry, ptr @vortex_src_delWTD._entry.106, ptr @vortex_src_delWTD._entry_ptr, ptr @vortex_src_delWTD._entry_ptr.108, ptr @vortex_src_persist_convratio._entry, ptr @vortex_src_persist_convratio._entry_ptr, ptr @vortex_wt_SetReg._entry, ptr @vortex_wt_SetReg._entry.32, ptr @vortex_wt_SetReg._entry_ptr, ptr @vortex_wt_SetReg._entry_ptr.34, ptr @vortex_wtdma_bufshift._entry, ptr @vortex_wtdma_bufshift._entry_ptr, ptr @vortex_driver, ptr @index, ptr @id, ptr @enable, ptr @pcifix, ptr @.str, ptr @snd_vortex_ids, ptr @snd_vortex_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @vortex_core_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @mchannels, ptr @rampchs, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @snd_vortex_mixer.ops, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @vortex_pcm_prettyname, ptr @.str.83, ptr @vortex_pcm_name, ptr @snd_vortex_playback_ops, ptr @snd_vortex_mixer_spdif, ptr @snd_vortex_pcm_vol, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @snd_vortex_playback_hw_spdif, ptr @snd_vortex_playback_hw_adb, ptr @snd_vortex_playback_hw_wt, ptr @resnum, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @vortex_pcm_vol_db_scale, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143], section "llvm.metadata"
@0 = internal global [174 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcifix to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_create._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_core_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_core_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_fifo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_fifo_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchannels to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rampchs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_wt_SetReg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_wt_SetReg._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_interrupt._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_interrupt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_interrupt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_interrupt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_interrupt._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_interrupt._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_adbdma_bufshift._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_wtdma_bufshift._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_core_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_core_shutdown._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_workaround._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_fix_latency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_fix_latency._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_fix_agp_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_fix_agp_bridge._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_codec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_codec_read._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_pcm_prettyname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_pcm_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_mixer_spdif to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_pcm_vol to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_playback_hw_spdif to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_playback_hw_adb to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_playback_hw_wt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resnum to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_adb_checkinout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_adb_addroutes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_src_addWTD._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_mixer_addWTD._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_adb_delroutes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_src_delWTD._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_src_delWTD._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_mixer_delWTD._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_mixer_delWTD._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_alsafmt_aspfmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_src_persist_convratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_pcm_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_pcm_trigger._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_fifo_setadbctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_fifo_setwtctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_pcm_vol_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vortex_midi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vortex_gameport_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vortex_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @vortex_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vortex_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @vortex_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vortex_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %rmidi.i = alloca ptr, align 4
  %id.i20.i = alloca %struct.snd_ctl_elem_id, align 4
  %id.i.i = alloca %struct.snd_ctl_elem_id, align 4
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %value.i56.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #12
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !358
  %1 = load i32, ptr @snd_vortex_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !359
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_vortex_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 5328, ptr noundef nonnull %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %12 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4) #15
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %11, align 4
  %pci_dev.i = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 19
  %15 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pci, ptr %pci_dev.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 7
  %16 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor.i, align 8
  %vendor6.i = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 20
  %18 = ptrtoint ptr %vendor6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %vendor6.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device.i, align 2
  %device7.i = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 21
  %21 = ptrtoint ptr %device7.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %device7.i, align 2
  store ptr %9, ptr %11, align 4
  %irq.i = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 17
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %irq.i, align 4
  %call9.i = call i32 @pcim_iomap_regions(ptr noundef %pci, i32 noundef 1, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end4.i.snd_vortex_create.exit_crit_edge

if.end4.i.snd_vortex_create.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_vortex_create.exit

if.end12.i:                                       ; preds = %if.end4.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %23 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resource.i, align 8
  %io.i = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 15
  %25 = ptrtoint ptr %io.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %io.i, align 4
  %call13.i = call ptr @pcim_iomap_table(ptr noundef %pci) #12
  %26 = ptrtoint ptr %call13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call13.i, align 4
  %mmio.i = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 16
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %mmio.i, align 4
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %11, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.15) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !360
  call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 75788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #12, !srcloc !361
  call void @msleep(i32 noundef 5) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !362
  call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %36, i32 75788
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #12, !srcloc !363
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  %38 = and i32 %37, -8193
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %40, i32 75788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %38) #12, !srcloc !361
  call void @msleep(i32 noundef 5) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !365
  call void @arm_heavy_mb() #12
  %41 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %42, i32 75776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 -1) #12, !srcloc !361
  %43 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %44, i32 72092
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #12, !srcloc !363
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !366
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end12.i
  %i.075.i.i.i = phi i32 [ 0, %if.end12.i ], [ %inc.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !367
  call void @arm_heavy_mb() #12
  %sub.i.i.i = sub nsw i32 0, %i.075.i.i.i
  %46 = call i32 @llvm.bswap.i32(i32 %sub.i.i.i) #12
  %47 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i, align 4
  %shl.i.i.i = shl i32 %i.075.i.i.i, 2
  %add.i.i.i = add nuw nsw i32 %shl.i.i.i, 71808
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 %add.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %46) #12, !srcloc !361
  call void @msleep(i32 noundef 2) #12
  %inc.i.i.i = add nuw nsw i32 %i.075.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %do.body1.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

do.body1.i.i.i:                                   ; preds = %do.body.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !368
  call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %50, i32 72068
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 -1476395008) #12, !srcloc !361
  call void @msleep(i32 noundef 2) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !369
  call void @arm_heavy_mb() #12
  %51 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i, align 4
  %add.ptr10.i.i.i = getelementptr i8, ptr %52, i32 72068
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i, i32 -1468006400) #12, !srcloc !361
  call void @msleep(i32 noundef 2) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !370
  call void @arm_heavy_mb() #12
  %53 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %54, i32 72068
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i.i, i32 -394264576) #12, !srcloc !361
  call void @msleep(i32 noundef 2) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !371
  call void @arm_heavy_mb() #12
  %55 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i, align 4
  %add.ptr20.i.i.i = getelementptr i8, ptr %56, i32 72068
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i.i, i32 -1468006400) #12, !srcloc !361
  call void @msleep(i32 noundef 2) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !372
  call void @arm_heavy_mb() #12
  %57 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i, align 4
  %add.ptr25.i.i.i = getelementptr i8, ptr %58, i32 72068
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i.i, i32 -1476395008) #12, !srcloc !361
  call void @msleep(i32 noundef 2) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !373
  call void @arm_heavy_mb() #12
  %59 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i, align 4
  %add.ptr30.i.i.i = getelementptr i8, ptr %60, i32 72068
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i.i, i32 -402653184) #12, !srcloc !361
  br label %do.body34.i.i.i

do.body34.i.i.i:                                  ; preds = %do.body34.i.i.i.do.body34.i.i.i_crit_edge, %do.body1.i.i.i
  %i.176.i.i.i = phi i32 [ 0, %do.body1.i.i.i ], [ %inc43.i.i.i, %do.body34.i.i.i.do.body34.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !374
  call void @arm_heavy_mb() #12
  %sub37.i.i.i = sub nsw i32 0, %i.176.i.i.i
  %61 = call i32 @llvm.bswap.i32(i32 %sub37.i.i.i) #12
  %62 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i, align 4
  %shl39.i.i.i = shl i32 %i.176.i.i.i, 2
  %add40.i.i.i = add nuw nsw i32 %shl39.i.i.i, 71808
  %add.ptr41.i.i.i = getelementptr i8, ptr %63, i32 %add40.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i.i.i, i32 %61) #12, !srcloc !361
  call void @msleep(i32 noundef 5) #12
  %inc43.i.i.i = add nuw nsw i32 %i.176.i.i.i, 1
  %exitcond77.not.i.i.i = icmp eq i32 %inc43.i.i.i, 32
  br i1 %exitcond77.not.i.i.i, label %vortex_codec_init.exit.i.i, label %do.body34.i.i.i.do.body34.i.i.i_crit_edge

do.body34.i.i.i.do.body34.i.i.i_crit_edge:        ; preds = %do.body34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34.i.i.i

vortex_codec_init.exit.i.i:                       ; preds = %do.body34.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !375
  call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i, align 4
  %add.ptr49.i.i.i = getelementptr i8, ptr %65, i32 72068
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i.i.i, i32 -402653184) #12, !srcloc !361
  call void @msleep(i32 noundef 1) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !376
  call void @arm_heavy_mb() #12
  %66 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i, align 4
  %add.ptr54.i.i.i = getelementptr i8, ptr %67, i32 72080
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i.i.i) #12, !srcloc !363
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !377
  %69 = or i32 %68, 196608
  %70 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i, align 4
  %add.ptr57.i.i.i = getelementptr i8, ptr %71, i32 72080
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i.i.i, i32 %69) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !378
  call void @arm_heavy_mb() #12
  %72 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %73, i32 67084
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i, i32 0) #12, !srcloc !361
  call fastcc void @vortex_adb_init(ptr noundef %11) #12
  call fastcc void @vortex_fifo_init(ptr noundef %11) #12
  %74 = call ptr @memset(ptr @mchannels, i32 0, i32 64)
  %75 = call ptr @memset(ptr @rampchs, i32 0, i32 64)
  br label %do.body.i4.i.i

do.body.i4.i.i:                                   ; preds = %do.body.i4.i.i.do.body.i4.i.i_crit_edge, %vortex_codec_init.exit.i.i
  %x.0129.i.i.i = phi i32 [ 95, %vortex_codec_init.exit.i.i ], [ %dec.i.i.i, %do.body.i4.i.i.do.body.i4.i.i_crit_edge ]
  %addr.0128.i.i.i = phi i32 [ 40316, %vortex_codec_init.exit.i.i ], [ %sub.i3.i.i, %do.body.i4.i.i.do.body.i4.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !379
  call void @arm_heavy_mb() #12
  %76 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %77, i32 %addr.0128.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 0) #12, !srcloc !361
  %sub.i3.i.i = add nsw i32 %addr.0128.i.i.i, -4
  %dec.i.i.i = add nsw i32 %x.0129.i.i.i, -1
  %cmp.not.i.i.i = icmp eq i32 %x.0129.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.body.i4.i.i.do.body4.i.i.i_crit_edge, label %do.body.i4.i.i.do.body.i4.i.i_crit_edge

do.body.i4.i.i.do.body.i4.i.i_crit_edge:          ; preds = %do.body.i4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i4.i.i

do.body.i4.i.i.do.body4.i.i.i_crit_edge:          ; preds = %do.body.i4.i.i
  br label %do.body4.i.i.i

do.body4.i.i.i:                                   ; preds = %do.body4.i.i.i.do.body4.i.i.i_crit_edge, %do.body.i4.i.i.do.body4.i.i.i_crit_edge
  %x.1131.i.i.i = phi i32 [ %dec11.i.i.i, %do.body4.i.i.i.do.body4.i.i.i_crit_edge ], [ 127, %do.body.i4.i.i.do.body4.i.i.i_crit_edge ]
  %addr.1130.i.i.i = phi i32 [ %sub9.i.i.i, %do.body4.i.i.i.do.body4.i.i.i_crit_edge ], [ 39932, %do.body.i4.i.i.do.body4.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !380
  call void @arm_heavy_mb() #12
  %78 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %79, i32 %addr.1130.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i.i, i32 0) #12, !srcloc !361
  %sub9.i.i.i = add nsw i32 %addr.1130.i.i.i, -4
  %dec11.i.i.i = add nsw i32 %x.1131.i.i.i, -1
  %cmp2.not.i.i.i = icmp eq i32 %x.1131.i.i.i, 0
  br i1 %cmp2.not.i.i.i, label %do.body4.i.i.i.do.body16.i.i.i_crit_edge, label %do.body4.i.i.i.do.body4.i.i.i_crit_edge

do.body4.i.i.i.do.body4.i.i.i_crit_edge:          ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i.i.i

do.body4.i.i.i.do.body16.i.i.i_crit_edge:         ; preds = %do.body4.i.i.i
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.body16.i.i.i.do.body16.i.i.i_crit_edge, %do.body4.i.i.i.do.body16.i.i.i_crit_edge
  %x.2133.i.i.i = phi i32 [ %dec23.i.i.i, %do.body16.i.i.i.do.body16.i.i.i_crit_edge ], [ 95, %do.body4.i.i.i.do.body16.i.i.i_crit_edge ]
  %addr.2132.i.i.i = phi i32 [ %sub21.i.i.i, %do.body16.i.i.i.do.body16.i.i.i_crit_edge ], [ 40316, %do.body4.i.i.i.do.body16.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !381
  call void @arm_heavy_mb() #12
  %80 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio.i, align 4
  %add.ptr20.i5.i.i = getelementptr i8, ptr %81, i32 %addr.2132.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i5.i.i, i32 0) #12, !srcloc !361
  %sub21.i.i.i = add nsw i32 %addr.2132.i.i.i, -4
  %dec23.i.i.i = add nsw i32 %x.2133.i.i.i, -1
  %cmp14.not.i.i.i = icmp eq i32 %x.2133.i.i.i, 0
  br i1 %cmp14.not.i.i.i, label %do.body16.i.i.i.do.body28.i.i.i_crit_edge, label %do.body16.i.i.i.do.body16.i.i.i_crit_edge

do.body16.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.i.i

do.body16.i.i.i.do.body28.i.i.i_crit_edge:        ; preds = %do.body16.i.i.i
  br label %do.body28.i.i.i

for.cond37.preheader.i.i.i:                       ; preds = %do.body28.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %82 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.i.i.i = getelementptr i8, ptr %83, i32 38972
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %84 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.1.i.i.i = getelementptr i8, ptr %85, i32 38968
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.1.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %86 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.2.i.i.i = getelementptr i8, ptr %87, i32 38964
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.2.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %88 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.3.i.i.i = getelementptr i8, ptr %89, i32 38960
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.3.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %90 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.4.i.i.i = getelementptr i8, ptr %91, i32 38956
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.4.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %92 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.5.i.i.i = getelementptr i8, ptr %93, i32 38952
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.5.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %94 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.6.i.i.i = getelementptr i8, ptr %95, i32 38948
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.6.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %96 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.7.i.i.i = getelementptr i8, ptr %97, i32 38944
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.7.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %98 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.8.i.i.i = getelementptr i8, ptr %99, i32 38940
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.8.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %100 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.9.i.i.i = getelementptr i8, ptr %101, i32 38936
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.9.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %102 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.10.i.i.i = getelementptr i8, ptr %103, i32 38932
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.10.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %104 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.11.i.i.i = getelementptr i8, ptr %105, i32 38928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.11.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %106 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.12.i.i.i = getelementptr i8, ptr %107, i32 38924
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.12.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %108 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.13.i.i.i = getelementptr i8, ptr %109, i32 38920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.13.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %110 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.14.i.i.i = getelementptr i8, ptr %111, i32 38916
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.14.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %112 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio.i, align 4
  %add.ptr44.15.i.i.i = getelementptr i8, ptr %113, i32 38912
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.15.i.i.i, i32 -2147483648) #12, !srcloc !361
  br label %do.body52.i.i.i

do.body28.i.i.i:                                  ; preds = %do.body28.i.i.i.do.body28.i.i.i_crit_edge, %do.body16.i.i.i.do.body28.i.i.i_crit_edge
  %x.3135.i.i.i = phi i32 [ %dec35.i.i.i, %do.body28.i.i.i.do.body28.i.i.i_crit_edge ], [ 511, %do.body16.i.i.i.do.body28.i.i.i_crit_edge ]
  %addr.3134.i.i.i = phi i32 [ %sub33.i.i.i, %do.body28.i.i.i.do.body28.i.i.i_crit_edge ], [ 38908, %do.body16.i.i.i.do.body28.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !383
  call void @arm_heavy_mb() #12
  %114 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio.i, align 4
  %add.ptr32.i.i.i = getelementptr i8, ptr %115, i32 %addr.3134.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i.i, i32 -2147483648) #12, !srcloc !361
  %sub33.i.i.i = add nsw i32 %addr.3134.i.i.i, -4
  %dec35.i.i.i = add nsw i32 %x.3135.i.i.i, -1
  %cmp26.not.i.i.i = icmp eq i32 %x.3135.i.i.i, 0
  br i1 %cmp26.not.i.i.i, label %for.cond37.preheader.i.i.i, label %do.body28.i.i.i.do.body28.i.i.i_crit_edge

do.body28.i.i.i.do.body28.i.i.i_crit_edge:        ; preds = %do.body28.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28.i.i.i

for.cond61.preheader.i.i.i:                       ; preds = %do.body52.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %116 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.i.i.i = getelementptr i8, ptr %117, i32 34876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %118 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.1.i.i.i = getelementptr i8, ptr %119, i32 34872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.1.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %120 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.2.i.i.i = getelementptr i8, ptr %121, i32 34868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.2.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %122 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.3.i.i.i = getelementptr i8, ptr %123, i32 34864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.3.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %124 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.4.i.i.i = getelementptr i8, ptr %125, i32 34860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.4.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %126 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.5.i.i.i = getelementptr i8, ptr %127, i32 34856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.5.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %128 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.6.i.i.i = getelementptr i8, ptr %129, i32 34852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.6.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %130 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.7.i.i.i = getelementptr i8, ptr %131, i32 34848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.7.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %132 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.8.i.i.i = getelementptr i8, ptr %133, i32 34844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.8.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %134 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.9.i.i.i = getelementptr i8, ptr %135, i32 34840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.9.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %136 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.10.i.i.i = getelementptr i8, ptr %137, i32 34836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.10.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %138 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.11.i.i.i = getelementptr i8, ptr %139, i32 34832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.11.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %140 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.12.i.i.i = getelementptr i8, ptr %141, i32 34828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.12.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %142 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.13.i.i.i = getelementptr i8, ptr %143, i32 34824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.13.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %144 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.14.i.i.i = getelementptr i8, ptr %145, i32 34820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.14.i.i.i, i32 -2147483648) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  call void @arm_heavy_mb() #12
  %146 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.15.i.i.i = getelementptr i8, ptr %147, i32 34816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.15.i.i.i, i32 -2147483648) #12, !srcloc !361
  br label %do.body76.i.i.i

do.body52.i.i.i:                                  ; preds = %do.body52.i.i.i.do.body52.i.i.i_crit_edge, %for.cond37.preheader.i.i.i
  %x.5139.i.i.i = phi i32 [ 511, %for.cond37.preheader.i.i.i ], [ %dec59.i.i.i, %do.body52.i.i.i.do.body52.i.i.i_crit_edge ]
  %addr.5138.i.i.i = phi i32 [ 34812, %for.cond37.preheader.i.i.i ], [ %sub57.i.i.i, %do.body52.i.i.i.do.body52.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  call void @arm_heavy_mb() #12
  %148 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mmio.i, align 4
  %add.ptr56.i.i.i = getelementptr i8, ptr %149, i32 %addr.5138.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i.i.i, i32 -2147483648) #12, !srcloc !361
  %sub57.i.i.i = add nsw i32 %addr.5138.i.i.i, -4
  %dec59.i.i.i = add nsw i32 %x.5139.i.i.i, -1
  %cmp50.not.i.i.i = icmp eq i32 %x.5139.i.i.i, 0
  br i1 %cmp50.not.i.i.i, label %for.cond61.preheader.i.i.i, label %do.body52.i.i.i.do.body52.i.i.i_crit_edge

do.body52.i.i.i.do.body52.i.i.i_crit_edge:        ; preds = %do.body52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body52.i.i.i

do.body76.i.i.i:                                  ; preds = %do.body76.i.i.i.do.body76.i.i.i_crit_edge, %for.cond61.preheader.i.i.i
  %x.7143.i.i.i = phi i32 [ 37, %for.cond61.preheader.i.i.i ], [ %dec83.i.i.i, %do.body76.i.i.i.do.body76.i.i.i_crit_edge ]
  %addr.7142.i.i.i = phi i32 [ 40596, %for.cond61.preheader.i.i.i ], [ %sub81.i.i.i, %do.body76.i.i.i.do.body76.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  call void @arm_heavy_mb() #12
  %150 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mmio.i, align 4
  %add.ptr80.i.i.i = getelementptr i8, ptr %151, i32 %addr.7142.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i.i.i, i32 0) #12, !srcloc !361
  %sub81.i.i.i = add nsw i32 %addr.7142.i.i.i, -4
  %dec83.i.i.i = add nsw i32 %x.7143.i.i.i, -1
  %cmp74.not.i.i.i = icmp eq i32 %x.7143.i.i.i, 0
  br i1 %cmp74.not.i.i.i, label %vortex_mixer_init.exit.i.i, label %do.body76.i.i.i.do.body76.i.i.i_crit_edge

do.body76.i.i.i.do.body76.i.i.i_crit_edge:        ; preds = %do.body76.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body76.i.i.i

vortex_mixer_init.exit.i.i:                       ; preds = %do.body76.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  call void @arm_heavy_mb() #12
  %152 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mmio.i, align 4
  %add.ptr89.i.i.i = getelementptr i8, ptr %153, i32 40704
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  call void @arm_heavy_mb() #12
  %154 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %155, i32 52424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 -16711680) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %156 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i8.i.i = getelementptr i8, ptr %157, i32 52284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i8.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %158 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.1.i.i.i = getelementptr i8, ptr %159, i32 52280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.1.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %160 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.2.i.i.i = getelementptr i8, ptr %161, i32 52276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.2.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %162 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.3.i.i.i = getelementptr i8, ptr %163, i32 52272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.3.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %164 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.4.i.i.i = getelementptr i8, ptr %165, i32 52268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.4.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %166 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.5.i.i.i = getelementptr i8, ptr %167, i32 52264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.5.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %168 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.6.i.i.i = getelementptr i8, ptr %169, i32 52260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.6.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %170 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.7.i.i.i = getelementptr i8, ptr %171, i32 52256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.7.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %172 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.8.i.i.i = getelementptr i8, ptr %173, i32 52252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.8.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %174 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.9.i.i.i = getelementptr i8, ptr %175, i32 52248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.9.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %176 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.10.i.i.i = getelementptr i8, ptr %177, i32 52244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.10.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %178 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.11.i.i.i = getelementptr i8, ptr %179, i32 52240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.11.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %180 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.12.i.i.i = getelementptr i8, ptr %181, i32 52236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.12.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %182 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.13.i.i.i = getelementptr i8, ptr %183, i32 52232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.13.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %184 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.14.i.i.i = getelementptr i8, ptr %185, i32 52228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.14.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  call void @arm_heavy_mb() #12
  %186 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.15.i.i.i = getelementptr i8, ptr %187, i32 52224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.15.i.i.i, i32 0) #12, !srcloc !361
  br label %do.body9.i.i.i

do.body9.i.i.i:                                   ; preds = %do.body9.i.i.i.do.body9.i.i.i_crit_edge, %vortex_mixer_init.exit.i.i
  %x.129.i.i.i = phi i32 [ %dec16.i.i.i, %do.body9.i.i.i.do.body9.i.i.i_crit_edge ], [ 21, %vortex_mixer_init.exit.i.i ]
  %addr.128.i.i.i = phi i32 [ %sub14.i.i.i, %do.body9.i.i.i.do.body9.i.i.i_crit_edge ], [ 52372, %vortex_mixer_init.exit.i.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !390
  call void @arm_heavy_mb() #12
  %188 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mmio.i, align 4
  %add.ptr13.i.i.i = getelementptr i8, ptr %189, i32 %addr.128.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i.i, i32 0) #12, !srcloc !361
  %sub14.i.i.i = add nsw i32 %addr.128.i.i.i, -4
  %dec16.i.i.i = add nsw i32 %x.129.i.i.i, -1
  %cmp7.not.i.i.i = icmp eq i32 %x.129.i.i.i, 0
  br i1 %cmp7.not.i.i.i, label %vortex_srcblock_init.exit.i.i, label %do.body9.i.i.i.do.body9.i.i.i_crit_edge

do.body9.i.i.i.do.body9.i.i.i_crit_edge:          ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9.i.i.i

vortex_srcblock_init.exit.i.i:                    ; preds = %do.body9.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !391
  call void @arm_heavy_mb() #12
  %190 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mmio.i, align 4
  %add.ptr188.i.i.i.i = getelementptr i8, ptr %191, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188.i.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !391
  call void @arm_heavy_mb() #12
  %192 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mmio.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 -1575354368) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !391
  call void @arm_heavy_mb() #12
  %194 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mmio.i, align 4
  %add.ptr188.i69.i.i.i = getelementptr i8, ptr %195, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188.i69.i.i.i, i32 16) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !391
  call void @arm_heavy_mb() #12
  %196 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mmio.i, align 4
  %add.ptr188.i71.i.i.i = getelementptr i8, ptr %197, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188.i71.i.i.i, i32 33536) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !391
  call void @arm_heavy_mb() #12
  %198 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio.i, align 4
  %add.ptr188.i73.i.i.i = getelementptr i8, ptr %199, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188.i73.i.i.i, i32 33536) #12, !srcloc !361
  br label %for.body13.i.i.i

for.body13.i.i.i:                                 ; preds = %for.body13.i.i.i.for.body13.i.i.i_crit_edge, %vortex_srcblock_init.exit.i.i
  %edi.180.i.i.i = phi i32 [ 0, %vortex_srcblock_init.exit.i.i ], [ %inc20.i.i.i, %for.body13.i.i.i.for.body13.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !392
  call void @arm_heavy_mb() #12
  %200 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mmio.i, align 4
  %and85.i.i.i.i = shl nuw nsw i32 %edi.180.i.i.i, 10
  %shl86.i.i.i.i = and i32 %and85.i.i.i.i, 67076096
  %and88.i.i.i.i = shl nuw nsw i32 %edi.180.i.i.i, 4
  %add87.i.i.i.i = or i32 %shl86.i.i.i.i, %and88.i.i.i.i
  %add91.i.i.i.i = or i32 %add87.i.i.i.i, 524
  %add.ptr93.i.i.i.i = getelementptr i8, ptr %201, i32 %add91.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !393
  call void @arm_heavy_mb() #12
  %202 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mmio.i, align 4
  %add77.i.i.i.i = or i32 %add87.i.i.i.i, 520
  %add.ptr79.i.i.i.i = getelementptr i8, ptr %203, i32 %add77.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @arm_heavy_mb() #12
  %204 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mmio.i, align 4
  %add63.i.i.i.i = or i32 %add87.i.i.i.i, 516
  %add.ptr65.i.i.i.i = getelementptr i8, ptr %205, i32 %add63.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  call void @arm_heavy_mb() #12
  %206 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mmio.i, align 4
  %add48.i.i.i.i = or i32 %add87.i.i.i.i, 512
  %add.ptr51.i.i.i.i = getelementptr i8, ptr %207, i32 %add48.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  call void @arm_heavy_mb() #12
  %208 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mmio.i, align 4
  %shl118.i.i.i.i = or i32 %add87.i.i.i.i, 1036
  %add.ptr119.i.i.i.i = getelementptr i8, ptr %209, i32 %shl118.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  call void @arm_heavy_mb() #12
  %210 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %mmio.i, align 4
  %shl131.i.i.i.i = or i32 %add87.i.i.i.i, 1032
  %add.ptr132.i.i.i.i = getelementptr i8, ptr %211, i32 %shl131.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132.i.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  call void @arm_heavy_mb() #12
  %212 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mmio.i, align 4
  %shl144.i.i.i.i = or i32 %add87.i.i.i.i, 1028
  %add.ptr145.i.i.i.i = getelementptr i8, ptr %213, i32 %shl144.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145.i.i.i.i, i32 0) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %214 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %mmio.i, align 4
  %shl157.i.i.i.i = or i32 %add87.i.i.i.i, 1024
  %add.ptr158.i.i.i.i = getelementptr i8, ptr %215, i32 %shl157.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158.i.i.i.i, i32 0) #12, !srcloc !361
  %inc20.i.i.i = add nuw nsw i32 %edi.180.i.i.i, 1
  %exitcond.not.i9.i.i = icmp eq i32 %inc20.i.i.i, 32
  br i1 %exitcond.not.i9.i.i, label %vortex_core_init.exit.i, label %for.body13.i.i.i.for.body13.i.i.i_crit_edge

for.body13.i.i.i.for.body13.i.i.i_crit_edge:      ; preds = %for.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13.i.i.i

vortex_core_init.exit.i:                          ; preds = %for.body13.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !391
  call void @arm_heavy_mb() #12
  %216 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mmio.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 -1558577152) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %218 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %219, i32 72092
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 -1879048192) #12, !srcloc !361
  %220 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %11, align 4
  %dev28.i.i = getelementptr inbounds %struct.snd_card, ptr %221, i32 0, i32 27
  %222 = ptrtoint ptr %dev28.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev28.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %223, ptr noundef nonnull @.str.20) #15
  %lock.i.i = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 18
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @vortex_core_init.__key, i16 noundef signext 3) #12
  %irq24.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %224 = ptrtoint ptr %irq24.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %irq24.i, align 4
  %call.i73.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %225, ptr noundef nonnull @vortex_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool26.not.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool26.not.i, label %snd_vortex_create.exit.thread105, label %do.end30.i

do.end30.i:                                       ; preds = %vortex_core_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev31.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %226 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev31.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %227, ptr noundef nonnull @.str.13) #15
  br label %snd_vortex_create.exit

snd_vortex_create.exit.thread105:                 ; preds = %vortex_core_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %228 = ptrtoint ptr %irq24.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %irq24.i, align 4
  %230 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %231 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %229, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %232 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @snd_vortex_free, ptr %private_free.i, align 4
  call void @pci_set_master(ptr noundef %pci) #12
  br label %if.end11

snd_vortex_create.exit:                           ; preds = %do.end30.i, %if.end4.i.snd_vortex_create.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i73.i, %do.end30.i ], [ %call9.i, %if.end4.i.snd_vortex_create.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp9, label %snd_vortex_create.exit.cleanup_crit_edge, label %snd_vortex_create.exit.if.end11_crit_edge

snd_vortex_create.exit.if.end11_crit_edge:        ; preds = %snd_vortex_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

snd_vortex_create.exit.cleanup_crit_edge:         ; preds = %snd_vortex_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %snd_vortex_create.exit.if.end11_crit_edge, %snd_vortex_create.exit.thread105
  %233 = load i32, ptr @snd_vortex_probe.dev, align 4
  %arrayidx12 = getelementptr [32 x i32], ptr @pcifix, i32 0, i32 %233
  %234 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %235)
  %cmp.i86 = icmp eq i32 %235, 255
  br i1 %cmp.i86, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end11
  %call.i87 = call ptr @pci_get_device(i32 noundef 4358, i32 noundef 33541, ptr noundef null) #12
  %cmp1.i = icmp eq ptr %call.i87, null
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.do.end.i90_crit_edge

if.then.i.do.end.i90_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i90

if.then2.i:                                       ; preds = %if.then.i
  %call3.i = call ptr @pci_get_device(i32 noundef 4358, i32 noundef 34200, ptr noundef null) #12
  %cmp4.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.i, label %if.end7.i, label %if.then2.i.do.end.i90_crit_edge

if.then2.i.do.end.i90_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i90

if.end7.i:                                        ; preds = %if.then2.i
  %call6.i = call ptr @pci_get_device(i32 noundef 4130, i32 noundef 28679, ptr noundef null) #12
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.end7.i.snd_vortex_workaround.exit_crit_edge, label %if.end7.i.do.end.i90_crit_edge

if.end7.i.do.end.i90_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i90

if.end7.i.snd_vortex_workaround.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_vortex_workaround.exit

do.end.i90:                                       ; preds = %if.end7.i.do.end.i90_crit_edge, %if.then2.i.do.end.i90_crit_edge, %if.then.i.do.end.i90_crit_edge
  %via.074.i = phi ptr [ %call6.i, %if.end7.i.do.end.i90_crit_edge ], [ %call.i87, %if.then.i.do.end.i90_crit_edge ], [ %call3.i, %if.then2.i.do.end.i90_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.64) #15
  %call.i.i89 = call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef 64, i8 noundef zeroext -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %tobool.not.i.i = icmp eq i32 %call.i.i89, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %do.end3.i.i

do.end.i.i:                                       ; preds = %do.end.i90
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.66) #15
  br label %vortex_fix_latency.exit.i

do.end3.i.i:                                      ; preds = %do.end.i90
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %call.i.i89) #15
  br label %vortex_fix_latency.exit.i

vortex_fix_latency.exit.i:                        ; preds = %do.end3.i.i, %do.end.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #12
  %236 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 -1, ptr %value.i.i, align 1, !annotation !358
  %call.i46.i = call i32 @pci_read_config_byte(ptr noundef nonnull %via.074.i, i32 noundef 66, ptr noundef nonnull %value.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool.not.i47.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool.not.i47.i, label %if.then.i.i, label %vortex_fix_latency.exit.i.do.end13.i.i_crit_edge

vortex_fix_latency.exit.i.do.end13.i.i_crit_edge: ; preds = %vortex_fix_latency.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i.i

if.then.i.i:                                      ; preds = %vortex_fix_latency.exit.i
  %237 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %value.i.i, align 1
  %239 = and i8 %238, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool1.not.i.i = icmp eq i8 %239, 0
  br i1 %tobool1.not.i.i, label %if.end6.i.i, label %if.then.i.i.do.end.i49.i_crit_edge

if.then.i.i.do.end.i49.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i49.i

if.end6.i.i:                                      ; preds = %if.then.i.i
  %or.i.i = or i8 %238, 16
  %call5.i.i = call i32 @pci_write_config_byte(ptr noundef nonnull %via.074.i, i32 noundef 66, i8 noundef zeroext %or.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool7.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.do.end.i49.i_crit_edge, label %if.end6.i.i.do.end13.i.i_crit_edge

if.end6.i.i.do.end13.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i.i

if.end6.i.i.do.end.i49.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i49.i

do.end.i49.i:                                     ; preds = %if.end6.i.i.do.end.i49.i_crit_edge, %if.then.i.i.do.end.i49.i_crit_edge
  %dev.i48.i = getelementptr inbounds %struct.pci_dev, ptr %via.074.i, i32 0, i32 44
  %240 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %value.i.i, align 1
  %242 = or i8 %241, 16
  %or10.i.i = zext i8 %242 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i48.i, ptr noundef nonnull @.str.71, i32 noundef %or10.i.i) #15
  br label %vortex_fix_agp_bridge.exit.i

do.end13.i.i:                                     ; preds = %if.end6.i.i.do.end13.i.i_crit_edge, %vortex_fix_latency.exit.i.do.end13.i.i_crit_edge
  %rc.026.i.i = phi i32 [ %call5.i.i, %if.end6.i.i.do.end13.i.i_crit_edge ], [ %call.i46.i, %vortex_fix_latency.exit.i.do.end13.i.i_crit_edge ]
  %dev14.i.i = getelementptr inbounds %struct.pci_dev, ptr %via.074.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14.i.i, ptr noundef nonnull @.str.69, i32 noundef %rc.026.i.i) #15
  br label %vortex_fix_agp_bridge.exit.i

vortex_fix_agp_bridge.exit.i:                     ; preds = %do.end13.i.i, %do.end.i49.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #12
  br label %snd_vortex_workaround.exit

if.else.i:                                        ; preds = %if.end11
  %and.i = and i32 %235, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i91 = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i91, label %if.else.i.if.end12.i92_crit_edge, label %if.then11.i

if.else.i.if.end12.i92_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i92

if.then11.i:                                      ; preds = %if.else.i
  %call.i50.i = call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef 64, i8 noundef zeroext -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool.not.i51.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool.not.i51.i, label %do.end.i53.i, label %do.end3.i54.i

do.end.i53.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.66) #15
  br label %if.end12.i92

do.end3.i54.i:                                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %call.i50.i) #15
  br label %if.end12.i92

if.end12.i92:                                     ; preds = %do.end3.i54.i, %do.end.i53.i, %if.else.i.if.end12.i92_crit_edge
  %and13.i = and i32 %235, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else17.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i92
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = call ptr @pci_get_device(i32 noundef 4358, i32 noundef 33541, ptr noundef null) #12
  br label %if.end29.i

if.else17.i:                                      ; preds = %if.end12.i92
  %and18.i = and i32 %235, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #14
  %call21.i = call ptr @pci_get_device(i32 noundef 4358, i32 noundef 34200, ptr noundef null) #12
  br label %if.end29.i

if.else22.i:                                      ; preds = %if.else17.i
  %and23.i = and i32 %235, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else22.i.snd_vortex_workaround.exit_crit_edge, label %if.then25.i

if.else22.i.snd_vortex_workaround.exit_crit_edge: ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_vortex_workaround.exit

if.then25.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #14
  %call26.i = call ptr @pci_get_device(i32 noundef 4130, i32 noundef 28679, ptr noundef null) #12
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.then20.i, %if.then15.i
  %via.1.i = phi ptr [ %call16.i, %if.then15.i ], [ %call21.i, %if.then20.i ], [ %call26.i, %if.then25.i ]
  %tobool30.not.i = icmp eq ptr %via.1.i, null
  br i1 %tobool30.not.i, label %if.end29.i.snd_vortex_workaround.exit_crit_edge, label %if.then31.i

if.end29.i.snd_vortex_workaround.exit_crit_edge:  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_vortex_workaround.exit

if.then31.i:                                      ; preds = %if.end29.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i56.i) #12
  %243 = ptrtoint ptr %value.i56.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 -1, ptr %value.i56.i, align 1, !annotation !358
  %call.i57.i = call i32 @pci_read_config_byte(ptr noundef nonnull %via.1.i, i32 noundef 66, ptr noundef nonnull %value.i56.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %tobool.not.i58.i = icmp eq i32 %call.i57.i, 0
  br i1 %tobool.not.i58.i, label %if.then.i60.i, label %if.then31.i.do.end13.i70.i_crit_edge

if.then31.i.do.end13.i70.i_crit_edge:             ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i70.i

if.then.i60.i:                                    ; preds = %if.then31.i
  %244 = ptrtoint ptr %value.i56.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %value.i56.i, align 1
  %246 = and i8 %245, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool1.not.i59.i = icmp eq i8 %246, 0
  br i1 %tobool1.not.i59.i, label %if.end6.i64.i, label %if.then.i60.i.do.end.i67.i_crit_edge

if.then.i60.i.do.end.i67.i_crit_edge:             ; preds = %if.then.i60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

if.end6.i64.i:                                    ; preds = %if.then.i60.i
  %or.i61.i = or i8 %245, 16
  %call5.i62.i = call i32 @pci_write_config_byte(ptr noundef nonnull %via.1.i, i32 noundef 66, i8 noundef zeroext %or.i61.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i62.i)
  %tobool7.not.i63.i = icmp eq i32 %call5.i62.i, 0
  br i1 %tobool7.not.i63.i, label %if.end6.i64.i.do.end.i67.i_crit_edge, label %if.end6.i64.i.do.end13.i70.i_crit_edge

if.end6.i64.i.do.end13.i70.i_crit_edge:           ; preds = %if.end6.i64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i70.i

if.end6.i64.i.do.end.i67.i_crit_edge:             ; preds = %if.end6.i64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67.i

do.end.i67.i:                                     ; preds = %if.end6.i64.i.do.end.i67.i_crit_edge, %if.then.i60.i.do.end.i67.i_crit_edge
  %dev.i65.i = getelementptr inbounds %struct.pci_dev, ptr %via.1.i, i32 0, i32 44
  %247 = ptrtoint ptr %value.i56.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %value.i56.i, align 1
  %249 = or i8 %248, 16
  %or10.i66.i = zext i8 %249 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i65.i, ptr noundef nonnull @.str.71, i32 noundef %or10.i66.i) #15
  br label %vortex_fix_agp_bridge.exit71.i

do.end13.i70.i:                                   ; preds = %if.end6.i64.i.do.end13.i70.i_crit_edge, %if.then31.i.do.end13.i70.i_crit_edge
  %rc.026.i68.i = phi i32 [ %call5.i62.i, %if.end6.i64.i.do.end13.i70.i_crit_edge ], [ %call.i57.i, %if.then31.i.do.end13.i70.i_crit_edge ]
  %dev14.i69.i = getelementptr inbounds %struct.pci_dev, ptr %via.1.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14.i69.i, ptr noundef nonnull @.str.69, i32 noundef %rc.026.i68.i) #15
  br label %vortex_fix_agp_bridge.exit71.i

vortex_fix_agp_bridge.exit71.i:                   ; preds = %do.end13.i70.i, %do.end.i67.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i56.i) #12
  br label %snd_vortex_workaround.exit

snd_vortex_workaround.exit:                       ; preds = %vortex_fix_agp_bridge.exit71.i, %if.end29.i.snd_vortex_workaround.exit_crit_edge, %if.else22.i.snd_vortex_workaround.exit_crit_edge, %vortex_fix_agp_bridge.exit.i, %if.end7.i.snd_vortex_workaround.exit_crit_edge
  %via.2.i = phi ptr [ %via.074.i, %vortex_fix_agp_bridge.exit.i ], [ null, %if.end7.i.snd_vortex_workaround.exit_crit_edge ], [ %via.1.i, %vortex_fix_agp_bridge.exit71.i ], [ null, %if.end29.i.snd_vortex_workaround.exit_crit_edge ], [ null, %if.else22.i.snd_vortex_workaround.exit_crit_edge ]
  call void @pci_dev_put(ptr noundef %via.2.i) #12
  %250 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %251, i32 0, i32 2
  %252 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %251, i32 0, i32 3
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1)
  %253 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %254, i32 0, i32 4
  %shortname17 = getelementptr inbounds %struct.snd_card, ptr %254, i32 0, i32 3
  %io = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 15
  %255 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %io, align 4
  %257 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %irq.i, align 4
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname17, i32 noundef %256, i32 noundef %258)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #12
  %259 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !358
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #12
  %260 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %11, align 4
  %call.i93 = call i32 @snd_ac97_bus(ptr noundef %261, i32 noundef 0, ptr noundef nonnull @snd_vortex_mixer.ops, ptr noundef null, ptr noundef nonnull %pbus.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp.i94 = icmp slt i32 %call.i93, 0
  br i1 %cmp.i94, label %snd_vortex_mixer.exit.thread, label %if.end.i95

snd_vortex_mixer.exit.thread:                     ; preds = %snd_vortex_workaround.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #12
  br label %cleanup

if.end.i95:                                       ; preds = %snd_vortex_workaround.exit
  %262 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  %263 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %264 = call ptr @memset(ptr %263, i32 0, i32 20)
  %265 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %11, ptr %ac97.i, align 4
  %266 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 512, ptr %262, align 4
  %267 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %pbus.i, align 4
  %codec.i = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 3
  %call1.i = call i32 @snd_ac97_mixer(ptr noundef %268, ptr noundef nonnull %ac97.i, ptr noundef %codec.i) #12
  %269 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %codec.i, align 4
  %cmp3.i = icmp eq ptr %270, null
  br i1 %cmp3.i, label %if.end.i95.snd_vortex_mixer.exit_crit_edge, label %cond.false.i

if.end.i95.snd_vortex_mixer.exit_crit_edge:       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_vortex_mixer.exit

cond.false.i:                                     ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #14
  %ext_id.i = getelementptr inbounds %struct.snd_ac97, ptr %270, i32 0, i32 15
  %271 = ptrtoint ptr %ext_id.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %ext_id.i, align 2
  %273 = and i16 %272, 128
  %and.i96 = zext i16 %273 to i32
  br label %snd_vortex_mixer.exit

snd_vortex_mixer.exit:                            ; preds = %cond.false.i, %if.end.i95.snd_vortex_mixer.exit_crit_edge
  %cond.i = phi i32 [ %and.i96, %cond.false.i ], [ 0, %if.end.i95.snd_vortex_mixer.exit_crit_edge ]
  %isquad.i = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 13
  %274 = ptrtoint ptr %isquad.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %cond.i, ptr %isquad.i, align 4
  %275 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i.i) #12
  %277 = call ptr @memset(ptr %id.i.i, i32 0, i32 64)
  %name1.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i.i, i32 0, i32 4
  %278 = call ptr @memcpy(ptr %name1.i.i, ptr @.str.75, i32 28)
  %iface.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i.i, i32 0, i32 1
  %279 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 2, ptr %iface.i.i, align 4
  %call2.i.i = call i32 @snd_ctl_remove_id(ptr noundef %276, ptr noundef nonnull %id.i.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i.i) #12
  %280 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i20.i) #12
  %282 = call ptr @memset(ptr %id.i20.i, i32 0, i32 64)
  %name1.i21.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i20.i, i32 0, i32 4
  %283 = call ptr @memcpy(ptr %name1.i21.i, ptr @.str.76, i32 28)
  %iface.i23.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i20.i, i32 0, i32 1
  %284 = ptrtoint ptr %iface.i23.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 2, ptr %iface.i23.i, align 4
  %call2.i24.i = call i32 @snd_ctl_remove_id(ptr noundef %281, ptr noundef nonnull %id.i20.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i20.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp21 = icmp slt i32 %call1.i, 0
  br i1 %cmp21, label %snd_vortex_mixer.exit.cleanup_crit_edge, label %if.end23

snd_vortex_mixer.exit.cleanup_crit_edge:          ; preds = %snd_vortex_mixer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %snd_vortex_mixer.exit
  %call24 = call fastcc i32 @snd_vortex_new_pcm(ptr noundef %11, i32 noundef 0, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call28 = call fastcc i32 @snd_vortex_new_pcm(ptr noundef %11, i32 noundef 3, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi.i) #12
  %285 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi.i, align 4, !annotation !358
  %mmio.i98 = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 16
  %286 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %mmio.i98, align 4
  %add.ptr.i = getelementptr i8, ptr %287, i32 75788
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  %289 = and i32 %288, -1627389953
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %290 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %mmio.i98, align 4
  %add.ptr4.i = getelementptr i8, ptr %291, i32 75788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %289) #12, !srcloc !361
  %292 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mmio.i98, align 4
  %add.ptr8.i = getelementptr i8, ptr %293, i32 69644
  %294 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #12, !srcloc !363
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !403
  %295 = and i32 %294, -822018049
  %296 = or i32 %295, 6356992
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  call void @arm_heavy_mb() #12
  %297 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %mmio.i98, align 4
  %add.ptr19.i = getelementptr i8, ptr %298, i32 69644
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %296) #12, !srcloc !361
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  call void @arm_heavy_mb() #12
  %299 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %mmio.i98, align 4
  %add.ptr24.i = getelementptr i8, ptr %300, i32 69636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 -16777216) #12, !srcloc !361
  %301 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %mmio.i98, align 4
  %add.ptr28.i = getelementptr i8, ptr %302, i32 69632
  %303 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #12, !srcloc !363
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554432, i32 %303)
  %cmp.not.i = icmp eq i32 %303, -33554432
  br i1 %cmp.not.i, label %do.body35.i, label %snd_vortex_midi.exit.thread

snd_vortex_midi.exit.thread:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %304 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %11, align 4
  %dev.i99 = getelementptr inbounds %struct.snd_card, ptr %305, i32 0, i32 27
  %306 = ptrtoint ptr %dev.i99 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev.i99, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %307, ptr noundef nonnull @.str.135) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #12
  br label %cleanup

do.body35.i:                                      ; preds = %if.end31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  call void @arm_heavy_mb() #12
  %308 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %mmio.i98, align 4
  %add.ptr41.i = getelementptr i8, ptr %309, i32 75780
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #12, !srcloc !363
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  %311 = or i32 %310, 2097152
  %312 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %mmio.i98, align 4
  %add.ptr47.i = getelementptr i8, ptr %313, i32 75780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %311) #12, !srcloc !361
  %314 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %mmio.i98, align 4
  %add.ptr49.i = getelementptr i8, ptr %315, i32 69632
  %316 = ptrtoint ptr %add.ptr49.i to i32
  %317 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %11, align 4
  %call51.i = call i32 @snd_mpu401_uart_new(ptr noundef %318, i32 noundef 0, i16 noundef zeroext 19, i32 noundef %316, i32 noundef 44, i32 noundef -1, ptr noundef nonnull %rmidi.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool.not.i100 = icmp eq i32 %call51.i, 0
  br i1 %tobool.not.i100, label %snd_vortex_midi.exit.thread112, label %snd_vortex_midi.exit

snd_vortex_midi.exit.thread112:                   ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #14
  %319 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %rmidi.i, align 4
  %private_data.i101 = getelementptr inbounds %struct.snd_rawmidi, ptr %320, i32 0, i32 9
  %321 = ptrtoint ptr %private_data.i101 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %private_data.i101, align 4
  %323 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %mmio.i98, align 4
  %add.ptr69.i = getelementptr i8, ptr %324, i32 69636
  %325 = ptrtoint ptr %add.ptr69.i to i32
  %cport.i = getelementptr inbounds %struct.snd_mpu401, ptr %322, i32 0, i32 4
  %326 = ptrtoint ptr %cport.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %325, ptr %cport.i, align 4
  %name.i = getelementptr inbounds %struct.snd_rawmidi, ptr %320, i32 0, i32 5
  %327 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %11, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %328, align 8
  %call71.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.1, i32 noundef %330) #12
  %331 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %rmidi.i, align 4
  %rmidi72.i = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 2
  %333 = ptrtoint ptr %rmidi72.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %332, ptr %rmidi72.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #12
  br label %if.end35

snd_vortex_midi.exit:                             ; preds = %do.body35.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  call void @arm_heavy_mb() #12
  %334 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %mmio.i98, align 4
  %add.ptr59.i = getelementptr i8, ptr %335, i32 75788
  %336 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #12, !srcloc !363
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !410
  %337 = and i32 %336, -1627389953
  %338 = ptrtoint ptr %mmio.i98 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %mmio.i98, align 4
  %add.ptr66.i = getelementptr i8, ptr %339, i32 75788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %337) #12, !srcloc !361
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp33 = icmp slt i32 %call51.i, 0
  br i1 %cmp33, label %snd_vortex_midi.exit.cleanup_crit_edge, label %snd_vortex_midi.exit.if.end35_crit_edge

snd_vortex_midi.exit.if.end35_crit_edge:          ; preds = %snd_vortex_midi.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

snd_vortex_midi.exit.cleanup_crit_edge:           ; preds = %snd_vortex_midi.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %snd_vortex_midi.exit.if.end35_crit_edge, %snd_vortex_midi.exit.thread112
  call fastcc void @vortex_gameport_register(ptr noundef %11)
  %call37 = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef 2, ptr noundef %device7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %call41 = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef 0, ptr noundef %vendor6.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %340 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %revision, align 4
  %rev = getelementptr inbounds %struct.snd_vortex, ptr %11, i32 0, i32 22
  %342 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %rev, align 4
  %343 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %card, align 4
  %call45 = call i32 @snd_card_register(ptr noundef %344) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %345 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %347 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %346, ptr %driver_data.i.i, align 4
  %348 = load i32, ptr @snd_vortex_probe.dev, align 4
  %inc49 = add i32 %348, 1
  store i32 %inc49, ptr @snd_vortex_probe.dev, align 4
  call fastcc void @vortex_connect_default(ptr noundef %11, i32 noundef 1)
  call fastcc void @vortex_enable_int(ptr noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %snd_vortex_midi.exit.cleanup_crit_edge, %snd_vortex_midi.exit.thread, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %snd_vortex_mixer.exit.cleanup_crit_edge, %snd_vortex_mixer.exit.thread, %snd_vortex_create.exit.cleanup_crit_edge, %do.end.i, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %retval.0.i, %snd_vortex_create.exit.cleanup_crit_edge ], [ %call1.i, %snd_vortex_mixer.exit.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call51.i, %snd_vortex_midi.exit.cleanup_crit_edge ], [ %call37, %if.end35.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ], [ %call45, %if.end44.cleanup_crit_edge ], [ %call.i93, %snd_vortex_mixer.exit.thread ], [ -19, %snd_vortex_midi.exit.thread ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_vortex_new_pcm(ptr noundef %chip, i32 noundef %idx, i32 noundef %nr) unnamed_addr #2 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #12
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !358
  %tobool.not = icmp eq ptr %chip, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp3 = icmp eq i32 %idx, 0
  %nr. = select i1 %cmp3, i32 %nr, i32 0
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @vortex_pcm_prettyname, i32 0, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef %4, i32 noundef %idx, i32 noundef %nr, i32 noundef %nr., ptr noundef nonnull %pcm) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 4
  %name = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 7
  %arrayidx9 = getelementptr [5 x ptr], ptr @vortex_pcm_name, i32 0, i32 %idx
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx9, align 4
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 80, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, ptr noundef %8)
  %9 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm, align 4
  %arrayidx12 = getelementptr %struct.snd_vortex, ptr %chip, i32 0, i32 1, i32 %idx
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx12, align 4
  %conv = trunc i32 %idx to i8
  %arrayidx14 = getelementptr %struct.snd_pcm, ptr %10, i32 0, i32 7, i32 40
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx14, align 8
  %13 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %chip, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @snd_vortex_playback_ops) #12
  br i1 %cmp3, label %if.then17, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %16, i32 noundef 1, ptr noundef nonnull @snd_vortex_playback_ops) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end8.if.end18_crit_edge
  %17 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcm, align 4
  %pci_dev = getelementptr inbounds %struct.snd_vortex, ptr %chip, i32 0, i32 19
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call19 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %18, i32 noundef 2, ptr noundef %dev, i32 noundef 65536, i32 noundef 65536) #12
  %21 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcm, align 4
  %arrayidx21 = getelementptr %struct.snd_pcm, ptr %22, i32 0, i32 7, i32 40
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx21, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cond89 = icmp eq i8 %24, 0
  br i1 %cond89, label %sw.bb, label %if.end18.sw.epilog_crit_edge

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end18
  %isquad = getelementptr inbounds %struct.snd_vortex, ptr %chip, i32 0, i32 13
  %25 = ptrtoint ptr %isquad to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %isquad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23.not = icmp eq i32 %26, 0
  %cond = select i1 %tobool23.not, i32 2, i32 4
  %call24 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @snd_pcm_std_chmaps, i32 noundef %cond, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %sw.bb.cleanup_crit_edge, label %if.end28

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %sw.bb
  %27 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcm, align 4
  %call29 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @snd_pcm_std_chmaps, i32 noundef 2, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end28.sw.epilog_crit_edge

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %if.end28.sw.epilog_crit_edge, %if.end18.sw.epilog_crit_edge
  %29 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcm, align 4
  %arrayidx35 = getelementptr %struct.snd_pcm, ptr %30, i32 0, i32 7, i32 40
  %31 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx35, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp37 = icmp eq i8 %32, 1
  br i1 %cmp37, label %for.body.preheader, label %sw.epilog.if.end53_crit_edge

sw.epilog.if.end53_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

for.body.preheader:                               ; preds = %sw.epilog
  %call43 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vortex_mixer_spdif, ptr noundef nonnull %chip) #12
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %for.body.preheader.cleanup_crit_edge, label %if.end46

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond:                                         ; preds = %if.end46
  %call43.1 = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @snd_vortex_mixer_spdif, i32 0, i32 1), ptr noundef nonnull %chip) #12
  %tobool44.not.1 = icmp eq ptr %call43.1, null
  br i1 %tobool44.not.1, label %for.cond.cleanup_crit_edge, label %if.end46.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46.1:                                       ; preds = %for.cond
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %call48.1 = call i32 @snd_ctl_add(ptr noundef %34, ptr noundef nonnull %call43.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.1)
  %cmp49.1 = icmp slt i32 %call48.1, 0
  br i1 %cmp49.1, label %if.end46.1.cleanup_crit_edge, label %if.end46.1.if.end53_crit_edge

if.end46.1.if.end53_crit_edge:                    ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end46.1.cleanup_crit_edge:                     ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %for.body.preheader
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %call48 = call i32 @snd_ctl_add(ptr noundef %36, ptr noundef nonnull %call43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end46.cleanup_crit_edge, label %for.cond

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53:                                         ; preds = %if.end46.1.if.end53_crit_edge, %sw.epilog.if.end53_crit_edge
  %37 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcm, align 4
  %arrayidx55 = getelementptr %struct.snd_pcm, ptr %38, i32 0, i32 7, i32 40
  %39 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx55, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp57 = icmp eq i8 %40, 0
  br i1 %cmp57, label %if.end53.for.body63_crit_edge, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53.for.body63_crit_edge:                    ; preds = %if.end53
  br label %for.body63

for.cond60:                                       ; preds = %if.end70
  %inc82 = add nuw nsw i32 %i.1137, 1
  %exitcond.not = icmp eq i32 %inc82, 16
  br i1 %exitcond.not, label %for.cond60.cleanup_crit_edge, label %for.cond60.for.body63_crit_edge

for.cond60.for.body63_crit_edge:                  ; preds = %for.cond60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body63

for.cond60.cleanup_crit_edge:                     ; preds = %for.cond60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body63:                                       ; preds = %for.cond60.for.body63_crit_edge, %if.end53.for.body63_crit_edge
  %i.1137 = phi i32 [ %inc82, %for.cond60.for.body63_crit_edge ], [ 0, %if.end53.for.body63_crit_edge ]
  %active = getelementptr %struct.snd_vortex, ptr %chip, i32 0, i32 12, i32 %i.1137, i32 1
  %41 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %active, align 4
  %dma = getelementptr %struct.snd_vortex, ptr %chip, i32 0, i32 12, i32 %i.1137, i32 2
  %42 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %dma, align 4
  %call67 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_vortex_pcm_vol, ptr noundef nonnull %chip) #12
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %for.body63.cleanup_crit_edge, label %if.end70

for.body63.cleanup_crit_edge:                     ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end70:                                         ; preds = %for.body63
  %arrayidx64 = getelementptr %struct.snd_vortex, ptr %chip, i32 0, i32 12, i32 %i.1137
  %43 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call67, ptr %arrayidx64, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %call67, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %call67, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %i.1137, ptr %subdevice, align 4
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip, align 4
  %call76 = call i32 @snd_ctl_add(ptr noundef %47, ptr noundef nonnull %call67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.end70.cleanup_crit_edge, label %for.cond60

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end70.cleanup_crit_edge, %for.body63.cleanup_crit_edge, %for.cond60.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end46.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call24, %sw.bb.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ -12, %for.body.preheader.cleanup_crit_edge ], [ %call48, %if.end46.cleanup_crit_edge ], [ -12, %for.cond.cleanup_crit_edge ], [ %call48.1, %if.end46.1.cleanup_crit_edge ], [ 0, %for.cond60.cleanup_crit_edge ], [ %call76, %if.end70.cleanup_crit_edge ], [ -12, %for.body63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_gameport_register(ptr noundef %vortex) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1248) #16
  %gameport = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 14
  %1 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %gameport, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.139) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.142, i32 noundef 32) #12
  %pci_dev = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 19
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
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
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.143, ptr noundef %retval.0.i.i) #12
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %parent = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev3, ptr %parent, align 8
  %read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vortex_game_read, ptr %read, align 4
  %trigger = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vortex_game_trigger, ptr %trigger, align 8
  %cooked_read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %cooked_read to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vortex_game_cooked_read, ptr %cooked_read, align 8
  %open = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vortex_game_open, ptr %open, align 8
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vortex, ptr %call7.i.i.i, align 8
  %fuzz = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %fuzz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %fuzz, align 4
  tail call void @__gameport_register_port(ptr noundef nonnull %call7.i.i.i, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_connect_default(ptr noundef %vortex, i32 noundef %en) unnamed_addr #2 align 64 {
entry:
  %route.i4.i = alloca i32, align 4
  %route.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_res = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 11
  %call = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %fixed_res, i32 noundef %en, i32 noundef 3)
  %mixplayb = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 10
  %0 = ptrtoint ptr %mixplayb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %mixplayb, align 4
  %call3 = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %fixed_res, i32 noundef %en, i32 noundef 3)
  %arrayidx5 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %call3, ptr %arrayidx5, align 1
  %isquad = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 13
  %2 = ptrtoint ptr %isquad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isquad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %fixed_res, i32 noundef %en, i32 noundef 3)
  %arrayidx10 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call8, ptr %arrayidx10, align 2
  %call13 = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %fixed_res, i32 noundef %en, i32 noundef 3)
  %arrayidx15 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 10, i32 3
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call13, ptr %arrayidx15, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %mixplayb to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mixplayb, align 1
  %add.i.i = add i8 %7, 32
  tail call fastcc void @vortex_route(ptr noundef %vortex, i32 noundef %en, i8 noundef zeroext 17, i8 noundef zeroext %add.i.i, i8 noundef zeroext 88) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  tail call void @arm_heavy_mb() #12
  %mmio.i.i.i = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %8 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i.i, align 4
  %conv1.i.i.i = zext i8 %7 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv1.i.i.i, 2
  %add.i.i.i = or i32 %shl.i.i.i, 38912
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 134217728) #12, !srcloc !361
  %10 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i.i, align 4
  %add5.i.i.i = or i32 %shl.i.i.i, 34816
  %add.ptr6.i.i.i = getelementptr i8, ptr %11, i32 %add5.i.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %12)
  %cmp.not.i.i.i = icmp eq i32 %12, -2147483648
  br i1 %cmp.not.i.i.i, label %do.body12.i.i.i, label %if.end.vortex_connection_mix_adb.exit.i_crit_edge

if.end.vortex_connection_mix_adb.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_connection_mix_adb.exit.i

do.body12.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !413
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr20.i.i.i = getelementptr i8, ptr %14, i32 %add5.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i.i, i32 134217728) #12, !srcloc !361
  br label %vortex_connection_mix_adb.exit.i

vortex_connection_mix_adb.exit.i:                 ; preds = %do.body12.i.i.i, %if.end.vortex_connection_mix_adb.exit.i_crit_edge
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx5, align 1
  %add.i5.i = add i8 %16, 32
  tail call fastcc void @vortex_route(ptr noundef %vortex, i32 noundef %en, i8 noundef zeroext 17, i8 noundef zeroext %add.i5.i, i8 noundef zeroext 89) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i.i, align 4
  %conv1.i.i7.i = zext i8 %16 to i32
  %shl.i.i8.i = shl nuw nsw i32 %conv1.i.i7.i, 2
  %add.i.i9.i = or i32 %shl.i.i8.i, 38912
  %add.ptr.i.i10.i = getelementptr i8, ptr %18, i32 %add.i.i9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 134217728) #12, !srcloc !361
  %19 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i.i, align 4
  %add5.i.i11.i = or i32 %shl.i.i8.i, 34816
  %add.ptr6.i.i12.i = getelementptr i8, ptr %20, i32 %add5.i.i11.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i12.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %21)
  %cmp.not.i.i13.i = icmp eq i32 %21, -2147483648
  br i1 %cmp.not.i.i13.i, label %do.body12.i.i15.i, label %vortex_connection_mix_adb.exit.i.vortex_connect_codecplay.exit_crit_edge

vortex_connection_mix_adb.exit.i.vortex_connect_codecplay.exit_crit_edge: ; preds = %vortex_connection_mix_adb.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_connect_codecplay.exit

do.body12.i.i15.i:                                ; preds = %vortex_connection_mix_adb.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !413
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr20.i.i14.i = getelementptr i8, ptr %23, i32 %add5.i.i11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i14.i, i32 134217728) #12, !srcloc !361
  br label %vortex_connect_codecplay.exit

vortex_connect_codecplay.exit:                    ; preds = %do.body12.i.i15.i, %vortex_connection_mix_adb.exit.i.vortex_connect_codecplay.exit_crit_edge
  %call20 = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %fixed_res, i32 noundef %en, i32 noundef 2)
  %mixcapt = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 9
  %24 = ptrtoint ptr %mixcapt to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call20, ptr %mixcapt, align 2
  %call24 = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %fixed_res, i32 noundef %en, i32 noundef 2)
  %arrayidx26 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call24, ptr %arrayidx26, align 1
  %26 = ptrtoint ptr %mixcapt to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mixcapt, align 2
  %add.i.i63 = add i8 %27, 48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %route.i.i) #12
  %28 = and i8 %add.i.i63, 127
  %and2.i.i = zext i8 %28 to i32
  %or.i.i = or i32 %and2.i.i, 9216
  %29 = ptrtoint ptr %route.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i.i, ptr %route.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool.not.i.i = icmp eq i32 %en, 0
  br i1 %tobool.not.i.i, label %if.else24.i9.i, label %if.then.i8.i

if.then.i8.i:                                     ; preds = %vortex_connect_codecplay.exit
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @vortex_adb_addroutes(ptr noundef %vortex, i8 noundef zeroext 17, ptr noundef nonnull %route.i.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %route.i.i) #12
  %add.i3.i = add i8 %call24, 48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %route.i4.i) #12
  %and2.i5.i = zext i8 %add.i3.i to i32
  %or.i6.i = or i32 %and2.i5.i, 9344
  %30 = ptrtoint ptr %route.i4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i6.i, ptr %route.i4.i, align 4
  call fastcc void @vortex_adb_addroutes(ptr noundef %vortex, i8 noundef zeroext 17, ptr noundef nonnull %route.i4.i, i32 noundef 1) #12
  br label %vortex_connect_codecrec.exit

if.else24.i9.i:                                   ; preds = %vortex_connect_codecplay.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @vortex_adb_delroutes(ptr noundef %vortex, i8 noundef zeroext 17, i32 noundef %or.i.i, i32 noundef %or.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %route.i.i) #12
  %add.i311.i = add i8 %call24, 48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %route.i4.i) #12
  %and2.i512.i = zext i8 %add.i311.i to i32
  %or.i613.i = or i32 %and2.i512.i, 9344
  tail call fastcc void @vortex_adb_delroutes(ptr noundef %vortex, i8 noundef zeroext 17, i32 noundef %or.i613.i, i32 noundef %or.i613.i) #12
  br label %vortex_connect_codecrec.exit

vortex_connect_codecrec.exit:                     ; preds = %if.else24.i9.i, %if.then.i8.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %route.i4.i) #12
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %vortex_connect_codecrec.exit
  %ii.057.i = phi i32 [ 0, %vortex_connect_codecrec.exit ], [ %inc.i, %for.inc.i.for.body3.i_crit_edge ]
  %call.i = call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %fixed_res, i32 noundef %en, i32 noundef 2) #12
  %arrayidx.i = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 8, i32 %ii.057.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call.i, ptr %arrayidx.i, align 1
  %32 = trunc i32 %ii.057.i to i8
  %conv7.i = add i8 %32, 120
  %add8.i = add i8 %call.i, 48
  call fastcc void @vortex_route(ptr noundef %vortex, i32 noundef %en, i8 noundef zeroext 17, i8 noundef zeroext %conv7.i, i8 noundef zeroext %add8.i) #12
  %rem.i = and i32 %ii.057.i, 1
  %arrayidx11.i = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 10, i32 %rem.i
  %33 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx11.i, align 1
  call fastcc void @vortex_connection_mixin_mix(ptr noundef %vortex, i32 noundef %en, i8 noundef zeroext %call.i, i8 noundef zeroext %34) #12
  %35 = ptrtoint ptr %isquad to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %isquad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %for.body3.i.for.inc.i_crit_edge, label %if.then.i

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  %add15.i = or i32 %rem.i, 2
  %arrayidx16.i = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 10, i32 %add15.i
  %37 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx16.i, align 1
  call fastcc void @vortex_connection_mixin_mix(ptr noundef %vortex, i32 noundef %en, i8 noundef zeroext %call.i, i8 noundef zeroext %38) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body3.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %ii.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.inc.i.do.body.i_crit_edge
  %i.158.i = phi i32 [ %inc29.i, %do.body.i.do.body.i_crit_edge ], [ 0, %for.inc.i.do.body.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !414
  call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i.i, align 4
  %and.i = shl i32 %i.158.i, 8
  %shl.i = and i32 %and.i, 16769024
  %add24.i = or i32 %shl.i, %i.158.i
  %add26.i = shl nuw nsw i32 %add24.i, 2
  %shl27.i = or i32 %add26.i, 384
  %add.ptr.i = getelementptr i8, ptr %40, i32 %shl27.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #12, !srcloc !361
  %inc29.i = add nuw nsw i32 %i.158.i, 1
  %exitcond59.not.i = icmp eq i32 %inc29.i, 32
  br i1 %exitcond59.not.i, label %vortex_wt_connect.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

vortex_wt_connect.exit:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_enable_int(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %card, i32 0, i32 16
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 75788
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %3 = or i32 %2, 4194304
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 75788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !417
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 75780
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !418
  %9 = and i32 %8, -1058013185
  %10 = or i32 %9, 603979776
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 75780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %10) #12, !srcloc !361
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vortex_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %dev_id, i32 0, i32 16
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 75784
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !419
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 75788
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  %7 = and i32 %6, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 75776
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #12, !srcloc !363
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 75776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %10) #12, !srcloc !361
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 75776
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %do.end32, label %if.end33

do.end32:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.35) #15
  br label %cleanup

if.end33:                                         ; preds = %if.end12
  %and34 = and i32 %11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end84_crit_edge, label %if.then38, !prof !424

if.end33.if.end84_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then38:                                        ; preds = %if.end33
  %and39 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then38.if.end47_crit_edge, label %do.end44

if.then38.if.end47_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  %dev46 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev46, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.38) #15
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %if.then38.if.end47_crit_edge
  %and48 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end56_crit_edge, label %do.end53

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 4
  %dev55 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev55, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.41) #15
  br label %if.end56

if.end56:                                         ; preds = %do.end53, %if.end47.if.end56_crit_edge
  %and57 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end65_crit_edge, label %do.end62

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_id, align 4
  %dev64 = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.44) #15
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.end56.if.end65_crit_edge
  %and66 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end74_crit_edge, label %do.end71

if.end65.if.end74_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %dev73 = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev73, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.47) #15
  br label %if.end74

if.end74:                                         ; preds = %do.end71, %if.end65.if.end74_crit_edge
  %and75 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end84_crit_edge, label %do.end80

if.end74.if.end84_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_id, align 4
  %dev82 = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev82, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.50) #15
  br label %if.end84

if.end84:                                         ; preds = %do.end80, %if.end74.if.end84_crit_edge, %if.end33.if.end84_crit_edge
  %handled.0 = phi i32 [ 0, %if.end33.if.end84_crit_edge ], [ 1, %do.end80 ], [ 1, %if.end74.if.end84_crit_edge ]
  %and85 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end118_crit_edge, label %if.then87

if.end84.if.end118_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then87:                                        ; preds = %if.end84
  %lock = getelementptr inbounds %struct.snd_vortex, ptr %dev_id, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then87
  %i.0250 = phi i32 [ 0, %if.then87 ], [ %inc, %for.inc.for.body_crit_edge ]
  %fifo_status = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 4, i32 %i.0250, i32 1
  %41 = ptrtoint ptr %fifo_status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fifo_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp89 = icmp eq i32 %42, 1
  br i1 %cmp89, label %if.then90, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then90:                                        ; preds = %for.body
  %43 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio, align 4
  %shl.i = shl i32 %i.0250, 2
  %add.i = add nuw nsw i32 %shl.i, 67008
  %add.ptr.i = getelementptr i8, ptr %44, i32 %add.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  %46 = lshr i32 %45, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !425
  %and.i = and i32 %46, 3
  %nr_periods.i = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 4, i32 %i.0250, i32 11
  %47 = ptrtoint ptr %nr_periods.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_periods.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp.i = icmp sgt i32 %48, 3
  %period_real.i = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 4, i32 %i.0250, i32 13
  %49 = ptrtoint ptr %period_real.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %period_real.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i32 %46, %50
  %and2.i = and i32 %sub.i, 3
  br label %if.end9.i

if.else.i:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %sub4.i = sub i32 %and.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i)
  %cmp5.i = icmp slt i32 %sub4.i, 0
  %add8.i = select i1 %cmp5.i, i32 %48, i32 0
  %spec.select.i = add i32 %add8.i, %sub4.i
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then.i
  %delta.0.i = phi i32 [ %and2.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.0.i)
  %cmp10.i = icmp eq i32 %delta.0.i, 0
  br i1 %cmp10.i, label %if.end9.i.for.inc_crit_edge, label %if.end12.i

if.end9.i.for.inc_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end12.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp14.i = icmp sgt i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.0.i)
  %cmp16121.i = icmp sgt i32 %delta.0.i, 0
  %or.cond.i = select i1 %cmp14.i, i1 %cmp16121.i, i1 false
  br i1 %or.cond.i, label %for.body.lr.ph.i, label %if.end12.i.if.end49.i_crit_edge

if.end12.i.if.end49.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

for.body.lr.ph.i:                                 ; preds = %if.end12.i
  %period_virt.i = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 4, i32 %i.0250, i32 14
  %substream.i = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 4, i32 %i.0250, i32 15
  %period_bytes.i = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 4, i32 %i.0250, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0122.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %period_virt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %period_virt.i, align 4
  %add17.i = add nuw i32 %i.0122.i, 4
  %add18.i = add i32 %add17.i, %52
  %53 = ptrtoint ptr %nr_periods.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr_periods.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %54)
  %cmp20.not.i = icmp slt i32 %add18.i, %54
  %sub23.i = select i1 %cmp20.not.i, i32 0, i32 %54
  %spec.select120.i = sub i32 %add18.i, %sub23.i
  %55 = ptrtoint ptr %period_real.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %period_real.i, align 4
  %add26.i = add i32 %56, %i.0122.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add26.i)
  %cmp27.i = icmp sgt i32 %add26.i, 3
  %sub29.i = add i32 %add26.i, 1073741820
  %pp.0.i = select i1 %cmp27.i, i32 %sub29.i, i32 %add26.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !426
  tail call void @arm_heavy_mb() #12
  %57 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %substream.i, align 4
  %59 = ptrtoint ptr %period_bytes.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %period_bytes.i, align 4
  %mul.i = mul i32 %60, %spec.select120.i
  %runtime.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %58, i32 0, i32 11
  %61 = ptrtoint ptr %runtime.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %runtime.i.i, align 4
  %dma_buffer_p.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %62, i32 0, i32 53
  %63 = ptrtoint ptr %dma_buffer_p.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_buffer_p.i.i, align 8
  %call.i.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %64, i32 noundef %mul.i) #12
  %65 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #12
  %66 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio, align 4
  %add34.i = add i32 %pp.0.i, %shl.i
  %shl35.i = shl i32 %add34.i, 2
  %add36.i = add i32 %shl35.i, 66048
  %add.ptr37.i = getelementptr i8, ptr %67, i32 %add36.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %65) #12, !srcloc !361
  %68 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio, align 4
  %add.ptr45.i = getelementptr i8, ptr %69, i32 %add36.i
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  %inc.i = add nuw nsw i32 %i.0122.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %delta.0.i
  br i1 %exitcond.not.i, label %for.body.i.if.end49.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end49.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.end49.i:                                       ; preds = %for.body.i.if.end49.i_crit_edge, %if.end12.i.if.end49.i_crit_edge
  %period_virt50.i = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 4, i32 %i.0250, i32 14
  %71 = ptrtoint ptr %period_virt50.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %period_virt50.i, align 4
  %add51.i = add i32 %72, %delta.0.i
  store i32 %add51.i, ptr %period_virt50.i, align 4
  %73 = ptrtoint ptr %period_real.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i, ptr %period_real.i, align 4
  %74 = ptrtoint ptr %nr_periods.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr_periods.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add51.i, i32 %75)
  %cmp55.not.i = icmp slt i32 %add51.i, %75
  br i1 %cmp55.not.i, label %if.end49.i.if.end60.i_crit_edge, label %if.then56.i

if.end49.i.if.end60.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub59.i = sub i32 %add51.i, %75
  %76 = ptrtoint ptr %period_virt50.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub59.i, ptr %period_virt50.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %if.end49.i.if.end60.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %delta.0.i)
  %cmp61.not.i = icmp eq i32 %delta.0.i, 1
  br i1 %cmp61.not.i, label %if.end60.i.if.end94_crit_edge, label %do.end65.i

if.end60.i.if.end94_crit_edge:                    ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

do.end65.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %78, i32 0, i32 27
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 8
  %81 = ptrtoint ptr %period_virt50.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %period_virt50.i, align 4
  %83 = ptrtoint ptr %period_real.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %period_real.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.55, i32 noundef %i.0250, i32 noundef %82, i32 noundef %84, i32 noundef %delta.0.i) #15
  br label %if.end94

if.end94:                                         ; preds = %do.end65.i, %if.end60.i.if.end94_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %substream = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 4, i32 %i.0250, i32 15
  %85 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %86) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end94, %if.end9.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0250, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.for.body102_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.body102_crit_edge:                    ; preds = %for.inc
  br label %for.body102

for.body102:                                      ; preds = %for.inc114.for.body102_crit_edge, %for.inc.for.body102_crit_edge
  %i.1254 = phi i32 [ %inc115, %for.inc114.for.body102_crit_edge ], [ 0, %for.inc.for.body102_crit_edge ]
  %fifo_status104 = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 6, i32 %i.1254, i32 1
  %87 = ptrtoint ptr %fifo_status104 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fifo_status104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp105 = icmp eq i32 %88, 1
  br i1 %cmp105, label %if.then106, label %for.body102.for.inc114_crit_edge

for.body102.for.inc114_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc114

if.then106:                                       ; preds = %for.body102
  %89 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio, align 4
  %shl.i200 = shl i32 %i.1254, 2
  %add.i201 = add nuw nsw i32 %shl.i200, 66816
  %add.ptr.i202 = getelementptr i8, ptr %90, i32 %add.i201
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !428
  %nr_periods.i203 = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 6, i32 %i.1254, i32 11
  %92 = ptrtoint ptr %nr_periods.i203 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nr_periods.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp.i204 = icmp sgt i32 %93, 3
  %period_real.i205 = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 6, i32 %i.1254, i32 13
  %94 = ptrtoint ptr %period_real.i205 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %period_real.i205, align 4
  %sub.i206 = sub i32 0, %95
  %and2.i207 = and i32 %sub.i206, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i206)
  %cmp5.i208 = icmp slt i32 %sub.i206, 0
  %add8.i209 = sub i32 %93, %95
  %spec.select.i210 = select i1 %cmp5.i208, i32 %add8.i209, i32 %sub.i206
  %delta.0.i211 = select i1 %cmp.i204, i32 %and2.i207, i32 %spec.select.i210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.0.i211)
  %cmp10.i212 = icmp eq i32 %delta.0.i211, 0
  br i1 %cmp10.i212, label %if.then106.vortex_wtdma_bufshift.exit_crit_edge, label %if.end12.i215

if.then106.vortex_wtdma_bufshift.exit_crit_edge:  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_wtdma_bufshift.exit

if.end12.i215:                                    ; preds = %if.then106
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %93)
  %cmp14.i213 = icmp sgt i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.0.i211)
  %cmp162.i = icmp sgt i32 %delta.0.i211, 0
  %or.cond.i214 = select i1 %cmp14.i213, i1 %cmp162.i, i1 false
  br i1 %or.cond.i214, label %for.body.lr.ph.i220, label %if.end12.i215.if.end49.i243_crit_edge

if.end12.i215.if.end49.i243_crit_edge:            ; preds = %if.end12.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i243

for.body.lr.ph.i220:                              ; preds = %if.end12.i215
  %period_virt.i216 = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 6, i32 %i.1254, i32 14
  %substream.i218 = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 6, i32 %i.1254, i32 15
  %period_bytes.i219 = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 6, i32 %i.1254, i32 12
  br label %for.body.i240

for.body.i240:                                    ; preds = %for.body.i240.for.body.i240_crit_edge, %for.body.lr.ph.i220
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i220 ], [ %inc.i238, %for.body.i240.for.body.i240_crit_edge ]
  %96 = ptrtoint ptr %period_virt.i216 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %period_virt.i216, align 4
  %add17.i221 = add nuw i32 %i.03.i, 4
  %add18.i222 = add i32 %add17.i221, %97
  %98 = ptrtoint ptr %nr_periods.i203 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nr_periods.i203, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i222, i32 %99)
  %cmp20.not.i223 = icmp slt i32 %add18.i222, %99
  %sub23.i224 = select i1 %cmp20.not.i223, i32 0, i32 %99
  %spec.select1.i = sub i32 %add18.i222, %sub23.i224
  %100 = ptrtoint ptr %period_real.i205 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %period_real.i205, align 4
  %add26.i225 = add i32 %101, %i.03.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add26.i225)
  %cmp27.i226 = icmp sgt i32 %add26.i225, 3
  %sub29.i227 = add i32 %add26.i225, 1073741820
  %pp.0.i228 = select i1 %cmp27.i226, i32 %sub29.i227, i32 %add26.i225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !429
  tail call void @arm_heavy_mb() #12
  %102 = ptrtoint ptr %substream.i218 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %substream.i218, align 4
  %104 = ptrtoint ptr %period_bytes.i219 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %period_bytes.i219, align 4
  %mul.i229 = mul i32 %105, %spec.select1.i
  %runtime.i.i230 = getelementptr inbounds %struct.snd_pcm_substream, ptr %103, i32 0, i32 11
  %106 = ptrtoint ptr %runtime.i.i230 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %runtime.i.i230, align 4
  %dma_buffer_p.i.i231 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %107, i32 0, i32 53
  %108 = ptrtoint ptr %dma_buffer_p.i.i231 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dma_buffer_p.i.i231, align 8
  %call.i.i232 = tail call i32 @snd_sgbuf_get_addr(ptr noundef %109, i32 noundef %mul.i229) #12
  %110 = tail call i32 @llvm.bswap.i32(i32 %call.i.i232) #12
  %111 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio, align 4
  %add34.i233 = add i32 %pp.0.i228, %shl.i200
  %shl35.i234 = shl i32 %add34.i233, 2
  %add36.i235 = add i32 %shl35.i234, 65536
  %add.ptr37.i236 = getelementptr i8, ptr %112, i32 %add36.i235
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i236, i32 %110) #12, !srcloc !361
  %113 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmio, align 4
  %add.ptr45.i237 = getelementptr i8, ptr %114, i32 %add36.i235
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i237) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !430
  %inc.i238 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i239 = icmp eq i32 %inc.i238, %delta.0.i211
  br i1 %exitcond.not.i239, label %for.body.i240.if.end49.i243_crit_edge, label %for.body.i240.for.body.i240_crit_edge

for.body.i240.for.body.i240_crit_edge:            ; preds = %for.body.i240
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i240

for.body.i240.if.end49.i243_crit_edge:            ; preds = %for.body.i240
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i243

if.end49.i243:                                    ; preds = %for.body.i240.if.end49.i243_crit_edge, %if.end12.i215.if.end49.i243_crit_edge
  %period_virt50.i241 = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 6, i32 %i.1254, i32 14
  %116 = ptrtoint ptr %period_virt50.i241 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %period_virt50.i241, align 4
  %add51.i242 = add i32 %117, %delta.0.i211
  store i32 %add51.i242, ptr %period_virt50.i241, align 4
  %118 = ptrtoint ptr %nr_periods.i203 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nr_periods.i203, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add51.i242, i32 %119)
  %cmp54.not.i = icmp slt i32 %add51.i242, %119
  br i1 %cmp54.not.i, label %if.end49.i243.if.end59.i_crit_edge, label %if.then55.i

if.end49.i243.if.end59.i_crit_edge:               ; preds = %if.end49.i243
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then55.i:                                      ; preds = %if.end49.i243
  call void @__sanitizer_cov_trace_pc() #14
  %sub58.i = sub i32 %add51.i242, %119
  %120 = ptrtoint ptr %period_virt50.i241 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %sub58.i, ptr %period_virt50.i241, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then55.i, %if.end49.i243.if.end59.i_crit_edge
  %121 = ptrtoint ptr %period_real.i205 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %period_real.i205, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %delta.0.i211)
  %cmp61.not.i244 = icmp eq i32 %delta.0.i211, 1
  br i1 %cmp61.not.i244, label %if.end59.i.vortex_wtdma_bufshift.exit_crit_edge, label %do.end65.i246

if.end59.i.vortex_wtdma_bufshift.exit_crit_edge:  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_wtdma_bufshift.exit

do.end65.i246:                                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev_id, align 4
  %dev.i245 = getelementptr inbounds %struct.snd_card, ptr %123, i32 0, i32 27
  %124 = ptrtoint ptr %dev.i245 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i245, align 8
  %126 = ptrtoint ptr %period_virt50.i241 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %period_virt50.i241, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %125, ptr noundef nonnull @.str.57, i32 noundef %127, i32 noundef %delta.0.i211) #15
  br label %vortex_wtdma_bufshift.exit

vortex_wtdma_bufshift.exit:                       ; preds = %do.end65.i246, %if.end59.i.vortex_wtdma_bufshift.exit_crit_edge, %if.then106.vortex_wtdma_bufshift.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %substream111 = getelementptr %struct.snd_vortex, ptr %dev_id, i32 0, i32 6, i32 %i.1254, i32 15
  %128 = ptrtoint ptr %substream111 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %substream111, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %129) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  br label %for.inc114

for.inc114:                                       ; preds = %vortex_wtdma_bufshift.exit, %for.body102.for.inc114_crit_edge
  %inc115 = add nuw nsw i32 %i.1254, 1
  %exitcond258.not = icmp eq i32 %inc115, 32
  br i1 %exitcond258.not, label %for.end116, label %for.inc114.for.body102_crit_edge

for.inc114.for.body102_crit_edge:                 ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body102

for.end116:                                       ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %if.end118

if.end118:                                        ; preds = %for.end116, %if.end84.if.end118_crit_edge
  %handled.1 = phi i32 [ 1, %for.end116 ], [ %handled.0, %if.end84.if.end118_crit_edge ]
  %and119 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end129_crit_edge, label %if.then121

if.end118.if.end129_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio, align 4
  %add.ptr125 = getelementptr i8, ptr %131, i32 72092
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !431
  br label %if.end129

if.end129:                                        ; preds = %if.then121, %if.end118.if.end129_crit_edge
  %handled.2 = phi i32 [ 1, %if.then121 ], [ %handled.1, %if.end118.if.end129_crit_edge ]
  %and130 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end129.if.end137_crit_edge, label %land.lhs.true

if.end129.if.end137_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

land.lhs.true:                                    ; preds = %if.end129
  %rmidi = getelementptr inbounds %struct.snd_vortex, ptr %dev_id, i32 0, i32 2
  %133 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmidi, align 4
  %tobool132.not = icmp eq ptr %134, null
  br i1 %tobool132.not, label %land.lhs.true.if.end137_crit_edge, label %if.end137.thread

land.lhs.true.if.end137_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

if.end137.thread:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %irq134 = getelementptr inbounds %struct.snd_vortex, ptr %dev_id, i32 0, i32 17
  %135 = ptrtoint ptr %irq134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %irq134, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %134, i32 0, i32 9
  %137 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %private_data, align 4
  %call136 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %136, ptr noundef %138) #12
  br label %cleanup

if.end137:                                        ; preds = %land.lhs.true.if.end137_crit_edge, %if.end129.if.end137_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2)
  %tobool138.not = icmp eq i32 %handled.2, 0
  br i1 %tobool138.not, label %do.end142, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end142:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  %139 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev_id, align 4
  %dev144 = getelementptr inbounds %struct.snd_card, ptr %140, i32 0, i32 27
  %141 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev144, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.53, i32 noundef %11) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end142, %if.end137.cleanup_crit_edge, %if.end137.thread, %do.end32, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end32 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end137.thread ], [ 0, %do.end142 ], [ 1, %if.end137.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_vortex_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %gameport.i = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.vortex_gameport_unregister.exit_crit_edge, label %if.then.i

entry.vortex_gameport_unregister.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_gameport_unregister.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gameport_unregister_port(ptr noundef nonnull %3) #12
  %4 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %gameport.i, align 4
  br label %vortex_gameport_unregister.exit

vortex_gameport_unregister.exit:                  ; preds = %if.then.i, %entry.vortex_gameport_unregister.exit_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.59) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !432
  tail call void @arm_heavy_mb() #12
  %mmio.i.i = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 75788
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !433
  %12 = and i32 %11, -4194305
  %13 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %14, i32 75788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %12) #12, !srcloc !361
  tail call fastcc void @vortex_connect_default(ptr noundef %1, i32 noundef 0) #12
  tail call fastcc void @vortex_fifo_init(ptr noundef %1) #12
  tail call fastcc void @vortex_adb_init(ptr noundef %1) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !434
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 75780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !435
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %18, i32 75788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #12, !srcloc !361
  tail call void @msleep(i32 noundef 5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !436
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %20, i32 75776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 -65536) #12, !srcloc !361
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %dev14.i = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev14.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.62) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_adb_init(ptr nocapture noundef readonly %vortex) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !437
  tail call void @arm_heavy_mb() #12
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 68096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !361
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %do.body1.do.body1_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  tail call void @arm_heavy_mb() #12
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %shl = shl i32 %i.045, 2
  %add = add nuw nsw i32 %shl, 67584
  %add.ptr5 = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !439
  %5 = or i32 %4, -12648448
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %5) #12, !srcloc !361
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 103
  br i1 %exitcond.not, label %do.body1.do.body14_crit_edge, label %do.body1.do.body1_crit_edge

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

do.body1.do.body14_crit_edge:                     ; preds = %do.body1
  br label %do.body14

do.body14:                                        ; preds = %do.body14.do.body14_crit_edge, %do.body1.do.body14_crit_edge
  %i.146 = phi i32 [ %inc32, %do.body14.do.body14_crit_edge ], [ 0, %do.body1.do.body14_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %shl20 = shl i32 %i.146, 2
  %add21 = add nuw nsw i32 %shl20, 67996
  %add.ptr22 = getelementptr i8, ptr %9, i32 %add21
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  %11 = or i32 %10, -12648448
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr30 = getelementptr i8, ptr %13, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %11) #12, !srcloc !361
  %inc32 = add nuw nsw i32 %i.146, 1
  %exitcond47.not = icmp eq i32 %inc32, 22
  br i1 %exitcond47.not, label %for.end33, label %do.body14.do.body14_crit_edge

do.body14.do.body14_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14

for.end33:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_fifo_init(ptr nocapture noundef readonly %vortex) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %vortex_fifo_clearadbdata.exit.do.body_crit_edge, %entry
  %x.075 = phi i32 [ 15, %entry ], [ %dec, %vortex_fifo_clearadbdata.exit.do.body_crit_edge ]
  %addr.074 = phi i32 [ 63548, %entry ], [ %sub, %vortex_fifo_clearadbdata.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %addr.074
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1048832) #12, !srcloc !361
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 %addr.074
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048832, i32 %4)
  %cmp4.not = icmp eq i32 %4, 1048832
  br i1 %cmp4.not, label %do.body.if.end_crit_edge, label %do.end7

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end7:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.23) #15
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.body.if.end_crit_edge
  %shl.i = shl i32 %x.075, 5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %x.addr.01.i = phi i32 [ 31, %if.end ], [ %dec3.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.i = add nuw nsw i32 %x.addr.01.i, %shl.i
  %shl1.i = shl i32 %add.i, 2
  %add2.i = add nuw nsw i32 %shl1.i, 57344
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !361
  %dec3.i = add nsw i32 %x.addr.01.i, -1
  %cmp.not.i = icmp eq i32 %x.addr.01.i, 0
  br i1 %cmp.not.i, label %vortex_fifo_clearadbdata.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

vortex_fifo_clearadbdata.exit:                    ; preds = %do.body.i
  %sub = add nsw i32 %addr.074, -4
  %dec = add nsw i32 %x.075, -1
  %cmp = icmp sgt i32 %x.075, 0
  br i1 %cmp, label %vortex_fifo_clearadbdata.exit.do.body_crit_edge, label %vortex_fifo_clearadbdata.exit.do.body11_crit_edge

vortex_fifo_clearadbdata.exit.do.body11_crit_edge: ; preds = %vortex_fifo_clearadbdata.exit
  br label %do.body11

vortex_fifo_clearadbdata.exit.do.body_crit_edge:  ; preds = %vortex_fifo_clearadbdata.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body11:                                        ; preds = %vortex_fifo_clearwtdata.exit.do.body11_crit_edge, %vortex_fifo_clearadbdata.exit.do.body11_crit_edge
  %x.177 = phi i32 [ %dec40, %vortex_fifo_clearwtdata.exit.do.body11_crit_edge ], [ 31, %vortex_fifo_clearadbdata.exit.do.body11_crit_edge ]
  %addr.176 = phi i32 [ %sub38, %vortex_fifo_clearwtdata.exit.do.body11_crit_edge ], [ 63676, %vortex_fifo_clearadbdata.exit.do.body11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 %addr.176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 1048576) #12, !srcloc !361
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 %addr.176
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !446
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %15)
  %cmp23.not = icmp eq i32 %15, 1048576
  br i1 %cmp23.not, label %do.body11.if.end37_crit_edge, label %do.end27

do.body11.if.end37_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.end27:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vortex, align 4
  %dev29 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev29, align 8
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %add.ptr33 = getelementptr i8, ptr %21, i32 %addr.176
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #12, !srcloc !363
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !447
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.26, i32 noundef %addr.176, i32 noundef %23) #15
  br label %if.end37

if.end37:                                         ; preds = %do.end27, %do.body11.if.end37_crit_edge
  %shl.i69 = shl i32 %x.177, 5
  br label %do.body.i73

do.body.i73:                                      ; preds = %do.body.i73.do.body.i73_crit_edge, %if.end37
  %x.addr.01.i70 = phi i32 [ 31, %if.end37 ], [ %dec4.i, %do.body.i73.do.body.i73_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !448
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio, align 4
  %add.i71 = add nuw nsw i32 %x.addr.01.i70, %shl.i69
  %shl2.i = shl i32 %add.i71, 2
  %add3.i = add nuw nsw i32 %shl2.i, 59392
  %add.ptr.i72 = getelementptr i8, ptr %25, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 0) #12, !srcloc !361
  %dec4.i = add nsw i32 %x.addr.01.i70, -1
  %cmp1.not.i = icmp eq i32 %x.addr.01.i70, 0
  br i1 %cmp1.not.i, label %vortex_fifo_clearwtdata.exit, label %do.body.i73.do.body.i73_crit_edge

do.body.i73.do.body.i73_crit_edge:                ; preds = %do.body.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i73

vortex_fifo_clearwtdata.exit:                     ; preds = %do.body.i73
  %sub38 = add nsw i32 %addr.176, -4
  %dec40 = add nsw i32 %x.177, -1
  %cmp9 = icmp sgt i32 %x.177, 0
  br i1 %cmp9, label %vortex_fifo_clearwtdata.exit.do.body11_crit_edge, label %do.body42

vortex_fifo_clearwtdata.exit.do.body11_crit_edge: ; preds = %vortex_fifo_clearwtdata.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11

do.body42:                                        ; preds = %vortex_fifo_clearwtdata.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !449
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 4
  %add.ptr46 = getelementptr i8, ptr %27, i32 63680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 51183616) #12, !srcloc !361
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vortex_codec_write(ptr nocapture noundef readonly %codec, i16 noundef zeroext %addr, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %codec, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %lifeboat.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 72068
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !450
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.body, label %do.body3

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #12
  %inc = add nuw nsw i32 %lifeboat.0, 1
  %exitcond = icmp eq i32 %inc, 1002
  br i1 %exitcond, label %do.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.77) #15
  br label %cleanup

do.body3:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %conv = zext i16 %addr to i32
  %shl = shl nuw i32 %conv, 16
  %and6 = and i32 %shl, 8323072
  %conv7 = zext i16 %data to i32
  %or = or i32 %and6, %conv7
  %num = getelementptr inbounds %struct.snd_ac97, ptr %codec, i32 0, i32 11
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num, align 8
  %conv11 = zext i16 %12 to i32
  %shl12 = shl i32 %conv11, 24
  %or10 = or i32 %shl12, %or
  %or13 = or i32 %or10, 8388608
  %13 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 72072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %13) #12, !srcloc !361
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 72072
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !452
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @vortex_codec_read(ptr nocapture noundef readonly %codec, i16 noundef zeroext %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %codec, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %lifeboat.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 72068
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !453
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #12
  %inc = add nuw nsw i32 %lifeboat.0, 1
  %exitcond = icmp eq i32 %inc, 1002
  br i1 %exitcond, label %do.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.77) #15
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %conv = zext i16 %addr to i32
  %shl = shl nuw i32 %conv, 16
  %and3 = and i32 %shl, 8323072
  %num = getelementptr inbounds %struct.snd_ac97, ptr %codec, i32 0, i32 11
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num, align 8
  %conv4 = zext i16 %12 to i32
  %shl5 = shl i32 %conv4, 24
  %or = or i32 %shl5, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !454
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 72072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %13) #12, !srcloc !361
  br label %do.body11

do.body11:                                        ; preds = %do.cond29.do.body11_crit_edge, %while.end
  %lifeboat.1 = phi i32 [ %lifeboat.0, %while.end ], [ %inc19, %do.cond29.do.body11_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #12
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %18, i32 72072
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !455
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %lifeboat.1)
  %exitcond53 = icmp eq i32 %lifeboat.1, 1001
  br i1 %exitcond53, label %do.end25, label %do.cond29

do.end25:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev27 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.81) #15
  br label %cleanup

do.cond29:                                        ; preds = %do.body11
  %24 = tail call i32 @llvm.bswap.i32(i32 %19)
  %inc19 = add nuw nsw i32 %lifeboat.1, 1
  %and30 = and i32 %24, 8323072
  %cmp33.not = icmp eq i32 %and30, %shl
  br i1 %cmp33.not, label %do.end35, label %do.cond29.do.body11_crit_edge

do.cond29.do.body11_crit_edge:                    ; preds = %do.cond29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11

do.end35:                                         ; preds = %do.cond29
  call void @__sanitizer_cov_trace_pc() #14
  %conv37 = trunc i32 %24 to i16
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.end25, %do.end
  %retval.0 = phi i16 [ -1, %do.end ], [ -1, %do.end25 ], [ %conv37, %do.end35 ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vortex_pcm_open(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %call = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_pow2(ptr noundef %3, i32 noundef 0, i32 noundef 14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 18, i32 noundef 64) #12
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %arrayidx = getelementptr %struct.snd_pcm, ptr %5, i32 0, i32 7, i32 40
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end5.if.end24_crit_edge [
    i8 3, label %if.else
    i8 1, label %if.then16
  ]

if.end5.if.end24_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then16:                                        ; preds = %if.end5
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %9 = call ptr @memcpy(ptr %hw, ptr @snd_vortex_playback_hw_spdif, i32 64)
  %spdif_sr = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %spdif_sr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spdif_sr, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %11, label %if.then16.if.end24_crit_edge [
    i32 32000, label %if.then16.if.end24.sink.split_crit_edge
    i32 44100, label %sw.bb18
    i32 48000, label %sw.bb21
  ]

if.then16.if.end24.sink.split_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.sink.split

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

sw.bb18:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.sink.split

sw.bb21:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %sw.bb21, %sw.bb18, %if.then16.if.end24.sink.split_crit_edge
  %.sink = phi i32 [ 64, %sw.bb18 ], [ 128, %sw.bb21 ], [ 32, %if.then16.if.end24.sink.split_crit_edge ]
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %13 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %rates, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.then16.if.end24_crit_edge, %if.end5.if.end24_crit_edge
  %14 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %substream, align 4
  %arrayidx27 = getelementptr %struct.snd_pcm, ptr %15, i32 0, i32 7, i32 40
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx27, align 8
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %17, label %if.end24.cleanup.sink.split_crit_edge [
    i8 0, label %if.end24.if.then37_crit_edge
    i8 4, label %if.end24.if.then37_crit_edge67
  ]

if.end24.if.then37_crit_edge67:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

if.end24.if.then37_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then37:                                        ; preds = %if.end24.if.then37_crit_edge, %if.end24.if.then37_crit_edge67
  %hw38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %19 = call ptr @memcpy(ptr %hw38, ptr @snd_vortex_playback_hw_adb, i32 64)
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %hw42 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %20 = call ptr @memcpy(ptr %hw42, ptr @snd_vortex_playback_hw_wt, i32 64)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then37, %if.end24.cleanup.sink.split_crit_edge
  %21 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime1, align 4
  %private_data41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %private_data41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %private_data41, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_vortex_pcm_close(ptr nocapture noundef readonly %substream) #7 align 64 {
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
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %substream1 = getelementptr inbounds %struct.stream_t, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream1, align 4
  %nr_ch = getelementptr inbounds %struct.stream_t, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %nr_ch to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nr_ch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %private_data3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private_data3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vortex_pcm_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %lock = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %6 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream, align 4
  %arrayidx = getelementptr %struct.snd_pcm, ptr %7, i32 0, i32 7, i32 40
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 8
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.not = icmp eq i8 %9, 3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cmp7.not = icmp eq ptr %5, null
  br i1 %cmp7.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dma10 = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %dma10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma10, align 4
  %nr_ch = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %nr_ch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_ch, align 4
  %dir = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir, align 4
  %type11 = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type11, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %18 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number, align 4
  %call = tail call fastcc i32 @vortex_adb_allocroute(ptr noundef %1, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %stream13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %22 = ptrtoint ptr %stream13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream13, align 4
  %number14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %24 = ptrtoint ptr %number14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number14, align 4
  %call15 = tail call fastcc i32 @vortex_adb_allocroute(ptr noundef %1, i32 noundef -1, i32 noundef %21, i32 noundef %23, i32 noundef %conv, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end.cleanup56_crit_edge, label %if.end20

if.end.cleanup56_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup56

if.end20:                                         ; preds = %if.end
  %arrayidx21 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %call15
  %26 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %runtime, align 4
  %private_data23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %private_data23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx21, ptr %private_data23, align 8
  %substream24 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %call15, i32 15
  %29 = ptrtoint ptr %substream24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %substream, ptr %substream24, align 4
  %arrayidx.i.i103 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %30 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i103, align 4
  %arrayidx.i.i104 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %32 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i104, align 4
  %period_bytes.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %call15, i32 12
  %34 = ptrtoint ptr %period_bytes.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %period_bytes.i, align 4
  %nr_periods.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %call15, i32 11
  %35 = ptrtoint ptr %nr_periods.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %nr_periods.i, align 4
  %cfg0.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %call15, i32 4
  %36 = ptrtoint ptr %cfg0.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %cfg0.i, align 4
  %cfg1.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %call15, i32 5
  %37 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cfg1.i, align 4
  %38 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %33, label %sw.bb.i [
    i32 1, label %entry.sw.bb38_crit_edge.i
    i32 3, label %entry.sw.bb4_crit_edge.i
    i32 2, label %entry.sw.bb23_crit_edge.i
  ]

entry.sw.bb4_crit_edge.i:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %.pre.i = shl i32 %call15, 4
  br label %sw.bb4.i

entry.sw.bb23_crit_edge.i:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %.pre119.i = shl i32 %call15, 4
  br label %sw.bb23.i

entry.sw.bb38_crit_edge.i:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %.pre120.i = shl i32 %call15, 4
  br label %vortex_adbdma_setbuffers.exit

sw.bb.i:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %31, 67108863
  %or.i = or i32 %sub.i, -67108864
  %39 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i, ptr %cfg1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !456
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %substream24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %substream24, align 4
  %mul.i = mul i32 %31, 3
  %runtime.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %runtime.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %runtime.i.i, align 4
  %dma_buffer_p.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 53
  %44 = ptrtoint ptr %dma_buffer_p.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_buffer_p.i.i, align 8
  %call.i.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %45, i32 noundef %mul.i) #12
  %46 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #12
  %mmio.i = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %47 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i, align 4
  %shl.i = shl i32 %call15, 4
  %add3.i = add i32 %shl.i, 66060
  %add.ptr.i = getelementptr i8, ptr %48, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %46) #12, !srcloc !361
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %sw.bb.i, %entry.sw.bb4_crit_edge.i
  %shl19.pre-phi.i = phi i32 [ %.pre.i, %entry.sw.bb4_crit_edge.i ], [ %shl.i, %sw.bb.i ]
  %49 = ptrtoint ptr %cfg0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cfg0.i, align 4
  %or6.i = or i32 %50, 301989888
  store i32 %or6.i, ptr %cfg0.i, align 4
  %sub7.i = shl i32 %31, 12
  %shl8.i = add i32 %sub7.i, 1073737728
  %51 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cfg1.i, align 4
  %or9.i = or i32 %shl8.i, %52
  %or11.i = or i32 %or9.i, -1073741824
  store i32 %or11.i, ptr %cfg1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !457
  tail call void @arm_heavy_mb() #12
  %53 = ptrtoint ptr %substream24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %substream24, align 4
  %mul16.i = shl i32 %31, 1
  %runtime.i107.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %runtime.i107.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %runtime.i107.i, align 4
  %dma_buffer_p.i108.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 53
  %57 = ptrtoint ptr %dma_buffer_p.i108.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma_buffer_p.i108.i, align 8
  %call.i109.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %58, i32 noundef %mul16.i) #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %call.i109.i) #12
  %mmio18.i = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %60 = ptrtoint ptr %mmio18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio18.i, align 4
  %add21.i = add i32 %shl19.pre-phi.i, 66056
  %add.ptr22.i = getelementptr i8, ptr %61, i32 %add21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %59) #12, !srcloc !361
  br label %sw.bb23.i

sw.bb23.i:                                        ; preds = %sw.bb4.i, %entry.sw.bb23_crit_edge.i
  %shl34.pre-phi.i = phi i32 [ %.pre119.i, %entry.sw.bb23_crit_edge.i ], [ %shl19.pre-phi.i, %sw.bb4.i ]
  %sub24.i = add i32 %31, 1073741823
  %62 = ptrtoint ptr %cfg0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cfg0.i, align 4
  %or25.i = or i32 %sub24.i, %63
  %or27.i = or i32 %or25.i, -603979776
  store i32 %or27.i, ptr %cfg0.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !458
  tail call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %substream24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %substream24, align 4
  %runtime.i110.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %runtime.i110.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %runtime.i110.i, align 4
  %dma_buffer_p.i111.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %67, i32 0, i32 53
  %68 = ptrtoint ptr %dma_buffer_p.i111.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma_buffer_p.i111.i, align 8
  %call.i112.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %69, i32 noundef %31) #12
  %70 = tail call i32 @llvm.bswap.i32(i32 %call.i112.i) #12
  %mmio33.i = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %71 = ptrtoint ptr %mmio33.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio33.i, align 4
  %add36.i = add i32 %shl34.pre-phi.i, 66052
  %add.ptr37.i = getelementptr i8, ptr %72, i32 %add36.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %70) #12, !srcloc !361
  br label %vortex_adbdma_setbuffers.exit

vortex_adbdma_setbuffers.exit:                    ; preds = %sw.bb23.i, %entry.sw.bb38_crit_edge.i
  %shl50.pre-phi.i = phi i32 [ %.pre120.i, %entry.sw.bb38_crit_edge.i ], [ %shl34.pre-phi.i, %sw.bb23.i ]
  %sub39.i = shl i32 %31, 12
  %shl40.i = add i32 %sub39.i, 1073737728
  %73 = ptrtoint ptr %cfg0.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cfg0.i, align 4
  %or41.i = or i32 %shl40.i, %74
  %or43.i = or i32 %or41.i, -1073741824
  store i32 %or43.i, ptr %cfg0.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !459
  tail call void @arm_heavy_mb() #12
  %75 = ptrtoint ptr %substream24 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %substream24, align 4
  %runtime.i113.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %76, i32 0, i32 11
  %77 = ptrtoint ptr %runtime.i113.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %runtime.i113.i, align 4
  %dma_buffer_p.i114.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %78, i32 0, i32 53
  %79 = ptrtoint ptr %dma_buffer_p.i114.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dma_buffer_p.i114.i, align 8
  %call.i115.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %80, i32 noundef 0) #12
  %81 = tail call i32 @llvm.bswap.i32(i32 %call.i115.i) #12
  %mmio49.i = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %82 = ptrtoint ptr %mmio49.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio49.i, align 4
  %add51.i = add i32 %shl50.pre-phi.i, 66048
  %add.ptr52.i = getelementptr i8, ptr %83, i32 %add51.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %81) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !460
  tail call void @arm_heavy_mb() #12
  %84 = ptrtoint ptr %cfg0.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cfg0.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #12
  %87 = ptrtoint ptr %mmio49.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio49.i, align 4
  %shl58.i = shl i32 %call15, 3
  %add59.i = add i32 %shl58.i, 66560
  %add.ptr60.i = getelementptr i8, ptr %88, i32 %add59.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %86) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !461
  tail call void @arm_heavy_mb() #12
  %89 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cfg1.i, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  %92 = ptrtoint ptr %mmio49.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio49.i, align 4
  %add67.i = add i32 %shl58.i, 66564
  %add.ptr68.i = getelementptr i8, ptr %93, i32 %add67.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %91) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !462
  tail call void @arm_heavy_mb() #12
  %dma_ctrl.i.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %call15, i32 2
  %94 = ptrtoint ptr %dma_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_ctrl.i.i, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #12
  %97 = ptrtoint ptr %mmio49.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio49.i, align 4
  %shl.i.i = shl i32 %call15, 2
  %add.i.i = add i32 %shl.i.i, 66944
  %add.ptr.i.i = getelementptr i8, ptr %98, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %96) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !463
  tail call void @arm_heavy_mb() #12
  %99 = ptrtoint ptr %mmio49.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio49.i, align 4
  %add.i117.i = add i32 %shl.i.i, 67264
  %add.ptr.i118.i = getelementptr i8, ptr %100, i32 %add.i117.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 0) #12, !srcloc !361
  %period_virt.i.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %call15, i32 14
  %101 = ptrtoint ptr %period_virt.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %period_virt.i.i, align 4
  %period_real.i.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %call15, i32 13
  %102 = ptrtoint ptr %period_real.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %period_real.i.i, align 4
  %103 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %substream, align 4
  %arrayidx29 = getelementptr %struct.snd_pcm, ptr %104, i32 0, i32 7, i32 40
  %105 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx29, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp31 = icmp eq i8 %106, 0
  br i1 %cmp31, label %if.then33, label %vortex_adbdma_setbuffers.exit.cleanup56_crit_edge

vortex_adbdma_setbuffers.exit.cleanup56_crit_edge: ; preds = %vortex_adbdma_setbuffers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup56

if.then33:                                        ; preds = %vortex_adbdma_setbuffers.exit
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %number14 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %number14, align 4
  %active = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %108, i32 1
  %109 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %active, align 4
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %112 = load i32, ptr %number14, align 4
  %arrayidx38 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %112
  %113 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx38, align 4
  %access3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %114, i32 1, i32 0, i32 1
  %115 = ptrtoint ptr %access3.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %access3.i, align 4
  %and.i = and i32 %116, -257
  store i32 %and.i, ptr %access3.i, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %114, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %111, i32 noundef 3, ptr noundef %id.i) #12
  br label %cleanup56

if.else:                                          ; preds = %entry
  %number41 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %117 = ptrtoint ptr %number41 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %number41, align 4
  %arrayidx.i.i105 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %119 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i.i105, align 4
  tail call fastcc void @vortex_wt_allocroute(ptr noundef %1, i32 noundef %118, i32 noundef %120)
  %121 = ptrtoint ptr %number41 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %number41, align 4
  %arrayidx45 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %122
  %123 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %runtime, align 4
  %private_data47 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %124, i32 0, i32 44
  %125 = ptrtoint ptr %private_data47 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx45, ptr %private_data47, align 8
  %126 = load i32, ptr %number41, align 4
  %dma49 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %122, i32 8
  %127 = ptrtoint ptr %dma49 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %dma49, align 4
  %substream50 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %122, i32 15
  %128 = ptrtoint ptr %substream50 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %substream, ptr %substream50, align 4
  %129 = load i32, ptr %number41, align 4
  %arrayidx.i.i106 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %130 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i.i106, align 4
  %arrayidx.i.i107 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %132 = ptrtoint ptr %arrayidx.i.i107 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i.i107, align 4
  %period_bytes.i108 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 12
  %134 = ptrtoint ptr %period_bytes.i108 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %131, ptr %period_bytes.i108, align 4
  %nr_periods.i109 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 11
  %135 = ptrtoint ptr %nr_periods.i109 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %133, ptr %nr_periods.i109, align 4
  %cfg0.i110 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 4
  %136 = ptrtoint ptr %cfg0.i110 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %cfg0.i110, align 4
  %cfg1.i111 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 5
  %137 = ptrtoint ptr %cfg1.i111 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %cfg1.i111, align 4
  %138 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %133, label %sw.bb.i129 [
    i32 1, label %entry.sw.bb38_crit_edge.i117
    i32 3, label %entry.sw.bb4_crit_edge.i113
    i32 2, label %entry.sw.bb23_crit_edge.i115
  ]

entry.sw.bb4_crit_edge.i113:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %.pre.i112 = shl i32 %129, 4
  br label %sw.bb4.i144

entry.sw.bb23_crit_edge.i115:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %.pre119.i114 = shl i32 %129, 4
  br label %sw.bb23.i156

entry.sw.bb38_crit_edge.i117:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %.pre120.i116 = shl i32 %129, 4
  br label %vortex_wtdma_setbuffers.exit

sw.bb.i129:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i118 = add i32 %131, 67108863
  %or.i119 = or i32 %sub.i118, -67108864
  %139 = ptrtoint ptr %cfg1.i111 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %or.i119, ptr %cfg1.i111, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  tail call void @arm_heavy_mb() #12
  %substream.i120 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 15
  %140 = ptrtoint ptr %substream.i120 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %substream.i120, align 4
  %mul.i121 = mul i32 %131, 3
  %runtime.i.i122 = getelementptr inbounds %struct.snd_pcm_substream, ptr %141, i32 0, i32 11
  %142 = ptrtoint ptr %runtime.i.i122 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %runtime.i.i122, align 4
  %dma_buffer_p.i.i123 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %143, i32 0, i32 53
  %144 = ptrtoint ptr %dma_buffer_p.i.i123 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dma_buffer_p.i.i123, align 8
  %call.i.i124 = tail call i32 @snd_sgbuf_get_addr(ptr noundef %145, i32 noundef %mul.i121) #12
  %146 = tail call i32 @llvm.bswap.i32(i32 %call.i.i124) #12
  %mmio.i125 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %147 = ptrtoint ptr %mmio.i125 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio.i125, align 4
  %shl.i126 = shl i32 %129, 4
  %add3.i127 = add i32 %shl.i126, 65548
  %add.ptr.i128 = getelementptr i8, ptr %148, i32 %add3.i127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %146) #12, !srcloc !361
  br label %sw.bb4.i144

sw.bb4.i144:                                      ; preds = %sw.bb.i129, %entry.sw.bb4_crit_edge.i113
  %shl19.pre-phi.i130 = phi i32 [ %.pre.i112, %entry.sw.bb4_crit_edge.i113 ], [ %shl.i126, %sw.bb.i129 ]
  %149 = ptrtoint ptr %cfg0.i110 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cfg0.i110, align 4
  %or6.i131 = or i32 %150, 301989888
  store i32 %or6.i131, ptr %cfg0.i110, align 4
  %sub7.i132 = shl i32 %131, 12
  %shl8.i133 = add i32 %sub7.i132, 1073737728
  %151 = ptrtoint ptr %cfg1.i111 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cfg1.i111, align 4
  %or9.i134 = or i32 %shl8.i133, %152
  %or11.i135 = or i32 %or9.i134, -1073741824
  store i32 %or11.i135, ptr %cfg1.i111, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !465
  tail call void @arm_heavy_mb() #12
  %substream15.i136 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 15
  %153 = ptrtoint ptr %substream15.i136 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %substream15.i136, align 4
  %mul16.i137 = shl i32 %131, 1
  %runtime.i107.i138 = getelementptr inbounds %struct.snd_pcm_substream, ptr %154, i32 0, i32 11
  %155 = ptrtoint ptr %runtime.i107.i138 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %runtime.i107.i138, align 4
  %dma_buffer_p.i108.i139 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %156, i32 0, i32 53
  %157 = ptrtoint ptr %dma_buffer_p.i108.i139 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dma_buffer_p.i108.i139, align 8
  %call.i109.i140 = tail call i32 @snd_sgbuf_get_addr(ptr noundef %158, i32 noundef %mul16.i137) #12
  %159 = tail call i32 @llvm.bswap.i32(i32 %call.i109.i140) #12
  %mmio18.i141 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %160 = ptrtoint ptr %mmio18.i141 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio18.i141, align 4
  %add21.i142 = add i32 %shl19.pre-phi.i130, 65544
  %add.ptr22.i143 = getelementptr i8, ptr %161, i32 %add21.i142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i143, i32 %159) #12, !srcloc !361
  br label %sw.bb23.i156

sw.bb23.i156:                                     ; preds = %sw.bb4.i144, %entry.sw.bb23_crit_edge.i115
  %shl34.pre-phi.i145 = phi i32 [ %.pre119.i114, %entry.sw.bb23_crit_edge.i115 ], [ %shl19.pre-phi.i130, %sw.bb4.i144 ]
  %sub24.i146 = add i32 %131, 1073741823
  %162 = ptrtoint ptr %cfg0.i110 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cfg0.i110, align 4
  %or25.i147 = or i32 %sub24.i146, %163
  %or27.i148 = or i32 %or25.i147, -603979776
  store i32 %or27.i148, ptr %cfg0.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !466
  tail call void @arm_heavy_mb() #12
  %substream31.i149 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 15
  %164 = ptrtoint ptr %substream31.i149 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %substream31.i149, align 4
  %runtime.i110.i150 = getelementptr inbounds %struct.snd_pcm_substream, ptr %165, i32 0, i32 11
  %166 = ptrtoint ptr %runtime.i110.i150 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %runtime.i110.i150, align 4
  %dma_buffer_p.i111.i151 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %167, i32 0, i32 53
  %168 = ptrtoint ptr %dma_buffer_p.i111.i151 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dma_buffer_p.i111.i151, align 8
  %call.i112.i152 = tail call i32 @snd_sgbuf_get_addr(ptr noundef %169, i32 noundef %131) #12
  %170 = tail call i32 @llvm.bswap.i32(i32 %call.i112.i152) #12
  %mmio33.i153 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %171 = ptrtoint ptr %mmio33.i153 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mmio33.i153, align 4
  %add36.i154 = add i32 %shl34.pre-phi.i145, 65540
  %add.ptr37.i155 = getelementptr i8, ptr %172, i32 %add36.i154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i155, i32 %170) #12, !srcloc !361
  br label %vortex_wtdma_setbuffers.exit

vortex_wtdma_setbuffers.exit:                     ; preds = %sw.bb23.i156, %entry.sw.bb38_crit_edge.i117
  %shl50.pre-phi.i157 = phi i32 [ %.pre120.i116, %entry.sw.bb38_crit_edge.i117 ], [ %shl34.pre-phi.i145, %sw.bb23.i156 ]
  %sub39.i158 = shl i32 %131, 12
  %shl40.i159 = add i32 %sub39.i158, 1073737728
  %173 = ptrtoint ptr %cfg0.i110 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cfg0.i110, align 4
  %or41.i160 = or i32 %shl40.i159, %174
  %or43.i161 = or i32 %or41.i160, -1073741824
  store i32 %or43.i161, ptr %cfg0.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !467
  tail call void @arm_heavy_mb() #12
  %substream47.i162 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 15
  %175 = ptrtoint ptr %substream47.i162 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %substream47.i162, align 4
  %runtime.i113.i163 = getelementptr inbounds %struct.snd_pcm_substream, ptr %176, i32 0, i32 11
  %177 = ptrtoint ptr %runtime.i113.i163 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %runtime.i113.i163, align 4
  %dma_buffer_p.i114.i164 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %178, i32 0, i32 53
  %179 = ptrtoint ptr %dma_buffer_p.i114.i164 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dma_buffer_p.i114.i164, align 8
  %call.i115.i165 = tail call i32 @snd_sgbuf_get_addr(ptr noundef %180, i32 noundef 0) #12
  %181 = tail call i32 @llvm.bswap.i32(i32 %call.i115.i165) #12
  %mmio49.i166 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %182 = ptrtoint ptr %mmio49.i166 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmio49.i166, align 4
  %add51.i167 = add i32 %shl50.pre-phi.i157, 65536
  %add.ptr52.i168 = getelementptr i8, ptr %183, i32 %add51.i167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i168, i32 %181) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !468
  tail call void @arm_heavy_mb() #12
  %184 = ptrtoint ptr %cfg0.i110 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cfg0.i110, align 4
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #12
  %187 = ptrtoint ptr %mmio49.i166 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mmio49.i166, align 4
  %shl58.i169 = shl i32 %129, 3
  %add59.i170 = add i32 %shl58.i169, 66304
  %add.ptr60.i171 = getelementptr i8, ptr %188, i32 %add59.i170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i171, i32 %186) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !469
  tail call void @arm_heavy_mb() #12
  %189 = ptrtoint ptr %cfg1.i111 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cfg1.i111, align 4
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #12
  %192 = ptrtoint ptr %mmio49.i166 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mmio49.i166, align 4
  %add67.i172 = add i32 %shl58.i169, 66308
  %add.ptr68.i173 = getelementptr i8, ptr %193, i32 %add67.i172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i173, i32 %191) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !470
  tail call void @arm_heavy_mb() #12
  %dma_ctrl.i.i174 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 2
  %194 = ptrtoint ptr %dma_ctrl.i.i174 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dma_ctrl.i.i174, align 4
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #12
  %197 = ptrtoint ptr %mmio49.i166 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mmio49.i166, align 4
  %shl.i.i175 = shl i32 %129, 2
  %add.i.i176 = add i32 %shl.i.i175, 66816
  %add.ptr.i.i177 = getelementptr i8, ptr %198, i32 %add.i.i176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i177, i32 %196) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !471
  tail call void @arm_heavy_mb() #12
  %199 = ptrtoint ptr %mmio49.i166 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mmio49.i166, align 4
  %add.i117.i178 = add i32 %shl.i.i175, 67136
  %add.ptr.i118.i179 = getelementptr i8, ptr %200, i32 %add.i117.i178
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i179, i32 0) #12, !srcloc !361
  %period_virt.i.i180 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 14
  %201 = ptrtoint ptr %period_virt.i.i180 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %period_virt.i.i180, align 4
  %period_real.i.i181 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %129, i32 13
  %202 = ptrtoint ptr %period_real.i.i181 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %period_real.i.i181, align 4
  br label %cleanup56

cleanup56:                                        ; preds = %vortex_wtdma_setbuffers.exit, %if.then33, %vortex_adbdma_setbuffers.exit.cleanup56_crit_edge, %if.end.cleanup56_crit_edge
  %retval.1 = phi i32 [ %call15, %if.end.cleanup56_crit_edge ], [ 0, %vortex_adbdma_setbuffers.exit.cleanup56_crit_edge ], [ 0, %if.then33 ], [ 0, %vortex_wtdma_setbuffers.exit ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vortex_pcm_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %lock = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %6 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream, align 4
  %arrayidx = getelementptr %struct.snd_pcm, ptr %7, i32 0, i32 7, i32 40
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.not = icmp eq i8 %9, 3
  %cmp19.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp19.not, label %if.then.if.end25_crit_edge, label %if.then5

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10 = icmp eq i8 %9, 0
  br i1 %cmp10, label %if.then12, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number, align 4
  %active = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %11, i32 1
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %active, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = load i32, ptr %number, align 4
  %arrayidx16 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %15
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx16, align 4
  %access3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %17, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %access3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %access3.i, align 4
  %or.sink.i = or i32 %19, 256
  store i32 %or.sink.i, ptr %access3.i, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %17, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %14, i32 noundef 3, ptr noundef %id.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then5.if.end_crit_edge
  %dma = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 8
  %20 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma, align 4
  %nr_ch = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %nr_ch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_ch, align 4
  %dir = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 9
  %24 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dir, align 4
  %type = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  %number17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %28 = ptrtoint ptr %number17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number17, align 4
  %call = tail call fastcc i32 @vortex_adb_allocroute(ptr noundef %1, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29)
  br label %if.end25

if.else:                                          ; preds = %entry
  br i1 %cmp19.not, label %if.else.if.end25_crit_edge, label %if.then21

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dma22 = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 8
  %30 = ptrtoint ptr %dma22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma22, align 4
  tail call fastcc void @vortex_wt_allocroute(ptr noundef %1, i32 noundef %31, i32 noundef 0)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.else.if.end25_crit_edge, %if.end, %if.then.if.end25_crit_edge
  %32 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime, align 4
  %private_data27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %private_data27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %private_data27, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vortex_pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data3, align 8
  %dma4 = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dma4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma4, align 4
  %stream5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %11, label %sw.default.i [
    i32 1, label %entry.vortex_alsafmt_aspfmt.exit_crit_edge
    i32 20, label %sw.bb1.i
    i32 21, label %sw.bb2.i
    i32 31, label %sw.bb3.i
    i32 18, label %sw.bb4.i
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb6.i
  ]

entry.vortex_alsafmt_aspfmt.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_alsafmt_aspfmt.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_alsafmt_aspfmt.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_alsafmt_aspfmt.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_alsafmt_aspfmt.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_alsafmt_aspfmt.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_alsafmt_aspfmt.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_alsafmt_aspfmt.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.118, i32 noundef %11) #15
  br label %vortex_alsafmt_aspfmt.exit

vortex_alsafmt_aspfmt.exit:                       ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.vortex_alsafmt_aspfmt.exit_crit_edge
  %fmt.0.i = phi i32 [ 131072, %sw.default.i ], [ 147456, %sw.bb6.i ], [ 131072, %sw.bb5.i ], [ 81920, %sw.bb4.i ], [ 65536, %sw.bb3.i ], [ 49152, %sw.bb2.i ], [ 32768, %sw.bb1.i ], [ 16384, %entry.vortex_alsafmt_aspfmt.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %17 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %substream, align 4
  %arrayidx = getelementptr %struct.snd_pcm, ptr %18, i32 0, i32 7, i32 40
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp6.not = icmp eq i8 %20, 3
  br i1 %cmp6.not, label %if.else19, label %if.then8

if.then8:                                         ; preds = %vortex_alsafmt_aspfmt.exit
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp9 = icmp ne i32 %22, 1
  %cond = zext i1 %cmp9 to i32
  %dma_unknown.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 3
  %23 = ptrtoint ptr %dma_unknown.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %dma_unknown.i, align 4
  %dma_ctrl.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 2
  %24 = ptrtoint ptr %dma_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_ctrl.i, align 4
  %and4.i = and i32 %25, -262144
  %or6.i = select i1 %cmp, i32 12288, i32 4096
  %or12.i = or i32 %or6.i, %fmt.0.i
  %or18.i = or i32 %or12.i, %and4.i
  store i32 %or18.i, ptr %dma_ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !472
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %dma_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_ctrl.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %mmio.i = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 4
  %shl21.i = shl i32 %7, 2
  %add.i = add i32 %shl21.i, 66944
  %add.ptr.i = getelementptr i8, ptr %30, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #12, !srcloc !361
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %32, i32 %add.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !463
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 4
  %add.i43 = add i32 %shl21.i, 67264
  %add.ptr.i44 = getelementptr i8, ptr %35, i32 %add.i43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 0) #12, !srcloc !361
  %period_virt.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 14
  %36 = ptrtoint ptr %period_virt.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %period_virt.i, align 4
  %period_real.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 13
  %37 = ptrtoint ptr %period_real.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %period_real.i, align 4
  %38 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %substream, align 4
  %arrayidx13 = getelementptr %struct.snd_pcm, ptr %39, i32 0, i32 7, i32 40
  %40 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx13, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp15.not = icmp eq i8 %41, 1
  br i1 %cmp15.not, label %if.then8.if.end20_crit_edge, label %if.then17

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then17:                                        ; preds = %if.then8
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %42 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rate, align 4
  br i1 %cmp, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i = shl i32 %43, 15
  %div.i = udiv i32 %shl.i, 48000
  br label %if.end.i

if.else.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %div2.i = udiv i32 1572864000, %43
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %shl66.i.i = phi i32 [ 0, %if.else.i ], [ 65536, %if.then.i ]
  %cvrt.0.in.in.i = phi i32 [ %div2.i, %if.else.i ], [ %div.i, %if.then.i ]
  %cvrt.0.in.i = add nuw nsw i32 %cvrt.0.in.in.i, 1
  %cvrt.0.i = lshr i32 %cvrt.0.in.i, 1
  %arrayidx5.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 10, i32 1
  %44 = and i32 %cvrt.0.in.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool14.not.i.i = icmp eq i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cvrt.0.i)
  %cmp16.not.i.i = icmp eq i32 %cvrt.0.i, 65536
  %or.cond.i.i = or i1 %cmp16.not.i.i, %tobool14.not.i.i
  %shr.i.i = lshr i32 %cvrt.0.in.i, 15
  %and19.i.i = and i32 %shr.i.i, 7
  %45 = and i32 %cvrt.0.in.i, 32766
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool21.not.i.i = icmp eq i32 %45, 0
  %sub23.i.i = sub nuw nsw i32 16, %and19.i.i
  %sub25.i.i = xor i32 %and19.i.i, 15
  %46 = tail call i32 @llvm.bswap.i32(i32 %cvrt.0.i) #12
  %spec.select.i.i = select i1 %or.cond.i.i, i32 15, i32 12
  %esp10.1.i.i = select i1 %cmp, i32 0, i32 %spec.select.i.i
  %spec.select15.i.i = select i1 %or.cond.i.i, i32 3840, i32 3072
  %ebp.1.i.i = select i1 %cmp, i32 %spec.select15.i.i, i32 0
  %sub25.i.sub23.i.i = select i1 %tobool21.not.i.i, i32 %sub25.i.i, i32 %sub23.i.i
  %tr.addr.0.i.i = select i1 %or.cond.i.i, i32 131072, i32 0
  %sub25.i.sub23.i.op.i = shl nuw nsw i32 %sub25.i.sub23.i.i, 4
  %sub25.i.sub23.i.op.op.i = and i32 %sub25.i.sub23.i.op.i, 240
  %or67.i.i = or i32 %tr.addr.0.i.i, %shl66.i.i
  %or69.i.i = or i32 %or67.i.i, %ebp.1.i.i
  %or70.i.i = or i32 %or69.i.i, %esp10.1.i.i
  %47 = tail call i32 @llvm.bswap.i32(i32 %or70.i.i) #12
  %sub25.i.sub23.i.op.op.i.op = or i32 %sub25.i.sub23.i.op.op.i, 512
  %or49.i.i = select i1 %or.cond.i.i, i32 704, i32 %sub25.i.sub23.i.op.op.i.op
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.021.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx5.i, align 4
  %shl6.i = shl nuw i32 1, %i.021.i
  %and.i = and i32 %49, %shl6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then8.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  %shl.i.i.i = shl nuw nsw i32 %i.021.i, 7
  %add.i.i.i = add nuw nsw i32 %shl.i.i.i, 49152
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then8.i
  %i.026.i.i.i = phi i32 [ 31, %if.then8.i ], [ %dec.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !474
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i, align 4
  %shl1.i.i.i = shl i32 %i.026.i.i.i, 2
  %add2.i.i.i = add nuw nsw i32 %add.i.i.i, %shl1.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 %add2.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #12, !srcloc !361
  %dec.i.i.i = add nsw i32 %i.026.i.i.i, -1
  %cmp.not.i.i.i = icmp eq i32 %i.026.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %vortex_src_flushbuffers.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

vortex_src_flushbuffers.exit.i.i:                 ; preds = %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !475
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i, align 4
  %shl8.i.i.i = shl nuw nsw i32 %i.021.i, 3
  %add9.i.i.i = or i32 %shl8.i.i.i, 51200
  %add.ptr10.i.i.i = getelementptr i8, ptr %53, i32 %add9.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !476
  tail call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i, align 4
  %add18.i.i.i = or i32 %shl8.i.i.i, 51204
  %add.ptr19.i.i.i = getelementptr i8, ptr %55, i32 %add18.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i.i.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !477
  tail call void @arm_heavy_mb() #12
  %56 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i, align 4
  %shl.i4.i.i = shl nuw nsw i32 %i.021.i, 2
  %add.i5.i.i = add nuw nsw i32 %shl.i4.i.i, 52864
  %add.ptr.i6.i.i = getelementptr i8, ptr %57, i32 %add.i5.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !478
  tail call void @arm_heavy_mb() #12
  %58 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i, align 4
  %add6.i.i.i = add nuw nsw i32 %shl.i4.i.i, 52928
  %add.ptr7.i.i.i = getelementptr i8, ptr %59, i32 %add6.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !479
  tail call void @arm_heavy_mb() #12
  %60 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i, align 4
  %add13.i.i.i = add nuw nsw i32 %shl.i4.i.i, 53056
  %add.ptr14.i.i.i = getelementptr i8, ptr %61, i32 %add13.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i.i, i32 16777216) #12, !srcloc !361
  %62 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %63, i32 52420
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #12, !srcloc !363
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !480
  %or.i.i.i = or i32 %65, %shl6.i
  %neg.i.i.i = xor i32 %shl6.i, -1
  %and.i.i.i = and i32 %65, %neg.i.i.i
  %temp.0.i.i.i = select i1 %cmp, i32 %or.i.i.i, i32 %and.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !481
  tail call void @arm_heavy_mb() #12
  %66 = tail call i32 @llvm.bswap.i32(i32 %temp.0.i.i.i) #12
  %67 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %68, i32 52420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %66) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !482
  tail call void @arm_heavy_mb() #12
  %or50.i.i = or i32 %or49.i.i, %i.021.i
  %69 = tail call i32 @llvm.bswap.i32(i32 %or50.i.i) #12
  %70 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i, align 4
  %add.i.i = add nuw nsw i32 %shl.i4.i.i, 52736
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %69) #12, !srcloc !361
  %add.i12.i.i = add nuw nsw i32 %shl.i4.i.i, 52800
  br label %do.body.i14.i.i

do.body.i14.i.i:                                  ; preds = %do.cond12.i.i.i.do.body.i14.i.i_crit_edge, %vortex_src_flushbuffers.exit.i.i
  %lifeboat.0.i.i.i = phi i32 [ 0, %vortex_src_flushbuffers.exit.i.i ], [ %inc.i.i.i, %do.cond12.i.i.i.do.body.i14.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !483
  tail call void @arm_heavy_mb() #12
  %72 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i13.i.i = getelementptr i8, ptr %73, i32 %add.i12.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i, i32 %46) #12, !srcloc !361
  %74 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %75, i32 %add.i12.i.i
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !484
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %lifeboat.0.i.i.i)
  %exitcond.i.i.i = icmp eq i32 %lifeboat.0.i.i.i, 9
  br i1 %exitcond.i.i.i, label %do.end11.i.i.i, label %do.cond12.i.i.i

do.end11.i.i.i:                                   ; preds = %do.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %dev.i.i.i = getelementptr inbounds %struct.snd_card, ptr %78, i32 0, i32 27
  %79 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.120) #15
  br label %vortex_src_setupchannel.exit.i

do.cond12.i.i.i:                                  ; preds = %do.body.i14.i.i
  %inc.i.i.i = add nuw nsw i32 %lifeboat.0.i.i.i, 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %76) #12
  %cmp13.not.i.i.i = icmp eq i32 %81, %cvrt.0.i
  br i1 %cmp13.not.i.i.i, label %do.cond12.i.i.i.vortex_src_setupchannel.exit.i_crit_edge, label %do.cond12.i.i.i.do.body.i14.i.i_crit_edge

do.cond12.i.i.i.do.body.i14.i.i_crit_edge:        ; preds = %do.cond12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i14.i.i

do.cond12.i.i.i.vortex_src_setupchannel.exit.i_crit_edge: ; preds = %do.cond12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_src_setupchannel.exit.i

vortex_src_setupchannel.exit.i:                   ; preds = %do.cond12.i.i.i.vortex_src_setupchannel.exit.i_crit_edge, %do.end11.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !485
  tail call void @arm_heavy_mb() #12
  %82 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio.i, align 4
  %add60.i.i = add nuw nsw i32 %shl.i4.i.i, 52992
  %add.ptr61.i.i = getelementptr i8, ptr %83, i32 %add60.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !486
  tail call void @arm_heavy_mb() #12
  %84 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i, align 4
  %add74.i.i = add nuw nsw i32 %shl.i4.i.i, 53120
  %add.ptr75.i.i = getelementptr i8, ptr %85, i32 %add74.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i.i, i32 %47) #12, !srcloc !361
  br label %for.inc.i

for.inc.i:                                        ; preds = %vortex_src_setupchannel.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.if.end20_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end20_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.else19:                                        ; preds = %vortex_alsafmt_aspfmt.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dma_unknown.i45 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 3
  %86 = ptrtoint ptr %dma_unknown.i45 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %dma_unknown.i45, align 4
  %dma_ctrl.i46 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 2
  %87 = ptrtoint ptr %dma_ctrl.i46 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %fmt.0.i, ptr %dma_ctrl.i46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !487
  tail call void @arm_heavy_mb() #12
  %88 = ptrtoint ptr %dma_ctrl.i46 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_ctrl.i46, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #12
  %mmio.i47 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %91 = ptrtoint ptr %mmio.i47 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i47, align 4
  %shl18.i = shl i32 %7, 2
  %add.i48 = add i32 %shl18.i, 66816
  %add.ptr.i49 = getelementptr i8, ptr %92, i32 %add.i48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %90) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !471
  tail call void @arm_heavy_mb() #12
  %93 = ptrtoint ptr %mmio.i47 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i47, align 4
  %add.i52 = add i32 %shl18.i, 67136
  %add.ptr.i53 = getelementptr i8, ptr %94, i32 %add.i52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 0) #12, !srcloc !361
  %period_virt.i54 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 14
  %95 = ptrtoint ptr %period_virt.i54 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %period_virt.i54, align 4
  %period_real.i55 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 13
  %96 = ptrtoint ptr %period_real.i55 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %period_real.i55, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %for.inc.i.if.end20_crit_edge, %if.then8.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vortex_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %dma2 = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma2, align 4
  %lock = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
    i32 3, label %sw.bb20
    i32 4, label %sw.bb30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %5, align 4
  %10 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream, align 4
  %arrayidx = getelementptr %struct.snd_pcm, ptr %11, i32 0, i32 7, i32 40
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.not = icmp eq i8 %13, 3
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %nr_periods.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 11
  %period_virt.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 14
  %period_real.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 13
  %substream.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 15
  %period_bytes.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 12
  %mmio.i = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %shl.i = shl i32 %7, 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i.land.rhs.i_crit_edge, %if.then
  %i.058.i = phi i32 [ 0, %if.then ], [ %inc.i, %do.body.i.land.rhs.i_crit_edge ]
  %14 = ptrtoint ptr %nr_periods.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_periods.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.058.i, i32 %15)
  %cmp1.i = icmp slt i32 %i.058.i, %15
  br i1 %cmp1.i, label %for.body.i, label %land.rhs.i.vortex_adbdma_resetup.exit_crit_edge

land.rhs.i.vortex_adbdma_resetup.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_adbdma_resetup.exit

for.body.i:                                       ; preds = %land.rhs.i
  %16 = ptrtoint ptr %period_virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period_virt.i, align 4
  %add.i = add i32 %17, %i.058.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %15)
  %cmp3.not.i = icmp slt i32 %add.i, %15
  %sub.i = select i1 %cmp3.not.i, i32 0, i32 %15
  %spec.select.i = sub i32 %add.i, %sub.i
  %18 = ptrtoint ptr %period_real.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_real.i, align 4
  %add5.i = add i32 %19, %i.058.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp7.i = icmp slt i32 %15, 4
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %15)
  %cmp10.not.i = icmp slt i32 %add5.i, %15
  %sub13.i = select i1 %cmp10.not.i, i32 0, i32 %15
  %spec.select56.i = sub i32 %add5.i, %sub13.i
  br label %do.body.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add5.i)
  %cmp15.i = icmp sgt i32 %add5.i, 3
  %sub17.i = add i32 %add5.i, -4
  %spec.select57.i = select i1 %cmp15.i, i32 %sub17.i, i32 %add5.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then8.i
  %pp.0.i = phi i32 [ %spec.select56.i, %if.then8.i ], [ %spec.select57.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !488
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %substream.i, align 4
  %22 = ptrtoint ptr %period_bytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %period_bytes.i, align 4
  %mul.i = mul i32 %23, %spec.select.i
  %runtime.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %21, i32 0, i32 11
  %24 = ptrtoint ptr %runtime.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime.i.i, align 4
  %dma_buffer_p.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %dma_buffer_p.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_buffer_p.i.i, align 8
  %call.i.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %27, i32 noundef %mul.i) #12
  %28 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #12
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 4
  %add20.i = add i32 %pp.0.i, %shl.i
  %shl21.i = shl i32 %add20.i, 2
  %add22.i = add i32 %shl21.i, 66048
  %add.ptr.i = getelementptr i8, ptr %30, i32 %add22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #12, !srcloc !361
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %32, i32 %add22.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !489
  %inc.i = add nuw nsw i32 %i.058.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %do.body.i.vortex_adbdma_resetup.exit_crit_edge, label %do.body.i.land.rhs.i_crit_edge

do.body.i.land.rhs.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

do.body.i.vortex_adbdma_resetup.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_adbdma_resetup.exit

vortex_adbdma_resetup.exit:                       ; preds = %do.body.i.vortex_adbdma_resetup.exit_crit_edge, %land.rhs.i.vortex_adbdma_resetup.exit_crit_edge
  %arrayidx.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7
  %fifo_status.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 1
  %34 = ptrtoint ptr %fifo_status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fifo_status.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %35, label %vortex_adbdma_resetup.exit.vortex_adbdma_startfifo.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb1.i
    i32 2, label %sw.bb5.i
  ]

vortex_adbdma_resetup.exit.vortex_adbdma_startfifo.exit_crit_edge: ; preds = %vortex_adbdma_resetup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_adbdma_startfifo.exit

sw.bb.i:                                          ; preds = %vortex_adbdma_resetup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.not.i = icmp eq i32 %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !490
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i, align 4
  %add.i.i = add i32 %shl.i, 63488
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %add.i.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !491
  %42 = and i32 %41, -268435457
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  %or.i.i = select i1 %tobool.not.not.i, i32 65536, i32 65552
  %or4.i.i = or i32 %43, %or.i.i
  %44 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #12
  %45 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %46, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %44) #12, !srcloc !361
  br label %vortex_adbdma_startfifo.exit

sw.bb1.i:                                         ; preds = %vortex_adbdma_resetup.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !492
  tail call void @arm_heavy_mb() #12
  %dma_ctrl.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 2
  %47 = ptrtoint ptr %dma_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_ctrl.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #12
  %50 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i, align 4
  %add.i76 = add i32 %shl.i, 66944
  %add.ptr.i77 = getelementptr i8, ptr %51, i32 %add.i76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %49) #12, !srcloc !361
  %dma_unknown.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 3
  %52 = ptrtoint ptr %dma_unknown.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_unknown.i, align 4
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool3.not.i = icmp ne i32 %55, 0
  %cond4.i = zext i1 %tobool3.not.i to i32
  tail call fastcc void @vortex_fifo_setadbctrl(ptr noundef %1, i32 noundef %7, i32 noundef %53, i32 noundef 1, i32 noundef %cond4.i) #12
  br label %vortex_adbdma_startfifo.exit

sw.bb5.i:                                         ; preds = %vortex_adbdma_resetup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dma_unknown6.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 3
  %56 = ptrtoint ptr %dma_unknown6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_unknown6.i, align 4
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool8.not.i = icmp ne i32 %59, 0
  %cond9.i = zext i1 %tobool8.not.i to i32
  tail call fastcc void @vortex_fifo_setadbctrl(ptr noundef %1, i32 noundef %7, i32 noundef %57, i32 noundef 0, i32 noundef %cond9.i) #12
  br label %vortex_adbdma_startfifo.exit

vortex_adbdma_startfifo.exit:                     ; preds = %sw.bb5.i, %sw.bb1.i, %sw.bb.i, %vortex_adbdma_resetup.exit.vortex_adbdma_startfifo.exit_crit_edge
  %60 = ptrtoint ptr %fifo_status.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %fifo_status.i, align 4
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %62, i32 0, i32 27
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.122, i32 noundef %7) #15
  tail call fastcc void @vortex_wtdma_startfifo(ptr noundef %1, i32 noundef %7)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %5, align 4
  %66 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %substream, align 4
  %arrayidx8 = getelementptr %struct.snd_pcm, ptr %67, i32 0, i32 7, i32 40
  %68 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx8, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %69)
  %cmp10.not = icmp eq i8 %69, 3
  br i1 %cmp10.not, label %do.end16, label %if.then12

if.then12:                                        ; preds = %sw.bb4
  %arrayidx.i78 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7
  %fifo_status.i79 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 1
  %70 = ptrtoint ptr %fifo_status.i79 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fifo_status.i79, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %71, label %if.then12.if.end4.i_crit_edge [
    i32 1, label %if.then.i
    i32 0, label %if.then12.cleanup_crit_edge
  ]

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12.if.end4.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %dma_unknown.i80 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 3
  %73 = ptrtoint ptr %dma_unknown.i80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_unknown.i80, align 4
  tail call fastcc void @vortex_fifo_setadbctrl(ptr noundef %1, i32 noundef %7, i32 noundef %74, i32 noundef 0, i32 noundef 0) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %if.then12.if.end4.i_crit_edge
  %75 = ptrtoint ptr %fifo_status.i79 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %fifo_status.i79, align 4
  %76 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx.i78, align 4
  br label %cleanup

do.end16:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %dev18 = getelementptr inbounds %struct.snd_card, ptr %78, i32 0, i32 27
  %79 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev18, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.126, i32 noundef %7) #15
  tail call fastcc void @vortex_wtdma_stopfifo(ptr noundef %1, i32 noundef %7)
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %81 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %substream, align 4
  %arrayidx23 = getelementptr %struct.snd_pcm, ptr %82, i32 0, i32 7, i32 40
  %83 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx23, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %84)
  %cmp25.not = icmp eq i8 %84, 3
  br i1 %cmp25.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %sw.bb20
  %fifo_status.i81 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 1
  %85 = ptrtoint ptr %fifo_status.i81 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fifo_status.i81, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %86, label %if.then27.vortex_adbdma_pausefifo.exit_crit_edge [
    i32 1, label %if.then27.sw.epilog.sink.split.i_crit_edge
    i32 0, label %do.body.i87
  ]

if.then27.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

if.then27.vortex_adbdma_pausefifo.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_adbdma_pausefifo.exit

do.body.i87:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !493
  tail call void @arm_heavy_mb() #12
  %dma_ctrl.i82 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 2
  %88 = ptrtoint ptr %dma_ctrl.i82 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_ctrl.i82, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #12
  %mmio.i83 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %91 = ptrtoint ptr %mmio.i83 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i83, align 4
  %shl.i84 = shl i32 %7, 2
  %add.i85 = add i32 %shl.i84, 66944
  %add.ptr.i86 = getelementptr i8, ptr %92, i32 %add.i85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %90) #12, !srcloc !361
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.body.i87, %if.then27.sw.epilog.sink.split.i_crit_edge
  %dma_unknown2.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 3
  %93 = ptrtoint ptr %dma_unknown2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma_unknown2.i, align 4
  tail call fastcc void @vortex_fifo_setadbctrl(ptr noundef %1, i32 noundef %7, i32 noundef %94, i32 noundef 0, i32 noundef 0) #12
  br label %vortex_adbdma_pausefifo.exit

vortex_adbdma_pausefifo.exit:                     ; preds = %sw.epilog.sink.split.i, %if.then27.vortex_adbdma_pausefifo.exit_crit_edge
  %95 = ptrtoint ptr %fifo_status.i81 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 2, ptr %fifo_status.i81, align 4
  br label %cleanup

if.else28:                                        ; preds = %sw.bb20
  %fifo_status.i88 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 1
  %96 = ptrtoint ptr %fifo_status.i88 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fifo_status.i88, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %97, label %if.else28.vortex_wtdma_pausefifo.exit_crit_edge [
    i32 1, label %if.else28.sw.epilog.sink.split.i96_crit_edge
    i32 0, label %do.body.i94
  ]

if.else28.sw.epilog.sink.split.i96_crit_edge:     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i96

if.else28.vortex_wtdma_pausefifo.exit_crit_edge:  ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_wtdma_pausefifo.exit

do.body.i94:                                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !494
  tail call void @arm_heavy_mb() #12
  %dma_ctrl.i89 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 2
  %99 = ptrtoint ptr %dma_ctrl.i89 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_ctrl.i89, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #12
  %mmio.i90 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %102 = ptrtoint ptr %mmio.i90 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio.i90, align 4
  %shl.i91 = shl i32 %7, 2
  %add.i92 = add i32 %shl.i91, 66816
  %add.ptr.i93 = getelementptr i8, ptr %103, i32 %add.i92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %101) #12, !srcloc !361
  br label %sw.epilog.sink.split.i96

sw.epilog.sink.split.i96:                         ; preds = %do.body.i94, %if.else28.sw.epilog.sink.split.i96_crit_edge
  %dma_unknown2.i95 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 3
  %104 = ptrtoint ptr %dma_unknown2.i95 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_unknown2.i95, align 4
  tail call fastcc void @vortex_fifo_setwtctrl(ptr noundef %1, i32 noundef %7, i32 noundef %105, i32 noundef 0, i32 noundef 0) #12
  br label %vortex_wtdma_pausefifo.exit

vortex_wtdma_pausefifo.exit:                      ; preds = %sw.epilog.sink.split.i96, %if.else28.vortex_wtdma_pausefifo.exit_crit_edge
  %106 = ptrtoint ptr %fifo_status.i88 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %fifo_status.i88, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  %107 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %substream, align 4
  %arrayidx33 = getelementptr %struct.snd_pcm, ptr %108, i32 0, i32 7, i32 40
  %109 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx33, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %110)
  %cmp35.not = icmp eq i8 %110, 3
  br i1 %cmp35.not, label %if.else38, label %if.then37

if.then37:                                        ; preds = %sw.bb30
  %arrayidx.i97 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7
  %fifo_status.i98 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 1
  %111 = ptrtoint ptr %fifo_status.i98 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fifo_status.i98, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %112, label %if.then37.vortex_adbdma_resumefifo.exit_crit_edge [
    i32 0, label %do.body.i104
    i32 2, label %if.then37.sw.epilog.sink.split.i106_crit_edge
  ]

if.then37.sw.epilog.sink.split.i106_crit_edge:    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i106

if.then37.vortex_adbdma_resumefifo.exit_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_adbdma_resumefifo.exit

do.body.i104:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !495
  tail call void @arm_heavy_mb() #12
  %dma_ctrl.i99 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 2
  %114 = ptrtoint ptr %dma_ctrl.i99 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dma_ctrl.i99, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #12
  %mmio.i100 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %117 = ptrtoint ptr %mmio.i100 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio.i100, align 4
  %shl.i101 = shl i32 %7, 2
  %add.i102 = add i32 %shl.i101, 66944
  %add.ptr.i103 = getelementptr i8, ptr %118, i32 %add.i102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %116) #12, !srcloc !361
  br label %sw.epilog.sink.split.i106

sw.epilog.sink.split.i106:                        ; preds = %do.body.i104, %if.then37.sw.epilog.sink.split.i106_crit_edge
  %dma_unknown2.i105 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 3
  %119 = ptrtoint ptr %dma_unknown2.i105 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dma_unknown2.i105, align 4
  %121 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool4.not.i = icmp ne i32 %122, 0
  %cond5.i = zext i1 %tobool4.not.i to i32
  tail call fastcc void @vortex_fifo_setadbctrl(ptr noundef %1, i32 noundef %7, i32 noundef %120, i32 noundef 1, i32 noundef %cond5.i) #12
  br label %vortex_adbdma_resumefifo.exit

vortex_adbdma_resumefifo.exit:                    ; preds = %sw.epilog.sink.split.i106, %if.then37.vortex_adbdma_resumefifo.exit_crit_edge
  %123 = ptrtoint ptr %fifo_status.i98 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %fifo_status.i98, align 4
  br label %cleanup

if.else38:                                        ; preds = %sw.bb30
  %arrayidx.i107 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7
  %fifo_status.i108 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 1
  %124 = ptrtoint ptr %fifo_status.i108 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %fifo_status.i108, align 4
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %125, label %if.else38.vortex_wtdma_resumefifo.exit_crit_edge [
    i32 0, label %do.body.i114
    i32 2, label %if.else38.sw.epilog.sink.split.i118_crit_edge
  ]

if.else38.sw.epilog.sink.split.i118_crit_edge:    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i118

if.else38.vortex_wtdma_resumefifo.exit_crit_edge: ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_wtdma_resumefifo.exit

do.body.i114:                                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !496
  tail call void @arm_heavy_mb() #12
  %dma_ctrl.i109 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 2
  %127 = ptrtoint ptr %dma_ctrl.i109 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dma_ctrl.i109, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #12
  %mmio.i110 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %130 = ptrtoint ptr %mmio.i110 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio.i110, align 4
  %shl.i111 = shl i32 %7, 2
  %add.i112 = add i32 %shl.i111, 66816
  %add.ptr.i113 = getelementptr i8, ptr %131, i32 %add.i112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %129) #12, !srcloc !361
  br label %sw.epilog.sink.split.i118

sw.epilog.sink.split.i118:                        ; preds = %do.body.i114, %if.else38.sw.epilog.sink.split.i118_crit_edge
  %dma_unknown2.i115 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 3
  %132 = ptrtoint ptr %dma_unknown2.i115 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dma_unknown2.i115, align 4
  %134 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool4.not.i116 = icmp ne i32 %135, 0
  %cond5.i117 = zext i1 %tobool4.not.i116 to i32
  tail call fastcc void @vortex_fifo_setwtctrl(ptr noundef %1, i32 noundef %7, i32 noundef %133, i32 noundef 0, i32 noundef %cond5.i117) #12
  br label %vortex_wtdma_resumefifo.exit

vortex_wtdma_resumefifo.exit:                     ; preds = %sw.epilog.sink.split.i118, %if.else38.vortex_wtdma_resumefifo.exit_crit_edge
  %136 = ptrtoint ptr %fifo_status.i108 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %fifo_status.i108, align 4
  br label %cleanup

cleanup:                                          ; preds = %vortex_wtdma_resumefifo.exit, %vortex_adbdma_resumefifo.exit, %vortex_wtdma_pausefifo.exit, %vortex_adbdma_pausefifo.exit, %do.end16, %if.end4.i, %if.then12.cleanup_crit_edge, %do.end, %vortex_adbdma_startfifo.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end4.i ], [ %71, %if.then12.cleanup_crit_edge ], [ 0, %vortex_adbdma_resumefifo.exit ], [ 0, %vortex_wtdma_resumefifo.exit ], [ 0, %vortex_adbdma_pausefifo.exit ], [ 0, %vortex_wtdma_pausefifo.exit ], [ 0, %do.end16 ], [ 0, %vortex_adbdma_startfifo.exit ], [ 0, %do.end ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vortex_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %dma2 = getelementptr inbounds %struct.stream_t, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma2, align 4
  %lock = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %8 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream, align 4
  %arrayidx = getelementptr %struct.snd_pcm, ptr %9, i32 0, i32 7, i32 40
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp.not = icmp eq i8 %11, 3
  %mmio.i23 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %mmio.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i23, align 4
  %shl.i24 = shl i32 %7, 2
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.i = add i32 %shl.i24, 67008
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !497
  %and.i = lshr i32 %15, 12
  %nr_periods.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 11
  %16 = ptrtoint ptr %nr_periods.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_periods.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i = icmp sgt i32 %17, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %period_real.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 13
  %18 = ptrtoint ptr %period_real.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_real.i, align 4
  %sub.i = sub i32 %and.i, %19
  %and2.i = and i32 %sub.i, 3
  br label %vortex_adbdma_getlinearpos.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %20 = and i32 %and.i, 3
  %period_real3.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 13
  %21 = ptrtoint ptr %period_real3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %period_real3.i, align 4
  %sub4.i = sub i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i)
  %cmp5.i = icmp slt i32 %sub4.i, 0
  %add8.i = select i1 %cmp5.i, i32 %17, i32 0
  %spec.select.i = add i32 %add8.i, %sub4.i
  br label %vortex_adbdma_getlinearpos.exit

vortex_adbdma_getlinearpos.exit:                  ; preds = %if.else.i, %if.then.i
  %delta.0.i = phi i32 [ %and2.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  %period_virt.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 14
  %23 = ptrtoint ptr %period_virt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %period_virt.i, align 4
  %add10.i = add i32 %24, %delta.0.i
  %period_bytes.i = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %7, i32 12
  %25 = ptrtoint ptr %period_bytes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %period_bytes.i, align 4
  %mul.i = mul i32 %add10.i, %26
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.i25 = add i32 %shl.i24, 66816
  %add.ptr.i26 = getelementptr i8, ptr %13, i32 %add.i25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #12, !srcloc !363
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !498
  %period_virt.i27 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 14
  %29 = ptrtoint ptr %period_virt.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %period_virt.i27, align 4
  %period_bytes.i28 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 6, i32 %7, i32 12
  %31 = ptrtoint ptr %period_bytes.i28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period_bytes.i28, align 4
  %mul.i29 = mul i32 %32, %30
  br label %if.end

if.end:                                           ; preds = %if.else, %vortex_adbdma_getlinearpos.exit
  %.sink33 = phi i32 [ %32, %if.else ], [ %26, %vortex_adbdma_getlinearpos.exit ]
  %.sink = phi i32 [ %28, %if.else ], [ %15, %vortex_adbdma_getlinearpos.exit ]
  %mul.i29.sink = phi i32 [ %mul.i29, %if.else ], [ %mul.i, %vortex_adbdma_getlinearpos.exit ]
  %sub.i30 = add i32 %.sink33, 536870911
  %and.i31 = and i32 %sub.i30, %.sink
  %add3.i = add i32 %and.i31, %mul.i29.sink
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %33 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %runtime, align 4
  %mul.i32 = shl i32 %add3.i, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i32, %36
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 18
  %37 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %38)
  %cmp9.not = icmp ult i32 %div.i, %38
  %spec.store.select = select i1 %cmp9.not, i32 %div.i, i32 0
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_pow2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vortex_adb_allocroute(ptr noundef %vortex, i32 noundef %dma, i32 noundef %nr_ch, i32 noundef %dir, i32 noundef %type, i32 noundef %subdev) unnamed_addr #2 align 64 {
entry:
  %route.i.i = alloca [2 x i32], align 4
  %src = alloca [4 x i32], align 4
  %mix = alloca [4 x i32], align 4
  %src122 = alloca [2 x i32], align 4
  %mix123 = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dma)
  %cmp = icmp sgt i32 %dma, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %resources = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 %dma, i32 10
  %cmp26.i = icmp eq ptr %resources, null
  br i1 %cmp26.i, label %if.then.if.end5_crit_edge, label %for.cond30.preheader.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

for.cond30.preheader.i:                           ; preds = %if.then
  %0 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resources, align 4
  %and36.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %for.inc44.i, label %for.cond30.preheader.i.if.then38.i_crit_edge

for.cond30.preheader.i.if.then38.i_crit_edge:     ; preds = %for.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then38.i:                                      ; preds = %for.inc44.i.14.if.then38.i_crit_edge, %for.inc44.i.13.if.then38.i_crit_edge, %for.inc44.i.12.if.then38.i_crit_edge, %for.inc44.i.11.if.then38.i_crit_edge, %for.inc44.i.10.if.then38.i_crit_edge, %for.inc44.i.9.if.then38.i_crit_edge, %for.inc44.i.8.if.then38.i_crit_edge, %for.inc44.i.7.if.then38.i_crit_edge, %for.inc44.i.6.if.then38.i_crit_edge, %for.inc44.i.5.if.then38.i_crit_edge, %for.inc44.i.4.if.then38.i_crit_edge, %for.inc44.i.3.if.then38.i_crit_edge, %for.inc44.i.2.if.then38.i_crit_edge, %for.inc44.i.1.if.then38.i_crit_edge, %for.inc44.i.if.then38.i_crit_edge, %for.cond30.preheader.i.if.then38.i_crit_edge
  %shl35.i.lcssa = phi i32 [ -2, %for.cond30.preheader.i.if.then38.i_crit_edge ], [ -3, %for.inc44.i.if.then38.i_crit_edge ], [ -5, %for.inc44.i.1.if.then38.i_crit_edge ], [ -9, %for.inc44.i.2.if.then38.i_crit_edge ], [ -17, %for.inc44.i.3.if.then38.i_crit_edge ], [ -33, %for.inc44.i.4.if.then38.i_crit_edge ], [ -65, %for.inc44.i.5.if.then38.i_crit_edge ], [ -129, %for.inc44.i.6.if.then38.i_crit_edge ], [ -257, %for.inc44.i.7.if.then38.i_crit_edge ], [ -513, %for.inc44.i.8.if.then38.i_crit_edge ], [ -1025, %for.inc44.i.9.if.then38.i_crit_edge ], [ -2049, %for.inc44.i.10.if.then38.i_crit_edge ], [ -4097, %for.inc44.i.11.if.then38.i_crit_edge ], [ -8193, %for.inc44.i.12.if.then38.i_crit_edge ], [ -16385, %for.inc44.i.13.if.then38.i_crit_edge ], [ -32769, %for.inc44.i.14.if.then38.i_crit_edge ]
  %and41.i = and i32 %1, %shl35.i.lcssa
  %2 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and41.i, ptr %resources, align 4
  br label %if.end5

for.inc44.i:                                      ; preds = %for.cond30.preheader.i
  %and36.i.1 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.1)
  %tobool37.not.i.1 = icmp eq i32 %and36.i.1, 0
  br i1 %tobool37.not.i.1, label %for.inc44.i.1, label %for.inc44.i.if.then38.i_crit_edge

for.inc44.i.if.then38.i_crit_edge:                ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.1:                                    ; preds = %for.inc44.i
  %and36.i.2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.2)
  %tobool37.not.i.2 = icmp eq i32 %and36.i.2, 0
  br i1 %tobool37.not.i.2, label %for.inc44.i.2, label %for.inc44.i.1.if.then38.i_crit_edge

for.inc44.i.1.if.then38.i_crit_edge:              ; preds = %for.inc44.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.2:                                    ; preds = %for.inc44.i.1
  %and36.i.3 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.3)
  %tobool37.not.i.3 = icmp eq i32 %and36.i.3, 0
  br i1 %tobool37.not.i.3, label %for.inc44.i.3, label %for.inc44.i.2.if.then38.i_crit_edge

for.inc44.i.2.if.then38.i_crit_edge:              ; preds = %for.inc44.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.3:                                    ; preds = %for.inc44.i.2
  %and36.i.4 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.4)
  %tobool37.not.i.4 = icmp eq i32 %and36.i.4, 0
  br i1 %tobool37.not.i.4, label %for.inc44.i.4, label %for.inc44.i.3.if.then38.i_crit_edge

for.inc44.i.3.if.then38.i_crit_edge:              ; preds = %for.inc44.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.4:                                    ; preds = %for.inc44.i.3
  %and36.i.5 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.5)
  %tobool37.not.i.5 = icmp eq i32 %and36.i.5, 0
  br i1 %tobool37.not.i.5, label %for.inc44.i.5, label %for.inc44.i.4.if.then38.i_crit_edge

for.inc44.i.4.if.then38.i_crit_edge:              ; preds = %for.inc44.i.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.5:                                    ; preds = %for.inc44.i.4
  %and36.i.6 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.6)
  %tobool37.not.i.6 = icmp eq i32 %and36.i.6, 0
  br i1 %tobool37.not.i.6, label %for.inc44.i.6, label %for.inc44.i.5.if.then38.i_crit_edge

for.inc44.i.5.if.then38.i_crit_edge:              ; preds = %for.inc44.i.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.6:                                    ; preds = %for.inc44.i.5
  %and36.i.7 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.7)
  %tobool37.not.i.7 = icmp eq i32 %and36.i.7, 0
  br i1 %tobool37.not.i.7, label %for.inc44.i.7, label %for.inc44.i.6.if.then38.i_crit_edge

for.inc44.i.6.if.then38.i_crit_edge:              ; preds = %for.inc44.i.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.7:                                    ; preds = %for.inc44.i.6
  %and36.i.8 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.8)
  %tobool37.not.i.8 = icmp eq i32 %and36.i.8, 0
  br i1 %tobool37.not.i.8, label %for.inc44.i.8, label %for.inc44.i.7.if.then38.i_crit_edge

for.inc44.i.7.if.then38.i_crit_edge:              ; preds = %for.inc44.i.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.8:                                    ; preds = %for.inc44.i.7
  %and36.i.9 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.9)
  %tobool37.not.i.9 = icmp eq i32 %and36.i.9, 0
  br i1 %tobool37.not.i.9, label %for.inc44.i.9, label %for.inc44.i.8.if.then38.i_crit_edge

for.inc44.i.8.if.then38.i_crit_edge:              ; preds = %for.inc44.i.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.9:                                    ; preds = %for.inc44.i.8
  %and36.i.10 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.10)
  %tobool37.not.i.10 = icmp eq i32 %and36.i.10, 0
  br i1 %tobool37.not.i.10, label %for.inc44.i.10, label %for.inc44.i.9.if.then38.i_crit_edge

for.inc44.i.9.if.then38.i_crit_edge:              ; preds = %for.inc44.i.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.10:                                   ; preds = %for.inc44.i.9
  %and36.i.11 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.11)
  %tobool37.not.i.11 = icmp eq i32 %and36.i.11, 0
  br i1 %tobool37.not.i.11, label %for.inc44.i.11, label %for.inc44.i.10.if.then38.i_crit_edge

for.inc44.i.10.if.then38.i_crit_edge:             ; preds = %for.inc44.i.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.11:                                   ; preds = %for.inc44.i.10
  %and36.i.12 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.12)
  %tobool37.not.i.12 = icmp eq i32 %and36.i.12, 0
  br i1 %tobool37.not.i.12, label %for.inc44.i.12, label %for.inc44.i.11.if.then38.i_crit_edge

for.inc44.i.11.if.then38.i_crit_edge:             ; preds = %for.inc44.i.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.12:                                   ; preds = %for.inc44.i.11
  %and36.i.13 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.13)
  %tobool37.not.i.13 = icmp eq i32 %and36.i.13, 0
  br i1 %tobool37.not.i.13, label %for.inc44.i.13, label %for.inc44.i.12.if.then38.i_crit_edge

for.inc44.i.12.if.then38.i_crit_edge:             ; preds = %for.inc44.i.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.13:                                   ; preds = %for.inc44.i.12
  %and36.i.14 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.14)
  %tobool37.not.i.14 = icmp eq i32 %and36.i.14, 0
  br i1 %tobool37.not.i.14, label %for.inc44.i.14, label %for.inc44.i.13.if.then38.i_crit_edge

for.inc44.i.13.if.then38.i_crit_edge:             ; preds = %for.inc44.i.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.14:                                   ; preds = %for.inc44.i.13
  %and36.i.15 = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.15)
  %tobool37.not.i.15 = icmp eq i32 %and36.i.15, 0
  br i1 %tobool37.not.i.15, label %for.inc44.i.15, label %for.inc44.i.14.if.then38.i_crit_edge

for.inc44.i.14.if.then38.i_crit_edge:             ; preds = %for.inc44.i.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

for.inc44.i.15:                                   ; preds = %for.inc44.i.14
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vortex, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.94, i32 noundef 0) #15
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef null, i32 noundef 1, i32 noundef 0)
  %conv = zext i8 %call1 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.else, %for.inc44.i.15, %if.then38.i, %if.then.if.end5_crit_edge
  %dma.addr.0 = phi i32 [ %conv, %if.else ], [ %dma, %if.then.if.end5_crit_edge ], [ %dma, %if.then38.i ], [ %dma, %for.inc44.i.15 ]
  %en.0 = phi i32 [ 1, %if.else ], [ 0, %if.then.if.end5_crit_edge ], [ 0, %if.then38.i ], [ 0, %for.inc44.i.15 ]
  %dma8 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 %dma.addr.0, i32 8
  %7 = ptrtoint ptr %dma8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dma.addr.0, ptr %dma8, align 4
  %dir9 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 %dma.addr.0, i32 9
  %8 = ptrtoint ptr %dir9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dir, ptr %dir9, align 4
  %type10 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 %dma.addr.0, i32 7
  %9 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %type, ptr %type10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp11 = icmp eq i32 %dir, 0
  br i1 %cmp11, label %if.then13, label %if.else121

if.then13:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src) #12
  %10 = call ptr @memset(ptr %src, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mix) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp15.not = icmp ne i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_ch)
  %cmp18346 = icmp sgt i32 %nr_ch, 0
  %or.cond = and i1 %cmp15.not, %cmp18346
  %11 = call ptr @memset(ptr %mix, i32 255, i32 16)
  br i1 %or.cond, label %for.body.lr.ph, label %if.then13.if.end49_crit_edge

if.then13.if.end49_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

for.body.lr.ph:                                   ; preds = %if.then13
  %resources20 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 %dma.addr.0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0347 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call22 = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %resources20, i32 noundef %en.0, i32 noundef 1)
  %conv23 = zext i8 %call22 to i32
  %arrayidx24 = getelementptr [4 x i32], ptr %src, i32 0, i32 %i.0347
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv23, ptr %arrayidx24, align 4
  %13 = ptrtoint ptr %type10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp33.not = icmp eq i32 %14, 2
  br i1 %cmp33.not, label %for.body.for.inc_crit_edge, label %if.then35

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call38 = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %resources20, i32 noundef %en.0, i32 noundef 2)
  %conv39 = zext i8 %call38 to i32
  %arrayidx40 = getelementptr [4 x i32], ptr %mix, i32 0, i32 %i.0347
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv39, ptr %arrayidx40, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0347, 1
  %exitcond358.not = icmp eq i32 %inc, %nr_ch
  br i1 %exitcond358.not, label %for.inc.if.end49_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end49_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end49:                                         ; preds = %for.inc.if.end49_crit_edge, %if.then13.if.end49_crit_edge
  br i1 %cmp18346, label %for.body53.lr.ph, label %if.end49.for.end73_crit_edge

if.end49.for.end73_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73

for.body53.lr.ph:                                 ; preds = %if.end49
  %sub = add nsw i32 %nr_ch, -1
  %arrayidx58 = getelementptr [4 x i32], ptr %src, i32 0, i32 %sub
  %conv60 = trunc i32 %dma.addr.0 to i8
  br label %for.body53

for.body53:                                       ; preds = %for.inc71.for.body53_crit_edge, %for.body53.lr.ph
  %i.1350 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc72, %for.inc71.for.body53_crit_edge ]
  %16 = ptrtoint ptr %type10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp55 = icmp eq i32 %17, 0
  br i1 %cmp55, label %if.then57, label %for.body53.for.inc71_crit_edge

for.body53.for.inc71_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc71

if.then57:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx58, align 4
  %conv59 = trunc i32 %19 to i8
  %arrayidx61 = getelementptr [4 x i32], ptr %src, i32 0, i32 %i.1350
  %20 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx61, align 4
  %conv62 = trunc i32 %21 to i8
  %add3.i = add i8 %conv62, 16
  tail call fastcc void @vortex_route(ptr noundef %vortex, i32 noundef %en.0, i8 noundef zeroext %conv59, i8 noundef zeroext %conv60, i8 noundef zeroext %add3.i) #12
  %arrayidx65 = getelementptr [4 x i32], ptr %mix, i32 0, i32 %i.1350
  %22 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx65, align 4
  %conv66 = trunc i32 %23 to i8
  %add3.i321 = add i8 %conv66, 48
  tail call fastcc void @vortex_route(ptr noundef %vortex, i32 noundef %en.0, i8 noundef zeroext 17, i8 noundef zeroext %add3.i, i8 noundef zeroext %add3.i321) #12
  %arrayidx69 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 10, i32 %i.1350
  %24 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx69, align 1
  tail call fastcc void @vortex_connection_mixin_mix(ptr noundef %vortex, i32 noundef %en.0, i8 noundef zeroext %conv66, i8 noundef zeroext %25)
  br label %for.inc71

for.inc71:                                        ; preds = %if.then57, %for.body53.for.inc71_crit_edge
  %inc72 = add nuw nsw i32 %i.1350, 1
  %exitcond359.not = icmp eq i32 %inc72, %nr_ch
  br i1 %exitcond359.not, label %for.inc71.for.end73_crit_edge, label %for.inc71.for.body53_crit_edge

for.inc71.for.body53_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

for.inc71.for.end73_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73

for.end73:                                        ; preds = %for.inc71.for.end73_crit_edge, %if.end49.for.end73_crit_edge
  %26 = ptrtoint ptr %type10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type10, align 4
  %.off = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %for.end73.cleanup_crit_edge, label %if.then80

for.end73.cleanup_crit_edge:                      ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then80:                                        ; preds = %for.end73
  %isquad = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 13
  %28 = ptrtoint ptr %isquad to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %isquad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  %cond = select i1 %tobool.not, i32 2, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %nr_ch)
  %cmp82352 = icmp sgt i32 %cond, %nr_ch
  br i1 %cmp82352, label %if.then80.for.body84_crit_edge, label %if.then80.for.end91_crit_edge

if.then80.for.end91_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end91

if.then80.for.body84_crit_edge:                   ; preds = %if.then80
  br label %for.body84

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %if.then80.for.body84_crit_edge
  %i.2353 = phi i32 [ %inc90, %for.body84.for.body84_crit_edge ], [ %nr_ch, %if.then80.for.body84_crit_edge ]
  %rem = srem i32 %i.2353, %nr_ch
  %arrayidx85 = getelementptr [4 x i32], ptr %mix, i32 0, i32 %rem
  %30 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx85, align 4
  %conv86 = trunc i32 %31 to i8
  %arrayidx88 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 10, i32 %i.2353
  %32 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx88, align 1
  tail call fastcc void @vortex_connection_mixin_mix(ptr noundef %vortex, i32 noundef %en.0, i8 noundef zeroext %conv86, i8 noundef zeroext %33)
  %inc90 = add i32 %i.2353, 1
  %exitcond360.not = icmp eq i32 %inc90, %cond
  br i1 %exitcond360.not, label %for.body84.for.end91_crit_edge, label %for.body84.for.body84_crit_edge

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body84

for.body84.for.end91_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end91

for.end91:                                        ; preds = %for.body84.for.end91_crit_edge, %if.then80.for.end91_crit_edge
  %34 = ptrtoint ptr %type10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp93 = icmp ne i32 %35, 0
  %brmerge = or i1 %cmp, %cmp93
  br i1 %brmerge, label %for.end91.cleanup_crit_edge, label %if.then97

for.end91.cleanup_crit_edge:                      ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then97:                                        ; preds = %for.end91
  %dma99 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 12, i32 %subdev, i32 2
  %36 = ptrtoint ptr %dma99 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dma.addr.0, ptr %dma99, align 4
  %37 = mul i32 %subdev, 44
  br i1 %cmp18346, label %for.body103.preheader, label %if.then97.for.cond109.preheader_crit_edge

if.then97.for.cond109.preheader_crit_edge:        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond109.preheader

for.body103.preheader:                            ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  %38 = add i32 %37, 4560
  %uglygep = getelementptr i8, ptr %vortex, i32 %38
  %39 = shl nuw i32 %nr_ch, 2
  %40 = call ptr @memcpy(ptr %uglygep, ptr %mix, i32 %39)
  br label %for.cond109.preheader

for.cond109.preheader:                            ; preds = %for.body103.preheader, %if.then97.for.cond109.preheader_crit_edge
  %41 = add i32 %37, 4576
  %uglygep361 = getelementptr i8, ptr %vortex, i32 %41
  %42 = shl nuw nsw i32 %cond, 2
  %43 = call ptr @memset(ptr %uglygep361, i32 0, i32 %42)
  br label %cleanup

cleanup:                                          ; preds = %for.cond109.preheader, %for.end91.cleanup_crit_edge, %for.end73.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mix) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src) #12
  br label %if.end199

if.else121:                                       ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src122) #12
  %44 = ptrtoint ptr %src122 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %src122, align 4, !annotation !358
  %45 = getelementptr inbounds [2 x i32], ptr %src122, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %45, align 4, !annotation !358
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mix123) #12
  %47 = ptrtoint ptr %mix123 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %mix123, align 4, !annotation !358
  %48 = getelementptr inbounds [2 x i32], ptr %mix123, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %48, align 4, !annotation !358
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_ch)
  %cmp124 = icmp slt i32 %nr_ch, 1
  br i1 %cmp124, label %cleanup203.critedge, label %for.body131.lr.ph

for.body131.lr.ph:                                ; preds = %if.else121
  %resources132 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 %dma.addr.0, i32 10
  br label %for.body131

for.body131:                                      ; preds = %for.body131.for.body131_crit_edge, %for.body131.lr.ph
  %i.5345 = phi i32 [ 0, %for.body131.lr.ph ], [ %inc157, %for.body131.for.body131_crit_edge ]
  %call134 = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %resources132, i32 noundef %en.0, i32 noundef 3)
  %conv135 = zext i8 %call134 to i32
  %arrayidx136 = getelementptr [2 x i32], ptr %mix123, i32 0, i32 %i.5345
  %50 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv135, ptr %arrayidx136, align 4
  %call146 = tail call fastcc zeroext i8 @vortex_adb_checkinout(ptr noundef %vortex, ptr noundef %resources132, i32 noundef %en.0, i32 noundef 1)
  %conv147 = zext i8 %call146 to i32
  %arrayidx148 = getelementptr [2 x i32], ptr %src122, i32 0, i32 %i.5345
  %51 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv147, ptr %arrayidx148, align 4
  %inc157 = add nuw nsw i32 %i.5345, 1
  %exitcond.not = icmp eq i32 %inc157, %nr_ch
  br i1 %exitcond.not, label %for.end158, label %for.body131.for.body131_crit_edge

for.body131.for.body131_crit_edge:                ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body131

for.end158:                                       ; preds = %for.body131
  %mixcapt = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 9
  %52 = ptrtoint ptr %mixcapt to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mixcapt, align 2
  %54 = ptrtoint ptr %mix123 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mix123, align 4
  %conv161 = trunc i32 %55 to i8
  tail call fastcc void @vortex_connection_mixin_mix(ptr noundef %vortex, i32 noundef %en.0, i8 noundef zeroext %53, i8 noundef zeroext %conv161)
  %56 = ptrtoint ptr %src122 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %src122, align 4
  %conv165 = trunc i32 %57 to i8
  %add.i322 = add i8 %conv161, 32
  %add3.i323 = add i8 %conv165, 16
  tail call fastcc void @vortex_route(ptr noundef %vortex, i32 noundef %en.0, i8 noundef zeroext 17, i8 noundef zeroext %add.i322, i8 noundef zeroext %add3.i323) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  tail call void @arm_heavy_mb() #12
  %mmio.i.i = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %58 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i, align 4
  %conv1.i.i = shl i32 %55, 2
  %shl.i.i = and i32 %conv1.i.i, 1020
  %add.i.i = or i32 %shl.i.i, 38912
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 134217728) #12, !srcloc !361
  %60 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i.i, align 4
  %add5.i.i = or i32 %shl.i.i, 34816
  %add.ptr6.i.i = getelementptr i8, ptr %61, i32 %add5.i.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %62)
  %cmp.not.i.i = icmp eq i32 %62, -2147483648
  br i1 %cmp.not.i.i, label %do.body12.i.i, label %for.end158.vortex_connection_mix_src.exit_crit_edge

for.end158.vortex_connection_mix_src.exit_crit_edge: ; preds = %for.end158
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_connection_mix_src.exit

do.body12.i.i:                                    ; preds = %for.end158
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !413
  tail call void @arm_heavy_mb() #12
  %63 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %64, i32 %add5.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 134217728) #12, !srcloc !361
  br label %vortex_connection_mix_src.exit

vortex_connection_mix_src.exit:                   ; preds = %do.body12.i.i, %for.end158.vortex_connection_mix_src.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_ch)
  %cmp166 = icmp eq i32 %nr_ch, 1
  %arrayidx170 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 9, i32 1
  %65 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx170, align 1
  br i1 %cmp166, label %if.then168, label %if.else178

if.then168:                                       ; preds = %vortex_connection_mix_src.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @vortex_connection_mixin_mix(ptr noundef %vortex, i32 noundef %en.0, i8 noundef zeroext %66, i8 noundef zeroext %conv161)
  %conv177 = trunc i32 %dma.addr.0 to i8
  tail call fastcc void @vortex_route(ptr noundef %vortex, i32 noundef %en.0, i8 noundef zeroext %conv165, i8 noundef zeroext %add3.i323, i8 noundef zeroext %conv177) #12
  br label %cleanup195

if.else178:                                       ; preds = %vortex_connection_mix_src.exit
  %67 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %48, align 4
  %conv182 = trunc i32 %68 to i8
  tail call fastcc void @vortex_connection_mixin_mix(ptr noundef %vortex, i32 noundef %en.0, i8 noundef zeroext %66, i8 noundef zeroext %conv182)
  %69 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %45, align 4
  %conv186 = trunc i32 %70 to i8
  %add.i325 = add i8 %conv182, 32
  %add3.i326 = add i8 %conv186, 16
  tail call fastcc void @vortex_route(ptr noundef %vortex, i32 noundef %en.0, i8 noundef zeroext 17, i8 noundef zeroext %add.i325, i8 noundef zeroext %add3.i326) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  tail call void @arm_heavy_mb() #12
  %71 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i.i, align 4
  %conv1.i.i328 = shl i32 %68, 2
  %shl.i.i329 = and i32 %conv1.i.i328, 1020
  %add.i.i330 = or i32 %shl.i.i329, 38912
  %add.ptr.i.i331 = getelementptr i8, ptr %72, i32 %add.i.i330
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i331, i32 134217728) #12, !srcloc !361
  %73 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i.i, align 4
  %add5.i.i332 = or i32 %shl.i.i329, 34816
  %add.ptr6.i.i333 = getelementptr i8, ptr %74, i32 %add5.i.i332
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i333) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %75)
  %cmp.not.i.i334 = icmp eq i32 %75, -2147483648
  br i1 %cmp.not.i.i334, label %do.body12.i.i336, label %if.else178.vortex_connection_mix_src.exit337_crit_edge

if.else178.vortex_connection_mix_src.exit337_crit_edge: ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_connection_mix_src.exit337

do.body12.i.i336:                                 ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !413
  tail call void @arm_heavy_mb() #12
  %76 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr20.i.i335 = getelementptr i8, ptr %77, i32 %add5.i.i332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i335, i32 134217728) #12, !srcloc !361
  br label %vortex_connection_mix_src.exit337

vortex_connection_mix_src.exit337:                ; preds = %do.body12.i.i336, %if.else178.vortex_connection_mix_src.exit337_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %route.i.i) #12
  %78 = getelementptr inbounds [2 x i32], ptr %route.i.i, i32 0, i32 1
  %conv.i.i = zext i8 %add3.i323 to i32
  %and.i.i = shl nuw nsw i32 %conv.i.i, 7
  %shl.i.i340 = and i32 %and.i.i, 16256
  %conv1.i.i341 = and i32 %dma.addr.0, 255
  %and2.i.i = and i32 %dma.addr.0, 127
  %or.i.i = or i32 %shl.i.i340, %and2.i.i
  %79 = ptrtoint ptr %route.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or.i.i, ptr %route.i.i, align 4
  %conv3.i.i = zext i8 %add3.i326 to i32
  %and4.i.i = shl nuw nsw i32 %conv3.i.i, 7
  %shl5.i.i = and i32 %and4.i.i, 16256
  %80 = and i32 %dma.addr.0, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i.i = icmp eq i32 %80, 0
  %add.i.i342 = add nuw nsw i32 %conv1.i.i341, 32
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add.i.i342, i32 %and2.i.i
  %storemerge.i.i = or i32 %shl5.i.i, %spec.select.i.i
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %storemerge.i.i, ptr %78, align 4
  br i1 %cmp, label %if.else49.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %vortex_connection_mix_src.exit337
  call fastcc void @vortex_adb_addroutes(ptr noundef %vortex, i8 noundef zeroext %conv186, ptr noundef nonnull %route.i.i, i32 noundef 2) #12
  %82 = and i8 %add3.i323, -16
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %82, label %if.then17.i.i.vortex_connection_src_src_adbdma.exit_crit_edge [
    i8 16, label %if.then24.i.i
    i8 32, label %if.then38.i.i
  ]

if.then17.i.i.vortex_connection_src_src_adbdma.exit_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_connection_src_src_adbdma.exit

if.then24.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @vortex_src_addWTD(ptr noundef %vortex, i8 noundef zeroext %conv165, i8 noundef zeroext %conv186) #12
  call fastcc void @vortex_src_addWTD(ptr noundef %vortex, i8 noundef zeroext %conv186, i8 noundef zeroext %conv186) #12
  br label %vortex_connection_src_src_adbdma.exit

if.then38.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub40.i.i = add i8 %conv165, -16
  call fastcc void @vortex_mixer_addWTD(ptr noundef %vortex, i8 noundef zeroext %sub40.i.i, i8 noundef zeroext %conv186) #12
  %sub44.i.i = add i8 %conv186, -16
  call fastcc void @vortex_mixer_addWTD(ptr noundef %vortex, i8 noundef zeroext %sub44.i.i, i8 noundef zeroext %conv186) #12
  br label %vortex_connection_src_src_adbdma.exit

if.else49.i.i:                                    ; preds = %vortex_connection_mix_src.exit337
  tail call fastcc void @vortex_adb_delroutes(ptr noundef %vortex, i8 noundef zeroext %conv186, i32 noundef %or.i.i, i32 noundef %storemerge.i.i) #12
  %84 = and i8 %add3.i323, -16
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %84, label %if.else49.i.i.vortex_connection_src_src_adbdma.exit_crit_edge [
    i8 16, label %if.then59.i.i
    i8 32, label %if.then76.i.i
  ]

if.else49.i.i.vortex_connection_src_src_adbdma.exit_crit_edge: ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_connection_src_src_adbdma.exit

if.then59.i.i:                                    ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @vortex_src_delWTD(ptr noundef %vortex, i8 noundef zeroext %conv165, i8 noundef zeroext %conv186) #12
  tail call fastcc void @vortex_src_delWTD(ptr noundef %vortex, i8 noundef zeroext %conv186, i8 noundef zeroext %conv186) #12
  br label %vortex_connection_src_src_adbdma.exit

if.then76.i.i:                                    ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub78.i.i = add i8 %conv165, -16
  tail call fastcc void @vortex_mixer_delWTD(ptr noundef %vortex, i8 noundef zeroext %sub78.i.i, i8 noundef zeroext %conv186) #12
  %sub82.i.i = add i8 %conv186, -16
  tail call fastcc void @vortex_mixer_delWTD(ptr noundef %vortex, i8 noundef zeroext %sub82.i.i, i8 noundef zeroext %conv186) #12
  br label %vortex_connection_src_src_adbdma.exit

vortex_connection_src_src_adbdma.exit:            ; preds = %if.then76.i.i, %if.then59.i.i, %if.else49.i.i.vortex_connection_src_src_adbdma.exit_crit_edge, %if.then38.i.i, %if.then24.i.i, %if.then17.i.i.vortex_connection_src_src_adbdma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %route.i.i) #12
  br label %cleanup195

cleanup195:                                       ; preds = %vortex_connection_src_src_adbdma.exit, %if.then168
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mix123) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src122) #12
  br label %if.end199

if.end199:                                        ; preds = %cleanup195, %cleanup
  %nr_ch202 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 %dma.addr.0, i32 6
  %86 = ptrtoint ptr %nr_ch202 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %nr_ch, ptr %nr_ch202, align 4
  br label %cleanup203

cleanup203.critedge:                              ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mix123) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src122) #12
  br label %cleanup203

cleanup203:                                       ; preds = %cleanup203.critedge, %if.end199
  %retval.2 = phi i32 [ %dma.addr.0, %if.end199 ], [ -22, %cleanup203.critedge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_wt_allocroute(ptr nocapture noundef %vortex, i32 noundef %wt, i32 noundef %nr_ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 7, i32 %wt
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_ch)
  %tobool.not = icmp eq i32 %nr_ch, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mmio.i.i = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %shl.i.i = shl i32 %wt, 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then
  %x.addr.01.i.i = phi i32 [ 31, %if.then ], [ %dec4.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !448
  tail call void @arm_heavy_mb() #12
  %0 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i.i, align 4
  %add.i.i = add nuw nsw i32 %x.addr.01.i.i, %shl.i.i
  %shl2.i.i = shl i32 %add.i.i, 2
  %add3.i.i = add i32 %shl2.i.i, 59392
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !361
  %dec4.i.i = add nsw i32 %x.addr.01.i.i, -1
  %cmp1.not.i.i = icmp eq i32 %x.addr.01.i.i, 0
  br i1 %cmp1.not.i.i, label %vortex_fifo_wtinitialize.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

vortex_fifo_wtinitialize.exit:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !499
  tail call void @arm_heavy_mb() #12
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 4
  %shl1.i = shl i32 %wt, 2
  %add.i = add i32 %shl1.i, 63552
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 524544) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !500
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !501
  %7 = or i32 %6, 268435712
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %7) #12, !srcloc !361
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 4
  %and.i = shl i32 %wt, 8
  %shl.i10 = and i32 %and.i, 16769024
  %and1.i = lshr i32 %wt, 1
  %shr.i = and i32 %and1.i, 15
  %add.i11 = or i32 %shl.i10, %shr.i
  %add2.i = shl nuw nsw i32 %add.i11, 2
  %shl3.i = or i32 %add2.i, 128
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 %shl3.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !502
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !503
  tail call void @arm_heavy_mb() #12
  %sub = shl i32 %nr_ch, 24
  %13 = and i32 %sub, 16777216
  %call.mask.i = and i32 %12, -33554432
  %14 = or i32 %call.mask.i, %13
  %15 = xor i32 %14, 16777216
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %17, i32 %shl3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %15) #12, !srcloc !361
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !500
  tail call void @arm_heavy_mb() #12
  %mmio.i13 = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %18 = ptrtoint ptr %mmio.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i13, align 4
  %shl.i14 = shl i32 %wt, 2
  %add.i15 = add i32 %shl.i14, 63552
  %add.ptr.i16 = getelementptr i8, ptr %19, i32 %add.i15
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !501
  %21 = and i32 %20, -268435713
  %22 = or i32 %21, 256
  %23 = ptrtoint ptr %mmio.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i13, align 4
  %add.ptr8.i18 = getelementptr i8, ptr %24, i32 %add.i15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i18, i32 %22) #12, !srcloc !361
  br label %if.end

if.end:                                           ; preds = %if.else, %vortex_fifo_wtinitialize.exit
  %mmio.i19 = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %25 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %wt)
  %cmp.i = icmp ugt i32 %wt, 31
  %add.i20 = select i1 %cmp.i, i32 32776, i32 8
  %add.ptr.i21 = getelementptr i8, ptr %26, i32 %add.i20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !504
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %and3.i = and i32 %wt, 31
  %shl4.i = shl nuw i32 1, %and3.i
  %or.i22 = or i32 %28, %shl4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !505
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i22) #12
  %30 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i19, align 4
  %add.ptr15.i23 = getelementptr i8, ptr %31, i32 %add.i20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i23, i32 %29) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !506
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i19, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 34816) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !507
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i19, align 4
  %and = shl i32 %wt, 10
  %shl = and i32 %and, 67076096
  %and5 = shl i32 %wt, 4
  %shl6 = and i32 %and5, 496
  %add = or i32 %shl, %shl6
  %shl9 = or i32 %add, 512
  %add.ptr10 = getelementptr i8, ptr %35, i32 %shl9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !508
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i19, align 4
  %shl22 = or i32 %add, 516
  %add.ptr23 = getelementptr i8, ptr %37, i32 %shl22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !509
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i19, align 4
  %shl35 = or i32 %add, 520
  %add.ptr36 = getelementptr i8, ptr %39, i32 %shl35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #12, !srcloc !361
  %40 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i19, align 4
  %shl45 = or i32 %add, 524
  %add.ptr46 = getelementptr i8, ptr %41, i32 %shl45
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !510
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vortex_wt_allocroute.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vortex_wt_allocroute, %if.then54)) #12
          to label %do.body58 [label %if.then54], !srcloc !511

if.then54:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vortex_wt_allocroute.__UNIQUE_ID_ddebug242, ptr noundef %47, ptr noundef nonnull @.str.115, i32 noundef %43) #12
  br label %do.body58

do.body58:                                        ; preds = %if.then54, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !512
  tail call void @arm_heavy_mb() #12
  %48 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i19, align 4
  %shl69 = or i32 %add, 1024
  %add.ptr70 = getelementptr i8, ptr %49, i32 %shl69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !513
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i19, align 4
  %shl82 = or i32 %add, 1028
  %add.ptr83 = getelementptr i8, ptr %51, i32 %shl82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !514
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i19, align 4
  %shl95 = or i32 %add, 1032
  %add.ptr96 = getelementptr i8, ptr %53, i32 %shl95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !515
  tail call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i19, align 4
  %shl108 = or i32 %add, 1036
  %add.ptr109 = getelementptr i8, ptr %55, i32 %shl108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 0) #12, !srcloc !361
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vortex_wt_allocroute.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vortex_wt_allocroute, %if.then122)) #12
          to label %do.body139 [label %if.then122], !srcloc !511

if.then122:                                       ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vortex, align 4
  %dev124 = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev124, align 8
  %60 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i19, align 4
  %and128 = shl i32 %wt, 15
  %shl129 = and i32 %and128, 32768
  %add130 = or i32 %shl129, 16
  %add.ptr132 = getelementptr i8, ptr %61, i32 %add130
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #12, !srcloc !363
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !516
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vortex_wt_allocroute.__UNIQUE_ID_ddebug243, ptr noundef %59, ptr noundef nonnull @.str.116, i32 noundef %63) #12
  br label %do.body139

do.body139:                                       ; preds = %if.then122, %do.body58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !517
  tail call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i19, align 4
  %add.ptr151 = getelementptr i8, ptr %65, i32 %shl35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151, i32 -1) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !518
  tail call void @arm_heavy_mb() #12
  %66 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i19, align 4
  %add.ptr164 = getelementptr i8, ptr %67, i32 %shl45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 281604559) #12, !srcloc !361
  %parm1 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 7, i32 %wt, i32 1
  %68 = ptrtoint ptr %parm1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -810402257, ptr %parm1, align 4
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -810402257, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !519
  tail call void @arm_heavy_mb() #12
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i19, align 4
  %add.ptr178 = getelementptr i8, ptr %74, i32 %shl9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %72) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !520
  tail call void @arm_heavy_mb() #12
  %75 = ptrtoint ptr %parm1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %parm1, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %78 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i19, align 4
  %add.ptr192 = getelementptr i8, ptr %79, i32 %shl22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 %77) #12, !srcloc !361
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vortex_wt_allocroute.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vortex_wt_allocroute, %if.then205)) #12
          to label %do.end221 [label %if.then205], !srcloc !511

if.then205:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vortex, align 4
  %dev207 = getelementptr inbounds %struct.snd_card, ptr %81, i32 0, i32 27
  %82 = ptrtoint ptr %dev207 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev207, align 8
  %84 = ptrtoint ptr %mmio.i19 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i19, align 4
  %and211 = shl i32 %wt, 15
  %shl212 = and i32 %and211, 32768
  %add213 = or i32 %shl212, 16
  %add.ptr215 = getelementptr i8, ptr %85, i32 %add213
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr215) #12, !srcloc !363
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !521
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vortex_wt_allocroute.__UNIQUE_ID_ddebug244, ptr noundef %83, ptr noundef nonnull @.str.117, i32 noundef %87) #12
  br label %do.end221

do.end221:                                        ; preds = %if.then205, %do.body139
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @vortex_adb_checkinout(ptr nocapture noundef %vortex, ptr noundef %resmap, i32 noundef %out, i32 noundef %restype) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [5 x i32], ptr @resnum, i32 0, i32 %restype
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %tobool.not = icmp eq i32 %out, 0
  br i1 %tobool.not, label %if.else25, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx2 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 0, i32 10, i32 %restype
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx2.1 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 1, i32 10, i32 %restype
  %4 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.1, align 4
  %or.1 = or i32 %5, %3
  %arrayidx2.2 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 2, i32 10, i32 %restype
  %6 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.2, align 4
  %or.2 = or i32 %7, %or.1
  %arrayidx2.3 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 3, i32 10, i32 %restype
  %8 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.3, align 4
  %or.3 = or i32 %9, %or.2
  %arrayidx2.4 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 4, i32 10, i32 %restype
  %10 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.4, align 4
  %or.4 = or i32 %11, %or.3
  %arrayidx2.5 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 5, i32 10, i32 %restype
  %12 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.5, align 4
  %or.5 = or i32 %13, %or.4
  %arrayidx2.6 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 6, i32 10, i32 %restype
  %14 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.6, align 4
  %or.6 = or i32 %15, %or.5
  %arrayidx2.7 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 7, i32 10, i32 %restype
  %16 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.7, align 4
  %or.7 = or i32 %17, %or.6
  %arrayidx2.8 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 8, i32 10, i32 %restype
  %18 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.8, align 4
  %or.8 = or i32 %19, %or.7
  %arrayidx2.9 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 9, i32 10, i32 %restype
  %20 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2.9, align 4
  %or.9 = or i32 %21, %or.8
  %arrayidx2.10 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 10, i32 10, i32 %restype
  %22 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.10, align 4
  %or.10 = or i32 %23, %or.9
  %arrayidx2.11 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 11, i32 10, i32 %restype
  %24 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2.11, align 4
  %or.11 = or i32 %25, %or.10
  %arrayidx2.12 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 12, i32 10, i32 %restype
  %26 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.12, align 4
  %or.12 = or i32 %27, %or.11
  %arrayidx2.13 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 13, i32 10, i32 %restype
  %28 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.13, align 4
  %or.13 = or i32 %29, %or.12
  %arrayidx2.14 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 14, i32 10, i32 %restype
  %30 = ptrtoint ptr %arrayidx2.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.14, align 4
  %or.14 = or i32 %31, %or.13
  %arrayidx2.15 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 15, i32 10, i32 %restype
  %32 = ptrtoint ptr %arrayidx2.15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2.15, align 4
  %or.15 = or i32 %33, %or.14
  %arrayidx3 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 11, i32 %restype
  %34 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx3, align 4
  %or4 = or i32 %35, %or.15
  %36 = and i32 %restype, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp687.not = icmp eq i32 %36, 4
  br i1 %cmp687.not, label %for.body.preheader.do.end_crit_edge, label %for.body7.preheader

for.body.preheader.do.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body7.preheader:                              ; preds = %for.body.preheader
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 1)
  br label %for.body7

for.body7:                                        ; preds = %for.inc22.for.body7_crit_edge, %for.body7.preheader
  %i.188 = phi i32 [ %inc23, %for.inc22.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %shl = shl nuw i32 1, %i.188
  %and = and i32 %shl, %or4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %if.then9, label %for.inc22

if.then9:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #14
  %cmp10.not = icmp eq ptr %resmap, null
  %arrayidx19 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 4, i32 %i.188, i32 10, i32 %restype
  %arrayidx13 = getelementptr i32, ptr %resmap, i32 %restype
  %arrayidx19.sink104 = select i1 %cmp10.not, ptr %arrayidx19, ptr %arrayidx13
  %37 = ptrtoint ptr %arrayidx19.sink104 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx19.sink104, align 4
  %or20 = or i32 %38, %shl
  store i32 %or20, ptr %arrayidx19.sink104, align 4
  %conv = trunc i32 %i.188 to i8
  br label %cleanup

for.inc22:                                        ; preds = %for.body7
  %inc23 = add nuw nsw i32 %i.188, 1
  %exitcond.not = icmp eq i32 %inc23, %smax
  br i1 %exitcond.not, label %for.inc22.do.end_crit_edge, label %for.inc22.for.body7_crit_edge

for.inc22.for.body7_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7

for.inc22.do.end_crit_edge:                       ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.else25:                                        ; preds = %entry
  %cmp26 = icmp eq ptr %resmap, null
  br i1 %cmp26, label %if.else25.cleanup_crit_edge, label %for.cond30.preheader

if.else25.cleanup_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond30.preheader:                             ; preds = %if.else25
  %39 = and i32 %restype, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp3189.not = icmp eq i32 %39, 4
  br i1 %cmp3189.not, label %for.cond30.preheader.do.end_crit_edge, label %for.body33.lr.ph

for.cond30.preheader.do.end_crit_edge:            ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body33.lr.ph:                                 ; preds = %for.cond30.preheader
  %arrayidx34 = getelementptr i32, ptr %resmap, i32 %restype
  %40 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx34, align 4
  %smax97 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  br label %for.body33

for.body33:                                       ; preds = %for.inc44.for.body33_crit_edge, %for.body33.lr.ph
  %i.290 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc45, %for.inc44.for.body33_crit_edge ]
  %shl35 = shl nuw i32 1, %i.290
  %and36 = and i32 %41, %shl35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %for.inc44, label %if.then38

if.then38:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  %neg = xor i32 %shl35, -1
  %and41 = and i32 %41, %neg
  %42 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and41, ptr %arrayidx34, align 4
  %conv42 = trunc i32 %i.290 to i8
  br label %cleanup

for.inc44:                                        ; preds = %for.body33
  %inc45 = add nuw nsw i32 %i.290, 1
  %exitcond98.not = icmp eq i32 %inc45, %smax97
  br i1 %exitcond98.not, label %for.inc44.do.end_crit_edge, label %for.inc44.for.body33_crit_edge

for.inc44.for.body33_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33

for.inc44.do.end_crit_edge:                       ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %for.inc44.do.end_crit_edge, %for.cond30.preheader.do.end_crit_edge, %for.inc22.do.end_crit_edge, %for.body.preheader.do.end_crit_edge
  %43 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.94, i32 noundef %restype) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then38, %if.else25.cleanup_crit_edge, %if.then9
  %retval.0 = phi i8 [ %conv, %if.then9 ], [ -12, %do.end ], [ %conv42, %if.then38 ], [ -22, %if.else25.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_connection_mixin_mix(ptr nocapture noundef readonly %vortex, i32 noundef %en, i8 noundef zeroext %mixin, i8 noundef zeroext %mix) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool.not = icmp eq i32 %en, 0
  %conv2 = zext i8 %mixin to i32
  tail call fastcc void @vortex_mix_killinput(ptr noundef %vortex, i8 noundef zeroext %mix, i32 noundef %conv2) #12
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %idxprom.i = zext i8 %mix to i32
  %arrayidx.i = getelementptr [16 x i32], ptr @mchannels, i32 0, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %conv2
  %and.i = and i32 %1, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge.i

entry.if.end_crit_edge.i:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %.pre.i = shl nuw nsw i32 %idxprom.i, 5
  %.pre18.i = add nuw nsw i32 %.pre.i, %conv2
  %.pre19.i = shl nuw nsw i32 %.pre18.i, 2
  %.pre20.i = add nuw nsw i32 %.pre19.i, 32768
  %.pre = add nuw nsw i32 %.pre19.i, 36864
  br label %vortex_mix_enableinput.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !522
  tail call void @arm_heavy_mb() #12
  %mmio.i.i = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 4
  %shl.i.i = shl nuw nsw i32 %idxprom.i, 5
  %add.i.i = add nuw nsw i32 %shl.i.i, %conv2
  %shl2.i.i = shl nuw nsw i32 %add.i.i, 2
  %add3.i.i = add nuw nsw i32 %shl2.i.i, 36864
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %add3.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2147483648) #12, !srcloc !361
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add9.i.i = add nuw nsw i32 %shl2.i.i, 32768
  %add.ptr10.i.i = getelementptr i8, ptr %5, i32 %add9.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !523
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %8, %shl.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %vortex_mix_enableinput.exit

vortex_mix_enableinput.exit:                      ; preds = %if.then.i, %entry.if.end_crit_edge.i
  %add3.i.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge.i ], [ %add3.i.i, %if.then.i ]
  %add17.i.pre-phi.i = phi i32 [ %.pre20.i, %entry.if.end_crit_edge.i ], [ %add9.i.i, %if.then.i ]
  %.pre-phi.i = phi i32 [ %.pre18.i, %entry.if.end_crit_edge.i ], [ %add.i.i, %if.then.i ]
  %mmio.i15.i = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %9 = ptrtoint ptr %mmio.i15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i15.i, align 4
  %11 = add nuw nsw i32 %.pre-phi.i, 39424
  %add3.i16.i = and i32 %11, -4
  %add.ptr.i17.i = getelementptr i8, ptr %10, i32 %add3.i16.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #12, !srcloc !363
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !524
  %and8.i.i = and i32 %conv2, 3
  %shl9.i.i = shl nuw nsw i32 1, %and8.i.i
  %or.i.i = or i32 %13, %shl9.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !525
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %mmio.i15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i15.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %15, i32 %add17.i.pre-phi.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 -2147483648) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !526
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %mmio.i15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i15.i, align 4
  %shl23.i.i = shl nuw nsw i32 %conv2, 2
  %add24.i.i = or i32 %shl23.i.i, 39936
  %add.ptr25.i.i = getelementptr i8, ptr %17, i32 %add24.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !527
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %mmio.i15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i15.i, align 4
  %add31.i.i = add nuw nsw i32 %shl23.i.i, 39940
  %add.ptr32.i.i = getelementptr i8, ptr %19, i32 %add31.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !528
  tail call void @arm_heavy_mb() #12
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %21 = ptrtoint ptr %mmio.i15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i15.i, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %22, i32 %add3.i16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i, i32 %20) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !522
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %mmio.i15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i15.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %add3.i.pre-phi
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #12, !srcloc !361
  %25 = ptrtoint ptr %mmio.i15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i15.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %26, i32 %add17.i.pre-phi.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !523
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %27)
  %cmp.not.i.not = icmp eq i32 %27, -2147483648
  br i1 %cmp.not.i.not, label %do.body16.i, label %vortex_mix_enableinput.exit.if.end_crit_edge

vortex_mix_enableinput.exit.if.end_crit_edge:     ; preds = %vortex_mix_enableinput.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body16.i:                                      ; preds = %vortex_mix_enableinput.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !529
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %mmio.i15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i15.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %29, i32 %add17.i.pre-phi.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 134217728) #12, !srcloc !361
  br label %if.end

if.end:                                           ; preds = %do.body16.i, %vortex_mix_enableinput.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_route(ptr nocapture noundef readonly %vortex, i32 noundef %en, i8 noundef zeroext %channel, i8 noundef zeroext %source, i8 noundef zeroext %dest) unnamed_addr #2 align 64 {
entry:
  %route = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %route) #12
  %conv = zext i8 %source to i32
  %and = shl nuw nsw i32 %conv, 7
  %shl = and i32 %and, 16256
  %0 = and i8 %dest, 127
  %and2 = zext i8 %0 to i32
  %or = or i32 %shl, %and2
  %1 = ptrtoint ptr %route to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or, ptr %route, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool.not = icmp eq i32 %en, 0
  br i1 %tobool.not, label %if.else24, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @vortex_adb_addroutes(ptr noundef %vortex, i8 noundef zeroext %channel, ptr noundef nonnull %route, i32 noundef 1)
  %2 = and i8 %source, -16
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %2, label %if.then.if.end52_crit_edge [
    i8 16, label %if.then8
    i8 32, label %if.then18
  ]

if.then.if.end52_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add nsw i8 %source, -16
  call fastcc void @vortex_src_addWTD(ptr noundef %vortex, i8 noundef zeroext %sub, i8 noundef zeroext %channel)
  br label %if.end52

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub20 = add nsw i8 %source, -32
  call fastcc void @vortex_mixer_addWTD(ptr noundef %vortex, i8 noundef zeroext %sub20, i8 noundef zeroext %channel)
  br label %if.end52

if.else24:                                        ; preds = %entry
  tail call fastcc void @vortex_adb_delroutes(ptr noundef %vortex, i8 noundef zeroext %channel, i32 noundef %or, i32 noundef %or)
  %4 = and i8 %source, -16
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %4, label %if.else24.if.end52_crit_edge [
    i8 16, label %if.then32
    i8 32, label %if.then45
  ]

if.else24.if.end52_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then32:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  %sub34 = add nsw i8 %source, -16
  tail call fastcc void @vortex_src_delWTD(ptr noundef %vortex, i8 noundef zeroext %sub34, i8 noundef zeroext %channel)
  br label %if.end52

if.then45:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  %sub47 = add nsw i8 %source, -32
  tail call fastcc void @vortex_mixer_delWTD(ptr noundef %vortex, i8 noundef zeroext %sub47, i8 noundef zeroext %channel)
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %if.then32, %if.else24.if.end52_crit_edge, %if.then18, %if.then8, %if.then.if.end52_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %route) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_adb_addroutes(ptr nocapture noundef readonly %vortex, i8 noundef zeroext %channel, ptr noundef readonly %route, i32 noundef %rnum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp1 = icmp eq ptr %route, null
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dec = add i32 %rnum, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  tail call void @arm_heavy_mb() #12
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %arrayidx = getelementptr i32, ptr %route, i32 %dec
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = shl i32 %3, 2
  %shl = and i32 %and, 508
  %add = or i32 %shl, 67584
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -12648448) #12, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %phi.cmp = icmp sgt i32 %dec, 0
  br i1 %phi.cmp, label %do.body3, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  tail call void @arm_heavy_mb() #12
  %arrayidx6 = getelementptr i32, ptr %route, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %9 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %route, align 4
  %and9 = shl i32 %10, 2
  %shl10 = and i32 %and9, 508
  %add11 = or i32 %shl10, 67584
  %add.ptr12 = getelementptr i8, ptr %8, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %6) #12, !srcloc !361
  br label %while.end

while.end:                                        ; preds = %do.body3, %if.end.while.end_crit_edge
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %conv = zext i8 %channel to i32
  %shl15 = shl nuw nsw i32 %conv, 2
  %add16 = add nuw nsw i32 %shl15, 67996
  %add.ptr17 = getelementptr i8, ptr %12, i32 %add16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #12, !srcloc !363
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !532
  %and19 = and i32 %14, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 127
  br i1 %cmp20, label %do.body23, label %while.end.do.body34_crit_edge

while.end.do.body34_crit_edge:                    ; preds = %while.end
  br label %do.body34

do.body23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !533
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %route, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr31 = getelementptr i8, ptr %19, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %17) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !534
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 68096
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !535
  %shl.i = shl nuw i32 1, %conv
  %or.i = or i32 %23, %shl.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %26, i32 68096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %24) #12, !srcloc !361
  br label %cleanup

do.body34:                                        ; preds = %do.cond52.do.body34_crit_edge, %while.end.do.body34_crit_edge
  %lifeboat.0 = phi i32 [ %inc, %do.cond52.do.body34_crit_edge ], [ 0, %while.end.do.body34_crit_edge ]
  %temp.0 = phi i32 [ %and44, %do.cond52.do.body34_crit_edge ], [ %and19, %while.end.do.body34_crit_edge ]
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %shl38 = shl nuw nsw i32 %temp.0, 2
  %add39 = or i32 %shl38, 67584
  %add.ptr40 = getelementptr i8, ptr %28, i32 %add39
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !536
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %lifeboat.0)
  %exitcond = icmp eq i32 %lifeboat.0, 128
  br i1 %exitcond, label %do.end50, label %do.cond52

do.end50:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %34 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %route, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.96, i32 noundef %35) #15
  br label %cleanup

do.cond52:                                        ; preds = %do.body34
  %inc = add nuw nsw i32 %lifeboat.0, 1
  %36 = lshr i32 %29, 24
  %and44 = and i32 %36, 127
  %cmp53.not = icmp eq i32 %and44, 127
  br i1 %cmp53.not, label %do.body56, label %do.cond52.do.body34_crit_edge

do.cond52.do.body34_crit_edge:                    ; preds = %do.cond52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

do.body56:                                        ; preds = %do.cond52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !537
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %route, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio, align 4
  %add.ptr63 = getelementptr i8, ptr %41, i32 %add39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %39) #12, !srcloc !361
  br label %cleanup

cleanup:                                          ; preds = %do.body56, %do.end50, %do.body23, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_src_addWTD(ptr nocapture noundef readonly %vortex, i8 noundef zeroext %src, i8 noundef zeroext %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 52416
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !538
  %conv = zext i8 %ch to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !539
  tail call void @arm_heavy_mb() #12
  %conv3 = zext i8 %src to i32
  %4 = shl nuw i32 %conv3, 24
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %shl6 = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %shl6, 52288
  %add.ptr7 = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !540
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 52416
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !541
  %or.i = or i32 %10, %shl
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 52416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #12, !srcloc !361
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl10 = shl nuw nsw i32 %conv, 2
  %add11 = add nuw nsw i32 %shl10, 52288
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 %add11
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #12, !srcloc !363
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !542
  %and193 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool.not4 = icmp eq i32 %and193, 0
  br i1 %tobool.not4, label %if.end.do.body37_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.do.body37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37

while.cond:                                       ; preds = %while.body
  %inc = add nuw nsw i32 %lifeboat.05, 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %21)
  %and19 = and i32 %18, 16
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %while.cond.do.body37_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.do.body37_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.end.while.body_crit_edge
  %temp.06 = phi i32 [ %18, %while.cond.while.body_crit_edge ], [ %17, %if.end.while.body_crit_edge ]
  %lifeboat.05 = phi i32 [ %inc, %while.cond.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %and20 = shl i32 %temp.06, 2
  %shl21 = and i32 %and20, 60
  %add22 = or i32 %shl21, 52224
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %add.ptr26 = getelementptr i8, ptr %20, i32 %add22
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %lifeboat.05)
  %exitcond = icmp eq i32 %lifeboat.05, 15
  br i1 %exitcond, label %do.end35, label %while.cond

do.end35:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.98) #15
  br label %cleanup

do.body37:                                        ; preds = %while.cond.do.body37_crit_edge, %if.end.do.body37_crit_edge
  %prev.0.lcssa = phi i32 [ %add11, %if.end.do.body37_crit_edge ], [ %add22, %while.cond.do.body37_crit_edge ]
  %temp.0.lcssa = phi i32 [ %17, %if.end.do.body37_crit_edge ], [ %18, %while.cond.do.body37_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !544
  tail call void @arm_heavy_mb() #12
  %conv40 = zext i8 %src to i32
  %26 = shl nuw i32 %conv40, 24
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %and42 = and i32 %temp.0.lcssa, 15
  %shl43 = shl nuw nsw i32 %and42, 2
  %add44 = or i32 %shl43, 52224
  %add.ptr45 = getelementptr i8, ptr %28, i32 %add44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %26) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !545
  tail call void @arm_heavy_mb() #12
  %or = shl nuw nsw i32 %and42, 24
  %29 = or i32 %or, 268435456
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %add.ptr51 = getelementptr i8, ptr %31, i32 %prev.0.lcssa
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %29) #12, !srcloc !361
  br label %cleanup

cleanup:                                          ; preds = %do.body37, %do.end35, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_mixer_addWTD(ptr nocapture noundef readonly %vortex, i8 noundef zeroext %mix, i8 noundef zeroext %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40704
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !546
  %conv = zext i8 %ch to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !547
  tail call void @arm_heavy_mb() #12
  %conv3 = zext i8 %mix to i32
  %4 = shl nuw i32 %conv3, 24
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %shl6 = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %shl6, 40512
  %add.ptr7 = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !548
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 40704
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !549
  %or.i = or i32 %10, %shl
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 40704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #12, !srcloc !361
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl10 = shl nuw nsw i32 %conv, 2
  %add11 = add nuw nsw i32 %shl10, 40512
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 %add11
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #12, !srcloc !363
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !550
  %and193 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool.not4 = icmp eq i32 %and193, 0
  br i1 %tobool.not4, label %if.end.do.body37_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.do.body37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37

while.cond:                                       ; preds = %while.body
  %inc = add nuw nsw i32 %lifeboat.05, 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %21)
  %and19 = and i32 %18, 16
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %while.cond.do.body37_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.do.body37_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.end.while.body_crit_edge
  %temp.06 = phi i32 [ %18, %while.cond.while.body_crit_edge ], [ %17, %if.end.while.body_crit_edge ]
  %lifeboat.05 = phi i32 [ %inc, %while.cond.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %and20 = shl i32 %temp.06, 2
  %shl21 = and i32 %and20, 60
  %add22 = or i32 %shl21, 40448
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %add.ptr26 = getelementptr i8, ptr %20, i32 %add22
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !551
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %lifeboat.05)
  %exitcond = icmp eq i32 %lifeboat.05, 15
  br i1 %exitcond, label %do.end35, label %while.cond

do.end35:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.100) #15
  br label %cleanup

do.body37:                                        ; preds = %while.cond.do.body37_crit_edge, %if.end.do.body37_crit_edge
  %prev.0.lcssa = phi i32 [ %add11, %if.end.do.body37_crit_edge ], [ %add22, %while.cond.do.body37_crit_edge ]
  %temp.0.lcssa = phi i32 [ %17, %if.end.do.body37_crit_edge ], [ %18, %while.cond.do.body37_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !552
  tail call void @arm_heavy_mb() #12
  %conv40 = zext i8 %mix to i32
  %26 = shl nuw i32 %conv40, 24
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %and42 = and i32 %temp.0.lcssa, 15
  %shl43 = shl nuw nsw i32 %and42, 2
  %add44 = or i32 %shl43, 40448
  %add.ptr45 = getelementptr i8, ptr %28, i32 %add44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %26) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !553
  tail call void @arm_heavy_mb() #12
  %or = shl nuw nsw i32 %and42, 24
  %29 = or i32 %or, 268435456
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %add.ptr51 = getelementptr i8, ptr %31, i32 %prev.0.lcssa
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %29) #12, !srcloc !361
  br label %cleanup

cleanup:                                          ; preds = %do.body37, %do.end35, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_adb_delroutes(ptr nocapture noundef readonly %vortex, i8 noundef zeroext %channel, i32 noundef %route0, i32 noundef %route1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %conv = zext i8 %channel to i32
  %shl = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %shl, 67996
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !554
  %and = and i32 %3, 127
  %and2 = and i32 %route0, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and2)
  %cmp = icmp eq i32 %and, %and2
  br i1 %cmp, label %if.then, label %entry.do.body25_crit_edge

entry.do.body25_crit_edge:                        ; preds = %entry
  br label %do.body25

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %and7 = shl i32 %route1, 2
  %shl8 = and i32 %and7, 508
  %add9 = or i32 %shl8, 67584
  %add.ptr10 = getelementptr i8, ptr %5, i32 %add9
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !555
  %7 = and i32 %6, 2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %7)
  %cmp15 = icmp eq i32 %7, 2130706432
  br i1 %cmp15, label %if.then17, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !556
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 68096
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !557
  %shl.i = shl nuw i32 1, %conv
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %11, %neg.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 68096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #12, !srcloc !361
  br label %do.body

do.body:                                          ; preds = %if.then17, %if.then.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !558
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr23 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %6) #12, !srcloc !361
  br label %cleanup

do.body25:                                        ; preds = %do.cond45.do.body25_crit_edge, %entry.do.body25_crit_edge
  %lifeboat.0 = phi i32 [ %inc, %do.cond45.do.body25_crit_edge ], [ 0, %entry.do.body25_crit_edge ]
  %temp.0 = phi i32 [ %and35, %do.cond45.do.body25_crit_edge ], [ %and, %entry.do.body25_crit_edge ]
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  %shl29 = shl nuw nsw i32 %temp.0, 2
  %add30 = or i32 %shl29, 67584
  %add.ptr31 = getelementptr i8, ptr %18, i32 %add30
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #12, !srcloc !363
  %20 = lshr i32 %19, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !559
  %and35 = and i32 %20, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %lifeboat.0)
  %cmp36 = icmp ugt i32 %lifeboat.0, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %and35)
  %cmp38 = icmp eq i32 %and35, 127
  %or.cond = select i1 %cmp36, i1 true, i1 %cmp38
  br i1 %or.cond, label %do.end43, label %do.cond45

do.end43:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.102, i32 noundef %route0) #15
  br label %cleanup

do.cond45:                                        ; preds = %do.body25
  %inc = add nuw nsw i32 %lifeboat.0, 1
  %cmp47.not = icmp eq i32 %and35, %and2
  br i1 %cmp47.not, label %do.end49, label %do.cond45.do.body25_crit_edge

do.cond45.do.body25_crit_edge:                    ; preds = %do.cond45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

do.end49:                                         ; preds = %do.cond45
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %shl53 = shl nuw nsw i32 %and2, 2
  %add54 = or i32 %shl53, 67584
  %add.ptr55 = getelementptr i8, ptr %26, i32 %add54
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #12, !srcloc !363
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !560
  %and59 = and i32 %28, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and59, i32 %route1)
  %cmp60 = icmp eq i32 %and59, %route1
  br i1 %cmp60, label %if.then62, label %do.end49.do.body73_crit_edge

do.end49.do.body73_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body73

if.then62:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio, align 4
  %shl66 = shl i32 %28, 2
  %add67 = add i32 %shl66, 67584
  %add.ptr68 = getelementptr i8, ptr %30, i32 %add67
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #12, !srcloc !363
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !561
  br label %do.body73

do.body73:                                        ; preds = %if.then62, %do.end49.do.body73_crit_edge
  %temp.1 = phi i32 [ %32, %if.then62 ], [ %28, %do.end49.do.body73_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !562
  tail call void @arm_heavy_mb() #12
  %33 = tail call i32 @llvm.bswap.i32(i32 %temp.1)
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 4
  %add.ptr79 = getelementptr i8, ptr %35, i32 %add30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %33) #12, !srcloc !361
  br label %cleanup

cleanup:                                          ; preds = %do.body73, %do.end43, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_src_delWTD(ptr nocapture noundef readonly %vortex, i8 noundef zeroext %src, i8 noundef zeroext %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 52416
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !563
  %conv = zext i8 %ch to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.104) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl4 = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %shl4, 52288
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #12, !srcloc !363
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !564
  %and12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.else128, label %if.then13

if.then13:                                        ; preds = %if.end
  %and14 = and i32 %11, 15
  %conv15 = zext i8 %src to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %conv15)
  %cmp16 = icmp eq i32 %and14, %conv15
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %shl20 = shl nuw nsw i32 %and14, 2
  %add21 = or i32 %shl20, 52224
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr25 = getelementptr i8, ptr %13, i32 %add21
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !565
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !566
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr33 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %14) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !567
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  %add.ptr38 = getelementptr i8, ptr %18, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #12, !srcloc !361
  br label %cleanup

if.else:                                          ; preds = %if.then13
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %shl42 = shl nuw nsw i32 %and14, 2
  %add43 = or i32 %shl42, 52224
  %add.ptr44 = getelementptr i8, ptr %20, i32 %add43
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #12, !srcloc !363
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !568
  %and485 = and i32 %22, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and485, i32 %conv15)
  %cmp50.not6 = icmp eq i32 %and485, %conv15
  br i1 %cmp50.not6, label %while.end.thread, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

while.body:                                       ; preds = %if.end60.while.body_crit_edge, %if.else.while.body_crit_edge
  %and489 = phi i32 [ %and48, %if.end60.while.body_crit_edge ], [ %and485, %if.else.while.body_crit_edge ]
  %ebx.08 = phi i32 [ %and489, %if.end60.while.body_crit_edge ], [ %and14, %if.else.while.body_crit_edge ]
  %esi.07 = phi i32 [ %inc, %if.end60.while.body_crit_edge ], [ 0, %if.else.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %esi.07)
  %exitcond = icmp eq i32 %esi.07, 16
  br i1 %exitcond, label %do.end57, label %if.end60

do.end57:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vortex, align 4
  %dev59 = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev59, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.107) #15
  br label %cleanup

if.end60:                                         ; preds = %while.body
  %shl62 = shl nuw nsw i32 %and489, 2
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %add66 = or i32 %shl62, 52224
  %add.ptr67 = getelementptr i8, ptr %28, i32 %add66
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #12, !srcloc !363
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !569
  %inc = add nuw nsw i32 %esi.07, 1
  %and48 = and i32 %30, 15
  %cmp50.not = icmp eq i32 %and48, %conv15
  br i1 %cmp50.not, label %while.end, label %if.end60.while.body_crit_edge

if.end60.while.body_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end60
  %and72 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else109, label %while.end.if.then74_crit_edge

while.end.if.then74_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

while.end.thread:                                 ; preds = %if.else
  %and7220 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7220)
  %tobool73.not21 = icmp eq i32 %and7220, 0
  br i1 %tobool73.not21, label %do.body100, label %while.end.thread.if.then74_crit_edge

while.end.thread.if.then74_crit_edge:             ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

if.then74:                                        ; preds = %while.end.thread.if.then74_crit_edge, %while.end.if.then74_crit_edge
  %shl71.pre-phi22 = phi i32 [ %shl42, %while.end.thread.if.then74_crit_edge ], [ %shl62, %while.end.if.then74_crit_edge ]
  %shl76 = shl nuw nsw i32 %conv15, 2
  %add77 = or i32 %shl76, 52224
  %31 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio, align 4
  %add.ptr81 = getelementptr i8, ptr %32, i32 %add77
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !570
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !571
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 4
  %add89 = or i32 %shl71.pre-phi22, 52224
  %add.ptr90 = getelementptr i8, ptr %35, i32 %add89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %33) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !572
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 4
  %add.ptr95 = getelementptr i8, ptr %37, i32 %add77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 0) #12, !srcloc !361
  br label %cleanup

do.body100:                                       ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !573
  tail call void @arm_heavy_mb() #12
  %and103 = shl i32 %11, 24
  %38 = and i32 %and103, -285212672
  %39 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio, align 4
  %add.ptr108 = getelementptr i8, ptr %40, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %38) #12, !srcloc !361
  br label %do.body120

if.else109:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %and110 = and i32 %30, -32
  %or = or i32 %and110, %and489
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !574
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %or)
  %42 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio, align 4
  %shl116 = shl nuw nsw i32 %ebx.08, 2
  %add117 = add nuw nsw i32 %shl116, 52224
  %add.ptr118 = getelementptr i8, ptr %43, i32 %add117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %41) #12, !srcloc !361
  br label %do.body120

do.body120:                                       ; preds = %if.else109, %do.body100
  %shl71.pre-phi2332 = phi i32 [ %shl42, %do.body100 ], [ %shl62, %if.else109 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !575
  tail call void @arm_heavy_mb() #12
  %44 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio, align 4
  %add124 = or i32 %shl71.pre-phi2332, 52224
  %add.ptr125 = getelementptr i8, ptr %45, i32 %add124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 0) #12, !srcloc !361
  br label %cleanup

if.else128:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !576
  tail call void @arm_heavy_mb() #12
  %46 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 52416
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !577
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %49, %neg.i
  %50 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %51 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %52, i32 52416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %50) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !578
  tail call void @arm_heavy_mb() #12
  %53 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio, align 4
  %add.ptr134 = getelementptr i8, ptr %54, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 0) #12, !srcloc !361
  br label %cleanup

cleanup:                                          ; preds = %if.else128, %do.body120, %if.then74, %do.end57, %if.then18, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_mixer_delWTD(ptr nocapture noundef readonly %vortex, i8 noundef zeroext %mix, i8 noundef zeroext %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40704
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !579
  %conv = zext i8 %ch to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.109, i32 noundef %3) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl4 = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %shl4, 40512
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #12, !srcloc !363
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !580
  %and12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.else128, label %if.then13

if.then13:                                        ; preds = %if.end
  %and14 = and i32 %11, 15
  %conv15 = zext i8 %mix to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %conv15)
  %cmp16 = icmp eq i32 %and14, %conv15
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %shl20 = shl nuw nsw i32 %and14, 2
  %add21 = or i32 %shl20, 40448
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr25 = getelementptr i8, ptr %13, i32 %add21
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !581
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !582
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr33 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %14) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  %add.ptr38 = getelementptr i8, ptr %18, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #12, !srcloc !361
  br label %cleanup

if.else:                                          ; preds = %if.then13
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %shl42 = shl nuw nsw i32 %and14, 2
  %add43 = or i32 %shl42, 40448
  %add.ptr44 = getelementptr i8, ptr %20, i32 %add43
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #12, !srcloc !363
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !584
  %and485 = and i32 %22, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and485, i32 %conv15)
  %cmp50.not6 = icmp eq i32 %and485, %conv15
  br i1 %cmp50.not6, label %while.end.thread, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

while.body:                                       ; preds = %if.end60.while.body_crit_edge, %if.else.while.body_crit_edge
  %and489 = phi i32 [ %and48, %if.end60.while.body_crit_edge ], [ %and485, %if.else.while.body_crit_edge ]
  %ebx.08 = phi i32 [ %and489, %if.end60.while.body_crit_edge ], [ %and14, %if.else.while.body_crit_edge ]
  %esi.07 = phi i32 [ %inc, %if.end60.while.body_crit_edge ], [ 0, %if.else.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %esi.07)
  %exitcond = icmp eq i32 %esi.07, 16
  br i1 %exitcond, label %do.end57, label %if.end60

do.end57:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vortex, align 4
  %dev59 = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev59, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.112) #15
  br label %cleanup

if.end60:                                         ; preds = %while.body
  %shl62 = shl nuw nsw i32 %and489, 2
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %add66 = or i32 %shl62, 40448
  %add.ptr67 = getelementptr i8, ptr %28, i32 %add66
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #12, !srcloc !363
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !585
  %inc = add nuw nsw i32 %esi.07, 1
  %and48 = and i32 %30, 15
  %cmp50.not = icmp eq i32 %and48, %conv15
  br i1 %cmp50.not, label %while.end, label %if.end60.while.body_crit_edge

if.end60.while.body_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end60
  %and72 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else109, label %while.end.if.then74_crit_edge

while.end.if.then74_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

while.end.thread:                                 ; preds = %if.else
  %and7220 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7220)
  %tobool73.not21 = icmp eq i32 %and7220, 0
  br i1 %tobool73.not21, label %do.body100, label %while.end.thread.if.then74_crit_edge

while.end.thread.if.then74_crit_edge:             ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74

if.then74:                                        ; preds = %while.end.thread.if.then74_crit_edge, %while.end.if.then74_crit_edge
  %shl71.pre-phi22 = phi i32 [ %shl42, %while.end.thread.if.then74_crit_edge ], [ %shl62, %while.end.if.then74_crit_edge ]
  %shl76 = shl nuw nsw i32 %conv15, 2
  %add77 = or i32 %shl76, 40448
  %31 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio, align 4
  %add.ptr81 = getelementptr i8, ptr %32, i32 %add77
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !586
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !587
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 4
  %add89 = or i32 %shl71.pre-phi22, 40448
  %add.ptr90 = getelementptr i8, ptr %35, i32 %add89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %33) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !588
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 4
  %add.ptr95 = getelementptr i8, ptr %37, i32 %add77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 0) #12, !srcloc !361
  br label %cleanup

do.body100:                                       ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !589
  tail call void @arm_heavy_mb() #12
  %and103 = shl i32 %11, 24
  %38 = and i32 %and103, -285212672
  %39 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio, align 4
  %add.ptr108 = getelementptr i8, ptr %40, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %38) #12, !srcloc !361
  br label %do.body120

if.else109:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %and110 = and i32 %30, -32
  %or = or i32 %and110, %and489
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !590
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %or)
  %42 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio, align 4
  %shl116 = shl nuw nsw i32 %ebx.08, 2
  %add117 = add nuw nsw i32 %shl116, 40448
  %add.ptr118 = getelementptr i8, ptr %43, i32 %add117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %41) #12, !srcloc !361
  br label %do.body120

do.body120:                                       ; preds = %if.else109, %do.body100
  %shl71.pre-phi2332 = phi i32 [ %shl42, %do.body100 ], [ %shl62, %if.else109 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !591
  tail call void @arm_heavy_mb() #12
  %44 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio, align 4
  %add124 = or i32 %shl71.pre-phi2332, 40448
  %add.ptr125 = getelementptr i8, ptr %45, i32 %add124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 0) #12, !srcloc !361
  br label %cleanup

if.else128:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !592
  tail call void @arm_heavy_mb() #12
  %46 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 40704
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !593
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %49, %neg.i
  %50 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %51 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio, align 4
  %add.ptr3.i = getelementptr i8, ptr %52, i32 40704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %50) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !594
  tail call void @arm_heavy_mb() #12
  %53 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio, align 4
  %add.ptr134 = getelementptr i8, ptr %54, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 0) #12, !srcloc !361
  br label %cleanup

cleanup:                                          ; preds = %if.else128, %do.body120, %if.then74, %do.end57, %if.then18, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_mix_killinput(ptr nocapture noundef readonly %vortex, i8 noundef zeroext %mix, i32 noundef %mixin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %mixin
  %neg = xor i32 %shl, -1
  %idxprom = zext i8 %mix to i32
  %arrayidx = getelementptr [16 x i32], ptr @rampchs, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !522
  tail call void @arm_heavy_mb() #12
  %mmio.i = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %shl.i = shl nuw nsw i32 %idxprom, 5
  %add.i = add i32 %shl.i, %mixin
  %shl2.i = shl i32 %add.i, 2
  %add3.i = add i32 %shl2.i, 36864
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2147483648) #12, !srcloc !361
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add9.i = add i32 %shl2.i, 32768
  %add.ptr10.i = getelementptr i8, ptr %5, i32 %add9.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !523
  %arrayidx4 = getelementptr [16 x i32], ptr @mchannels, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  %and5 = and i32 %8, %neg
  store i32 %and5, ptr %arrayidx4, align 4
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %11 = add i32 %add.i, 39424
  %add3.i15 = and i32 %11, -4
  %add.ptr.i16 = getelementptr i8, ptr %10, i32 %add3.i15
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #12, !srcloc !363
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !524
  %and8.i = and i32 %mixin, 3
  %shl9.i = shl nuw nsw i32 1, %and8.i
  %neg.i = xor i32 %shl9.i, -1
  %and10.i = and i32 %13, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !525
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %15, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 -2147483648) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !526
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %shl23.i = shl i32 %mixin, 2
  %add24.i = add i32 %shl23.i, 39936
  %add.ptr25.i = getelementptr i8, ptr %17, i32 %add24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !527
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add31.i = add i32 %shl23.i, 39940
  %add.ptr32.i = getelementptr i8, ptr %19, i32 %add31.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !528
  tail call void @arm_heavy_mb() #12
  %20 = tail call i32 @llvm.bswap.i32(i32 %and10.i) #12
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %22, i32 %add3.i15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %20) #12, !srcloc !361
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_wtdma_startfifo(ptr nocapture noundef %vortex, i32 noundef %wtdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 6, i32 %wtdma
  %fifo_status = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 6, i32 %wtdma, i32 1
  %0 = ptrtoint ptr %fifo_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo_status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.not = icmp eq i32 %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !500
  tail call void @arm_heavy_mb() #12
  %mmio.i = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %shl.i = shl i32 %wtdma, 2
  %add.i = add i32 %shl.i, 63552
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !501
  %8 = and i32 %7, -268435457
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  %or.i = select i1 %tobool.not.not, i32 65536, i32 65552
  %or4.i = or i32 %or.i, %9
  %10 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #12
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %12, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %10) #12, !srcloc !361
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !595
  tail call void @arm_heavy_mb() #12
  %dma_ctrl = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 6, i32 %wtdma, i32 2
  %13 = ptrtoint ptr %dma_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_ctrl, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %shl = shl i32 %wtdma, 2
  %add = add i32 %shl, 66816
  %add.ptr = getelementptr i8, ptr %17, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #12, !srcloc !361
  %dma_unknown = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 6, i32 %wtdma, i32 3
  %18 = ptrtoint ptr %dma_unknown to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_unknown, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not = icmp ne i32 %21, 0
  %cond4 = zext i1 %tobool3.not to i32
  tail call fastcc void @vortex_fifo_setwtctrl(ptr noundef %vortex, i32 noundef %wtdma, i32 noundef %19, i32 noundef 1, i32 noundef %cond4)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dma_unknown6 = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 6, i32 %wtdma, i32 3
  %22 = ptrtoint ptr %dma_unknown6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_unknown6, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not = icmp ne i32 %25, 0
  %cond9 = zext i1 %tobool8.not to i32
  tail call fastcc void @vortex_fifo_setwtctrl(ptr noundef %vortex, i32 noundef %wtdma, i32 noundef %23, i32 noundef 0, i32 noundef %cond9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %26 = ptrtoint ptr %fifo_status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %fifo_status, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_wtdma_stopfifo(ptr nocapture noundef %vortex, i32 noundef %wtdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 6, i32 %wtdma
  %fifo_status = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 6, i32 %wtdma, i32 1
  %0 = ptrtoint ptr %fifo_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifo_status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %1, label %entry.if.end4_crit_edge [
    i32 1, label %if.then
    i32 0, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dma_unknown = getelementptr %struct.snd_vortex, ptr %vortex, i32 0, i32 6, i32 %wtdma, i32 3
  %3 = ptrtoint ptr %dma_unknown to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_unknown, align 4
  tail call fastcc void @vortex_fifo_setwtctrl(ptr noundef %vortex, i32 noundef %wtdma, i32 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %5 = ptrtoint ptr %fifo_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fifo_status, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_fifo_setadbctrl(ptr nocapture noundef readonly %vortex, i32 noundef %fifo, i32 noundef %stereo, i32 noundef %empty, i32 noundef %valid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %shl = shl i32 %fifo, 2
  %add = add i32 %shl, 63488
  br label %do.body

do.body:                                          ; preds = %do.cond3.do.body_crit_edge, %entry
  %lifeboat.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond3.do.body_crit_edge ]
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !596
  call void @__sanitizer_cov_trace_const_cmp4(i32 3001, i32 %lifeboat.0)
  %exitcond = icmp eq i32 %lifeboat.0, 3001
  br i1 %exitcond, label %do.end, label %do.cond3

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.128) #15
  br label %do.end4

do.cond3:                                         ; preds = %do.body
  %inc = add nuw nsw i32 %lifeboat.0, 1
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond3.do.end4_crit_edge, label %do.cond3.do.body_crit_edge

do.cond3.do.body_crit_edge:                       ; preds = %do.cond3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond3.do.end4_crit_edge:                       ; preds = %do.cond3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end4:                                          ; preds = %do.cond3.do.end4_crit_edge, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid)
  %tobool5.not = icmp eq i32 %valid, 0
  %and33 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end4
  br i1 %tobool34.not, label %if.then9, label %if.then6.do.body43_crit_edge

if.then6.do.body43_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

if.then9:                                         ; preds = %if.then6
  %shl.i = shl i32 %fifo, 5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then9
  %x.addr.01.i = phi i32 [ 31, %if.then9 ], [ %dec3.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.i = add nuw nsw i32 %x.addr.01.i, %shl.i
  %shl1.i = shl i32 %add.i, 2
  %add2.i = add i32 %shl1.i, 57344
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !361
  %dec3.i = add nsw i32 %x.addr.01.i, -1
  %cmp.not.i = icmp eq i32 %x.addr.01.i, 0
  br i1 %cmp.not.i, label %vortex_fifo_clearadbdata.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

vortex_fifo_clearadbdata.exit:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %and13 = shl i32 %stereo, 1
  %shl14 = and i32 %and13, 2
  %and25 = shl i32 %empty, 5
  %shl26 = and i32 %and25, 32
  %or23 = or i32 %shl14, %shl26
  %or27 = or i32 %or23, 69648
  br label %do.body43

if.else:                                          ; preds = %do.end4
  br i1 %tobool34.not, label %if.else40, label %if.then35

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and38 = and i32 %3, -262161
  br label %do.body43

if.else40:                                        ; preds = %if.else
  %shl.i2 = shl i32 %fifo, 5
  br label %do.body.i10

do.body.i10:                                      ; preds = %do.body.i10.do.body.i10_crit_edge, %if.else40
  %x.addr.01.i3 = phi i32 [ 31, %if.else40 ], [ %dec3.i8, %do.body.i10.do.body.i10_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.i4 = add nuw nsw i32 %x.addr.01.i3, %shl.i2
  %shl1.i5 = shl i32 %add.i4, 2
  %add2.i6 = add i32 %shl1.i5, 57344
  %add.ptr.i7 = getelementptr i8, ptr %11, i32 %add2.i6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #12, !srcloc !361
  %dec3.i8 = add nsw i32 %x.addr.01.i3, -1
  %cmp.not.i9 = icmp eq i32 %x.addr.01.i3, 0
  br i1 %cmp.not.i9, label %do.body.i10.do.body43_crit_edge, label %do.body.i10.do.body.i10_crit_edge

do.body.i10.do.body.i10_crit_edge:                ; preds = %do.body.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i10

do.body.i10.do.body43_crit_edge:                  ; preds = %do.body.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

do.body43:                                        ; preds = %do.body.i10.do.body43_crit_edge, %if.then35, %vortex_fifo_clearadbdata.exit, %if.then6.do.body43_crit_edge
  %temp.0 = phi i32 [ %or27, %vortex_fifo_clearadbdata.exit ], [ %3, %if.then6.do.body43_crit_edge ], [ %and38, %if.then35 ], [ %3, %do.body.i10.do.body43_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !597
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %temp.0)
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr49 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %12) #12, !srcloc !361
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr55 = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !598
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vortex_fifo_setwtctrl(ptr nocapture noundef readonly %vortex, i32 noundef %fifo, i32 noundef %ctrl, i32 noundef %empty, i32 noundef %valid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %vortex, i32 0, i32 16
  %shl = shl i32 %fifo, 2
  %add = add i32 %shl, 63552
  br label %do.body

do.body:                                          ; preds = %do.cond3.do.body_crit_edge, %entry
  %lifeboat.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond3.do.body_crit_edge ]
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !599
  call void @__sanitizer_cov_trace_const_cmp4(i32 3001, i32 %lifeboat.0)
  %exitcond = icmp eq i32 %lifeboat.0, 3001
  br i1 %exitcond, label %do.end, label %do.cond3

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %vortex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vortex, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.130) #15
  br label %do.end4

do.cond3:                                         ; preds = %do.body
  %inc = add nuw nsw i32 %lifeboat.0, 1
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond3.do.end4_crit_edge, label %do.cond3.do.body_crit_edge

do.cond3.do.body_crit_edge:                       ; preds = %do.cond3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond3.do.end4_crit_edge:                       ; preds = %do.cond3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end4:                                          ; preds = %do.cond3.do.end4_crit_edge, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid)
  %tobool5.not = icmp eq i32 %valid, 0
  %and33 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end4
  br i1 %tobool34.not, label %if.then9, label %if.then6.do.body43_crit_edge

if.then6.do.body43_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

if.then9:                                         ; preds = %if.then6
  %shl.i = shl i32 %fifo, 5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then9
  %x.addr.01.i = phi i32 [ 31, %if.then9 ], [ %dec4.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !448
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.i = add nuw nsw i32 %x.addr.01.i, %shl.i
  %shl2.i = shl i32 %add.i, 2
  %add3.i = add i32 %shl2.i, 59392
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !361
  %dec4.i = add nsw i32 %x.addr.01.i, -1
  %cmp1.not.i = icmp eq i32 %x.addr.01.i, 0
  br i1 %cmp1.not.i, label %vortex_fifo_clearwtdata.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

vortex_fifo_clearwtdata.exit:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %and13 = shl i32 %ctrl, 1
  %shl14 = and i32 %and13, 2
  %and25 = shl i32 %empty, 5
  %shl26 = and i32 %and25, 32
  %or23 = or i32 %shl14, %shl26
  %or27 = or i32 %or23, 69648
  br label %do.body43

if.else:                                          ; preds = %do.end4
  br i1 %tobool34.not, label %if.else40, label %if.then35

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and38 = and i32 %3, -262161
  br label %do.body43

if.else40:                                        ; preds = %if.else
  %shl.i2 = shl i32 %fifo, 5
  br label %do.body.i10

do.body.i10:                                      ; preds = %do.body.i10.do.body.i10_crit_edge, %if.else40
  %x.addr.01.i3 = phi i32 [ 31, %if.else40 ], [ %dec4.i8, %do.body.i10.do.body.i10_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !448
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.i4 = add nuw nsw i32 %x.addr.01.i3, %shl.i2
  %shl2.i5 = shl i32 %add.i4, 2
  %add3.i6 = add i32 %shl2.i5, 59392
  %add.ptr.i7 = getelementptr i8, ptr %11, i32 %add3.i6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #12, !srcloc !361
  %dec4.i8 = add nsw i32 %x.addr.01.i3, -1
  %cmp1.not.i9 = icmp eq i32 %x.addr.01.i3, 0
  br i1 %cmp1.not.i9, label %do.body.i10.do.body43_crit_edge, label %do.body.i10.do.body.i10_crit_edge

do.body.i10.do.body.i10_crit_edge:                ; preds = %do.body.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i10

do.body.i10.do.body43_crit_edge:                  ; preds = %do.body.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

do.body43:                                        ; preds = %do.body.i10.do.body43_crit_edge, %if.then35, %vortex_fifo_clearwtdata.exit, %if.then6.do.body43_crit_edge
  %temp.0 = phi i32 [ %or27, %vortex_fifo_clearwtdata.exit ], [ %3, %if.then6.do.body43_crit_edge ], [ %and38, %if.then35 ], [ %3, %do.body.i10.do.body43_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !600
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %temp.0)
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr49 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %12) #12, !srcloc !361
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr55 = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !601
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_vortex_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_vortex_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %value, align 8
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -126, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx6, align 2
  %spdif_sr = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %spdif_sr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %spdif_sr, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 32000, label %entry.sw.epilog.sink.split_crit_edge
    i32 44100, label %sw.bb10
    i32 48000, label %sw.bb14
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb14, %sw.bb10, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 2, %sw.bb14 ], [ 0, %sw.bb10 ], [ 3, %entry.sw.epilog.sink.split_crit_edge ]
  %arrayidx17 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %arrayidx17, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vortex_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.selectcmp = icmp eq i8 %4, 0
  %switch.select = select i1 %switch.selectcmp, i32 44100, i32 48000
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %switch.selectcmp12 = icmp eq i8 %4, 3
  %switch.select13 = select i1 %switch.selectcmp12, i32 32000, i32 %switch.select
  %spdif_sr3 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %spdif_sr3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %spdif_sr3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select13, i32 %6)
  %cmp = icmp eq i32 %switch.select13, %6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %spdif_sr3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.select13, ptr %spdif_sr3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !602
  tail call void @arm_heavy_mb() #12
  %mmio.i = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 65628
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !603
  %11 = and i32 %10, -33557505
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 65628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %15, i32 72148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.1.i = getelementptr i8, ptr %17, i32 72152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.1.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.2.i = getelementptr i8, ptr %19, i32 72156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.2.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.3.i = getelementptr i8, ptr %21, i32 72160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.3.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.4.i = getelementptr i8, ptr %23, i32 72164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.4.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.5.i = getelementptr i8, ptr %25, i32 72168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.5.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.6.i = getelementptr i8, ptr %27, i32 72172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.6.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.7.i = getelementptr i8, ptr %29, i32 72176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.7.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.8.i = getelementptr i8, ptr %31, i32 72180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.8.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.9.i = getelementptr i8, ptr %33, i32 72184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.9.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.10.i = getelementptr i8, ptr %35, i32 72188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.10.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !605
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %37, i32 72080
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !606
  %39 = or i32 %38, 3072
  %40 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %41, i32 72080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %39) #12, !srcloc !361
  %or32.i = or i32 %switch.select13, 140
  %trunc = trunc i32 %switch.select13 to i16
  %42 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.163)
  switch i16 %trunc, label %if.end.vortex_spdif_init.exit_crit_edge [
    i16 32000, label %sw.bb.i
    i16 -21436, label %sw.bb40.i
    i16 -17536, label %if.end60.i
  ]

if.end.vortex_spdif_init.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_spdif_init.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_spdif_init.exit

sw.bb40.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_spdif_init.exit

if.end60.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %vortex_spdif_init.exit

vortex_spdif_init.exit:                           ; preds = %if.end60.i, %sw.bb40.i, %sw.bb.i, %if.end.vortex_spdif_init.exit_crit_edge
  %this_38.1.i = phi i32 [ 0, %if.end.vortex_spdif_init.exit_crit_edge ], [ 131072, %if.end60.i ], [ 196608, %sw.bb40.i ], [ 196608, %sw.bb.i ]
  %spdif_sr.addr.0.i = phi i32 [ %or32.i, %if.end.vortex_spdif_init.exit_crit_edge ], [ 48014, %if.end60.i ], [ 44236, %sw.bb40.i ], [ 32141, %sw.bb.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !607
  tail call void @arm_heavy_mb() #12
  %43 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i, align 4
  %add.ptr68.i = getelementptr i8, ptr %44, i32 72144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 0) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !608
  tail call void @arm_heavy_mb() #12
  %45 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %46, i32 72148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 %this_38.1.i) #12, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !609
  tail call void @arm_heavy_mb() #12
  %47 = tail call i32 @llvm.bswap.i32(i32 %spdif_sr.addr.0.i) #12
  %48 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i, align 4
  %add.ptr79.i = getelementptr i8, ptr %49, i32 72084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 %47) #12, !srcloc !361
  br label %cleanup

cleanup:                                          ; preds = %vortex_spdif_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %vortex_spdif_init.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_vortex_spdif_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 8
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %arrayidx6, align 2
  %arrayidx9 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 15, ptr %arrayidx9, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_vortex_pcm_vol_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %isquad = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %isquad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isquad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 2, i32 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -128, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vortex_pcm_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %isquad = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %isquad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isquad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 2, i32 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %3, i32 4, i32 %i.08
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.08
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vortex_pcm_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %isquad = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %isquad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %isquad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 2, i32 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %active = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %3, i32 1
  %dma = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %3, i32 2
  %mixin12 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %3, i32 3
  %mmio.i = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.051 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %changed.050 = phi i32 [ 0, %entry ], [ %changed.1, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %3, i32 4, i32 %i.051
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.051
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4.not = icmp eq i32 %7, %9
  br i1 %cmp4.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx2, align 4
  %11 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %if.then.for.inc_crit_edge, label %if.then10

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10:                                        ; preds = %if.then
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  %nr_ch = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 4, i32 %14, i32 6
  %15 = ptrtoint ptr %nr_ch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_ch, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %16, label %sw.default [
    i32 1, label %if.then10.sw.epilog_crit_edge
    i32 4, label %sw.bb19
  ]

if.then10.sw.epilog_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.051)
  %cmp16 = icmp ult i32 %i.051, 2
  %sub = add nsw i32 %i.051, -2
  %cond17 = select i1 %cmp16, i32 %i.051, i32 %sub
  %arrayidx18 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %3, i32 3, i32 %cond17
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx21 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 12, i32 %3, i32 3, i32 %i.051
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.default, %if.then10.sw.epilog_crit_edge
  %mixin.0.in = phi ptr [ %arrayidx18, %sw.default ], [ %arrayidx21, %sw.bb19 ], [ %mixin12, %if.then10.sw.epilog_crit_edge ]
  %18 = ptrtoint ptr %mixin.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %mixin.0 = load i32, ptr %mixin.0.in, align 4
  %conv = trunc i32 %9 to i8
  %arrayidx24 = getelementptr %struct.snd_vortex, ptr %1, i32 0, i32 10, i32 %i.051
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx24, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !522
  tail call void @arm_heavy_mb() #12
  %conv.i = shl i32 %9, 24
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %conv1.i = zext i8 %20 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 5
  %add.i = add i32 %shl.i, %mixin.0
  %shl2.i = shl i32 %add.i, 2
  %add3.i = add i32 %shl2.i, 36864
  %add.ptr.i = getelementptr i8, ptr %22, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i) #12, !srcloc !361
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add9.i = add i32 %shl2.i, 32768
  %add.ptr10.i = getelementptr i8, ptr %24, i32 %add9.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !523
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %25)
  %cmp.not.i = icmp ne i32 %25, -2147483648
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %conv)
  %cmp14.i = icmp eq i8 %conv, -128
  %or.cond.i = or i1 %cmp14.i, %cmp.not.i
  br i1 %or.cond.i, label %sw.epilog.for.inc_crit_edge, label %do.body16.i

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body16.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !529
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %27, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %conv.i) #12, !srcloc !361
  br label %for.inc

for.inc:                                          ; preds = %do.body16.i, %sw.epilog.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %changed.1 = phi i32 [ %changed.050, %for.body.for.inc_crit_edge ], [ 1, %if.then.for.inc_crit_edge ], [ 1, %sw.epilog.for.inc_crit_edge ], [ 1, %do.body16.i ]
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 %changed.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @vortex_game_read(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 69640
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !610
  %conv = trunc i32 %5 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vortex_game_trigger(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !611
  tail call void @arm_heavy_mb() #12
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 69640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777216) #12, !srcloc !361
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vortex_game_cooked_read(ptr nocapture noundef readonly %gameport, ptr nocapture noundef writeonly %axes, ptr nocapture noundef writeonly %buttons) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 69640
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !612
  %5 = xor i32 %4, -1
  %6 = lshr i32 %5, 28
  %7 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buttons, align 4
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 69648
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #12, !srcloc !363
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !613
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14745600, i32 %10)
  %cmp10 = icmp eq i32 %10, -14745600
  %spec.select = select i1 %cmp10, i32 -1, i32 %11
  %12 = ptrtoint ptr %axes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %axes, align 4
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr5.1 = getelementptr i8, ptr %14, i32 69652
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.1) #12, !srcloc !363
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !613
  %arrayidx.1 = getelementptr i32, ptr %axes, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14745600, i32 %15)
  %cmp10.1 = icmp eq i32 %15, -14745600
  %spec.select.1 = select i1 %cmp10.1, i32 -1, i32 %16
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.1, ptr %arrayidx.1, align 4
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %add.ptr5.2 = getelementptr i8, ptr %19, i32 69656
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.2) #12, !srcloc !363
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !613
  %arrayidx.2 = getelementptr i32, ptr %axes, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14745600, i32 %20)
  %cmp10.2 = icmp eq i32 %20, -14745600
  %spec.select.2 = select i1 %cmp10.2, i32 -1, i32 %21
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.2, ptr %arrayidx.2, align 4
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 4
  %add.ptr5.3 = getelementptr i8, ptr %24, i32 69660
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.3) #12, !srcloc !363
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !613
  %arrayidx.3 = getelementptr i32, ptr %axes, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14745600, i32 %25)
  %cmp10.3 = icmp eq i32 %25, -14745600
  %spec.select.3 = select i1 %cmp10.3, i32 -1, i32 %26
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select.3, ptr %arrayidx.3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vortex_game_open(ptr nocapture noundef readonly %gameport, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %do.body
    i32 1, label %do.body5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !614
  tail call void @arm_heavy_mb() #12
  %mmio = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 69644
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !615
  %6 = or i32 %5, 1073741824
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 69644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #12, !srcloc !361
  tail call void @msleep(i32 noundef 20) #12
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !616
  tail call void @arm_heavy_mb() #12
  %mmio10 = getelementptr inbounds %struct.snd_vortex, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %mmio10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio10, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 69644
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #12, !srcloc !363
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !617
  %12 = and i32 %11, -1073741825
  %13 = ptrtoint ptr %mmio10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio10, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 69644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %12) #12, !srcloc !361
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body5 ], [ 0, %do.body ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
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
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102, !103, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !183, !185, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !237, !238, !239, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !288, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !304, !305, !307, !308, !309, !311, !312, !313, !314, !316, !317, !318, !319, !321, !323, !325, !327, !329, !331, !333, !334, !335, !336, !337, !339, !341, !342, !343, !344, !345, !347}
!llvm.module.flags = !{!349, !350, !351, !352, !353, !354, !355, !356}
!llvm.ident = !{!357}

!0 = !{ptr @__param_index, !1, !"__param_index", i1 false, i1 false}
!1 = !{!"../sound/pci/au88x0/au88x0.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_indextype245, !1, !"__UNIQUE_ID_indextype245", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_index246, !4, !"__UNIQUE_ID_index246", i1 false, i1 false}
!4 = !{!"../sound/pci/au88x0/au88x0.c", i32 34, i32 1}
!5 = !{ptr @__param_id, !6, !"__param_id", i1 false, i1 false}
!6 = !{!"../sound/pci/au88x0/au88x0.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_idtype247, !6, !"__UNIQUE_ID_idtype247", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_id248, !9, !"__UNIQUE_ID_id248", i1 false, i1 false}
!9 = !{!"../sound/pci/au88x0/au88x0.c", i32 36, i32 1}
!10 = !{ptr @__param_enable, !11, !"__param_enable", i1 false, i1 false}
!11 = !{!"../sound/pci/au88x0/au88x0.c", i32 37, i32 1}
!12 = !{ptr @__UNIQUE_ID_enabletype249, !11, !"__UNIQUE_ID_enabletype249", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable250, !14, !"__UNIQUE_ID_enable250", i1 false, i1 false}
!14 = !{!"../sound/pci/au88x0/au88x0.c", i32 38, i32 1}
!15 = !{ptr @__param_pcifix, !16, !"__param_pcifix", i1 false, i1 false}
!16 = !{!"../sound/pci/au88x0/au88x0.c", i32 39, i32 1}
!17 = !{ptr @__UNIQUE_ID_pcifixtype251, !16, !"__UNIQUE_ID_pcifixtype251", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_pcifix252, !19, !"__UNIQUE_ID_pcifix252", i1 false, i1 false}
!19 = !{!"../sound/pci/au88x0/au88x0.c", i32 40, i32 1}
!20 = !{ptr @__UNIQUE_ID_description253, !21, !"__UNIQUE_ID_description253", i1 false, i1 false}
!21 = !{!"../sound/pci/au88x0/au88x0.c", i32 42, i32 1}
!22 = !{ptr @__UNIQUE_ID_file254, !23, !"__UNIQUE_ID_file254", i1 false, i1 false}
!23 = !{!"../sound/pci/au88x0/au88x0.c", i32 43, i32 1}
!24 = !{ptr @__UNIQUE_ID_license255, !23, !"__UNIQUE_ID_license255", i1 false, i1 false}
!25 = !{ptr @__initcall__kmod_snd_au8820__256_320_vortex_driver_init6, !26, !"__initcall__kmod_snd_au8820__256_320_vortex_driver_init6", i1 false, i1 false}
!26 = !{!"../sound/pci/au88x0/au88x0.c", i32 320, i32 1}
!27 = !{ptr @__exitcall_vortex_driver_exit, !26, !"__exitcall_vortex_driver_exit", i1 false, i1 false}
!28 = !{ptr @__param_str_index, !1, !"__param_str_index", i1 false, i1 false}
!29 = !{ptr @__param_arr_index, !1, !"__param_arr_index", i1 false, i1 false}
!30 = !{ptr @index, !31, !"index", i1 false, i1 false}
!31 = !{!"../sound/pci/au88x0/au88x0.c", i32 28, i32 12}
!32 = !{ptr @__param_str_id, !6, !"__param_str_id", i1 false, i1 false}
!33 = !{ptr @__param_arr_id, !6, !"__param_arr_id", i1 false, i1 false}
!34 = !{ptr @id, !35, !"id", i1 false, i1 false}
!35 = !{!"../sound/pci/au88x0/au88x0.c", i32 29, i32 14}
!36 = !{ptr @__param_str_enable, !11, !"__param_str_enable", i1 false, i1 false}
!37 = !{ptr @__param_arr_enable, !11, !"__param_arr_enable", i1 false, i1 false}
!38 = !{ptr @enable, !39, !"enable", i1 false, i1 false}
!39 = !{!"../sound/pci/au88x0/au88x0.c", i32 30, i32 13}
!40 = !{ptr @__param_str_pcifix, !16, !"__param_str_pcifix", i1 false, i1 false}
!41 = !{ptr @__param_arr_pcifix, !16, !"__param_arr_pcifix", i1 false, i1 false}
!42 = !{ptr @pcifix, !43, !"pcifix", i1 false, i1 false}
!43 = !{!"../sound/pci/au88x0/au88x0.c", i32 31, i32 12}
!44 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vortex_driver, !46, !"vortex_driver", i1 false, i1 false}
!46 = !{!"../sound/pci/au88x0/au88x0.c", i32 314, i32 26}
!47 = !{ptr @snd_vortex_ids, !48, !"snd_vortex_ids", i1 false, i1 false}
!48 = !{!"../sound/pci/au88x0/au8820.c", i32 4, i32 35}
!49 = !{ptr @snd_vortex_probe.dev, !50, !"dev", i1 false, i1 false}
!50 = !{!"../sound/pci/au88x0/au88x0.c", i32 198, i32 13}
!51 = !{ptr @.str.1, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/au88x0/au88x0.c", i32 224, i32 23}
!53 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/au88x0/au88x0.c", i32 225, i32 27}
!55 = !{ptr @.str.3, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/au88x0/au88x0.c", i32 226, i32 26}
!57 = !{ptr @.str.4, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/au88x0/au88x0.c", i32 147, i32 3}
!59 = !{ptr @.str.5, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.6, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @snd_vortex_create._entry, !58, !"_entry", i1 false, i1 false}
!64 = !{ptr @snd_vortex_create._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/au88x0/au88x0.c", i32 175, i32 3}
!67 = !{ptr @snd_vortex_create._entry.9, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @snd_vortex_create._entry_ptr.11, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/au88x0/au88x0.c", i32 182, i32 3}
!71 = !{ptr @snd_vortex_create._entry.12, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @snd_vortex_create._entry_ptr.14, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2686, i32 2}
!75 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @vortex_core_init._entry, !74, !"_entry", i1 false, i1 false}
!79 = !{ptr @vortex_core_init._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2731, i32 2}
!82 = !{ptr @vortex_core_init._entry.19, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @vortex_core_init._entry_ptr.21, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @vortex_core_init.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2732, i32 2}
!86 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 1034, i32 4}
!89 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @vortex_fifo_init._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @vortex_fifo_init._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 1045, i32 4}
!94 = !{ptr @vortex_fifo_init._entry.25, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @vortex_fifo_init._entry_ptr.27, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mchannels, !97, !"mchannels", i1 false, i1 false}
!97 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 74, i32 12}
!98 = !{ptr @rampchs, !99, !"rampchs", i1 false, i1 false}
!99 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 75, i32 12}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/au88x0/au88x0_synth.c", i32 189, i32 4}
!102 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @vortex_wt_SetReg._entry, !101, !"_entry", i1 false, i1 false}
!106 = !{ptr @vortex_wt_SetReg._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/au88x0/au88x0_synth.c", i32 196, i32 4}
!109 = !{ptr @vortex_wt_SetReg._entry.32, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @vortex_wt_SetReg._entry_ptr.34, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2423, i32 3}
!113 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @vortex_interrupt._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @vortex_interrupt._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2431, i32 4}
!118 = !{ptr @vortex_interrupt._entry.37, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @vortex_interrupt._entry_ptr.39, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2434, i32 4}
!122 = !{ptr @vortex_interrupt._entry.40, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @vortex_interrupt._entry_ptr.42, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2437, i32 4}
!126 = !{ptr @vortex_interrupt._entry.43, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @vortex_interrupt._entry_ptr.45, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2440, i32 4}
!130 = !{ptr @vortex_interrupt._entry.46, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @vortex_interrupt._entry_ptr.48, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2443, i32 4}
!134 = !{ptr @vortex_interrupt._entry.49, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @vortex_interrupt._entry_ptr.51, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2491, i32 3}
!138 = !{ptr @vortex_interrupt._entry.52, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @vortex_interrupt._entry_ptr.54, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 1208, i32 3}
!142 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @vortex_adbdma_bufshift._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @vortex_adbdma_bufshift._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 1480, i32 3}
!147 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @vortex_wtdma_bufshift._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @vortex_wtdma_bufshift._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2740, i32 2}
!152 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @vortex_core_shutdown._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @vortex_core_shutdown._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2762, i32 2}
!157 = !{ptr @vortex_core_shutdown._entry.61, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @vortex_core_shutdown._entry_ptr.63, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/au88x0/au88x0.c", i32 101, i32 4}
!161 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @snd_vortex_workaround._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @snd_vortex_workaround._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.66, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/au88x0/au88x0.c", i32 51, i32 3}
!166 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @vortex_fix_latency._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @vortex_fix_latency._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/au88x0/au88x0.c", i32 53, i32 3}
!171 = !{ptr @vortex_fix_latency._entry.68, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @vortex_fix_latency._entry_ptr.70, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/au88x0/au88x0.c", i32 75, i32 3}
!175 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @vortex_fix_agp_bridge._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @vortex_fix_agp_bridge._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @vortex_fix_agp_bridge._entry.73, !179, !"_entry", i1 false, i1 false}
!179 = !{!"../sound/pci/au88x0/au88x0.c", i32 77, i32 3}
!180 = !{ptr @vortex_fix_agp_bridge._entry_ptr.74, !179, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @snd_vortex_mixer.ops, !182, !"ops", i1 false, i1 false}
!182 = !{!"../sound/pci/au88x0/au88x0_mixer.c", i32 28, i32 39}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/au88x0/au88x0_mixer.c", i32 42, i32 27}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/au88x0/au88x0_mixer.c", i32 43, i32 27}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2548, i32 4}
!189 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @vortex_codec_write._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @vortex_codec_write._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2574, i32 4}
!194 = !{ptr @vortex_codec_read._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @vortex_codec_read._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.81, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2588, i32 4}
!198 = !{ptr @vortex_codec_read._entry.80, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @vortex_codec_read._entry_ptr.82, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 616, i32 3}
!202 = !{ptr @.str.84, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 437, i32 2}
!204 = !{ptr @.str.85, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 438, i32 2}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 439, i32 2}
!208 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 440, i32 2}
!210 = !{ptr @.str.88, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 441, i32 2}
!212 = !{ptr @vortex_pcm_prettyname, !213, !"vortex_pcm_prettyname", i1 false, i1 false}
!213 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 436, i32 27}
!214 = !{ptr @.str.89, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 444, i32 2}
!216 = !{ptr @.str.90, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 445, i32 2}
!218 = !{ptr @.str.91, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 446, i32 2}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 447, i32 2}
!222 = !{ptr @.str.93, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 448, i32 2}
!224 = !{ptr @vortex_pcm_name, !225, !"vortex_pcm_name", i1 false, i1 false}
!225 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 443, i32 27}
!226 = !{ptr @snd_vortex_playback_ops, !227, !"snd_vortex_playback_ops", i1 false, i1 false}
!227 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 422, i32 33}
!228 = !{ptr @snd_vortex_playback_hw_spdif, !229, !"snd_vortex_playback_hw_spdif", i1 false, i1 false}
!229 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 62, i32 38}
!230 = !{ptr @snd_vortex_playback_hw_adb, !231, !"snd_vortex_playback_hw_adb", i1 false, i1 false}
!231 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 21, i32 38}
!232 = !{ptr @snd_vortex_playback_hw_wt, !233, !"snd_vortex_playback_hw_wt", i1 false, i1 false}
!233 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 85, i32 38}
!234 = !{ptr @.str.94, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2043, i32 2}
!236 = !{ptr @.str.95, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @vortex_adb_checkinout._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @vortex_adb_checkinout._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @resnum, !240, !"resnum", i1 false, i1 false}
!240 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 1992, i32 18}
!241 = !{ptr @.str.96, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 1665, i32 4}
!243 = !{ptr @.str.97, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @vortex_adb_addroutes._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @vortex_adb_addroutes._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.98, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 675, i32 4}
!248 = !{ptr @.str.99, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @vortex_src_addWTD._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @vortex_src_addWTD._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.100, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 276, i32 4}
!253 = !{ptr @.str.101, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @vortex_mixer_addWTD._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @vortex_mixer_addWTD._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.102, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 1701, i32 4}
!258 = !{ptr @.str.103, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @vortex_adb_delroutes._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @vortex_adb_delroutes._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.104, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 694, i32 3}
!263 = !{ptr @.str.105, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @vortex_src_delWTD._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @vortex_src_delWTD._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.107, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 715, i32 6}
!268 = !{ptr @vortex_src_delWTD._entry.106, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @vortex_src_delWTD._entry_ptr.108, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.109, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 294, i32 3}
!272 = !{ptr @.str.110, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @vortex_mixer_delWTD._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @vortex_mixer_delWTD._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.112, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 315, i32 6}
!277 = !{ptr @vortex_mixer_delWTD._entry.111, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @vortex_mixer_delWTD._entry_ptr.113, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.114, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/pci/au88x0/au88x0_synth.c", i32 81, i32 2}
!281 = !{ptr @.str.115, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @vortex_wt_allocroute.__UNIQUE_ID_ddebug242, !280, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!283 = !{ptr @.str.116, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/pci/au88x0/au88x0_synth.c", i32 89, i32 2}
!285 = !{ptr @vortex_wt_allocroute.__UNIQUE_ID_ddebug243, !284, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!286 = !{ptr @.str.117, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/pci/au88x0/au88x0_synth.c", i32 98, i32 2}
!288 = !{ptr @vortex_wt_allocroute.__UNIQUE_ID_ddebug244, !287, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!289 = !{ptr @.str.118, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 2796, i32 3}
!291 = !{ptr @.str.119, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @vortex_alsafmt_aspfmt._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @vortex_alsafmt_aspfmt._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.120, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 483, i32 4}
!296 = !{ptr @.str.121, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @vortex_src_persist_convratio._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @vortex_src_persist_convratio._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.122, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 354, i32 4}
!301 = !{ptr @.str.123, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.124, !300, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @snd_vortex_pcm_trigger._entry, !300, !"_entry", i1 false, i1 false}
!304 = !{ptr @snd_vortex_pcm_trigger._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.126, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 367, i32 4}
!307 = !{ptr @snd_vortex_pcm_trigger._entry.125, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @snd_vortex_pcm_trigger._entry_ptr.127, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.128, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 810, i32 4}
!311 = !{ptr @.str.129, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @vortex_fifo_setadbctrl._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @vortex_fifo_setadbctrl._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.130, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/pci/au88x0/au88x0_core.c", i32 906, i32 4}
!316 = !{ptr @.str.131, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @vortex_fifo_setwtctrl._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @vortex_fifo_setwtctrl._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.132, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 503, i32 12}
!321 = !{ptr @.str.133, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 511, i32 12}
!323 = !{ptr @snd_vortex_mixer_spdif, !324, !"snd_vortex_mixer_spdif", i1 false, i1 false}
!324 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 500, i32 38}
!325 = !{ptr @.str.134, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 584, i32 10}
!327 = !{ptr @snd_vortex_pcm_vol, !328, !"snd_vortex_pcm_vol", i1 false, i1 false}
!328 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 582, i32 38}
!329 = !{ptr @vortex_pcm_vol_db_scale, !330, !"vortex_pcm_vol_db_scale", i1 false, i1 false}
!330 = !{!"../sound/pci/au88x0/au88x0_pcm.c", i32 580, i32 14}
!331 = !{ptr @.str.135, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/pci/au88x0/au88x0_mpu401.c", i32 62, i32 3}
!333 = !{ptr @.str.136, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.137, !332, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @snd_vortex_midi._entry, !332, !"_entry", i1 false, i1 false}
!336 = !{ptr @snd_vortex_midi._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.138, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/pci/au88x0/au88x0_mpu401.c", i32 94, i32 45}
!339 = !{ptr @.str.139, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/pci/au88x0/au88x0_game.c", i32 88, i32 3}
!341 = !{ptr @.str.140, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.141, !340, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @vortex_gameport_register._entry, !340, !"_entry", i1 false, i1 false}
!344 = !{ptr @vortex_gameport_register._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.142, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/pci/au88x0/au88x0_game.c", i32 93, i32 24}
!347 = !{ptr @.str.143, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/pci/au88x0/au88x0_game.c", i32 94, i32 24}
!349 = !{i32 1, !"wchar_size", i32 2}
!350 = !{i32 1, !"min_enum_size", i32 4}
!351 = !{i32 8, !"branch-target-enforcement", i32 0}
!352 = !{i32 8, !"sign-return-address", i32 0}
!353 = !{i32 8, !"sign-return-address-all", i32 0}
!354 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!355 = !{i32 7, !"uwtable", i32 1}
!356 = !{i32 7, !"frame-pointer", i32 2}
!357 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!358 = !{!"auto-init"}
!359 = !{i8 0, i8 2}
!360 = !{i64 2155042991}
!361 = !{i64 4993191}
!362 = !{i64 2155044602}
!363 = !{i64 4993609}
!364 = !{i64 2155045577}
!365 = !{i64 2155045900}
!366 = !{i64 2155046693}
!367 = !{i64 2155016444}
!368 = !{i64 2155017931}
!369 = !{i64 2155018426}
!370 = !{i64 2155018921}
!371 = !{i64 2155019416}
!372 = !{i64 2155019911}
!373 = !{i64 2155020406}
!374 = !{i64 2155020921}
!375 = !{i64 2155021414}
!376 = !{i64 2155023018}
!377 = !{i64 2155023993}
!378 = !{i64 2155046975}
!379 = !{i64 2154884988}
!380 = !{i64 2154885448}
!381 = !{i64 2154885908}
!382 = !{i64 2154886849}
!383 = !{i64 2154886374}
!384 = !{i64 2154887799}
!385 = !{i64 2154887324}
!386 = !{i64 2154888282}
!387 = !{i64 2154888752}
!388 = !{i64 2154902925}
!389 = !{i64 2154903399}
!390 = !{i64 2154903859}
!391 = !{i64 2154767513}
!392 = !{i64 2154763229}
!393 = !{i64 2154762506}
!394 = !{i64 2154761783}
!395 = !{i64 2154761060}
!396 = !{i64 2154764634}
!397 = !{i64 2154765361}
!398 = !{i64 2154766088}
!399 = !{i64 2154766815}
!400 = !{i64 2154994351}
!401 = !{i64 2155119141}
!402 = !{i64 2155119447}
!403 = !{i64 2155120222}
!404 = !{i64 2155120511}
!405 = !{i64 2155121001}
!406 = !{i64 2155121776}
!407 = !{i64 2155124860}
!408 = !{i64 2155125827}
!409 = !{i64 2155127352}
!410 = !{i64 2155128379}
!411 = !{i64 2154863122}
!412 = !{i64 2154863965}
!413 = !{i64 2154864270}
!414 = !{i64 2154756146}
!415 = !{i64 2154995931}
!416 = !{i64 2154996890}
!417 = !{i64 2154998307}
!418 = !{i64 2154999296}
!419 = !{i64 2155002270}
!420 = !{i64 2155002844}
!421 = !{i64 2155003425}
!422 = !{i64 2155003713}
!423 = !{i64 2155004494}
!424 = !{!"branch_weights", i32 2000, i32 1}
!425 = !{i64 2154948401}
!426 = !{i64 2154948882}
!427 = !{i64 2154950070}
!428 = !{i64 2154962859}
!429 = !{i64 2154963384}
!430 = !{i64 2154964597}
!431 = !{i64 2155014472}
!432 = !{i64 2155000708}
!433 = !{i64 2155001671}
!434 = !{i64 2155050755}
!435 = !{i64 2155051225}
!436 = !{i64 2155051705}
!437 = !{i64 2154969129}
!438 = !{i64 2154970815}
!439 = !{i64 2154971826}
!440 = !{i64 2154973342}
!441 = !{i64 2154974353}
!442 = !{i64 2154934529}
!443 = !{i64 2154935347}
!444 = !{i64 2154919996}
!445 = !{i64 2154937287}
!446 = !{i64 2154938054}
!447 = !{i64 2154940412}
!448 = !{i64 2154926858}
!449 = !{i64 2154940710}
!450 = !{i64 2155024584}
!451 = !{i64 2155027230}
!452 = !{i64 2155028260}
!453 = !{i64 2155028824}
!454 = !{i64 2155031282}
!455 = !{i64 2155032608}
!456 = !{i64 2154942592}
!457 = !{i64 2154943401}
!458 = !{i64 2154944202}
!459 = !{i64 2154944971}
!460 = !{i64 2154945625}
!461 = !{i64 2154946183}
!462 = !{i64 2154941247}
!463 = !{i64 2154941867}
!464 = !{i64 2154957747}
!465 = !{i64 2154958555}
!466 = !{i64 2154959354}
!467 = !{i64 2154960120}
!468 = !{i64 2154960771}
!469 = !{i64 2154961326}
!470 = !{i64 2154956413}
!471 = !{i64 2154957028}
!472 = !{i64 2154946849}
!473 = !{i64 2154947747}
!474 = !{i64 2154894089}
!475 = !{i64 2154894605}
!476 = !{i64 2154895118}
!477 = !{i64 2154895627}
!478 = !{i64 2154896132}
!479 = !{i64 2154896637}
!480 = !{i64 2154897409}
!481 = !{i64 2154897690}
!482 = !{i64 2154900971}
!483 = !{i64 2154898199}
!484 = !{i64 2154899048}
!485 = !{i64 2154901644}
!486 = !{i64 2154902278}
!487 = !{i64 2154961967}
!488 = !{i64 2154952331}
!489 = !{i64 2154953483}
!490 = !{i64 2154921810}
!491 = !{i64 2154922913}
!492 = !{i64 2154954659}
!493 = !{i64 2154955829}
!494 = !{i64 2154968600}
!495 = !{i64 2154955243}
!496 = !{i64 2154968017}
!497 = !{i64 2154954306}
!498 = !{i64 2154967100}
!499 = !{i64 2154927542}
!500 = !{i64 2154929474}
!501 = !{i64 2154930577}
!502 = !{i64 2154735460}
!503 = !{i64 2154735913}
!504 = !{i64 2154736993}
!505 = !{i64 2154737406}
!506 = !{i64 2154738013}
!507 = !{i64 2154738712}
!508 = !{i64 2154739425}
!509 = !{i64 2154740138}
!510 = !{i64 2154741321}
!511 = !{i64 2148498594, i64 2148498599, i64 2148498612, i64 2148498656, i64 2148498690, i64 2148498711}
!512 = !{i64 2154744009}
!513 = !{i64 2154744726}
!514 = !{i64 2154745443}
!515 = !{i64 2154746160}
!516 = !{i64 2154749474}
!517 = !{i64 2154749955}
!518 = !{i64 2154750713}
!519 = !{i64 2154751475}
!520 = !{i64 2154752243}
!521 = !{i64 2154755616}
!522 = !{i64 2154864819}
!523 = !{i64 2154865764}
!524 = !{i64 2154866933}
!525 = !{i64 2154867274}
!526 = !{i64 2154867813}
!527 = !{i64 2154868342}
!528 = !{i64 2154868853}
!529 = !{i64 2154866103}
!530 = !{i64 2154979603}
!531 = !{i64 2154980220}
!532 = !{i64 2154981139}
!533 = !{i64 2154981475}
!534 = !{i64 2154975780}
!535 = !{i64 2154976767}
!536 = !{i64 2154982349}
!537 = !{i64 2154984491}
!538 = !{i64 2154904616}
!539 = !{i64 2154904919}
!540 = !{i64 2154890336}
!541 = !{i64 2154891319}
!542 = !{i64 2154905686}
!543 = !{i64 2154906244}
!544 = !{i64 2154908305}
!545 = !{i64 2154908824}
!546 = !{i64 2154869628}
!547 = !{i64 2154869931}
!548 = !{i64 2154859387}
!549 = !{i64 2154860370}
!550 = !{i64 2154870698}
!551 = !{i64 2154871256}
!552 = !{i64 2154873335}
!553 = !{i64 2154873854}
!554 = !{i64 2154985377}
!555 = !{i64 2154986096}
!556 = !{i64 2154978206}
!557 = !{i64 2154979195}
!558 = !{i64 2154986424}
!559 = !{i64 2154987286}
!560 = !{i64 2154989766}
!561 = !{i64 2154990415}
!562 = !{i64 2154990727}
!563 = !{i64 2154909635}
!564 = !{i64 2154911683}
!565 = !{i64 2154912236}
!566 = !{i64 2154912502}
!567 = !{i64 2154912958}
!568 = !{i64 2154913779}
!569 = !{i64 2154916112}
!570 = !{i64 2154916665}
!571 = !{i64 2154916956}
!572 = !{i64 2154917421}
!573 = !{i64 2154917942}
!574 = !{i64 2154918505}
!575 = !{i64 2154919010}
!576 = !{i64 2154892747}
!577 = !{i64 2154893732}
!578 = !{i64 2154919469}
!579 = !{i64 2154874665}
!580 = !{i64 2154876748}
!581 = !{i64 2154877301}
!582 = !{i64 2154877567}
!583 = !{i64 2154878023}
!584 = !{i64 2154878844}
!585 = !{i64 2154881162}
!586 = !{i64 2154881715}
!587 = !{i64 2154882006}
!588 = !{i64 2154882471}
!589 = !{i64 2154882992}
!590 = !{i64 2154883555}
!591 = !{i64 2154884060}
!592 = !{i64 2154861798}
!593 = !{i64 2154862783}
!594 = !{i64 2154884519}
!595 = !{i64 2154967436}
!596 = !{i64 2154923613}
!597 = !{i64 2154925667}
!598 = !{i64 2154926519}
!599 = !{i64 2154931277}
!600 = !{i64 2154933322}
!601 = !{i64 2154934174}
!602 = !{i64 2155035669}
!603 = !{i64 2155036644}
!604 = !{i64 2155036971}
!605 = !{i64 2155038577}
!606 = !{i64 2155039552}
!607 = !{i64 2155039887}
!608 = !{i64 2155040430}
!609 = !{i64 2155040956}
!610 = !{i64 2155142658}
!611 = !{i64 2155142967}
!612 = !{i64 2155143767}
!613 = !{i64 2155144398}
!614 = !{i64 2155145817}
!615 = !{i64 2155146780}
!616 = !{i64 2155148195}
!617 = !{i64 2155149162}
