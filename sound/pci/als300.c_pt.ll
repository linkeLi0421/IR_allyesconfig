; ModuleID = '/llk/IR_all_yes/sound/pci/als300.c_pt.bc'
source_filename = "../sound/pci/als300.c"
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
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.snd_als300 = type { i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
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
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.85, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.85 = type { i32, [28 x i8] }
%struct.snd_als300_substream_data = type { i32, i32, i32 }

@__UNIQUE_ID_author242 = internal constant [56 x i8] c"snd_als300.author=Ash Willis <ashwillis@programmer.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [43 x i8] c"snd_als300.description=Avance Logic ALS300\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [37 x i8] c"snd_als300.file=sound/pci/snd-als300\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"snd_als300.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_als300.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [39 x i8] c"snd_als300.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [57 x i8] c"snd_als300.parm=index:Index value for ALS300 sound card.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_als300.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [38 x i8] c"snd_als300.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [52 x i8] c"snd_als300.parm=id:ID string for ALS300 sound card.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_als300.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [41 x i8] c"snd_als300.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [49 x i8] c"snd_als300.parm=enable:Enable ALS300 sound card.\00", section ".modinfo", align 1
@__initcall__kmod_snd_als300__252_742_als300_driver_init6 = internal global ptr @als300_driver_init, section ".initcall6.init", align 4
@als300_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_als300_ids, ptr @snd_als300_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_als300_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_als300_driver_exit = internal global ptr @als300_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_als300\00", [21 x i8] zeroinitializer }, align 32
@snd_als300_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 16389, i32 768, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 16389, i32 776, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_als300_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_als300_suspend, ptr @snd_als300_resume, ptr @snd_als300_suspend, ptr @snd_als300_resume, ptr @snd_als300_suspend, ptr @snd_als300_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_als300_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ALS300\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALS300+ (Rev. %d)\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALS300 (Rev. %c)\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%lx irq %i\00", [45 x i8] zeroinitializer }, align 32
@snd_als300_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 609, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error setting 28bit DMA mask\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_als300_create\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/pci/als300.c\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_als300_create._entry_ptr = internal global ptr @snd_als300_create._entry, section ".printk_index", align 4
@snd_als300_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_als300_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 633, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_als300_create._entry_ptr.13 = internal global ptr @snd_als300_create._entry.11, section ".printk_index", align 4
@snd_als300_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 644, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not create ac97\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_als300_create._entry_ptr.16 = internal global ptr @snd_als300_create._entry.14, section ".printk_index", align 4
@snd_als300_create._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 650, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Could not create PCM\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_als300_create._entry_ptr.19 = internal global ptr @snd_als300_create._entry.17, section ".printk_index", align 4
@snd_als300_ac97.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_als300_ac97_write, ptr @snd_als300_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_als300_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_als300_playback_open, ptr @snd_als300_playback_close, ptr null, ptr null, ptr null, ptr @snd_als300_playback_prepare, ptr @snd_als300_trigger, ptr null, ptr @snd_als300_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_als300_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_als300_capture_open, ptr @snd_als300_capture_close, ptr null, ptr null, ptr null, ptr @snd_als300_capture_prepare, ptr @snd_als300_trigger, ptr null, ptr @snd_als300_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_als300_playback_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 524547, i64 8, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 65536, i32 64, i32 32768, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_als300_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 524547, i64 8, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 65536, i32 64, i32 32768, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"als300_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 733, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 90, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 91, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 92, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 742, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"snd_als300_ids\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 129, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"snd_als300_pm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 680, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 689, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 713, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 717, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 719, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 721, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 609, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 618, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 633, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 644, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 650, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 281, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"snd_als300_playback_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 524, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant [23 x i8] c"snd_als300_capture_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 532, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"snd_als300_playback_hw\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 303, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"snd_als300_capture_hw\00", align 1
@___asan_gen_.111 = private constant [22 x i8] c"../sound/pci/als300.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 322, i32 38 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_als300_driver_exit, ptr @__initcall__kmod_snd_als300__252_742_als300_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @als300_driver_exit, ptr @snd_als300_create._entry, ptr @snd_als300_create._entry.11, ptr @snd_als300_create._entry.14, ptr @snd_als300_create._entry.17, ptr @snd_als300_create._entry_ptr, ptr @snd_als300_create._entry_ptr.13, ptr @snd_als300_create._entry_ptr.16, ptr @snd_als300_create._entry_ptr.19, ptr @als300_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @snd_als300_ids, ptr @snd_als300_pm, ptr @snd_als300_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @snd_als300_create.__key, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @snd_als300_ac97.ops, ptr @snd_als300_playback_ops, ptr @snd_als300_capture_ops, ptr @snd_als300_playback_hw, ptr @snd_als300_capture_hw], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @als300_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_create._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_ac97.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_als300_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @als300_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @als300_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @als300_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @als300_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %pcm.i.i = alloca ptr, align 4
  %bus.i.i = alloca ptr, align 4
  %ac97.i.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #8
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !96
  %1 = load i32, ptr @snd_als300_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_als300_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 92, ptr noundef nonnull %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data, align 4
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 268435455) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %14 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 268435455) #8
  call void @pci_set_master(ptr noundef %pci) #8
  %card5.i = getelementptr inbounds %struct.snd_als300, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %card5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %card5.i, align 4
  %pci6.i = getelementptr inbounds %struct.snd_als300, ptr %11, i32 0, i32 3
  %17 = ptrtoint ptr %pci6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pci, ptr %pci6.i, align 4
  %irq.i = getelementptr inbounds %struct.snd_als300, ptr %11, i32 0, i32 10
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %irq.i, align 4
  %chip_type7.i = getelementptr inbounds %struct.snd_als300, ptr %11, i32 0, i32 11
  %19 = ptrtoint ptr %chip_type7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %13, ptr %chip_type7.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_als300, ptr %11, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @snd_als300_create.__key, i16 noundef signext 3) #8
  %call12.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end4.i.cleanup_crit_edge, label %if.end15.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.i:                                       ; preds = %if.end4.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %20 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resource.i, align 8
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %11, align 4
  %23 = ptrtoint ptr %chip_type7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chip_type7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp17.i = icmp eq i32 %24, 1
  %snd_als300plus_interrupt.snd_als300_interrupt.i = select i1 %cmp17.i, ptr @snd_als300plus_interrupt, ptr @snd_als300_interrupt
  %irq21.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %25 = ptrtoint ptr %irq21.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq21.i, align 4
  %call.i87.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %26, ptr noundef nonnull %snd_als300plus_interrupt.snd_als300_interrupt.i, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %tobool23.not.i = icmp eq i32 %call.i87.i, 0
  br i1 %tobool23.not.i, label %if.end30.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev28.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %27 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev28.i, align 8
  %29 = ptrtoint ptr %irq21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq21.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.12, i32 noundef %30) #11
  br label %cleanup

