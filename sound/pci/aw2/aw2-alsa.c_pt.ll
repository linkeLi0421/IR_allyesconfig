; ModuleID = '/llk/IR_all_yes/sound/pci/aw2/aw2-alsa.c_pt.bc'
source_filename = "../sound/pci/aw2/aw2-alsa.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.aw2 = type { %struct.snd_aw2_saa7146, ptr, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, [2 x %struct.aw2_pcm_device], [1 x %struct.aw2_pcm_device] }
%struct.snd_aw2_saa7146 = type { ptr }
%struct.aw2_pcm_device = type { ptr, i32, ptr }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@__UNIQUE_ID_author242 = internal constant [102 x i8] c"snd_aw2.author=Cedric Bregardis <cedric.bregardis@free.fr>, Jean-Christian Hassler <jhassler@free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [52 x i8] c"snd_aw2.description=Emagic Audiowerk 2 sound driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [35 x i8] c"snd_aw2.file=sound/pci/aw2/snd-aw2\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [20 x i8] c"snd_aw2.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [14 x i8] c"snd_aw2.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [36 x i8] c"snd_aw2.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [57 x i8] c"snd_aw2.parm=index:Index value for Audiowerk2 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [11 x i8] c"snd_aw2.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [35 x i8] c"snd_aw2.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [56 x i8] c"snd_aw2.parm=id:ID string for the Audiowerk2 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [15 x i8] c"snd_aw2.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [38 x i8] c"snd_aw2.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [49 x i8] c"snd_aw2.parm=enable:Enable Audiowerk2 soundcard.\00", section ".modinfo", align 1
@__initcall__kmod_snd_aw2__252_159_aw2_driver_init6 = internal global ptr @aw2_driver_init, section ".initcall6.init", align 4
@aw2_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_aw2_ids, ptr @snd_aw2_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_aw2_driver_exit = internal global ptr @aw2_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_aw2\00", [24 x i8] zeroinitializer }, align 32
@snd_aw2_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28998, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_aw2_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@snd_aw2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&chip->mtx\00", [21 x i8] zeroinitializer }, align 32
@snd_aw2_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Audiowerk2\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s with SAA7146 irq %i\00", [41 x i8] zeroinitializer }, align 32
@snd_aw2_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 218, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Impossible to set 32bit mask DMA\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_aw2_create\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/pci/aw2/aw2-alsa.c\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_aw2_create._entry_ptr = internal global ptr @snd_aw2_create._entry, section ".printk_index", align 4
@snd_aw2_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 239, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot grab irq %d\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_aw2_create._entry_ptr.14 = internal global ptr @snd_aw2_create._entry.12, section ".printk_index", align 4
@snd_aw2_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 247, ptr @.str.17, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Audiowerk 2 sound card (saa7146 chipset) detected and managed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_aw2_create._entry_ptr.18 = internal global ptr @snd_aw2_create._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Audiowerk2 analog playback\00", [37 x i8] zeroinitializer }, align 32
@snd_aw2_new_pcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.9, i32 501, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_pcm_new error (0x%X)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_aw2_new_pcm\00", [16 x i8] zeroinitializer }, align 32
@snd_aw2_new_pcm._entry_ptr = internal global ptr @snd_aw2_new_pcm._entry, section ".printk_index", align 4
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Analog playback\00", [16 x i8] zeroinitializer }, align 32
@snd_aw2_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_aw2_pcm_playback_open, ptr @snd_aw2_pcm_playback_close, ptr null, ptr null, ptr null, ptr @snd_aw2_pcm_prepare_playback, ptr @snd_aw2_pcm_trigger_playback, ptr null, ptr @snd_aw2_pcm_pointer_playback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Audiowerk2 digital playback\00", [36 x i8] zeroinitializer }, align 32
@snd_aw2_new_pcm._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.9, i32 534, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@snd_aw2_new_pcm._entry_ptr.25 = internal global ptr @snd_aw2_new_pcm._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Digital playback\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Audiowerk2 capture\00", [45 x i8] zeroinitializer }, align 32
@snd_aw2_new_pcm._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.9, i32 566, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@snd_aw2_new_pcm._entry_ptr.29 = internal global ptr @snd_aw2_new_pcm._entry.28, section ".printk_index", align 4
@snd_aw2_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_aw2_pcm_capture_open, ptr @snd_aw2_pcm_capture_close, ptr null, ptr null, ptr null, ptr @snd_aw2_pcm_prepare_capture, ptr @snd_aw2_pcm_trigger_capture, ptr null, ptr @snd_aw2_pcm_pointer_capture, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@aw2_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 3, i32 0, ptr @snd_aw2_control_switch_capture_info, ptr @snd_aw2_control_switch_capture_get, ptr @snd_aw2_control_switch_capture_put, %union.anon.83 zeroinitializer, i32 65535 }, [48 x i8] zeroinitializer }, align 32
@snd_aw2_new_pcm._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.9, i32 598, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_ctl_add error (0x%X)\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_aw2_new_pcm._entry_ptr.33 = internal global ptr @snd_aw2_new_pcm._entry.31, section ".printk_index", align 4
@snd_aw2_pcm_playback_open.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.9, ptr @.str.35, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_aw2_pcm_playback_open\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Playback_open\0A\00", [17 x i8] zeroinitializer }, align 32
@snd_aw2_playback_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 64, i32 44100, i32 44100, i32 2, i32 4, i32 32768, i32 4096, i32 32768, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_aw2_pcm_capture_open.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.9, ptr @.str.37, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_aw2_pcm_capture_open\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Capture_open\0A\00", [18 x i8] zeroinitializer }, align 32
@snd_aw2_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 64, i32 44100, i32 44100, i32 2, i32 2, i32 32768, i32 4096, i32 32768, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCM Capture Route\00", [46 x i8] zeroinitializer }, align 32
@snd_aw2_control_switch_capture_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.39, ptr @.str.40], [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Analog\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"aw2_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 153, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 133, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 134, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 135, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 159, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"snd_aw2_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 144, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 255, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 281, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 283, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 286, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 288, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 218, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 239, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 246, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 498, i32 32 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 501, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 509, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"snd_aw2_playback_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 162, i32 33 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 530, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 534, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 541, i32 33 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 562, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 566, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"snd_aw2_capture_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 171, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"aw2_control\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 179, i32 38 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 598, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 311, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c"snd_aw2_playback_hw\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 42, i32 38 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 327, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [19 x i8] c"snd_aw2_capture_hw\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 59, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 181, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 608, i32 28 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 609, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [28 x i8] c"../sound/pci/aw2/aw2-alsa.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 609, i32 13 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_aw2_driver_exit, ptr @__initcall__kmod_snd_aw2__252_159_aw2_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @aw2_driver_exit, ptr @snd_aw2_create._entry, ptr @snd_aw2_create._entry.12, ptr @snd_aw2_create._entry.15, ptr @snd_aw2_create._entry_ptr, ptr @snd_aw2_create._entry_ptr.14, ptr @snd_aw2_create._entry_ptr.18, ptr @snd_aw2_new_pcm._entry, ptr @snd_aw2_new_pcm._entry.24, ptr @snd_aw2_new_pcm._entry.28, ptr @snd_aw2_new_pcm._entry.31, ptr @snd_aw2_new_pcm._entry_ptr, ptr @snd_aw2_new_pcm._entry_ptr.25, ptr @snd_aw2_new_pcm._entry_ptr.29, ptr @snd_aw2_new_pcm._entry_ptr.33, ptr @aw2_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @snd_aw2_ids, ptr @snd_aw2_probe.dev, ptr @snd_aw2_probe.__key, ptr @.str.1, ptr @snd_aw2_probe.__key.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @snd_aw2_playback_ops, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @snd_aw2_capture_ops, ptr @aw2_control, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @snd_aw2_playback_hw, ptr @.str.36, ptr @.str.37, ptr @snd_aw2_capture_hw, ptr @.str.38, ptr @snd_aw2_control_switch_capture_info.texts, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_new_pcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_new_pcm._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_new_pcm._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aw2_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_new_pcm._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_aw2_control_switch_capture_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aw2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @aw2_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aw2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @aw2_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pcm_playback_ana.i = alloca ptr, align 4
  %pcm_playback_num.i = alloca ptr, align 4
  %pcm_capture.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #7
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !135
  %1 = load i32, ptr @snd_aw2_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_aw2_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 196, ptr noundef nonnull %card) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  call void @pci_set_master(ptr noundef %pci) #7
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %12 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #7
  %card5.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 7
  %14 = ptrtoint ptr %card5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %card5.i, align 4
  %pci6.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pci6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pci, ptr %pci6.i, align 4
  %irq.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %irq.i, align 4
  %call7.i = call i32 @pcim_iomap_regions(ptr noundef %pci, i32 noundef 1, ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end4.i.cleanup_crit_edge, label %if.end10.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.i:                                       ; preds = %if.end4.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %17 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resource.i, align 8
  %iobase_phys.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 5
  %19 = ptrtoint ptr %iobase_phys.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %iobase_phys.i, align 4
  %call11.i = call ptr @pcim_iomap_table(ptr noundef %pci) #7
  %20 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call11.i, align 4
  %iobase_virt.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 6
  %22 = ptrtoint ptr %iobase_virt.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %iobase_virt.i, align 4
  call void @snd_aw2_saa7146_setup(ptr noundef %11, ptr noundef %21) #7
  %irq15.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %23 = ptrtoint ptr %irq15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq15.i, align 4
  %call.i61.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %24, ptr noundef nonnull @snd_aw2_saa7146_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool17.not.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool17.not.i, label %do.body, label %do.end21.i

do.end21.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev22.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %25 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev22.i, align 8
  %27 = ptrtoint ptr %irq15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq15.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.13, i32 noundef %28) #10
  br label %cleanup

