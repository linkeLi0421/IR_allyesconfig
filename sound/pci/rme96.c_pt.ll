; ModuleID = '/llk/IR_all_yes/sound/pci/rme96.c_pt.bc'
source_filename = "../sound/pci/rme96.c"
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
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rme96 = type { %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, i32, [2 x i16], i8, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [53 x i8] c"snd_rme96.author=Anders Torger <torger@ludd.luth.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [85 x i8] c"snd_rme96.description=RME Digi96, Digi96/8, Digi96/8 PRO, Digi96/8 PST, Digi96/8 PAD\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [35 x i8] c"snd_rme96.file=sound/pci/snd-rme96\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [22 x i8] c"snd_rme96.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_rme96.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [38 x i8] c"snd_rme96.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [59 x i8] c"snd_rme96.parm=index:Index value for RME Digi96 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_rme96.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [37 x i8] c"snd_rme96.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [54 x i8] c"snd_rme96.parm=id:ID string for RME Digi96 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_rme96.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [40 x i8] c"snd_rme96.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [51 x i8] c"snd_rme96.parm=enable:Enable RME Digi96 soundcard.\00", section ".modinfo", align 1
@__initcall__kmod_snd_rme96__252_2510_rme96_driver_init6 = internal global ptr @rme96_driver_init, section ".initcall6.init", align 4
@rme96_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_rme96_ids, ptr @snd_rme96_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rme96_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rme96_driver_exit = internal global ptr @rme96_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_rme96\00", [22 x i8] zeroinitializer }, align 32
@snd_rme96_ids = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4334, i32 16320, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4334, i32 16321, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4334, i32 16322, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4334, i32 16323, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rme96_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rme96_suspend, ptr @rme96_resume, ptr @rme96_suspend, ptr @rme96_resume, ptr @rme96_suspend, ptr @rme96_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_rme96_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Digi96\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RME Digi96\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RME Digi96/8\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RME Digi96/8 PRO\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RME Digi96/8 PAD\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RME Digi96/8 PST\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %d\00", [44 x i8] zeroinitializer }, align 32
@snd_rme96_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&rme96->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RME96\00", [26 x i8] zeroinitializer }, align 32
@snd_rme96_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1614, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to remap memory region 0x%lx-0x%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_rme96_create\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sound/pci/rme96.c\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_rme96_create._entry_ptr = internal global ptr @snd_rme96_create._entry, section ".printk_index", align 4
@snd_rme96_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.12, i32 1620, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_rme96_create._entry_ptr.17 = internal global ptr @snd_rme96_create._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Digi96 IEC958\00", [18 x i8] zeroinitializer }, align 32
@snd_rme96_playback_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme96_playback_spdif_open, ptr @snd_rme96_playback_close, ptr null, ptr @snd_rme96_playback_hw_params, ptr null, ptr @snd_rme96_playback_prepare, ptr @snd_rme96_playback_trigger, ptr null, ptr @snd_rme96_playback_pointer, ptr null, ptr @snd_rme96_playback_silence, ptr @snd_rme96_playback_copy, ptr @snd_rme96_playback_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_rme96_capture_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme96_capture_spdif_open, ptr @snd_rme96_capture_close, ptr null, ptr @snd_rme96_capture_hw_params, ptr null, ptr @snd_rme96_capture_prepare, ptr @snd_rme96_capture_trigger, ptr null, ptr @snd_rme96_capture_pointer, ptr null, ptr null, ptr @snd_rme96_capture_copy, ptr @snd_rme96_capture_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Digi96 ADAT\00", [20 x i8] zeroinitializer }, align 32
@snd_rme96_playback_adat_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme96_playback_adat_open, ptr @snd_rme96_playback_close, ptr null, ptr @snd_rme96_playback_hw_params, ptr null, ptr @snd_rme96_playback_prepare, ptr @snd_rme96_playback_trigger, ptr null, ptr @snd_rme96_playback_pointer, ptr null, ptr @snd_rme96_playback_silence, ptr @snd_rme96_playback_copy, ptr @snd_rme96_playback_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_rme96_capture_adat_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme96_capture_adat_open, ptr @snd_rme96_capture_close, ptr null, ptr @snd_rme96_capture_hw_params, ptr null, ptr @snd_rme96_capture_prepare, ptr @snd_rme96_capture_trigger, ptr null, ptr @snd_rme96_capture_pointer, ptr null, ptr null, ptr @snd_rme96_capture_copy, ptr @snd_rme96_capture_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_rme96_playback_spdif_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4980994, i64 1028, i32 2016, i32 32000, i32 96000, i32 2, i32 2, i32 65536, i32 2048, i32 8192, i32 8, i32 32, i32 0 }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_period_bytes = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @period_bytes, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@period_bytes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2048, i32 8192], [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@snd_rme96_capture_spdif_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4980994, i64 1028, i32 2016, i32 32000, i32 96000, i32 2, i32 2, i32 65536, i32 2048, i32 8192, i32 8, i32 32, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_rme96_playback_adat_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4980994, i64 1028, i32 192, i32 44100, i32 48000, i32 8, i32 8, i32 65536, i32 2048, i32 8192, i32 8, i32 32, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_rme96_capture_adat_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4980994, i64 1028, i32 192, i32 44100, i32 48000, i32 8, i32 8, i32 65536, i32 2048, i32 8192, i32 8, i32 32, i32 0 }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_rme96_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_rme96_control_spdif_info, ptr @snd_rme96_control_spdif_get, ptr @snd_rme96_control_spdif_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.22, i32 0, i32 259, i32 0, ptr @snd_rme96_control_spdif_stream_info, ptr @snd_rme96_control_spdif_stream_get, ptr @snd_rme96_control_spdif_stream_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.23, i32 0, i32 1, i32 0, ptr @snd_rme96_control_spdif_mask_info, ptr @snd_rme96_control_spdif_mask_get, ptr null, %union.anon.84 zeroinitializer, i32 59 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.24, i32 0, i32 1, i32 0, ptr @snd_rme96_control_spdif_mask_info, ptr @snd_rme96_control_spdif_mask_get, ptr null, %union.anon.84 zeroinitializer, i32 31 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_rme96_info_inputtype_control, ptr @snd_rme96_get_inputtype_control, ptr @snd_rme96_put_inputtype_control, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_rme96_get_loopback_control, ptr @snd_rme96_put_loopback_control, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_rme96_info_clockmode_control, ptr @snd_rme96_get_clockmode_control, ptr @snd_rme96_put_clockmode_control, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_rme96_info_montracks_control, ptr @snd_rme96_get_montracks_control, ptr @snd_rme96_put_montracks_control, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_rme96_info_attenuation_control, ptr @snd_rme96_get_attenuation_control, ptr @snd_rme96_put_attenuation_control, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_rme96_dac_volume_info, ptr @snd_rme96_dac_volume_get, ptr @snd_rme96_dac_volume_put, %union.anon.84 zeroinitializer, i32 0 }], [96 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Pro Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Input Connector\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Loopback Input\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sample Clock Source\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Monitor Tracks\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Attenuation\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Optical\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Coaxial\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XLR\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Analog\00", [25 x i8] zeroinitializer }, align 32
@snd_rme96_info_clockmode_control.texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.36, ptr @.str.33, ptr @.str.37], [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AutoSync\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Word\00", [27 x i8] zeroinitializer }, align 32
@snd_rme96_info_montracks_control.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1+2\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3+4\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5+6\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"7+8\00", [28 x i8] zeroinitializer }, align 32
@snd_rme96_info_attenuation_control.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0 dB\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-6 dB\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-12 dB\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-18 dB\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rme96\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" (index #%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0AGeneral settings\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"  period size: N/A (interrupts disabled)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  period size: 2048 bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  period size: 8192 bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0AInput settings\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  input: optical\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  input: coaxial\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  input: internal\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  input: XLR\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  input: analog\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A  sample rate: no valid signal\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" (8 channels)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" (2 channels)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  sample rate: %d Hz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  sample format: 24 bit\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  sample format: 16 bit\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0AOutput settings\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  output signal: normal playback\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  output signal: same as input\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"  sample clock source: word clock\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  sample clock source: internal\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"  sample clock source: autosync (internal anyway due to analog input setting)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"  sample clock source: autosync (internal anyway due to no valid signal)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  sample clock source: autosync\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  format: AES/EBU (professional)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  format: IEC958 (consumer)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  emphasis: on\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  emphasis: off\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  non-audio (dolby): on\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  non-audio (dolby): off\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0AAnalog output settings\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  monitored ADAT tracks: 1+2\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  monitored ADAT tracks: 3+4\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  monitored ADAT tracks: 5+6\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  monitored ADAT tracks: 7+8\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  attenuation: 0 dB\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  attenuation: -6 dB\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  attenuation: -12 dB\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  attenuation: -18 dB\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  volume left: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  volume right: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@switch.table.snd_rme96_put_inputtype_control = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32000, i32 44100, i32 48000], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_rme96_put_inputtype_control.89 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32000, i32 44100, i32 48000], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_rme96_proc_read = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], [16 x i8] zeroinitializer }, align 32
@switch.table.snd_rme96_proc_read.90 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32000, i32 44100, i32 48000], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_rme96_proc_read.91 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32000, i32 44100, i32 48000], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_rme96_proc_read.92 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], [16 x i8] zeroinitializer }, align 32
@switch.table.snd_rme96_proc_read.93 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 16320, i64 16321, i64 16322, i64 16323]
@__sancov_gen_cov_switch_values.94 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.95 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.96 = internal global [8 x i64] [i64 6, i64 32, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 2048, i64 8192]
@__sancov_gen_cov_switch_values.99 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.100 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.102 = internal global [8 x i64] [i64 6, i64 32, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.103 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 2048, i64 8192]
@__sancov_gen_cov_switch_values.105 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.106 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.107 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.108 = internal global [6 x i64] [i64 4, i64 16, i64 16320, i64 16321, i64 16322, i64 16323]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 16, i64 16320, i64 16321, i64 16322, i64 16323]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 16, i64 16320, i64 16321, i64 16322, i64 16323]
@__sancov_gen_cov_switch_values.111 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.113 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.114 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.115 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.116 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.117 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"rme96_driver\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2501, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 35, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 36, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 37, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2510, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"snd_rme96_ids\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 246, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [9 x i8] c"rme96_pm\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2421, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2436, i32 13 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2470, i32 23 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2473, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2476, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2479, i32 27 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2484, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2486, i32 28 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2490, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1599, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1605, i32 33 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1612, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1620, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1630, i32 33 }
@___asan_gen_.199 = private unnamed_addr constant [29 x i8] c"snd_rme96_playback_spdif_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1514, i32 33 }
@___asan_gen_.202 = private unnamed_addr constant [28 x i8] c"snd_rme96_capture_spdif_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1527, i32 33 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1648, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"snd_rme96_playback_adat_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1539, i32 33 }
@___asan_gen_.211 = private unnamed_addr constant [27 x i8] c"snd_rme96_capture_adat_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1552, i32 33 }
@___asan_gen_.214 = private unnamed_addr constant [30 x i8] c"snd_rme96_playback_spdif_info\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 368, i32 38 }
@___asan_gen_.217 = private unnamed_addr constant [28 x i8] c"hw_constraints_period_bytes\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1154, i32 48 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"period_bytes\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1152, i32 27 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 967, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [29 x i8] c"snd_rme96_capture_spdif_info\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 399, i32 38 }
@___asan_gen_.229 = private unnamed_addr constant [29 x i8] c"snd_rme96_playback_adat_info\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 430, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant [28 x i8] c"snd_rme96_capture_adat_info\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 457, i32 38 }
@___asan_gen_.235 = private unnamed_addr constant [19 x i8] c"snd_rme96_controls\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2247, i32 38 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2250, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2258, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2266, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2276, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2285, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2292, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2299, i32 18 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2306, i32 18 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2313, i32 18 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2320, i32 18 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1885, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1885, i32 14 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1885, i32 25 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1885, i32 37 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1885, i32 44 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2001, i32 28 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2001, i32 41 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2001, i32 65 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2068, i32 28 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2068, i32 41 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2068, i32 48 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2068, i32 55 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2068, i32 62 }
@___asan_gen_.307 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2033, i32 28 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2034, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2034, i32 11 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2034, i32 20 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 2034, i32 30 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1845, i32 36 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1723, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1725, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1727, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1730, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1732, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1734, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1737, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1740, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1743, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1746, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1749, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1753, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1756, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1758, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1760, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1764, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1766, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1769, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1771, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1773, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1783, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1785, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1787, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1789, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1791, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1794, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1796, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1799, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1801, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1804, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1806, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1809, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1812, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1815, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1818, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1821, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1826, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1829, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1832, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1835, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1838, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.449 = private constant [21 x i8] c"../sound/pci/rme96.c\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1839, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant [45 x i8] c"switch.table.snd_rme96_put_inputtype_control\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [48 x i8] c"switch.table.snd_rme96_put_inputtype_control.89\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [33 x i8] c"switch.table.snd_rme96_proc_read\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [36 x i8] c"switch.table.snd_rme96_proc_read.90\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [36 x i8] c"switch.table.snd_rme96_proc_read.91\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [36 x i8] c"switch.table.snd_rme96_proc_read.92\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [36 x i8] c"switch.table.snd_rme96_proc_read.93\00", align 1
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_rme96_driver_exit, ptr @__initcall__kmod_snd_rme96__252_2510_rme96_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @rme96_driver_exit, ptr @snd_rme96_create._entry, ptr @snd_rme96_create._entry.15, ptr @snd_rme96_create._entry_ptr, ptr @snd_rme96_create._entry_ptr.17, ptr @rme96_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @snd_rme96_ids, ptr @rme96_pm, ptr @snd_rme96_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @snd_rme96_create.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @snd_rme96_playback_spdif_ops, ptr @snd_rme96_capture_spdif_ops, ptr @.str.19, ptr @snd_rme96_playback_adat_ops, ptr @snd_rme96_capture_adat_ops, ptr @snd_rme96_playback_spdif_info, ptr @hw_constraints_period_bytes, ptr @period_bytes, ptr @.str.20, ptr @snd_rme96_capture_spdif_info, ptr @snd_rme96_playback_adat_info, ptr @snd_rme96_capture_adat_info, ptr @snd_rme96_controls, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @snd_rme96_info_clockmode_control.texts, ptr @.str.36, ptr @.str.37, ptr @snd_rme96_info_montracks_control.texts, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @snd_rme96_info_attenuation_control.texts, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @switch.table.snd_rme96_put_inputtype_control, ptr @switch.table.snd_rme96_put_inputtype_control.89, ptr @switch.table.snd_rme96_proc_read, ptr @switch.table.snd_rme96_proc_read.90, ptr @switch.table.snd_rme96_proc_read.91, ptr @switch.table.snd_rme96_proc_read.92, ptr @switch.table.snd_rme96_proc_read.93], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rme96_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_ids to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rme96_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_playback_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_capture_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_playback_adat_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_capture_adat_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_playback_spdif_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_period_bytes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @period_bytes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_capture_spdif_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_playback_adat_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_capture_adat_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_info_clockmode_control.texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_info_montracks_control.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme96_info_attenuation_control.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme96_put_inputtype_control to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme96_put_inputtype_control.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme96_proc_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme96_proc_read.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme96_proc_read.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme96_proc_read.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme96_proc_read.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rme96_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rme96_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rme96_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @rme96_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #11
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !258
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #11
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !258
  %2 = load i32, ptr @snd_rme96_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp = icmp sgt i32 %2, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @snd_rme96_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %6, ptr noundef %8, ptr noundef null, i32 noundef 144, ptr noundef nonnull %card) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @snd_rme96_card_free, ptr %private_free, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 9
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 8
  %card8 = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %card8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %card8, align 4
  %pci9 = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 24
  %15 = ptrtoint ptr %pci9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pci, ptr %pci9, align 4
  %irq.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %irq.i, align 4
  call void @__raw_spin_lock_init(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef nonnull @snd_rme96_create.__key, i16 noundef signext 3) #11
  %call2.i = call i32 @pcim_enable_device(ptr noundef %pci) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call3.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci9, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 2
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %port.i, align 4
  %call9.i = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %20, i32 noundef 393216) #11
  %iobase.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 3
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i, ptr %iobase.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i, label %do.end14.i, label %if.end18.i

do.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card8, align 4
  %dev15.i = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev15.i, align 8
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i, align 4
  %sub.i = add i32 %28, 393215
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef %28, i32 noundef %sub.i) #14
  br label %cleanup

if.end18.i:                                       ; preds = %if.end6.i
  %irq20.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %29 = ptrtoint ptr %irq20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq20.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %30, ptr noundef nonnull @snd_rme96_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool22.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not.i, label %if.end30.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card8, align 4
  %dev28.i = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev28.i, align 8
  %35 = ptrtoint ptr %irq20.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq20.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.16, i32 noundef %36) #14
  br label %cleanup

if.end30.i:                                       ; preds = %if.end18.i
  %37 = ptrtoint ptr %irq20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq20.i, align 4
  %39 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %irq.i, align 4
  %40 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card8, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %38, ptr %sync_irq.i, align 4
  %rev.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 10
  %call35.i = call i32 @pci_read_config_byte(ptr noundef %pci, i32 noundef 8, ptr noundef %rev.i) #11
  %43 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card8, align 4
  %spdif_pcm.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 22
  %call37.i = call i32 @snd_pcm_new(ptr noundef %44, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef %spdif_pcm.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end30.i.cleanup_crit_edge, label %if.end40.i

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40.i:                                       ; preds = %if.end30.i
  %45 = ptrtoint ptr %spdif_pcm.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spdif_pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %13, ptr %private_data.i, align 8
  %48 = load ptr, ptr %spdif_pcm.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_pcm, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @snd_rme96_free_spdif_pcm, ptr %private_free.i, align 4
  %50 = load ptr, ptr %spdif_pcm.i, align 4
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %50, i32 0, i32 7
  %51 = call ptr @memcpy(ptr %name.i, ptr @.str.18, i32 14)
  %52 = load ptr, ptr %spdif_pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @snd_rme96_playback_spdif_ops) #11
  %53 = ptrtoint ptr %spdif_pcm.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spdif_pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %54, i32 noundef 1, ptr noundef nonnull @snd_rme96_capture_spdif_ops) #11
  %55 = ptrtoint ptr %spdif_pcm.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spdif_pcm.i, align 4
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %info_flags.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %58 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16320, i16 %59)
  %cmp48.i = icmp eq i16 %59, 16320
  br i1 %cmp48.i, label %if.then50.i, label %if.else.i

if.then50.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  %adat_pcm.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 23
  %60 = ptrtoint ptr %adat_pcm.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %adat_pcm.i, align 4
  br label %if.end70.i

if.else.i:                                        ; preds = %if.end40.i
  %61 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card8, align 4
  %adat_pcm52.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 23
  %call53.i = call i32 @snd_pcm_new(ptr noundef %62, ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef %adat_pcm52.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.else.i.cleanup_crit_edge, label %if.end57.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end57.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %adat_pcm52.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adat_pcm52.i, align 4
  %private_data59.i = getelementptr inbounds %struct.snd_pcm, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %private_data59.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %13, ptr %private_data59.i, align 8
  %66 = load ptr, ptr %adat_pcm52.i, align 4
  %private_free61.i = getelementptr inbounds %struct.snd_pcm, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %private_free61.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @snd_rme96_free_adat_pcm, ptr %private_free61.i, align 4
  %68 = load ptr, ptr %adat_pcm52.i, align 4
  %name63.i = getelementptr inbounds %struct.snd_pcm, ptr %68, i32 0, i32 7
  %69 = call ptr @memcpy(ptr %name63.i, ptr @.str.19, i32 12)
  %70 = load ptr, ptr %adat_pcm52.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %70, i32 noundef 0, ptr noundef nonnull @snd_rme96_playback_adat_ops) #11
  %71 = ptrtoint ptr %adat_pcm52.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adat_pcm52.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %72, i32 noundef 1, ptr noundef nonnull @snd_rme96_capture_adat_ops) #11
  %73 = ptrtoint ptr %adat_pcm52.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adat_pcm52.i, align 4
  %info_flags69.i = getelementptr inbounds %struct.snd_pcm, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %info_flags69.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %info_flags69.i, align 8
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end57.i, %if.then50.i
  %playback_periodsize.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 19
  %76 = ptrtoint ptr %playback_periodsize.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %playback_periodsize.i, align 4
  %capture_periodsize.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 20
  %77 = ptrtoint ptr %capture_periodsize.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %capture_periodsize.i, align 4
  call fastcc void @snd_rme96_trigger(ptr noundef %13, i32 noundef 204) #11
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 4
  %78 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 181248, ptr %wcreg.i, align 4
  %areg.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 8
  %79 = ptrtoint ptr %areg.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8, ptr %areg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !260
  call void @arm_heavy_mb() #11
  %80 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wcreg.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #11
  %83 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %84, i32 131072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %82) #11, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !262
  call void @arm_heavy_mb() #11
  %85 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %areg.i, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #11
  %88 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iobase.i, align 4
  %add.ptr81.i = getelementptr i8, ptr %89, i32 131076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 %87) #11, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !263
  call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %areg.i, align 4
  %or.i = or i32 %91, 32
  %92 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  %93 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %iobase.i, align 4
  %add.ptr87.i = getelementptr i8, ptr %94, i32 131076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 %92) #11, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !264
  call void @arm_heavy_mb() #11
  %95 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %areg.i, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96) #11
  %98 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %iobase.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %99, i32 131076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 %97) #11, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !265
  call void @arm_heavy_mb() #11
  %100 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %wcreg.i, align 4
  %or.i.i = or i32 %101, 65536
  %102 = call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %103 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %104, i32 131072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %102) #11, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  call void @arm_heavy_mb() #11
  %105 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %wcreg.i, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #11
  %108 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %iobase.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %109, i32 131072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %107) #11, !srcloc !261
  %110 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %areg.i, align 4
  %or95.i = or i32 %111, 64
  store i32 %or95.i, ptr %areg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  call void @arm_heavy_mb() #11
  %112 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %areg.i, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113) #11
  %115 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %iobase.i, align 4
  %add.ptr101.i = getelementptr i8, ptr %116, i32 131076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 %114) #11, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !268
  call void @arm_heavy_mb() #11
  %117 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %iobase.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %118, i32 327676
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 0) #11, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  call void @arm_heavy_mb() #11
  %119 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %iobase.i, align 4
  %add.ptr111.i = getelementptr i8, ptr %120, i32 393212
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.i, i32 0) #11, !srcloc !261
  %vol.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 9
  %arrayidx112.i = getelementptr %struct.rme96, ptr %13, i32 0, i32 9, i32 1
  %121 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %arrayidx112.i, align 2
  %122 = ptrtoint ptr %vol.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %vol.i, align 4
  %123 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pci9, align 4
  %device116.i = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %device116.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %device116.i, align 2
  %127 = and i16 %126, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16322, i16 %127)
  %128 = icmp eq i16 %127, 16322
  br i1 %128, label %land.lhs.true.i.i, label %if.end70.i.if.end126.i_crit_edge