if.end30.i:                                       ; preds = %if.end15.i
  %31 = ptrtoint ptr %irq21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq21.i, align 4
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %34 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %35 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @snd_als300_free, ptr %private_free.i, align 4
  call fastcc void @snd_als300_init(ptr noundef %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus.i.i) #8
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %bus.i.i, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i.i) #8
  %37 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card5.i, align 4
  %call.i88.i = call i32 @snd_ac97_bus(ptr noundef %38, i32 noundef 0, ptr noundef nonnull @snd_als300_ac97.ops, ptr noundef null, ptr noundef nonnull %bus.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %cmp.i89.i = icmp slt i32 %call.i88.i, 0
  br i1 %cmp.i89.i, label %snd_als300_ac97.exit.thread.i, label %snd_als300_ac97.exit.i

snd_als300_ac97.exit.thread.i:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus.i.i) #8
  br label %do.end39.i

snd_als300_ac97.exit.i:                           ; preds = %if.end30.i
  %39 = getelementptr inbounds i8, ptr %ac97.i.i, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 20)
  %41 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %11, ptr %ac97.i.i, align 4
  %42 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i.i, align 4
  %ac971.i.i = getelementptr inbounds %struct.snd_als300, ptr %11, i32 0, i32 7
  %call2.i.i = call i32 @snd_ac97_mixer(ptr noundef %43, ptr noundef nonnull %ac97.i.i, ptr noundef %ac971.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp35.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp35.i, label %snd_als300_ac97.exit.i.do.end39.i_crit_edge, label %if.end41.i

snd_als300_ac97.exit.i.do.end39.i_crit_edge:      ; preds = %snd_als300_ac97.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i

do.end39.i:                                       ; preds = %snd_als300_ac97.exit.i.do.end39.i_crit_edge, %snd_als300_ac97.exit.thread.i
  %retval.0.i97.i = phi i32 [ %call.i88.i, %snd_als300_ac97.exit.thread.i ], [ %call2.i.i, %snd_als300_ac97.exit.i.do.end39.i_crit_edge ]
  %dev40.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %44 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev40.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end41.i:                                       ; preds = %snd_als300_ac97.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i.i) #8
  %46 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i.i, align 4, !annotation !96
  %47 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card5.i, align 4
  %call.i91.i = call i32 @snd_pcm_new(ptr noundef %48, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %cmp.i92.i = icmp slt i32 %call.i91.i, 0
  br i1 %cmp.i92.i, label %do.end47.i, label %if.end11

do.end47.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #8
  %dev48.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %49 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev48.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end41.i
  %51 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcm.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %11, ptr %private_data.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.snd_pcm, ptr %52, i32 0, i32 7
  %54 = call ptr @memcpy(ptr %name.i.i, ptr @.str.1, i32 7)
  %pcm2.i.i = getelementptr inbounds %struct.snd_als300, ptr %11, i32 0, i32 4
  %55 = ptrtoint ptr %pcm2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %pcm2.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @snd_als300_playback_ops) #8
  %56 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %57, i32 noundef 1, ptr noundef nonnull @snd_als300_capture_ops) #8
  %58 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcm.i.i, align 4
  %60 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci6.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %call3.i.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %59, i32 noundef 2, ptr noundef %dev.i.i, i32 noundef 65536, i32 noundef 65536) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #8
  %62 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 2
  %64 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 7)
  %65 = ptrtoint ptr %chip_type7.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chip_type7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp14 = icmp eq i32 %66, 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 3
  %revision = getelementptr inbounds %struct.snd_als300, ptr %11, i32 0, i32 12
  %67 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %revision, align 4
  %conv = zext i8 %68 to i32
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname, ptr noundef nonnull @.str.2, i32 noundef %conv)
  br label %if.end23

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nuw nsw i32 %conv, 64
  %call22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname, ptr noundef nonnull @.str.3, i32 noundef %sub)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then15
  %69 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %70, i32 0, i32 4
  %shortname25 = getelementptr inbounds %struct.snd_card, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %11, align 4
  %73 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq.i, align 4
  %call27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.4, ptr noundef %shortname25, i32 noundef %72, i32 noundef %74)
  %75 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %card, align 4
  %call28 = call i32 @snd_card_register(ptr noundef %76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end23.cleanup_crit_edge, label %if.end32

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %79 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %driver_data.i.i, align 4
  %80 = load i32, ptr @snd_als300_probe.dev, align 4
  %inc33 = add i32 %80, 1
  store i32 %inc33, ptr @snd_als300_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end23.cleanup_crit_edge, %do.end47.i, %do.end39.i, %do.end27.i, %if.end4.i.cleanup_crit_edge, %do.end.i, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call28, %if.end23.cleanup_crit_edge ], [ %call12.i, %if.end4.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ %call.i91.i, %do.end47.i ], [ %retval.0.i97.i, %do.end39.i ], [ -16, %do.end27.i ], [ -6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300plus_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_id, align 4
  %add = add i32 %1, 15
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_id, align 4
  %add5 = add i32 %5, 14
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  %add13 = add i32 %9, 13
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %10 = inttoptr i32 %add15 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp22 = icmp sgt i8 %7, -1
  %or.cond = select i1 %cmp, i1 %cmp22, i1 false
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp27 = icmp eq i8 %12, 0
  %or.cond89 = select i1 %or.cond, i1 %cmp27, i1 false
  br i1 %or.cond89, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and30 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool.not = icmp eq i32 %and30, 0
  br i1 %tobool.not, label %if.end.if.end44_crit_edge, label %if.then31

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then31:                                        ; preds = %if.end
  %pcm = getelementptr inbounds %struct.snd_als300, ptr %dev_id, i32 0, i32 4
  %13 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcm, align 4
  %tobool32.not = icmp eq ptr %14, null
  br i1 %tobool32.not, label %if.then31.if.end44_crit_edge, label %land.lhs.true33

if.then31.if.end44_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true33:                                  ; preds = %if.then31
  %playback_substream = getelementptr inbounds %struct.snd_als300, ptr %dev_id, i32 0, i32 5
  %15 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %playback_substream, align 4
  %tobool34.not = icmp eq ptr %16, null
  br i1 %tobool34.not, label %land.lhs.true33.if.end44_crit_edge, label %do.body

land.lhs.true33.if.end44_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.body:                                          ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_id, align 4
  %add37 = add i32 %18, 15
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %19 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 8) #8, !srcloc !103
  %20 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %playback_substream, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %xor = xor i32 %27, 1
  store i32 %xor, ptr %25, align 4
  %28 = load ptr, ptr %playback_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %28) #8
  br label %if.end44