do.body:                                          ; preds = %if.end10.i
  %29 = ptrtoint ptr %irq15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq15.i, align 4
  %31 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %32 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %33 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @snd_aw2_free, ptr %private_free.i, align 4
  %dev31.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %34 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev31.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.16) #10
  %mtx = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 4
  call void @__mutex_init(ptr noundef %mtx, ptr noundef nonnull @.str.1, ptr noundef nonnull @snd_aw2_probe.__key) #7
  %reg_lock = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @snd_aw2_probe.__key.2, i16 noundef signext 3) #7
  %36 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 1635201536, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 3
  %39 = call ptr @memcpy(ptr %shortname, ptr @.str.5, i32 11)
  %longname = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq.i, align 4
  %call22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.6, ptr noundef %shortname, i32 noundef %41)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm_playback_ana.i) #7
  %42 = ptrtoint ptr %pcm_playback_ana.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm_playback_ana.i, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm_playback_num.i) #7
  %43 = ptrtoint ptr %pcm_playback_num.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm_playback_num.i, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm_capture.i) #7
  %44 = ptrtoint ptr %pcm_capture.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm_capture.i, align 4, !annotation !135
  %45 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card5.i, align 4
  %call.i41 = call i32 @snd_pcm_new(ptr noundef %46, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm_playback_ana.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp slt i32 %call.i41, 0
  br i1 %cmp.i42, label %do.end.i44, label %if.end.i48

do.end.i44:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card5.i, align 4
  %dev.i43 = getelementptr inbounds %struct.snd_card, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %dev.i43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i43, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.20, i32 noundef %call.i41) #10
  br label %snd_aw2_new_pcm.exit