if.end70.i.if.end126.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126.i

land.lhs.true.i.i:                                ; preds = %if.end70.i
  %129 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %130)
  %cmp8.i.i = icmp ugt i8 %130, 3
  br i1 %cmp8.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @snd_rme96_write_SPI(ptr noundef %13, i16 noundef zeroext 0) #11
  %131 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx112.i, align 2
  %shl15.i.i = shl i16 %132, 2
  %or16.i.i = or i16 %shl15.i.i, 2
  br label %if.end51.sink.split.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16323, i16 %126)
  %cmp21.i.i = icmp eq i16 %126, 16323
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %130)
  %cmp37.i.i = icmp eq i8 %130, 2
  %or.cond223.i = select i1 %cmp21.i.i, i1 true, i1 %cmp37.i.i
  br i1 %or.cond223.i, label %if.then39.i.i, label %if.else.i.i.if.end126.i_crit_edge

if.else.i.i.if.end126.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126.i

if.then39.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @snd_rme96_write_SPI(ptr noundef %13, i16 noundef zeroext 0) #11
  %133 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx112.i, align 2
  %135 = and i16 %134, 1023
  %136 = or i16 %135, 1024
  br label %if.end51.sink.split.i.i

if.end51.sink.split.i.i:                          ; preds = %if.then39.i.i, %if.then.i.i
  %.sink.i.i = phi i16 [ %136, %if.then39.i.i ], [ %or16.i.i, %if.then.i.i ]
  call fastcc void @snd_rme96_write_SPI(ptr noundef %13, i16 noundef zeroext %.sink.i.i) #11
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.end51.sink.split.i.i, %if.else.i.i.if.end126.i_crit_edge, %if.end70.i.if.end126.i_crit_edge
  %137 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %card8, align 4
  %spdif_ctl.i.i = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 25
  %call.i213.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_rme96_controls, ptr noundef %13) #11
  %call1.i.i = call i32 @snd_ctl_add(ptr noundef %138, ptr noundef %call.i213.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end126.i.cleanup_crit_edge, label %for.inc.i.i

if.end126.i.cleanup_crit_edge:                    ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i.i:                                      ; preds = %if.end126.i
  %call.1.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @snd_rme96_controls, i32 0, i32 1), ptr noundef %13) #11
  %call1.1.i.i = call i32 @snd_ctl_add(ptr noundef %138, ptr noundef %call.1.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp slt i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.1.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %139 = ptrtoint ptr %spdif_ctl.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.1.i.i, ptr %spdif_ctl.i.i, align 4
  %call.2.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @snd_rme96_controls, i32 0, i32 2), ptr noundef %13) #11
  %call1.2.i.i = call i32 @snd_ctl_add(ptr noundef %138, ptr noundef %call.2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp slt i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.inc.1.i.i.cleanup_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.cleanup_crit_edge:                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %call.3.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @snd_rme96_controls, i32 0, i32 3), ptr noundef %13) #11
  %call1.3.i.i = call i32 @snd_ctl_add(ptr noundef %138, ptr noundef %call.3.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i.i)
  %cmp2.3.i.i = icmp slt i32 %call1.3.i.i, 0
  br i1 %cmp2.3.i.i, label %for.inc.2.i.i.cleanup_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.cleanup_crit_edge:                  ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %call.4.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @snd_rme96_controls, i32 0, i32 4), ptr noundef %13) #11
  %call1.4.i.i = call i32 @snd_ctl_add(ptr noundef %138, ptr noundef %call.4.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4.i.i)
  %cmp2.4.i.i = icmp slt i32 %call1.4.i.i, 0
  br i1 %cmp2.4.i.i, label %for.inc.3.i.i.cleanup_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.cleanup_crit_edge:                  ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %call.5.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @snd_rme96_controls, i32 0, i32 5), ptr noundef %13) #11
  %call1.5.i.i = call i32 @snd_ctl_add(ptr noundef %138, ptr noundef %call.5.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5.i.i)
  %cmp2.5.i.i = icmp slt i32 %call1.5.i.i, 0
  br i1 %cmp2.5.i.i, label %for.inc.4.i.i.cleanup_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.cleanup_crit_edge:                  ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %call.6.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @snd_rme96_controls, i32 0, i32 6), ptr noundef %13) #11
  %call1.6.i.i = call i32 @snd_ctl_add(ptr noundef %138, ptr noundef %call.6.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6.i.i)
  %cmp2.6.i.i = icmp slt i32 %call1.6.i.i, 0
  br i1 %cmp2.6.i.i, label %for.inc.5.i.i.cleanup_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.cleanup_crit_edge:                  ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %140 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pci9, align 4
  %device.i215.i = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 8
  %142 = ptrtoint ptr %device.i215.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %device.i215.i, align 2
  %144 = and i16 %143, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16322, i16 %144)
  %switch.i216.i = icmp eq i16 %144, 16322
  br i1 %switch.i216.i, label %for.body17.preheader.i.i, label %for.inc.6.i.i.snd_rme96_create.exit.thread81_crit_edge

for.inc.6.i.i.snd_rme96_create.exit.thread81_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_create.exit.thread81

for.body17.preheader.i.i:                         ; preds = %for.inc.6.i.i
  %call19.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @snd_rme96_controls, i32 0, i32 7), ptr noundef %13) #11
  %call20.i.i = call i32 @snd_ctl_add(ptr noundef %138, ptr noundef %call19.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp21.i217.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i217.i, label %for.body17.preheader.i.i.cleanup_crit_edge, label %for.cond14.i.i

for.body17.preheader.i.i.cleanup_crit_edge:       ; preds = %for.body17.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond14.i.i:                                   ; preds = %for.body17.preheader.i.i
  %call19.1.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @snd_rme96_controls, i32 0, i32 8), ptr noundef %13) #11
  %call20.1.i.i = call i32 @snd_ctl_add(ptr noundef %138, ptr noundef %call19.1.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1.i.i)
  %cmp21.1.i.i = icmp slt i32 %call20.1.i.i, 0
  br i1 %cmp21.1.i.i, label %for.cond14.i.i.cleanup_crit_edge, label %snd_rme96_create_switches.exit.i

for.cond14.i.i.cleanup_crit_edge:                 ; preds = %for.cond14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

snd_rme96_create_switches.exit.i:                 ; preds = %for.cond14.i.i
  %call19.2.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([10 x %struct.snd_kcontrol_new], ptr @snd_rme96_controls, i32 0, i32 9), ptr noundef %13) #11
  %call20.2.i.i = call i32 @snd_ctl_add(ptr noundef %138, ptr noundef %call19.2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.2.i.i)
  %cmp129.i = icmp slt i32 %call20.2.i.i, 0
  br i1 %cmp129.i, label %snd_rme96_create_switches.exit.i.cleanup_crit_edge, label %snd_rme96_create_switches.exit.i.snd_rme96_create.exit.thread81_crit_edge

snd_rme96_create_switches.exit.i.snd_rme96_create.exit.thread81_crit_edge: ; preds = %snd_rme96_create_switches.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_create.exit.thread81

snd_rme96_create_switches.exit.i.cleanup_crit_edge: ; preds = %snd_rme96_create_switches.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

snd_rme96_create.exit.thread81:                   ; preds = %snd_rme96_create_switches.exit.i.snd_rme96_create.exit.thread81_crit_edge, %for.inc.6.i.i.snd_rme96_create.exit.thread81_crit_edge
  %145 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %card8, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %146, ptr noundef nonnull @.str.46, ptr noundef %13, ptr noundef nonnull @snd_rme96_proc_read, ptr noundef null) #11
  %call14 = call noalias ptr @vmalloc(i32 noundef 65536) #15
  %playback_suspend_buffer = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 13
  %147 = ptrtoint ptr %playback_suspend_buffer to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call14, ptr %playback_suspend_buffer, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %snd_rme96_create.exit.thread81.cleanup_crit_edge, label %if.end18

snd_rme96_create.exit.thread81.cleanup_crit_edge: ; preds = %snd_rme96_create.exit.thread81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %snd_rme96_create.exit.thread81
  %call19 = call noalias ptr @vmalloc(i32 noundef 65536) #15
  %capture_suspend_buffer = getelementptr inbounds %struct.rme96, ptr %13, i32 0, i32 14
  %148 = ptrtoint ptr %capture_suspend_buffer to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call19, ptr %capture_suspend_buffer, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %149 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %150, i32 0, i32 2
  %151 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 7)
  %152 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pci9, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 8
  %154 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %device, align 2
  %156 = zext i16 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values)
  switch i16 %155, label %if.end23.sw.epilog_crit_edge [
    i16 16320, label %sw.bb
    i16 16321, label %sw.bb28
    i16 16322, label %sw.bb32
    i16 16323, label %sw.bb36
  ]

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %shortname = getelementptr inbounds %struct.snd_card, ptr %150, i32 0, i32 3
  %157 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 11)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %shortname29 = getelementptr inbounds %struct.snd_card, ptr %150, i32 0, i32 3
  %158 = call ptr @memcpy(ptr %shortname29, ptr @.str.3, i32 13)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %shortname33 = getelementptr inbounds %struct.snd_card, ptr %150, i32 0, i32 3
  %159 = call ptr @memcpy(ptr %shortname33, ptr @.str.4, i32 17)
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end23
  %call38 = call i32 @pci_read_config_byte(ptr noundef %153, i32 noundef 8, ptr noundef nonnull %val) #11
  %160 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %161)
  %cmp40 = icmp ult i8 %161, 5
  %162 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %card, align 4
  %shortname43 = getelementptr inbounds %struct.snd_card, ptr %163, i32 0, i32 3
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %164 = call ptr @memcpy(ptr %shortname43, ptr @.str.5, i32 17)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %165 = call ptr @memcpy(ptr %shortname43, ptr @.str.6, i32 17)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then42, %sw.bb32, %sw.bb28, %sw.bb, %if.end23.sw.epilog_crit_edge
  %166 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %167, i32 0, i32 4
  %shortname51 = getelementptr inbounds %struct.snd_card, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port.i, align 4
  %170 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %irq.i, align 4
  %call53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.7, ptr noundef %shortname51, i32 noundef %169, i32 noundef %171)
  %172 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %card, align 4
  %call54 = call i32 @snd_card_register(ptr noundef %173) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end57:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %174 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %176 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %175, ptr %driver_data.i.i, align 4
  %177 = load i32, ptr @snd_rme96_probe.dev, align 4
  %inc58 = add i32 %177, 1
  store i32 %inc58, ptr @snd_rme96_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %sw.epilog.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %snd_rme96_create.exit.thread81.cleanup_crit_edge, %snd_rme96_create_switches.exit.i.cleanup_crit_edge, %for.cond14.i.i.cleanup_crit_edge, %for.body17.preheader.i.i.cleanup_crit_edge, %for.inc.5.i.i.cleanup_crit_edge, %for.inc.4.i.i.cleanup_crit_edge, %for.inc.3.i.i.cleanup_crit_edge, %for.inc.2.i.i.cleanup_crit_edge, %for.inc.1.i.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.end126.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %do.end26.i, %do.end14.i, %if.end.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ -12, %snd_rme96_create.exit.thread81.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ], [ %call54, %sw.epilog.cleanup_crit_edge ], [ %call20.i.i, %for.body17.preheader.i.i.cleanup_crit_edge ], [ %call20.1.i.i, %for.cond14.i.i.cleanup_crit_edge ], [ %call1.i.i, %if.end126.i.cleanup_crit_edge ], [ %call1.1.i.i, %for.inc.i.i.cleanup_crit_edge ], [ %call1.2.i.i, %for.inc.1.i.i.cleanup_crit_edge ], [ %call1.3.i.i, %for.inc.2.i.i.cleanup_crit_edge ], [ %call1.4.i.i, %for.inc.3.i.i.cleanup_crit_edge ], [ %call1.5.i.i, %for.inc.4.i.i.cleanup_crit_edge ], [ %call1.6.i.i, %for.inc.5.i.i.cleanup_crit_edge ], [ %call53.i, %if.else.i.cleanup_crit_edge ], [ %call37.i, %if.end30.i.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ], [ %call2.i, %if.end7.cleanup_crit_edge ], [ -16, %do.end14.i ], [ -16, %do.end26.i ], [ %call20.2.i.i, %snd_rme96_create_switches.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_rme96_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %irq.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %entry.snd_rme96_free.exit_crit_edge

entry.snd_rme96_free.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @snd_rme96_trigger(ptr noundef %1, i32 noundef 204) #11
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %5, -65
  store i32 %and.i, ptr %areg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %areg.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %iobase.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #11, !srcloc !261
  br label %snd_rme96_free.exit

snd_rme96_free.exit:                              ; preds = %if.then.i, %entry.snd_rme96_free.exit_crit_edge
  %playback_suspend_buffer.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %playback_suspend_buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %playback_suspend_buffer.i, align 4
  tail call void @vfree(ptr noundef %12) #11
  %capture_suspend_buffer.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %capture_suspend_buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %capture_suspend_buffer.i, align 4
  tail call void @vfree(ptr noundef %14) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_rme96_trigger(ptr nocapture noundef %rme96, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %op, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  tail call void @arm_heavy_mb() #11
  %iobase = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 3
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 327676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !261
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and1 = and i32 %op, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %do.body4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  %iobase6 = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 3
  %2 = ptrtoint ptr %iobase6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase6, align 4
  %add.ptr7 = getelementptr i8, ptr %3, i32 393212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #11, !srcloc !261
  br label %if.end8

if.end8:                                          ; preds = %do.body4, %if.end.if.end8_crit_edge
  %and9 = and i32 %op, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end24_crit_edge, label %if.then11

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then11:                                        ; preds = %if.end8
  %iobase12 = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 3
  %4 = ptrtoint ptr %iobase12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase12, align 4
  %add.ptr13 = getelementptr i8, ptr %5, i32 131072
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #11, !srcloc !273
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  %rcreg = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 7
  %8 = ptrtoint ptr %rcreg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rcreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool17.not = icmp sgt i32 %7, -1
  br i1 %tobool17.not, label %if.then11.if.end24_crit_edge, label %do.body19

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.body19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %iobase12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase12, align 4
  %add.ptr22 = getelementptr i8, ptr %10, i32 131080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #11, !srcloc !261
  br label %if.end24

if.end24:                                         ; preds = %do.body19, %if.then11.if.end24_crit_edge, %if.end8.if.end24_crit_edge
  %and25 = and i32 %op, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end45_crit_edge, label %if.then27

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then27:                                        ; preds = %if.end24
  %iobase30 = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 3
  %11 = ptrtoint ptr %iobase30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase30, align 4
  %add.ptr31 = getelementptr i8, ptr %12, i32 131072
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #11, !srcloc !273
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  %rcreg35 = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 7
  %15 = ptrtoint ptr %rcreg35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rcreg35, align 4
  %and37 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then27.if.end45_crit_edge, label %do.body40

if.then27.if.end45_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

do.body40:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %iobase30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase30, align 4
  %add.ptr43 = getelementptr i8, ptr %17, i32 131084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #11, !srcloc !261
  br label %if.end45

if.end45:                                         ; preds = %do.body40, %if.then27.if.end45_crit_edge, %if.end24.if.end45_crit_edge
  %and46 = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end49_crit_edge, label %if.then48

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 4
  %18 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wcreg, align 4
  %or = or i32 %19, 1
  store i32 %or, ptr %wcreg, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45.if.end49_crit_edge
  %and50 = and i32 %op, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end55_crit_edge, label %if.then52

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg53 = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 4
  %20 = ptrtoint ptr %wcreg53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wcreg53, align 4
  %and54 = and i32 %21, -2
  store i32 %and54, ptr %wcreg53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end49.if.end55_crit_edge
  %and56 = and i32 %op, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end61_crit_edge, label %if.then58

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg59 = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 4
  %22 = ptrtoint ptr %wcreg59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wcreg59, align 4
  %or60 = or i32 %23, 2
  store i32 %or60, ptr %wcreg59, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end55.if.end61_crit_edge
  %and62 = and i32 %op, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.do.body68_crit_edge, label %if.then64

if.end61.do.body68_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body68

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg65 = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 4
  %24 = ptrtoint ptr %wcreg65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wcreg65, align 4
  %and66 = and i32 %25, -3
  store i32 %and66, ptr %wcreg65, align 4
  br label %do.body68

do.body68:                                        ; preds = %if.then64, %if.end61.do.body68_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  tail call void @arm_heavy_mb() #11
  %wcreg70 = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 4
  %26 = ptrtoint ptr %wcreg70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wcreg70, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %iobase71 = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 3
  %29 = ptrtoint ptr %iobase71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase71, align 4
  %add.ptr72 = getelementptr i8, ptr %30, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %28) #11, !srcloc !261
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_interrupt(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.rme96, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 131072
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !273
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  %rcreg = getelementptr inbounds %struct.rme96, ptr %dev_id, i32 0, i32 7
  %4 = ptrtoint ptr %rcreg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rcreg, align 4
  %5 = and i32 %3, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %playback_substream = getelementptr inbounds %struct.rme96, ptr %dev_id, i32 0, i32 15
  %7 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %playback_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !280
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 131080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #11, !srcloc !261
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %11 = ptrtoint ptr %rcreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rcreg, align 4
  %and14 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.then16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %capture_substream = getelementptr inbounds %struct.rme96, ptr %dev_id, i32 0, i32 16
  %13 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %capture_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase, align 4
  %add.ptr21 = getelementptr i8, ptr %16, i32 131084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #11, !srcloc !261
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then16 ], [ 1, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_rme96_free_spdif_pcm(ptr nocapture noundef readonly %pcm) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %spdif_pcm = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %spdif_pcm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %spdif_pcm, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_rme96_free_adat_pcm(ptr nocapture noundef readonly %pcm) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %adat_pcm = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %adat_pcm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %adat_pcm, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_playback_spdif_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #11
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %playback_substream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback_substream, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wcreg, align 4
  %and = and i32 %7, -257
  store i32 %and, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wcreg, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #11, !srcloc !261
  %13 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %substream, ptr %playback_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %14 = call ptr @memcpy(ptr %hw, ptr @snd_rme96_playback_spdif_info, i32 64)
  %15 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wcreg, align 4
  %and7 = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_rme96_getinputtype.exit, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

snd_rme96_getinputtype.exit:                      ; preds = %land.lhs.true
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 131072
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !273
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %rcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rcreg.i, align 4
  %and14.i = and i32 %22, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %if.then16.i

if.then16.i:                                      ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and18.i = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %..i = select i1 %tobool19.not.i, i32 44100, i32 48000
  br label %if.then12

if.end22.i:                                       ; preds = %snd_rme96_getinputtype.exit
  %and24.i = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.if.end18_crit_edge

if.end22.i.if.end18_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end27.i:                                       ; preds = %if.end22.i
  %shr29.i = lshr i32 %22, 27
  %add40.i = and i32 %shr29.i, 7
  %24 = zext i32 %add40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %add40.i, label %if.end27.i.if.end18_crit_edge [
    i32 0, label %sw.bb41.i
    i32 3, label %if.end27.i.if.then12_crit_edge
    i32 4, label %sw.bb48.i
    i32 5, label %sw.bb49.i
    i32 6, label %sw.bb50.i
    i32 7, label %sw.bb51.i
  ]

if.end27.i.if.then12_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end27.i.if.end18_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

sw.bb41.i:                                        ; preds = %if.end27.i
  %and43.i = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %sw.bb41.i.if.end18_crit_edge, label %sw.bb41.i.if.then12_crit_edge

sw.bb41.i.if.then12_crit_edge:                    ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

sw.bb41.i.if.end18_crit_edge:                     ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

sw.bb48.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

sw.bb49.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

sw.bb50.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

sw.bb51.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %sw.bb51.i, %sw.bb50.i, %sw.bb49.i, %sw.bb48.i, %sw.bb41.i.if.then12_crit_edge, %if.end27.i.if.then12_crit_edge, %if.then16.i
  %retval.0.i56.ph = phi i32 [ 96000, %if.end27.i.if.then12_crit_edge ], [ 64000, %sw.bb41.i.if.then12_crit_edge ], [ %..i, %if.then16.i ], [ 88200, %sw.bb48.i ], [ 48000, %sw.bb49.i ], [ 44100, %sw.bb50.i ], [ 32000, %sw.bb51.i ]
  %call13 = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %retval.0.i56.ph) #11
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %25 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call13, ptr %rates, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %26 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i56.ph, ptr %rate_min, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %27 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i56.ph, ptr %rate_max, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %sw.bb41.i.if.end18_crit_edge, %if.end27.i.if.end18_crit_edge, %if.end22.i.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %call.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 65536, i32 noundef 65536) #11
  %playback_periodsize.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %playback_periodsize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %playback_periodsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i57 = icmp eq i32 %29, 0
  br i1 %tobool.not.i57, label %if.end.i58, label %if.end18.if.then2.i_crit_edge