if.end44:                                         ; preds = %do.body, %land.lhs.true33.if.end44_crit_edge, %if.then31.if.end44_crit_edge, %if.end.if.end44_crit_edge
  %and46 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.cleanup_crit_edge, label %if.then48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48:                                        ; preds = %if.end44
  %pcm49 = getelementptr inbounds %struct.snd_als300, ptr %dev_id, i32 0, i32 4
  %29 = ptrtoint ptr %pcm49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcm49, align 4
  %tobool50.not = icmp eq ptr %30, null
  br i1 %tobool50.not, label %if.then48.cleanup_crit_edge, label %land.lhs.true51

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true51:                                  ; preds = %if.then48
  %capture_substream = getelementptr inbounds %struct.snd_als300, ptr %dev_id, i32 0, i32 6
  %31 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %capture_substream, align 4
  %tobool52.not = icmp eq ptr %32, null
  br i1 %tobool52.not, label %land.lhs.true51.cleanup_crit_edge, label %do.body54

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dev_id, align 4
  %add58 = add i32 %34, 15
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %35 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 4) #8, !srcloc !103
  %36 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %capture_substream, align 4
  %runtime63 = getelementptr inbounds %struct.snd_pcm_substream, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %runtime63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %runtime63, align 4
  %private_data64 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %private_data64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private_data64, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %xor66 = xor i32 %43, 1
  store i32 %xor66, ptr %41, align 4
  %44 = load ptr, ptr %capture_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %44) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body54, %land.lhs.true51.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then48.cleanup_crit_edge ], [ 1, %land.lhs.true51.cleanup_crit_edge ], [ 1, %do.body54 ], [ 1, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_id, align 4
  %add = add i32 %1, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_id, align 4
  %add4 = add i32 %5, 7
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %6 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %3) #8, !srcloc !103
  %conv = zext i8 %3 to i32
  %and8 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body.if.end17_crit_edge, label %if.then10

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then10:                                        ; preds = %do.body
  %pcm = getelementptr inbounds %struct.snd_als300, ptr %dev_id, i32 0, i32 4
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.then10.if.end17_crit_edge, label %land.lhs.true

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then10
  %playback_substream = getelementptr inbounds %struct.snd_als300, ptr %dev_id, i32 0, i32 5
  %9 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %playback_substream, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %land.lhs.true.if.end17_crit_edge, label %if.then13

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %xor = xor i32 %16, 1
  store i32 %xor, ptr %14, align 4
  %17 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %playback_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %18) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %land.lhs.true.if.end17_crit_edge, %if.then10.if.end17_crit_edge, %do.body.if.end17_crit_edge
  %and19 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.then21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  %pcm22 = getelementptr inbounds %struct.snd_als300, ptr %dev_id, i32 0, i32 4
  %19 = ptrtoint ptr %pcm22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcm22, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %land.lhs.true24

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true24:                                  ; preds = %if.then21
  %capture_substream = getelementptr inbounds %struct.snd_als300, ptr %dev_id, i32 0, i32 6
  %21 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %capture_substream, align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %land.lhs.true24.cleanup_crit_edge, label %if.then26

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  %runtime28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %runtime28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime28, align 4
  %private_data29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %private_data29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data29, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %xor31 = xor i32 %28, 1
  store i32 %xor31, ptr %26, align 4
  %29 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %capture_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true24.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then21.cleanup_crit_edge ], [ 1, %land.lhs.true24.cleanup_crit_edge ], [ 1, %if.then26 ], [ 1, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_als300_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call fastcc void @snd_als300_set_irq_flag(ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_als300_init(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.snd_als300, ptr %chip, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %add.i = add i32 %1, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -116) #8, !srcloc !103
  %add2.i = add i32 %1, 8
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %3 = inttoptr i32 %add4.i to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %5 = lshr i32 %4, 8
  %6 = trunc i32 %5 to i8
  %conv7 = and i8 %6, 15
  %revision = getelementptr inbounds %struct.snd_als300, ptr %chip, i32 0, i32 12
  %7 = ptrtoint ptr %revision to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %revision, align 4
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %add.i36 = add i32 %9, 12
  %and.i37 = and i32 %add.i36, 1048575
  %add1.i38 = or i32 %and.i37, -18874368
  %10 = inttoptr i32 %add1.i38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -117) #8, !srcloc !103
  %add2.i39 = add i32 %9, 8
  %and3.i40 = and i32 %add2.i39, 1048575
  %add4.i41 = or i32 %and3.i40, -18874368
  %11 = inttoptr i32 %add4.i41 to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip, align 4
  %15 = and i32 %12, -769
  %16 = or i32 %15, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i42 = add i32 %14, 12
  %and.i43 = and i32 %add.i42, 1048575
  %add1.i44 = or i32 %and.i43, -18874368
  %17 = inttoptr i32 %add1.i44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 -117) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %add4.i45 = add i32 %14, 8
  %and5.i = and i32 %add4.i45, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %18 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %16) #8, !srcloc !112
  tail call fastcc void @snd_als300_set_irq_flag(ptr noundef %chip, i32 noundef 1)
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %add.i46 = add i32 %20, 12
  %and.i47 = and i32 %add.i46, 1048575
  %add1.i48 = or i32 %and.i47, -18874368
  %21 = inttoptr i32 %add1.i48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 -116) #8, !srcloc !103
  %add2.i49 = add i32 %20, 8
  %and3.i50 = and i32 %add2.i49, 1048575
  %add4.i51 = or i32 %and3.i50, -18874368
  %22 = inttoptr i32 %add4.i51 to ptr
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chip, align 4
  %26 = or i32 %23, 12288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i52 = add i32 %25, 12
  %and.i53 = and i32 %add.i52, 1048575
  %add1.i54 = or i32 %and.i53, -18874368
  %27 = inttoptr i32 %add1.i54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -116) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %add4.i55 = add i32 %25, 8
  %and5.i56 = and i32 %add4.i55, 1048575
  %add6.i57 = or i32 %and5.i56, -18874368
  %28 = inttoptr i32 %add6.i57 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %26) #8, !srcloc !112
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i58 = add i32 %30, 12
  %and.i59 = and i32 %add.i58, 1048575
  %add1.i60 = or i32 %and.i59, -18874368
  %31 = inttoptr i32 %add1.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 -114) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %add4.i61 = add i32 %30, 8
  %and5.i62 = and i32 %add4.i61, 1048575
  %add6.i63 = or i32 %and5.i62, -18874368
  %32 = inttoptr i32 %add6.i63 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 0) #8, !srcloc !112
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %add.i64 = add i32 %34, 12
  %and.i65 = and i32 %add.i64, 1048575
  %add1.i66 = or i32 %and.i65, -18874368
  %35 = inttoptr i32 %add1.i66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 -126) #8, !srcloc !103
  %add2.i67 = add i32 %34, 8
  %and3.i68 = and i32 %add2.i67, 1048575
  %add4.i69 = or i32 %and3.i68, -18874368
  %36 = inttoptr i32 %add4.i69 to ptr
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %36) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chip, align 4
  %40 = and i32 %37, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i70 = add i32 %39, 12
  %and.i71 = and i32 %add.i70, 1048575
  %add1.i72 = or i32 %and.i71, -18874368
  %41 = inttoptr i32 %add1.i72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 -126) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %add4.i73 = add i32 %39, 8
  %and5.i74 = and i32 %add4.i73, 1048575
  %add6.i75 = or i32 %and5.i74, -18874368
  %42 = inttoptr i32 %add6.i75 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 %40) #8, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_als300_set_irq_flag(ptr nocapture noundef readonly %chip, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %add.i = add i32 %1, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -116) #8, !srcloc !103
  %add2.i = add i32 %1, 8
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %3 = inttoptr i32 %add4.i to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %revision = getelementptr inbounds %struct.snd_als300, ptr %chip, i32 0, i32 12
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp = icmp ugt i8 %6, 5
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_type = getelementptr inbounds %struct.snd_als300, ptr %chip, i32 0, i32 11
  %7 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2 = icmp eq i32 %8, 1
  %phi.cast = zext i1 %cmp2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %9 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp4 = icmp eq i32 %cmd, 1
  %conv5 = zext i1 %cmp4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv5)
  %cmp6 = icmp eq i32 %9, %conv5
  %10 = and i32 %4, -8388609
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %masksel = select i1 %cmp6, i32 32768, i32 0
  %tmp.0 = or i32 %masksel, %11
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i14 = add i32 %13, 12
  %and.i15 = and i32 %add.i14, 1048575
  %add1.i16 = or i32 %and.i15, -18874368
  %14 = inttoptr i32 %add1.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -116) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #8
  %add4.i17 = add i32 %13, 8
  %and5.i = and i32 %add4.i17, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %16 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %15) #8, !srcloc !112
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_als300_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp4 = icmp sgt i8 %5, -1
  br i1 %cmp4, label %for.body.do.body_crit_edge, label %if.end

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #8
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.end.do.body_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %for.body.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %conv6 = zext i16 %reg to i32
  %shl = shl i32 %conv6, 24
  %conv7 = zext i16 %val to i32
  %or = or i32 %shl, %conv7
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %and10 = and i32 %9, 1048575
  %add11 = or i32 %and10, -18874368
  %10 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #8, !srcloc !112
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_als300_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.047 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp4 = icmp sgt i8 %5, -1
  br i1 %cmp4, label %for.body.do.body_crit_edge, label %if.end

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #8
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.end.do.body_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %for.body.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %7 = and i16 %reg, 127
  %8 = or i16 %7, 128
  %or = zext i16 %8 to i32
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %and9 = and i32 %10, 1048575
  %add10 = or i32 %and9, -18874368
  %11 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %or) #8, !srcloc !112
  br label %for.body15