if.end.i48:                                       ; preds = %do.body
  %device_playback.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 8
  %51 = ptrtoint ptr %pcm_playback_ana.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcm_playback_ana.i, align 4
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %52, i32 0, i32 7
  %53 = call ptr @memcpy(ptr %name.i, ptr @.str.22, i32 16)
  %private_data.i45 = getelementptr inbounds %struct.snd_pcm, ptr %52, i32 0, i32 11
  %54 = ptrtoint ptr %private_data.i45 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %device_playback.i, ptr %private_data.i45, align 8
  call void @snd_pcm_set_ops(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @snd_aw2_playback_ops) #7
  %55 = ptrtoint ptr %pcm_playback_ana.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcm_playback_ana.i, align 4
  %57 = ptrtoint ptr %device_playback.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %device_playback.i, align 4
  %chip3.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 8, i32 0, i32 2
  %58 = ptrtoint ptr %chip3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %11, ptr %chip3.i, align 4
  %stream_number.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 8, i32 0, i32 1
  %59 = ptrtoint ptr %stream_number.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %stream_number.i, align 4
  %60 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci6.i, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %call5.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %56, i32 noundef 2, ptr noundef %dev4.i, i32 noundef 65536, i32 noundef 65536) #7
  %62 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card5.i, align 4
  %call7.i46 = call i32 @snd_pcm_new(ptr noundef %63, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm_playback_num.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i46)
  %cmp8.i47 = icmp slt i32 %call7.i46, 0
  br i1 %cmp8.i47, label %do.end12.i, label %if.end15.i