if.end18.if.then2.i_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.end.i58:                                       ; preds = %if.end18
  %capture_periodsize.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 20
  %30 = ptrtoint ptr %capture_periodsize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %capture_periodsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool1.not.i = icmp eq i32 %31, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i58.if.then2.i_crit_edge

if.end.i58.if.then2.i_crit_edge:                  ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i58.if.then2.i_crit_edge, %if.end18.if.then2.i_crit_edge
  %size.014.i = phi i32 [ %31, %if.end.i58.if.then2.i_crit_edge ], [ %29, %if.end18.if.then2.i_crit_edge ]
  %call.i11.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 14, i32 noundef %size.014.i, i32 noundef %size.014.i) #11
  br label %rme96_set_buffer_size_constraint.exit

if.else.i:                                        ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_period_bytes) #11
  br label %rme96_set_buffer_size_constraint.exit

rme96_set_buffer_size_constraint.exit:            ; preds = %if.else.i, %if.then2.i
  %wcreg_spdif = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %wcreg_spdif to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wcreg_spdif, align 4
  %wcreg_spdif_stream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %wcreg_spdif_stream to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %wcreg_spdif_stream, align 4
  %spdif_ctl = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 25
  %35 = ptrtoint ptr %spdif_ctl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spdif_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %36, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %access, align 4
  %and19 = and i32 %38, -257
  store i32 %and19, ptr %access, align 4
  %card = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 21
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 4
  %41 = load ptr, ptr %spdif_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %41, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %40, i32 noundef 3, ptr noundef %id) #11
  br label %cleanup

cleanup:                                          ; preds = %rme96_set_buffer_size_constraint.exit, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %rme96_set_buffer_size_constraint.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %iobase12.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %iobase12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase12.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %5, i32 131072
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #11, !srcloc !273
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  %rcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rcreg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool17.not.i = icmp sgt i32 %7, -1
  br i1 %tobool17.not.i, label %if.then.snd_rme96_trigger.exit_crit_edge, label %do.body19.i

if.then.snd_rme96_trigger.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_trigger.exit

do.body19.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %iobase12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase12.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %10, i32 131080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #11, !srcloc !261
  br label %snd_rme96_trigger.exit

snd_rme96_trigger.exit:                           ; preds = %do.body19.i, %if.then.snd_rme96_trigger.exit_crit_edge
  %11 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcreg, align 4
  %and54.i = and i32 %12, -2
  store i32 %and54.i, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wcreg, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = ptrtoint ptr %iobase12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase12.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %17, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %15) #11, !srcloc !261
  br label %if.end

if.end:                                           ; preds = %snd_rme96_trigger.exit, %entry.if.end_crit_edge
  %playback_substream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %playback_substream, align 4
  %playback_periodsize = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %playback_periodsize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %playback_periodsize, align 4
  %20 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wcreg, align 4
  %and2 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp = icmp eq i32 %and2, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br i1 %cmp, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %spdif_ctl = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 25
  %22 = ptrtoint ptr %spdif_ctl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spdif_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %access, align 4
  %or = or i32 %25, 256
  store i32 %or, ptr %access, align 4
  %card = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %28 = load ptr, ptr %spdif_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %28, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %27, i32 noundef 3, ptr noundef %id) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_playback_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %6 = ptrtoint ptr %dma_area to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dma_area, align 4
  %port = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dma_addr, align 8
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %10 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65536, ptr %dma_bytes, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcreg, align 4
  %and = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_rme96_getinputtype.exit, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

snd_rme96_getinputtype.exit:                      ; preds = %land.lhs.true
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 131072
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !273
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %rcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rcreg.i, align 4
  %and14.i = and i32 %18, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %if.then16.i

if.then16.i:                                      ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and18.i = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %..i = select i1 %tobool19.not.i, i32 44100, i32 48000
  br label %if.then4

if.end22.i:                                       ; preds = %snd_rme96_getinputtype.exit
  %and24.i = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.if.else_crit_edge

if.end22.i.if.else_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end27.i:                                       ; preds = %if.end22.i
  %shr29.i = lshr i32 %18, 27
  %add40.i = and i32 %shr29.i, 7
  %20 = zext i32 %add40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %add40.i, label %if.end27.i.if.else_crit_edge [
    i32 0, label %sw.bb41.i
    i32 3, label %if.end27.i.if.then4_crit_edge
    i32 4, label %sw.bb48.i
    i32 5, label %sw.bb49.i
    i32 6, label %sw.bb50.i
    i32 7, label %sw.bb51.i
  ]

if.end27.i.if.then4_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.end27.i.if.else_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

sw.bb41.i:                                        ; preds = %if.end27.i
  %and43.i = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %sw.bb41.i.if.else_crit_edge, label %sw.bb41.i.if.then4_crit_edge

sw.bb41.i.if.then4_crit_edge:                     ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

sw.bb41.i.if.else_crit_edge:                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

sw.bb48.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

sw.bb49.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

sw.bb50.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

sw.bb51.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %sw.bb51.i, %sw.bb50.i, %sw.bb49.i, %sw.bb48.i, %sw.bb41.i.if.then4_crit_edge, %if.end27.i.if.then4_crit_edge, %if.then16.i
  %rate.0.ph = phi i32 [ 96000, %if.end27.i.if.then4_crit_edge ], [ 64000, %sw.bb41.i.if.then4_crit_edge ], [ %..i, %if.then16.i ], [ 88200, %sw.bb48.i ], [ 48000, %sw.bb49.i ], [ 44100, %sw.bb50.i ], [ 32000, %sw.bb51.i ]
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %rate.0.ph)
  %cmp6.not = icmp eq i32 %22, %rate.0.ph
  br i1 %cmp6.not, label %if.then4.if.end15_crit_edge, label %if.then4.error.thread_crit_edge

if.then4.error.thread_crit_edge:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.thread

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.else:                                          ; preds = %sw.bb41.i.if.else_crit_edge, %if.end27.i.if.else_crit_edge, %if.end22.i.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %arrayidx.i.i92 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i92, align 4
  %25 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wcreg, align 4
  %and.i94 = and i32 %26, 2048
  %27 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %24, label %if.else.error.thread_crit_edge [
    i32 32000, label %sw.bb.i
    i32 44100, label %sw.bb6.i95
    i32 48000, label %sw.bb13.i
    i32 64000, label %sw.bb20.i
    i32 88200, label %sw.bb27.i
    i32 96000, label %sw.bb34.i
  ]

if.else.error.thread_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.thread

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and2.i = and i32 %26, -3585
  %or.i = or i32 %and2.i, 512
  br label %sw.epilog.i97

sw.bb6.i95:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and8.i = and i32 %26, -3585
  %or10.i = or i32 %and8.i, 1024
  br label %sw.epilog.i97

sw.bb13.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and15.i = and i32 %26, -3585
  %or18.i = or i32 %and15.i, 1536
  br label %sw.epilog.i97

sw.bb20.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %or24.i = and i32 %26, -3585
  %and25.i = or i32 %or24.i, 2560
  br label %sw.epilog.i97

sw.bb27.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %or31.i = and i32 %26, -3585
  %and32.i = or i32 %or31.i, 3072
  br label %sw.epilog.i97

sw.bb34.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %or39.i = or i32 %26, 3584
  br label %sw.epilog.i97

sw.epilog.i97:                                    ; preds = %sw.bb34.i, %sw.bb27.i, %sw.bb20.i, %sw.bb13.i, %sw.bb6.i95, %sw.bb.i
  %or39.sink.i = phi i32 [ %or39.i, %sw.bb34.i ], [ %and32.i, %sw.bb27.i ], [ %and25.i, %sw.bb20.i ], [ %or18.i, %sw.bb13.i ], [ %or10.i, %sw.bb6.i95 ], [ %or.i, %sw.bb.i ]
  %28 = ptrtoint ptr %wcreg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or39.sink.i, ptr %wcreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i96 = icmp eq i32 %and.i94, 0
  %and42.i = and i32 %or39.sink.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool.not.i96, label %land.lhs.true.i, label %land.lhs.true45.critedge.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i97
  br i1 %tobool43.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %land.lhs.true.i.if.then.i98_crit_edge

land.lhs.true.i.if.then.i98_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i98

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.lhs.true45.critedge.i:                       ; preds = %sw.epilog.i97
  br i1 %tobool43.not.i, label %land.lhs.true45.critedge.i.if.then.i98_crit_edge, label %land.lhs.true45.critedge.i.do.body.i_crit_edge

land.lhs.true45.critedge.i.do.body.i_crit_edge:   ; preds = %land.lhs.true45.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.lhs.true45.critedge.i.if.then.i98_crit_edge: ; preds = %land.lhs.true45.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i98

if.then.i98:                                      ; preds = %land.lhs.true45.critedge.i.if.then.i98_crit_edge, %land.lhs.true.i.if.then.i98_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !265
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wcreg, align 4
  %or.i.i = or i32 %30, 65536
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #11, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wcreg, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %38, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %36) #11, !srcloc !261
  br label %if.end15

do.body.i:                                        ; preds = %land.lhs.true45.critedge.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !284
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wcreg, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase, align 4
  %add.ptr.i100 = getelementptr i8, ptr %43, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %41) #11, !srcloc !261
  br label %if.end15

if.end15:                                         ; preds = %do.body.i, %if.then.i98, %if.then4.if.end15_crit_edge
  %apply_dac_volume.0.off0 = phi i1 [ false, %if.then4.if.end15_crit_edge ], [ false, %do.body.i ], [ true, %if.then.i98 ]
  %arrayidx.i.i102 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end15.params_format.exit_crit_edge

if.end15.params_format.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end15
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.1.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.snd_rme96_playback_setformat.exit.thread_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

for.inc.i.i.snd_rme96_playback_setformat.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_playback_setformat.exit.thread

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end15.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end15.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %45, %if.end15.params_format.exit_crit_edge ], [ %47, %for.inc.i.i.params_format.exit_crit_edge ]
  %48 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #11, !range !285
  %add.i.i = or i32 %48, %i.09.lcssa.i.i
  %49 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %add.i.i, label %params_format.exit.snd_rme96_playback_setformat.exit.thread_crit_edge [
    i32 2, label %sw.bb.i105
    i32 10, label %sw.bb1.i
  ]

params_format.exit.snd_rme96_playback_setformat.exit.thread_crit_edge: ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_playback_setformat.exit.thread

sw.bb.i105:                                       ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wcreg, align 4
  %and.i104 = and i32 %51, -17
  br label %if.end20

sw.bb1.i:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wcreg, align 4
  %or.i106 = or i32 %53, 16
  br label %if.end20

snd_rme96_playback_setformat.exit.thread:         ; preds = %params_format.exit.snd_rme96_playback_setformat.exit.thread_crit_edge, %for.inc.i.i.snd_rme96_playback_setformat.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br i1 %apply_dac_volume.0.off0, label %snd_rme96_playback_setformat.exit.thread.if.then46_crit_edge, label %snd_rme96_playback_setformat.exit.thread.if.end47_crit_edge

snd_rme96_playback_setformat.exit.thread.if.end47_crit_edge: ; preds = %snd_rme96_playback_setformat.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

snd_rme96_playback_setformat.exit.thread.if.then46_crit_edge: ; preds = %snd_rme96_playback_setformat.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

if.end20:                                         ; preds = %sw.bb1.i, %sw.bb.i105
  %storemerge = phi i32 [ %or.i106, %sw.bb1.i ], [ %and.i104, %sw.bb.i105 ]
  %54 = ptrtoint ptr %wcreg to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %storemerge, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !286
  tail call void @arm_heavy_mb() #11
  %55 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wcreg, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  %58 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iobase, align 4
  %add.ptr.i108 = getelementptr i8, ptr %59, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %57) #11, !srcloc !261
  %arrayidx.i.i111 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.i = icmp eq i32 %61, 2
  %..i112 = select i1 %cmp.i, i32 1, i32 3
  %62 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wcreg, align 4
  %and.i113 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool2.not.i = icmp eq i32 %and.i113, 0
  %cond.i114 = select i1 %tobool2.not.i, i32 1, i32 2
  %add.i115 = add nuw nsw i32 %cond.i114, %..i112
  %playback_frlog.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 17
  %64 = ptrtoint ptr %playback_frlog.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.i115, ptr %playback_frlog.i, align 4
  %capture_periodsize = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 20
  %65 = ptrtoint ptr %capture_periodsize to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %capture_periodsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp22.not = icmp eq i32 %66, 0
  br i1 %cmp22.not, label %if.end20.if.end29_crit_edge, label %if.then23

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then23:                                        ; preds = %if.end20
  %arrayidx.i.i116 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %67 = ptrtoint ptr %arrayidx.i.i116 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i116, align 4
  %shl = shl i32 %68, %add.i115
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %66)
  %cmp26.not = icmp eq i32 %shl, %66
  br i1 %cmp26.not, label %if.then23.if.end29_crit_edge, label %if.then23.error_crit_edge

if.then23.error_crit_edge:                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %arrayidx.i.i117 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %69 = ptrtoint ptr %arrayidx.i.i117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i117, align 4
  %shl32 = shl i32 %70, %add.i115
  %playback_periodsize = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 19
  %71 = ptrtoint ptr %playback_periodsize to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shl32, ptr %playback_periodsize, align 4
  %72 = zext i32 %shl32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %shl32, label %do.end.i [
    i32 8192, label %sw.bb.i120
    i32 2048, label %sw.bb1.i123
  ]

sw.bb.i120:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %and.i119 = and i32 %63, -1073741825
  %73 = ptrtoint ptr %wcreg to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i119, ptr %wcreg, align 4
  br label %snd_rme96_set_period_properties.exit

sw.bb1.i123:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %or.i122 = or i32 %63, 1073741824
  %74 = ptrtoint ptr %wcreg to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i122, ptr %wcreg, align 4
  br label %snd_rme96_set_period_properties.exit

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 967, i32 noundef 9, ptr noundef nonnull @.str.20) #11
  br label %snd_rme96_set_period_properties.exit

snd_rme96_set_period_properties.exit:             ; preds = %do.end.i, %sw.bb1.i123, %sw.bb.i120
  %75 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wcreg, align 4
  %and18.i124 = and i32 %76, 2147483647
  store i32 %and18.i124, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !287
  tail call void @arm_heavy_mb() #11
  %77 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %wcreg, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #11
  %80 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iobase, align 4
  %add.ptr.i126 = getelementptr i8, ptr %81, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %79) #11, !srcloc !261
  %82 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wcreg, align 4
  %and35 = and i32 %83, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %if.then37, label %snd_rme96_set_period_properties.exit.error_crit_edge

snd_rme96_set_period_properties.exit.error_crit_edge: ; preds = %snd_rme96_set_period_properties.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then37:                                        ; preds = %snd_rme96_set_period_properties.exit
  %and39 = and i32 %83, -134230017
  %84 = ptrtoint ptr %wcreg to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and39, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !288
  tail call void @arm_heavy_mb() #11
  %wcreg_spdif_stream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 6
  %85 = ptrtoint ptr %wcreg_spdif_stream to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %wcreg_spdif_stream, align 4
  %87 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wcreg, align 4
  %or = or i32 %88, %86
  store i32 %or, ptr %wcreg, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %or)
  %90 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %iobase, align 4
  %add.ptr42 = getelementptr i8, ptr %91, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %89) #11, !srcloc !261
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br i1 %apply_dac_volume.0.off0, label %if.then37.if.then46_crit_edge, label %if.then37.if.end47_crit_edge

if.then37.if.end47_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then37.if.then46_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

error.thread:                                     ; preds = %if.else.error.thread_crit_edge, %if.then4.error.thread_crit_edge
  %err.0.ph = phi i32 [ -22, %if.else.error.thread_crit_edge ], [ -5, %if.then4.error.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %if.end47

error:                                            ; preds = %snd_rme96_set_period_properties.exit.error_crit_edge, %if.then23.error_crit_edge
  %err.0 = phi i32 [ -16, %if.then23.error_crit_edge ], [ 0, %snd_rme96_set_period_properties.exit.error_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br i1 %apply_dac_volume.0.off0, label %error.if.then46_crit_edge, label %error.if.end47_crit_edge

error.if.end47_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

error.if.then46_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

if.then46:                                        ; preds = %error.if.then46_crit_edge, %if.then37.if.then46_crit_edge, %snd_rme96_playback_setformat.exit.thread.if.then46_crit_edge
  %err.0144 = phi i32 [ 0, %if.then37.if.then46_crit_edge ], [ %err.0, %error.if.then46_crit_edge ], [ -22, %snd_rme96_playback_setformat.exit.thread.if.then46_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 10000, i32 noundef 2) #11
  %pci.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 24
  %92 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pci.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %device.i, align 2
  %96 = and i16 %95, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16322, i16 %96)
  %switch.i = icmp eq i16 %96, 16322
  br i1 %switch.i, label %land.lhs.true.i128, label %if.then46.if.end47_crit_edge

if.then46.if.end47_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

land.lhs.true.i128:                               ; preds = %if.then46
  %rev.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %97 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %98)
  %cmp8.i = icmp ugt i8 %98, 3
  br i1 %cmp8.i, label %if.then.i129, label %if.else.i

if.then.i129:                                     ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #13
  %vol.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 9
  %99 = ptrtoint ptr %vol.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vol.i, align 4
  %shl.i = shl i16 %100, 2
  tail call fastcc void @snd_rme96_write_SPI(ptr noundef %1, i16 noundef zeroext %shl.i) #11
  %arrayidx13.i = getelementptr %struct.rme96, ptr %1, i32 0, i32 9, i32 1
  %101 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx13.i, align 2
  %shl15.i = shl i16 %102, 2
  %or16.i = or i16 %shl15.i, 2
  br label %if.end51.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_const_cmp2(i16 16323, i16 %95)
  %cmp21.i = icmp eq i16 %95, 16323
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %98)
  %cmp37.i = icmp eq i8 %98, 2
  %or.cond = select i1 %cmp21.i, i1 true, i1 %cmp37.i
  br i1 %or.cond, label %if.then39.i, label %if.else.i.if.end47_crit_edge

if.else.i.if.end47_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %vol40.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 9
  %103 = ptrtoint ptr %vol40.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %vol40.i, align 4
  %105 = and i16 %104, 1023
  tail call fastcc void @snd_rme96_write_SPI(ptr noundef %1, i16 noundef zeroext %105) #11
  %arrayidx46.i = getelementptr %struct.rme96, ptr %1, i32 0, i32 9, i32 1
  %106 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx46.i, align 2
  %108 = and i16 %107, 1023
  %109 = or i16 %108, 1024
  br label %if.end51.sink.split.i

if.end51.sink.split.i:                            ; preds = %if.then39.i, %if.then.i129
  %.sink.i = phi i16 [ %109, %if.then39.i ], [ %or16.i, %if.then.i129 ]
  tail call fastcc void @snd_rme96_write_SPI(ptr noundef %1, i16 noundef zeroext %.sink.i) #11
  br label %if.end47

if.end47:                                         ; preds = %if.end51.sink.split.i, %if.else.i.if.end47_crit_edge, %if.then46.if.end47_crit_edge, %error.if.end47_crit_edge, %error.thread, %if.then37.if.end47_crit_edge, %snd_rme96_playback_setformat.exit.thread.if.end47_crit_edge
  %err.0143 = phi i32 [ %err.0.ph, %error.thread ], [ %err.0, %error.if.end47_crit_edge ], [ 0, %if.then37.if.end47_crit_edge ], [ -22, %snd_rme96_playback_setformat.exit.thread.if.end47_crit_edge ], [ %err.0144, %if.then46.if.end47_crit_edge ], [ %err.0144, %if.end51.sink.split.i ], [ %err.0144, %if.else.i.if.end47_crit_edge ]
  ret i32 %err.0143
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  %iobase12.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %iobase12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase12.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %5, i32 131072
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #11, !srcloc !273
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  %rcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rcreg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool17.not.i = icmp sgt i32 %7, -1
  br i1 %tobool17.not.i, label %if.then.snd_rme96_trigger.exit_crit_edge, label %do.body19.i

if.then.snd_rme96_trigger.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_trigger.exit

do.body19.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %iobase12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase12.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %10, i32 131080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #11, !srcloc !261
  br label %snd_rme96_trigger.exit

snd_rme96_trigger.exit:                           ; preds = %do.body19.i, %if.then.snd_rme96_trigger.exit_crit_edge
  %11 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcreg, align 4
  %and54.i = and i32 %12, -2
  store i32 %and54.i, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wcreg, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = ptrtoint ptr %iobase12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase12.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %17, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %15) #11, !srcloc !261
  br label %do.body

do.body:                                          ; preds = %snd_rme96_trigger.exit, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !289
  tail call void @arm_heavy_mb() #11
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 327676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !261
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_playback_trigger(ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %.pn80 = load ptr, ptr %substreams, align 4
  %cmp.not82 = icmp eq ptr %.pn80, %substreams
  br i1 %cmp.not82, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn83 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn80, %entry.for.body_crit_edge ]
  %private_data3 = getelementptr i8, ptr %.pn83, i32 -132
  %5 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data3, align 4
  %cmp4 = icmp eq ptr %6, %1
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %runtime.i = getelementptr i8, ptr %.pn83, i32 -20
  %7 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %substream, ptr %8, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn83 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn83, align 4
  %11 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %group, align 4
  %substreams2 = getelementptr inbounds %struct.snd_pcm_group, ptr %12, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %playback_substream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %playback_substream, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.end.land.end_crit_edge, label %land.lhs.true