for.body15:                                       ; preds = %if.end29.for.body15_crit_edge, %do.body
  %i.148 = phi i32 [ 0, %do.body ], [ %inc31, %if.end29.for.body15_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %add18 = add i32 %13, 6
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %14 = inttoptr i32 %add20 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %16 = and i8 %15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp26.not = icmp eq i8 %16, 0
  br i1 %cmp26.not, label %if.end29, label %for.body15.for.end32_crit_edge

for.body15.for.end32_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end32

if.end29:                                         ; preds = %for.body15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #8
  %inc31 = add nuw nsw i32 %i.148, 1
  %exitcond49.not = icmp eq i32 %inc31, 1000
  br i1 %exitcond49.not, label %if.end29.for.end32_crit_edge, label %if.end29.for.body15_crit_edge

if.end29.for.body15_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

if.end29.for.end32_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end32

for.end32:                                        ; preds = %if.end29.for.end32_crit_edge, %for.body15.for.end32_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %add35 = add i32 %19, 4
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %20 = inttoptr i32 %add37 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #8, !srcloc !118
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  ret i16 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %playback_substream = getelementptr inbounds %struct.snd_als300, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %playback_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @snd_als300_playback_hw, i32 64)
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %7 = ptrtoint ptr %private_data2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %private_data2, align 8
  %control_register = getelementptr inbounds %struct.snd_als300_substream_data, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %control_register to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 130, ptr %control_register, align 4
  %block_counter_register = getelementptr inbounds %struct.snd_als300_substream_data, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %block_counter_register to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 154, ptr %block_counter_register, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @kfree(ptr noundef %5) #8
  %playback_substream = getelementptr inbounds %struct.snd_als300, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %playback_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size.i, align 4
  %mul.i.i28 = mul i32 %9, %7
  %div1.i.i29 = lshr i32 %mul.i.i28, 3
  %reg_lock = getelementptr inbounds %struct.snd_als300, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %add.i = add i32 %11, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 -126) #8, !srcloc !103
  %add2.i = add i32 %11, 8
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %13 = inttoptr i32 %add4.i to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %15 = and i32 %14, 65279
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %conv6 = and i32 %div1.i.i, 65535
  %sub = add nsw i32 %conv6, -1
  %or = or i32 %16, %sub
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i30 = add i32 %18, 12
  %and.i31 = and i32 %add.i30, 1048575
  %add1.i32 = or i32 %and.i31, -18874368
  %19 = inttoptr i32 %add1.i32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 -126) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %add4.i33 = add i32 %18, 8
  %and5.i = and i32 %add4.i33, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %21 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %20) #8, !srcloc !112
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i34 = add i32 %23, 12
  %and.i35 = and i32 %add.i34, 1048575
  %add1.i36 = or i32 %and.i35, -18874368
  %26 = inttoptr i32 %add1.i36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -128) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %add4.i37 = add i32 %23, 8
  %and5.i38 = and i32 %add4.i37, 1048575
  %add6.i39 = or i32 %and5.i38, -18874368
  %28 = inttoptr i32 %add6.i39 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %27) #8, !srcloc !112
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %31 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_addr, align 8
  %conv11 = and i32 %div1.i.i29, 65535
  %add = add nsw i32 %conv11, -1
  %sub12 = add i32 %add, %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i40 = add i32 %30, 12
  %and.i41 = and i32 %add.i40, 1048575
  %add1.i42 = or i32 %and.i41, -18874368
  %33 = inttoptr i32 %add1.i42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 -127) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %sub12) #8
  %add4.i43 = add i32 %30, 8
  %and5.i44 = and i32 %add4.i43, 1048575
  %add6.i45 = or i32 %and5.i44, -18874368
  %35 = inttoptr i32 %add6.i45 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %34) #8, !srcloc !112
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %control_register = getelementptr inbounds %struct.snd_als300_substream_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control_register, align 4
  %reg_lock = getelementptr inbounds %struct.snd_als300, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge86
    i32 0, label %entry.sw.bb3_crit_edge
    i32 5, label %entry.sw.bb3_crit_edge87
    i32 3, label %sw.bb7
    i32 4, label %sw.bb12
  ]