do.end12.i:                                       ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card5.i, align 4
  %dev14.i = getelementptr inbounds %struct.snd_card, ptr %65, i32 0, i32 27
  %66 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev14.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.20, i32 noundef %call7.i46) #10
  br label %snd_aw2_new_pcm.exit

if.end15.i:                                       ; preds = %if.end.i48
  %arrayidx17.i = getelementptr %struct.aw2, ptr %11, i32 0, i32 8, i32 1
  %68 = ptrtoint ptr %pcm_playback_num.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcm_playback_num.i, align 4
  %name18.i = getelementptr inbounds %struct.snd_pcm, ptr %69, i32 0, i32 7
  %70 = call ptr @memcpy(ptr %name18.i, ptr @.str.26, i32 17)
  %private_data21.i = getelementptr inbounds %struct.snd_pcm, ptr %69, i32 0, i32 11
  %71 = ptrtoint ptr %private_data21.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx17.i, ptr %private_data21.i, align 8
  call void @snd_pcm_set_ops(ptr noundef %69, i32 noundef 0, ptr noundef nonnull @snd_aw2_playback_ops) #7
  %72 = ptrtoint ptr %pcm_playback_num.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcm_playback_num.i, align 4
  %74 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %arrayidx17.i, align 4
  %chip23.i = getelementptr %struct.aw2, ptr %11, i32 0, i32 8, i32 1, i32 2
  %75 = ptrtoint ptr %chip23.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %11, ptr %chip23.i, align 4
  %stream_number24.i = getelementptr %struct.aw2, ptr %11, i32 0, i32 8, i32 1, i32 1
  %76 = ptrtoint ptr %stream_number24.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %stream_number24.i, align 4
  %77 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pci6.i, align 4
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %call27.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %73, i32 noundef 2, ptr noundef %dev26.i, i32 noundef 65536, i32 noundef 65536) #7
  %79 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card5.i, align 4
  %call29.i = call i32 @snd_pcm_new(ptr noundef %80, ptr noundef nonnull @.str.27, i32 noundef 2, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm_capture.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card5.i, align 4
  %dev36.i = getelementptr inbounds %struct.snd_card, ptr %82, i32 0, i32 27
  %83 = ptrtoint ptr %dev36.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev36.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.20, i32 noundef %call29.i) #10
  br label %snd_aw2_new_pcm.exit

if.end37.i:                                       ; preds = %if.end15.i
  %device_capture.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 9
  %85 = ptrtoint ptr %pcm_capture.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pcm_capture.i, align 4
  %name39.i = getelementptr inbounds %struct.snd_pcm, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %name39.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 4855285518771053824, ptr %name39.i, align 1
  %private_data42.i = getelementptr inbounds %struct.snd_pcm, ptr %86, i32 0, i32 11
  %88 = ptrtoint ptr %private_data42.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %device_capture.i, ptr %private_data42.i, align 8
  call void @snd_pcm_set_ops(ptr noundef %86, i32 noundef 1, ptr noundef nonnull @snd_aw2_capture_ops) #7
  %89 = ptrtoint ptr %pcm_capture.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcm_capture.i, align 4
  %91 = ptrtoint ptr %device_capture.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %device_capture.i, align 4
  %chip44.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 9, i32 0, i32 2
  %92 = ptrtoint ptr %chip44.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %11, ptr %chip44.i, align 4
  %stream_number45.i = getelementptr inbounds %struct.aw2, ptr %11, i32 0, i32 9, i32 0, i32 1
  %93 = ptrtoint ptr %stream_number45.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %stream_number45.i, align 4
  %94 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pci6.i, align 4
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %call48.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %90, i32 noundef 2, ptr noundef %dev47.i, i32 noundef 65536, i32 noundef 65536) #7
  %96 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %card5.i, align 4
  %call50.i = call ptr @snd_ctl_new1(ptr noundef nonnull @aw2_control, ptr noundef %11) #7
  %call51.i = call i32 @snd_ctl_add(ptr noundef %97, ptr noundef %call50.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %do.end56.i, label %if.end37.i.snd_aw2_new_pcm.exit_crit_edge

if.end37.i.snd_aw2_new_pcm.exit_crit_edge:        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_aw2_new_pcm.exit

do.end56.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %card5.i, align 4
  %dev58.i = getelementptr inbounds %struct.snd_card, ptr %99, i32 0, i32 27
  %100 = ptrtoint ptr %dev58.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev58.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.32, i32 noundef %call51.i) #10
  br label %snd_aw2_new_pcm.exit