for.end.land.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true:                                    ; preds = %for.end
  %capture_substream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %capture_substream, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %group12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %14, i32 0, i32 18
  %17 = ptrtoint ptr %group12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %group12, align 4
  %group14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %16, i32 0, i32 18
  %19 = ptrtoint ptr %group14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %group14, align 4
  %cmp15 = icmp eq ptr %18, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %for.end.land.end_crit_edge
  %21 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %for.end.land.end_crit_edge ], [ %cmp15, %land.rhs ]
  %22 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %cmd, label %land.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %land.end.sw.bb24_crit_edge
    i32 0, label %land.end.sw.bb24_crit_edge84
    i32 3, label %sw.bb36
    i32 6, label %land.end.sw.bb44_crit_edge
    i32 4, label %land.end.sw.bb44_crit_edge85
  ]

land.end.sw.bb44_crit_edge85:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb44

land.end.sw.bb44_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb44

land.end.sw.bb24_crit_edge84:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

land.end.sw.bb24_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %land.end
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wcreg, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %sw.bb
  %cmp19.not = icmp eq ptr %14, %substream
  br i1 %cmp19.not, label %if.end21, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %21, i32 51, i32 17
  br label %cleanup.sink.split

sw.bb24:                                          ; preds = %land.end.sw.bb24_crit_edge, %land.end.sw.bb24_crit_edge84
  %wcreg25 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %wcreg25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wcreg25, align 4
  %and26 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %sw.bb24.cleanup_crit_edge, label %if.then28

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %sw.bb24
  %cmp30.not = icmp eq ptr %14, %substream
  br i1 %cmp30.not, label %if.end32, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %cond34 = select i1 %21, i32 204, i32 68
  br label %cleanup.sink.split

sw.bb36:                                          ; preds = %land.end
  %wcreg37 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %wcreg37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wcreg37, align 4
  %and38 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %sw.bb36.cleanup_crit_edge, label %if.then40

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then40:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %cond42 = select i1 %21, i32 204, i32 68
  br label %cleanup.sink.split

sw.bb44:                                          ; preds = %land.end.sw.bb44_crit_edge, %land.end.sw.bb44_crit_edge85
  %wcreg45 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %wcreg45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wcreg45, align 4
  %and46 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then48, label %sw.bb44.cleanup_crit_edge

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then48:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  %cond50 = select i1 %21, i32 3, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then48, %if.then40, %if.end32, %if.end21
  %cond.sink = phi i32 [ %cond, %if.end21 ], [ %cond34, %if.end32 ], [ %cond42, %if.then40 ], [ %cond50, %if.then48 ]
  tail call fastcc void @snd_rme96_trigger(ptr noundef %1, i32 noundef %cond.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb44.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then17.cleanup_crit_edge ], [ -16, %if.then28.cleanup_crit_edge ], [ -22, %land.end.cleanup_crit_edge ], [ 0, %sw.bb44.cleanup_crit_edge ], [ 0, %sw.bb36.cleanup_crit_edge ], [ 0, %sw.bb24.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_playback_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 131072
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !290
  %5 = and i32 %4, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %playback_frlog.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %playback_frlog.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %playback_frlog.i, align 4
  %shr.i = lshr i32 %6, %8
  ret i32 %shr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_playback_silence(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %pos
  tail call void @mmioset(ptr noundef %add.ptr1, i32 noundef 0, i32 noundef %count) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_playback_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %src, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %pos
  %call = tail call i32 @copy_from_user_toio(ptr noundef %add.ptr1, ptr noundef %src, i32 noundef %count) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_playback_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %src, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %pos
  tail call void @mmiocpy(ptr noundef %add.ptr1, ptr noundef %src, i32 noundef %count) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_user_toio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_capture_spdif_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #11
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw, ptr @snd_rme96_capture_spdif_info, i32 64)
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_rme96_getinputtype.exit, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

snd_rme96_getinputtype.exit:                      ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 131072
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !273
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %rcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rcreg.i, align 4
  %and14.i = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %snd_rme96_getinputtype.exit.cleanup_crit_edge

snd_rme96_getinputtype.exit.cleanup_crit_edge:    ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22.i:                                       ; preds = %snd_rme96_getinputtype.exit
  %and24.i = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.if.end11_crit_edge

if.end22.i.if.end11_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end27.i:                                       ; preds = %if.end22.i
  %shr29.i = lshr i32 %10, 27
  %add40.i = and i32 %shr29.i, 7
  %12 = zext i32 %add40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %add40.i, label %if.end27.i.if.end11_crit_edge [
    i32 0, label %sw.bb41.i
    i32 3, label %if.end27.i.if.end_crit_edge
    i32 4, label %sw.bb48.i
    i32 5, label %sw.bb49.i
    i32 6, label %sw.bb50.i
    i32 7, label %sw.bb51.i
  ]

if.end27.i.if.end_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end27.i.if.end11_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

sw.bb41.i:                                        ; preds = %if.end27.i
  %and43.i = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %sw.bb41.i.if.end11_crit_edge, label %sw.bb41.i.if.end_crit_edge

sw.bb41.i.if.end_crit_edge:                       ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb41.i.if.end11_crit_edge:                     ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

sw.bb48.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb49.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb50.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb51.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %sw.bb51.i, %sw.bb50.i, %sw.bb49.i, %sw.bb48.i, %sw.bb41.i.if.end_crit_edge, %if.end27.i.if.end_crit_edge
  %retval.0.i44.ph.ph = phi i32 [ 32000, %sw.bb51.i ], [ 44100, %sw.bb50.i ], [ 48000, %sw.bb49.i ], [ 88200, %sw.bb48.i ], [ 64000, %sw.bb41.i.if.end_crit_edge ], [ 96000, %if.end27.i.if.end_crit_edge ]
  %call6 = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %retval.0.i44.ph.ph) #11
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %13 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call6, ptr %rates, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %14 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i44.ph.ph, ptr %rate_min, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %15 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i44.ph.ph, ptr %rate_max, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %sw.bb41.i.if.end11_crit_edge, %if.end27.i.if.end11_crit_edge, %if.end22.i.if.end11_crit_edge, %entry.if.end11_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %capture_substream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %capture_substream, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %substream, ptr %capture_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %call.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 65536, i32 noundef 65536) #11
  %playback_periodsize.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %playback_periodsize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %playback_periodsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i45 = icmp eq i32 %20, 0
  br i1 %tobool.not.i45, label %if.end.i46, label %if.end15.if.then2.i_crit_edge

if.end15.if.then2.i_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.end.i46:                                       ; preds = %if.end15
  %capture_periodsize.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 20
  %21 = ptrtoint ptr %capture_periodsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capture_periodsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not.i = icmp eq i32 %22, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i46.if.then2.i_crit_edge

if.end.i46.if.then2.i_crit_edge:                  ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i46.if.then2.i_crit_edge, %if.end15.if.then2.i_crit_edge
  %size.014.i = phi i32 [ %22, %if.end.i46.if.then2.i_crit_edge ], [ %20, %if.end15.if.then2.i_crit_edge ]
  %call.i11.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 14, i32 noundef %size.014.i, i32 noundef %size.014.i) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_period_bytes) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then2.i, %if.then13, %snd_rme96_getinputtype.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then13 ], [ 0, %if.then2.i ], [ 0, %if.else.i ], [ -5, %snd_rme96_getinputtype.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %iobase30.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %iobase30.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase30.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %5, i32 131072
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #11, !srcloc !273
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  %rcreg35.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %rcreg35.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rcreg35.i, align 4
  %and37.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.then.snd_rme96_trigger.exit_crit_edge, label %do.body40.i

if.then.snd_rme96_trigger.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_trigger.exit

do.body40.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %iobase30.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase30.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %10, i32 131084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 0) #11, !srcloc !261
  br label %snd_rme96_trigger.exit

snd_rme96_trigger.exit:                           ; preds = %do.body40.i, %if.then.snd_rme96_trigger.exit_crit_edge
  %11 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcreg, align 4
  %and66.i = and i32 %12, -3
  store i32 %and66.i, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wcreg, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = ptrtoint ptr %iobase30.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase30.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %17, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %15) #11, !srcloc !261
  br label %if.end

if.end:                                           ; preds = %snd_rme96_trigger.exit, %entry.if.end_crit_edge
  %capture_substream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %capture_substream, align 4
  %capture_periodsize = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 20
  %19 = ptrtoint ptr %capture_periodsize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %capture_periodsize, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_capture_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 65536
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %6 = ptrtoint ptr %dma_area to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %dma_area, align 4
  %port = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 65536
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %dma_addr, align 8
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %10 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65536, ptr %dma_bytes, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %12, %entry.params_format.exit_crit_edge ], [ %14, %for.inc.i.i.params_format.exit_crit_edge ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #11, !range !285
  %add.i.i = or i32 %15, %i.09.lcssa.i.i
  %16 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 10, label %sw.bb1.i
  ]

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wcreg.i, align 4
  %and.i = and i32 %18, -33
  store i32 %and.i, ptr %wcreg.i, align 4
  br label %if.end

sw.bb1.i:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg2.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %wcreg2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wcreg2.i, align 4
  %or.i = or i32 %20, 32
  store i32 %or.i, ptr %wcreg2.i, align 4
  br label %if.end

if.end:                                           ; preds = %sw.bb1.i, %sw.bb.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !291
  tail call void @arm_heavy_mb() #11
  %wcreg3.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wcreg3.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #11, !srcloc !261
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %areg.i, align 4
  %and.i85 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i, label %snd_rme96_getinputtype.exit, label %if.then6

snd_rme96_getinputtype.exit:                      ; preds = %if.end
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase, align 4
  %add.ptr.i104 = getelementptr i8, ptr %29, i32 131072
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #11, !srcloc !273
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %rcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %rcreg.i, align 4
  %and14.i = and i32 %31, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %if.then15.thread

if.then6:                                         ; preds = %if.end
  %arrayidx.i.i88 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i88, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %34, label %if.then6.cleanup_crit_edge [
    i32 32000, label %sw.bb.i92
    i32 44100, label %sw.bb3.i
    i32 48000, label %sw.bb9.i
    i32 64000, label %sw.bb15.i
    i32 88200, label %sw.bb22.i
    i32 96000, label %sw.bb34.i
  ]

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i92:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %or.i90 = and i32 %27, -29
  %and.i91 = or i32 %or.i90, 4
  br label %snd_rme96_capture_analog_setrate.exit

sw.bb3.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %and5.i = and i32 %27, -29
  %or6.i = or i32 %and5.i, 8
  br label %snd_rme96_capture_analog_setrate.exit

sw.bb9.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %or12.i = and i32 %27, -29
  %and13.i = or i32 %or12.i, 12
  br label %snd_rme96_capture_analog_setrate.exit

sw.bb15.i:                                        ; preds = %if.then6
  %rev.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %37)
  %cmp.i = icmp ult i8 %37, 4
  br i1 %cmp.i, label %sw.bb15.i.cleanup_crit_edge, label %if.end.i93

sw.bb15.i.cleanup_crit_edge:                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i93:                                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  %or18.i = and i32 %27, -29
  %or20.i = or i32 %or18.i, 20
  br label %snd_rme96_capture_analog_setrate.exit

sw.bb22.i:                                        ; preds = %if.then6
  %rev23.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %rev23.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rev23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %39)
  %cmp25.i = icmp ult i8 %39, 4
  br i1 %cmp25.i, label %sw.bb22.i.cleanup_crit_edge, label %if.end28.i

sw.bb22.i.cleanup_crit_edge:                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  %and30.i = and i32 %27, -29
  %or32.i = or i32 %and30.i, 24
  br label %snd_rme96_capture_analog_setrate.exit

sw.bb34.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %or38.i = or i32 %27, 28
  br label %snd_rme96_capture_analog_setrate.exit

snd_rme96_capture_analog_setrate.exit:            ; preds = %sw.bb34.i, %if.end28.i, %if.end.i93, %sw.bb9.i, %sw.bb3.i, %sw.bb.i92
  %and.i91.sink = phi i32 [ %and.i91, %sw.bb.i92 ], [ %or6.i, %sw.bb3.i ], [ %and13.i, %sw.bb9.i ], [ %or20.i, %if.end.i93 ], [ %or32.i, %if.end28.i ], [ %or38.i, %sw.bb34.i ]
  %40 = ptrtoint ptr %areg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and.i91.sink, ptr %areg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !292
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %areg.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase, align 4
  %add.ptr.i95 = getelementptr i8, ptr %45, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %43) #11, !srcloc !261
  br label %if.end31

if.end22.i:                                       ; preds = %snd_rme96_getinputtype.exit
  %and24.i = and i32 %31, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.if.end31_crit_edge

if.end22.i.if.end31_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end27.i:                                       ; preds = %if.end22.i
  %shr29.i = lshr i32 %31, 27
  %add40.i = and i32 %shr29.i, 7
  %46 = zext i32 %add40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %add40.i, label %if.end27.i.if.end31_crit_edge [
    i32 0, label %sw.bb41.i
    i32 3, label %if.end27.i.if.then15_crit_edge
    i32 4, label %sw.bb48.i
    i32 5, label %sw.bb49.i
    i32 6, label %sw.bb50.i
    i32 7, label %sw.bb51.i
  ]

if.end27.i.if.then15_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.end27.i.if.end31_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

sw.bb41.i:                                        ; preds = %if.end27.i
  %and43.i = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %sw.bb41.i.if.end31_crit_edge, label %sw.bb41.i.if.then15_crit_edge

sw.bb41.i.if.then15_crit_edge:                    ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

sw.bb41.i.if.end31_crit_edge:                     ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

sw.bb48.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

sw.bb49.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

sw.bb50.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

sw.bb51.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then15:                                        ; preds = %sw.bb51.i, %sw.bb50.i, %sw.bb49.i, %sw.bb48.i, %sw.bb41.i.if.then15_crit_edge, %if.end27.i.if.then15_crit_edge
  %retval.0.i106.ph = phi i32 [ 96000, %if.end27.i.if.then15_crit_edge ], [ 64000, %sw.bb41.i.if.then15_crit_edge ], [ 88200, %sw.bb48.i ], [ 48000, %sw.bb49.i ], [ 44100, %sw.bb50.i ], [ 32000, %sw.bb51.i ]
  %arrayidx.i.i107 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %arrayidx.i.i107 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %retval.0.i106.ph)
  %cmp17.not = icmp eq i32 %48, %retval.0.i106.ph
  br i1 %cmp17.not, label %land.lhs.true23, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15.thread:                                 ; preds = %snd_rme96_getinputtype.exit
  %and18.i = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %..i = select i1 %tobool19.not.i, i32 44100, i32 48000
  %arrayidx.i.i107141 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %arrayidx.i.i107141 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i107141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %..i)
  %cmp17.not142 = icmp eq i32 %50, %..i
  br i1 %cmp17.not142, label %land.lhs.true, label %if.then15.thread.cleanup_crit_edge

if.then15.thread.cleanup_crit_edge:               ; preds = %if.then15.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then15.thread
  %channels_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 5
  %51 = ptrtoint ptr %channels_min to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channels_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp21 = icmp eq i32 %52, 2
  br i1 %cmp21, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.then15
  %channels_min25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 5
  %53 = ptrtoint ptr %channels_min25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channels_min25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %54)
  %cmp26 = icmp eq i32 %54, 8
  br i1 %cmp26, label %land.lhs.true23.cleanup_crit_edge, label %land.lhs.true23.if.end31_crit_edge

land.lhs.true23.if.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true23.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %sw.bb41.i.if.end31_crit_edge, %if.end27.i.if.end31_crit_edge, %if.end22.i.if.end31_crit_edge, %snd_rme96_capture_analog_setrate.exit
  %arrayidx.i.i108 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %arrayidx.i.i108 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.i109 = icmp eq i32 %56, 2
  %..i110 = select i1 %cmp.i109, i32 1, i32 3
  %57 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wcreg3.i, align 4
  %and5.i111 = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i111)
  %tobool6.not.i = icmp eq i32 %and5.i111, 0
  %cond7.i = select i1 %tobool6.not.i, i32 1, i32 2
  %add8.i = add nuw nsw i32 %cond7.i, %..i110
  %capture_frlog.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 18
  %59 = ptrtoint ptr %capture_frlog.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add8.i, ptr %capture_frlog.i, align 4
  %playback_periodsize = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 19
  %60 = ptrtoint ptr %playback_periodsize to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %playback_periodsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp33.not = icmp eq i32 %61, 0
  br i1 %cmp33.not, label %if.end31.if.end41_crit_edge, label %if.then34

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then34:                                        ; preds = %if.end31
  %arrayidx.i.i112 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %62 = ptrtoint ptr %arrayidx.i.i112 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i112, align 4
  %shl = shl i32 %63, %add8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %61)
  %cmp37.not = icmp eq i32 %shl, %61
  br i1 %cmp37.not, label %if.then34.if.end41_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %if.then34.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  %arrayidx.i.i113 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %64 = ptrtoint ptr %arrayidx.i.i113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i113, align 4
  %shl44 = shl i32 %65, %add8.i
  %capture_periodsize = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 20
  %66 = ptrtoint ptr %capture_periodsize to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl44, ptr %capture_periodsize, align 4
  %67 = zext i32 %shl44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %shl44, label %do.end.i [
    i32 8192, label %sw.bb.i116
    i32 2048, label %sw.bb1.i119
  ]

sw.bb.i116:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %and.i115 = and i32 %58, -1073741825
  %68 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and.i115, ptr %wcreg3.i, align 4
  br label %snd_rme96_set_period_properties.exit

sw.bb1.i119:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %or.i118 = or i32 %58, 1073741824
  %69 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i118, ptr %wcreg3.i, align 4
  br label %snd_rme96_set_period_properties.exit

do.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 967, i32 noundef 9, ptr noundef nonnull @.str.20) #11
  br label %snd_rme96_set_period_properties.exit

snd_rme96_set_period_properties.exit:             ; preds = %do.end.i, %sw.bb1.i119, %sw.bb.i116
  %70 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wcreg3.i, align 4
  %and18.i120 = and i32 %71, 2147483647
  store i32 %and18.i120, ptr %wcreg3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !287
  tail call void @arm_heavy_mb() #11
  %72 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wcreg3.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #11
  %75 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iobase, align 4
  %add.ptr.i122 = getelementptr i8, ptr %76, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %74) #11, !srcloc !261
  br label %cleanup

cleanup:                                          ; preds = %snd_rme96_set_period_properties.exit, %if.then34.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then15.thread.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %sw.bb22.i.cleanup_crit_edge, %sw.bb15.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %snd_rme96_set_period_properties.exit ], [ -22, %for.inc.i.i.cleanup_crit_edge ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %sw.bb15.i.cleanup_crit_edge ], [ -22, %sw.bb22.i.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -5, %if.then15.thread.cleanup_crit_edge ], [ -5, %if.then15.cleanup_crit_edge ], [ -5, %land.lhs.true23.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -16, %if.then34.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  %iobase30.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %iobase30.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase30.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %5, i32 131072
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #11, !srcloc !273
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  %rcreg35.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %rcreg35.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rcreg35.i, align 4
  %and37.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.then.snd_rme96_trigger.exit_crit_edge, label %do.body40.i

if.then.snd_rme96_trigger.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_trigger.exit

do.body40.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %iobase30.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase30.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %10, i32 131084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 0) #11, !srcloc !261
  br label %snd_rme96_trigger.exit

snd_rme96_trigger.exit:                           ; preds = %do.body40.i, %if.then.snd_rme96_trigger.exit_crit_edge
  %11 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcreg, align 4
  %and66.i = and i32 %12, -3
  store i32 %and66.i, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wcreg, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = ptrtoint ptr %iobase30.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase30.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %17, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %15) #11, !srcloc !261
  br label %do.body

do.body:                                          ; preds = %snd_rme96_trigger.exit, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  tail call void @arm_heavy_mb() #11
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 393212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !261
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_capture_trigger(ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %.pn80 = load ptr, ptr %substreams, align 4
  %cmp.not82 = icmp eq ptr %.pn80, %substreams
  br i1 %cmp.not82, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn83 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn80, %entry.for.body_crit_edge ]
  %private_data3 = getelementptr i8, ptr %.pn83, i32 -132
  %5 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data3, align 4
  %cmp4 = icmp eq ptr %6, %1
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %runtime.i = getelementptr i8, ptr %.pn83, i32 -20
  %7 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %substream, ptr %8, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn83 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn83, align 4
  %11 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %group, align 4
  %substreams2 = getelementptr inbounds %struct.snd_pcm_group, ptr %12, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %playback_substream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %playback_substream, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.end.land.end_crit_edge, label %land.lhs.true

for.end.land.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true:                                    ; preds = %for.end
  %capture_substream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %capture_substream, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %group12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %14, i32 0, i32 18
  %17 = ptrtoint ptr %group12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %group12, align 4
  %group14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %16, i32 0, i32 18
  %19 = ptrtoint ptr %group14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %group14, align 4
  %cmp15 = icmp eq ptr %18, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %for.end.land.end_crit_edge
  %21 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %for.end.land.end_crit_edge ], [ %cmp15, %land.rhs ]
  %22 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %cmd, label %land.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %land.end.sw.bb24_crit_edge
    i32 0, label %land.end.sw.bb24_crit_edge84
    i32 3, label %sw.bb36
    i32 6, label %land.end.sw.bb44_crit_edge
    i32 4, label %land.end.sw.bb44_crit_edge85
  ]

land.end.sw.bb44_crit_edge85:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb44

land.end.sw.bb44_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb44

land.end.sw.bb24_crit_edge84:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

land.end.sw.bb24_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb24

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %land.end
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wcreg, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %sw.bb
  %capture_substream18 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %capture_substream18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %capture_substream18, align 4
  %cmp19.not = icmp eq ptr %26, %substream
  br i1 %cmp19.not, label %if.end21, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %21, i32 51, i32 34
  br label %cleanup.sink.split

sw.bb24:                                          ; preds = %land.end.sw.bb24_crit_edge, %land.end.sw.bb24_crit_edge84
  %wcreg25 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %wcreg25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wcreg25, align 4
  %and26 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %sw.bb24.cleanup_crit_edge, label %if.then28

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %sw.bb24
  %capture_substream29 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %capture_substream29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %capture_substream29, align 4
  %cmp30.not = icmp eq ptr %30, %substream
  br i1 %cmp30.not, label %if.end32, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %cond34 = select i1 %21, i32 204, i32 136
  br label %cleanup.sink.split