entry.sw.bb3_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb_crit_edge86:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge86
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %conv.i = trunc i32 %7 to i8
  %add.i = add i32 %10, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv.i) #8, !srcloc !103
  %add2.i = add i32 %10, 8
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %12 = inttoptr i32 %add4.i to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %5, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %17 = or i32 %13, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i40 = add i32 %16, 12
  %and.i41 = and i32 %add.i40, 1048575
  %add1.i42 = or i32 %and.i41, -18874368
  %18 = inttoptr i32 %add1.i42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv.i) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %add4.i43 = add i32 %16, 8
  %and5.i = and i32 %add4.i43, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %19 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %17) #8, !srcloc !112
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge87
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %conv.i44 = trunc i32 %7 to i8
  %add.i45 = add i32 %21, 12
  %and.i46 = and i32 %add.i45, 1048575
  %add1.i47 = or i32 %and.i46, -18874368
  %22 = inttoptr i32 %add1.i47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv.i44) #8, !srcloc !103
  %add2.i48 = add i32 %21, 8
  %and3.i49 = and i32 %add2.i48, 1048575
  %add4.i50 = or i32 %and3.i49, -18874368
  %23 = inttoptr i32 %add4.i50 to ptr
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %23) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %27 = and i32 %24, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i52 = add i32 %26, 12
  %and.i53 = and i32 %add.i52, 1048575
  %add1.i54 = or i32 %and.i53, -18874368
  %28 = inttoptr i32 %add1.i54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv.i44) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %add4.i55 = add i32 %26, 8
  %and5.i56 = and i32 %add4.i55, 1048575
  %add6.i57 = or i32 %and5.i56, -18874368
  %29 = inttoptr i32 %add6.i57 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %27) #8, !srcloc !112
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %conv.i58 = trunc i32 %7 to i8
  %add.i59 = add i32 %31, 12
  %and.i60 = and i32 %add.i59, 1048575
  %add1.i61 = or i32 %and.i60, -18874368
  %32 = inttoptr i32 %add1.i61 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv.i58) #8, !srcloc !103
  %add2.i62 = add i32 %31, 8
  %and3.i63 = and i32 %add2.i62, 1048575
  %add4.i64 = or i32 %and3.i63, -18874368
  %33 = inttoptr i32 %add4.i64 to ptr
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %33) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  %37 = or i32 %34, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i66 = add i32 %36, 12
  %and.i67 = and i32 %add.i66, 1048575
  %add1.i68 = or i32 %and.i67, -18874368
  %38 = inttoptr i32 %add1.i68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv.i58) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %add4.i69 = add i32 %36, 8
  %and5.i70 = and i32 %add4.i69, 1048575
  %add6.i71 = or i32 %and5.i70, -18874368
  %39 = inttoptr i32 %add6.i71 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 %37) #8, !srcloc !112
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %conv.i72 = trunc i32 %7 to i8
  %add.i73 = add i32 %41, 12
  %and.i74 = and i32 %add.i73, 1048575
  %add1.i75 = or i32 %and.i74, -18874368
  %42 = inttoptr i32 %add1.i75 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv.i72) #8, !srcloc !103
  %add2.i76 = add i32 %41, 8
  %and3.i77 = and i32 %add2.i76, 1048575
  %add4.i78 = or i32 %and3.i77, -18874368
  %43 = inttoptr i32 %add4.i78 to ptr
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %43) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %1, align 4
  %47 = and i32 %44, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i80 = add i32 %46, 12
  %and.i81 = and i32 %add.i80, 1048575
  %add1.i82 = or i32 %and.i81, -18874368
  %48 = inttoptr i32 %add1.i82 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv.i72) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %add4.i83 = add i32 %46, 8
  %and5.i84 = and i32 %add4.i83, 1048575
  %add6.i85 = or i32 %and5.i84, -18874368
  %49 = inttoptr i32 %add6.i85 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 %47) #8, !srcloc !112
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb7, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb12 ], [ 0, %sw.bb7 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %9, %7
  %div1.i.i = lshr i32 %mul.i.i, 3
  %reg_lock = getelementptr inbounds %struct.snd_als300, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %block_counter_register = getelementptr inbounds %struct.snd_als300_substream_data, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %block_counter_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block_counter_register, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %conv.i = trunc i32 %13 to i8
  %add.i = add i32 %11, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv.i) #8, !srcloc !103
  %add2.i = add i32 %11, 8
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %15 = inttoptr i32 %add4.i to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #8, !srcloc !108
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %conv6 = add i32 %17, 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  %conv8 = and i32 %conv6, 65535
  %conv9 = and i32 %div1.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %conv8)
  %cmp = icmp ult i32 %conv9, %conv8
  %sub = sub i32 %div1.i.i, %conv6
  %current_ptr.0 = select i1 %cmp, i32 0, i32 %sub
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp14 = icmp eq i32 %19, 0
  %conv20 = select i1 %cmp14, i32 %div1.i.i, i32 0
  %current_ptr.1 = add i32 %current_ptr.0, %conv20
  %20 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime, align 4
  %conv23 = shl i32 %current_ptr.1, 3
  %mul.i = and i32 %conv23, 524280
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %23
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %capture_substream = getelementptr inbounds %struct.snd_als300, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %capture_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @snd_als300_capture_hw, i32 64)
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %7 = ptrtoint ptr %private_data2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %private_data2, align 8
  %control_register = getelementptr inbounds %struct.snd_als300_substream_data, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %control_register to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 133, ptr %control_register, align 4
  %block_counter_register = getelementptr inbounds %struct.snd_als300_substream_data, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %block_counter_register to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 155, ptr %block_counter_register, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @kfree(ptr noundef %5) #8
  %capture_substream = getelementptr inbounds %struct.snd_als300, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %capture_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size.i, align 4
  %mul.i.i28 = mul i32 %9, %7
  %div1.i.i29 = lshr i32 %mul.i.i28, 3
  %reg_lock = getelementptr inbounds %struct.snd_als300, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %add.i = add i32 %11, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 -123) #8, !srcloc !103
  %add2.i = add i32 %11, 8
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %13 = inttoptr i32 %add4.i to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %15 = and i32 %14, 65279
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %conv6 = and i32 %div1.i.i, 65535
  %sub = add nsw i32 %conv6, -1
  %or = or i32 %16, %sub
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i30 = add i32 %18, 12
  %and.i31 = and i32 %add.i30, 1048575
  %add1.i32 = or i32 %and.i31, -18874368
  %19 = inttoptr i32 %add1.i32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 -123) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %add4.i33 = add i32 %18, 8
  %and5.i = and i32 %add4.i33, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %21 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %20) #8, !srcloc !112
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i34 = add i32 %23, 12
  %and.i35 = and i32 %add.i34, 1048575
  %add1.i36 = or i32 %and.i35, -18874368
  %26 = inttoptr i32 %add1.i36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -125) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %add4.i37 = add i32 %23, 8
  %and5.i38 = and i32 %add4.i37, 1048575
  %add6.i39 = or i32 %and5.i38, -18874368
  %28 = inttoptr i32 %add6.i39 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %27) #8, !srcloc !112
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %31 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_addr, align 8
  %conv11 = and i32 %div1.i.i29, 65535
  %add = add nsw i32 %conv11, -1
  %sub12 = add i32 %add, %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %add.i40 = add i32 %30, 12
  %and.i41 = and i32 %add.i40, 1048575
  %add1.i42 = or i32 %and.i41, -18874368
  %33 = inttoptr i32 %add1.i42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 -124) #8, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %sub12) #8
  %add4.i43 = add i32 %30, 8
  %and5.i44 = and i32 %add4.i43, 1048575
  %add6.i45 = or i32 %and5.i44, -18874368
  %35 = inttoptr i32 %add6.i45 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %34) #8, !srcloc !112
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %ac97 = getelementptr inbounds %struct.snd_als300, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_als300_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call fastcc void @snd_als300_init(ptr noundef %3)
  %ac97 = getelementptr inbounds %struct.snd_als300, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %5) #8
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/als300.c", i32 86, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/als300.c", i32 87, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/als300.c", i32 88, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/als300.c", i32 94, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/als300.c", i32 95, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/als300.c", i32 96, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/als300.c", i32 97, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/als300.c", i32 98, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/als300.c", i32 99, i32 1}
!22 = !{ptr @__initcall__kmod_snd_als300__252_742_als300_driver_init6, !23, !"__initcall__kmod_snd_als300__252_742_als300_driver_init6", i1 false, i1 false}
!23 = !{!"../sound/pci/als300.c", i32 742, i32 1}
!24 = !{ptr @__exitcall_als300_driver_exit, !23, !"__exitcall_als300_driver_exit", i1 false, i1 false}
!25 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!26 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!27 = !{ptr @index, !28, !"index", i1 false, i1 false}
!28 = !{!"../sound/pci/als300.c", i32 90, i32 12}
!29 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!30 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!31 = !{ptr @id, !32, !"id", i1 false, i1 false}
!32 = !{!"../sound/pci/als300.c", i32 91, i32 14}
!33 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!34 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!35 = !{ptr @enable, !36, !"enable", i1 false, i1 false}
!36 = !{!"../sound/pci/als300.c", i32 92, i32 13}
!37 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @als300_driver, !39, !"als300_driver", i1 false, i1 false}
!39 = !{!"../sound/pci/als300.c", i32 733, i32 26}
!40 = !{ptr @snd_als300_ids, !41, !"snd_als300_ids", i1 false, i1 false}
!41 = !{!"../sound/pci/als300.c", i32 129, i32 35}
!42 = !{ptr @snd_als300_probe.dev, !43, !"dev", i1 false, i1 false}
!43 = !{!"../sound/pci/als300.c", i32 689, i32 13}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/als300.c", i32 713, i32 23}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/als300.c", i32 717, i32 28}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/als300.c", i32 719, i32 28}
!50 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/als300.c", i32 721, i32 26}
!52 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/als300.c", i32 609, i32 3}
!54 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @snd_als300_create._entry, !53, !"_entry", i1 false, i1 false}
!59 = !{ptr @snd_als300_create._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @snd_als300_create.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../sound/pci/als300.c", i32 618, i32 2}
!62 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/als300.c", i32 633, i32 3}
!65 = !{ptr @snd_als300_create._entry.11, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @snd_als300_create._entry_ptr.13, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/als300.c", i32 644, i32 3}
!69 = !{ptr @snd_als300_create._entry.14, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @snd_als300_create._entry_ptr.16, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/als300.c", i32 650, i32 3}
!73 = !{ptr @snd_als300_create._entry.17, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @snd_als300_create._entry_ptr.19, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @snd_als300_ac97.ops, !76, !"ops", i1 false, i1 false}
!76 = !{!"../sound/pci/als300.c", i32 281, i32 39}
!77 = !{ptr @snd_als300_playback_ops, !78, !"snd_als300_playback_ops", i1 false, i1 false}
!78 = !{!"../sound/pci/als300.c", i32 524, i32 33}
!79 = !{ptr @snd_als300_playback_hw, !80, !"snd_als300_playback_hw", i1 false, i1 false}
!80 = !{!"../sound/pci/als300.c", i32 303, i32 38}
!81 = !{ptr @snd_als300_capture_ops, !82, !"snd_als300_capture_ops", i1 false, i1 false}
!82 = !{!"../sound/pci/als300.c", i32 532, i32 33}
!83 = !{ptr @snd_als300_capture_hw, !84, !"snd_als300_capture_hw", i1 false, i1 false}
!84 = !{!"../sound/pci/als300.c", i32 322, i32 38}
!85 = !{ptr @snd_als300_pm, !86, !"snd_als300_pm", i1 false, i1 false}
!86 = !{!"../sound/pci/als300.c", i32 680, i32 8}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{i8 0, i8 2}
!98 = !{i64 5006023}
!99 = !{i64 2154865728}
!100 = !{i64 2154866026}
!101 = !{i64 2154866324}
!102 = !{i64 2154866563}
!103 = !{i64 5005628}
!104 = !{i64 2154866927}
!105 = !{i64 2154865066}
!106 = !{i64 2154865291}
!107 = !{i64 2154862994}
!108 = !{i64 5006243}
!109 = !{i64 2154863768}
!110 = !{i64 2154864153}
!111 = !{i64 2154864524}
!112 = !{i64 5005825}
!113 = !{i64 2154870261}
!114 = !{i64 2154871082}
!115 = !{i64 2154867350}
!116 = !{i64 2154868177}
!117 = !{i64 2154868735}
!118 = !{i64 5005405}
!119 = !{i64 2154869963}