snd_aw2_new_pcm.exit:                             ; preds = %do.end56.i, %if.end37.i.snd_aw2_new_pcm.exit_crit_edge, %do.end34.i, %do.end12.i, %do.end.i44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm_capture.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm_playback_num.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm_playback_ana.i) #7
  %102 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %card, align 4
  %call24 = call i32 @snd_card_register(ptr noundef %103) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %snd_aw2_new_pcm.exit.cleanup_crit_edge, label %if.end27

snd_aw2_new_pcm.exit.cleanup_crit_edge:           ; preds = %snd_aw2_new_pcm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %snd_aw2_new_pcm.exit
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %106 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %driver_data.i.i, align 4
  %107 = load i32, ptr @snd_aw2_probe.dev, align 4
  %inc28 = add i32 %107, 1
  store i32 %inc28, ptr @snd_aw2_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %snd_aw2_new_pcm.exit.cleanup_crit_edge, %do.end21.i, %if.end4.i.cleanup_crit_edge, %do.end.i, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call24, %snd_aw2_new_pcm.exit.cleanup_crit_edge ], [ %call7.i, %if.end4.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -16, %do.end21.i ], [ -6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_aw2_saa7146_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_aw2_saa7146_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_aw2_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call i32 @snd_aw2_saa7146_free(ptr noundef %1) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_aw2_saa7146_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_pcm_playback_open(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_aw2_pcm_playback_open.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_aw2_pcm_playback_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_aw2_pcm_playback_open.__UNIQUE_ID_ddebug253, ptr noundef %7, ptr noundef nonnull @.str.35) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %8 = call ptr @memcpy(ptr %hw, ptr @snd_aw2_playback_hw, i32 64)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_aw2_pcm_playback_close(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_pcm_prepare_playback(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %chip1 = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %mtx = getelementptr inbounds %struct.aw2, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #7
  %6 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime2, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %11, %9
  %div1.i.i = lshr i32 %mul.i.i, 3
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_size.i, align 4
  %mul.i.i16 = mul i32 %13, %11
  %div1.i.i17 = lshr i32 %mul.i.i16, 3
  %stream_number = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %stream_number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream_number, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 51
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 8
  tail call void @snd_aw2_saa7146_pcm_init_playback(ptr noundef %3, i32 noundef %15, i32 noundef %17, i32 noundef %div1.i.i, i32 noundef %div1.i.i17) #7
  %18 = ptrtoint ptr %stream_number to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream_number, align 4
  tail call void @snd_aw2_saa7146_define_it_playback_callback(i32 noundef %19, ptr noundef nonnull @snd_pcm_period_elapsed, ptr noundef %substream) #7
  tail call void @mutex_unlock(ptr noundef %mtx) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_pcm_trigger_playback(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %chip1 = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %reg_lock = getelementptr inbounds %struct.aw2, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #7
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %stream_number = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %stream_number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream_number, align 4
  tail call void @snd_aw2_saa7146_pcm_trigger_start_playback(ptr noundef %3, i32 noundef %6) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %stream_number4 = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %stream_number4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_number4, align 4
  tail call void @snd_aw2_saa7146_pcm_trigger_stop_playback(ptr noundef %3, i32 noundef %8) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #7
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_pcm_pointer_playback(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %chip1 = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %stream_number = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %stream_number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream_number, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %8 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_area, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size, align 4
  %call = tail call i32 @snd_aw2_saa7146_get_hw_ptr_playback(ptr noundef %3, i32 noundef %7, ptr noundef %9, i32 noundef %11) #7
  %12 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime2, align 4
  %mul.i = shl i32 %call, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %15
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_aw2_saa7146_pcm_init_playback(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_aw2_saa7146_define_it_playback_callback(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_aw2_saa7146_pcm_trigger_start_playback(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_aw2_saa7146_pcm_trigger_stop_playback(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_aw2_saa7146_get_hw_ptr_playback(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_pcm_capture_open(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_aw2_pcm_capture_open.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_aw2_pcm_capture_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_aw2_pcm_capture_open.__UNIQUE_ID_ddebug254, ptr noundef %7, ptr noundef nonnull @.str.37) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %8 = call ptr @memcpy(ptr %hw, ptr @snd_aw2_capture_hw, i32 64)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_aw2_pcm_capture_close(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_pcm_prepare_capture(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %chip1 = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %mtx = getelementptr inbounds %struct.aw2, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #7
  %6 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime2, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %11, %9
  %div1.i.i = lshr i32 %mul.i.i, 3
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_size.i, align 4
  %mul.i.i16 = mul i32 %13, %11
  %div1.i.i17 = lshr i32 %mul.i.i16, 3
  %stream_number = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %stream_number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream_number, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 51
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 8
  tail call void @snd_aw2_saa7146_pcm_init_capture(ptr noundef %3, i32 noundef %15, i32 noundef %17, i32 noundef %div1.i.i, i32 noundef %div1.i.i17) #7
  %18 = ptrtoint ptr %stream_number to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream_number, align 4
  tail call void @snd_aw2_saa7146_define_it_capture_callback(i32 noundef %19, ptr noundef nonnull @snd_pcm_period_elapsed, ptr noundef %substream) #7
  tail call void @mutex_unlock(ptr noundef %mtx) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_pcm_trigger_capture(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %chip1 = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %reg_lock = getelementptr inbounds %struct.aw2, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #7
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %stream_number = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %stream_number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream_number, align 4
  tail call void @snd_aw2_saa7146_pcm_trigger_start_capture(ptr noundef %3, i32 noundef %6) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %stream_number4 = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %stream_number4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_number4, align 4
  tail call void @snd_aw2_saa7146_pcm_trigger_stop_capture(ptr noundef %3, i32 noundef %8) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #7
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_pcm_pointer_capture(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %chip1 = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %stream_number = getelementptr inbounds %struct.aw2_pcm_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %stream_number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream_number, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %8 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_area, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size, align 4
  %call = tail call i32 @snd_aw2_saa7146_get_hw_ptr_capture(ptr noundef %3, i32 noundef %7, ptr noundef %9, i32 noundef %11) #7
  %12 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime2, align 4
  %mul.i = shl i32 %call, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %15
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_aw2_saa7146_pcm_init_capture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_aw2_saa7146_define_it_capture_callback(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_aw2_saa7146_pcm_trigger_start_capture(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_aw2_saa7146_pcm_trigger_stop_capture(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_aw2_saa7146_get_hw_ptr_capture(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_control_switch_capture_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_aw2_control_switch_capture_info.texts) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_control_switch_capture_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_aw2_saa7146_is_using_digital_input(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %spec.select = zext i1 %tobool.not to i32
  %2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_aw2_control_switch_capture_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_aw2_saa7146_is_using_digital_input(ptr noundef %1) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp ne i32 %3, 0
  %or.cond12 = select i1 %cmp3, i1 true, i1 %tobool.not
  %or.cond13 = select i1 %or.cond.not, i1 %or.cond12, i1 false
  br i1 %or.cond13, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lnot.ext = zext i1 %tobool.not to i32
  tail call void @snd_aw2_saa7146_use_digital_input(ptr noundef %1, i32 noundef %lnot.ext) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %changed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_aw2_saa7146_is_using_digital_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_aw2_saa7146_use_digital_input(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !47, !49, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !80, !82, !84, !86, !87, !89, !91, !93, !94, !96, !98, !99, !100, !102, !104, !105, !106, !108, !110, !112, !113, !114, !116, !118, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 137, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 138, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 139, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 140, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 141, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 142, i32 1}
!22 = !{ptr @__initcall__kmod_snd_aw2__252_159_aw2_driver_init6, !23, !"__initcall__kmod_snd_aw2__252_159_aw2_driver_init6", i1 false, i1 false}
!23 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 159, i32 1}
!24 = !{ptr @__exitcall_aw2_driver_exit, !23, !"__exitcall_aw2_driver_exit", i1 false, i1 false}
!25 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!26 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!27 = !{ptr @index, !28, !"index", i1 false, i1 false}
!28 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 133, i32 12}
!29 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!30 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!31 = !{ptr @id, !32, !"id", i1 false, i1 false}
!32 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 134, i32 14}
!33 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!34 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!35 = !{ptr @enable, !36, !"enable", i1 false, i1 false}
!36 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 135, i32 13}
!37 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @aw2_driver, !39, !"aw2_driver", i1 false, i1 false}
!39 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 153, i32 26}
!40 = !{ptr @snd_aw2_ids, !41, !"snd_aw2_ids", i1 false, i1 false}
!41 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 144, i32 35}
!42 = !{ptr @snd_aw2_probe.dev, !43, !"dev", i1 false, i1 false}
!43 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 255, i32 13}
!44 = !{ptr @snd_aw2_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 281, i32 2}
!46 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @snd_aw2_probe.__key.2, !48, !"__key", i1 false, i1 false}
!48 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 283, i32 2}
!49 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 285, i32 23}
!52 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 286, i32 26}
!54 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 288, i32 26}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 218, i32 3}
!58 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @snd_aw2_create._entry, !57, !"_entry", i1 false, i1 false}
!63 = !{ptr @snd_aw2_create._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 239, i32 3}
!66 = !{ptr @snd_aw2_create._entry.12, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @snd_aw2_create._entry_ptr.14, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 246, i32 2}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @snd_aw2_create._entry.15, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @snd_aw2_create._entry_ptr.18, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 498, i32 32}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 501, i32 3}
!77 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @snd_aw2_new_pcm._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @snd_aw2_new_pcm._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 509, i32 33}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 530, i32 32}
!84 = !{ptr @snd_aw2_new_pcm._entry.24, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 534, i32 3}
!86 = !{ptr @snd_aw2_new_pcm._entry_ptr.25, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 541, i32 33}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 562, i32 32}
!91 = !{ptr @snd_aw2_new_pcm._entry.28, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 566, i32 3}
!93 = !{ptr @snd_aw2_new_pcm._entry_ptr.29, !92, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 574, i32 28}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 598, i32 3}
!98 = !{ptr @snd_aw2_new_pcm._entry.31, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @snd_aw2_new_pcm._entry_ptr.33, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @snd_aw2_playback_ops, !101, !"snd_aw2_playback_ops", i1 false, i1 false}
!101 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 162, i32 33}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 311, i32 2}
!104 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @snd_aw2_pcm_playback_open.__UNIQUE_ID_ddebug253, !103, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!106 = !{ptr @snd_aw2_playback_hw, !107, !"snd_aw2_playback_hw", i1 false, i1 false}
!107 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 42, i32 38}
!108 = !{ptr @snd_aw2_capture_ops, !109, !"snd_aw2_capture_ops", i1 false, i1 false}
!109 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 171, i32 33}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 327, i32 2}
!112 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @snd_aw2_pcm_capture_open.__UNIQUE_ID_ddebug254, !111, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!114 = !{ptr @snd_aw2_capture_hw, !115, !"snd_aw2_capture_hw", i1 false, i1 false}
!115 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 59, i32 38}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 181, i32 10}
!118 = !{ptr @aw2_control, !119, !"aw2_control", i1 false, i1 false}
!119 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 179, i32 38}
!120 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 609, i32 3}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 609, i32 13}
!124 = !{ptr @snd_aw2_control_switch_capture_info.texts, !125, !"texts", i1 false, i1 false}
!125 = !{!"../sound/pci/aw2/aw2-alsa.c", i32 608, i32 28}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"auto-init"}
!136 = !{i8 0, i8 2}
!137 = !{i64 2148501595, i64 2148501600, i64 2148501613, i64 2148501657, i64 2148501691, i64 2148501712}