sw.bb36:                                          ; preds = %land.end
  %wcreg37 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %wcreg37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wcreg37, align 4
  %and38 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %sw.bb36.cleanup_crit_edge, label %if.then40

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then40:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %cond42 = select i1 %21, i32 204, i32 136
  br label %cleanup.sink.split

sw.bb44:                                          ; preds = %land.end.sw.bb44_crit_edge, %land.end.sw.bb44_crit_edge85
  %wcreg45 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %wcreg45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wcreg45, align 4
  %and46 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then48, label %sw.bb44.cleanup_crit_edge

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then48:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  %cond50 = select i1 %21, i32 3, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then48, %if.then40, %if.end32, %if.end21
  %cond.sink = phi i32 [ %cond, %if.end21 ], [ %cond34, %if.end32 ], [ %cond42, %if.then40 ], [ %cond50, %if.then48 ]
  tail call fastcc void @snd_rme96_trigger(ptr noundef %1, i32 noundef %cond.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb44.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then17.cleanup_crit_edge ], [ -16, %if.then28.cleanup_crit_edge ], [ -22, %land.end.cleanup_crit_edge ], [ 0, %sw.bb44.cleanup_crit_edge ], [ 0, %sw.bb36.cleanup_crit_edge ], [ 0, %sw.bb24.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 196608
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !294
  %5 = and i32 %4, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %capture_frlog.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %capture_frlog.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capture_frlog.i, align 4
  %shr.i = lshr i32 %6, %8
  ret i32 %shr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_capture_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 65536
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %pos
  %call = tail call i32 @copy_to_user_fromio(ptr noundef %dst, ptr noundef %add.ptr1, i32 noundef %count) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_capture_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 65536
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %pos
  tail call void @mmiocpy(ptr noundef %dst, ptr noundef %add.ptr1, i32 noundef %count) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_to_user_fromio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_playback_adat_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #11
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %playback_substream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback_substream, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wcreg, align 4
  %or = or i32 %7, 256
  store i32 %or, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !295
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wcreg, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #11, !srcloc !261
  %13 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %substream, ptr %playback_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %14 = call ptr @memcpy(ptr %hw, ptr @snd_rme96_playback_adat_info, i32 64)
  %15 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wcreg, align 4
  %and = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_rme96_getinputtype.exit, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

snd_rme96_getinputtype.exit:                      ; preds = %land.lhs.true
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 131072
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !273
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %rcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rcreg.i, align 4
  %and14.i = and i32 %22, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %if.then16.i

if.then16.i:                                      ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and18.i = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %..i = select i1 %tobool19.not.i, i32 44100, i32 48000
  br label %if.then11

if.end22.i:                                       ; preds = %snd_rme96_getinputtype.exit
  %and24.i = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.if.end17_crit_edge

if.end22.i.if.end17_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end27.i:                                       ; preds = %if.end22.i
  %shr29.i = lshr i32 %22, 27
  %add40.i = and i32 %shr29.i, 7
  %24 = zext i32 %add40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %add40.i, label %if.end27.i.if.end17_crit_edge [
    i32 0, label %sw.bb41.i
    i32 3, label %if.end27.i.if.then11_crit_edge
    i32 4, label %sw.bb48.i
    i32 5, label %sw.bb49.i
    i32 6, label %sw.bb50.i
    i32 7, label %sw.bb51.i
  ]

if.end27.i.if.then11_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.end27.i.if.end17_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

sw.bb41.i:                                        ; preds = %if.end27.i
  %and43.i = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %sw.bb41.i.if.end17_crit_edge, label %sw.bb41.i.if.then11_crit_edge

sw.bb41.i.if.then11_crit_edge:                    ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

sw.bb41.i.if.end17_crit_edge:                     ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

sw.bb48.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

sw.bb49.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

sw.bb50.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

sw.bb51.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.then11:                                        ; preds = %sw.bb51.i, %sw.bb50.i, %sw.bb49.i, %sw.bb48.i, %sw.bb41.i.if.then11_crit_edge, %if.end27.i.if.then11_crit_edge, %if.then16.i
  %retval.0.i48.ph = phi i32 [ 96000, %if.end27.i.if.then11_crit_edge ], [ 64000, %sw.bb41.i.if.then11_crit_edge ], [ %..i, %if.then16.i ], [ 88200, %sw.bb48.i ], [ 48000, %sw.bb49.i ], [ 44100, %sw.bb50.i ], [ 32000, %sw.bb51.i ]
  %call12 = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %retval.0.i48.ph) #11
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %25 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call12, ptr %rates, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %26 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i48.ph, ptr %rate_min, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %27 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i48.ph, ptr %rate_max, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %sw.bb41.i.if.end17_crit_edge, %if.end27.i.if.end17_crit_edge, %if.end22.i.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %call.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 65536, i32 noundef 65536) #11
  %playback_periodsize.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %playback_periodsize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %playback_periodsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i49 = icmp eq i32 %29, 0
  br i1 %tobool.not.i49, label %if.end.i50, label %if.end17.if.then2.i_crit_edge

if.end17.if.then2.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.end.i50:                                       ; preds = %if.end17
  %capture_periodsize.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 20
  %30 = ptrtoint ptr %capture_periodsize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %capture_periodsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool1.not.i = icmp eq i32 %31, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i50.if.then2.i_crit_edge

if.end.i50.if.then2.i_crit_edge:                  ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i50.if.then2.i_crit_edge, %if.end17.if.then2.i_crit_edge
  %size.014.i = phi i32 [ %31, %if.end.i50.if.then2.i_crit_edge ], [ %29, %if.end17.if.then2.i_crit_edge ]
  %call.i11.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 14, i32 noundef %size.014.i, i32 noundef %size.014.i) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_period_bytes) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then2.i, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.then2.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_capture_adat_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #11
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw, ptr @snd_rme96_capture_adat_info, i32 64)
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_rme96_getinputtype.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

snd_rme96_getinputtype.exit:                      ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 131072
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !273
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %rcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %rcreg.i, align 4
  %and14.i = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %if.end6

if.end22.i:                                       ; preds = %snd_rme96_getinputtype.exit
  %and24.i = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.if.end11_crit_edge

if.end22.i.if.end11_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end27.i:                                       ; preds = %if.end22.i
  %shr29.i = lshr i32 %10, 27
  %add40.i = and i32 %shr29.i, 7
  %12 = zext i32 %add40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %add40.i, label %if.end27.i.if.end11_crit_edge [
    i32 0, label %sw.bb41.i
    i32 3, label %if.end27.i.cleanup_crit_edge
    i32 4, label %if.end27.i.cleanup_crit_edge57
    i32 5, label %if.end27.i.cleanup_crit_edge58
    i32 6, label %if.end27.i.cleanup_crit_edge59
    i32 7, label %if.end27.i.cleanup_crit_edge60
  ]

if.end27.i.cleanup_crit_edge60:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27.i.cleanup_crit_edge59:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27.i.cleanup_crit_edge58:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27.i.cleanup_crit_edge57:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27.i.if.end11_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

sw.bb41.i:                                        ; preds = %if.end27.i
  %and43.i = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %sw.bb41.i.if.end11_crit_edge, label %sw.bb41.i.cleanup_crit_edge

sw.bb41.i.cleanup_crit_edge:                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb41.i.if.end11_crit_edge:                     ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end6:                                          ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and18.i = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %..i = select i1 %tobool19.not.i, i32 44100, i32 48000
  %call7 = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %..i) #11
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %13 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call7, ptr %rates, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %14 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %..i, ptr %rate_min, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %15 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %..i, ptr %rate_max, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end6, %sw.bb41.i.if.end11_crit_edge, %if.end27.i.if.end11_crit_edge, %if.end22.i.if.end11_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %capture_substream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %capture_substream, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %substream, ptr %capture_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %call.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 65536, i32 noundef 65536) #11
  %playback_periodsize.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %playback_periodsize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %playback_periodsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i45 = icmp eq i32 %20, 0
  br i1 %tobool.not.i45, label %if.end.i46, label %if.end15.if.then2.i_crit_edge

if.end15.if.then2.i_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.end.i46:                                       ; preds = %if.end15
  %capture_periodsize.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 20
  %21 = ptrtoint ptr %capture_periodsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capture_periodsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not.i = icmp eq i32 %22, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i46.if.then2.i_crit_edge

if.end.i46.if.then2.i_crit_edge:                  ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i46.if.then2.i_crit_edge, %if.end15.if.then2.i_crit_edge
  %size.014.i = phi i32 [ %22, %if.end.i46.if.then2.i_crit_edge ], [ %20, %if.end15.if.then2.i_crit_edge ]
  %call.i11.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 14, i32 noundef %size.014.i, i32 noundef %size.014.i) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_period_bytes) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then2.i, %if.then13, %sw.bb41.i.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge57, %if.end27.i.cleanup_crit_edge58, %if.end27.i.cleanup_crit_edge59, %if.end27.i.cleanup_crit_edge60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then13 ], [ 0, %if.then2.i ], [ 0, %if.else.i ], [ -5, %entry.cleanup_crit_edge ], [ -5, %sw.bb41.i.cleanup_crit_edge ], [ -5, %if.end27.i.cleanup_crit_edge ], [ -5, %if.end27.i.cleanup_crit_edge57 ], [ -5, %if.end27.i.cleanup_crit_edge58 ], [ -5, %if.end27.i.cleanup_crit_edge59 ], [ -5, %if.end27.i.cleanup_crit_edge60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_rme96_write_SPI(ptr nocapture noundef %rme96, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %areg3 = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 8
  %iobase = getelementptr inbounds %struct.rme96, ptr %rme96, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.051 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %val.addr.050 = phi i16 [ %val, %entry ], [ %shl, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %areg3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %areg3, align 4
  %and2 = and i32 %1, -897
  %2 = lshr i16 %val.addr.050, 6
  %3 = and i16 %2, 512
  %4 = zext i16 %3 to i32
  %storemerge = or i32 %and2, %4
  store i32 %storemerge, ptr %areg3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !296
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %areg3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %areg3, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #11, !srcloc !261
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #11
  %11 = ptrtoint ptr %areg3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %areg3, align 4
  %or7 = or i32 %12, 256
  store i32 %or7, ptr %areg3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !297
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %areg3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %areg3, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase, align 4
  %add.ptr13 = getelementptr i8, ptr %17, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %15) #11, !srcloc !261
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #11
  %shl = shl i16 %val.addr.050, 1
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %areg3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %areg3, align 4
  %and17 = and i32 %20, -897
  %or19 = or i32 %and17, 128
  store i32 %or19, ptr %areg3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !298
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %areg3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %areg3, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase, align 4
  %add.ptr25 = getelementptr i8, ptr %25, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %23) #11, !srcloc !261
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #11
  %27 = ptrtoint ptr %areg3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %areg3, align 4
  %and27 = and i32 %28, -129
  store i32 %and27, ptr %areg3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !299
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %areg3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %areg3, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase, align 4
  %add.ptr33 = getelementptr i8, ptr %33, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %31) #11, !srcloc !261
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_rme96_control_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
define internal i32 @snd_rme96_control_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %wcreg_spdif = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %wcreg_spdif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg_spdif, align 4
  %and.i = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond.i = zext i1 %not.tobool.not.i to i32
  %and1.i = lshr i32 %3, 26
  %4 = and i32 %and1.i, 2
  %or.i = or i32 %4, %cond.i
  %and14.i = lshr i32 %3, 10
  %5 = and i32 %and14.i, 8
  %and6.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, i32 0, i32 12
  %.pn.i = select i1 %tobool.not.i, i32 %5, i32 %cond8.i
  %storemerge.in.i = or i32 %or.i, %.pn.i
  %storemerge.i = trunc i32 %storemerge.in.i to i8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge.i, ptr %value, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_control_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and13.i = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond15.i = select i1 %tobool14.not.i, i32 0, i32 8192
  %and20.i = shl nuw nsw i32 %conv.i, 10
  %4 = and i32 %and20.i, 8192
  %cond15.pn.i = select i1 %tobool.not.i, i32 %4, i32 %cond15.i
  %5 = shl nuw nsw i32 %and.i, 12
  %and4.i = shl i32 %conv.i, 26
  %6 = and i32 %and4.i, 134217728
  %or7.i = or i32 %5, %6
  %val.0.i = or i32 %cond15.pn.i, %or7.i
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg_spdif = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %wcreg_spdif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wcreg_spdif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i, i32 %8)
  %cmp = icmp ne i32 %val.0.i, %8
  %conv = zext i1 %cmp to i32
  %9 = ptrtoint ptr %wcreg_spdif to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %val.0.i, ptr %wcreg_spdif, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_rme96_control_spdif_stream_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
define internal i32 @snd_rme96_control_spdif_stream_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %wcreg_spdif_stream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %wcreg_spdif_stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg_spdif_stream, align 4
  %and.i = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond.i = zext i1 %not.tobool.not.i to i32
  %and1.i = lshr i32 %3, 26
  %4 = and i32 %and1.i, 2
  %or.i = or i32 %4, %cond.i
  %and14.i = lshr i32 %3, 10
  %5 = and i32 %and14.i, 8
  %and6.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, i32 0, i32 12
  %.pn.i = select i1 %tobool.not.i, i32 %5, i32 %cond8.i
  %storemerge.in.i = or i32 %or.i, %.pn.i
  %storemerge.i = trunc i32 %storemerge.in.i to i8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge.i, ptr %value, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_control_spdif_stream_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and13.i = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond15.i = select i1 %tobool14.not.i, i32 0, i32 8192
  %and20.i = shl nuw nsw i32 %conv.i, 10
  %4 = and i32 %and20.i, 8192
  %cond15.pn.i = select i1 %tobool.not.i, i32 %4, i32 %cond15.i
  %5 = shl nuw nsw i32 %and.i, 12
  %and4.i = shl i32 %conv.i, 26
  %6 = and i32 %and4.i, 134217728
  %or7.i = or i32 %5, %6
  %val.0.i = or i32 %cond15.pn.i, %or7.i
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg_spdif_stream = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %wcreg_spdif_stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wcreg_spdif_stream, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i, i32 %8)
  %cmp = icmp ne i32 %val.0.i, %8
  %conv = zext i1 %cmp to i32
  %9 = ptrtoint ptr %wcreg_spdif_stream to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %val.0.i, ptr %wcreg_spdif_stream, align 4
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wcreg, align 4
  %and = and i32 %11, -134230017
  %or = or i32 %val.0.i, %and
  store i32 %or, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wcreg, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #11, !srcloc !261
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_rme96_control_spdif_mask_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_rme96_control_spdif_mask_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %1 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_info_inputtype_control(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  %texts = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %texts) #11
  %2 = getelementptr inbounds [5 x ptr], ptr %texts, i32 0, i32 1
  %3 = getelementptr inbounds [5 x ptr], ptr %texts, i32 0, i32 2
  %4 = getelementptr inbounds [5 x ptr], ptr %texts, i32 0, i32 3
  %5 = getelementptr inbounds [5 x ptr], ptr %texts, i32 0, i32 4
  %6 = ptrtoint ptr %texts to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.31, ptr %texts, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.32, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.33, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.34, ptr %4, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.35, ptr %5, align 4
  %pci = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %14, label %do.end [
    i16 16320, label %entry.sw.epilog_crit_edge
    i16 16321, label %entry.sw.epilog_crit_edge28
    i16 16322, label %sw.bb4
    i16 16323, label %sw.bb5
  ]

entry.sw.epilog_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %rev = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp = icmp ugt i8 %17, 4
  br i1 %cmp, label %if.then, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.35, ptr %4, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1912, i32 noundef 9, ptr noundef nonnull @.str.20) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.then, %sw.bb5.sw.epilog_crit_edge, %sw.bb4, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge28
  %num_items.0 = phi i32 [ 4, %if.then ], [ 4, %sw.bb4 ], [ 3, %entry.sw.epilog_crit_edge ], [ 3, %entry.sw.epilog_crit_edge28 ], [ 5, %sw.bb5.sw.epilog_crit_edge ]
  %call = call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %num_items.0, ptr noundef nonnull %texts) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %texts) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_get_inputtype_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.snd_rme96_getinputtype.exit_crit_edge

entry.snd_rme96_getinputtype.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_getinputtype.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcreg.i, align 4
  %shr.i = lshr i32 %5, 17
  %add.i = and i32 %shr.i, 3
  br label %snd_rme96_getinputtype.exit

snd_rme96_getinputtype.exit:                      ; preds = %if.end.i, %entry.snd_rme96_getinputtype.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end.i ], [ 4, %entry.snd_rme96_getinputtype.exit_crit_edge ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %value, align 8
  %pci = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %10, label %do.end [
    i16 16320, label %snd_rme96_getinputtype.exit.sw.epilog_crit_edge
    i16 16321, label %snd_rme96_getinputtype.exit.sw.epilog_crit_edge48
    i16 16322, label %sw.bb1
    i16 16323, label %sw.bb2
  ]

snd_rme96_getinputtype.exit.sw.epilog_crit_edge48: ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

snd_rme96_getinputtype.exit.sw.epilog_crit_edge:  ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %snd_rme96_getinputtype.exit
  %rev = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp = icmp ugt i8 %13, 4
  br i1 %cmp, label %if.then, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp7 = icmp eq i32 %retval.0.i, 4
  br i1 %cmp7, label %if.then9, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %value, align 8
  br label %sw.epilog

do.end:                                           ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1946, i32 noundef 9, ptr noundef nonnull @.str.20) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then9, %if.then.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb1, %snd_rme96_getinputtype.exit.sw.epilog_crit_edge, %snd_rme96_getinputtype.exit.sw.epilog_crit_edge48
  %items.0 = phi i32 [ 3, %do.end ], [ 4, %sw.bb1 ], [ 3, %snd_rme96_getinputtype.exit.sw.epilog_crit_edge ], [ 3, %snd_rme96_getinputtype.exit.sw.epilog_crit_edge48 ], [ 4, %if.then9 ], [ 4, %if.then.sw.epilog_crit_edge ], [ 5, %sw.bb2.sw.epilog_crit_edge ]
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %items.0)
  %cmp31.not = icmp ult i32 %16, %items.0
  br i1 %cmp31.not, label %sw.epilog.if.end36_crit_edge, label %if.then33

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add nsw i32 %items.0, -1
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %value, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %sw.epilog.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_put_inputtype_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pci = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %5, label %do.end [
    i16 16320, label %entry.sw.epilog_crit_edge
    i16 16321, label %entry.sw.epilog_crit_edge57
    i16 16322, label %sw.bb1
    i16 16323, label %sw.bb2
  ]

entry.sw.epilog_crit_edge57:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rev = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp = icmp ugt i8 %8, 4
  %. = select i1 %cmp, i32 4, i32 5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1979, i32 noundef 9, ptr noundef nonnull @.str.20) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge57
  %items.0 = phi i32 [ 3, %do.end ], [ 4, %sw.bb1 ], [ 3, %entry.sw.epilog_crit_edge ], [ 3, %entry.sw.epilog_crit_edge57 ], [ %., %sw.bb2 ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %rem = urem i32 %10, %items.0
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %device22 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %device22 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16323, i16 %14)
  %cmp24 = icmp eq i16 %14, 16323
  br i1 %cmp24, label %land.lhs.true, label %sw.epilog.if.end35_crit_edge

sw.epilog.if.end35_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %sw.epilog
  %rev26 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %rev26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rev26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp28 = icmp ugt i8 %16, 4
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem)
  %cmp31 = icmp eq i32 %rem, 3
  %spec.store.select = select i1 %cmp31, i32 4, i32 %rem
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %land.lhs.true.if.end35_crit_edge, %sw.epilog.if.end35_crit_edge
  %val.0 = phi i32 [ %spec.store.select, %if.then30 ], [ %rem, %land.lhs.true.if.end35_crit_edge ], [ %rem, %sw.epilog.if.end35_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end35.snd_rme96_getinputtype.exit_crit_edge

if.end35.snd_rme96_getinputtype.exit_crit_edge:   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_getinputtype.exit

if.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wcreg.i, align 4
  %shr.i = lshr i32 %20, 17
  %add.i = and i32 %shr.i, 3
  br label %snd_rme96_getinputtype.exit

snd_rme96_getinputtype.exit:                      ; preds = %if.end.i, %if.end35.snd_rme96_getinputtype.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end.i ], [ 4, %if.end35.snd_rme96_getinputtype.exit_crit_edge ]
  %21 = zext i32 %val.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %val.0, label %snd_rme96_getinputtype.exit.snd_rme96_setinputtype.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb12.i
    i32 4, label %sw.bb32.i
  ]

snd_rme96_getinputtype.exit.snd_rme96_setinputtype.exit_crit_edge: ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_setinputtype.exit

sw.bb.i:                                          ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg.i50 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %wcreg.i50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wcreg.i50, align 4
  %and1.i = and i32 %23, -393217
  store i32 %and1.i, ptr %wcreg.i50, align 4
  br label %land.lhs.true61.i

sw.bb3.i:                                         ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg4.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %wcreg4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wcreg4.i, align 4
  %or.i = and i32 %25, -393217
  %and5.i = or i32 %or.i, 131072
  store i32 %and5.i, ptr %wcreg4.i, align 4
  br label %land.lhs.true61.i

sw.bb7.i:                                         ; preds = %snd_rme96_getinputtype.exit
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg8.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %wcreg8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wcreg8.i, align 4
  %and9.i = and i32 %27, -393217
  %or10.i = or i32 %and9.i, 262144
  store i32 %or10.i, ptr %wcreg8.i, align 4
  br label %land.lhs.true61.i

sw.bb12.i:                                        ; preds = %snd_rme96_getinputtype.exit
  %28 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %device.i, align 2
  %32 = and i16 %31, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16322, i16 %32)
  %switch.i = icmp eq i16 %32, 16322
  br i1 %switch.i, label %lor.lhs.false.i, label %sw.bb12.i.snd_rme96_setinputtype.exit_crit_edge

