; ModuleID = '/llk/IR_all_yes/sound/pci/es1938.c_pt.bc'
source_filename = "../sound/pci/es1938.c"
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
%struct.atomic_t = type { i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_ratnums = type { i32, ptr }
%struct.snd_ratnum = type { i32, i32, i32, i32 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.es1938 = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, ptr, [32 x i8] }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@__UNIQUE_ID_author242 = internal constant [51 x i8] c"snd_es1938.author=Jaromir Koutek <miri@punknet.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [34 x i8] c"snd_es1938.description=ESS Solo-1\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [37 x i8] c"snd_es1938.file=sound/pci/snd-es1938\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"snd_es1938.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_es1938.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [39 x i8] c"snd_es1938.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [60 x i8] c"snd_es1938.parm=index:Index value for ESS Solo-1 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_es1938.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [38 x i8] c"snd_es1938.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [55 x i8] c"snd_es1938.parm=id:ID string for ESS Solo-1 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_es1938.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [41 x i8] c"snd_es1938.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [52 x i8] c"snd_es1938.parm=enable:Enable ESS Solo-1 soundcard.\00", section ".modinfo", align 1
@__initcall__kmod_snd_es1938__259_1808_es1938_driver_init6 = internal global ptr @es1938_driver_init, section ".initcall6.init", align 4
@es1938_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_es1938_ids, ptr @snd_es1938_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @es1938_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_es1938_driver_exit = internal global ptr @es1938_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_es1938\00", [21 x i8] zeroinitializer }, align 32
@snd_es1938_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4701, i32 6505, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@es1938_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @es1938_suspend, ptr @es1938_resume, ptr @es1938_suspend, ptr @es1938_resume, ptr @es1938_suspend, ptr @es1938_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_es1938_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ES1938\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ESS ES1938 (Solo-1)\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s rev %i, irq %i\00", [46 x i8] zeroinitializer }, align 32
@snd_es1938_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1768, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OPL3 not detected at 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_es1938_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/pci/es1938.c\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_es1938_probe._entry_ptr = internal global ptr @snd_es1938_probe._entry, section ".printk_index", align 4
@snd_es1938_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1781, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to initialize MPU-401\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_es1938_probe._entry_ptr.11 = internal global ptr @snd_es1938_probe._entry.9, section ".printk_index", align 4
@snd_es1938_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 1552, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"architecture does not support 24bit PCI busmaster DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_es1938_create\00", [46 x i8] zeroinitializer }, align 32
@snd_es1938_create._entry_ptr = internal global ptr @snd_es1938_create._entry, section ".printk_index", align 4
@snd_es1938_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_es1938_create.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->mixer_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ESS Solo-1\00", [21 x i8] zeroinitializer }, align 32
@snd_es1938_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.6, i32 1572, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_es1938_create._entry_ptr.20 = internal global ptr @snd_es1938_create._entry.18, section ".printk_index", align 4
@snd_es1938_create.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.6, ptr @.str.21, i8 1, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"create: io: 0x%lx, sb: 0x%lx, vc: 0x%lx, mpu: 0x%lx, game: 0x%lx\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_es1938_mixer_read.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_es1938_mixer_read\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mixer reg %02x now is %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_es1938_mixer_write.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.6, ptr @.str.25, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_es1938_mixer_write\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mixer reg %02x set to %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_es1938_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 391, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ESS Solo-1 reset failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_es1938_reset\00", [47 x i8] zeroinitializer }, align 32
@snd_es1938_reset._entry_ptr = internal global ptr @snd_es1938_reset._entry, section ".printk_index", align 4
@snd_es1938_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 303, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"snd_es1938_write_cmd timeout (0x02%x/0x02%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_es1938_write_cmd\00", [43 x i8] zeroinitializer }, align 32
@snd_es1938_write_cmd._entry_ptr = internal global ptr @snd_es1938_write_cmd._entry, section ".printk_index", align 4
@snd_es1938_write.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.6, ptr @.str.31, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_es1938_write\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Reg %02x set to %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_es1938_bits.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.6, ptr @.str.33, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_es1938_bits\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Reg %02x was %02x, set to %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_es1938_get_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 318, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"get_byte timeout: status 0x02%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_es1938_get_byte\00", [44 x i8] zeroinitializer }, align 32
@snd_es1938_get_byte._entry_ptr = internal global ptr @snd_es1938_get_byte._entry, section ".printk_index", align 4
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"es-1938-1946\00", [19 x i8] zeroinitializer }, align 32
@snd_es1938_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_es1938_playback_open, ptr @snd_es1938_playback_close, ptr null, ptr null, ptr null, ptr @snd_es1938_playback_prepare, ptr @snd_es1938_playback_trigger, ptr null, ptr @snd_es1938_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_es1938_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_es1938_capture_open, ptr @snd_es1938_capture_close, ptr null, ptr null, ptr null, ptr @snd_es1938_capture_prepare, ptr @snd_es1938_capture_trigger, ptr null, ptr @snd_es1938_capture_pointer, ptr null, ptr null, ptr @snd_es1938_capture_copy, ptr @snd_es1938_capture_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@snd_es1938_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 23, i32 1073742078, i32 6000, i32 48000, i32 1, i32 2, i32 32768, i32 64, i32 32768, i32 1, i32 1024, i32 256 }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_clocks = internal constant { %struct.snd_pcm_hw_constraint_ratnums, [24 x i8] } { %struct.snd_pcm_hw_constraint_ratnums { i32 2, ptr @clocks }, [24 x i8] zeroinitializer }, align 32
@clocks = internal constant { [2 x %struct.snd_ratnum], [32 x i8] } { [2 x %struct.snd_ratnum] [%struct.snd_ratnum { i32 793800, i32 1, i32 128, i32 1 }, %struct.snd_ratnum { i32 768000, i32 1, i32 128, i32 1 }], [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_es1938_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65792, i64 23, i32 1073742078, i32 6000, i32 48000, i32 1, i32 2, i32 32768, i32 64, i32 32768, i32 1, i32 1024, i32 256 }, [32 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snd_es1938_controls = internal constant { [29 x %struct.snd_kcontrol_new], [336 x i8] } { [29 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_master }, i32 1056989792 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 zeroinitializer, i32 24535648 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 1, i32 0, ptr @snd_es1938_info_hw_volume, ptr @snd_es1938_get_hw_volume, ptr null, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 17, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @snd_es1938_get_hw_switch, ptr null, %union.anon.84 { ptr @db_scale_master }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_es1938_info_single, ptr @snd_es1938_get_single, ptr @snd_es1938_put_single, %union.anon.84 zeroinitializer, i32 67428 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_line }, i32 251936318 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 zeroinitializer, i32 251934776 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_mic }, i32 251934262 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_line }, i32 251948397 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_mic }, i32 251927066 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_line }, i32 251935290 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_capture }, i32 251966644 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_es1938_info_single, ptr @snd_es1938_get_single, ptr @snd_es1938_put_single, %union.anon.84 zeroinitializer, i32 458812 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_es1938_info_single, ptr @snd_es1938_get_single, ptr @snd_es1938_put_single, %union.anon.84 zeroinitializer, i32 66472 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_es1938_info_single, ptr @snd_es1938_get_single, ptr @snd_es1938_put_single, %union.anon.84 zeroinitializer, i32 16843804 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_es1938_info_mux, ptr @snd_es1938_get_mux, ptr @snd_es1938_put_mux, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_line }, i32 251948397 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_audio2 }, i32 251947369 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_mic }, i32 251947112 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_line }, i32 251948654 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_mic }, i32 251947883 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_line }, i32 251948911 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_line }, i32 251947626 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_line }, i32 251948140 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_audio2 }, i32 251952252 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 1, i32 19, i32 0, ptr @snd_es1938_info_double, ptr @snd_es1938_get_double, ptr @snd_es1938_put_double, %union.anon.84 { ptr @db_scale_audio1 }, i32 251925524 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_es1938_info_single, ptr @snd_es1938_get_single, ptr @snd_es1938_put_single, %union.anon.84 zeroinitializer, i32 4128850 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_es1938_get_spatializer_enable, ptr @snd_es1938_put_spatializer_enable, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_es1938_info_single, ptr @snd_es1938_get_single, ptr @snd_es1938_put_single, %union.anon.84 zeroinitializer, i32 66429 }], [336 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@db_scale_master = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 54, i32 1, i32 8, i32 -3600, i32 65586, i32 54, i32 63, i32 1, i32 8, i32 -900, i32 100], [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Hardware Master Playback Volume\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Hardware Master Playback Switch\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hardware Volume Split\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@db_scale_line = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 8, i32 1, i32 8, i32 -3150, i32 65836, i32 8, i32 15, i32 1, i32 8, i32 -750, i32 150], [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FM Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@db_scale_mic = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 8, i32 1, i32 8, i32 -2400, i32 65836, i32 8, i32 15, i32 1, i32 8, i32 0, i32 150], [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mono Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@db_scale_capture = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 150], [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Beep Volume\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Record Monitor\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Mono Input Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@db_scale_audio2 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 8, i32 1, i32 8, i32 -3450, i32 65836, i32 8, i32 15, i32 1, i32 8, i32 -1050, i32 150], [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FM Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mono Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CD Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@db_scale_audio1 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 8, i32 1, i32 8, i32 -3300, i32 65836, i32 8, i32 15, i32 1, i32 8, i32 -900, i32 150], [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"3D Control - Level\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"3D Control - Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mic Boost (+26dB)\00", [46 x i8] zeroinitializer }, align 32
@snd_es1938_read.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.6, ptr @.str.70, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_es1938_read\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Reg %02x now is %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_es1938_info_mux.texts = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Master\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AOUT\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mic1\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mix\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Master\00", [25 x i8] zeroinitializer }, align 32
@snd_es1938_mixer_bits.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.6, ptr @.str.80, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_es1938_mixer_bits\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Mixer reg %02x was %02x, set to %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_es1938_create_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.6, i32 1498, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_es1938_create_gameport\00", [37 x i8] zeroinitializer }, align 32
@snd_es1938_create_gameport._entry_ptr = internal global ptr @snd_es1938_create_gameport._entry, section ".printk_index", align 4
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@saved_regs = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\14\1A\1C:<>68PR`abcdhijkmno|}\A8\B4\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@es1938_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.6, i32 1464, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to grab IRQ %d, disabling device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"es1938_resume\00", [18 x i8] zeroinitializer }, align 32
@es1938_resume._entry_ptr = internal global ptr @es1938_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"es1938_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1799, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 60, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 61, i32 14 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 62, i32 13 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1808, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"snd_es1938_ids\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 226, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant [10 x i8] c"es1938_pm\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1484, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1722, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1750, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1751, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1752, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1767, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1781, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1551, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1556, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1557, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1561, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1572, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1578, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 261, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 247, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 391, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 302, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 332, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 368, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 318, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 999, i32 32 }
@___asan_gen_.238 = private unnamed_addr constant [24 x i8] c"snd_es1938_playback_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 976, i32 33 }
@___asan_gen_.241 = private unnamed_addr constant [23 x i8] c"snd_es1938_capture_ops\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 984, i32 33 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 940, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c"snd_es1938_playback\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 890, i32 38 }
@___asan_gen_.250 = private unnamed_addr constant [22 x i8] c"hw_constraints_clocks\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 438, i32 51 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 423, i32 32 }
@___asan_gen_.256 = private unnamed_addr constant [19 x i8] c"snd_es1938_capture\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 868, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 230, i32 6 }
@___asan_gen_.263 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 214, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 174, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c"snd_es1938_controls\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1310, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1311, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant [16 x i8] c"db_scale_master\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1283, i32 14 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1313, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1316, i32 10 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1325, i32 10 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1330, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1331, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant [14 x i8] c"db_scale_line\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1303, i32 14 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1333, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1334, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant [13 x i8] c"db_scale_mic\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1298, i32 14 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1336, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1338, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1340, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1342, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant [17 x i8] c"db_scale_capture\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1308, i32 14 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1344, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1345, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1346, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1349, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1354, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1356, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant [16 x i8] c"db_scale_audio2\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1293, i32 14 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1358, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1360, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1362, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1364, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1366, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1368, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1370, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant [16 x i8] c"db_scale_audio1\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1288, i32 14 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1374, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1377, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1382, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 347, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1024, i32 28 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1025, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1025, i32 10 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1025, i32 24 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1025, i32 30 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1026, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1026, i32 11 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1026, i32 18 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1026, i32 26 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 280, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1497, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1503, i32 24 }
@___asan_gen_.424 = private unnamed_addr constant [11 x i8] c"saved_regs\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1423, i32 28 }
@___asan_gen_.427 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.434 = private constant [22 x i8] c"../sound/pci/es1938.c\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1463, i32 3 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_es1938_driver_exit, ptr @__initcall__kmod_snd_es1938__259_1808_es1938_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @es1938_driver_exit, ptr @es1938_resume._entry, ptr @es1938_resume._entry_ptr, ptr @snd_es1938_create._entry, ptr @snd_es1938_create._entry.18, ptr @snd_es1938_create._entry_ptr, ptr @snd_es1938_create._entry_ptr.20, ptr @snd_es1938_create_gameport._entry, ptr @snd_es1938_create_gameport._entry_ptr, ptr @snd_es1938_get_byte._entry, ptr @snd_es1938_get_byte._entry_ptr, ptr @snd_es1938_probe._entry, ptr @snd_es1938_probe._entry.9, ptr @snd_es1938_probe._entry_ptr, ptr @snd_es1938_probe._entry_ptr.11, ptr @snd_es1938_reset._entry, ptr @snd_es1938_reset._entry_ptr, ptr @snd_es1938_write_cmd._entry, ptr @snd_es1938_write_cmd._entry_ptr, ptr @es1938_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @snd_es1938_ids, ptr @es1938_pm, ptr @snd_es1938_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @snd_es1938_create.__key, ptr @.str.14, ptr @snd_es1938_create.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @snd_es1938_playback_ops, ptr @snd_es1938_capture_ops, ptr @.str.37, ptr @snd_es1938_playback, ptr @hw_constraints_clocks, ptr @clocks, ptr @snd_es1938_capture, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @snd_es1938_controls, ptr @.str.41, ptr @db_scale_master, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @db_scale_line, ptr @.str.47, ptr @.str.48, ptr @db_scale_mic, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @db_scale_capture, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @db_scale_audio2, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @db_scale_audio1, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @snd_es1938_info_mux.texts, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @saved_regs, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1938_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1938_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_create.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_get_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_clocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_controls to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_master to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_line to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_mic to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_capture to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_audio2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_audio1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_info_mux.texts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1938_create_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_regs to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1938_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @es1938_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @es1938_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @es1938_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @es1938_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  %opl3 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #13
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !258
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opl3) #13
  %1 = ptrtoint ptr %opl3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %opl3, align 4, !annotation !258
  %2 = load i32, ptr @snd_es1938_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp = icmp sgt i32 %2, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @snd_es1938_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %6, ptr noundef %8, ptr noundef null, i32 noundef 236, ptr noundef nonnull %card) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 8
  %arrayidx9 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 0
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10 = icmp eq i32 %14, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %lor.lhs.false

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %lor.lhs.false
  %arrayidx9.1 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %15 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp10.1 = icmp eq i32 %16, 0
  br i1 %cmp10.1, label %for.cond.cleanup_crit_edge, label %lor.lhs.false.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.1:                                  ; preds = %for.cond
  %flags.1 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1, i32 3
  %17 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool13.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool13.not.1, label %lor.lhs.false.1.cleanup_crit_edge, label %for.cond.1

lor.lhs.false.1.cleanup_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.1:                                       ; preds = %lor.lhs.false.1
  %arrayidx9.2 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2
  %19 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx9.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp10.2 = icmp eq i32 %20, 0
  br i1 %cmp10.2, label %for.cond.1.cleanup_crit_edge, label %lor.lhs.false.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.2:                                  ; preds = %for.cond.1
  %flags.2 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2, i32 3
  %21 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool13.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool13.not.2, label %lor.lhs.false.2.cleanup_crit_edge, label %for.cond.2

lor.lhs.false.2.cleanup_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.2:                                       ; preds = %lor.lhs.false.2
  %arrayidx9.3 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 3
  %23 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx9.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp10.3 = icmp eq i32 %24, 0
  br i1 %cmp10.3, label %for.cond.2.cleanup_crit_edge, label %lor.lhs.false.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.3:                                  ; preds = %for.cond.2
  %flags.3 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 3, i32 3
  %25 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool13.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool13.not.3, label %lor.lhs.false.3.cleanup_crit_edge, label %for.cond.3

lor.lhs.false.3.cleanup_crit_edge:                ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.3:                                       ; preds = %lor.lhs.false.3
  %arrayidx9.4 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 4
  %27 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx9.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10.4 = icmp eq i32 %28, 0
  br i1 %cmp10.4, label %for.cond.3.cleanup_crit_edge, label %lor.lhs.false.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.4:                                  ; preds = %for.cond.3
  %flags.4 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 4, i32 3
  %29 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.4, align 4
  %and.4 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool13.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool13.not.4, label %lor.lhs.false.4.cleanup_crit_edge, label %for.cond.4

lor.lhs.false.4.cleanup_crit_edge:                ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.4:                                       ; preds = %lor.lhs.false.4
  %call17 = call fastcc i32 @snd_es1938_create(ptr noundef %10, ptr noundef %pci)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %for.cond.4.cleanup_crit_edge, label %if.end20

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %flags = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 0, i32 3
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %for.cond.4
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 2
  %35 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 3
  %36 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 20)
  %longname = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 4
  %revision = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 8
  %37 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %revision, align 1
  %conv = zext i8 %38 to i32
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %12, align 4
  %call27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname, i32 noundef %conv, i32 noundef %40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #13
  %41 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !258
  %card.i = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 14
  %42 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card.i, align 4
  %call.i = call i32 @snd_pcm_new(ptr noundef %43, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %pcm.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_es1938_new_pcm.exit.thread, label %if.end32

snd_es1938_new_pcm.exit.thread:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #13
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  %44 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @snd_es1938_playback_ops) #13
  %46 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %47, i32 noundef 1, ptr noundef nonnull @snd_es1938_capture_ops) #13
  %48 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %12, ptr %private_data.i, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %49, i32 0, i32 3
  %51 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %49, i32 0, i32 7
  %52 = call ptr @memcpy(ptr %name.i, ptr @.str.17, i32 11)
  %pci.i = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 13
  %53 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %call2.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %49, i32 noundef 2, ptr noundef %dev.i, i32 noundef 65536, i32 noundef 65536) #13
  %55 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcm.i, align 4
  %pcm3.i = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 15
  %57 = ptrtoint ptr %pcm3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %pcm3.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #13
  %58 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card.i, align 4
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %59, i32 0, i32 6
  %60 = call ptr @memcpy(ptr %mixername.i, ptr @.str.17, i32 11)
  %hw_switch.i = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 10
  %hw_volume.i = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 9
  %master_switch.i = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 12
  %master_volume.i = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 11
  br label %for.body.i

for.cond.i:                                       ; preds = %sw.epilog.i
  %inc.i = add nuw nsw i32 %idx.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 29
  br i1 %exitcond.not.i, label %if.end37, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end32
  %idx.032.i = phi i32 [ 0, %if.end32 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [29 x %struct.snd_kcontrol_new], ptr @snd_es1938_controls, i32 0, i32 %idx.032.i
  %call2.i110 = call ptr @snd_ctl_new1(ptr noundef %arrayidx.i, ptr noundef %12) #13
  %61 = zext i32 %idx.032.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i32 %idx.032.i, label %for.body.i.sw.epilog.i_crit_edge [
    i32 0, label %for.body.i.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb7.i
  ]

for.body.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

sw.bb7.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %for.body.i.sw.epilog.sink.split.i_crit_edge
  %hw_switch.sink.i = phi ptr [ %hw_switch.i, %sw.bb7.i ], [ %hw_volume.i, %sw.bb5.i ], [ %master_switch.i, %sw.bb3.i ], [ %master_volume.i, %for.body.i.sw.epilog.sink.split.i_crit_edge ]
  %62 = ptrtoint ptr %hw_switch.sink.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call2.i110, ptr %hw_switch.sink.i, align 4
  %private_free8.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call2.i110, i32 0, i32 9
  %63 = ptrtoint ptr %private_free8.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @snd_es1938_hwv_free, ptr %private_free8.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %for.body.i.sw.epilog.i_crit_edge
  %call9.i = call i32 @snd_ctl_add(ptr noundef %59, ptr noundef %call2.i110) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %sw.epilog.i.cleanup_crit_edge, label %for.cond.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %for.cond.i
  %64 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card, align 4
  %sb_port = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 2
  %66 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sb_port, align 4
  %add39 = add i32 %67, 2
  %call40 = call i32 @snd_opl3_create(ptr noundef %65, i32 noundef %67, i32 noundef %add39, i16 noundef zeroext 768, i32 noundef 1, ptr noundef nonnull %opl3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end, label %if.else

do.end:                                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card, align 4
  %dev44 = getelementptr inbounds %struct.snd_card, ptr %69, i32 0, i32 27
  %70 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev44, align 8
  %72 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sb_port, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.4, i32 noundef %73) #16
  br label %if.end57

if.else:                                          ; preds = %if.end37
  %74 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %opl3, align 4
  %call47 = call i32 @snd_opl3_timer_new(ptr noundef %75, i32 noundef 0, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.else.cleanup_crit_edge, label %if.end51

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %if.else
  %76 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %opl3, align 4
  %call52 = call i32 @snd_opl3_hwdep_new(ptr noundef %77, i32 noundef 0, i32 noundef 1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end51.if.end57_crit_edge

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end57:                                         ; preds = %if.end51.if.end57_crit_edge, %do.end
  %78 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %card, align 4
  %mpu_port = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 4
  %80 = ptrtoint ptr %mpu_port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mpu_port, align 4
  %rmidi = getelementptr inbounds %struct.es1938, ptr %12, i32 0, i32 19
  %call58 = call i32 @snd_mpu401_uart_new(ptr noundef %79, i32 noundef 0, i16 noundef zeroext 1, i32 noundef %81, i32 noundef 36, i32 noundef -1, ptr noundef %rmidi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end64, label %if.else66

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card, align 4
  %dev65 = getelementptr inbounds %struct.snd_card, ptr %83, i32 0, i32 27
  %84 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev65, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.10) #16
  br label %if.end68

if.else66:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %call67 = call fastcc i32 @snd_es1938_mixer_bits(ptr noundef %12, i8 noundef zeroext 100, i8 noundef zeroext 64, i8 noundef zeroext 64)
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %do.end64
  call fastcc void @snd_es1938_create_gameport(ptr noundef %12)
  %86 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %card, align 4
  %call70 = call i32 @snd_card_register(ptr noundef %87) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end68.cleanup_crit_edge, label %if.end74

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %driver_data.i.i, align 4
  %91 = load i32, ptr @snd_es1938_probe.dev, align 4
  %inc75 = add i32 %91, 1
  store i32 %inc75, ptr @snd_es1938_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end68.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %snd_es1938_new_pcm.exit.thread, %lor.lhs.false.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %lor.lhs.false.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %lor.lhs.false.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %lor.lhs.false.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %lor.lhs.false.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end74 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call17, %for.cond.4.cleanup_crit_edge ], [ %call47, %if.else.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call70, %if.end68.cleanup_crit_edge ], [ %call.i, %snd_es1938_new_pcm.exit.thread ], [ -19, %lor.lhs.false.4.cleanup_crit_edge ], [ -19, %for.cond.3.cleanup_crit_edge ], [ -19, %lor.lhs.false.3.cleanup_crit_edge ], [ -19, %for.cond.2.cleanup_crit_edge ], [ -19, %lor.lhs.false.2.cleanup_crit_edge ], [ -19, %for.cond.1.cleanup_crit_edge ], [ -19, %lor.lhs.false.1.cleanup_crit_edge ], [ -19, %for.cond.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ %call9.i, %sw.epilog.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opl3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_es1938_create(ptr noundef %card, ptr noundef %pci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call i32 @pcim_enable_device(ptr noundef %pci) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 16777215) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev3 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #16
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 16777215) #13
  %reg_lock = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @snd_es1938_create.__key, i16 noundef signext 3) #13
  %mixer_lock = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 29
  tail call void @__raw_spin_lock_init(ptr noundef %mixer_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @snd_es1938_create.__key.15, i16 noundef signext 3) #13
  %card13 = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %card13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %card, ptr %card13, align 4
  %pci14 = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %pci14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pci, ptr %pci14, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %1, align 4
  %call15 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.body5.cleanup_crit_edge, label %if.end18

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %do.body5
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %io_port = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %io_port, align 4
  %arrayidx20 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx20, align 8
  %sb_port = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %sb_port to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sb_port, align 4
  %arrayidx23 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx23, align 8
  %vc_port = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %vc_port to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %vc_port, align 4
  %arrayidx26 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 3
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx26, align 8
  %mpu_port = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %mpu_port to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mpu_port, align 4
  %arrayidx29 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 4
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx29, align 8
  %game_port = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %game_port to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %game_port, align 4
  %irq31 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %22 = ptrtoint ptr %irq31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq31, align 4
  %call.i101 = tail call i32 @request_threaded_irq(i32 noundef %23, ptr noundef nonnull @snd_es1938_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool33.not = icmp eq i32 %call.i101, 0
  br i1 %tobool33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %dev38 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %24 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev38, align 8
  %26 = ptrtoint ptr %irq31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.19, i32 noundef %27) #16
  br label %cleanup

if.end40:                                         ; preds = %if.end18
  %28 = ptrtoint ptr %irq31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq31, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %1, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 33
  %31 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %sync_irq, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 10
  %32 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @snd_es1938_free, ptr %private_free, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1938_create.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1938_create, %if.then49)) #13
          to label %do.end58 [label %if.then49], !srcloc !260

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %dev50 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %33 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev50, align 8
  %35 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_port, align 4
  %37 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_port, align 4
  %39 = ptrtoint ptr %vc_port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vc_port, align 4
  %41 = ptrtoint ptr %mpu_port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mpu_port, align 4
  %43 = ptrtoint ptr %game_port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %game_port, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1938_create.__UNIQUE_ID_ddebug258, ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44) #13
  br label %do.end58

do.end58:                                         ; preds = %if.then49, %if.end40
  %45 = ptrtoint ptr %vc_port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vc_port, align 4
  %ddma_port = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %ddma_port to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %ddma_port, align 4
  tail call fastcc void @snd_es1938_chip_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %do.end37, %do.body5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ -16, %do.end37 ], [ 0, %do.end58 ], [ %call, %entry.cleanup_crit_edge ], [ %call15, %do.body5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_create(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_timer_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_hwdep_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_es1938_mixer_bits(ptr noundef %chip, i8 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer_lock = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mixer_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !261
  tail call void @arm_heavy_mb() #13
  %sb_port = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_port, align 4
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %2 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %reg) #13, !srcloc !262
  %3 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_port, align 4
  %add11 = add i32 %4, 5
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %5 = inttoptr i32 %add13 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !264
  %conv17 = zext i8 %6 to i32
  %and1967 = and i8 %6, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and1967, i8 %val)
  %cmp23.not = icmp eq i8 %and1967, %val
  br i1 %cmp23.not, label %entry.if.end51_crit_edge, label %if.then

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %neg = xor i8 %mask, -1
  %and27 = and i8 %6, %neg
  %and3068 = and i8 %val, %mask
  %or = or i8 %and27, %and3068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !265
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_port, align 4
  %add36 = add i32 %8, 5
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %9 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %or) #13, !srcloc !262
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1938_mixer_bits.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1938_mixer_bits, %if.then45)) #13
          to label %if.end51 [label %if.then45], !srcloc !260

if.then45:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %conv46 = zext i8 %reg to i32
  %conv48 = zext i8 %or to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1938_mixer_bits.__UNIQUE_ID_ddebug254, ptr noundef %13, ptr noundef nonnull @.str.80, i32 noundef %conv46, i32 noundef %conv17, i32 noundef %conv48) #13
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %if.then, %entry.if.end51_crit_edge
  %conv22 = zext i8 %and1967 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mixer_lock, i32 noundef %call2) #13
  ret i32 %conv22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1938_create_gameport(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1248) #17
  %gameport = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 31
  %1 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %gameport, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.81) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.1, i32 noundef 32) #13
  %pci = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.end.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.83, ptr noundef %retval.0.i.i) #13
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %parent = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev3, ptr %parent, align 8
  %game_port = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 5
  %15 = ptrtoint ptr %game_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %game_port, align 4
  %io = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %io, align 4
  tail call void @__gameport_register_port(ptr noundef nonnull %call7.i.i.i, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %io_port = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_port, align 4
  %add = add i32 %1, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !266
  %conv = zext i8 %3 to i32
  %and3 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then:                                          ; preds = %entry
  %sb_port = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_port, align 4
  %add5 = add i32 %5, 14
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !267
  %active = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 27
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active, align 4
  %and11 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %capture_substream = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 16
  br label %if.end19.sink.split

if.else:                                          ; preds = %if.then
  %and15 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.then17

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %playback2_substream = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 18
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then17, %if.then13
  %capture_substream.sink = phi ptr [ %capture_substream, %if.then13 ], [ %playback2_substream, %if.then17 ]
  %10 = ptrtoint ptr %capture_substream.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %capture_substream.sink, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %11) #13
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %handled.0 = phi i32 [ 1, %if.else.if.end19_crit_edge ], [ 0, %entry.if.end19_crit_edge ], [ 1, %if.end19.sink.split ]
  %and21 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end30_crit_edge, label %if.then23

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then23:                                        ; preds = %if.end19
  %call24 = tail call fastcc i32 @snd_es1938_mixer_bits(ptr noundef %dev_id, i8 noundef zeroext 122, i8 noundef zeroext -128, i8 noundef zeroext 0)
  %active25 = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 27
  %12 = ptrtoint ptr %active25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active25, align 4
  %and26 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then23.if.end30_crit_edge, label %if.then28

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %playback1_substream = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 17
  %14 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %playback1_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %15) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then23.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  %handled.1 = phi i32 [ 1, %if.then28 ], [ 1, %if.then23.if.end30_crit_edge ], [ %handled.0, %if.end19.if.end30_crit_edge ]
  %and32 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end46_crit_edge, label %if.then34

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then34:                                        ; preds = %if.end30
  %call35 = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %dev_id, i8 noundef zeroext 100)
  %and36 = and i32 %call35, 128
  %card = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 14
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %hw_switch = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 10
  %18 = ptrtoint ptr %hw_switch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_switch, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %19, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %17, i32 noundef 1, ptr noundef %id) #13
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %hw_volume = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 9
  %22 = ptrtoint ptr %hw_volume to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_volume, align 4
  %id38 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %21, i32 noundef 1, ptr noundef %id38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool39.not = icmp eq i32 %and36, 0
  br i1 %tobool39.not, label %if.then40, label %if.then34.if.end45_crit_edge

if.then34.if.end45_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then40:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %master_switch = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 12
  %26 = ptrtoint ptr %master_switch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master_switch, align 4
  %id42 = getelementptr inbounds %struct.snd_kcontrol, ptr %27, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %25, i32 noundef 1, ptr noundef %id42) #13
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %master_volume = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 11
  %30 = ptrtoint ptr %master_volume to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master_volume, align 4
  %id44 = getelementptr inbounds %struct.snd_kcontrol, ptr %31, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %29, i32 noundef 1, ptr noundef %id44) #13
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.then34.if.end45_crit_edge
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %dev_id, i8 noundef zeroext 102, i8 noundef zeroext 0)
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end30.if.end46_crit_edge
  %handled.2 = phi i32 [ 1, %if.end45 ], [ %handled.1, %if.end30.if.end46_crit_edge ]
  %and48 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end56_crit_edge, label %if.then50

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then50:                                        ; preds = %if.end46
  %rmidi = getelementptr inbounds %struct.es1938, ptr %dev_id, i32 0, i32 19
  %32 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmidi, align 4
  %tobool51.not = icmp eq ptr %33, null
  br i1 %tobool51.not, label %if.then50.if.end56_crit_edge, label %if.then52

if.then50.if.end56_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private_data, align 4
  %call54 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %35) #13
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.then50.if.end56_crit_edge, %if.end46.if.end56_crit_edge
  %handled.3 = phi i32 [ 1, %if.then52 ], [ %handled.2, %if.then50.if.end56_crit_edge ], [ %handled.2, %if.end46.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.3)
  %tobool57.not = icmp ne i32 %handled.3, 0
  %cond = zext i1 %tobool57.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_es1938_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !268
  tail call void @arm_heavy_mb() #13
  %io_port = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_port, align 4
  %add = add i32 %3, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #13, !srcloc !262
  %rmidi = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmidi, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call fastcc i32 @snd_es1938_mixer_bits(ptr noundef %1, i8 noundef zeroext 100, i8 noundef zeroext 64, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gameport.i = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 31
  %7 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.snd_es1938_free_gameport.exit_crit_edge, label %if.then.i

if.end.snd_es1938_free_gameport.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_es1938_free_gameport.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gameport_unregister_port(ptr noundef nonnull %8) #13
  %9 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %gameport.i, align 4
  br label %snd_es1938_free_gameport.exit

snd_es1938_free_gameport.exit:                    ; preds = %if.then.i, %if.end.snd_es1938_free_gameport.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp = icmp sgt i32 %11, -1
  br i1 %cmp, label %if.then3, label %snd_es1938_free_gameport.exit.if.end6_crit_edge

snd_es1938_free_gameport.exit.if.end6_crit_edge:  ; preds = %snd_es1938_free_gameport.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %snd_es1938_free_gameport.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %1) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %snd_es1938_free_gameport.exit.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1938_chip_init(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !269
  tail call void @arm_heavy_mb() #13
  %sb_port.i = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_port.i, align 4
  %add.i = add i32 %1, 6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 3) #13, !srcloc !262
  %3 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_port.i, align 4
  %add3.i = add i32 %4, 6
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %5 = inttoptr i32 %add5.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !271
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_port.i, align 4
  %add12.i = add i32 %8, 6
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %9 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #13, !srcloc !262
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.080.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_port.i, align 4
  %add18.i = add i32 %11, 14
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %12 = inttoptr i32 %add20.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool.not.i = icmp sgt i8 %13, -1
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %14 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_port.i, align 4
  %add27.i = add i32 %15, 10
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %16 = inttoptr i32 %add29.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %17)
  %cmp34.i = icmp eq i8 %17, -86
  br i1 %cmp34.i, label %if.then.i.for.body.i.i.preheader_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i.for.body.i.i.preheader_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.preheader

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.080.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65536
  br i1 %exitcond.not.i, label %do.end40.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.end40.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %card.i = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.26) #16
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %do.end40.i, %if.then.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 65536
  br i1 %exitcond.not.i.i, label %do.end11.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.021.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %22 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sb_port.i, align 4
  %add.i.i = add i32 %23, 12
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %24 = inttoptr i32 %add1.i.i to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool.not.i.i = icmp sgt i8 %25, -1
  br i1 %tobool.not.i.i, label %do.body.i.i, label %for.cond.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sb_port.i, align 4
  %add5.i.i = add i32 %27, 12
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %28 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 -58) #13, !srcloc !262
  br label %snd_es1938_write_cmd.exit.i

do.end11.i.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i = zext i8 %25 to i32
  %card.i.i = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %29 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.28, i32 noundef 198, i32 noundef %phi.cast.i.i) #16
  br label %snd_es1938_write_cmd.exit.i

snd_es1938_write_cmd.exit.i:                      ; preds = %do.end11.i.i, %do.body.i.i
  tail call fastcc void @snd_es1938_write(ptr noundef %chip, i8 noundef zeroext -71, i8 noundef zeroext 2) #13
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %chip, i8 noundef zeroext 113, i8 noundef zeroext 50) #13
  %call41.i = tail call fastcc i32 @snd_es1938_bits(ptr noundef %chip, i8 noundef zeroext -79, i8 noundef zeroext -16, i8 noundef zeroext 80) #13
  %call42.i = tail call fastcc i32 @snd_es1938_bits(ptr noundef %chip, i8 noundef zeroext -78, i8 noundef zeroext -16, i8 noundef zeroext 80) #13
  br label %for.body.i68.i

for.cond.i62.i:                                   ; preds = %for.body.i68.i
  %inc.i60.i = add nuw nsw i32 %i.021.i63.i, 1
  %exitcond.not.i61.i = icmp eq i32 %inc.i60.i, 65536
  br i1 %exitcond.not.i61.i, label %do.end11.i76.i, label %for.cond.i62.i.for.body.i68.i_crit_edge

for.cond.i62.i.for.body.i68.i_crit_edge:          ; preds = %for.cond.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i68.i

for.body.i68.i:                                   ; preds = %for.cond.i62.i.for.body.i68.i_crit_edge, %snd_es1938_write_cmd.exit.i
  %i.021.i63.i = phi i32 [ 0, %snd_es1938_write_cmd.exit.i ], [ %inc.i60.i, %for.cond.i62.i.for.body.i68.i_crit_edge ]
  %33 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sb_port.i, align 4
  %add.i64.i = add i32 %34, 12
  %and.i65.i = and i32 %add.i64.i, 1048575
  %add1.i66.i = or i32 %and.i65.i, -18874368
  %35 = inttoptr i32 %add1.i66.i to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %tobool.not.i67.i = icmp sgt i8 %36, -1
  br i1 %tobool.not.i67.i, label %do.body.i72.i, label %for.cond.i62.i

do.body.i72.i:                                    ; preds = %for.body.i68.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_port.i, align 4
  %add5.i69.i = add i32 %38, 12
  %and6.i70.i = and i32 %add5.i69.i, 1048575
  %add7.i71.i = or i32 %and6.i70.i, -18874368
  %39 = inttoptr i32 %add7.i71.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 -47) #13, !srcloc !262
  br label %snd_es1938_reset.exit

do.end11.i76.i:                                   ; preds = %for.cond.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i73.i = zext i8 %36 to i32
  %card.i74.i = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %40 = ptrtoint ptr %card.i74.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card.i74.i, align 4
  %dev.i75.i = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %dev.i75.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i75.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.28, i32 noundef 209, i32 noundef %phi.cast.i73.i) #16
  br label %snd_es1938_reset.exit

snd_es1938_reset.exit:                            ; preds = %do.end11.i76.i, %do.body.i72.i
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %chip, i8 noundef zeroext 84, i8 noundef zeroext -113) #13
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %chip, i8 noundef zeroext 86, i8 noundef zeroext -107) #13
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %chip, i8 noundef zeroext 88, i8 noundef zeroext -108) #13
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %chip, i8 noundef zeroext 90, i8 noundef zeroext -128) #13
  %pci = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 13
  %44 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci, align 4
  tail call void @pci_set_master(ptr noundef %45) #13
  %46 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci, align 4
  %call = tail call i32 @pci_write_config_word(ptr noundef %47, i32 noundef 64, i16 noundef zeroext -32673) #13
  %48 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci, align 4
  %ddma_port = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 6
  %50 = ptrtoint ptr %ddma_port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ddma_port, align 4
  %52 = trunc i32 %51 to i16
  %conv = or i16 %52, 1
  %call3 = tail call i32 @pci_write_config_word(ptr noundef %49, i32 noundef 96, i16 noundef zeroext %conv) #13
  %53 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci, align 4
  %call5 = tail call i32 @pci_write_config_dword(ptr noundef %54, i32 noundef 80, i32 noundef 0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !276
  tail call void @arm_heavy_mb() #13
  %io_port = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 1
  %55 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %io_port, align 4
  %add = add i32 %56, 7
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %57 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 -16) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !277
  tail call void @arm_heavy_mb() #13
  %58 = ptrtoint ptr %ddma_port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ddma_port, align 4
  %add11 = add i32 %59, 13
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %60 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 0) #13, !srcloc !262
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_es1938_mixer_read(ptr noundef %chip, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer_lock = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mixer_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  tail call void @arm_heavy_mb() #13
  %sb_port = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_port, align 4
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %2 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %reg) #13, !srcloc !262
  %3 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_port, align 4
  %add11 = add i32 %4, 5
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %5 = inttoptr i32 %add13 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !279
  %conv17 = zext i8 %6 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mixer_lock, i32 noundef %call2) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1938_mixer_read.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1938_mixer_read, %if.then)) #13
          to label %do.end26 [label %if.then], !srcloc !260

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %conv24 = zext i8 %reg to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1938_mixer_read.__UNIQUE_ID_ddebug253, ptr noundef %10, ptr noundef nonnull @.str.23, i32 noundef %conv24, i32 noundef %conv17) #13
  br label %do.end26

do.end26:                                         ; preds = %if.then, %entry
  ret i32 %conv17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1938_mixer_write(ptr noundef %chip, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer_lock = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 29
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mixer_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !280
  tail call void @arm_heavy_mb() #13
  %sb_port = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_port, align 4
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %2 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %reg) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !281
  tail call void @arm_heavy_mb() #13
  %3 = ptrtoint ptr %sb_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_port, align 4
  %add14 = add i32 %4, 5
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %5 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %val) #13, !srcloc !262
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mixer_lock, i32 noundef %call2) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1938_mixer_write.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1938_mixer_write, %if.then)) #13
          to label %do.end27 [label %if.then], !srcloc !260

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %conv24 = zext i8 %reg to i32
  %conv25 = zext i8 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1938_mixer_write.__UNIQUE_ID_ddebug252, ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef %conv24, i32 noundef %conv25) #13
  br label %do.end27

do.end27:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1938_write(ptr noundef %chip, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 28
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %sb_port.i = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65536
  br i1 %exitcond.not.i, label %do.end11.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.021.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_port.i, align 4
  %add.i = add i32 %1, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not.i = icmp sgt i8 %3, -1
  br i1 %tobool.not.i, label %do.body.i, label %for.cond.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_port.i, align 4
  %add5.i = add i32 %5, 12
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %6 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %reg) #13, !srcloc !262
  br label %for.body.i30.preheader

do.end11.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i = zext i8 %3 to i32
  %card.i = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %conv12.i = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.28, i32 noundef %conv12.i, i32 noundef %phi.cast.i) #16
  br label %for.body.i30.preheader

for.body.i30.preheader:                           ; preds = %do.end11.i, %do.body.i
  br label %for.body.i30

for.cond.i24:                                     ; preds = %for.body.i30
  %inc.i22 = add nuw nsw i32 %i.021.i25, 1
  %exitcond.not.i23 = icmp eq i32 %inc.i22, 65536
  br i1 %exitcond.not.i23, label %do.end11.i39, label %for.cond.i24.for.body.i30_crit_edge

for.cond.i24.for.body.i30_crit_edge:              ; preds = %for.cond.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i30

for.body.i30:                                     ; preds = %for.cond.i24.for.body.i30_crit_edge, %for.body.i30.preheader
  %i.021.i25 = phi i32 [ %inc.i22, %for.cond.i24.for.body.i30_crit_edge ], [ 0, %for.body.i30.preheader ]
  %11 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_port.i, align 4
  %add.i26 = add i32 %12, 12
  %and.i27 = and i32 %add.i26, 1048575
  %add1.i28 = or i32 %and.i27, -18874368
  %13 = inttoptr i32 %add1.i28 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not.i29 = icmp sgt i8 %14, -1
  br i1 %tobool.not.i29, label %do.body.i34, label %for.cond.i24

do.body.i34:                                      ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_port.i, align 4
  %add5.i31 = add i32 %16, 12
  %and6.i32 = and i32 %add5.i31, 1048575
  %add7.i33 = or i32 %and6.i32, -18874368
  %17 = inttoptr i32 %add7.i33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %val) #13, !srcloc !262
  br label %snd_es1938_write_cmd.exit40

do.end11.i39:                                     ; preds = %for.cond.i24
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i35 = zext i8 %14 to i32
  %card.i36 = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %18 = ptrtoint ptr %card.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i36, align 4
  %dev.i37 = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i37, align 8
  %conv12.i38 = zext i8 %val to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.28, i32 noundef %conv12.i38, i32 noundef %phi.cast.i35) #16
  br label %snd_es1938_write_cmd.exit40

snd_es1938_write_cmd.exit40:                      ; preds = %do.end11.i39, %do.body.i34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1938_write.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1938_write, %if.then)) #13
          to label %do.end14 [label %if.then], !srcloc !260

if.then:                                          ; preds = %snd_es1938_write_cmd.exit40
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %conv11 = zext i8 %reg to i32
  %conv12 = zext i8 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1938_write.__UNIQUE_ID_ddebug255, ptr noundef %25, ptr noundef nonnull @.str.31, i32 noundef %conv11, i32 noundef %conv12) #13
  br label %do.end14

do.end14:                                         ; preds = %if.then, %snd_es1938_write_cmd.exit40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_es1938_bits(ptr noundef %chip, i8 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 28
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %sb_port.i = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65536
  br i1 %exitcond.not.i, label %do.end11.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.021.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_port.i, align 4
  %add.i = add i32 %1, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not.i = icmp sgt i8 %3, -1
  br i1 %tobool.not.i, label %do.body.i, label %for.cond.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_port.i, align 4
  %add5.i = add i32 %5, 12
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %6 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -64) #13, !srcloc !262
  br label %for.body.i61.preheader

do.end11.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i = zext i8 %3 to i32
  %card.i = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.28, i32 noundef 192, i32 noundef %phi.cast.i) #16
  br label %for.body.i61.preheader

for.body.i61.preheader:                           ; preds = %do.end11.i, %do.body.i
  br label %for.body.i61

for.cond.i55:                                     ; preds = %for.body.i61
  %inc.i53 = add nuw nsw i32 %i.021.i56, 1
  %exitcond.not.i54 = icmp eq i32 %inc.i53, 65536
  br i1 %exitcond.not.i54, label %do.end11.i69, label %for.cond.i55.for.body.i61_crit_edge

for.cond.i55.for.body.i61_crit_edge:              ; preds = %for.cond.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i61

for.body.i61:                                     ; preds = %for.cond.i55.for.body.i61_crit_edge, %for.body.i61.preheader
  %i.021.i56 = phi i32 [ %inc.i53, %for.cond.i55.for.body.i61_crit_edge ], [ 0, %for.body.i61.preheader ]
  %11 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_port.i, align 4
  %add.i57 = add i32 %12, 12
  %and.i58 = and i32 %add.i57, 1048575
  %add1.i59 = or i32 %and.i58, -18874368
  %13 = inttoptr i32 %add1.i59 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not.i60 = icmp sgt i8 %14, -1
  br i1 %tobool.not.i60, label %do.body.i65, label %for.cond.i55

do.body.i65:                                      ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_port.i, align 4
  %add5.i62 = add i32 %16, 12
  %and6.i63 = and i32 %add5.i62, 1048575
  %add7.i64 = or i32 %and6.i63, -18874368
  %17 = inttoptr i32 %add7.i64 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %reg) #13, !srcloc !262
  br label %for.body.i78.preheader

do.end11.i69:                                     ; preds = %for.cond.i55
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i66 = zext i8 %14 to i32
  %card.i67 = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %18 = ptrtoint ptr %card.i67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i67, align 4
  %dev.i68 = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev.i68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i68, align 8
  %conv12.i = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.28, i32 noundef %conv12.i, i32 noundef %phi.cast.i66) #16
  br label %for.body.i78.preheader

for.body.i78.preheader:                           ; preds = %do.end11.i69, %do.body.i65
  br label %for.body.i78

for.cond.i73:                                     ; preds = %for.body.i78
  %dec.i = add nsw i32 %i.021.i74, -1
  %tobool.not.i72 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i72, label %do.end.i, label %for.cond.i73.for.body.i78_crit_edge

for.cond.i73.for.body.i78_crit_edge:              ; preds = %for.cond.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.cond.i73.for.body.i78_crit_edge, %for.body.i78.preheader
  %i.021.i74 = phi i32 [ %dec.i, %for.cond.i73.for.body.i78_crit_edge ], [ 4096, %for.body.i78.preheader ]
  %22 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sb_port.i, align 4
  %add.i75 = add i32 %23, 14
  %and.i76 = and i32 %add.i75, 1048575
  %add1.i77 = or i32 %and.i76, -18874368
  %24 = inttoptr i32 %add1.i77 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool4.not.i = icmp sgt i8 %25, -1
  br i1 %tobool4.not.i, label %for.cond.i73, label %if.then.i

if.then.i:                                        ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sb_port.i, align 4
  %add7.i79 = add i32 %27, 10
  %and8.i = and i32 %add7.i79, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %28 = inttoptr i32 %add9.i to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  %conv13.i = zext i8 %29 to i32
  br label %snd_es1938_get_byte.exit

do.end.i:                                         ; preds = %for.cond.i73
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i80 = zext i8 %25 to i32
  %card.i81 = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %30 = ptrtoint ptr %card.i81 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card.i81, align 4
  %dev.i82 = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev.i82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i82, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.34, i32 noundef %phi.cast.i80) #16
  br label %snd_es1938_get_byte.exit

snd_es1938_get_byte.exit:                         ; preds = %do.end.i, %if.then.i
  %retval.0.i83 = phi i32 [ %conv13.i, %if.then.i ], [ -19, %do.end.i ]
  %conv7 = and i32 %retval.0.i83, 255
  %34 = trunc i32 %retval.0.i83 to i8
  %conv9 = and i8 %34, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %conv9, i8 %val)
  %cmp12.not = icmp eq i8 %conv9, %val
  br i1 %cmp12.not, label %snd_es1938_get_byte.exit.if.end32_crit_edge, label %if.then

snd_es1938_get_byte.exit.if.end32_crit_edge:      ; preds = %snd_es1938_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then:                                          ; preds = %snd_es1938_get_byte.exit
  %conv8 = zext i8 %mask to i32
  br label %for.body.i93

for.cond.i87:                                     ; preds = %for.body.i93
  %inc.i85 = add nuw nsw i32 %i.021.i88, 1
  %exitcond.not.i86 = icmp eq i32 %inc.i85, 65536
  br i1 %exitcond.not.i86, label %do.end11.i102, label %for.cond.i87.for.body.i93_crit_edge

for.cond.i87.for.body.i93_crit_edge:              ; preds = %for.cond.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i93

for.body.i93:                                     ; preds = %for.cond.i87.for.body.i93_crit_edge, %if.then
  %i.021.i88 = phi i32 [ 0, %if.then ], [ %inc.i85, %for.cond.i87.for.body.i93_crit_edge ]
  %35 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sb_port.i, align 4
  %add.i89 = add i32 %36, 12
  %and.i90 = and i32 %add.i89, 1048575
  %add1.i91 = or i32 %and.i90, -18874368
  %37 = inttoptr i32 %add1.i91 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %tobool.not.i92 = icmp sgt i8 %38, -1
  br i1 %tobool.not.i92, label %do.body.i97, label %for.cond.i87

do.body.i97:                                      ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sb_port.i, align 4
  %add5.i94 = add i32 %40, 12
  %and6.i95 = and i32 %add5.i94, 1048575
  %add7.i96 = or i32 %and6.i95, -18874368
  %41 = inttoptr i32 %add7.i96 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %reg) #13, !srcloc !262
  br label %snd_es1938_write_cmd.exit103

do.end11.i102:                                    ; preds = %for.cond.i87
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i98 = zext i8 %38 to i32
  %card.i99 = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %42 = ptrtoint ptr %card.i99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card.i99, align 4
  %dev.i100 = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %dev.i100 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i100, align 8
  %conv12.i101 = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.28, i32 noundef %conv12.i101, i32 noundef %phi.cast.i98) #16
  br label %snd_es1938_write_cmd.exit103

snd_es1938_write_cmd.exit103:                     ; preds = %do.end11.i102, %do.body.i97
  %neg = xor i32 %conv8, -1
  %and16 = and i32 %retval.0.i83, %neg
  %and1951 = and i8 %val, %mask
  %46 = trunc i32 %and16 to i8
  %conv20 = or i8 %and1951, %46
  br label %for.body.i113

for.cond.i107:                                    ; preds = %for.body.i113
  %inc.i105 = add nuw nsw i32 %i.021.i108, 1
  %exitcond.not.i106 = icmp eq i32 %inc.i105, 65536
  br i1 %exitcond.not.i106, label %do.end11.i122, label %for.cond.i107.for.body.i113_crit_edge

for.cond.i107.for.body.i113_crit_edge:            ; preds = %for.cond.i107
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i113

for.body.i113:                                    ; preds = %for.cond.i107.for.body.i113_crit_edge, %snd_es1938_write_cmd.exit103
  %i.021.i108 = phi i32 [ 0, %snd_es1938_write_cmd.exit103 ], [ %inc.i105, %for.cond.i107.for.body.i113_crit_edge ]
  %47 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sb_port.i, align 4
  %add.i109 = add i32 %48, 12
  %and.i110 = and i32 %add.i109, 1048575
  %add1.i111 = or i32 %and.i110, -18874368
  %49 = inttoptr i32 %add1.i111 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %tobool.not.i112 = icmp sgt i8 %50, -1
  br i1 %tobool.not.i112, label %do.body.i117, label %for.cond.i107

do.body.i117:                                     ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %51 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sb_port.i, align 4
  %add5.i114 = add i32 %52, 12
  %and6.i115 = and i32 %add5.i114, 1048575
  %add7.i116 = or i32 %and6.i115, -18874368
  %53 = inttoptr i32 %add7.i116 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %conv20) #13, !srcloc !262
  br label %snd_es1938_write_cmd.exit123

do.end11.i122:                                    ; preds = %for.cond.i107
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i118 = zext i8 %50 to i32
  %card.i119 = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %54 = ptrtoint ptr %card.i119 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i119, align 4
  %dev.i120 = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev.i120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i120, align 8
  %conv12.i121 = zext i8 %conv20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.28, i32 noundef %conv12.i121, i32 noundef %phi.cast.i118) #16
  br label %snd_es1938_write_cmd.exit123

snd_es1938_write_cmd.exit123:                     ; preds = %do.end11.i122, %do.body.i117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1938_bits.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1938_bits, %if.then26)) #13
          to label %if.end32 [label %if.then26], !srcloc !260

if.then26:                                        ; preds = %snd_es1938_write_cmd.exit123
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %58 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %conv27 = zext i8 %reg to i32
  %conv29 = zext i8 %conv20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1938_bits.__UNIQUE_ID_ddebug257, ptr noundef %61, ptr noundef nonnull @.str.33, i32 noundef %conv27, i32 noundef %conv7, i32 noundef %conv29) #13
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %snd_es1938_write_cmd.exit123, %snd_es1938_get_byte.exit.if.end32_crit_edge
  %conv11 = zext i8 %conv9 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #13
  ret i32 %conv11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %playback1_substream = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 17
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %capture_substream = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %capture_substream, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %playback2_substream = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 18
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 940, i32 noundef 9, ptr noundef nonnull @.str.37) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %playback2_substream.sink = phi ptr [ %playback2_substream, %if.end ], [ %playback1_substream, %sw.bb ]
  %9 = ptrtoint ptr %playback2_substream.sink to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %substream, ptr %playback2_substream.sink, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw, ptr @snd_es1938_playback, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_ratnums(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_constraints_clocks) #13
  %call20 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 0, i32 noundef 65280) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb2.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ], [ -11, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %3, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %playback1_substream = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %playback1_substream, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %playback2_substream = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %playback2_substream, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 970, i32 noundef 9, ptr noundef nonnull @.str.37) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %1, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %5 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime1.i, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buffer_size.i.i, align 4
  %frame_bits.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 21
  %9 = ptrtoint ptr %frame_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frame_bits.i.i.i, align 8
  %mul.i.i.i = mul i32 %10, %8
  %div1.i.i.i = lshr i32 %mul.i.i.i, 3
  %period_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 16
  %11 = ptrtoint ptr %period_size.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %period_size.i.i, align 4
  %mul.i.i3.i = mul i32 %12, %10
  %div1.i.i4.i = lshr i32 %mul.i.i3.i, 4
  %dma2_size.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 21
  %13 = ptrtoint ptr %dma2_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div1.i.i.i, ptr %dma2_size.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 51
  %14 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr.i, align 8
  %dma2_start.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 23
  %16 = ptrtoint ptr %dma2_start.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dma2_start.i, align 4
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 15
  %17 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp ult i32 %18, 2
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 12
  %19 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format.i, align 4
  %call3.i = tail call i32 @snd_pcm_format_width(i32 noundef %20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i)
  %cmp4.i = icmp ne i32 %call3.i, 16
  %cond5.neg.i = sext i1 %cmp4.i to i32
  %21 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format.i, align 4
  %call7.i = tail call i32 @snd_pcm_format_unsigned(i32 noundef %22) #13
  %sub.i = select i1 %cmp.i, i32 1, i32 2
  %sub8.i = add nsw i32 %sub.i, %cond5.neg.i
  %dma2_shift.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 25
  %23 = ptrtoint ptr %dma2_shift.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub8.i, ptr %dma2_shift.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !284
  tail call void @arm_heavy_mb() #13
  %sb_port.i.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 2
  %24 = ptrtoint ptr %sb_port.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_port.i.i, align 4
  %add.i.i = add i32 %25, 6
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %26 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 2) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !285
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %sb_port.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sb_port.i.i, align 4
  %add5.i.i = add i32 %28, 6
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %29 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #13, !srcloc !262
  %30 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime1.i, align 4
  %rate_num.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 24
  %32 = ptrtoint ptr %rate_num.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 793800, i32 %33)
  %cmp.i.i = icmp eq i32 %33, 793800
  %rate_den.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 25
  %34 = ptrtoint ptr %rate_den.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rate_den.i.i, align 8
  %..i.i = select i1 %cmp.i.i, i32 128, i32 0
  %sub3.i.i = sub i32 %..i.i, %35
  %rate.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 14
  %36 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rate.i.i, align 4
  %mul.i.i = mul i32 %37, 656
  %div.i.i = udiv i32 143200000, %mul.i.i
  %conv.i.i = trunc i32 %sub3.i.i to i8
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %4, i8 noundef zeroext 112, i8 noundef zeroext %conv.i.i) #13
  %38 = trunc i32 %div.i.i to i8
  %conv7.i.i = sub i8 0, %38
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %4, i8 noundef zeroext 114, i8 noundef zeroext %conv7.i.i) #13
  %sub9.i = sub nsw i32 65536, %div1.i.i4.i
  %conv.i = trunc i32 %sub9.i to i8
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %4, i8 noundef zeroext 116, i8 noundef zeroext %conv.i) #13
  %shr10.i = lshr i32 %sub9.i, 8
  %conv11.i = trunc i32 %shr10.i to i8
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %4, i8 noundef zeroext 118, i8 noundef zeroext %conv11.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  %or.i = select i1 %tobool.not.i, i8 68, i8 64
  %cond14.i = select i1 %cmp.i, i8 0, i8 2
  %not.cmp4.i = xor i1 %cmp4.i, true
  %cond17.i = zext i1 %not.cmp4.i to i8
  %or15.i = or i8 %cond14.i, %cond17.i
  %or18.i = or i8 %or15.i, %or.i
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %4, i8 noundef zeroext 122, i8 noundef zeroext %or18.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !286
  tail call void @arm_heavy_mb() #13
  %io_port.i.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 1
  %39 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %io_port.i.i, align 4
  %add.i6.i = add i32 %40, 6
  %and.i7.i = and i32 %add.i6.i, 1048575
  %add1.i8.i = or i32 %and.i7.i, -18874368
  %41 = inttoptr i32 %add1.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !287
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %dma2_start.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma2_start.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #13
  %45 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %io_port.i.i, align 4
  %and6.i9.i = and i32 %46, 1048575
  %add7.i10.i = or i32 %and6.i9.i, -18874368
  %47 = inttoptr i32 %add7.i10.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %47, i32 %44) #13, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !289
  tail call void @arm_heavy_mb() #13
  %48 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_port.i.i, align 4
  %add12.i.i = add i32 %49, 4
  %and13.i.i = and i32 %add12.i.i, 1048575
  %add14.i.i = or i32 %and13.i.i, -18874368
  %50 = inttoptr i32 %add14.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %50, i16 0) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !291
  tail call void @arm_heavy_mb() #13
  %51 = ptrtoint ptr %dma2_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma2_size.i, align 4
  %conv.i11.i = trunc i32 %52 to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv.i11.i) #13
  %54 = ptrtoint ptr %io_port.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_port.i.i, align 4
  %add19.i.i = add i32 %55, 4
  %and20.i.i = and i32 %add19.i.i, 1048575
  %add21.i.i = or i32 %and20.i.i, -18874368
  %56 = inttoptr i32 %add21.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %56, i16 %53) #13, !srcloc !290
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data.i20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %57 = ptrtoint ptr %private_data.i20 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %private_data.i20, align 4
  %runtime1.i21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %59 = ptrtoint ptr %runtime1.i21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %runtime1.i21, align 4
  %buffer_size.i.i22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %60, i32 0, i32 18
  %61 = ptrtoint ptr %buffer_size.i.i22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buffer_size.i.i22, align 4
  %frame_bits.i.i.i23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %60, i32 0, i32 21
  %63 = ptrtoint ptr %frame_bits.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %frame_bits.i.i.i23, align 8
  %mul.i.i.i24 = mul i32 %64, %62
  %div1.i.i.i25 = lshr i32 %mul.i.i.i24, 3
  %period_size.i.i26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %60, i32 0, i32 16
  %65 = ptrtoint ptr %period_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %period_size.i.i26, align 4
  %mul.i.i3.i27 = mul i32 %66, %64
  %div1.i.i4.i28 = lshr i32 %mul.i.i3.i27, 3
  %dma1_size.i = getelementptr inbounds %struct.es1938, ptr %58, i32 0, i32 20
  %67 = ptrtoint ptr %dma1_size.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div1.i.i.i25, ptr %dma1_size.i, align 4
  %dma_addr.i29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %60, i32 0, i32 51
  %68 = ptrtoint ptr %dma_addr.i29 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_addr.i29, align 8
  %dma1_start.i = getelementptr inbounds %struct.es1938, ptr %58, i32 0, i32 22
  %70 = ptrtoint ptr %dma1_start.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %dma1_start.i, align 4
  %channels.i30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %60, i32 0, i32 15
  %71 = ptrtoint ptr %channels.i30 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %channels.i30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp.i31 = icmp ult i32 %72, 2
  %format.i32 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %60, i32 0, i32 12
  %73 = ptrtoint ptr %format.i32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %format.i32, align 4
  %call3.i33 = tail call i32 @snd_pcm_format_width(i32 noundef %74) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3.i33)
  %cmp4.i34 = icmp ne i32 %call3.i33, 16
  %cond5.neg.i35 = sext i1 %cmp4.i34 to i32
  %75 = ptrtoint ptr %format.i32 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %format.i32, align 4
  %call7.i36 = tail call i32 @snd_pcm_format_unsigned(i32 noundef %76) #13
  %sub.i37 = select i1 %cmp.i31, i32 1, i32 2
  %sub8.i38 = add nsw i32 %sub.i37, %cond5.neg.i35
  %dma1_shift.i = getelementptr inbounds %struct.es1938, ptr %58, i32 0, i32 24
  %77 = ptrtoint ptr %dma1_shift.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub8.i38, ptr %dma1_shift.i, align 4
  %sub9.i39 = sub nsw i32 65536, %div1.i.i4.i28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !284
  tail call void @arm_heavy_mb() #13
  %sb_port.i.i40 = getelementptr inbounds %struct.es1938, ptr %58, i32 0, i32 2
  %78 = ptrtoint ptr %sb_port.i.i40 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sb_port.i.i40, align 4
  %add.i.i41 = add i32 %79, 6
  %and.i.i42 = and i32 %add.i.i41, 1048575
  %add1.i.i43 = or i32 %and.i.i42, -18874368
  %80 = inttoptr i32 %add1.i.i43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 2) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !285
  tail call void @arm_heavy_mb() #13
  %81 = ptrtoint ptr %sb_port.i.i40 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sb_port.i.i40, align 4
  %add5.i.i44 = add i32 %82, 6
  %and6.i.i45 = and i32 %add5.i.i44, 1048575
  %add7.i.i46 = or i32 %and6.i.i45, -18874368
  %83 = inttoptr i32 %add7.i.i46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 0) #13, !srcloc !262
  %conv.i47 = select i1 %cmp.i31, i8 2, i8 1
  %call11.i = tail call fastcc i32 @snd_es1938_bits(ptr noundef %58, i8 noundef zeroext -88, i8 noundef zeroext 3, i8 noundef zeroext %conv.i47) #13
  %84 = ptrtoint ptr %runtime1.i21 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %runtime1.i21, align 4
  %rate_num.i.i48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %85, i32 0, i32 24
  %86 = ptrtoint ptr %rate_num.i.i48 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rate_num.i.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 793800, i32 %87)
  %cmp.i.i49 = icmp eq i32 %87, 793800
  %rate_den.i.i50 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %85, i32 0, i32 25
  %88 = ptrtoint ptr %rate_den.i.i50 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rate_den.i.i50, align 8
  %..i.i51 = select i1 %cmp.i.i49, i32 128, i32 0
  %sub3.i.i52 = sub i32 %..i.i51, %89
  %rate.i.i53 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %85, i32 0, i32 14
  %90 = ptrtoint ptr %rate.i.i53 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rate.i.i53, align 4
  %mul.i.i54 = mul i32 %91, 656
  %div.i.i55 = udiv i32 143200000, %mul.i.i54
  %conv.i.i56 = trunc i32 %sub3.i.i52 to i8
  tail call fastcc void @snd_es1938_write(ptr noundef %58, i8 noundef zeroext -95, i8 noundef zeroext %conv.i.i56) #13
  %92 = trunc i32 %div.i.i55 to i8
  %conv10.i.i = sub i8 0, %92
  tail call fastcc void @snd_es1938_write(ptr noundef %58, i8 noundef zeroext -94, i8 noundef zeroext %conv10.i.i) #13
  %conv12.i = trunc i32 %sub9.i39 to i8
  tail call fastcc void @snd_es1938_write(ptr noundef %58, i8 noundef zeroext -92, i8 noundef zeroext %conv12.i) #13
  %shr.i = lshr i32 %sub9.i39, 8
  %conv13.i = trunc i32 %shr.i to i8
  tail call fastcc void @snd_es1938_write(ptr noundef %58, i8 noundef zeroext -91, i8 noundef zeroext %conv13.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i36)
  %tobool14.not.i = icmp eq i32 %call7.i36, 0
  %conv16.i = select i1 %tobool14.not.i, i8 0, i8 -128
  tail call fastcc void @snd_es1938_write(ptr noundef %58, i8 noundef zeroext -74, i8 noundef zeroext %conv16.i) #13
  %conv19.i = select i1 %tobool14.not.i, i8 113, i8 81
  tail call fastcc void @snd_es1938_write(ptr noundef %58, i8 noundef zeroext -74, i8 noundef zeroext %conv19.i) #13
  %or.i57 = select i1 %cmp.i31, i8 -48, i8 -104
  %cond23.i = select i1 %cmp4.i34, i8 0, i8 4
  %or24.i = or i8 %cond23.i, %or.i57
  %cond26.i = select i1 %tobool14.not.i, i8 32, i8 0
  %or27.i = or i8 %or24.i, %cond26.i
  tail call fastcc void @snd_es1938_write(ptr noundef %58, i8 noundef zeroext -73, i8 noundef zeroext %or27.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !292
  tail call void @arm_heavy_mb() #13
  %ddma_port.i.i = getelementptr inbounds %struct.es1938, ptr %58, i32 0, i32 6
  %93 = ptrtoint ptr %ddma_port.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ddma_port.i.i, align 4
  %add.i6.i58 = add i32 %94, 8
  %and.i7.i59 = and i32 %add.i6.i58, 1048575
  %add1.i8.i60 = or i32 %and.i7.i59, -18874368
  %95 = inttoptr i32 %add1.i8.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 -60) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !293
  tail call void @arm_heavy_mb() #13
  %96 = ptrtoint ptr %ddma_port.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ddma_port.i.i, align 4
  %add5.i9.i = add i32 %97, 13
  %and6.i10.i = and i32 %add5.i9.i, 1048575
  %add7.i11.i = or i32 %and6.i10.i, -18874368
  %98 = inttoptr i32 %add7.i11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %98, i8 0) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  %99 = ptrtoint ptr %ddma_port.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ddma_port.i.i, align 4
  %add12.i.i61 = add i32 %100, 15
  %and13.i.i62 = and i32 %add12.i.i61, 1048575
  %add14.i.i63 = or i32 %and13.i.i62, -18874368
  %101 = inttoptr i32 %add14.i.i63 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 1) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  tail call void @arm_heavy_mb() #13
  %102 = ptrtoint ptr %ddma_port.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ddma_port.i.i, align 4
  %add19.i.i64 = add i32 %103, 11
  %and20.i.i65 = and i32 %add19.i.i64, 1048575
  %add21.i.i66 = or i32 %and20.i.i65, -18874368
  %104 = inttoptr i32 %add21.i.i66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 24) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !296
  tail call void @arm_heavy_mb() #13
  %105 = ptrtoint ptr %dma1_start.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma1_start.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #13
  %108 = ptrtoint ptr %ddma_port.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ddma_port.i.i, align 4
  %and27.i.i = and i32 %109, 1048575
  %add28.i.i = or i32 %and27.i.i, -18874368
  %110 = inttoptr i32 %add28.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %110, i32 %107) #13, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !297
  tail call void @arm_heavy_mb() #13
  %111 = ptrtoint ptr %dma1_size.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma1_size.i, align 4
  %113 = trunc i32 %112 to i16
  %conv.i12.i = add i16 %113, -1
  %114 = tail call i16 @llvm.bswap.i16(i16 %conv.i12.i) #13
  %115 = ptrtoint ptr %ddma_port.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ddma_port.i.i, align 4
  %add33.i.i = add i32 %116, 4
  %and34.i.i = and i32 %add33.i.i, 1048575
  %add35.i.i = or i32 %and34.i.i, -18874368
  %117 = inttoptr i32 %add35.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %117, i16 %114) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  tail call void @arm_heavy_mb() #13
  %118 = ptrtoint ptr %ddma_port.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ddma_port.i.i, align 4
  %add40.i.i = add i32 %119, 15
  %and41.i.i = and i32 %add40.i.i, 1048575
  %add42.i.i = or i32 %and41.i.i, -18874368
  %120 = inttoptr i32 %add42.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 0) #13, !srcloc !262
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 742, i32 noundef 9, ptr noundef nonnull @.str.37) #13
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %1, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %cmd, label %sw.bb.return_crit_edge [
    i32 1, label %sw.bb.sw.bb.i_crit_edge
    i32 6, label %sw.bb.sw.bb.i_crit_edge27
    i32 0, label %sw.bb.do.body3.i_crit_edge
    i32 5, label %sw.bb.do.body3.i_crit_edge28
  ]

sw.bb.do.body3.i_crit_edge28:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

sw.bb.do.body3.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

sw.bb.sw.bb.i_crit_edge27:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge27
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %4, i8 noundef zeroext 120, i8 noundef zeroext -110) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #13
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %4, i8 noundef zeroext 120, i8 noundef zeroext -109) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !299
  tail call void @arm_heavy_mb() #13
  %io_port.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_port.i, align 4
  %add.i = add i32 %8, 6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 10) #13, !srcloc !262
  %active.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 27
  %10 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active.i, align 4
  %or.i = or i32 %11, 4
  store i32 %or.i, ptr %active.i, align 4
  br label %return

do.body3.i:                                       ; preds = %sw.bb.do.body3.i_crit_edge, %sw.bb.do.body3.i_crit_edge28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !300
  tail call void @arm_heavy_mb() #13
  %io_port6.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %io_port6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_port6.i, align 4
  %add7.i = add i32 %13, 6
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %14 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #13, !srcloc !262
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %4, i8 noundef zeroext 120, i8 noundef zeroext 0) #13
  %active11.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 27
  %15 = ptrtoint ptr %active11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %active11.i, align 4
  %and12.i = and i32 %16, -5
  store i32 %and12.i, ptr %active11.i, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %private_data.i21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %17 = ptrtoint ptr %private_data.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data.i21, align 4
  %19 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %cmd, label %sw.bb1.return_crit_edge [
    i32 1, label %sw.bb1.sw.bb.i24_crit_edge
    i32 6, label %sw.bb1.sw.bb.i24_crit_edge29
    i32 0, label %sw.bb1.sw.bb1.i_crit_edge
    i32 5, label %sw.bb1.sw.bb1.i_crit_edge30
  ]

sw.bb1.sw.bb1.i_crit_edge30:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.i

sw.bb1.sw.bb1.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.i

sw.bb1.sw.bb.i24_crit_edge29:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i24

sw.bb1.sw.bb.i24_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i24

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb.i24:                                        ; preds = %sw.bb1.sw.bb.i24_crit_edge, %sw.bb1.sw.bb.i24_crit_edge29
  %active.i22 = getelementptr inbounds %struct.es1938, ptr %18, i32 0, i32 27
  %20 = ptrtoint ptr %active.i22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active.i22, align 4
  %or.i23 = or i32 %21, 1
  store i32 %or.i23, ptr %active.i22, align 4
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sw.bb1.sw.bb1.i_crit_edge, %sw.bb1.sw.bb1.i_crit_edge30
  %active2.i = getelementptr inbounds %struct.es1938, ptr %18, i32 0, i32 27
  %22 = ptrtoint ptr %active2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active2.i, align 4
  %and.i25 = and i32 %23, -2
  store i32 %and.i25, ptr %active2.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i24
  %val.0.i = phi i8 [ 0, %sw.bb1.i ], [ 5, %sw.bb.i24 ]
  tail call fastcc void @snd_es1938_write(ptr noundef %18, i8 noundef zeroext -72, i8 noundef zeroext %val.0.i) #13
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 600, i32 noundef 9, ptr noundef nonnull @.str.37) #13
  br label %return

return:                                           ; preds = %do.end, %sw.epilog.i, %sw.bb1.return_crit_edge, %do.body3.i, %sw.bb.i, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.bb.return_crit_edge ], [ 0, %do.body3.i ], [ 0, %sw.bb.i ], [ 0, %sw.epilog.i ], [ -22, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_playback_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %1, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %dma2_size.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %dma2_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma2_size.i, align 4
  %io_port.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %io_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_port.i, align 4
  %add.i = add i32 %8, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #13, !srcloc !301
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !302
  %conv.i = zext i16 %11 to i32
  %sub.i = sub i32 %6, %conv.i
  %dma2_shift.i = getelementptr inbounds %struct.es1938, ptr %4, i32 0, i32 25
  %12 = ptrtoint ptr %dma2_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma2_shift.i, align 4
  %shr.i = lshr i32 %sub.i, %13
  br label %return

sw.bb1:                                           ; preds = %entry
  %private_data.i20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %14 = ptrtoint ptr %private_data.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i20, align 4
  %ddma_port.i = getelementptr inbounds %struct.es1938, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %ddma_port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ddma_port.i, align 4
  %add.i21 = add i32 %17, 4
  %and.i22 = and i32 %add.i21, 1048575
  %add1.i23 = or i32 %and.i22, -18874368
  %18 = inttoptr i32 %add1.i23 to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #13, !srcloc !301
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !303
  %conv.i24 = zext i16 %20 to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %sw.bb1
  %old.0.i = phi i32 [ %conv.i24, %sw.bb1 ], [ %conv11.i, %while.cond.i.while.cond.i_crit_edge ]
  %21 = ptrtoint ptr %ddma_port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ddma_port.i, align 4
  %add5.i = add i32 %22, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %23 = inttoptr i32 %add7.i to ptr
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %23) #13, !srcloc !301
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !304
  %conv11.i = zext i16 %25 to i32
  %cmp.not.i = icmp eq i32 %old.0.i, %conv11.i
  br i1 %cmp.not.i, label %snd_es1938_playback2_pointer.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

snd_es1938_playback2_pointer.exit:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %dma1_size.i = getelementptr inbounds %struct.es1938, ptr %15, i32 0, i32 20
  %26 = ptrtoint ptr %dma1_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma1_size.i, align 4
  %28 = xor i32 %old.0.i, -1
  %sub13.i = add i32 %27, %28
  %dma1_shift.i = getelementptr inbounds %struct.es1938, ptr %15, i32 0, i32 24
  %29 = ptrtoint ptr %dma1_shift.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma1_shift.i, align 4
  %shr.i25 = lshr i32 %sub13.i, %30
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 821, i32 noundef 9, ptr noundef nonnull @.str.37) #13
  br label %return

return:                                           ; preds = %do.end, %snd_es1938_playback2_pointer.exit, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ %shr.i25, %snd_es1938_playback2_pointer.exit ], [ %shr.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_ratnums(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_unsigned(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback2_substream = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %playback2_substream, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %capture_substream = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %capture_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw, ptr @snd_es1938_capture, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_ratnums(ptr noundef %5, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_constraints_clocks) #13
  %call2 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %5, i32 noundef 18, i32 noundef 0, i32 noundef 65280) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_es1938_capture_close(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_substream = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %mul.i.i51 = mul i32 %9, %7
  %div1.i.i52 = lshr i32 %mul.i.i51, 3
  %dma1_size = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %dma1_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div1.i.i, ptr %dma1_size, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 8
  %dma1_start = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %dma1_start to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dma1_start, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp ult i32 %15, 2
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format, align 4
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3)
  %cmp4 = icmp ne i32 %call3, 16
  %cond5.neg = sext i1 %cmp4 to i32
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format, align 4
  %call7 = tail call i32 @snd_pcm_format_unsigned(i32 noundef %19) #13
  %sub = select i1 %cmp, i32 1, i32 2
  %sub8 = add nsw i32 %sub, %cond5.neg
  %dma1_shift = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %dma1_shift to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub8, ptr %dma1_shift, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !284
  tail call void @arm_heavy_mb() #13
  %sb_port.i = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sb_port.i, align 4
  %add.i = add i32 %22, 6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %23 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 2) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !285
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_port.i, align 4
  %add5.i = add i32 %25, 6
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %26 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #13, !srcloc !262
  %conv = select i1 %cmp, i8 2, i8 1
  %call10 = tail call fastcc i32 @snd_es1938_bits(ptr noundef %1, i8 noundef zeroext -88, i8 noundef zeroext 3, i8 noundef zeroext %conv)
  %27 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime1, align 4
  %rate_num.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 24
  %29 = ptrtoint ptr %rate_num.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rate_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 793800, i32 %30)
  %cmp.i = icmp eq i32 %30, 793800
  %rate_den.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 25
  %31 = ptrtoint ptr %rate_den.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate_den.i, align 8
  %..i = select i1 %cmp.i, i32 128, i32 0
  %sub3.i = sub i32 %..i, %32
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 14
  %33 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rate.i, align 4
  %mul.i = mul i32 %34, 656
  %div.i = udiv i32 143200000, %mul.i
  %conv.i = trunc i32 %sub3.i to i8
  tail call fastcc void @snd_es1938_write(ptr noundef %1, i8 noundef zeroext -95, i8 noundef zeroext %conv.i) #13
  %35 = trunc i32 %div.i to i8
  %conv10.i = sub i8 0, %35
  tail call fastcc void @snd_es1938_write(ptr noundef %1, i8 noundef zeroext -94, i8 noundef zeroext %conv10.i) #13
  %sub11 = sub nsw i32 65536, %div1.i.i52
  %conv12 = trunc i32 %sub11 to i8
  tail call fastcc void @snd_es1938_write(ptr noundef %1, i8 noundef zeroext -92, i8 noundef zeroext %conv12)
  %shr = lshr i32 %sub11, 8
  %conv13 = trunc i32 %shr to i8
  tail call fastcc void @snd_es1938_write(ptr noundef %1, i8 noundef zeroext -91, i8 noundef zeroext %conv13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool14.not = icmp eq i32 %call7, 0
  %conv16 = select i1 %tobool14.not, i8 113, i8 81
  tail call fastcc void @snd_es1938_write(ptr noundef %1, i8 noundef zeroext -73, i8 noundef zeroext %conv16)
  %or = select i1 %tobool14.not, i8 -80, i8 -112
  %cond20 = select i1 %cmp4, i8 0, i8 4
  %cond23 = select i1 %cmp, i8 64, i8 8
  %or21 = or i8 %cond20, %cond23
  %or24 = or i8 %or21, %or
  tail call fastcc void @snd_es1938_write(ptr noundef %1, i8 noundef zeroext -73, i8 noundef zeroext %or24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !305
  tail call void @arm_heavy_mb() #13
  %ddma_port.i = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %ddma_port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ddma_port.i, align 4
  %add.i54 = add i32 %37, 8
  %and.i55 = and i32 %add.i54, 1048575
  %add1.i56 = or i32 %and.i55, -18874368
  %38 = inttoptr i32 %add1.i56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 -60) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !306
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %ddma_port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ddma_port.i, align 4
  %add5.i57 = add i32 %40, 13
  %and6.i58 = and i32 %add5.i57, 1048575
  %add7.i59 = or i32 %and6.i58, -18874368
  %41 = inttoptr i32 %add7.i59 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !307
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %ddma_port.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ddma_port.i, align 4
  %add12.i = add i32 %43, 15
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %44 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 1) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !308
  tail call void @arm_heavy_mb() #13
  %45 = ptrtoint ptr %ddma_port.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ddma_port.i, align 4
  %add19.i = add i32 %46, 11
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %47 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 20) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !309
  tail call void @arm_heavy_mb() #13
  %48 = ptrtoint ptr %dma1_start to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma1_start, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #13
  %51 = ptrtoint ptr %ddma_port.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ddma_port.i, align 4
  %and27.i = and i32 %52, 1048575
  %add28.i = or i32 %and27.i, -18874368
  %53 = inttoptr i32 %add28.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 %50) #13, !srcloc !288
  %54 = ptrtoint ptr %dma1_start to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma1_start, align 4
  %last_capture_dmaaddr.i = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 26
  %56 = ptrtoint ptr %last_capture_dmaaddr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %last_capture_dmaaddr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !310
  tail call void @arm_heavy_mb() #13
  %57 = ptrtoint ptr %dma1_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma1_size, align 4
  %59 = trunc i32 %58 to i16
  %conv.i60 = add i16 %59, -1
  %60 = tail call i16 @llvm.bswap.i16(i16 %conv.i60) #13
  %61 = ptrtoint ptr %ddma_port.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ddma_port.i, align 4
  %add34.i = add i32 %62, 4
  %and35.i = and i32 %add34.i, 1048575
  %add36.i = or i32 %and35.i, -18874368
  %63 = inttoptr i32 %add36.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 %60) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  tail call void @arm_heavy_mb() #13
  %64 = ptrtoint ptr %ddma_port.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ddma_port.i, align 4
  %add41.i = add i32 %65, 15
  %and42.i = and i32 %add41.i, 1048575
  %add43.i = or i32 %and42.i, -18874368
  %66 = inttoptr i32 %add43.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #13, !srcloc !262
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge6
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge7
  ]

entry.sw.bb1_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6
  %active = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %active, align 4
  %or = or i32 %4, 2
  store i32 %or, ptr %active, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge7
  %active2 = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %active2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active2, align 4
  %and = and i32 %6, -3
  store i32 %and, ptr %active2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %val.0 = phi i8 [ 0, %sw.bb1 ], [ 15, %sw.bb ]
  tail call fastcc void @snd_es1938_write(ptr noundef %1, i8 noundef zeroext -72, i8 noundef zeroext %val.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ddma_port = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ddma_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ddma_port, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #13, !srcloc !312
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !313
  %7 = ptrtoint ptr %ddma_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ddma_port, align 4
  %add5 = add i32 %8, 4
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #13, !srcloc !301
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !314
  %conv = zext i16 %11 to i32
  %dma1_start = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %dma1_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma1_start, align 4
  %dma1_size = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %dma1_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma1_size, align 4
  %add11 = add i32 %15, %13
  %16 = add i32 %6, %conv
  %sub12 = sub i32 %add11, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub12)
  %cmp = icmp ult i32 %sub12, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %13)
  %cmp15 = icmp uge i32 %6, %13
  %or.cond = select i1 %cmp, i1 %cmp15, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add11)
  %cmp21.not = icmp ult i32 %6, %add11
  %or.cond41 = select i1 %or.cond, i1 %cmp21.not, i1 false
  %last_capture_dmaaddr23 = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 26
  br i1 %or.cond41, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %last_capture_dmaaddr23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_capture_dmaaddr23, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %last_capture_dmaaddr23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %6, ptr %last_capture_dmaaddr23, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ptr.0 = phi i32 [ %18, %if.then ], [ %6, %if.else ]
  %sub25 = sub i32 %ptr.0, %13
  %dma1_shift = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %dma1_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma1_shift, align 4
  %shr = lshr i32 %sub25, %21
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_capture_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add = add i32 %count, %pos
  %dma1_size = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %dma1_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma1_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %do.end, label %if.end22, !prof !315

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 832, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end22:                                         ; preds = %entry
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp25 = icmp ult i32 %add, %3
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %pos
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 1
  br i1 %cmp25, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !316

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %add.ptr27, i32 noundef %count, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst, i32 %count, i32 -1226833920) #18, !srcloc !317
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr27, i32 noundef %count) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %dst, ptr noundef %add.ptr27, i32 noundef %count) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %count, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %count, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool28.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool28.not, label %copy_to_user.exit.if.end50_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit.if.end50_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.else:                                          ; preds = %if.end22
  %sub = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9.i.i72 = icmp slt i32 %sub, 0
  br i1 %cmp9.i.i72, label %land.rhs16.i.i75, label %if.then.i.i.i78

land.rhs16.i.i75:                                 ; preds = %if.else
  %.b1.i.i74 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i74, label %land.rhs16.i.i75.cleanup_crit_edge, label %if.then27.i.i76, !prof !316

land.rhs16.i.i75.cleanup_crit_edge:               ; preds = %land.rhs16.i.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27.i.i76:                                  ; preds = %land.rhs16.i.i75
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.then.i.i.i78:                                  ; preds = %if.else
  tail call void @__check_object_size(ptr noundef %add.ptr27, i32 noundef %sub, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 174) #13
  %call.i.i79 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i79, label %if.then.i.i.i78.copy_to_user.exit88_crit_edge, label %if.end.i.i83

if.then.i.i.i78.copy_to_user.exit88_crit_edge:    ; preds = %if.then.i.i.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit88

if.end.i.i83:                                     ; preds = %if.then.i.i.i78
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst, i32 %sub, i32 -1226833920) #18, !srcloc !317
  %asmresult.i.i81 = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i81)
  %cmp.i6.i82 = icmp eq i32 %asmresult.i.i81, 0
  br i1 %cmp.i6.i82, label %if.then2.i.i86, label %if.end.i.i83.copy_to_user.exit88_crit_edge

if.end.i.i83.copy_to_user.exit88_crit_edge:       ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit88

if.then2.i.i86:                                   ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i84 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr27, i32 noundef %sub) #13
  %call.i12.i.i85 = tail call i32 @arm_copy_to_user(ptr noundef %dst, ptr noundef %add.ptr27, i32 noundef %sub) #13
  br label %copy_to_user.exit88

copy_to_user.exit88:                              ; preds = %if.then2.i.i86, %if.end.i.i83.copy_to_user.exit88_crit_edge, %if.then.i.i.i78.copy_to_user.exit88_crit_edge
  %n.addr.0.i87 = phi i32 [ %sub, %if.then.i.i.i78.copy_to_user.exit88_crit_edge ], [ %call.i12.i.i85, %if.then2.i.i86 ], [ %sub, %if.end.i.i83.copy_to_user.exit88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i87)
  %tobool35.not = icmp eq i32 %n.addr.0.i87, 0
  br i1 %tobool35.not, label %if.end37, label %copy_to_user.exit88.cleanup_crit_edge

copy_to_user.exit88.cleanup_crit_edge:            ; preds = %copy_to_user.exit88
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %copy_to_user.exit88
  %add.ptr39 = getelementptr i8, ptr %dst, i32 %count
  %add.ptr40 = getelementptr i8, ptr %add.ptr39, i32 -1
  %10 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_area, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 841) #13
  %14 = tail call i32 @llvm.read_register.i32(metadata !248) #13
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !318
  %and.i = and i32 %16, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !319
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  %17 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr40, i8 %13, i32 -1226833921) #13, !srcloc !321
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #13, !srcloc !319
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool47.not = icmp eq i32 %17, 0
  br i1 %tobool47.not, label %if.end37.if.end50_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.end50:                                         ; preds = %if.end37.if.end50_crit_edge, %copy_to_user.exit.if.end50_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end37.cleanup_crit_edge, %copy_to_user.exit88.cleanup_crit_edge, %if.then27.i.i76, %land.rhs16.i.i75.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end50 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit88.cleanup_crit_edge ], [ -14, %if.end37.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i76 ], [ -14, %land.rhs16.i.i75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_capture_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr nocapture noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add = add i32 %count, %pos
  %dma1_size = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %dma1_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma1_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %do.end, label %if.end22, !prof !315

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 854, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end22:                                         ; preds = %entry
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp25 = icmp ult i32 %add, %3
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %pos
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 1
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %8 = call ptr @memcpy(ptr %dst, ptr %add.ptr27, i32 %count)
  br label %cleanup

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i32 %count, -1
  %9 = call ptr @memcpy(ptr %dst, ptr %add.ptr27, i32 %sub)
  %add.ptr31 = getelementptr i8, ptr %dst, i32 %count
  %add.ptr32 = getelementptr i8, ptr %add.ptr31, i32 -1
  %10 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr32, align 1
  %12 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_area, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then26, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.else ], [ 0, %if.then26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_es1938_hwv_free(ptr nocapture noundef readonly %kcontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hw_volume = getelementptr inbounds %struct.es1938, ptr %1, i32 0, i32 9
  %2 = call ptr @memset(ptr %hw_volume, i32 0, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_es1938_info_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
define internal i32 @snd_es1938_get_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %conv = trunc i32 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %conv)
  %cmp.i = icmp ult i8 %conv, -96
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %1, i8 noundef zeroext %conv) #13
  br label %snd_es1938_reg_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call fastcc zeroext i8 @snd_es1938_read(ptr noundef %1, i8 noundef zeroext %conv) #13
  %conv3.i = zext i8 %call2.i to i32
  br label %snd_es1938_reg_read.exit

snd_es1938_reg_read.exit:                         ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %conv3.i, %if.else.i ]
  %4 = xor i32 %shr, %3
  %5 = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %snd_es1938_reg_read.exit.if.end_crit_edge, label %if.then

snd_es1938_reg_read.exit.if.end_crit_edge:        ; preds = %snd_es1938_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %snd_es1938_reg_read.exit
  %conv17 = trunc i32 %shr to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %conv17)
  %cmp.i57 = icmp ult i8 %conv17, -96
  br i1 %cmp.i57, label %if.then.i59, label %if.else.i62

if.then.i59:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call.i58 = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %1, i8 noundef zeroext %conv17) #13
  br label %if.end

if.else.i62:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i60 = tail call fastcc zeroext i8 @snd_es1938_read(ptr noundef %1, i8 noundef zeroext %conv17) #13
  %conv3.i61 = zext i8 %call2.i60 to i32
  br label %if.end

if.end:                                           ; preds = %if.else.i62, %if.then.i59, %snd_es1938_reg_read.exit.if.end_crit_edge
  %right.0 = phi i32 [ %retval.0.i, %snd_es1938_reg_read.exit.if.end_crit_edge ], [ %call.i58, %if.then.i59 ], [ %conv3.i61, %if.else.i62 ]
  %conv20 = and i32 %retval.0.i, 255
  %shr21 = lshr i32 %conv20, %and5
  %and22 = and i32 %shr21, %shr10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and22, ptr %value, align 8
  %conv23 = and i32 %right.0, 255
  %shr24 = lshr i32 %conv23, %and8
  %and25 = and i32 %shr24, %shr10
  %arrayidx27 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and25, ptr %arrayidx27, align 4
  %8 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.if.end38_crit_edge, label %if.then28

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub nsw i32 %shr10, %and22
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %value, align 8
  %sub35 = sub nsw i32 %shr10, %and25
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub35, ptr %arrayidx27, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then28, %if.end.if.end38_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_put_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %conv29 = trunc i32 %shl28 to i8
  %shl30 = shl nuw nsw i32 %shr10, %and5
  %shl32 = shl nuw nsw i32 %shr10, %and8
  %conv33 = trunc i32 %shl32 to i8
  %9 = xor i32 %shr, %3
  %10 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %entry
  %conv26 = trunc i32 %shl to i8
  %conv31 = trunc i32 %shl30 to i8
  %conv36 = trunc i32 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %conv36)
  %cmp.i = icmp ult i8 %conv36, -96
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @snd_es1938_mixer_bits(ptr noundef %1, i8 noundef zeroext %conv36, i8 noundef zeroext %conv31, i8 noundef zeroext %conv26) #13
  br label %snd_es1938_reg_bits.exit

if.else.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call fastcc i32 @snd_es1938_bits(ptr noundef %1, i8 noundef zeroext %conv36, i8 noundef zeroext %conv31, i8 noundef zeroext %conv26) #13
  br label %snd_es1938_reg_bits.exit

snd_es1938_reg_bits.exit:                         ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %conv37 = and i32 %shl, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv37)
  %cmp38.not = icmp ne i32 %retval.0.i, %conv37
  %conv42 = trunc i32 %shr to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %conv42)
  %cmp.i98 = icmp ult i8 %conv42, -96
  br i1 %cmp.i98, label %if.then.i100, label %if.else.i102

if.then.i100:                                     ; preds = %snd_es1938_reg_bits.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i99 = tail call fastcc i32 @snd_es1938_mixer_bits(ptr noundef %1, i8 noundef zeroext %conv42, i8 noundef zeroext %conv33, i8 noundef zeroext %conv29) #13
  br label %snd_es1938_reg_bits.exit104

if.else.i102:                                     ; preds = %snd_es1938_reg_bits.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i101 = tail call fastcc i32 @snd_es1938_bits(ptr noundef %1, i8 noundef zeroext %conv42, i8 noundef zeroext %conv33, i8 noundef zeroext %conv29) #13
  br label %snd_es1938_reg_bits.exit104

snd_es1938_reg_bits.exit104:                      ; preds = %if.else.i102, %if.then.i100
  %retval.0.i103 = phi i32 [ %call.i99, %if.then.i100 ], [ %call2.i101, %if.else.i102 ]
  %conv44 = and i32 %shl28, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i103, i32 %conv44)
  %cmp45.not = icmp ne i32 %retval.0.i103, %conv44
  %narrow = select i1 %cmp45.not, i1 true, i1 %cmp38.not
  br label %if.end63

if.else:                                          ; preds = %entry
  %conv49 = trunc i32 %3 to i8
  %conv5095 = or i32 %shl30, %shl32
  %conv52 = trunc i32 %conv5095 to i8
  %conv5396 = or i32 %shl28, %shl
  %or55 = and i32 %conv5396, 255
  %conv56 = trunc i32 %conv5396 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %conv49)
  %cmp.i105 = icmp ult i8 %conv49, -96
  br i1 %cmp.i105, label %if.then.i107, label %if.else.i109

if.then.i107:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call.i106 = tail call fastcc i32 @snd_es1938_mixer_bits(ptr noundef %1, i8 noundef zeroext %conv49, i8 noundef zeroext %conv52, i8 noundef zeroext %conv56) #13
  br label %snd_es1938_reg_bits.exit111

if.else.i109:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i108 = tail call fastcc i32 @snd_es1938_bits(ptr noundef %1, i8 noundef zeroext %conv49, i8 noundef zeroext %conv52, i8 noundef zeroext %conv56) #13
  br label %snd_es1938_reg_bits.exit111

snd_es1938_reg_bits.exit111:                      ; preds = %if.else.i109, %if.then.i107
  %retval.0.i110 = phi i32 [ %call.i106, %if.then.i107 ], [ %call2.i108, %if.else.i109 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i110, i32 %or55)
  %cmp61 = icmp ne i32 %retval.0.i110, %or55
  br label %if.end63

if.end63:                                         ; preds = %snd_es1938_reg_bits.exit111, %snd_es1938_reg_bits.exit104
  %change.1.in = phi i1 [ %cmp61, %snd_es1938_reg_bits.exit111 ], [ %narrow, %snd_es1938_reg_bits.exit104 ]
  %change.1 = zext i1 %change.1.in to i32
  ret i32 %change.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_es1938_info_hw_volume(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  store i32 63, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_get_hw_volume(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %1, i8 noundef zeroext 97)
  %and = and i32 %call, 63
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %value, align 8
  %call1 = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %1, i8 noundef zeroext 99)
  %and2 = and i32 %call1, 63
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and2, ptr %arrayidx4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_get_hw_switch(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %1, i8 noundef zeroext 97)
  %and = lshr i32 %call, 6
  %and.lobit = and i32 %and, 1
  %2 = xor i32 %and.lobit, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %value, align 8
  %call1 = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %1, i8 noundef zeroext 99)
  %and2 = lshr i32 %call1, 6
  %and2.lobit = and i32 %and2, 1
  %4 = xor i32 %and2.lobit, 1
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx7, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_es1938_info_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
define internal i32 @snd_es1938_get_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %conv)
  %cmp.i = icmp ult i8 %conv, -96
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %1, i8 noundef zeroext %conv) #13
  br label %snd_es1938_reg_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call fastcc zeroext i8 @snd_es1938_read(ptr noundef %1, i8 noundef zeroext %conv) #13
  %conv3.i = zext i8 %call2.i to i32
  br label %snd_es1938_reg_read.exit

snd_es1938_reg_read.exit:                         ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %conv3.i, %if.else.i ]
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %shr9 = ashr i32 %retval.0.i, %and2
  %and10 = and i32 %shr9, %and5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool.not = icmp ult i32 %3, 16777216
  %sub = sub nsw i32 %and5, %and10
  %spec.select = select i1 %tobool.not, i32 %and10, i32 %sub
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_put_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %and9 = and i32 %5, %shr4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool.not = icmp ult i32 %3, 16777216
  %and5 = and i32 %shr4, 255
  %conv10 = and i32 %and9, 255
  %sub = sub nsw i32 %and5, %conv10
  %val.0 = select i1 %tobool.not, i32 %and9, i32 %sub
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %shl = shl i32 %shr4, %and2
  %shl13 = shl i32 %val.0, %and2
  %conv14 = trunc i32 %shl13 to i8
  %conv15 = trunc i32 %3 to i8
  %conv16 = trunc i32 %shl to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %conv15)
  %cmp.i = icmp ult i8 %conv15, -96
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @snd_es1938_mixer_bits(ptr noundef %1, i8 noundef zeroext %conv15, i8 noundef zeroext %conv16, i8 noundef zeroext %conv14) #13
  br label %snd_es1938_reg_bits.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call fastcc i32 @snd_es1938_bits(ptr noundef %1, i8 noundef zeroext %conv15, i8 noundef zeroext %conv16, i8 noundef zeroext %conv14) #13
  br label %snd_es1938_reg_bits.exit

snd_es1938_reg_bits.exit:                         ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %conv17 = and i32 %shl13, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv17)
  %cmp = icmp ne i32 %retval.0.i, %conv17
  %conv18 = zext i1 %cmp to i32
  ret i32 %conv18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_info_mux(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @snd_es1938_info_mux.texts) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_get_mux(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %1, i8 noundef zeroext 28)
  %and = and i32 %call, 7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_put_mux(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  %conv1 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv1)
  %cmp = icmp ugt i32 %conv1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i32 %1 to i8
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_es1938_mixer_bits(ptr noundef %3, i8 noundef zeroext 28, i8 noundef zeroext 7, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv1)
  %cmp4 = icmp ne i32 %call, %conv1
  %conv5 = zext i1 %cmp4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_get_spatializer_enable(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %1, i8 noundef zeroext 80)
  %and = lshr i32 %call, 3
  %and.lobit = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and.lobit, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1938_put_spatializer_enable(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %conv = select i1 %tobool.not, i8 4, i8 12
  %call = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %1, i8 noundef zeroext 80)
  %conv1 = and i32 %call, 12
  %conv2 = zext i8 %conv to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %conv2)
  %cmp = icmp ne i32 %conv1, %conv2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and7 = and i8 %conv, 8
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %1, i8 noundef zeroext 80, i8 noundef zeroext %and7)
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %1, i8 noundef zeroext 80, i8 noundef zeroext %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv4 = zext i1 %cmp to i32
  ret i32 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @snd_es1938_read(ptr noundef %chip, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 28
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #13
  %sb_port.i = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65536
  br i1 %exitcond.not.i, label %do.end11.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.021.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_port.i, align 4
  %add.i = add i32 %1, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not.i = icmp sgt i8 %3, -1
  br i1 %tobool.not.i, label %do.body.i, label %for.cond.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_port.i, align 4
  %add5.i = add i32 %5, 12
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %6 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -64) #13, !srcloc !262
  br label %for.body.i33.preheader

do.end11.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i = zext i8 %3 to i32
  %card.i = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.28, i32 noundef 192, i32 noundef %phi.cast.i) #16
  br label %for.body.i33.preheader

for.body.i33.preheader:                           ; preds = %do.end11.i, %do.body.i
  br label %for.body.i33

for.cond.i27:                                     ; preds = %for.body.i33
  %inc.i25 = add nuw nsw i32 %i.021.i28, 1
  %exitcond.not.i26 = icmp eq i32 %inc.i25, 65536
  br i1 %exitcond.not.i26, label %do.end11.i41, label %for.cond.i27.for.body.i33_crit_edge

for.cond.i27.for.body.i33_crit_edge:              ; preds = %for.cond.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i33

for.body.i33:                                     ; preds = %for.cond.i27.for.body.i33_crit_edge, %for.body.i33.preheader
  %i.021.i28 = phi i32 [ %inc.i25, %for.cond.i27.for.body.i33_crit_edge ], [ 0, %for.body.i33.preheader ]
  %11 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_port.i, align 4
  %add.i29 = add i32 %12, 12
  %and.i30 = and i32 %add.i29, 1048575
  %add1.i31 = or i32 %and.i30, -18874368
  %13 = inttoptr i32 %add1.i31 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not.i32 = icmp sgt i8 %14, -1
  br i1 %tobool.not.i32, label %do.body.i37, label %for.cond.i27

do.body.i37:                                      ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !275
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_port.i, align 4
  %add5.i34 = add i32 %16, 12
  %and6.i35 = and i32 %add5.i34, 1048575
  %add7.i36 = or i32 %and6.i35, -18874368
  %17 = inttoptr i32 %add7.i36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %reg) #13, !srcloc !262
  br label %for.body.i50.preheader

do.end11.i41:                                     ; preds = %for.cond.i27
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i38 = zext i8 %14 to i32
  %card.i39 = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %18 = ptrtoint ptr %card.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i39, align 4
  %dev.i40 = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i40, align 8
  %conv12.i = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.28, i32 noundef %conv12.i, i32 noundef %phi.cast.i38) #16
  br label %for.body.i50.preheader

for.body.i50.preheader:                           ; preds = %do.end11.i41, %do.body.i37
  br label %for.body.i50

for.cond.i45:                                     ; preds = %for.body.i50
  %dec.i = add nsw i32 %i.021.i46, -1
  %tobool.not.i44 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i44, label %do.end.i, label %for.cond.i45.for.body.i50_crit_edge

for.cond.i45.for.body.i50_crit_edge:              ; preds = %for.cond.i45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i50

for.body.i50:                                     ; preds = %for.cond.i45.for.body.i50_crit_edge, %for.body.i50.preheader
  %i.021.i46 = phi i32 [ %dec.i, %for.cond.i45.for.body.i50_crit_edge ], [ 4096, %for.body.i50.preheader ]
  %22 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sb_port.i, align 4
  %add.i47 = add i32 %23, 14
  %and.i48 = and i32 %add.i47, 1048575
  %add1.i49 = or i32 %and.i48, -18874368
  %24 = inttoptr i32 %add1.i49 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool4.not.i = icmp sgt i8 %25, -1
  br i1 %tobool4.not.i, label %for.cond.i45, label %if.then.i

if.then.i:                                        ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %sb_port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sb_port.i, align 4
  %add7.i51 = add i32 %27, 10
  %and8.i = and i32 %add7.i51, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %28 = inttoptr i32 %add9.i to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #13, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !283
  %conv13.i = zext i8 %29 to i32
  br label %snd_es1938_get_byte.exit

do.end.i:                                         ; preds = %for.cond.i45
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i52 = zext i8 %25 to i32
  %card.i53 = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %30 = ptrtoint ptr %card.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card.i53, align 4
  %dev.i54 = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev.i54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i54, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.34, i32 noundef %phi.cast.i52) #16
  br label %snd_es1938_get_byte.exit

snd_es1938_get_byte.exit:                         ; preds = %do.end.i, %if.then.i
  %retval.0.i55 = phi i32 [ %conv13.i, %if.then.i ], [ -19, %do.end.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_es1938_read.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_es1938_read, %if.then)) #13
          to label %do.end16 [label %if.then], !srcloc !260

if.then:                                          ; preds = %snd_es1938_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.es1938, ptr %chip, i32 0, i32 14
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %conv13 = zext i8 %reg to i32
  %conv14 = and i32 %retval.0.i55, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_es1938_read.__UNIQUE_ID_ddebug256, ptr noundef %37, ptr noundef nonnull @.str.70, i32 noundef %conv13, i32 noundef %conv14) #13
  br label %do.end16

do.end16:                                         ; preds = %if.then, %snd_es1938_get_byte.exit
  %conv6 = trunc i32 %retval.0.i55 to i8
  ret i8 %conv6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es1938_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %saved_regs = getelementptr inbounds %struct.es1938, ptr %3, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %snd_es1938_reg_read.exit.for.body_crit_edge, %entry
  %5 = phi i8 [ 20, %entry ], [ %8, %snd_es1938_reg_read.exit.for.body_crit_edge ]
  %d.022 = phi ptr [ %saved_regs, %entry ], [ %incdec.ptr2, %snd_es1938_reg_read.exit.for.body_crit_edge ]
  %s.021 = phi ptr [ @saved_regs, %entry ], [ %incdec.ptr, %snd_es1938_reg_read.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %5)
  %cmp.i = icmp ult i8 %5, -96
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @snd_es1938_mixer_read(ptr noundef %3, i8 noundef zeroext %5) #13
  br label %snd_es1938_reg_read.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call fastcc zeroext i8 @snd_es1938_read(ptr noundef %3, i8 noundef zeroext %5) #13
  %conv3.i = zext i8 %call2.i to i32
  br label %snd_es1938_reg_read.exit

snd_es1938_reg_read.exit:                         ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %conv3.i, %if.else.i ]
  %conv = trunc i32 %retval.0.i to i8
  %6 = ptrtoint ptr %d.022 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %d.022, align 1
  %incdec.ptr = getelementptr i8, ptr %s.021, i32 1
  %incdec.ptr2 = getelementptr i8, ptr %d.022, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr, align 1
  %exitcond = icmp eq ptr %incdec.ptr, getelementptr inbounds ([33 x i8], ptr @saved_regs, i32 0, i32 26)
  br i1 %exitcond, label %do.body, label %snd_es1938_reg_read.exit.for.body_crit_edge

snd_es1938_reg_read.exit.for.body_crit_edge:      ; preds = %snd_es1938_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body:                                          ; preds = %snd_es1938_reg_read.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !322
  tail call void @arm_heavy_mb() #13
  %io_port = getelementptr inbounds %struct.es1938, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %io_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_port, align 4
  %add = add i32 %10, 7
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %11 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #13, !srcloc !262
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp = icmp sgt i32 %13, -1
  br i1 %cmp, label %if.then, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %3) #13
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %3, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 33
  %15 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %sync_irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es1938_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %irq = getelementptr i8, ptr %dev, i32 932
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @snd_es1938_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef %7) #16
  %call3 = tail call i32 @snd_card_disconnect(ptr noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %3, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %sync_irq, align 4
  tail call fastcc void @snd_es1938_chip_init(ptr noundef %3)
  %saved_regs = getelementptr inbounds %struct.es1938, ptr %3, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %10 = phi i8 [ 20, %if.end ], [ %14, %for.inc.for.body_crit_edge ]
  %d.036 = phi ptr [ %saved_regs, %if.end ], [ %incdec.ptr11, %for.inc.for.body_crit_edge ]
  %s.035 = phi ptr [ @saved_regs, %if.end ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %10)
  %cmp = icmp ult i8 %10, -96
  %11 = ptrtoint ptr %d.036 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %d.036, align 1
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @snd_es1938_mixer_write(ptr noundef %3, i8 noundef zeroext %10, i8 noundef zeroext %12)
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @snd_es1938_write(ptr noundef %3, i8 noundef zeroext %10, i8 noundef zeroext %12)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then9
  %incdec.ptr = getelementptr i8, ptr %s.035, i32 1
  %incdec.ptr11 = getelementptr i8, ptr %d.036, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr, align 1
  %exitcond = icmp eq ptr %incdec.ptr, getelementptr inbounds ([33 x i8], ptr @saved_regs, i32 0, i32 26)
  br i1 %exitcond, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %15 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
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
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !197, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !231, !232, !234, !235, !236, !237, !239, !241, !243, !245, !246, !247}
!llvm.named.register.sp = !{!248}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/es1938.c", i32 52, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/es1938.c", i32 53, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/es1938.c", i32 54, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/es1938.c", i32 64, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/es1938.c", i32 65, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/es1938.c", i32 66, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/es1938.c", i32 67, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/es1938.c", i32 68, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/es1938.c", i32 69, i32 1}
!22 = !{ptr @__initcall__kmod_snd_es1938__259_1808_es1938_driver_init6, !23, !"__initcall__kmod_snd_es1938__259_1808_es1938_driver_init6", i1 false, i1 false}
!23 = !{!"../sound/pci/es1938.c", i32 1808, i32 1}
!24 = !{ptr @__exitcall_es1938_driver_exit, !23, !"__exitcall_es1938_driver_exit", i1 false, i1 false}
!25 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!26 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!27 = !{ptr @index, !28, !"index", i1 false, i1 false}
!28 = !{!"../sound/pci/es1938.c", i32 60, i32 12}
!29 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!30 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!31 = !{ptr @id, !32, !"id", i1 false, i1 false}
!32 = !{!"../sound/pci/es1938.c", i32 61, i32 14}
!33 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!34 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!35 = !{ptr @enable, !36, !"enable", i1 false, i1 false}
!36 = !{!"../sound/pci/es1938.c", i32 62, i32 13}
!37 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @es1938_driver, !39, !"es1938_driver", i1 false, i1 false}
!39 = !{!"../sound/pci/es1938.c", i32 1799, i32 26}
!40 = !{ptr @snd_es1938_ids, !41, !"snd_es1938_ids", i1 false, i1 false}
!41 = !{!"../sound/pci/es1938.c", i32 226, i32 35}
!42 = !{ptr @snd_es1938_probe.dev, !43, !"dev", i1 false, i1 false}
!43 = !{!"../sound/pci/es1938.c", i32 1722, i32 13}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/es1938.c", i32 1750, i32 23}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/es1938.c", i32 1751, i32 26}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/es1938.c", i32 1752, i32 26}
!50 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/es1938.c", i32 1767, i32 3}
!52 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @snd_es1938_probe._entry, !51, !"_entry", i1 false, i1 false}
!57 = !{ptr @snd_es1938_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/es1938.c", i32 1781, i32 3}
!60 = !{ptr @snd_es1938_probe._entry.9, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @snd_es1938_probe._entry_ptr.11, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/es1938.c", i32 1551, i32 3}
!64 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @snd_es1938_create._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @snd_es1938_create._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @snd_es1938_create.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../sound/pci/es1938.c", i32 1556, i32 2}
!69 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @snd_es1938_create.__key.15, !71, !"__key", i1 false, i1 false}
!71 = !{!"../sound/pci/es1938.c", i32 1557, i32 2}
!72 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/es1938.c", i32 1561, i32 33}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/es1938.c", i32 1572, i32 3}
!77 = !{ptr @snd_es1938_create._entry.18, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @snd_es1938_create._entry_ptr.20, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.21, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/es1938.c", i32 1578, i32 2}
!81 = !{ptr @snd_es1938_create.__UNIQUE_ID_ddebug258, !80, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/es1938.c", i32 261, i32 2}
!84 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @snd_es1938_mixer_read.__UNIQUE_ID_ddebug253, !83, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/es1938.c", i32 247, i32 2}
!88 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @snd_es1938_mixer_write.__UNIQUE_ID_ddebug252, !87, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/es1938.c", i32 391, i32 2}
!92 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @snd_es1938_reset._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @snd_es1938_reset._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/es1938.c", i32 302, i32 2}
!97 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @snd_es1938_write_cmd._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @snd_es1938_write_cmd._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/es1938.c", i32 332, i32 2}
!102 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @snd_es1938_write.__UNIQUE_ID_ddebug255, !101, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/es1938.c", i32 368, i32 3}
!106 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @snd_es1938_bits.__UNIQUE_ID_ddebug257, !105, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/es1938.c", i32 318, i32 2}
!110 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @snd_es1938_get_byte._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @snd_es1938_get_byte._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/es1938.c", i32 999, i32 32}
!115 = !{ptr @snd_es1938_playback_ops, !116, !"snd_es1938_playback_ops", i1 false, i1 false}
!116 = !{!"../sound/pci/es1938.c", i32 976, i32 33}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/es1938.c", i32 940, i32 3}
!119 = !{ptr @snd_es1938_playback, !120, !"snd_es1938_playback", i1 false, i1 false}
!120 = !{!"../sound/pci/es1938.c", i32 890, i32 38}
!121 = !{ptr @hw_constraints_clocks, !122, !"hw_constraints_clocks", i1 false, i1 false}
!122 = !{!"../sound/pci/es1938.c", i32 438, i32 51}
!123 = !{ptr @clocks, !124, !"clocks", i1 false, i1 false}
!124 = !{!"../sound/pci/es1938.c", i32 423, i32 32}
!125 = !{ptr @snd_es1938_capture_ops, !126, !"snd_es1938_capture_ops", i1 false, i1 false}
!126 = !{!"../sound/pci/es1938.c", i32 984, i32 33}
!127 = !{ptr @snd_es1938_capture, !128, !"snd_es1938_capture", i1 false, i1 false}
!128 = !{!"../sound/pci/es1938.c", i32 868, i32 38}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!131 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!136 = !{ptr @.str.41, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/es1938.c", i32 1311, i32 1}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/es1938.c", i32 1313, i32 1}
!140 = !{ptr @.str.43, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/es1938.c", i32 1316, i32 10}
!142 = !{ptr @.str.44, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/es1938.c", i32 1325, i32 10}
!144 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/es1938.c", i32 1330, i32 1}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/es1938.c", i32 1331, i32 1}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/es1938.c", i32 1333, i32 1}
!150 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/es1938.c", i32 1334, i32 1}
!152 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/es1938.c", i32 1336, i32 1}
!154 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/es1938.c", i32 1338, i32 1}
!156 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/es1938.c", i32 1340, i32 1}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/es1938.c", i32 1342, i32 1}
!160 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/es1938.c", i32 1344, i32 1}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/es1938.c", i32 1345, i32 1}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/es1938.c", i32 1346, i32 1}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/es1938.c", i32 1349, i32 10}
!168 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/es1938.c", i32 1354, i32 1}
!170 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/es1938.c", i32 1356, i32 1}
!172 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/es1938.c", i32 1358, i32 1}
!174 = !{ptr @.str.60, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/es1938.c", i32 1360, i32 1}
!176 = !{ptr @.str.61, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/es1938.c", i32 1362, i32 1}
!178 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/es1938.c", i32 1364, i32 1}
!180 = !{ptr @.str.63, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/es1938.c", i32 1366, i32 1}
!182 = !{ptr @.str.64, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/es1938.c", i32 1368, i32 1}
!184 = !{ptr @.str.65, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/es1938.c", i32 1370, i32 1}
!186 = !{ptr @.str.66, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/es1938.c", i32 1374, i32 1}
!188 = !{ptr @.str.67, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/es1938.c", i32 1377, i32 10}
!190 = !{ptr @.str.68, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/es1938.c", i32 1382, i32 1}
!192 = !{ptr @snd_es1938_controls, !193, !"snd_es1938_controls", i1 false, i1 false}
!193 = !{!"../sound/pci/es1938.c", i32 1310, i32 38}
!194 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/es1938.c", i32 347, i32 2}
!196 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @snd_es1938_read.__UNIQUE_ID_ddebug256, !195, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!198 = !{ptr @db_scale_master, !199, !"db_scale_master", i1 false, i1 false}
!199 = !{!"../sound/pci/es1938.c", i32 1283, i32 14}
!200 = !{ptr @db_scale_line, !201, !"db_scale_line", i1 false, i1 false}
!201 = !{!"../sound/pci/es1938.c", i32 1303, i32 14}
!202 = !{ptr @db_scale_mic, !203, !"db_scale_mic", i1 false, i1 false}
!203 = !{!"../sound/pci/es1938.c", i32 1298, i32 14}
!204 = !{ptr @db_scale_capture, !205, !"db_scale_capture", i1 false, i1 false}
!205 = !{!"../sound/pci/es1938.c", i32 1308, i32 14}
!206 = !{ptr @.str.71, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/es1938.c", i32 1025, i32 3}
!208 = !{ptr @.str.72, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/es1938.c", i32 1025, i32 10}
!210 = !{ptr @.str.73, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/es1938.c", i32 1025, i32 24}
!212 = !{ptr @.str.74, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/es1938.c", i32 1025, i32 30}
!214 = !{ptr @.str.75, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/es1938.c", i32 1026, i32 3}
!216 = !{ptr @.str.76, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/es1938.c", i32 1026, i32 11}
!218 = !{ptr @.str.77, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/es1938.c", i32 1026, i32 18}
!220 = !{ptr @.str.78, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/es1938.c", i32 1026, i32 26}
!222 = !{ptr @snd_es1938_info_mux.texts, !223, !"texts", i1 false, i1 false}
!223 = !{!"../sound/pci/es1938.c", i32 1024, i32 28}
!224 = !{ptr @db_scale_audio2, !225, !"db_scale_audio2", i1 false, i1 false}
!225 = !{!"../sound/pci/es1938.c", i32 1293, i32 14}
!226 = !{ptr @db_scale_audio1, !227, !"db_scale_audio1", i1 false, i1 false}
!227 = !{!"../sound/pci/es1938.c", i32 1288, i32 14}
!228 = !{ptr @.str.79, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/es1938.c", i32 280, i32 3}
!230 = !{ptr @.str.80, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @snd_es1938_mixer_bits.__UNIQUE_ID_ddebug254, !229, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!232 = !{ptr @.str.81, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/es1938.c", i32 1497, i32 3}
!234 = !{ptr @.str.82, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @snd_es1938_create_gameport._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @snd_es1938_create_gameport._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.83, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/pci/es1938.c", i32 1503, i32 24}
!239 = !{ptr @es1938_pm, !240, !"es1938_pm", i1 false, i1 false}
!240 = !{!"../sound/pci/es1938.c", i32 1484, i32 8}
!241 = !{ptr @saved_regs, !242, !"saved_regs", i1 false, i1 false}
!242 = !{!"../sound/pci/es1938.c", i32 1423, i32 28}
!243 = !{ptr @.str.84, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/es1938.c", i32 1463, i32 3}
!245 = !{ptr @.str.85, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @es1938_resume._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @es1938_resume._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{!"sp"}
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
!260 = !{i64 2148769548, i64 2148769553, i64 2148769566, i64 2148769610, i64 2148769644, i64 2148769665}
!261 = !{i64 2154854513}
!262 = !{i64 4250159}
!263 = !{i64 4250554}
!264 = !{i64 2154855038}
!265 = !{i64 2154855340}
!266 = !{i64 2154955477}
!267 = !{i64 2154955860}
!268 = !{i64 2154947868}
!269 = !{i64 2154871405}
!270 = !{i64 2154871922}
!271 = !{i64 2154872214}
!272 = !{i64 2154872741}
!273 = !{i64 2154873128}
!274 = !{i64 2154858329}
!275 = !{i64 2154858631}
!276 = !{i64 2154937259}
!277 = !{i64 2154937694}
!278 = !{i64 2154850972}
!279 = !{i64 2154851497}
!280 = !{i64 2154847386}
!281 = !{i64 2154847824}
!282 = !{i64 2154860966}
!283 = !{i64 2154861353}
!284 = !{i64 2154875055}
!285 = !{i64 2154875483}
!286 = !{i64 2154875923}
!287 = !{i64 2154876409}
!288 = !{i64 4250356}
!289 = !{i64 2154877003}
!290 = !{i64 4249736}
!291 = !{i64 2154877581}
!292 = !{i64 2154878142}
!293 = !{i64 2154878582}
!294 = !{i64 2154879020}
!295 = !{i64 2154879461}
!296 = !{i64 2154879950}
!297 = !{i64 2154880565}
!298 = !{i64 2154881130}
!299 = !{i64 2154885660}
!300 = !{i64 2154886098}
!301 = !{i64 4249936}
!302 = !{i64 2154889942}
!303 = !{i64 2154890780}
!304 = !{i64 2154891580}
!305 = !{i64 2154881577}
!306 = !{i64 2154882017}
!307 = !{i64 2154882455}
!308 = !{i64 2154882896}
!309 = !{i64 2154883385}
!310 = !{i64 2154884000}
!311 = !{i64 2154884565}
!312 = !{i64 4250774}
!313 = !{i64 2154888317}
!314 = !{i64 2154889117}
!315 = !{!"branch_weights", i32 1, i32 2000}
!316 = !{!"branch_weights", i32 2000, i32 1}
!317 = !{i64 2153929259, i64 2153929284}
!318 = !{i64 6424133}
!319 = !{i64 6424330}
!320 = !{i64 2153909563}
!321 = !{i64 2154894840, i64 2154895120, i64 2154895454, i64 2154895788}
!322 = !{i64 2154938169}