sw.bb12.i.snd_rme96_setinputtype.exit_crit_edge:  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_setinputtype.exit

lor.lhs.false.i:                                  ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16323, i16 %31)
  %cmp22.i = icmp eq i16 %31, 16323
  br i1 %cmp22.i, label %land.lhs.true24.i, label %lor.lhs.false.i.if.end.i51_crit_edge

lor.lhs.false.i.if.end.i51_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i51

land.lhs.true24.i:                                ; preds = %lor.lhs.false.i
  %rev.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %34)
  %cmp26.i = icmp ugt i8 %34, 4
  br i1 %cmp26.i, label %land.lhs.true24.i.snd_rme96_setinputtype.exit_crit_edge, label %land.lhs.true24.i.if.end.i51_crit_edge

land.lhs.true24.i.if.end.i51_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i51

land.lhs.true24.i.snd_rme96_setinputtype.exit_crit_edge: ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_setinputtype.exit

if.end.i51:                                       ; preds = %land.lhs.true24.i.if.end.i51_crit_edge, %lor.lhs.false.i.if.end.i51_crit_edge
  %wcreg28.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %wcreg28.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wcreg28.i, align 4
  %or30.i = or i32 %36, 393216
  store i32 %or30.i, ptr %wcreg28.i, align 4
  br label %land.lhs.true61.i

sw.bb32.i:                                        ; preds = %snd_rme96_getinputtype.exit
  %37 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci, align 4
  %device34.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %device34.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device34.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16323, i16 %40)
  %cmp36.i = icmp eq i16 %40, 16323
  br i1 %cmp36.i, label %if.end39.i, label %sw.bb32.i.snd_rme96_setinputtype.exit_crit_edge

sw.bb32.i.snd_rme96_setinputtype.exit_crit_edge:  ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_setinputtype.exit

if.end39.i:                                       ; preds = %sw.bb32.i
  %or40.i = or i32 %18, 2
  %41 = ptrtoint ptr %areg.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or40.i, ptr %areg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !301
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %areg.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #11
  %iobase.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %44) #11, !srcloc !261
  %rev42.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %47 = ptrtoint ptr %rev42.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rev42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %48)
  %cmp44.i = icmp ult i8 %48, 4
  br i1 %cmp44.i, label %if.then46.i, label %if.end39.i.snd_rme96_setinputtype.exit_crit_edge

if.end39.i.snd_rme96_setinputtype.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_setinputtype.exit

if.then46.i:                                      ; preds = %if.end39.i
  %49 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %areg.i, align 4
  %and.i.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then46.i
  %shr.i.i = lshr i32 %50, 2
  %add.i.i = and i32 %shr.i.i, 3
  %switch.tableidx = add nsw i32 %add.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %51 = icmp ult i32 %switch.tableidx, 3
  br i1 %51, label %switch.lookup, label %if.then.i.i.if.end51.i_crit_edge

if.then.i.i.if.end51.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.end.i.i:                                       ; preds = %if.then46.i
  %52 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 131072
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !273
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %rcreg.i.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %56 = ptrtoint ptr %rcreg.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %rcreg.i.i, align 4
  %57 = and i32 %55, 1015021568
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %57)
  %58 = icmp eq i32 %57, 536870912
  br i1 %58, label %if.end.i.i.if.then49.i_crit_edge, label %if.end.i.i.if.end51.i_crit_edge

if.end.i.i.if.end51.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.end.i.i.if.then49.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49.i

switch.lookup:                                    ; preds = %if.then.i.i
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.snd_rme96_put_inputtype_control, i32 0, i32 %switch.tableidx
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and9.lobit.i.i = and i32 %shr.i.i, 1
  %cond.i.i = shl nuw nsw i32 %switch.load, %and9.lobit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %cond.i.i)
  %cmp47.i = icmp eq i32 %cond.i.i, 88200
  br i1 %cmp47.i, label %switch.lookup.if.then49.i_crit_edge, label %switch.lookup.if.end51.i_crit_edge

switch.lookup.if.end51.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

switch.lookup.if.then49.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49.i

if.then49.i:                                      ; preds = %switch.lookup.if.then49.i_crit_edge, %if.end.i.i.if.then49.i_crit_edge
  %60 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %areg.i, align 4
  %and5.i.i = and i32 %61, -29
  %or6.i.i = or i32 %and5.i.i, 8
  store i32 %or6.i.i, ptr %areg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !292
  tail call void @arm_heavy_mb() #11
  %62 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %areg.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #11
  %65 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %66, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %64) #11, !srcloc !261
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %switch.lookup.if.end51.i_crit_edge, %if.end.i.i.if.end51.i_crit_edge, %if.then.i.i.if.end51.i_crit_edge
  %67 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %areg.i, align 4
  %and.i5.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i)
  %tobool.not.i6.i = icmp eq i32 %and.i5.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i21.i, label %if.then.i9.i

if.then.i9.i:                                     ; preds = %if.end51.i
  %shr.i7.i = lshr i32 %68, 2
  %add.i8.i = and i32 %shr.i7.i, 3
  %switch.tableidx54 = add nsw i32 %add.i8.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx54)
  %69 = icmp ult i32 %switch.tableidx54, 3
  br i1 %69, label %switch.lookup53, label %if.then.i9.i.snd_rme96_setinputtype.exit_crit_edge

if.then.i9.i.snd_rme96_setinputtype.exit_crit_edge: ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_setinputtype.exit

if.end.i21.i:                                     ; preds = %if.end51.i
  %70 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %71, i32 131072
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #11, !srcloc !273
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %rcreg.i18.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %74 = ptrtoint ptr %rcreg.i18.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %rcreg.i18.i, align 4
  %75 = and i32 %73, 1015152640
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %75)
  %.not.i = icmp eq i32 %75, 131072
  br i1 %.not.i, label %if.end.i21.i.if.then55.i_crit_edge, label %if.end.i21.i.snd_rme96_setinputtype.exit_crit_edge

if.end.i21.i.snd_rme96_setinputtype.exit_crit_edge: ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_setinputtype.exit

if.end.i21.i.if.then55.i_crit_edge:               ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

switch.lookup53:                                  ; preds = %if.then.i9.i
  %switch.gep55 = getelementptr inbounds [3 x i32], ptr @switch.table.snd_rme96_put_inputtype_control.89, i32 0, i32 %switch.tableidx54
  %76 = ptrtoint ptr %switch.gep55 to i32
  call void @__asan_load4_noabort(i32 %76)
  %switch.load56 = load i32, ptr %switch.gep55, align 4
  %and9.lobit.i13.i = and i32 %shr.i7.i, 1
  %cond.i14.i = shl nuw nsw i32 %switch.load56, %and9.lobit.i13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %cond.i14.i)
  %cmp53.i = icmp eq i32 %cond.i14.i, 64000
  br i1 %cmp53.i, label %switch.lookup53.if.then55.i_crit_edge, label %switch.lookup53.snd_rme96_setinputtype.exit_crit_edge

switch.lookup53.snd_rme96_setinputtype.exit_crit_edge: ; preds = %switch.lookup53
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_setinputtype.exit

switch.lookup53.if.then55.i_crit_edge:            ; preds = %switch.lookup53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55.i

if.then55.i:                                      ; preds = %switch.lookup53.if.then55.i_crit_edge, %if.end.i21.i.if.then55.i_crit_edge
  %77 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %areg.i, align 4
  %or.i.i = and i32 %78, -29
  %and.i44.i = or i32 %or.i.i, 4
  store i32 %and.i44.i, ptr %areg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !292
  tail call void @arm_heavy_mb() #11
  %79 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %areg.i, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #11
  %82 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %83, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 %81) #11, !srcloc !261
  br label %snd_rme96_setinputtype.exit

land.lhs.true61.i:                                ; preds = %if.end.i51, %sw.bb7.i, %sw.bb3.i, %sw.bb.i
  %84 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci, align 4
  %device63.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %device63.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %device63.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16323, i16 %87)
  %cmp65.i = icmp eq i16 %87, 16323
  br i1 %cmp65.i, label %if.then67.i, label %land.lhs.true61.i.do.body77.i_crit_edge

land.lhs.true61.i.do.body77.i_crit_edge:          ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77.i

if.then67.i:                                      ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %areg.i, align 4
  %and69.i = and i32 %89, -3
  store i32 %and69.i, ptr %areg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !302
  tail call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %areg.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #11
  %iobase74.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %93 = ptrtoint ptr %iobase74.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %iobase74.i, align 4
  %add.ptr75.i = getelementptr i8, ptr %94, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 %92) #11, !srcloc !261
  br label %do.body77.i

do.body77.i:                                      ; preds = %if.then67.i, %land.lhs.true61.i.do.body77.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !303
  tail call void @arm_heavy_mb() #11
  %wcreg80.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %95 = ptrtoint ptr %wcreg80.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %wcreg80.i, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #11
  %iobase81.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %98 = ptrtoint ptr %iobase81.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %iobase81.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %99, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 %97) #11, !srcloc !261
  br label %snd_rme96_setinputtype.exit

snd_rme96_setinputtype.exit:                      ; preds = %do.body77.i, %if.then55.i, %switch.lookup53.snd_rme96_setinputtype.exit_crit_edge, %if.end.i21.i.snd_rme96_setinputtype.exit_crit_edge, %if.then.i9.i.snd_rme96_setinputtype.exit_crit_edge, %if.end39.i.snd_rme96_setinputtype.exit_crit_edge, %sw.bb32.i.snd_rme96_setinputtype.exit_crit_edge, %land.lhs.true24.i.snd_rme96_setinputtype.exit_crit_edge, %sw.bb12.i.snd_rme96_setinputtype.exit_crit_edge, %snd_rme96_getinputtype.exit.snd_rme96_setinputtype.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %retval.0.i)
  %cmp36 = icmp ne i32 %val.0, %retval.0.i
  %conv37 = zext i1 %cmp36 to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_get_loopback_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg, align 4
  %and = lshr i32 %3, 14
  %and.lobit = and i32 %and, 1
  %4 = xor i32 %and.lobit, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_put_loopback_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 16384, i32 0
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcreg, align 4
  %and = and i32 %5, -16385
  %or = or i32 %and, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %5)
  %cmp = icmp ne i32 %or, %5
  %conv = zext i1 %cmp to i32
  %6 = ptrtoint ptr %wcreg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !304
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #11, !srcloc !261
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_info_clockmode_control(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @snd_rme96_info_clockmode_control.texts) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_get_clockmode_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.snd_rme96_getclockmode.exit_crit_edge

entry.snd_rme96_getclockmode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_getclockmode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcreg.i, align 4
  %and1.i = lshr i32 %5, 15
  %and1.lobit.i = and i32 %and1.i, 1
  br label %snd_rme96_getclockmode.exit

snd_rme96_getclockmode.exit:                      ; preds = %if.end.i, %entry.snd_rme96_getclockmode.exit_crit_edge
  %retval.0.i = phi i32 [ %and1.lobit.i, %if.end.i ], [ 2, %entry.snd_rme96_getclockmode.exit_crit_edge ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_put_clockmode_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %rem = urem i32 %3, 3
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.snd_rme96_getclockmode.exit_crit_edge

entry.snd_rme96_getclockmode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_getclockmode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wcreg.i, align 4
  %and1.i = lshr i32 %7, 15
  %and1.lobit.i = and i32 %and1.i, 1
  br label %snd_rme96_getclockmode.exit

snd_rme96_getclockmode.exit:                      ; preds = %if.end.i, %entry.snd_rme96_getclockmode.exit_crit_edge
  %retval.0.i = phi i32 [ %and1.lobit.i, %if.end.i ], [ 2, %entry.snd_rme96_getclockmode.exit_crit_edge ]
  %8 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %rem, label %snd_rme96_getclockmode.exit.snd_rme96_setclockmode.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

snd_rme96_getclockmode.exit.snd_rme96_setclockmode.exit_crit_edge: ; preds = %snd_rme96_getclockmode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_setclockmode.exit

sw.bb.i:                                          ; preds = %snd_rme96_getclockmode.exit
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg.i7 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %wcreg.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wcreg.i7, align 4
  %and.i8 = and i32 %10, -32769
  store i32 %and.i8, ptr %wcreg.i7, align 4
  %and1.i10 = and i32 %5, -2
  br label %do.body.i

sw.bb2.i:                                         ; preds = %snd_rme96_getclockmode.exit
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg3.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcreg3.i, align 4
  %or.i = or i32 %12, 32768
  store i32 %or.i, ptr %wcreg3.i, align 4
  %and5.i = and i32 %5, -2
  br label %do.body.i

sw.bb6.i:                                         ; preds = %snd_rme96_getclockmode.exit
  call void @__sanitizer_cov_trace_pc() #13
  %wcreg7.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %wcreg7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wcreg7.i, align 4
  %or8.i = or i32 %14, 32768
  store i32 %or8.i, ptr %wcreg7.i, align 4
  %or10.i = or i32 %5, 1
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  %or10.i.sink = phi i32 [ %or10.i, %sw.bb6.i ], [ %and5.i, %sw.bb2.i ], [ %and1.i10, %sw.bb.i ]
  %15 = ptrtoint ptr %areg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or10.i.sink, ptr %areg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !305
  tail call void @arm_heavy_mb() #11
  %wcreg11.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %wcreg11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wcreg11.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %iobase.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #11, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !306
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %areg.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %25, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %23) #11, !srcloc !261
  br label %snd_rme96_setclockmode.exit

snd_rme96_setclockmode.exit:                      ; preds = %do.body.i, %snd_rme96_getclockmode.exit.snd_rme96_setclockmode.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %retval.0.i)
  %cmp = icmp ne i32 %rem, %retval.0.i
  %conv = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_info_montracks_control(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_rme96_info_montracks_control.texts) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_get_montracks_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg.i, align 4
  %shr.i = lshr i32 %3, 28
  %add.i = and i32 %shr.i, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.i, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_put_montracks_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %rem = and i32 %3, 3
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcreg.i, align 4
  %shr.i = lshr i32 %5, 28
  %add.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %add.i)
  %cmp = icmp ne i32 %rem, %add.i
  %conv = zext i1 %cmp to i32
  %and2.i = and i32 %5, -805306369
  %and.i = shl nuw nsw i32 %rem, 28
  %6 = and i32 %and.i, 268435456
  %and2.sink.i = or i32 %and2.i, %6
  %7 = and i32 %and.i, 536870912
  %or7.sink.i = or i32 %and2.sink.i, %7
  %8 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or7.sink.i, ptr %wcreg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !307
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wcreg.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  %iobase.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #11, !srcloc !261
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_info_attenuation_control(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_rme96_info_attenuation_control.texts) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_get_attenuation_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg.i, align 4
  %shr.i = lshr i32 %3, 2
  %add.i = and i32 %shr.i, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.i, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_put_attenuation_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %rem = and i32 %3, 3
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcreg.i, align 4
  %6 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %rem, label %entry.unreachabledefault [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb12.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i = and i32 %5, -13
  br label %do.body.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = and i32 %5, -13
  %and5.i = or i32 %or.i, 4
  br label %do.body.i

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and9.i = and i32 %5, -13
  %or10.i = or i32 %and9.i, 8
  br label %do.body.i

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or15.i = or i32 %5, 12
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb12.i, %sw.bb7.i, %sw.bb3.i, %sw.bb.i
  %or15.i.sink = phi i32 [ %or15.i, %sw.bb12.i ], [ %or10.i, %sw.bb7.i ], [ %and5.i, %sw.bb3.i ], [ %and1.i, %sw.bb.i ]
  %7 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or15.i.sink, ptr %wcreg.i, align 4
  %shr.i = lshr i32 %5, 2
  %add.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %add.i)
  %cmp = icmp ne i32 %rem, %add.i
  %conv = zext i1 %cmp to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wcreg.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  %iobase.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #11, !srcloc !261
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv

entry.unreachabledefault:                         ; preds = %entry
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_rme96_dac_volume_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %pci = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %9 = and i16 %8, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16322, i16 %9)
  %switch = icmp eq i16 %9, 16322
  br i1 %switch, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rev = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp8 = icmp ugt i8 %11, 3
  %phi.sel = select i1 %cmp8, i32 14, i32 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.sel, %land.rhs ], [ 10, %entry.land.end_crit_edge ]
  %notmask = shl nsw i32 -1, %12
  %sub = xor i32 %notmask, -1
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_dac_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %vol = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %vol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vol, align 4
  %conv = zext i16 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %u, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.rme96, ptr %1, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %6 to i32
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv4, ptr %arrayidx6, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme96_dac_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pci = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %6 = and i16 %5, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16322, i16 %6)
  %switch = icmp eq i16 %6, 16322
  br i1 %switch, label %land.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.end:                                         ; preds = %entry
  %rev = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp19 = icmp ugt i8 %8, 3
  %sub = select i1 %cmp19, i32 16383, i32 1023
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %u, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %vol21 = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %vol21 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vol21, align 4
  %conv23 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv23)
  %cmp24.not = icmp eq i32 %10, %conv23
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub)
  %cmp26.not = icmp ugt i32 %10, %sub
  %or.cond = select i1 %cmp24.not, i1 true, i1 %cmp26.not
  br i1 %or.cond, label %if.end32, label %if.end32.thread

if.end32:                                         ; preds = %land.end
  %arrayidx34 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr %struct.rme96, ptr %1, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv37)
  %cmp38.not = icmp eq i32 %14, %conv37
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub)
  %cmp41.not = icmp ugt i32 %14, %sub
  %or.cond74 = select i1 %cmp38.not, i1 true, i1 %cmp41.not
  br i1 %or.cond74, label %if.end32.if.end49_crit_edge, label %if.end32.if.end47.thread_crit_edge

if.end32.if.end47.thread_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.thread

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.end32.thread:                                  ; preds = %land.end
  %conv29 = trunc i32 %10 to i16
  %17 = ptrtoint ptr %vol21 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv29, ptr %vol21, align 4
  %arrayidx3482 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx3482 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3482, align 4
  %arrayidx3683 = getelementptr %struct.rme96, ptr %1, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %arrayidx3683 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx3683, align 2
  %conv3784 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv3784)
  %cmp38.not85 = icmp eq i32 %19, %conv3784
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub)
  %cmp41.not86 = icmp ugt i32 %19, %sub
  %or.cond7487 = select i1 %cmp38.not85, i1 true, i1 %cmp41.not86
  br i1 %or.cond7487, label %if.end32.thread.if.then48_crit_edge, label %if.end32.thread.if.end47.thread_crit_edge

if.end32.thread.if.end47.thread_crit_edge:        ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.thread

if.end32.thread.if.then48_crit_edge:              ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

if.end47.thread:                                  ; preds = %if.end32.thread.if.end47.thread_crit_edge, %if.end32.if.end47.thread_crit_edge
  %arrayidx3688 = phi ptr [ %arrayidx3683, %if.end32.thread.if.end47.thread_crit_edge ], [ %arrayidx36, %if.end32.if.end47.thread_crit_edge ]
  %22 = phi i32 [ %19, %if.end32.thread.if.end47.thread_crit_edge ], [ %14, %if.end32.if.end47.thread_crit_edge ]
  %conv44 = trunc i32 %22 to i16
  %23 = ptrtoint ptr %arrayidx3688 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv44, ptr %arrayidx3688, align 2
  br label %if.then48

if.then48:                                        ; preds = %if.end47.thread, %if.end32.thread.if.then48_crit_edge
  %arrayidx3689 = phi ptr [ %arrayidx3688, %if.end47.thread ], [ %arrayidx3683, %if.end32.thread.if.then48_crit_edge ]
  %24 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device.i, align 2
  %28 = and i16 %27, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16322, i16 %28)
  %switch.i = icmp eq i16 %28, 16322
  br i1 %switch.i, label %land.lhs.true.i, label %if.then48.if.end49_crit_edge

if.then48.if.end49_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true.i:                                  ; preds = %if.then48
  %29 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp8.i = icmp ugt i8 %30, 3
  br i1 %cmp8.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %vol21 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vol21, align 4
  %shl.i = shl i16 %32, 2
  tail call fastcc void @snd_rme96_write_SPI(ptr noundef %1, i16 noundef zeroext %shl.i) #11
  %33 = ptrtoint ptr %arrayidx3689 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx3689, align 2
  %shl15.i = shl i16 %34, 2
  %or16.i = or i16 %shl15.i, 2
  br label %if.end51.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16323, i16 %27)
  %cmp21.i = icmp eq i16 %27, 16323
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp37.i = icmp eq i8 %30, 2
  %or.cond81 = select i1 %cmp21.i, i1 true, i1 %cmp37.i
  br i1 %or.cond81, label %if.then39.i, label %if.else.i.if.end49_crit_edge

if.else.i.if.end49_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %vol21 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vol21, align 4
  %37 = and i16 %36, 1023
  tail call fastcc void @snd_rme96_write_SPI(ptr noundef %1, i16 noundef zeroext %37) #11
  %38 = ptrtoint ptr %arrayidx3689 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx3689, align 2
  %40 = and i16 %39, 1023
  %41 = or i16 %40, 1024
  br label %if.end51.sink.split.i

if.end51.sink.split.i:                            ; preds = %if.then39.i, %if.then.i
  %.sink.i = phi i16 [ %41, %if.then39.i ], [ %or16.i, %if.then.i ]
  tail call fastcc void @snd_rme96_write_SPI(ptr noundef %1, i16 noundef zeroext %.sink.i) #11
  br label %if.end49

if.end49:                                         ; preds = %if.end51.sink.split.i, %if.else.i.if.end49_crit_edge, %if.then48.if.end49_crit_edge, %if.end32.if.end49_crit_edge
  %change.180 = phi i32 [ 1, %if.then48.if.end49_crit_edge ], [ 1, %if.end51.sink.split.i ], [ 1, %if.else.i.if.end49_crit_edge ], [ 0, %if.end32.if.end49_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %change.180, %if.end49 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_rme96_proc_read(ptr nocapture noundef readonly %entry1, ptr noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 131072
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !273
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  %rcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rcreg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rcreg, align 4
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %card = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef %longname) #11
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %add = add i32 %16, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.47, i32 noundef %add) #11
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.48) #11
  %wcreg = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wcreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool.not = icmp sgt i32 %20, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.49) #11
  br label %if.end15

if.else:                                          ; preds = %entry
  %and9 = and i32 %20, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.50) #11
  br label %if.end15

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.51) #11
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11, %if.then
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %26, ptr noundef nonnull @.str.52) #11
  %areg.i = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %areg.i, align 4
  %and.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %snd_rme96_getinputtype.exit, label %if.end15.sw.epilog_crit_edge

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

snd_rme96_getinputtype.exit:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wcreg, align 4
  %shr.i = lshr i32 %30, 17
  %add.i = and i32 %shr.i, 3
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.snd_rme96_proc_read, i32 0, i32 %add.i
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %snd_rme96_getinputtype.exit, %if.end15.sw.epilog_crit_edge
  %.str.57.sink = phi ptr [ @.str.57, %if.end15.sw.epilog_crit_edge ], [ %switch.load, %snd_rme96_getinputtype.exit ]
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull %.str.57.sink) #11
  %34 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %areg.i, align 4
  %and.i218 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i218)
  %tobool.not.i219 = icmp eq i32 %and.i218, 0
  br i1 %tobool.not.i219, label %if.end.i222, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog
  %shr.i220 = lshr i32 %35, 2
  %add.i221 = and i32 %shr.i220, 3
  %add.i221.off = add nsw i32 %add.i221, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i221.off)
  %switch = icmp ult i32 %add.i221.off, 3
  br i1 %switch, label %if.then.i.if.end36_crit_edge, label %if.then.i.if.then28_crit_edge

if.then.i.if.then28_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

if.then.i.if.end36_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end.i222:                                      ; preds = %sw.epilog
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 131072
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !273
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %40 = ptrtoint ptr %rcreg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rcreg, align 4
  %and14.i = and i32 %39, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %if.end.i222.if.end36_crit_edge

if.end.i222.if.end36_crit_edge:                   ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end22.i:                                       ; preds = %if.end.i222
  %and24.i = and i32 %39, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.if.then28_crit_edge

if.end22.i.if.then28_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

if.end27.i:                                       ; preds = %if.end22.i
  %shr29.i = lshr i32 %39, 27
  %add40.i = and i32 %shr29.i, 7
  %41 = zext i32 %add40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %add40.i, label %if.end27.i.if.then28_crit_edge [
    i32 0, label %sw.bb41.i
    i32 3, label %if.end27.i.if.end36_crit_edge
    i32 4, label %if.end27.i.if.end36_crit_edge352
    i32 5, label %if.end27.i.if.end36_crit_edge353
    i32 6, label %if.end27.i.if.end36_crit_edge354
    i32 7, label %if.end27.i.if.end36_crit_edge355
  ]

if.end27.i.if.end36_crit_edge355:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end27.i.if.end36_crit_edge354:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end27.i.if.end36_crit_edge353:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end27.i.if.end36_crit_edge352:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end27.i.if.end36_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end27.i.if.then28_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

sw.bb41.i:                                        ; preds = %if.end27.i
  %and43.i = and i32 %39, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %sw.bb41.i.if.then28_crit_edge, label %sw.bb41.i.if.end36_crit_edge

sw.bb41.i.if.end36_crit_edge:                     ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

sw.bb41.i.if.then28_crit_edge:                    ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

if.then28:                                        ; preds = %sw.bb41.i.if.then28_crit_edge, %if.end27.i.if.then28_crit_edge, %if.end22.i.if.then28_crit_edge, %if.then.i.if.then28_crit_edge
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.58) #11
  br label %if.end39

if.end36:                                         ; preds = %sw.bb41.i.if.end36_crit_edge, %if.end27.i.if.end36_crit_edge, %if.end27.i.if.end36_crit_edge352, %if.end27.i.if.end36_crit_edge353, %if.end27.i.if.end36_crit_edge354, %if.end27.i.if.end36_crit_edge355, %if.end.i222.if.end36_crit_edge, %if.then.i.if.end36_crit_edge
  %.str.60.sink = phi ptr [ @.str.59, %if.end.i222.if.end36_crit_edge ], [ @.str.60, %if.then.i.if.end36_crit_edge ], [ @.str.60, %if.end27.i.if.end36_crit_edge ], [ @.str.60, %if.end27.i.if.end36_crit_edge352 ], [ @.str.60, %if.end27.i.if.end36_crit_edge353 ], [ @.str.60, %if.end27.i.if.end36_crit_edge354 ], [ @.str.60, %sw.bb41.i.if.end36_crit_edge ], [ @.str.60, %if.end27.i.if.end36_crit_edge355 ]
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull %.str.60.sink) #11
  %46 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer, align 4
  %48 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %areg.i, align 4
  %and.i225 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i225)
  %tobool.not.i226 = icmp eq i32 %and.i225, 0
  br i1 %tobool.not.i226, label %if.end.i241, label %if.then.i229

if.then.i229:                                     ; preds = %if.end36
  %shr.i227 = lshr i32 %49, 2
  %add.i228 = and i32 %shr.i227, 3
  %switch.tableidx = add nsw i32 %add.i228, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %50 = icmp ult i32 %switch.tableidx, 3
  br i1 %50, label %switch.lookup, label %if.then.i229.snd_rme96_capture_getrate.exit262_crit_edge

if.then.i229.snd_rme96_capture_getrate.exit262_crit_edge: ; preds = %if.then.i229
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_capture_getrate.exit262

switch.lookup:                                    ; preds = %if.then.i229
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep340 = getelementptr inbounds [3 x i32], ptr @switch.table.snd_rme96_proc_read.90, i32 0, i32 %switch.tableidx
  %51 = ptrtoint ptr %switch.gep340 to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load341 = load i32, ptr %switch.gep340, align 4
  %and9.lobit.i233 = and i32 %shr.i227, 1
  %cond.i234 = shl nuw nsw i32 %switch.load341, %and9.lobit.i233
  br label %snd_rme96_capture_getrate.exit262

if.end.i241:                                      ; preds = %if.end36
  %52 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iobase, align 4
  %add.ptr.i237 = getelementptr i8, ptr %53, i32 131072
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237) #11, !srcloc !273
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %56 = ptrtoint ptr %rcreg to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %rcreg, align 4
  %and14.i239 = and i32 %55, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i239)
  %tobool15.not.i240 = icmp eq i32 %and14.i239, 0
  br i1 %tobool15.not.i240, label %if.end22.i248, label %if.then16.i245

if.then16.i245:                                   ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #13
  %and18.i242 = and i32 %55, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i242)
  %tobool19.not.i243 = icmp eq i32 %and18.i242, 0
  %..i244 = select i1 %tobool19.not.i243, i32 44100, i32 48000
  br label %snd_rme96_capture_getrate.exit262

if.end22.i248:                                    ; preds = %if.end.i241
  %and24.i246 = and i32 %55, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i246)
  %tobool25.not.i247 = icmp eq i32 %and24.i246, 0
  br i1 %tobool25.not.i247, label %if.end27.i251, label %if.end22.i248.snd_rme96_capture_getrate.exit262_crit_edge

if.end22.i248.snd_rme96_capture_getrate.exit262_crit_edge: ; preds = %if.end22.i248
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_capture_getrate.exit262

if.end27.i251:                                    ; preds = %if.end22.i248
  %shr29.i249 = lshr i32 %55, 27
  %add40.i250 = and i32 %shr29.i249, 7
  %57 = zext i32 %add40.i250 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %add40.i250, label %sw.epilog53.i260 [
    i32 0, label %sw.bb41.i255
    i32 3, label %if.end27.i251.snd_rme96_capture_getrate.exit262_crit_edge
    i32 4, label %sw.bb48.i256
    i32 5, label %sw.bb49.i257
    i32 6, label %sw.bb50.i258
    i32 7, label %sw.bb51.i259
  ]

if.end27.i251.snd_rme96_capture_getrate.exit262_crit_edge: ; preds = %if.end27.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_capture_getrate.exit262

sw.bb41.i255:                                     ; preds = %if.end27.i251
  call void @__sanitizer_cov_trace_pc() #13
  %and43.i252 = and i32 %55, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i252)
  %tobool44.not.i253 = icmp eq i32 %and43.i252, 0
  %.70.i254 = select i1 %tobool44.not.i253, i32 -1, i32 64000
  br label %snd_rme96_capture_getrate.exit262

sw.bb48.i256:                                     ; preds = %if.end27.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_capture_getrate.exit262

sw.bb49.i257:                                     ; preds = %if.end27.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_capture_getrate.exit262

sw.bb50.i258:                                     ; preds = %if.end27.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_capture_getrate.exit262

sw.bb51.i259:                                     ; preds = %if.end27.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_capture_getrate.exit262

sw.epilog53.i260:                                 ; preds = %if.end27.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_capture_getrate.exit262

snd_rme96_capture_getrate.exit262:                ; preds = %sw.epilog53.i260, %sw.bb51.i259, %sw.bb50.i258, %sw.bb49.i257, %sw.bb48.i256, %sw.bb41.i255, %if.end27.i251.snd_rme96_capture_getrate.exit262_crit_edge, %if.end22.i248.snd_rme96_capture_getrate.exit262_crit_edge, %if.then16.i245, %switch.lookup, %if.then.i229.snd_rme96_capture_getrate.exit262_crit_edge
  %retval.0.i261 = phi i32 [ %cond.i234, %switch.lookup ], [ -1, %sw.epilog53.i260 ], [ 32000, %sw.bb51.i259 ], [ 44100, %sw.bb50.i258 ], [ 48000, %sw.bb49.i257 ], [ 88200, %sw.bb48.i256 ], [ -1, %if.then.i229.snd_rme96_capture_getrate.exit262_crit_edge ], [ %..i244, %if.then16.i245 ], [ -1, %if.end22.i248.snd_rme96_capture_getrate.exit262_crit_edge ], [ %.70.i254, %sw.bb41.i255 ], [ 96000, %if.end27.i251.snd_rme96_capture_getrate.exit262_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %47, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i261) #11
  br label %if.end39

if.end39:                                         ; preds = %snd_rme96_capture_getrate.exit262, %if.then28
  %58 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wcreg, align 4
  %and41 = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer, align 4
  %.str.63..str.62 = select i1 %tobool42.not, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef nonnull %.str.63..str.62) #11
  %62 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %63, ptr noundef nonnull @.str.64) #11
  %64 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wcreg, align 4
  %and50 = and i32 %65, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %.str.66.sink = select i1 %tobool51.not, ptr @.str.66, ptr @.str.65
  %66 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %67, ptr noundef nonnull %.str.66.sink) #11
  %68 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer, align 4
  %70 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wcreg, align 4
  %and.i264 = and i32 %71, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i264)
  %tobool.not.i265 = icmp eq i32 %and.i264, 0
  br i1 %tobool.not.i265, label %land.lhs.true.i, label %if.end39.if.end4.i_crit_edge

if.end39.if.end4.i_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end39
  %72 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %areg.i, align 4
  %and.i.i = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_rme96_getinputtype.exit.i, label %land.lhs.true.i.if.end4.i_crit_edge

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

snd_rme96_getinputtype.exit.i:                    ; preds = %land.lhs.true.i
  %74 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iobase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 131072
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !273
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %78 = ptrtoint ptr %rcreg to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %rcreg, align 4
  %and14.i.i = and i32 %77, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end22.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %snd_rme96_getinputtype.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %and18.i.i = and i32 %77, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  %..i.i = select i1 %tobool19.not.i.i, i32 44100, i32 48000
  br label %snd_rme96_playback_getrate.exit

if.end22.i.i:                                     ; preds = %snd_rme96_getinputtype.exit.i
  %and24.i.i = and i32 %77, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end27.i.i, label %if.end22.i.i.if.end4.i_crit_edge

if.end22.i.i.if.end4.i_crit_edge:                 ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.end27.i.i:                                     ; preds = %if.end22.i.i
  %shr29.i.i = lshr i32 %77, 27
  %add40.i.i = and i32 %shr29.i.i, 7
  %79 = zext i32 %add40.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %add40.i.i, label %if.end27.i.i.if.end4.i_crit_edge [
    i32 0, label %sw.bb41.i.i
    i32 3, label %if.end27.i.i.snd_rme96_playback_getrate.exit_crit_edge
    i32 4, label %sw.bb48.i.i
    i32 5, label %sw.bb49.i.i
    i32 6, label %sw.bb50.i.i
    i32 7, label %sw.bb51.i.i
  ]

if.end27.i.i.snd_rme96_playback_getrate.exit_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_playback_getrate.exit

if.end27.i.i.if.end4.i_crit_edge:                 ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

sw.bb41.i.i:                                      ; preds = %if.end27.i.i
  %and43.i.i = and i32 %77, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  br i1 %tobool44.not.i.i, label %sw.bb41.i.i.if.end4.i_crit_edge, label %sw.bb41.i.i.snd_rme96_playback_getrate.exit_crit_edge

sw.bb41.i.i.snd_rme96_playback_getrate.exit_crit_edge: ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_playback_getrate.exit

sw.bb41.i.i.if.end4.i_crit_edge:                  ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

sw.bb48.i.i:                                      ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_playback_getrate.exit

sw.bb49.i.i:                                      ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_playback_getrate.exit

sw.bb50.i.i:                                      ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_playback_getrate.exit

sw.bb51.i.i:                                      ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_playback_getrate.exit

if.end4.i:                                        ; preds = %sw.bb41.i.i.if.end4.i_crit_edge, %if.end27.i.i.if.end4.i_crit_edge, %if.end22.i.i.if.end4.i_crit_edge, %land.lhs.true.i.if.end4.i_crit_edge, %if.end39.if.end4.i_crit_edge
  %80 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wcreg, align 4
  %shr.i266 = lshr i32 %81, 9
  %add.i267 = and i32 %shr.i266, 3
  %switch.tableidx343 = add nsw i32 %add.i267, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx343)
  %82 = icmp ult i32 %switch.tableidx343, 3
  br i1 %82, label %switch.lookup342, label %if.end4.i.snd_rme96_playback_getrate.exit_crit_edge

if.end4.i.snd_rme96_playback_getrate.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_rme96_playback_getrate.exit

switch.lookup342:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep344 = getelementptr inbounds [3 x i32], ptr @switch.table.snd_rme96_proc_read.91, i32 0, i32 %switch.tableidx343
  %83 = ptrtoint ptr %switch.gep344 to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load345 = load i32, ptr %switch.gep344, align 4
  %and13.i = lshr i32 %81, 11
  %and13.lobit.i = and i32 %and13.i, 1
  %cond.i269 = shl nuw nsw i32 %switch.load345, %and13.lobit.i
  br label %snd_rme96_playback_getrate.exit

snd_rme96_playback_getrate.exit:                  ; preds = %switch.lookup342, %if.end4.i.snd_rme96_playback_getrate.exit_crit_edge, %sw.bb51.i.i, %sw.bb50.i.i, %sw.bb49.i.i, %sw.bb48.i.i, %sw.bb41.i.i.snd_rme96_playback_getrate.exit_crit_edge, %if.end27.i.i.snd_rme96_playback_getrate.exit_crit_edge, %if.then16.i.i
  %retval.0.i271 = phi i32 [ %cond.i269, %switch.lookup342 ], [ -1, %if.end4.i.snd_rme96_playback_getrate.exit_crit_edge ], [ 96000, %if.end27.i.i.snd_rme96_playback_getrate.exit_crit_edge ], [ 64000, %sw.bb41.i.i.snd_rme96_playback_getrate.exit_crit_edge ], [ %..i.i, %if.then16.i.i ], [ 88200, %sw.bb48.i.i ], [ 48000, %sw.bb49.i.i ], [ 44100, %sw.bb50.i.i ], [ 32000, %sw.bb51.i.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i271) #11
  %84 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wcreg, align 4
  %and60 = and i32 %85, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %86 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buffer, align 4
  %.str.63..str.62339 = select i1 %tobool61.not, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %87, ptr noundef nonnull %.str.63..str.62339) #11
  %88 = ptrtoint ptr %areg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %areg.i, align 4
  %and67 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else71, label %snd_rme96_playback_getrate.exit.if.end92_crit_edge

snd_rme96_playback_getrate.exit.if.end92_crit_edge: ; preds = %snd_rme96_playback_getrate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.else71:                                        ; preds = %snd_rme96_playback_getrate.exit
  %90 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %wcreg, align 4
  %and73 = and i32 %91, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.else77, label %if.else71.if.end92_crit_edge

if.else71.if.end92_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.else77:                                        ; preds = %if.else71
  %and.i273 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i273)
  %tobool.not.i274 = icmp eq i32 %and.i273, 0
  br i1 %tobool.not.i274, label %snd_rme96_getinputtype.exit280, label %if.else77.if.end92_crit_edge

if.else77.if.end92_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

snd_rme96_getinputtype.exit280:                   ; preds = %if.else77
  %92 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iobase, align 4
  %add.ptr.i294 = getelementptr i8, ptr %93, i32 131072
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i294) #11, !srcloc !273
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  %96 = ptrtoint ptr %rcreg to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %rcreg, align 4
  %and14.i296 = and i32 %95, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i296)
  %tobool15.not.i297 = icmp eq i32 %and14.i296, 0
  br i1 %tobool15.not.i297, label %if.end22.i305, label %snd_rme96_getinputtype.exit280.if.else87_crit_edge

snd_rme96_getinputtype.exit280.if.else87_crit_edge: ; preds = %snd_rme96_getinputtype.exit280
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else87

if.end22.i305:                                    ; preds = %snd_rme96_getinputtype.exit280
  %and24.i303 = and i32 %95, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i303)
  %tobool25.not.i304 = icmp eq i32 %and24.i303, 0
  br i1 %tobool25.not.i304, label %if.end27.i308, label %if.end22.i305.if.end92_crit_edge

if.end22.i305.if.end92_crit_edge:                 ; preds = %if.end22.i305
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.end27.i308:                                    ; preds = %if.end22.i305
  %shr29.i306 = lshr i32 %95, 27
  %add40.i307 = and i32 %shr29.i306, 7
  %97 = zext i32 %add40.i307 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %add40.i307, label %if.end27.i308.if.end92_crit_edge [
    i32 0, label %sw.bb41.i312
    i32 3, label %if.end27.i308.if.else87_crit_edge
    i32 4, label %if.end27.i308.if.else87_crit_edge356
    i32 5, label %if.end27.i308.if.else87_crit_edge357
    i32 6, label %if.end27.i308.if.else87_crit_edge358
    i32 7, label %if.end27.i308.if.else87_crit_edge359
  ]

if.end27.i308.if.else87_crit_edge359:             ; preds = %if.end27.i308
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else87

if.end27.i308.if.else87_crit_edge358:             ; preds = %if.end27.i308
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else87

if.end27.i308.if.else87_crit_edge357:             ; preds = %if.end27.i308
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else87

if.end27.i308.if.else87_crit_edge356:             ; preds = %if.end27.i308
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else87

if.end27.i308.if.else87_crit_edge:                ; preds = %if.end27.i308
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else87

if.end27.i308.if.end92_crit_edge:                 ; preds = %if.end27.i308
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

sw.bb41.i312:                                     ; preds = %if.end27.i308
  %and43.i309 = and i32 %95, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i309)
  %tobool44.not.i310 = icmp eq i32 %and43.i309, 0
  br i1 %tobool44.not.i310, label %sw.bb41.i312.if.end92_crit_edge, label %sw.bb41.i312.if.else87_crit_edge

sw.bb41.i312.if.else87_crit_edge:                 ; preds = %sw.bb41.i312
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else87

sw.bb41.i312.if.end92_crit_edge:                  ; preds = %sw.bb41.i312
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.else87:                                        ; preds = %sw.bb41.i312.if.else87_crit_edge, %if.end27.i308.if.else87_crit_edge, %if.end27.i308.if.else87_crit_edge356, %if.end27.i308.if.else87_crit_edge357, %if.end27.i308.if.else87_crit_edge358, %if.end27.i308.if.else87_crit_edge359, %snd_rme96_getinputtype.exit280.if.else87_crit_edge
  br label %if.end92

if.end92:                                         ; preds = %if.else87, %sw.bb41.i312.if.end92_crit_edge, %if.end27.i308.if.end92_crit_edge, %if.end22.i305.if.end92_crit_edge, %if.else77.if.end92_crit_edge, %if.else71.if.end92_crit_edge, %snd_rme96_playback_getrate.exit.if.end92_crit_edge
  %.str.68.sink = phi ptr [ @.str.71, %if.else87 ], [ @.str.67, %snd_rme96_playback_getrate.exit.if.end92_crit_edge ], [ @.str.68, %if.else71.if.end92_crit_edge ], [ @.str.69, %if.else77.if.end92_crit_edge ], [ @.str.70, %sw.bb41.i312.if.end92_crit_edge ], [ @.str.70, %if.end27.i308.if.end92_crit_edge ], [ @.str.70, %if.end22.i305.if.end92_crit_edge ]
  %98 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %99, ptr noundef nonnull %.str.68.sink) #11
  %100 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %wcreg, align 4
  %and94 = and i32 %101, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %.str.73..str.72 = select i1 %tobool95.not, ptr @.str.73, ptr @.str.72
  %102 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %103, ptr noundef nonnull %.str.73..str.72) #11
  %104 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %wcreg, align 4
  %and102 = and i32 %105, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %.str.75.sink = select i1 %tobool103.not, ptr @.str.75, ptr @.str.74
  %106 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %107, ptr noundef nonnull %.str.75.sink) #11
  %108 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %wcreg, align 4
  %and110 = and i32 %109, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  %.str.77.sink = select i1 %tobool111.not, ptr @.str.77, ptr @.str.76
  %110 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %111, ptr noundef nonnull %.str.77.sink) #11
  %pci = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 24
  %112 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16323, i16 %115)
  %cmp117 = icmp eq i16 %115, 16323
  br i1 %cmp117, label %if.then119, label %if.end92.if.end147_crit_edge

if.end92.if.end147_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then119:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %117, ptr noundef nonnull @.str.78) #11
  %118 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %wcreg, align 4
  %shr.i321 = lshr i32 %119, 28
  %add.i322 = and i32 %shr.i321, 3
  %switch.gep347 = getelementptr inbounds [4 x ptr], ptr @switch.table.snd_rme96_proc_read.92, i32 0, i32 %add.i322
  %120 = ptrtoint ptr %switch.gep347 to i32
  call void @__asan_load4_noabort(i32 %120)
  %switch.load348 = load ptr, ptr %switch.gep347, align 4
  %121 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %122, ptr noundef nonnull %switch.load348) #11
  %123 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %wcreg, align 4
  %shr.i324 = lshr i32 %124, 2
  %add.i325 = and i32 %shr.i324, 3
  %switch.gep350 = getelementptr inbounds [4 x ptr], ptr @switch.table.snd_rme96_proc_read.93, i32 0, i32 %add.i325
  %125 = ptrtoint ptr %switch.gep350 to i32
  call void @__asan_load4_noabort(i32 %125)
  %switch.load351 = load ptr, ptr %switch.gep350, align 4
  %126 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %127, ptr noundef nonnull %switch.load351) #11
  %128 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %buffer, align 4
  %vol = getelementptr inbounds %struct.rme96, ptr %1, i32 0, i32 9
  %130 = ptrtoint ptr %vol to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %vol, align 4
  %conv142 = zext i16 %131 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %129, ptr noundef nonnull @.str.87, i32 noundef %conv142) #11
  %132 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %buffer, align 4
  %arrayidx145 = getelementptr %struct.rme96, ptr %1, i32 0, i32 9, i32 1
  %134 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx145, align 2
  %conv146 = zext i16 %135 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %133, ptr noundef nonnull @.str.88, i32 noundef %conv146) #11
  br label %if.end147

if.end147:                                        ; preds = %if.then119, %if.end92.if.end147_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rme96_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %iobase = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 131072
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !310
  %8 = and i32 %7, -65536
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %playback_pointer = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %playback_pointer to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %playback_pointer, align 4
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 196608
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  %14 = and i32 %13, -65536
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %capture_pointer = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %capture_pointer to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %capture_pointer, align 4
  %playback_suspend_buffer = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 13
  %17 = ptrtoint ptr %playback_suspend_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %playback_suspend_buffer, align 4
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase, align 4
  tail call void @mmiocpy(ptr noundef %18, ptr noundef %20, i32 noundef 65536) #11
  %capture_suspend_buffer = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 14
  %21 = ptrtoint ptr %capture_suspend_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %capture_suspend_buffer, align 4
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase, align 4
  %add.ptr14 = getelementptr i8, ptr %24, i32 65536
  tail call void @mmiocpy(ptr noundef %22, ptr noundef %add.ptr14, i32 noundef 65536) #11
  %areg = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %areg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %areg, align 4
  %and15 = and i32 %26, -65
  store i32 %and15, ptr %areg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %areg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %areg, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase, align 4
  %add.ptr18 = getelementptr i8, ptr %31, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %29) #11, !srcloc !261
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rme96_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %iobase = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 262144
  %playback_pointer = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %playback_pointer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %playback_pointer, align 4
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #11, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !314
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 327680
  %capture_pointer = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %capture_pointer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capture_pointer, align 4
  %add.ptr7 = getelementptr i8, ptr %add.ptr6, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #11, !srcloc !261
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase, align 4
  %playback_suspend_buffer = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %playback_suspend_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %playback_suspend_buffer, align 4
  tail call void @mmiocpy(ptr noundef %13, ptr noundef %15, i32 noundef 65536) #11
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 65536
  %capture_suspend_buffer = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 14
  %18 = ptrtoint ptr %capture_suspend_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %capture_suspend_buffer, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr11, ptr noundef %19, i32 noundef 65536) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %areg = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %areg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %areg, align 4
  %or = or i32 %21, 32
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase, align 4
  %add.ptr16 = getelementptr i8, ptr %24, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %22) #11, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %areg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %areg, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase, align 4
  %add.ptr22 = getelementptr i8, ptr %29, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %27) #11, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !265
  tail call void @arm_heavy_mb() #11
  %wcreg.i = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wcreg.i, align 4
  %or.i = or i32 %31, 65536
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %33 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iobase, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #11, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wcreg.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #11
  %38 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iobase, align 4
  %add.ptr5.i = getelementptr i8, ptr %39, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %37) #11, !srcloc !261
  %40 = ptrtoint ptr %areg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %areg, align 4
  %or24 = or i32 %41, 64
  store i32 %or24, ptr %areg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !317
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %areg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %areg, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase, align 4
  %add.ptr30 = getelementptr i8, ptr %46, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %44) #11, !srcloc !261
  %pci = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 24
  %47 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %device, align 2
  %51 = and i16 %50, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16322, i16 %51)
  %switch = icmp eq i16 %51, 16322
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 10000, i32 noundef 2) #11
  %52 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %device.i, align 2
  %56 = and i16 %55, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16322, i16 %56)
  %switch.i = icmp eq i16 %56, 16322
  br i1 %switch.i, label %land.lhs.true.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %rev.i = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 10
  %57 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %cmp8.i = icmp ugt i8 %58, 3
  br i1 %cmp8.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %vol.i = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 9
  %59 = ptrtoint ptr %vol.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vol.i, align 4
  %shl.i = shl i16 %60, 2
  tail call fastcc void @snd_rme96_write_SPI(ptr noundef %3, i16 noundef zeroext %shl.i) #11
  %arrayidx13.i = getelementptr %struct.rme96, ptr %3, i32 0, i32 9, i32 1
  %61 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx13.i, align 2
  %shl15.i = shl i16 %62, 2
  %or16.i = or i16 %shl15.i, 2
  br label %if.end51.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16323, i16 %55)
  %cmp21.i = icmp eq i16 %55, 16323
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %58)
  %cmp37.i = icmp eq i8 %58, 2
  %or.cond = select i1 %cmp21.i, i1 true, i1 %cmp37.i
  br i1 %or.cond, label %if.then39.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %vol40.i = getelementptr inbounds %struct.rme96, ptr %3, i32 0, i32 9
  %63 = ptrtoint ptr %vol40.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vol40.i, align 4
  %65 = and i16 %64, 1023
  tail call fastcc void @snd_rme96_write_SPI(ptr noundef %3, i16 noundef zeroext %65) #11
  %arrayidx46.i = getelementptr %struct.rme96, ptr %3, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx46.i, align 2
  %68 = and i16 %67, 1023
  %69 = or i16 %68, 1024
  br label %if.end51.sink.split.i

if.end51.sink.split.i:                            ; preds = %if.then39.i, %if.then.i
  %.sink.i = phi i16 [ %69, %if.then39.i ], [ %or16.i, %if.then.i ]
  tail call fastcc void @snd_rme96_write_SPI(ptr noundef %3, i16 noundef zeroext %.sink.i) #11
  br label %if.end

if.end:                                           ; preds = %if.end51.sink.split.i, %if.else.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %70 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !66, !67, !68, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/rme96.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/rme96.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/rme96.c", i32 33, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/rme96.c", i32 39, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/rme96.c", i32 40, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/rme96.c", i32 41, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/rme96.c", i32 42, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/rme96.c", i32 43, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/rme96.c", i32 44, i32 1}
!22 = !{ptr @__initcall__kmod_snd_rme96__252_2510_rme96_driver_init6, !23, !"__initcall__kmod_snd_rme96__252_2510_rme96_driver_init6", i1 false, i1 false}
!23 = !{!"../sound/pci/rme96.c", i32 2510, i32 1}
!24 = !{ptr @__exitcall_rme96_driver_exit, !23, !"__exitcall_rme96_driver_exit", i1 false, i1 false}
!25 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!26 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!27 = !{ptr @index, !28, !"index", i1 false, i1 false}
!28 = !{!"../sound/pci/rme96.c", i32 35, i32 12}
!29 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!30 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!31 = !{ptr @id, !32, !"id", i1 false, i1 false}
!32 = !{!"../sound/pci/rme96.c", i32 36, i32 14}
!33 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!34 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!35 = !{ptr @enable, !36, !"enable", i1 false, i1 false}
!36 = !{!"../sound/pci/rme96.c", i32 37, i32 13}
!37 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rme96_driver, !39, !"rme96_driver", i1 false, i1 false}
!39 = !{!"../sound/pci/rme96.c", i32 2501, i32 26}
!40 = !{ptr @snd_rme96_ids, !41, !"snd_rme96_ids", i1 false, i1 false}
!41 = !{!"../sound/pci/rme96.c", i32 246, i32 35}
!42 = !{ptr @snd_rme96_probe.dev, !43, !"dev", i1 false, i1 false}
!43 = !{!"../sound/pci/rme96.c", i32 2436, i32 13}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/rme96.c", i32 2470, i32 23}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/rme96.c", i32 2473, i32 27}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/rme96.c", i32 2476, i32 27}
!50 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/rme96.c", i32 2479, i32 27}
!52 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/rme96.c", i32 2484, i32 28}
!54 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/rme96.c", i32 2486, i32 28}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/rme96.c", i32 2490, i32 26}
!58 = !{ptr @snd_rme96_create.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../sound/pci/rme96.c", i32 1599, i32 2}
!60 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/rme96.c", i32 1605, i32 33}
!63 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/rme96.c", i32 1612, i32 3}
!65 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @snd_rme96_create._entry, !64, !"_entry", i1 false, i1 false}
!70 = !{ptr @snd_rme96_create._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/rme96.c", i32 1620, i32 3}
!73 = !{ptr @snd_rme96_create._entry.15, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @snd_rme96_create._entry_ptr.17, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/rme96.c", i32 1630, i32 33}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/rme96.c", i32 1648, i32 34}
!79 = !{ptr @snd_rme96_playback_spdif_ops, !80, !"snd_rme96_playback_spdif_ops", i1 false, i1 false}
!80 = !{!"../sound/pci/rme96.c", i32 1514, i32 33}
!81 = !{ptr @snd_rme96_playback_spdif_info, !82, !"snd_rme96_playback_spdif_info", i1 false, i1 false}
!82 = !{!"../sound/pci/rme96.c", i32 368, i32 38}
!83 = !{ptr @hw_constraints_period_bytes, !84, !"hw_constraints_period_bytes", i1 false, i1 false}
!84 = !{!"../sound/pci/rme96.c", i32 1154, i32 48}
!85 = !{ptr @period_bytes, !86, !"period_bytes", i1 false, i1 false}
!86 = !{!"../sound/pci/rme96.c", i32 1152, i32 27}
!87 = !{ptr @.str.20, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/rme96.c", i32 967, i32 3}
!89 = !{ptr @snd_rme96_capture_spdif_ops, !90, !"snd_rme96_capture_spdif_ops", i1 false, i1 false}
!90 = !{!"../sound/pci/rme96.c", i32 1527, i32 33}
!91 = !{ptr @snd_rme96_capture_spdif_info, !92, !"snd_rme96_capture_spdif_info", i1 false, i1 false}
!92 = !{!"../sound/pci/rme96.c", i32 399, i32 38}
!93 = !{ptr @snd_rme96_playback_adat_ops, !94, !"snd_rme96_playback_adat_ops", i1 false, i1 false}
!94 = !{!"../sound/pci/rme96.c", i32 1539, i32 33}
!95 = !{ptr @snd_rme96_playback_adat_info, !96, !"snd_rme96_playback_adat_info", i1 false, i1 false}
!96 = !{!"../sound/pci/rme96.c", i32 430, i32 38}
!97 = !{ptr @snd_rme96_capture_adat_ops, !98, !"snd_rme96_capture_adat_ops", i1 false, i1 false}
!98 = !{!"../sound/pci/rme96.c", i32 1552, i32 33}
!99 = !{ptr @snd_rme96_capture_adat_info, !100, !"snd_rme96_capture_adat_info", i1 false, i1 false}
!100 = !{!"../sound/pci/rme96.c", i32 457, i32 38}
!101 = !{ptr @.str.21, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/rme96.c", i32 2250, i32 11}
!103 = !{ptr @.str.22, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/rme96.c", i32 2258, i32 11}
!105 = !{ptr @.str.23, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/rme96.c", i32 2266, i32 11}
!107 = !{ptr @.str.24, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/rme96.c", i32 2276, i32 11}
!109 = !{ptr @.str.25, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/pci/rme96.c", i32 2285, i32 18}
!111 = !{ptr @.str.26, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/rme96.c", i32 2292, i32 18}
!113 = !{ptr @.str.27, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/rme96.c", i32 2299, i32 18}
!115 = !{ptr @.str.28, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/pci/rme96.c", i32 2306, i32 18}
!117 = !{ptr @.str.29, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/rme96.c", i32 2313, i32 18}
!119 = !{ptr @.str.30, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/rme96.c", i32 2320, i32 18}
!121 = !{ptr @snd_rme96_controls, !122, !"snd_rme96_controls", i1 false, i1 false}
!122 = !{!"../sound/pci/rme96.c", i32 2247, i32 38}
!123 = !{ptr @.str.31, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/rme96.c", i32 1885, i32 3}
!125 = !{ptr @.str.32, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/rme96.c", i32 1885, i32 14}
!127 = !{ptr @.str.33, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/rme96.c", i32 1885, i32 25}
!129 = !{ptr @.str.34, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/rme96.c", i32 1885, i32 37}
!131 = !{ptr @.str.35, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/rme96.c", i32 1885, i32 44}
!133 = distinct !{null, !134, !"_texts", i1 false, i1 false}
!134 = !{!"../sound/pci/rme96.c", i32 1884, i32 28}
!135 = !{ptr @.str.36, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/rme96.c", i32 2001, i32 41}
!137 = !{ptr @.str.37, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/rme96.c", i32 2001, i32 65}
!139 = !{ptr @snd_rme96_info_clockmode_control.texts, !140, !"texts", i1 false, i1 false}
!140 = !{!"../sound/pci/rme96.c", i32 2001, i32 28}
!141 = !{ptr @.str.38, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/rme96.c", i32 2068, i32 41}
!143 = !{ptr @.str.39, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/rme96.c", i32 2068, i32 48}
!145 = !{ptr @.str.40, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/pci/rme96.c", i32 2068, i32 55}
!147 = !{ptr @.str.41, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/rme96.c", i32 2068, i32 62}
!149 = !{ptr @snd_rme96_info_montracks_control.texts, !150, !"texts", i1 false, i1 false}
!150 = !{!"../sound/pci/rme96.c", i32 2068, i32 28}
!151 = !{ptr @.str.42, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/rme96.c", i32 2034, i32 3}
!153 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/rme96.c", i32 2034, i32 11}
!155 = !{ptr @.str.44, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/rme96.c", i32 2034, i32 20}
!157 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/rme96.c", i32 2034, i32 30}
!159 = !{ptr @snd_rme96_info_attenuation_control.texts, !160, !"texts", i1 false, i1 false}
!160 = !{!"../sound/pci/rme96.c", i32 2033, i32 28}
!161 = !{ptr @.str.46, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/rme96.c", i32 1845, i32 36}
!163 = !{ptr @.str.47, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/rme96.c", i32 1723, i32 2}
!165 = !{ptr @.str.48, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/rme96.c", i32 1725, i32 2}
!167 = !{ptr @.str.49, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/rme96.c", i32 1727, i32 3}
!169 = !{ptr @.str.50, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/rme96.c", i32 1730, i32 3}
!171 = !{ptr @.str.51, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/rme96.c", i32 1732, i32 3}
!173 = !{ptr @.str.52, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/rme96.c", i32 1734, i32 2}
!175 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/rme96.c", i32 1737, i32 3}
!177 = !{ptr @.str.54, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/rme96.c", i32 1740, i32 3}
!179 = !{ptr @.str.55, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/rme96.c", i32 1743, i32 3}
!181 = !{ptr @.str.56, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/rme96.c", i32 1746, i32 3}
!183 = !{ptr @.str.57, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/rme96.c", i32 1749, i32 3}
!185 = !{ptr @.str.58, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/rme96.c", i32 1753, i32 3}
!187 = !{ptr @.str.59, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/rme96.c", i32 1756, i32 4}
!189 = !{ptr @.str.60, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/rme96.c", i32 1758, i32 4}
!191 = !{ptr @.str.61, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/rme96.c", i32 1760, i32 3}
!193 = !{ptr @.str.62, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/rme96.c", i32 1764, i32 3}
!195 = !{ptr @.str.63, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/pci/rme96.c", i32 1766, i32 3}
!197 = !{ptr @.str.64, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/rme96.c", i32 1769, i32 2}
!199 = !{ptr @.str.65, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/rme96.c", i32 1771, i32 3}
!201 = !{ptr @.str.66, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/rme96.c", i32 1773, i32 3}
!203 = !{ptr @.str.67, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/rme96.c", i32 1783, i32 3}
!205 = !{ptr @.str.68, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/pci/rme96.c", i32 1785, i32 3}
!207 = !{ptr @.str.69, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/rme96.c", i32 1787, i32 3}
!209 = !{ptr @.str.70, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/pci/rme96.c", i32 1789, i32 3}
!211 = !{ptr @.str.71, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/rme96.c", i32 1791, i32 3}
!213 = !{ptr @.str.72, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/pci/rme96.c", i32 1794, i32 3}
!215 = !{ptr @.str.73, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/rme96.c", i32 1796, i32 3}
!217 = !{ptr @.str.74, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/pci/rme96.c", i32 1799, i32 3}
!219 = !{ptr @.str.75, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/rme96.c", i32 1801, i32 3}
!221 = !{ptr @.str.76, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/pci/rme96.c", i32 1804, i32 3}
!223 = !{ptr @.str.77, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/rme96.c", i32 1806, i32 3}
!225 = !{ptr @.str.78, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/pci/rme96.c", i32 1809, i32 3}
!227 = !{ptr @.str.79, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/rme96.c", i32 1812, i32 4}
!229 = !{ptr @.str.80, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/pci/rme96.c", i32 1815, i32 4}
!231 = !{ptr @.str.81, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/rme96.c", i32 1818, i32 4}
!233 = !{ptr @.str.82, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/pci/rme96.c", i32 1821, i32 4}
!235 = !{ptr @.str.83, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/pci/rme96.c", i32 1826, i32 4}
!237 = !{ptr @.str.84, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/pci/rme96.c", i32 1829, i32 4}
!239 = !{ptr @.str.85, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/pci/rme96.c", i32 1832, i32 4}
!241 = !{ptr @.str.86, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/rme96.c", i32 1835, i32 4}
!243 = !{ptr @.str.87, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/rme96.c", i32 1838, i32 3}
!245 = !{ptr @.str.88, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/rme96.c", i32 1839, i32 3}
!247 = !{ptr @rme96_pm, !248, !"rme96_pm", i1 false, i1 false}
!248 = !{!"../sound/pci/rme96.c", i32 2421, i32 8}
!249 = !{i32 1, !"wchar_size", i32 2}
!250 = !{i32 1, !"min_enum_size", i32 4}
!251 = !{i32 8, !"branch-target-enforcement", i32 0}
!252 = !{i32 8, !"sign-return-address", i32 0}
!253 = !{i32 8, !"sign-return-address-all", i32 0}
!254 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!255 = !{i32 7, !"uwtable", i32 1}
!256 = !{i32 7, !"frame-pointer", i32 2}
!257 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!258 = !{!"auto-init"}
!259 = !{i8 0, i8 2}
!260 = !{i64 2154824859}
!261 = !{i64 4274614}
!262 = !{i64 2154825303}
!263 = !{i64 2154825764}
!264 = !{i64 2154826238}
!265 = !{i64 2154793654}
!266 = !{i64 2154794135}
!267 = !{i64 2154826688}
!268 = !{i64 2154827119}
!269 = !{i64 2154827520}
!270 = !{i64 2154820394}
!271 = !{i64 2154802861}
!272 = !{i64 2154803265}
!273 = !{i64 4275032}
!274 = !{i64 2154803961}
!275 = !{i64 2154804197}
!276 = !{i64 2154804894}
!277 = !{i64 2154805130}
!278 = !{i64 2154805586}
!279 = !{i64 2154806312}
!280 = !{i64 2154806568}
!281 = !{i64 2154806979}
!282 = !{i64 2154807854}
!283 = !{i64 2154795891}
!284 = !{i64 2154796411}
!285 = !{i32 0, i32 33}
!286 = !{i64 2154800185}
!287 = !{i64 2154801682}
!288 = !{i64 2154802266}
!289 = !{i64 2154809437}
!290 = !{i64 2154786780}
!291 = !{i64 2154800714}
!292 = !{i64 2154797026}
!293 = !{i64 2154809993}
!294 = !{i64 2154787474}
!295 = !{i64 2154808427}
!296 = !{i64 2154789754}
!297 = !{i64 2154790746}
!298 = !{i64 2154791756}
!299 = !{i64 2154792748}
!300 = !{i64 2154836070}
!301 = !{i64 2154798647}
!302 = !{i64 2154799179}
!303 = !{i64 2154799621}
!304 = !{i64 2154833376}
!305 = !{i64 2154797534}
!306 = !{i64 2154797978}
!307 = !{i64 2154794626}
!308 = !{i64 2154795150}
!309 = !{i64 2154828372}
!310 = !{i64 2154839165}
!311 = !{i64 2154839690}
!312 = !{i64 2154840149}
!313 = !{i64 2154840606}
!314 = !{i64 2154841058}
!315 = !{i64 2154841717}
!316 = !{i64 2154842191}
!317 = !{i64 2154842641}
