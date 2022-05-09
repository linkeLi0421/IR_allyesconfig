; ModuleID = '/llk/IR_all_yes/sound/pci/rme32.c_pt.bc'
source_filename = "../sound/pci/rme32.c"
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
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
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
%struct.rme32 = type { %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, i8, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.snd_pcm_indirect, %struct.snd_pcm_indirect, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__param_str_index = internal constant [16 x i8] c"snd_rme32.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype242 = internal constant [38 x i8] c"snd_rme32.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index243 = internal constant [59 x i8] c"snd_rme32.parm=index:Index value for RME Digi32 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_rme32.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype244 = internal constant [37 x i8] c"snd_rme32.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id245 = internal constant [54 x i8] c"snd_rme32.parm=id:ID string for RME Digi32 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_rme32.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype246 = internal constant [40 x i8] c"snd_rme32.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable247 = internal constant [51 x i8] c"snd_rme32.parm=enable:Enable RME Digi32 soundcard.\00", section ".modinfo", align 1
@__param_str_fullduplex = internal constant [21 x i8] c"snd_rme32.fullduplex\00", align 1
@__param_arr_fullduplex = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @fullduplex }, align 4
@__param_fullduplex = internal constant %struct.kernel_param { ptr @__param_str_fullduplex, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_fullduplex } }, section "__param", align 4
@__UNIQUE_ID_fullduplextype248 = internal constant [44 x i8] c"snd_rme32.parmtype=fullduplex:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fullduplex249 = internal constant [52 x i8] c"snd_rme32.parm=fullduplex:Support full-duplex mode.\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [89 x i8] c"snd_rme32.author=Martin Langer <martin-langer@gmx.de>, Pilo Chambert <pilo.c@wanadoo.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [55 x i8] c"snd_rme32.description=RME Digi32, Digi32/8, Digi32 PRO\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [35 x i8] c"snd_rme32.file=sound/pci/snd-rme32\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [22 x i8] c"snd_rme32.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_snd_rme32__254_1936_rme32_driver_init6 = internal global ptr @rme32_driver_init, section ".initcall6.init", align 4
@rme32_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_rme32_ids, ptr @snd_rme32_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rme32_driver_exit = internal global ptr @rme32_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@fullduplex = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_rme32\00", [22 x i8] zeroinitializer }, align 32
@snd_rme32_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 60000, i32 39062, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 60000, i32 39064, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 60000, i32 39063, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_rme32_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Digi32\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RME Digi32\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RME Digi32/8\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RME Digi32 PRO\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s (Rev. %d) at 0x%lx, irq %d\00", [34 x i8] zeroinitializer }, align 32
@snd_rme32_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&rme32->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RME32\00", [26 x i8] zeroinitializer }, align 32
@snd_rme32_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1321, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to remap memory region 0x%lx-0x%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_rme32_create\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sound/pci/rme32.c\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_rme32_create._entry_ptr = internal global ptr @snd_rme32_create._entry, section ".printk_index", align 4
@snd_rme32_create._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 1327, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_rme32_create._entry_ptr.15 = internal global ptr @snd_rme32_create._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Digi32 IEC958\00", [18 x i8] zeroinitializer }, align 32
@snd_rme32_playback_spdif_fd_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme32_playback_spdif_open, ptr @snd_rme32_playback_close, ptr null, ptr @snd_rme32_playback_hw_params, ptr null, ptr @snd_rme32_playback_prepare, ptr @snd_rme32_pcm_trigger, ptr null, ptr @snd_rme32_playback_fd_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_rme32_playback_fd_ack }, [32 x i8] zeroinitializer }, align 32
@snd_rme32_capture_spdif_fd_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme32_capture_spdif_open, ptr @snd_rme32_capture_close, ptr null, ptr @snd_rme32_capture_hw_params, ptr null, ptr @snd_rme32_capture_prepare, ptr @snd_rme32_pcm_trigger, ptr null, ptr @snd_rme32_capture_fd_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_rme32_capture_fd_ack }, [32 x i8] zeroinitializer }, align 32
@snd_rme32_playback_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme32_playback_spdif_open, ptr @snd_rme32_playback_close, ptr null, ptr @snd_rme32_playback_hw_params, ptr null, ptr @snd_rme32_playback_prepare, ptr @snd_rme32_pcm_trigger, ptr null, ptr @snd_rme32_playback_pointer, ptr null, ptr @snd_rme32_playback_silence, ptr @snd_rme32_playback_copy, ptr @snd_rme32_playback_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_rme32_capture_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme32_capture_spdif_open, ptr @snd_rme32_capture_close, ptr null, ptr @snd_rme32_capture_hw_params, ptr null, ptr @snd_rme32_capture_prepare, ptr @snd_rme32_pcm_trigger, ptr null, ptr @snd_rme32_capture_pointer, ptr null, ptr null, ptr @snd_rme32_capture_copy, ptr @snd_rme32_capture_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Digi32 ADAT\00", [20 x i8] zeroinitializer }, align 32
@snd_rme32_playback_adat_fd_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme32_playback_adat_open, ptr @snd_rme32_playback_close, ptr null, ptr @snd_rme32_playback_hw_params, ptr null, ptr @snd_rme32_playback_prepare, ptr @snd_rme32_pcm_trigger, ptr null, ptr @snd_rme32_playback_fd_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_rme32_playback_fd_ack }, [32 x i8] zeroinitializer }, align 32
@snd_rme32_capture_adat_fd_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme32_capture_adat_open, ptr @snd_rme32_capture_close, ptr null, ptr @snd_rme32_capture_hw_params, ptr null, ptr @snd_rme32_capture_prepare, ptr @snd_rme32_pcm_trigger, ptr null, ptr @snd_rme32_capture_fd_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_rme32_capture_fd_ack }, [32 x i8] zeroinitializer }, align 32
@snd_rme32_playback_adat_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme32_playback_adat_open, ptr @snd_rme32_playback_close, ptr null, ptr @snd_rme32_playback_hw_params, ptr null, ptr @snd_rme32_playback_prepare, ptr @snd_rme32_pcm_trigger, ptr null, ptr @snd_rme32_playback_pointer, ptr null, ptr @snd_rme32_playback_silence, ptr @snd_rme32_playback_copy, ptr @snd_rme32_playback_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_rme32_capture_adat_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_rme32_capture_adat_open, ptr @snd_rme32_capture_close, ptr null, ptr @snd_rme32_capture_hw_params, ptr null, ptr @snd_rme32_capture_prepare, ptr @snd_rme32_pcm_trigger, ptr null, ptr @snd_rme32_capture_pointer, ptr null, ptr null, ptr @snd_rme32_capture_copy, ptr @snd_rme32_capture_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_rme32_spdif_fd_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4718883, i64 1028, i32 224, i32 32000, i32 48000, i32 2, i32 2, i32 1048576, i32 8192, i32 8192, i32 2, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_rme32_spdif_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4718882, i64 1028, i32 224, i32 32000, i32 48000, i32 2, i32 2, i32 131072, i32 8192, i32 8192, i32 16, i32 16, i32 0 }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_period_bytes = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @period_bytes, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@period_bytes = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 8192], [28 x i8] zeroinitializer }, align 32
@snd_rme32_adat_fd_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4718883, i64 4, i32 192, i32 44100, i32 48000, i32 8, i32 8, i32 1048576, i32 8192, i32 8192, i32 2, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_rme32_adat_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4718882, i64 4, i32 192, i32 44100, i32 48000, i32 8, i32 8, i32 131072, i32 8192, i32 8192, i32 16, i32 16, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_rme32_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_rme32_control_spdif_info, ptr @snd_rme32_control_spdif_get, ptr @snd_rme32_control_spdif_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.19, i32 0, i32 259, i32 0, ptr @snd_rme32_control_spdif_stream_info, ptr @snd_rme32_control_spdif_stream_get, ptr @snd_rme32_control_spdif_stream_put, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.20, i32 0, i32 1, i32 0, ptr @snd_rme32_control_spdif_mask_info, ptr @snd_rme32_control_spdif_mask_get, ptr null, %union.anon.84 zeroinitializer, i32 57 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.21, i32 0, i32 1, i32 0, ptr @snd_rme32_control_spdif_mask_info, ptr @snd_rme32_control_spdif_mask_get, ptr null, %union.anon.84 zeroinitializer, i32 29 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_rme32_info_inputtype_control, ptr @snd_rme32_get_inputtype_control, ptr @snd_rme32_put_inputtype_control, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_rme32_get_loopback_control, ptr @snd_rme32_put_loopback_control, %union.anon.84 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_rme32_info_clockmode_control, ptr @snd_rme32_get_clockmode_control, ptr @snd_rme32_put_clockmode_control, %union.anon.84 zeroinitializer, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Pro Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Input Connector\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Loopback Input\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sample Clock Source\00", [44 x i8] zeroinitializer }, align 32
@snd_rme32_info_inputtype_control.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Optical\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Coaxial\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XLR\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@snd_rme32_info_clockmode_control.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AutoSync\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Internal 32.0kHz\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Internal 44.1kHz\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Internal 48.0kHz\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rme32\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" (index #%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0AGeneral settings\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  Full-duplex mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  Half-duplex mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  receiver: CS8414\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  receiver: CS8412\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  format: 24 bit\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  format: 16 bit\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", Mono\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", Stereo\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0AInput settings\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  input: optical\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  input: coaxial\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  input: internal\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  input: XLR\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0A  sample rate: no valid signal\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" (8 channels)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" (2 channels)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  sample rate: %d Hz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0AOutput settings\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  output signal: normal playback\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  output signal: same as input\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" (muted)\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  sample clock source: AutoSync\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  sample clock source: Internal\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  format: AES/EBU (professional)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  format: IEC958 (consumer)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  emphasis: on\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  emphasis: off\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.snd_rme32_info_inputtype_control = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 4, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_rme32_get_inputtype_control = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 4, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_rme32_put_inputtype_control = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 4, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.snd_rme32_proc_read = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [16 x i8] zeroinitializer }, align 32
@switch.table.snd_rme32_proc_read.65 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 96000, i32 88200, i32 48000, i32 44100, i32 32000], [32 x i8] zeroinitializer }, align 32
@switch.table.snd_rme32_proc_read.66 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 48000, i32 44100, i32 32000, i32 48000, i32 44100, i32 44056, i32 32000], [32 x i8] zeroinitializer }, align 32
@switch.table.snd_rme32_proc_read.67 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32000, i32 44100, i32 48000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 39062, i64 39063, i64 39064]
@__sancov_gen_cov_switch_values.68 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.69 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.70 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.71 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 32, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.76 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.77 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.80 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.81 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.82 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.83 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.84 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"rme32_driver\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1930, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 75, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 76, i32 14 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 77, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"fullduplex\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 78, i32 13 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1936, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [14 x i8] c"snd_rme32_ids\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 213, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1880, i32 13 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1907, i32 23 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1910, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1913, i32 27 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1916, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1919, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1306, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1312, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1319, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1327, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1337, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant [32 x i8] c"snd_rme32_playback_spdif_fd_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1241, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant [31 x i8] c"snd_rme32_capture_spdif_fd_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1251, i32 33 }
@___asan_gen_.168 = private unnamed_addr constant [29 x i8] c"snd_rme32_playback_spdif_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1190, i32 33 }
@___asan_gen_.171 = private unnamed_addr constant [28 x i8] c"snd_rme32_capture_spdif_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1203, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1366, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant [31 x i8] c"snd_rme32_playback_adat_fd_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1261, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant [30 x i8] c"snd_rme32_capture_adat_fd_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1271, i32 33 }
@___asan_gen_.183 = private unnamed_addr constant [28 x i8] c"snd_rme32_playback_adat_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1215, i32 33 }
@___asan_gen_.186 = private unnamed_addr constant [27 x i8] c"snd_rme32_capture_adat_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1228, i32 33 }
@___asan_gen_.189 = private unnamed_addr constant [24 x i8] c"snd_rme32_spdif_fd_info\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 355, i32 38 }
@___asan_gen_.192 = private unnamed_addr constant [21 x i8] c"snd_rme32_spdif_info\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 302, i32 38 }
@___asan_gen_.195 = private unnamed_addr constant [28 x i8] c"hw_constraints_period_bytes\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 822, i32 48 }
@___asan_gen_.198 = private unnamed_addr constant [13 x i8] c"period_bytes\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 820, i32 27 }
@___asan_gen_.201 = private unnamed_addr constant [23 x i8] c"snd_rme32_adat_fd_info\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 382, i32 38 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"snd_rme32_adat_info\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 329, i32 38 }
@___asan_gen_.207 = private unnamed_addr constant [19 x i8] c"snd_rme32_controls\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1796, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1799, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1807, i32 11 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1815, i32 11 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1823, i32 11 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1830, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1837, i32 11 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1844, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1574, i32 28 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1575, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1575, i32 14 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1575, i32 25 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1575, i32 37 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1588, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1655, i32 28 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1655, i32 41 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1656, i32 7 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1657, i32 7 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1658, i32 7 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1526, i32 36 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1438, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1440, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1442, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1444, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1446, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1448, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1451, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1453, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1456, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1458, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1461, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1464, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1467, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1470, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1473, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1477, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1480, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1482, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1484, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1488, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1490, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1492, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1495, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1497, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1508, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1510, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1513, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1515, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1518, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.355 = private constant [21 x i8] c"../sound/pci/rme32.c\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1520, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [46 x i8] c"switch.table.snd_rme32_info_inputtype_control\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [45 x i8] c"switch.table.snd_rme32_get_inputtype_control\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [45 x i8] c"switch.table.snd_rme32_put_inputtype_control\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [33 x i8] c"switch.table.snd_rme32_proc_read\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [36 x i8] c"switch.table.snd_rme32_proc_read.65\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [36 x i8] c"switch.table.snd_rme32_proc_read.66\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [36 x i8] c"switch.table.snd_rme32_proc_read.67\00", align 1
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_enable247, ptr @__UNIQUE_ID_enabletype246, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_fullduplex249, ptr @__UNIQUE_ID_fullduplextype248, ptr @__UNIQUE_ID_id245, ptr @__UNIQUE_ID_idtype244, ptr @__UNIQUE_ID_index243, ptr @__UNIQUE_ID_indextype242, ptr @__UNIQUE_ID_license253, ptr @__exitcall_rme32_driver_exit, ptr @__initcall__kmod_snd_rme32__254_1936_rme32_driver_init6, ptr @__param_enable, ptr @__param_fullduplex, ptr @__param_id, ptr @__param_index, ptr @rme32_driver_exit, ptr @snd_rme32_create._entry, ptr @snd_rme32_create._entry.13, ptr @snd_rme32_create._entry_ptr, ptr @snd_rme32_create._entry_ptr.15, ptr @rme32_driver, ptr @index, ptr @id, ptr @enable, ptr @fullduplex, ptr @.str, ptr @snd_rme32_ids, ptr @snd_rme32_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @snd_rme32_create.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @snd_rme32_playback_spdif_fd_ops, ptr @snd_rme32_capture_spdif_fd_ops, ptr @snd_rme32_playback_spdif_ops, ptr @snd_rme32_capture_spdif_ops, ptr @.str.17, ptr @snd_rme32_playback_adat_fd_ops, ptr @snd_rme32_capture_adat_fd_ops, ptr @snd_rme32_playback_adat_ops, ptr @snd_rme32_capture_adat_ops, ptr @snd_rme32_spdif_fd_info, ptr @snd_rme32_spdif_info, ptr @hw_constraints_period_bytes, ptr @period_bytes, ptr @snd_rme32_adat_fd_info, ptr @snd_rme32_adat_info, ptr @snd_rme32_controls, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @snd_rme32_info_inputtype_control.texts, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @snd_rme32_info_clockmode_control.texts, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @switch.table.snd_rme32_info_inputtype_control, ptr @switch.table.snd_rme32_get_inputtype_control, ptr @switch.table.snd_rme32_put_inputtype_control, ptr @switch.table.snd_rme32_proc_read, ptr @switch.table.snd_rme32_proc_read.65, ptr @switch.table.snd_rme32_proc_read.66, ptr @switch.table.snd_rme32_proc_read.67], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rme32_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fullduplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_create._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_playback_spdif_fd_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_capture_spdif_fd_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_playback_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_capture_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_playback_adat_fd_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_capture_adat_fd_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_playback_adat_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_capture_adat_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_spdif_fd_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_spdif_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_period_bytes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @period_bytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_adat_fd_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_adat_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_info_inputtype_control.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_rme32_info_clockmode_control.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme32_info_inputtype_control to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme32_get_inputtype_control to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme32_put_inputtype_control to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme32_proc_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme32_proc_read.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme32_proc_read.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_rme32_proc_read.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rme32_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rme32_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rme32_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @rme32_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !221
  %1 = load i32, ptr @snd_rme32_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_rme32_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 208, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @snd_rme32_card_free, ptr %private_free, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 8
  %card8 = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %card8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %card8, align 4
  %pci9 = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 22
  %14 = ptrtoint ptr %pci9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pci, ptr %pci9, align 4
  %15 = load i32, ptr @snd_rme32_probe.dev, align 4
  %arrayidx10 = getelementptr [32 x i8], ptr @fullduplex, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  br i1 %tobool11.not, label %if.end7.if.end13_crit_edge, label %if.then12

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 15
  %18 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %fullduplex_mode, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end7.if.end13_crit_edge
  %19 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci9, align 4
  %irq.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %irq.i, align 4
  call void @__raw_spin_lock_init(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_rme32_create.__key, i16 noundef signext 3) #10
  %call2.i = call i32 @pcim_enable_device(ptr noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end13.cleanup_crit_edge, label %if.end.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  %call3.i = call i32 @pci_request_regions(ptr noundef %20, ptr noundef nonnull @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %22 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci9, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 47
  %24 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 2
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %port.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call9.i = call ptr @devm_ioremap(ptr noundef %dev.i, i32 noundef %25, i32 noundef 196608) #10
  %iobase.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 3
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i, ptr %iobase.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i, label %do.end14.i, label %if.end18.i

do.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card8, align 4
  %dev15.i = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev15.i, align 8
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %sub.i = add i32 %33, 196607
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.8, i32 noundef %33, i32 noundef %sub.i) #13
  br label %cleanup

if.end18.i:                                       ; preds = %if.end6.i
  %irq20.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 46
  %34 = ptrtoint ptr %irq20.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq20.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev.i, i32 noundef %35, ptr noundef nonnull @snd_rme32_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool22.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not.i, label %if.end30.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card8, align 4
  %dev28.i = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev28.i, align 8
  %40 = ptrtoint ptr %irq20.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq20.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.14, i32 noundef %41) #13
  br label %cleanup

if.end30.i:                                       ; preds = %if.end18.i
  %42 = ptrtoint ptr %irq20.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq20.i, align 4
  %44 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %irq.i, align 4
  %45 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card8, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 33
  %47 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %43, ptr %sync_irq.i, align 4
  %rev.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 8
  %call35.i = call i32 @pci_read_config_byte(ptr noundef %20, i32 noundef 8, ptr noundef %rev.i) #10
  %48 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card8, align 4
  %spdif_pcm.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 20
  %call37.i = call i32 @snd_pcm_new(ptr noundef %49, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef %spdif_pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end30.i.cleanup_crit_edge, label %if.end40.i

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40.i:                                       ; preds = %if.end30.i
  %50 = ptrtoint ptr %spdif_pcm.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spdif_pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %12, ptr %private_data.i, align 8
  %53 = load ptr, ptr %spdif_pcm.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_pcm, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @snd_rme32_free_spdif_pcm, ptr %private_free.i, align 4
  %55 = load ptr, ptr %spdif_pcm.i, align 4
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %55, i32 0, i32 7
  %56 = call ptr @memcpy(ptr %name.i, ptr @.str.16, i32 14)
  %fullduplex_mode.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 15
  %57 = ptrtoint ptr %fullduplex_mode.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fullduplex_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool45.not.i = icmp eq i32 %58, 0
  %59 = ptrtoint ptr %spdif_pcm.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %spdif_pcm.i, align 4
  br i1 %tobool45.not.i, label %if.else.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_set_ops(ptr noundef %60, i32 noundef 0, ptr noundef nonnull @snd_rme32_playback_spdif_fd_ops) #10
  %61 = ptrtoint ptr %spdif_pcm.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spdif_pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %62, i32 noundef 1, ptr noundef nonnull @snd_rme32_capture_spdif_fd_ops) #10
  %63 = ptrtoint ptr %spdif_pcm.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %spdif_pcm.i, align 4
  %call50.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %64, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1048576) #10
  br label %if.end56.i

if.else.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_set_ops(ptr noundef %60, i32 noundef 0, ptr noundef nonnull @snd_rme32_playback_spdif_ops) #10
  %65 = ptrtoint ptr %spdif_pcm.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spdif_pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %66, i32 noundef 1, ptr noundef nonnull @snd_rme32_capture_spdif_ops) #10
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i, %if.then46.i
  %.sink.i = phi i32 [ 1048576, %if.else.i ], [ 2097152, %if.then46.i ]
  %67 = ptrtoint ptr %spdif_pcm.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spdif_pcm.i, align 4
  %info_flags55.i = getelementptr inbounds %struct.snd_pcm, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %info_flags55.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink.i, ptr %info_flags55.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 8
  %70 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %device.i, align 2
  %72 = and i16 %71, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26474, i16 %72)
  %switch.i = icmp eq i16 %72, -26474
  br i1 %switch.i, label %if.then63.i, label %if.else64.i

if.then63.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  %adat_pcm.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 21
  %73 = ptrtoint ptr %adat_pcm.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %adat_pcm.i, align 4
  br label %if.end95.i

if.else64.i:                                      ; preds = %if.end56.i
  %74 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card8, align 4
  %adat_pcm66.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 21
  %call67.i = call i32 @snd_pcm_new(ptr noundef %75, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef %adat_pcm66.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %cmp68.i = icmp slt i32 %call67.i, 0
  br i1 %cmp68.i, label %if.else64.i.cleanup_crit_edge, label %if.end71.i

if.else64.i.cleanup_crit_edge:                    ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end71.i:                                       ; preds = %if.else64.i
  %76 = ptrtoint ptr %adat_pcm66.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %adat_pcm66.i, align 4
  %private_data73.i = getelementptr inbounds %struct.snd_pcm, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %private_data73.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %12, ptr %private_data73.i, align 8
  %79 = load ptr, ptr %adat_pcm66.i, align 4
  %private_free75.i = getelementptr inbounds %struct.snd_pcm, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %private_free75.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @snd_rme32_free_adat_pcm, ptr %private_free75.i, align 4
  %81 = load ptr, ptr %adat_pcm66.i, align 4
  %name77.i = getelementptr inbounds %struct.snd_pcm, ptr %81, i32 0, i32 7
  %82 = call ptr @memcpy(ptr %name77.i, ptr @.str.17, i32 12)
  %83 = ptrtoint ptr %fullduplex_mode.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fullduplex_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool81.not.i = icmp eq i32 %84, 0
  %85 = ptrtoint ptr %adat_pcm66.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adat_pcm66.i, align 4
  br i1 %tobool81.not.i, label %if.else89.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_set_ops(ptr noundef %86, i32 noundef 0, ptr noundef nonnull @snd_rme32_playback_adat_fd_ops) #10
  %87 = ptrtoint ptr %adat_pcm66.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %adat_pcm66.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %88, i32 noundef 1, ptr noundef nonnull @snd_rme32_capture_adat_fd_ops) #10
  %89 = ptrtoint ptr %adat_pcm66.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adat_pcm66.i, align 4
  %call86.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %90, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 1048576) #10
  %91 = ptrtoint ptr %adat_pcm66.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adat_pcm66.i, align 4
  %info_flags88.i = getelementptr inbounds %struct.snd_pcm, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %info_flags88.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2097152, ptr %info_flags88.i, align 8
  br label %if.end95.i

if.else89.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_set_ops(ptr noundef %86, i32 noundef 0, ptr noundef nonnull @snd_rme32_playback_adat_ops) #10
  %94 = ptrtoint ptr %adat_pcm66.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adat_pcm66.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %95, i32 noundef 1, ptr noundef nonnull @snd_rme32_capture_adat_ops) #10
  %96 = ptrtoint ptr %adat_pcm66.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adat_pcm66.i, align 4
  %info_flags93.i = getelementptr inbounds %struct.snd_pcm, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %info_flags93.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1048576, ptr %info_flags93.i, align 8
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.else89.i, %if.then82.i, %if.then63.i
  %playback_periodsize.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 13
  %99 = ptrtoint ptr %playback_periodsize.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %playback_periodsize.i, align 4
  %capture_periodsize.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 14
  %100 = ptrtoint ptr %capture_periodsize.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %capture_periodsize.i, align 4
  call fastcc void @snd_rme32_pcm_stop(ptr noundef %12, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  call void @arm_heavy_mb() #10
  %wcreg.i.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 4
  %101 = ptrtoint ptr %wcreg.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %wcreg.i.i, align 4
  %or.i.i = or i32 %102, 16384
  %103 = call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %104 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %105, i32 131072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %103) #10, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  call void @arm_heavy_mb() #10
  %106 = ptrtoint ptr %wcreg.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %wcreg.i.i, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #10
  %109 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %iobase.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %110, i32 131072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %108) #10, !srcloc !224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  call void @arm_heavy_mb() #10
  %111 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %112, i32 131328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !224
  %113 = ptrtoint ptr %wcreg.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 584, ptr %wcreg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  call void @arm_heavy_mb() #10
  %114 = ptrtoint ptr %wcreg.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %wcreg.i.i, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115) #10
  %117 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %iobase.i, align 4
  %add.ptr105.i = getelementptr i8, ptr %118, i32 131072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 %116) #10, !srcloc !224
  %119 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %card8, align 4
  %spdif_ctl.i.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 23
  %call.i189.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_rme32_controls, ptr noundef %12) #10
  %call1.i.i = call i32 @snd_ctl_add(ptr noundef %120, ptr noundef %call.i189.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end95.i.cleanup_crit_edge, label %for.inc.i.i

if.end95.i.cleanup_crit_edge:                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.i:                                      ; preds = %if.end95.i
  %call.1.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_rme32_controls, i32 0, i32 1), ptr noundef %12) #10
  %call1.1.i.i = call i32 @snd_ctl_add(ptr noundef %120, ptr noundef %call.1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp slt i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.1.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %121 = ptrtoint ptr %spdif_ctl.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.1.i.i, ptr %spdif_ctl.i.i, align 4
  %call.2.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_rme32_controls, i32 0, i32 2), ptr noundef %12) #10
  %call1.2.i.i = call i32 @snd_ctl_add(ptr noundef %120, ptr noundef %call.2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp slt i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.inc.1.i.i.cleanup_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.cleanup_crit_edge:                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %call.3.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_rme32_controls, i32 0, i32 3), ptr noundef %12) #10
  %call1.3.i.i = call i32 @snd_ctl_add(ptr noundef %120, ptr noundef %call.3.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i.i)
  %cmp2.3.i.i = icmp slt i32 %call1.3.i.i, 0
  br i1 %cmp2.3.i.i, label %for.inc.2.i.i.cleanup_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.cleanup_crit_edge:                  ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %call.4.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_rme32_controls, i32 0, i32 4), ptr noundef %12) #10
  %call1.4.i.i = call i32 @snd_ctl_add(ptr noundef %120, ptr noundef %call.4.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4.i.i)
  %cmp2.4.i.i = icmp slt i32 %call1.4.i.i, 0
  br i1 %cmp2.4.i.i, label %for.inc.3.i.i.cleanup_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.cleanup_crit_edge:                  ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %call.5.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_rme32_controls, i32 0, i32 5), ptr noundef %12) #10
  %call1.5.i.i = call i32 @snd_ctl_add(ptr noundef %120, ptr noundef %call.5.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5.i.i)
  %cmp2.5.i.i = icmp slt i32 %call1.5.i.i, 0
  br i1 %cmp2.5.i.i, label %for.inc.4.i.i.cleanup_crit_edge, label %snd_rme32_create_switches.exit.i

for.inc.4.i.i.cleanup_crit_edge:                  ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

snd_rme32_create_switches.exit.i:                 ; preds = %for.inc.4.i.i
  %call.6.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_rme32_controls, i32 0, i32 6), ptr noundef %12) #10
  %call1.6.i.i = call i32 @snd_ctl_add(ptr noundef %120, ptr noundef %call.6.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6.i.i)
  %cmp108.i = icmp slt i32 %call1.6.i.i, 0
  br i1 %cmp108.i, label %snd_rme32_create_switches.exit.i.cleanup_crit_edge, label %snd_rme32_create.exit.thread59

snd_rme32_create_switches.exit.i.cleanup_crit_edge: ; preds = %snd_rme32_create_switches.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

snd_rme32_create.exit.thread59:                   ; preds = %snd_rme32_create_switches.exit.i
  %122 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %card8, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %123, ptr noundef nonnull @.str.34, ptr noundef %12, ptr noundef nonnull @snd_rme32_proc_read, ptr noundef null) #10
  %capture_substream.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 10
  %124 = ptrtoint ptr %capture_substream.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %capture_substream.i, align 4
  %playback_substream.i = getelementptr inbounds %struct.rme32, ptr %12, i32 0, i32 9
  %125 = ptrtoint ptr %playback_substream.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %playback_substream.i, align 4
  %126 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %127, i32 0, i32 2
  %128 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 7)
  %129 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pci9, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 8
  %131 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %device, align 2
  %133 = zext i16 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values)
  switch i16 %132, label %snd_rme32_create.exit.thread59.sw.epilog_crit_edge [
    i16 -26474, label %sw.bb
    i16 -26472, label %sw.bb22
    i16 -26473, label %sw.bb26
  ]

snd_rme32_create.exit.thread59.sw.epilog_crit_edge: ; preds = %snd_rme32_create.exit.thread59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %snd_rme32_create.exit.thread59
  call void @__sanitizer_cov_trace_pc() #12
  %shortname = getelementptr inbounds %struct.snd_card, ptr %127, i32 0, i32 3
  %134 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 11)
  br label %sw.epilog

sw.bb22:                                          ; preds = %snd_rme32_create.exit.thread59
  call void @__sanitizer_cov_trace_pc() #12
  %shortname23 = getelementptr inbounds %struct.snd_card, ptr %127, i32 0, i32 3
  %135 = call ptr @memcpy(ptr %shortname23, ptr @.str.3, i32 13)
  br label %sw.epilog

sw.bb26:                                          ; preds = %snd_rme32_create.exit.thread59
  call void @__sanitizer_cov_trace_pc() #12
  %shortname27 = getelementptr inbounds %struct.snd_card, ptr %127, i32 0, i32 3
  %136 = call ptr @memcpy(ptr %shortname27, ptr @.str.4, i32 15)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb22, %sw.bb, %snd_rme32_create.exit.thread59.sw.epilog_crit_edge
  %longname = getelementptr inbounds %struct.snd_card, ptr %127, i32 0, i32 4
  %shortname31 = getelementptr inbounds %struct.snd_card, ptr %127, i32 0, i32 3
  %137 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %rev.i, align 4
  %conv33 = zext i8 %138 to i32
  %139 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %port.i, align 4
  %141 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %irq.i, align 4
  %call34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.5, ptr noundef %shortname31, i32 noundef %conv33, i32 noundef %140, i32 noundef %142)
  %143 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %card, align 4
  %call35 = call i32 @snd_card_register(ptr noundef %144) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %sw.epilog.cleanup_crit_edge, label %if.end39

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %147 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %146, ptr %driver_data.i.i, align 4
  %148 = load i32, ptr @snd_rme32_probe.dev, align 4
  %inc40 = add i32 %148, 1
  store i32 %inc40, ptr @snd_rme32_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %sw.epilog.cleanup_crit_edge, %snd_rme32_create_switches.exit.i.cleanup_crit_edge, %for.inc.4.i.i.cleanup_crit_edge, %for.inc.3.i.i.cleanup_crit_edge, %for.inc.2.i.i.cleanup_crit_edge, %for.inc.1.i.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.end95.i.cleanup_crit_edge, %if.else64.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %do.end26.i, %do.end14.i, %if.end.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call35, %sw.epilog.cleanup_crit_edge ], [ %call1.i.i, %if.end95.i.cleanup_crit_edge ], [ %call1.1.i.i, %for.inc.i.i.cleanup_crit_edge ], [ %call1.2.i.i, %for.inc.1.i.i.cleanup_crit_edge ], [ %call1.3.i.i, %for.inc.2.i.i.cleanup_crit_edge ], [ %call1.4.i.i, %for.inc.3.i.i.cleanup_crit_edge ], [ %call1.5.i.i, %for.inc.4.i.i.cleanup_crit_edge ], [ %call67.i, %if.else64.i.cleanup_crit_edge ], [ %call37.i, %if.end30.i.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ], [ %call2.i, %if.end13.cleanup_crit_edge ], [ -12, %do.end14.i ], [ -16, %do.end26.i ], [ %call1.6.i.i, %snd_rme32_create_switches.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_rme32_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %irq.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %entry.snd_rme32_free.exit_crit_edge

entry.snd_rme32_free.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_rme32_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_rme32_pcm_stop(ptr noundef %1, i32 noundef 0) #10
  br label %snd_rme32_free.exit

snd_rme32_free.exit:                              ; preds = %if.then.i, %entry.snd_rme32_free.exit_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_rme32_pcm_stop(ptr nocapture noundef %rme32, i32 noundef %to_pause) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.rme32, ptr %rme32, i32 0, i32 3
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 131072
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !228
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %rcreg = getelementptr inbounds %struct.rme32, ptr %rme32, i32 0, i32 7
  %4 = ptrtoint ptr %rcreg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rcreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #10, !srcloc !224
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %wcreg = getelementptr inbounds %struct.rme32, ptr %rme32, i32 0, i32 4
  %7 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wcreg, align 4
  %and5 = and i32 %8, -2
  %and7 = shl i32 %8, 6
  %9 = and i32 %and7, 512
  %10 = or i32 %9, %and5
  store i32 %10, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcreg, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %13) #10, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_pause)
  %tobool17.not = icmp eq i32 %to_pause, 0
  br i1 %tobool17.not, label %do.body19, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 131328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #10, !srcloc !224
  br label %if.end23

if.end23:                                         ; preds = %do.body19, %if.end.if.end23_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_interrupt(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.rme32, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 131072
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !228
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %rcreg = getelementptr inbounds %struct.rme32, ptr %dev_id, i32 0, i32 7
  %4 = ptrtoint ptr %rcreg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rcreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %capture_substream = getelementptr inbounds %struct.rme32, ptr %dev_id, i32 0, i32 10
  %5 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %capture_substream, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.else.if.end_crit_edge, label %if.then4

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %6) #10
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else.if.end_crit_edge
  %playback_substream = getelementptr inbounds %struct.rme32, ptr %dev_id, i32 0, i32 9
  %7 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %playback_substream, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end.do.body_crit_edge, label %if.then7

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %8) #10
  br label %do.body

do.body:                                          ; preds = %if.then7, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #10, !srcloc !224
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_rme32_free_spdif_pcm(ptr nocapture noundef readonly %pcm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %spdif_pcm = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %spdif_pcm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %spdif_pcm, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_rme32_free_adat_pcm(ptr nocapture noundef readonly %pcm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %adat_pcm = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 21
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
define internal i32 @snd_rme32_playback_spdif_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %playback_substream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback_substream, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %wcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wcreg, align 4
  %and = and i32 %7, -4097
  store i32 %and, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wcreg, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #10, !srcloc !224
  %13 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %substream, ptr %playback_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %hw7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call ptr @memcpy(ptr %hw7, ptr @snd_rme32_spdif_fd_info, i32 64)
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = call ptr @memcpy(ptr %hw7, ptr @snd_rme32_spdif_info, i32 64)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %pci = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 22
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %21)
  %cmp9 = icmp eq i16 %21, -26473
  br i1 %cmp9, label %if.then11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %22 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rates, align 8
  %or = or i32 %23, 1792
  store i32 %or, ptr %rates, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %24 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 96000, ptr %rate_max, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %rcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %rcreg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rcreg, align 4
  %27 = and i32 %26, 1140850688
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %27)
  %28 = icmp eq i32 %27, 1073741824
  br i1 %28, label %if.end5.i, label %if.end14.if.end28_crit_edge

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end5.i:                                        ; preds = %if.end14
  %shr.i = lshr i32 %26, 27
  %add15.i = and i32 %shr.i, 7
  %29 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %32)
  %cmp.i = icmp eq i16 %32, -26473
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %rev.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %34)
  %cmp18.i = icmp eq i8 %34, -106
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  %35 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %add15.i, label %if.then20.unreachabledefault.i [
    i32 0, label %if.then20.i.if.end28_crit_edge
    i32 1, label %if.then20.i.if.end28_crit_edge67
    i32 2, label %if.then20.i.if.end28_crit_edge68
    i32 3, label %if.then20.i.if.then21_crit_edge
    i32 4, label %sw.bb22.i
    i32 5, label %sw.bb23.i
    i32 6, label %sw.bb24.i
    i32 7, label %sw.bb25.i
  ]

if.then20.i.if.then21_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then20.i.if.end28_crit_edge68:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then20.i.if.end28_crit_edge67:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then20.i.if.end28_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

sw.bb22.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sw.bb23.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sw.bb24.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sw.bb25.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then20.unreachabledefault.i:                   ; preds = %if.then20.i
  unreachable

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  %36 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %add15.i, label %if.else.unreachabledefault.i [
    i32 0, label %if.else.i.if.end28_crit_edge
    i32 1, label %if.else.i.if.then21_crit_edge
    i32 2, label %sw.bb28.i
    i32 3, label %sw.bb29.i
    i32 4, label %if.else.i.if.then21_crit_edge69
    i32 5, label %sw.bb31.i
    i32 6, label %sw.bb32.i
    i32 7, label %sw.bb33.i
  ]

if.else.i.if.then21_crit_edge69:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.else.i.if.then21_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.else.i.if.end28_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

sw.bb28.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sw.bb29.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sw.bb31.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sw.bb32.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sw.bb33.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.else.unreachabledefault.i:                     ; preds = %if.else.i
  unreachable

if.then21:                                        ; preds = %sw.bb33.i, %sw.bb32.i, %sw.bb31.i, %sw.bb29.i, %sw.bb28.i, %if.else.i.if.then21_crit_edge, %if.else.i.if.then21_crit_edge69, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %if.then20.i.if.then21_crit_edge
  %rate.0.ph = phi i32 [ 44100, %sw.bb28.i ], [ 32000, %sw.bb29.i ], [ 44100, %sw.bb31.i ], [ 44056, %sw.bb32.i ], [ 32000, %sw.bb33.i ], [ 88200, %sw.bb22.i ], [ 48000, %sw.bb23.i ], [ 44100, %sw.bb24.i ], [ 32000, %sw.bb25.i ], [ 96000, %if.then20.i.if.then21_crit_edge ], [ 48000, %if.else.i.if.then21_crit_edge ], [ 48000, %if.else.i.if.then21_crit_edge69 ]
  %call22 = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %rate.0.ph) #10
  %rates24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %37 = ptrtoint ptr %rates24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call22, ptr %rates24, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %38 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %rate.0.ph, ptr %rate_min, align 4
  %rate_max27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %39 = ptrtoint ptr %rate_max27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %rate.0.ph, ptr %rate_max27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.else.i.if.end28_crit_edge, %if.then20.i.if.end28_crit_edge, %if.then20.i.if.end28_crit_edge67, %if.then20.i.if.end28_crit_edge68, %if.end14.if.end28_crit_edge
  %40 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end28.snd_rme32_set_buffer_constraint.exit_crit_edge

if.end28.snd_rme32_set_buffer_constraint.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_rme32_set_buffer_constraint.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 131072, i32 noundef 131072) #10
  %call1.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_period_bytes) #10
  br label %snd_rme32_set_buffer_constraint.exit

snd_rme32_set_buffer_constraint.exit:             ; preds = %if.then.i, %if.end28.snd_rme32_set_buffer_constraint.exit_crit_edge
  %wcreg_spdif = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %wcreg_spdif to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wcreg_spdif, align 4
  %wcreg_spdif_stream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %wcreg_spdif_stream to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %wcreg_spdif_stream, align 4
  %spdif_ctl = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 23
  %45 = ptrtoint ptr %spdif_ctl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spdif_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %46, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %access, align 4
  %and29 = and i32 %48, -257
  store i32 %and29, ptr %access, align 4
  %card = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 19
  %49 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card, align 4
  %51 = load ptr, ptr %spdif_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %51, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %50, i32 noundef 3, ptr noundef %id) #10
  br label %cleanup

cleanup:                                          ; preds = %snd_rme32_set_buffer_constraint.exit, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %snd_rme32_set_buffer_constraint.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %playback_substream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %playback_substream, align 4
  %playback_periodsize = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %playback_periodsize to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %playback_periodsize, align 4
  %wcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcreg, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spdif_ctl = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %spdif_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spdif_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %access, align 4
  %or = or i32 %9, 256
  store i32 %or, ptr %access, align 4
  %card = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %12 = load ptr, ptr %spdif_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %12, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %11, i32 noundef 3, ptr noundef %id) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_playback_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %8 = ptrtoint ptr %dma_area to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dma_area, align 4
  %port = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 51
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dma_addr, align 8
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 52
  %12 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 131072, ptr %dma_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %rcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %rcreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rcreg, align 4
  %15 = and i32 %14, 1140850688
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %15)
  %16 = icmp eq i32 %15, 1073741824
  br i1 %16, label %if.end5.i, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end5.i:                                        ; preds = %if.end
  %shr.i = lshr i32 %14, 27
  %add15.i = and i32 %shr.i, 7
  %pci.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %20)
  %cmp.i = icmp eq i16 %20, -26473
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %rev.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %22)
  %cmp18.i = icmp eq i8 %22, -106
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  %23 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %add15.i, label %if.then20.unreachabledefault.i [
    i32 0, label %if.then20.i.if.else_crit_edge
    i32 1, label %if.then20.i.if.else_crit_edge103
    i32 2, label %if.then20.i.if.else_crit_edge104
    i32 3, label %if.then20.i.if.then5_crit_edge
    i32 4, label %sw.bb22.i
    i32 5, label %sw.bb23.i
    i32 6, label %sw.bb24.i
    i32 7, label %sw.bb25.i
  ]

if.then20.i.if.then5_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then20.i.if.else_crit_edge104:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then20.i.if.else_crit_edge103:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then20.i.if.else_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sw.bb22.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

sw.bb23.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

sw.bb24.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

sw.bb25.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then20.unreachabledefault.i:                   ; preds = %if.then20.i
  unreachable

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  %24 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %add15.i, label %if.else.unreachabledefault.i [
    i32 0, label %if.else.i.if.else_crit_edge
    i32 1, label %if.else.i.if.then5_crit_edge
    i32 2, label %sw.bb28.i
    i32 3, label %sw.bb29.i
    i32 4, label %if.else.i.if.then5_crit_edge105
    i32 5, label %sw.bb31.i
    i32 6, label %sw.bb32.i
    i32 7, label %sw.bb33.i
  ]

if.else.i.if.then5_crit_edge105:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.else.i.if.then5_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.else.i.if.else_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sw.bb28.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

sw.bb29.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

sw.bb31.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

sw.bb32.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

sw.bb33.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.else.unreachabledefault.i:                     ; preds = %if.else.i
  unreachable

if.then5:                                         ; preds = %sw.bb33.i, %sw.bb32.i, %sw.bb31.i, %sw.bb29.i, %sw.bb28.i, %if.else.i.if.then5_crit_edge, %if.else.i.if.then5_crit_edge105, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %if.then20.i.if.then5_crit_edge
  %rate.0.ph = phi i32 [ 44100, %sw.bb28.i ], [ 32000, %sw.bb29.i ], [ 44100, %sw.bb31.i ], [ 44056, %sw.bb32.i ], [ 32000, %sw.bb33.i ], [ 88200, %sw.bb22.i ], [ 48000, %sw.bb23.i ], [ 44100, %sw.bb24.i ], [ 32000, %sw.bb25.i ], [ 96000, %if.then20.i.if.then5_crit_edge ], [ 48000, %if.else.i.if.then5_crit_edge ], [ 48000, %if.else.i.if.then5_crit_edge105 ]
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %rate.0.ph)
  %cmp7.not = icmp eq i32 %26, %rate.0.ph
  br i1 %cmp7.not, label %if.then5.if.end17_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.else:                                          ; preds = %if.else.i.if.else_crit_edge, %if.then20.i.if.else_crit_edge, %if.then20.i.if.else_crit_edge103, %if.then20.i.if.else_crit_edge104, %if.end.if.else_crit_edge
  %arrayidx.i.i88 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i88, align 4
  %call12 = tail call fastcc i32 @snd_rme32_playback_setrate(ptr noundef %1, i32 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.else.cleanup_crit_edge, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.then5.if.end17_crit_edge
  %arrayidx.i.i89 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx.i.i89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end17.params_format.exit_crit_edge

if.end17.params_format.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end17
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.1.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end17.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end17.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %30, %if.end17.params_format.exit_crit_edge ], [ %32, %for.inc.i.i.params_format.exit_crit_edge ]
  %33 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #10, !range !236
  %add.i.i = or i32 %33, %i.09.lcssa.i.i
  %34 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 10, label %sw.bb1.i
  ]

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wcreg.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wcreg.i, align 4
  %and.i90 = and i32 %36, -5
  store i32 %and.i90, ptr %wcreg.i, align 4
  br label %if.end23

sw.bb1.i:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wcreg2.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %wcreg2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wcreg2.i, align 4
  %or.i = or i32 %38, 4
  store i32 %or.i, ptr %wcreg2.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %sw.bb1.i, %sw.bb.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  %wcreg3.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wcreg3.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  %iobase.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %41) #10, !srcloc !224
  %arrayidx.i.i92 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i93 = icmp eq i32 %45, 2
  %..i = select i1 %cmp.i93, i32 1, i32 3
  %46 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wcreg3.i, align 4
  %and5.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %cond7.i = select i1 %tobool6.not.i, i32 1, i32 2
  %add8.i = add nuw nsw i32 %cond7.i, %..i
  %playback_frlog.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 11
  %48 = ptrtoint ptr %playback_frlog.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add8.i, ptr %playback_frlog.i, align 4
  %capture_periodsize = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 14
  %49 = ptrtoint ptr %capture_periodsize to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %capture_periodsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp25.not = icmp eq i32 %50, 0
  br i1 %cmp25.not, label %if.end23.if.end33_crit_edge, label %if.then26

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then26:                                        ; preds = %if.end23
  %arrayidx.i.i94 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %51 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i94, align 4
  %shl = shl i32 %52, %add8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %50)
  %cmp29.not = icmp eq i32 %shl, %50
  br i1 %cmp29.not, label %if.then26.if.end33_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %if.then26.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  %arrayidx.i.i95 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %53 = ptrtoint ptr %arrayidx.i.i95 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i95, align 4
  %shl36 = shl i32 %54, %add8.i
  %playback_periodsize = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 13
  %55 = ptrtoint ptr %playback_periodsize to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shl36, ptr %playback_periodsize, align 4
  %and37 = and i32 %47, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then39, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %and41 = and i32 %47, -33793
  %wcreg_spdif_stream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %wcreg_spdif_stream to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wcreg_spdif_stream, align 4
  %or = or i32 %57, %and41
  %58 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or, ptr %wcreg3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %59 = ptrtoint ptr %wcreg3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wcreg3.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %62 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iobase.i, align 4
  %add.ptr45 = getelementptr i8, ptr %63, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %61) #10, !srcloc !224
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end33.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then5.cleanup_crit_edge ], [ %call12, %if.else.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -16, %if.then26.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.end33.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %playback_pcm = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17
  %4 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 1
  %5 = call ptr @memset(ptr %4, i32 0, i32 36)
  %6 = ptrtoint ptr %playback_pcm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 131072, ptr %playback_pcm, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %7 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime1.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 21
  %11 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %12, %10
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_buffer_size = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 5
  %13 = ptrtoint ptr %sw_buffer_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div1.i.i, ptr %sw_buffer_size, align 4
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 131328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !224
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then
  %wcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wcreg, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.do.body8_crit_edge, label %if.then4

if.end.do.body8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and6 = and i32 %17, -513
  %18 = ptrtoint ptr %wcreg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and6, ptr %wcreg, align 4
  br label %do.body8

do.body8:                                         ; preds = %if.then4, %if.end.do.body8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wcreg, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %iobase12 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %iobase12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iobase12, align 4
  %add.ptr13 = getelementptr i8, ptr %23, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %21) #10, !srcloc !224
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_pcm_trigger(ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn109 = load ptr, ptr %substreams, align 4
  %cmp.not112 = icmp eq ptr %.pn109, %substreams
  br i1 %cmp.not112, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %playback_substream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 9
  %capture_substream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 10
  %running19 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 16
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 15
  %iobase.i98 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %hw_data11 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 2
  %hw_io13 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 3
  %hw_data = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 2
  %hw_io = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn113 = phi ptr [ %.pn109, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %s.0114 = getelementptr i8, ptr %.pn113, i32 -140
  %5 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %playback_substream, align 4
  %cmp3.not = icmp eq ptr %s.0114, %6
  br i1 %cmp3.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %capture_substream, align 4
  %cmp4.not = icmp eq ptr %s.0114, %8
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb16
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %stream = getelementptr i8, ptr %.pn113, i32 -92
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %11
  %12 = ptrtoint ptr %running19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %running19, align 4
  %or = or i32 %13, %shl
  store i32 %or, ptr %running19, align 4
  %14 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then5

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb
  %16 = ptrtoint ptr %iobase.i98 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i98, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 131072
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %19 = and i32 %18, -65280
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  br i1 %cmp3.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %hw_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %hw_data, align 4
  %22 = ptrtoint ptr %hw_io to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %hw_io, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %hw_data11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %hw_data11, align 4
  %24 = ptrtoint ptr %hw_io13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %hw_io13, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stream17 = getelementptr i8, ptr %.pn113, i32 -92
  %25 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stream17, align 4
  %shl18 = shl nuw i32 1, %26
  %neg = xor i32 %shl18, -1
  %27 = ptrtoint ptr %running19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %running19, align 4
  %and = and i32 %28, %neg
  store i32 %and, ptr %running19, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %if.else, %if.then8, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %runtime.i = getelementptr i8, ptr %.pn113, i32 -20
  %29 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %runtime.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %substream, ptr %30, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %land.lhs.true.for.inc_crit_edge
  %32 = ptrtoint ptr %.pn113 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn113, align 4
  %33 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %group, align 4
  %substreams2 = getelementptr inbounds %struct.snd_pcm_group, ptr %34, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %35 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %cmd, label %for.end.sw.epilog60_crit_edge [
    i32 1, label %sw.bb25
    i32 0, label %sw.bb33
    i32 3, label %sw.bb42
    i32 4, label %sw.bb51
  ]

for.end.sw.epilog60_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

sw.bb25:                                          ; preds = %for.end
  %running26 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %running26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %running26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool27.not = icmp eq i32 %37, 0
  br i1 %tobool27.not, label %sw.bb25.sw.epilog60_crit_edge, label %land.lhs.true28

sw.bb25.sw.epilog60_crit_edge:                    ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

land.lhs.true28:                                  ; preds = %sw.bb25
  %wcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wcreg, align 4
  %and29 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then31, label %land.lhs.true28.sw.epilog60_crit_edge

land.lhs.true28.sw.epilog60_crit_edge:            ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @arm_heavy_mb() #10
  %iobase.i100 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %iobase.i100 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %41, i32 131328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 0) #10, !srcloc !224
  %42 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wcreg, align 4
  %or.i = or i32 %43, 1
  store i32 %or.i, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wcreg, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  %47 = ptrtoint ptr %iobase.i100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i100, align 4
  %add.ptr5.i = getelementptr i8, ptr %48, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %46) #10, !srcloc !224
  br label %sw.epilog60

sw.bb33:                                          ; preds = %for.end
  %running34 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 16
  %49 = ptrtoint ptr %running34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %running34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool35.not = icmp eq i32 %50, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %sw.bb33.sw.epilog60_crit_edge

sw.bb33.sw.epilog60_crit_edge:                    ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

land.lhs.true36:                                  ; preds = %sw.bb33
  %wcreg37 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %wcreg37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wcreg37, align 4
  %and38 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %land.lhs.true36.sw.epilog60_crit_edge, label %if.then40

land.lhs.true36.sw.epilog60_crit_edge:            ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

if.then40:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_rme32_pcm_stop(ptr noundef %1, i32 noundef 0)
  br label %sw.epilog60

sw.bb42:                                          ; preds = %for.end
  %running43 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 16
  %53 = ptrtoint ptr %running43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %running43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool44.not = icmp eq i32 %54, 0
  br i1 %tobool44.not, label %sw.bb42.sw.epilog60_crit_edge, label %land.lhs.true45

sw.bb42.sw.epilog60_crit_edge:                    ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

land.lhs.true45:                                  ; preds = %sw.bb42
  %wcreg46 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %wcreg46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wcreg46, align 4
  %and47 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %land.lhs.true45.sw.epilog60_crit_edge, label %if.then49

land.lhs.true45.sw.epilog60_crit_edge:            ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

if.then49:                                        ; preds = %land.lhs.true45
  %iobase.i102 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %iobase.i102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iobase.i102, align 4
  %add.ptr.i103 = getelementptr i8, ptr %58, i32 131072
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #10, !srcloc !228
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %rcreg.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 7
  %61 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %rcreg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %tobool.not.i = icmp sgt i32 %60, -1
  br i1 %tobool.not.i, label %if.then49.snd_rme32_pcm_stop.exit_crit_edge, label %do.body.i

if.then49.snd_rme32_pcm_stop.exit_crit_edge:      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_rme32_pcm_stop.exit

do.body.i:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %iobase.i102 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iobase.i102, align 4
  %add.ptr4.i = getelementptr i8, ptr %63, i32 131076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #10, !srcloc !224
  br label %snd_rme32_pcm_stop.exit

snd_rme32_pcm_stop.exit:                          ; preds = %do.body.i, %if.then49.snd_rme32_pcm_stop.exit_crit_edge
  %64 = ptrtoint ptr %wcreg46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wcreg46, align 4
  %and5.i = and i32 %65, -2
  %and7.i = shl i32 %65, 6
  %66 = and i32 %and7.i, 512
  %67 = or i32 %66, %and5.i
  store i32 %67, ptr %wcreg46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %wcreg46 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wcreg46, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #10
  %71 = ptrtoint ptr %iobase.i102 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iobase.i102, align 4
  %add.ptr16.i = getelementptr i8, ptr %72, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %70) #10, !srcloc !224
  br label %sw.epilog60

sw.bb51:                                          ; preds = %for.end
  %running52 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 16
  %73 = ptrtoint ptr %running52 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %running52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool53.not = icmp eq i32 %74, 0
  br i1 %tobool53.not, label %sw.bb51.sw.epilog60_crit_edge, label %land.lhs.true54

sw.bb51.sw.epilog60_crit_edge:                    ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

land.lhs.true54:                                  ; preds = %sw.bb51
  %wcreg55 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %75 = ptrtoint ptr %wcreg55 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wcreg55, align 4
  %and56 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then58, label %land.lhs.true54.sw.epilog60_crit_edge

land.lhs.true54.sw.epilog60_crit_edge:            ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

if.then58:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  %or.i106 = or i32 %76, 1
  %77 = ptrtoint ptr %wcreg55 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or.i106, ptr %wcreg55, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %78 = ptrtoint ptr %wcreg55 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wcreg55, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #10
  %iobase4.i107 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %81 = ptrtoint ptr %iobase4.i107 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %iobase4.i107, align 4
  %add.ptr5.i108 = getelementptr i8, ptr %82, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i108, i32 %80) #10, !srcloc !224
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %if.then58, %land.lhs.true54.sw.epilog60_crit_edge, %sw.bb51.sw.epilog60_crit_edge, %snd_rme32_pcm_stop.exit, %land.lhs.true45.sw.epilog60_crit_edge, %sw.bb42.sw.epilog60_crit_edge, %if.then40, %land.lhs.true36.sw.epilog60_crit_edge, %sw.bb33.sw.epilog60_crit_edge, %if.then31, %land.lhs.true28.sw.epilog60_crit_edge, %sw.bb25.sw.epilog60_crit_edge, %for.end.sw.epilog60_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_playback_fd_pointer(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 131072
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %5 = and i32 %4, -65280
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %hw_io.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 3
  %7 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_io.i, align 4
  %sub.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %playback_pcm = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %playback_pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %playback_pcm, align 4
  %add.i = add i32 %10, %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %bytes.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i, %entry.if.end.i_crit_edge ]
  %11 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %hw_io.i, align 4
  %hw_ready.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 4
  %12 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_ready.i, align 4
  %sub2.i = sub i32 %13, %bytes.0.i
  store i32 %sub2.i, ptr %hw_ready.i, align 4
  %sw_io.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 7
  %14 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sw_io.i, align 4
  %add3.i = add i32 %15, %bytes.0.i
  store i32 %add3.i, ptr %sw_io.i, align 4
  %sw_buffer_size.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 5
  %16 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %17)
  %cmp5.not.i = icmp ult i32 %add3.i, %17
  br i1 %cmp5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub9.i = sub i32 %add3.i, %17
  %18 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub9.i, ptr %sw_io.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %ops.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %ack.i = getelementptr inbounds %struct.snd_pcm_ops, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ack.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge, label %if.then11.i

if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_playback_pointer.exit

if.then11.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %22(ptr noundef %substream) #10
  br label %snd_pcm_indirect_playback_pointer.exit

snd_pcm_indirect_playback_pointer.exit:           ; preds = %if.then11.i, %if.end10.i.snd_pcm_indirect_playback_pointer.exit_crit_edge
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %23 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime.i, align 4
  %25 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sw_io.i, align 4
  %mul.i.i = shl i32 %26, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 21
  %27 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %28
  ret i32 %div.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_playback_fd_ack(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %hw_queue_size = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %hw_queue_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 131072, ptr %hw_queue_size, align 4
  %running = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %running, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hw_ready = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 4
  %5 = ptrtoint ptr %hw_ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_ready, align 4
  %sub = sub i32 131072, %6
  %7 = ptrtoint ptr %hw_queue_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %hw_queue_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %playback_pcm = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i, align 4
  %control.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 38
  %10 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %control.i, align 8
  %appl_ptr2.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %appl_ptr2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %appl_ptr2.i, align 4
  %appl_ptr3.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 9
  %14 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %appl_ptr3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %tobool.not.i = icmp eq i32 %13, %15
  br i1 %tobool.not.i, label %if.end.if.end12.i_crit_edge, label %if.then.i

if.end.if.end12.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then.i:                                        ; preds = %if.end
  %sub.i = sub i32 %13, %15
  %boundary.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 33
  %16 = ptrtoint ptr %boundary.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %boundary.i, align 8
  %div1.i = lshr i32 %17, 1
  %sub4.i = sub nsw i32 0, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub4.i)
  %cmp.i = icmp slt i32 %sub.i, %sub4.i
  %add.i = select i1 %cmp.i, i32 %17, i32 0
  %spec.select.i = add i32 %add.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp7.i = icmp slt i32 %spec.select.i, 0
  br i1 %cmp7.i, label %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, label %if.end9.i

if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_playback_transfer.exit

if.end9.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %18 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %19, %spec.select.i
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_ready.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 8
  %20 = ptrtoint ptr %sw_ready.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sw_ready.i, align 4
  %add10.i = add i32 %div1.i.i, %21
  store i32 %add10.i, ptr %sw_ready.i, align 4
  %22 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %13, ptr %appl_ptr3.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end9.i, %if.end.if.end12.i_crit_edge
  %23 = ptrtoint ptr %hw_queue_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_queue_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not.i = icmp eq i32 %24, 0
  br i1 %tobool13.not.i, label %cond.false.i, label %if.end12.i.cond.end.i_crit_edge

if.end12.i.cond.end.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %playback_pcm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %playback_pcm, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end12.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %26, %cond.false.i ], [ %24, %if.end12.i.cond.end.i_crit_edge ]
  %sw_ready16.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 8
  %hw_ready.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 4
  %27 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_ready.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %28)
  %cmp156.i = icmp sgt i32 %cond.i, %28
  br i1 %cmp156.i, label %land.rhs.lr.ph.i, label %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_playback_transfer.exit

land.rhs.lr.ph.i:                                 ; preds = %cond.end.i
  %hw_data.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 2
  %sw_buffer_size.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 5
  %sw_data.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 17, i32 6
  %29 = ptrtoint ptr %sw_ready16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr.i = load i32, ptr %sw_ready16.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %30 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %sub56.i, %cleanup.i.land.rhs.i_crit_edge ]
  %31 = phi i32 [ %28, %land.rhs.lr.ph.i ], [ %add54.i, %cleanup.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp17.i = icmp sgt i32 %30, 0
  br i1 %cmp17.i, label %while.body.i, label %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_playback_transfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %32 = ptrtoint ptr %playback_pcm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %playback_pcm, align 4
  %34 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw_data.i, align 4
  %sub19.i = sub i32 %33, %35
  %36 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sw_buffer_size.i, align 4
  %38 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sw_data.i, align 4
  %sub20.i = sub i32 %37, %39
  %sub22.i = sub i32 %cond.i, %31
  %40 = tail call i32 @llvm.smin.i32(i32 %30, i32 %sub22.i) #10
  %41 = tail call i32 @llvm.umin.i32(i32 %sub19.i, i32 %40) #10
  %42 = tail call i32 @llvm.umin.i32(i32 %sub20.i, i32 %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool34.not.i = icmp eq i32 %42, 0
  br i1 %tobool34.not.i, label %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, label %cleanup.i

while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_playback_transfer.exit

cleanup.i:                                        ; preds = %while.body.i
  %43 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private_data, align 4
  %iobase.i.i = getelementptr inbounds %struct.rme32, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %46, i32 %35
  %47 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %runtime1.i, align 4
  %dma_area.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %48, i32 0, i32 50
  %49 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_area.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %50, i32 %39
  tail call void @mmiocpy(ptr noundef %add.ptr1.i.i, ptr noundef %add.ptr2.i.i, i32 noundef %42) #10
  %51 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hw_data.i, align 4
  %add38.i = add i32 %52, %42
  %53 = ptrtoint ptr %playback_pcm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %playback_pcm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i, i32 %54)
  %cmp41.i = icmp eq i32 %add38.i, %54
  %spec.store.select.i = select i1 %cmp41.i, i32 0, i32 %add38.i
  %55 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.store.select.i, ptr %hw_data.i, align 4
  %56 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sw_data.i, align 4
  %add46.i = add i32 %57, %42
  %58 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %59)
  %cmp49.i = icmp eq i32 %add46.i, %59
  %spec.store.select3.i = select i1 %cmp49.i, i32 0, i32 %add46.i
  %60 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.store.select3.i, ptr %sw_data.i, align 4
  %61 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hw_ready.i, align 4
  %add54.i = add i32 %62, %42
  store i32 %add54.i, ptr %hw_ready.i, align 4
  %63 = ptrtoint ptr %sw_ready16.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sw_ready16.i, align 4
  %sub56.i = sub i32 %64, %42
  store i32 %sub56.i, ptr %sw_ready16.i, align 4
  %cmp15.i = icmp sgt i32 %cond.i, %add54.i
  br i1 %cmp15.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge

cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_playback_transfer.exit

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

snd_pcm_indirect_playback_transfer.exit:          ; preds = %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge, %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %cond.end.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %cleanup.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %while.body.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ], [ 0, %land.rhs.i.snd_pcm_indirect_playback_transfer.exit_crit_edge ]
  ret i32 %retval.0.i
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_rme32_playback_setrate(ptr nocapture noundef %rme32, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wcreg = getelementptr inbounds %struct.rme32, ptr %rme32, i32 0, i32 4
  %0 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wcreg, align 4
  %and = and i32 %1, 2048
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 32000, label %sw.bb
    i32 44100, label %sw.bb6
    i32 48000, label %sw.bb13
    i32 64000, label %sw.bb20
    i32 88200, label %sw.bb28
    i32 96000, label %sw.bb42
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and2 = and i32 %1, -2097
  %or = or i32 %and2, 16
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and8 = and i32 %1, -2097
  %or10 = or i32 %and8, 32
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and15 = and i32 %1, -2097
  %or18 = or i32 %and15, 48
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %pci = getelementptr inbounds %struct.rme32, ptr %rme32, i32 0, i32 22
  %3 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %6)
  %cmp.not = icmp eq i16 %6, -26473
  br i1 %cmp.not, label %if.end, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %or25 = and i32 %1, -2097
  %and26 = or i32 %or25, 2064
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %pci29 = getelementptr inbounds %struct.rme32, ptr %rme32, i32 0, i32 22
  %7 = ptrtoint ptr %pci29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci29, align 4
  %device30 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %device30 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %10)
  %cmp32.not = icmp eq i16 %10, -26473
  br i1 %cmp32.not, label %if.end35, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  %or39 = and i32 %1, -2097
  %and40 = or i32 %or39, 2080
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %pci43 = getelementptr inbounds %struct.rme32, ptr %rme32, i32 0, i32 22
  %11 = ptrtoint ptr %pci43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci43, align 4
  %device44 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %device44 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device44, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %14)
  %cmp46.not = icmp eq i16 %14, -26473
  br i1 %cmp46.not, label %if.end49, label %sw.bb42.cleanup_crit_edge

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #12
  %or54 = or i32 %1, 2096
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end49, %if.end35, %if.end, %sw.bb13, %sw.bb6, %sw.bb
  %or54.sink = phi i32 [ %or54, %if.end49 ], [ %and40, %if.end35 ], [ %and26, %if.end ], [ %or18, %sw.bb13 ], [ %or10, %sw.bb6 ], [ %or, %sw.bb ]
  %15 = ptrtoint ptr %wcreg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or54.sink, ptr %wcreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and57 = and i32 %or54.sink, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true60.critedge

land.lhs.true:                                    ; preds = %sw.epilog
  br i1 %tobool58.not, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.if.then64_crit_edge

land.lhs.true.if.then64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true60.critedge:                         ; preds = %sw.epilog
  br i1 %tobool58.not, label %land.lhs.true60.critedge.if.then64_crit_edge, label %land.lhs.true60.critedge.do.body_crit_edge

land.lhs.true60.critedge.do.body_crit_edge:       ; preds = %land.lhs.true60.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true60.critedge.if.then64_crit_edge:     ; preds = %land.lhs.true60.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %land.lhs.true60.critedge.if.then64_crit_edge, %land.lhs.true.if.then64_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wcreg, align 4
  %or.i = or i32 %17, 16384
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %iobase.i = getelementptr inbounds %struct.rme32, ptr %rme32, i32 0, i32 3
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #10, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wcreg, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %25, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %23) #10, !srcloc !224
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true60.critedge.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wcreg, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %iobase = getelementptr inbounds %struct.rme32, ptr %rme32, i32 0, i32 3
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %28) #10, !srcloc !224
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then64, %sw.bb42.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb20.cleanup_crit_edge ], [ -22, %sw.bb28.cleanup_crit_edge ], [ -22, %sw.bb42.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.then64 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_capture_spdif_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %capture_substream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %capture_substream, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %capture_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %hw6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %hw6, ptr @snd_rme32_spdif_fd_info, i32 64)
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = call ptr @memcpy(ptr %hw6, ptr @snd_rme32_spdif_info, i32 64)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %pci = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %14)
  %cmp8 = icmp eq i16 %14, -26473
  br i1 %cmp8, label %land.lhs.true, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end7
  %rev = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %16)
  %cmp11 = icmp eq i8 %16, -106
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %17 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rates, align 8
  %or = or i32 %18, 1536
  store i32 %or, ptr %rates, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %19 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 96000, ptr %rate_max, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %rcreg.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rcreg.i, align 4
  %and2.i = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end16.if.end29_crit_edge

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.end5.i:                                        ; preds = %if.end16
  %shr.i = lshr i32 %21, 27
  %add15.i = and i32 %shr.i, 7
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %25)
  %cmp.i = icmp eq i16 %25, -26473
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %rev.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %27)
  %cmp18.i = icmp eq i8 %27, -106
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  %28 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %add15.i, label %if.then20.unreachabledefault.i [
    i32 0, label %if.then20.i.if.end29_crit_edge
    i32 1, label %if.then20.i.if.end29_crit_edge58
    i32 2, label %if.then20.i.if.end29_crit_edge59
    i32 3, label %if.then20.i.if.then19_crit_edge
    i32 4, label %sw.bb22.i
    i32 5, label %sw.bb23.i
    i32 6, label %sw.bb24.i
    i32 7, label %sw.bb25.i
  ]

if.then20.i.if.then19_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then20.i.if.end29_crit_edge59:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then20.i.if.end29_crit_edge58:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then20.i.if.end29_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

sw.bb22.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

sw.bb23.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

sw.bb24.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

sw.bb25.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then20.unreachabledefault.i:                   ; preds = %if.then20.i
  unreachable

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  %29 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %add15.i, label %if.else.unreachabledefault.i [
    i32 0, label %if.else.i.if.end29_crit_edge
    i32 1, label %if.else.i.if.then19_crit_edge
    i32 2, label %sw.bb28.i
    i32 3, label %sw.bb29.i
    i32 4, label %if.else.i.if.then19_crit_edge60
    i32 5, label %sw.bb31.i
    i32 6, label %sw.bb32.i
    i32 7, label %sw.bb33.i
  ]

if.else.i.if.then19_crit_edge60:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.else.i.if.then19_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.else.i.if.end29_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

sw.bb28.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

sw.bb29.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

sw.bb31.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

sw.bb32.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

sw.bb33.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.else.unreachabledefault.i:                     ; preds = %if.else.i
  unreachable

if.then19:                                        ; preds = %sw.bb33.i, %sw.bb32.i, %sw.bb31.i, %sw.bb29.i, %sw.bb28.i, %if.else.i.if.then19_crit_edge, %if.else.i.if.then19_crit_edge60, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %if.then20.i.if.then19_crit_edge
  %retval.0.i.ph = phi i32 [ 44100, %sw.bb28.i ], [ 32000, %sw.bb29.i ], [ 44100, %sw.bb31.i ], [ 44056, %sw.bb32.i ], [ 32000, %sw.bb33.i ], [ 88200, %sw.bb22.i ], [ 48000, %sw.bb23.i ], [ 44100, %sw.bb24.i ], [ 32000, %sw.bb25.i ], [ 96000, %if.then20.i.if.then19_crit_edge ], [ 48000, %if.else.i.if.then19_crit_edge ], [ 48000, %if.else.i.if.then19_crit_edge60 ]
  %30 = and i32 %21, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool20.not = icmp eq i32 %30, 0
  br i1 %tobool20.not, label %if.end22, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %retval.0.i.ph) #10
  %rates25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %31 = ptrtoint ptr %rates25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call23, ptr %rates25, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %32 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.ph, ptr %rate_min, align 4
  %rate_max28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %33 = ptrtoint ptr %rate_max28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i.ph, ptr %rate_max28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end22, %if.else.i.if.end29_crit_edge, %if.then20.i.if.end29_crit_edge, %if.then20.i.if.end29_crit_edge58, %if.then20.i.if.end29_crit_edge59, %if.end16.if.end29_crit_edge
  %34 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 131072, i32 noundef 131072) #10
  %call1.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_period_bytes) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end29.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ -5, %if.then19.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %capture_substream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_substream, align 4
  %capture_periodsize = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %capture_periodsize to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %capture_periodsize, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_capture_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %8 = ptrtoint ptr %dma_area to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dma_area, align 4
  %port = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dma_addr, align 8
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %12 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 131072, ptr %dma_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %wcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wcreg, align 4
  %or = or i32 %14, 8192
  store i32 %or, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wcreg, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %iobase3 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase3, align 4
  %add.ptr4 = getelementptr i8, ptr %19, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %17) #10, !srcloc !224
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end.params_format.exit_crit_edge

if.end.params_format.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.1.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %21, %if.end.params_format.exit_crit_edge ], [ %23, %for.inc.i.i.params_format.exit_crit_edge ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #10, !range !236
  %add.i.i = or i32 %24, %i.09.lcssa.i.i
  %25 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 10, label %sw.bb1.i
  ]

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wcreg, align 4
  %and.i = and i32 %27, -5
  br label %if.end8

sw.bb1.i:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wcreg, align 4
  %or.i = or i32 %29, 4
  br label %if.end8

if.end8:                                          ; preds = %sw.bb1.i, %sw.bb.i
  %storemerge = phi i32 [ %or.i, %sw.bb1.i ], [ %and.i, %sw.bb.i ]
  %30 = ptrtoint ptr %wcreg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wcreg, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  %34 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase3, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #10, !srcloc !224
  %arrayidx.i.i97 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i97, align 4
  %call10 = tail call fastcc i32 @snd_rme32_playback_setrate(ptr noundef %1, i32 noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %rcreg.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rcreg.i, align 4
  %and2.i = and i32 %39, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end14.if.end33_crit_edge

if.end14.if.end33_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end5.i:                                        ; preds = %if.end14
  %shr.i = lshr i32 %39, 27
  %add15.i = and i32 %shr.i, 7
  %pci.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 22
  %40 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %43)
  %cmp.i = icmp eq i16 %43, -26473
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %rev.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %45)
  %cmp18.i = icmp eq i8 %45, -106
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  %46 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %add15.i, label %if.then20.unreachabledefault.i [
    i32 0, label %if.then20.i.if.end33_crit_edge
    i32 1, label %if.then20.i.if.end33_crit_edge113
    i32 2, label %if.then20.i.if.end33_crit_edge114
    i32 3, label %if.then20.i.if.then17_crit_edge
    i32 4, label %sw.bb22.i
    i32 5, label %sw.bb23.i
    i32 6, label %sw.bb24.i
    i32 7, label %sw.bb25.i
  ]

if.then20.i.if.then17_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then20.i.if.end33_crit_edge114:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then20.i.if.end33_crit_edge113:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then20.i.if.end33_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

sw.bb22.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

sw.bb23.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

sw.bb24.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

sw.bb25.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then20.unreachabledefault.i:                   ; preds = %if.then20.i
  unreachable

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  %47 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %add15.i, label %if.else.unreachabledefault.i [
    i32 0, label %if.else.i.if.end33_crit_edge
    i32 1, label %if.else.i.if.then17_crit_edge
    i32 2, label %sw.bb28.i
    i32 3, label %sw.bb29.i
    i32 4, label %if.else.i.if.then17_crit_edge115
    i32 5, label %sw.bb31.i
    i32 6, label %sw.bb32.i
    i32 7, label %sw.bb33.i
  ]

if.else.i.if.then17_crit_edge115:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.else.i.if.then17_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.else.i.if.end33_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

sw.bb28.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

sw.bb29.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

sw.bb31.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

sw.bb32.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

sw.bb33.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.else.unreachabledefault.i:                     ; preds = %if.else.i
  unreachable

if.then17:                                        ; preds = %sw.bb33.i, %sw.bb32.i, %sw.bb31.i, %sw.bb29.i, %sw.bb28.i, %if.else.i.if.then17_crit_edge, %if.else.i.if.then17_crit_edge115, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %if.then20.i.if.then17_crit_edge
  %retval.0.i99.ph = phi i32 [ 44100, %sw.bb28.i ], [ 32000, %sw.bb29.i ], [ 44100, %sw.bb31.i ], [ 44056, %sw.bb32.i ], [ 32000, %sw.bb33.i ], [ 88200, %sw.bb22.i ], [ 48000, %sw.bb23.i ], [ 44100, %sw.bb24.i ], [ 32000, %sw.bb25.i ], [ 96000, %if.then20.i.if.then17_crit_edge ], [ 48000, %if.else.i.if.then17_crit_edge ], [ 48000, %if.else.i.if.then17_crit_edge115 ]
  %48 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %retval.0.i99.ph)
  %cmp19.not = icmp eq i32 %49, %retval.0.i99.ph
  br i1 %cmp19.not, label %if.end22, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.then17
  %50 = and i32 %39, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool23.not = icmp eq i32 %50, 0
  %channels_min28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 5
  %51 = ptrtoint ptr %channels_min28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channels_min28, align 4
  br i1 %tobool23.not, label %land.lhs.true26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp24 = icmp eq i32 %52, 2
  br i1 %cmp24, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true26:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %52)
  %cmp29 = icmp eq i32 %52, 8
  br i1 %cmp29, label %land.lhs.true26.cleanup_crit_edge, label %land.lhs.true26.if.end33_crit_edge

land.lhs.true26.if.end33_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true26.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.else.i.if.end33_crit_edge, %if.then20.i.if.end33_crit_edge, %if.then20.i.if.end33_crit_edge113, %if.then20.i.if.end33_crit_edge114, %if.end14.if.end33_crit_edge
  %53 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wcreg, align 4
  %and = and i32 %54, -8193
  store i32 %and, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wcreg, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iobase3, align 4
  %add.ptr40 = getelementptr i8, ptr %59, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %57) #10, !srcloc !224
  %arrayidx.i.i101 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.i102 = icmp eq i32 %61, 2
  %..i = select i1 %cmp.i102, i32 1, i32 3
  %62 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wcreg, align 4
  %and5.i = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %cond7.i = select i1 %tobool6.not.i, i32 1, i32 2
  %add8.i = add nuw nsw i32 %cond7.i, %..i
  %capture_frlog.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 12
  %64 = ptrtoint ptr %capture_frlog.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add8.i, ptr %capture_frlog.i, align 4
  %playback_periodsize = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 13
  %65 = ptrtoint ptr %playback_periodsize to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %playback_periodsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp42.not = icmp eq i32 %66, 0
  br i1 %cmp42.not, label %if.end33.if.end50_crit_edge, label %if.then43

if.end33.if.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then43:                                        ; preds = %if.end33
  %arrayidx.i.i103 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %67 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i103, align 4
  %shl = shl i32 %68, %add8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %66)
  %cmp46.not = icmp eq i32 %shl, %66
  br i1 %cmp46.not, label %if.then43.if.end50_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then43.if.end50_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50:                                         ; preds = %if.then43.if.end50_crit_edge, %if.end33.if.end50_crit_edge
  %arrayidx.i.i104 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %69 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i104, align 4
  %shl53 = shl i32 %70, %add8.i
  %capture_periodsize = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 14
  %71 = ptrtoint ptr %capture_periodsize to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shl53, ptr %capture_periodsize, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then43.cleanup_crit_edge, %land.lhs.true26.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -22, %for.inc.i.i.cleanup_crit_edge ], [ -22, %params_format.exit.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ -5, %if.then17.cleanup_crit_edge ], [ -5, %land.lhs.true26.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -16, %if.then43.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %capture_pcm = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18
  %4 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 2
  %5 = call ptr @memset(ptr %4, i32 0, i32 32)
  %6 = ptrtoint ptr %capture_pcm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 131072, ptr %capture_pcm, align 4
  %hw_queue_size = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 1
  %7 = ptrtoint ptr %hw_queue_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %hw_queue_size, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %13, %11
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_buffer_size = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 5
  %14 = ptrtoint ptr %sw_buffer_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i, ptr %sw_buffer_size, align 4
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 131328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !224
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_capture_fd_pointer(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_pcm = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18
  %iobase.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 131072
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %5 = and i32 %4, -65280
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %hw_io.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 3
  %7 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_io.i, align 4
  %sub.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %capture_pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %capture_pcm, align 4
  %add.i = add i32 %10, %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %bytes.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i, %entry.if.end.i_crit_edge ]
  %11 = ptrtoint ptr %hw_io.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %hw_io.i, align 4
  %hw_ready.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 4
  %12 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_ready.i, align 4
  %add2.i = add i32 %13, %bytes.0.i
  store i32 %add2.i, ptr %hw_ready.i, align 4
  %hw_queue_size.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %hw_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.i.cond.end.i_crit_edge

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %capture_pcm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %capture_pcm, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %17, %cond.false.i ], [ %15, %if.end.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %cond.i)
  %cmp6.i = icmp sgt i32 %add2.i, %cond.i
  br i1 %cmp6.i, label %cond.end.i.snd_pcm_indirect_capture_pointer.exit_crit_edge, label %if.end8.i

cond.end.i.snd_pcm_indirect_capture_pointer.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_capture_pointer.exit

if.end8.i:                                        ; preds = %cond.end.i
  %sw_io.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 7
  %18 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sw_io.i, align 4
  %add9.i = add i32 %19, %bytes.0.i
  store i32 %add9.i, ptr %sw_io.i, align 4
  %sw_buffer_size.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 5
  %20 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %21)
  %cmp11.not.i = icmp ult i32 %add9.i, %21
  br i1 %cmp11.not.i, label %if.end8.i.if.end16.i_crit_edge, label %if.then12.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub15.i = sub i32 %add9.i, %21
  %22 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub15.i, ptr %sw_io.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end16.i_crit_edge
  %ops.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 10
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %ack.i = getelementptr inbounds %struct.snd_pcm_ops, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ack.i, align 4
  %tobool17.not.i = icmp eq ptr %26, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end21.i_crit_edge, label %if.then18.i

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %26(ptr noundef %substream) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end21.i_crit_edge
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %27 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime.i, align 4
  %29 = ptrtoint ptr %sw_io.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sw_io.i, align 4
  %mul.i.i = shl i32 %30, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 21
  %31 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %32
  br label %snd_pcm_indirect_capture_pointer.exit

snd_pcm_indirect_capture_pointer.exit:            ; preds = %if.end21.i, %cond.end.i.snd_pcm_indirect_capture_pointer.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i.i, %if.end21.i ], [ -1, %cond.end.i.snd_pcm_indirect_capture_pointer.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_capture_fd_ack(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_pcm = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %control.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 38
  %4 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control.i, align 8
  %appl_ptr2.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %appl_ptr2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %appl_ptr2.i, align 4
  %appl_ptr3.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 9
  %8 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %appl_ptr3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %tobool.not.i = icmp eq i32 %7, %9
  br i1 %tobool.not.i, label %entry.if.end12.i_crit_edge, label %if.then.i

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then.i:                                        ; preds = %entry
  %sub.i = sub i32 %7, %9
  %boundary.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 33
  %10 = ptrtoint ptr %boundary.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %boundary.i, align 8
  %div1.i = lshr i32 %11, 1
  %sub4.i = sub nsw i32 0, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub4.i)
  %cmp.i = icmp slt i32 %sub.i, %sub4.i
  %add.i = select i1 %cmp.i, i32 %11, i32 0
  %spec.select.i = add i32 %add.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp7.i = icmp slt i32 %spec.select.i, 0
  br i1 %cmp7.i, label %if.then.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, label %if.end9.i

if.then.i.snd_pcm_indirect_capture_transfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_capture_transfer.exit

if.end9.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %13, %spec.select.i
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sw_ready.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 8
  %14 = ptrtoint ptr %sw_ready.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sw_ready.i, align 4
  %sub10.i = sub i32 %15, %div1.i.i
  store i32 %sub10.i, ptr %sw_ready.i, align 4
  %16 = ptrtoint ptr %appl_ptr3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %appl_ptr3.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end9.i, %entry.if.end12.i_crit_edge
  %sw_ready14.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 8
  %hw_ready.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 4
  %17 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_ready.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp136.i = icmp sgt i32 %18, 0
  br i1 %cmp136.i, label %land.rhs.lr.ph.i, label %if.end12.i.snd_pcm_indirect_capture_transfer.exit_crit_edge

if.end12.i.snd_pcm_indirect_capture_transfer.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_capture_transfer.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end12.i
  %sw_buffer_size.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 5
  %hw_data.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 2
  %sw_data.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 18, i32 6
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %19 = phi i32 [ %18, %land.rhs.lr.ph.i ], [ %sub53.i, %cleanup.i.land.rhs.i_crit_edge ]
  %20 = ptrtoint ptr %sw_ready14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sw_ready14.i, align 4
  %22 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp15.i = icmp sgt i32 %23, %21
  br i1 %cmp15.i, label %while.body.i, label %land.rhs.i.snd_pcm_indirect_capture_transfer.exit_crit_edge

land.rhs.i.snd_pcm_indirect_capture_transfer.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_capture_transfer.exit

while.body.i:                                     ; preds = %land.rhs.i
  %24 = ptrtoint ptr %capture_pcm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capture_pcm, align 4
  %26 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_data.i, align 4
  %sub16.i = sub i32 %25, %27
  %28 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sw_data.i, align 4
  %sub18.i = sub i32 %23, %29
  %sub21.i = sub i32 %23, %21
  %30 = tail call i32 @llvm.smin.i32(i32 %19, i32 %sub21.i) #10
  %31 = tail call i32 @llvm.umin.i32(i32 %sub16.i, i32 %30) #10
  %32 = tail call i32 @llvm.umin.i32(i32 %sub18.i, i32 %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool33.not.i = icmp eq i32 %32, 0
  br i1 %tobool33.not.i, label %while.body.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, label %cleanup.i

while.body.i.snd_pcm_indirect_capture_transfer.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_capture_transfer.exit

cleanup.i:                                        ; preds = %while.body.i
  %33 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private_data, align 4
  %35 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %runtime1.i, align 4
  %dma_area.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %36, i32 0, i32 50
  %37 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_area.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %29
  %iobase.i.i = getelementptr inbounds %struct.rme32, ptr %34, i32 0, i32 3
  %39 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %40, i32 %27
  tail call void @mmiocpy(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr2.i.i, i32 noundef %32) #10
  %41 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hw_data.i, align 4
  %add37.i = add i32 %42, %32
  %43 = ptrtoint ptr %capture_pcm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %capture_pcm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add37.i, i32 %44)
  %cmp40.i = icmp eq i32 %add37.i, %44
  %spec.store.select.i = select i1 %cmp40.i, i32 0, i32 %add37.i
  %45 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select.i, ptr %hw_data.i, align 4
  %46 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sw_data.i, align 4
  %add45.i = add i32 %47, %32
  %48 = ptrtoint ptr %sw_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sw_buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add45.i, i32 %49)
  %cmp48.i = icmp eq i32 %add45.i, %49
  %spec.store.select3.i = select i1 %cmp48.i, i32 0, i32 %add45.i
  %50 = ptrtoint ptr %sw_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.store.select3.i, ptr %sw_data.i, align 4
  %51 = ptrtoint ptr %hw_ready.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hw_ready.i, align 4
  %sub53.i = sub i32 %52, %32
  store i32 %sub53.i, ptr %hw_ready.i, align 4
  %53 = ptrtoint ptr %sw_ready14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sw_ready14.i, align 4
  %add55.i = add i32 %54, %32
  store i32 %add55.i, ptr %sw_ready14.i, align 4
  %cmp13.i = icmp sgt i32 %sub53.i, 0
  br i1 %cmp13.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.snd_pcm_indirect_capture_transfer.exit_crit_edge

cleanup.i.snd_pcm_indirect_capture_transfer.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_pcm_indirect_capture_transfer.exit

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

snd_pcm_indirect_capture_transfer.exit:           ; preds = %cleanup.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, %while.body.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, %land.rhs.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, %if.end12.i.snd_pcm_indirect_capture_transfer.exit_crit_edge, %if.then.i.snd_pcm_indirect_capture_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i.snd_pcm_indirect_capture_transfer.exit_crit_edge ], [ 0, %if.end12.i.snd_pcm_indirect_capture_transfer.exit_crit_edge ], [ 0, %cleanup.i.snd_pcm_indirect_capture_transfer.exit_crit_edge ], [ 0, %while.body.i.snd_pcm_indirect_capture_transfer.exit_crit_edge ], [ 0, %land.rhs.i.snd_pcm_indirect_capture_transfer.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_playback_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 131072
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %5 = and i32 %4, -65280
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %playback_frlog = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %playback_frlog to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %playback_frlog, align 4
  %shr = lshr i32 %6, %8
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_playback_silence(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %pos
  tail call void @mmioset(ptr noundef %add.ptr1, i32 noundef 0, i32 noundef %count) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_playback_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %src, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %pos
  %call = tail call i32 @copy_from_user_toio(ptr noundef %add.ptr1, ptr noundef %src, i32 noundef %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_playback_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %src, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %pos
  tail call void @mmiocpy(ptr noundef %add.ptr1, ptr noundef %src, i32 noundef %count) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_user_toio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 131072
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %5 = and i32 %4, -65280
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %capture_frlog = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %capture_frlog to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capture_frlog, align 4
  %shr = lshr i32 %6, %8
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_capture_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %pos
  %call = tail call i32 @copy_to_user_fromio(ptr noundef %dst, ptr noundef %add.ptr1, i32 noundef %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_capture_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %pos
  tail call void @mmiocpy(ptr noundef %dst, ptr noundef %add.ptr1, i32 noundef %count) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_to_user_fromio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_playback_adat_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %playback_substream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback_substream, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %wcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wcreg, align 4
  %or = or i32 %7, 4096
  store i32 %or, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wcreg, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #10, !srcloc !224
  %13 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %substream, ptr %playback_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %hw7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call ptr @memcpy(ptr %hw7, ptr @snd_rme32_adat_fd_info, i32 64)
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = call ptr @memcpy(ptr %hw7, ptr @snd_rme32_adat_info, i32 64)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %rcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %rcreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rcreg, align 4
  %20 = and i32 %19, 1140850688
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %20)
  %21 = icmp eq i32 %20, 1073741824
  br i1 %21, label %if.end5.i, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end5.i:                                        ; preds = %if.end8
  %shr.i = lshr i32 %19, 27
  %add15.i = and i32 %shr.i, 7
  %pci.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %25)
  %cmp.i = icmp eq i16 %25, -26473
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %rev.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %27)
  %cmp18.i = icmp eq i8 %27, -106
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  %28 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %add15.i, label %if.then20.unreachabledefault.i [
    i32 0, label %if.then20.i.if.end18_crit_edge
    i32 1, label %if.then20.i.if.end18_crit_edge47
    i32 2, label %if.then20.i.if.end18_crit_edge48
    i32 3, label %if.then20.i.if.then13_crit_edge
    i32 4, label %sw.bb22.i
    i32 5, label %sw.bb23.i
    i32 6, label %sw.bb24.i
    i32 7, label %sw.bb25.i
  ]

if.then20.i.if.then13_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then20.i.if.end18_crit_edge48:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then20.i.if.end18_crit_edge47:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then20.i.if.end18_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

sw.bb22.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

sw.bb23.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

sw.bb24.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

sw.bb25.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then20.unreachabledefault.i:                   ; preds = %if.then20.i
  unreachable

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  %29 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %add15.i, label %if.else.unreachabledefault.i [
    i32 0, label %if.else.i.if.end18_crit_edge
    i32 1, label %if.else.i.if.then13_crit_edge
    i32 2, label %sw.bb28.i
    i32 3, label %sw.bb29.i
    i32 4, label %if.else.i.if.then13_crit_edge49
    i32 5, label %sw.bb31.i
    i32 6, label %sw.bb32.i
    i32 7, label %sw.bb33.i
  ]

if.else.i.if.then13_crit_edge49:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.else.i.if.then13_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.else.i.if.end18_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

sw.bb28.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

sw.bb29.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

sw.bb31.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

sw.bb32.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

sw.bb33.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.else.unreachabledefault.i:                     ; preds = %if.else.i
  unreachable

if.then13:                                        ; preds = %sw.bb33.i, %sw.bb32.i, %sw.bb31.i, %sw.bb29.i, %sw.bb28.i, %if.else.i.if.then13_crit_edge, %if.else.i.if.then13_crit_edge49, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %if.then20.i.if.then13_crit_edge
  %rate.0.ph = phi i32 [ 44100, %sw.bb28.i ], [ 32000, %sw.bb29.i ], [ 44100, %sw.bb31.i ], [ 44056, %sw.bb32.i ], [ 32000, %sw.bb33.i ], [ 88200, %sw.bb22.i ], [ 48000, %sw.bb23.i ], [ 44100, %sw.bb24.i ], [ 32000, %sw.bb25.i ], [ 96000, %if.then20.i.if.then13_crit_edge ], [ 48000, %if.else.i.if.then13_crit_edge ], [ 48000, %if.else.i.if.then13_crit_edge49 ]
  %call14 = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %rate.0.ph) #10
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %30 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call14, ptr %rates, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %31 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rate.0.ph, ptr %rate_min, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %32 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rate.0.ph, ptr %rate_max, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.else.i.if.end18_crit_edge, %if.then20.i.if.end18_crit_edge, %if.then20.i.if.end18_crit_edge47, %if.then20.i.if.end18_crit_edge48, %if.end8.if.end18_crit_edge
  %33 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 131072, i32 noundef 131072) #10
  %call1.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_period_bytes) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end18.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_capture_adat_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %hw2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memcpy(ptr %hw2, ptr @snd_rme32_adat_fd_info, i32 64)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = call ptr @memcpy(ptr %hw2, ptr @snd_rme32_adat_info, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rcreg.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %rcreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rcreg.i, align 4
  %and2.i = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end5.i:                                        ; preds = %if.end
  %shr.i = lshr i32 %9, 27
  %add15.i = and i32 %shr.i, 7
  %pci.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %13)
  %cmp.i = icmp eq i16 %13, -26473
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %rev.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %15)
  %cmp18.i = icmp eq i8 %15, -106
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  %16 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %add15.i, label %if.then20.unreachabledefault.i [
    i32 0, label %if.then20.i.if.end11_crit_edge
    i32 1, label %if.then20.i.if.end11_crit_edge42
    i32 2, label %if.then20.i.if.end11_crit_edge43
    i32 3, label %if.then20.i.if.then3_crit_edge
    i32 4, label %sw.bb22.i
    i32 5, label %sw.bb23.i
    i32 6, label %sw.bb24.i
    i32 7, label %sw.bb25.i
  ]

if.then20.i.if.then3_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then20.i.if.end11_crit_edge43:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then20.i.if.end11_crit_edge42:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then20.i.if.end11_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

sw.bb22.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

sw.bb23.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

sw.bb24.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

sw.bb25.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then20.unreachabledefault.i:                   ; preds = %if.then20.i
  unreachable

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  %17 = zext i32 %add15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %add15.i, label %if.else.unreachabledefault.i [
    i32 0, label %if.else.i.if.end11_crit_edge
    i32 1, label %if.else.i.if.then3_crit_edge
    i32 2, label %sw.bb28.i
    i32 3, label %sw.bb29.i
    i32 4, label %if.else.i.if.then3_crit_edge44
    i32 5, label %sw.bb31.i
    i32 6, label %sw.bb32.i
    i32 7, label %sw.bb33.i
  ]

if.else.i.if.then3_crit_edge44:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.else.i.if.then3_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.else.i.if.end11_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

sw.bb28.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

sw.bb29.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

sw.bb31.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

sw.bb32.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

sw.bb33.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.else.unreachabledefault.i:                     ; preds = %if.else.i
  unreachable

if.then3:                                         ; preds = %sw.bb33.i, %sw.bb32.i, %sw.bb31.i, %sw.bb29.i, %sw.bb28.i, %if.else.i.if.then3_crit_edge, %if.else.i.if.then3_crit_edge44, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %if.then20.i.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ 44100, %sw.bb28.i ], [ 32000, %sw.bb29.i ], [ 44100, %sw.bb31.i ], [ 44056, %sw.bb32.i ], [ 32000, %sw.bb33.i ], [ 88200, %sw.bb22.i ], [ 48000, %sw.bb23.i ], [ 44100, %sw.bb24.i ], [ 32000, %sw.bb25.i ], [ 96000, %if.then20.i.if.then3_crit_edge ], [ 48000, %if.else.i.if.then3_crit_edge ], [ 48000, %if.else.i.if.then3_crit_edge44 ]
  %18 = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.end6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %retval.0.i.ph) #10
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %19 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call7, ptr %rates, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %20 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i.ph, ptr %rate_min, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %21 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i.ph, ptr %rate_max, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end6, %if.else.i.if.end11_crit_edge, %if.then20.i.if.end11_crit_edge, %if.then20.i.if.end11_crit_edge42, %if.then20.i.if.end11_crit_edge43, %if.end.if.end11_crit_edge
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %capture_substream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %capture_substream, align 4
  %cmp12.not = icmp eq ptr %23, null
  br i1 %cmp12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %24 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %substream, ptr %capture_substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  %25 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 18, i32 noundef 131072, i32 noundef 131072) #10
  %call1.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 14, ptr noundef nonnull @hw_constraints_period_bytes) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end15.cleanup_crit_edge, %if.then13, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then13 ], [ -5, %if.then3.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_rme32_control_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @snd_rme32_control_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %wcreg_spdif = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %wcreg_spdif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg_spdif, align 4
  %and.i = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %and10.i = lshr i32 %3, 12
  %4 = and i32 %and10.i, 8
  %and3.i = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, i32 0, i32 12
  %.sink.i = select i1 %tobool.not.i, i32 %4, i32 %cond5.i
  %conv15.i = zext i1 %not.tobool.not.i to i32
  %or16.i = or i32 %.sink.i, %conv15.i
  %storemerge.i = trunc i32 %or16.i to i8
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge.i, ptr %value, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_control_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %and6.i = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, i32 0, i32 32768
  %and13.i = shl nuw nsw i32 %conv.i, 12
  %4 = and i32 %and13.i, 32768
  %cond8.pn.i = select i1 %tobool.not.i, i32 %4, i32 %cond8.i
  %5 = shl nuw nsw i32 %and.i, 10
  %val.0.i = or i32 %cond8.pn.i, %5
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %wcreg_spdif = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %wcreg_spdif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wcreg_spdif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i, i32 %7)
  %cmp = icmp ne i32 %val.0.i, %7
  %conv = zext i1 %cmp to i32
  %8 = ptrtoint ptr %wcreg_spdif to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %val.0.i, ptr %wcreg_spdif, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_rme32_control_spdif_stream_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @snd_rme32_control_spdif_stream_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %wcreg_spdif_stream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %wcreg_spdif_stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg_spdif_stream, align 4
  %and.i = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %and10.i = lshr i32 %3, 12
  %4 = and i32 %and10.i, 8
  %and3.i = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, i32 0, i32 12
  %.sink.i = select i1 %tobool.not.i, i32 %4, i32 %cond5.i
  %conv15.i = zext i1 %not.tobool.not.i to i32
  %or16.i = or i32 %.sink.i, %conv15.i
  %storemerge.i = trunc i32 %or16.i to i8
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge.i, ptr %value, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_control_spdif_stream_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %and6.i = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %cond8.i = select i1 %tobool7.not.i, i32 0, i32 32768
  %and13.i = shl nuw nsw i32 %conv.i, 12
  %4 = and i32 %and13.i, 32768
  %cond8.pn.i = select i1 %tobool.not.i, i32 %4, i32 %cond8.i
  %5 = shl nuw nsw i32 %and.i, 10
  %val.0.i = or i32 %cond8.pn.i, %5
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %wcreg_spdif_stream = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %wcreg_spdif_stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wcreg_spdif_stream, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i, i32 %7)
  %cmp = icmp ne i32 %val.0.i, %7
  %conv = zext i1 %cmp to i32
  %8 = ptrtoint ptr %wcreg_spdif_stream to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %val.0.i, ptr %wcreg_spdif_stream, align 4
  %wcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wcreg, align 4
  %and = and i32 %10, -33793
  %or = or i32 %val.0.i, %and
  store i32 %or, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcreg, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #10, !srcloc !224
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_rme32_control_spdif_mask_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @snd_rme32_control_spdif_mask_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
define internal i32 @snd_rme32_info_inputtype_control(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pci = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %switch.tableidx = add i16 %5, 26474
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %6 = icmp ult i16 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1588, i32 noundef 9, ptr noundef nonnull @.str.29) #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.snd_rme32_info_inputtype_control, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %switch.load, ptr noundef nonnull @snd_rme32_info_inputtype_control.texts) #10
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_get_inputtype_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %wcreg.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg.i, align 4
  %shr.i = lshr i32 %3, 6
  %add.i = and i32 %shr.i, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.i, ptr %value, align 8
  %pci = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %switch.tableidx = add i16 %8, 26474
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %9 = icmp ult i16 %switch.tableidx, 3
  br i1 %9, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1612, i32 noundef 9, ptr noundef nonnull @.str.29) #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.snd_rme32_get_inputtype_control, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %items.0 = phi i32 [ 3, %do.end ], [ %switch.load, %switch.lookup ]
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %items.0)
  %cmp.not = icmp ult i32 %13, %items.0
  br i1 %cmp.not, label %sw.epilog.if.end22_crit_edge, label %if.then19

sw.epilog.if.end22_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add nsw i32 %items.0, -1
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %value, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %sw.epilog.if.end22_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_put_inputtype_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pci = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %switch.tableidx = add i16 %5, 26474
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %6 = icmp ult i16 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1639, i32 noundef 9, ptr noundef nonnull @.str.29) #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.snd_rme32_put_inputtype_control, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %items.0 = phi i32 [ 3, %do.end ], [ %switch.load, %switch.lookup ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %rem = urem i32 %10, %items.0
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %wcreg.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcreg.i, align 4
  %13 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %rem, label %sw.epilog.snd_rme32_setinputtype.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb12.i
  ]

sw.epilog.snd_rme32_setinputtype.exit_crit_edge:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_rme32_setinputtype.exit

sw.bb.i:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i = and i32 %12, -193
  br label %do.body.i

sw.bb3.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = and i32 %12, -193
  %and5.i = or i32 %or.i, 64
  br label %do.body.i

sw.bb7.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %and9.i = and i32 %12, -193
  %or10.i = or i32 %and9.i, 128
  br label %do.body.i

sw.bb12.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %or15.i = or i32 %12, 192
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb12.i, %sw.bb7.i, %sw.bb3.i, %sw.bb.i
  %or15.i.sink = phi i32 [ %or15.i, %sw.bb12.i ], [ %or10.i, %sw.bb7.i ], [ %and5.i, %sw.bb3.i ], [ %and1.i, %sw.bb.i ]
  %14 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or15.i.sink, ptr %wcreg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wcreg.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %iobase.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #10, !srcloc !224
  br label %snd_rme32_setinputtype.exit

snd_rme32_setinputtype.exit:                      ; preds = %do.body.i, %sw.epilog.snd_rme32_setinputtype.exit_crit_edge
  %shr.i = lshr i32 %12, 6
  %add.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %add.i)
  %cmp = icmp ne i32 %rem, %add.i
  %conv16 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 %conv16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_get_loopback_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %wcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg, align 4
  %and = lshr i32 %3, 3
  %and.lobit = and i32 %and, 1
  %4 = xor i32 %and.lobit, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_put_loopback_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %cond = select i1 %tobool.not, i32 8, i32 0
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %wcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcreg, align 4
  %and = and i32 %5, -9
  %or = or i32 %and, %cond
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %and5 = and i32 %or, -513
  %masksel = select i1 %tobool4.not, i32 512, i32 0
  %val.0 = or i32 %and5, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %5)
  %cmp = icmp ne i32 %or, %5
  %conv = zext i1 %cmp to i32
  %8 = ptrtoint ptr %wcreg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %val.0, ptr %wcreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #10, !srcloc !224
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_info_clockmode_control(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_rme32_info_clockmode_control.texts) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_get_clockmode_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %wcreg.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wcreg.i, align 4
  %shr.i = lshr i32 %3, 4
  %add.i = and i32 %shr.i, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.i, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_rme32_put_clockmode_control(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %wcreg.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wcreg.i, align 4
  %6 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %rem, label %entry.snd_rme32_setclockmode.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb7.i
  ]

entry.snd_rme32_setclockmode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_rme32_setclockmode.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i = and i32 %5, -49
  br label %do.body.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = and i32 %5, -49
  %and5.i = or i32 %or.i, 16
  br label %do.body.i

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and9.i = and i32 %5, -49
  %or10.i = or i32 %and9.i, 32
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb7.i, %sw.bb3.i, %sw.bb.i
  %or10.i.sink = phi i32 [ %or10.i, %sw.bb7.i ], [ %and5.i, %sw.bb3.i ], [ %and1.i, %sw.bb.i ]
  %7 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or10.i.sink, ptr %wcreg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %wcreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wcreg.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  %iobase.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #10, !srcloc !224
  br label %snd_rme32_setclockmode.exit

snd_rme32_setclockmode.exit:                      ; preds = %do.body.i, %entry.snd_rme32_setclockmode.exit_crit_edge
  %shr.i = lshr i32 %5, 4
  %add.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %add.i)
  %cmp = icmp ne i32 %rem, %add.i
  %conv = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_rme32_proc_read(ptr nocapture noundef readonly %entry1, ptr noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 131072
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !228
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %rcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rcreg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rcreg, align 4
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %card = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef %longname) #10
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.35, i32 noundef %add) #10
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.36) #10
  %fullduplex_mode = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %fullduplex_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fullduplex_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %.str.38..str.37 = select i1 %tobool.not, ptr @.str.38, ptr @.str.37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull %.str.38..str.37) #10
  %pci = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 22
  %23 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %26)
  %cmp = icmp eq i16 %26, -26473
  br i1 %cmp, label %land.lhs.true, label %entry.if.else15_crit_edge

entry.if.else15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

land.lhs.true:                                    ; preds = %entry
  %rev = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %28)
  %cmp11 = icmp eq i8 %28, -106
  br i1 %cmp11, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.if.else15_crit_edge

land.lhs.true.if.else15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.else15:                                        ; preds = %land.lhs.true.if.else15_crit_edge, %entry.if.else15_crit_edge
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %land.lhs.true.if.end17_crit_edge
  %.str.40.sink = phi ptr [ @.str.40, %if.else15 ], [ @.str.39, %land.lhs.true.if.end17_crit_edge ]
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef nonnull %.str.40.sink) #10
  %wcreg = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wcreg, align 4
  %and = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %.str.42..str.41 = select i1 %tobool18.not, ptr @.str.42, ptr @.str.41
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull %.str.42..str.41) #10
  %35 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wcreg, align 4
  %and25 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %.str.44.sink = select i1 %tobool26.not, ptr @.str.44, ptr @.str.43
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull %.str.44.sink) #10
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.45) #10
  %41 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wcreg, align 4
  %shr.i = lshr i32 %42, 6
  %add.i = and i32 %shr.i, 3
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.snd_rme32_proc_read, i32 0, i32 %add.i
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull %switch.load) #10
  %46 = ptrtoint ptr %rcreg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rcreg, align 4
  %and2.i = and i32 %47, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end17.if.then44_crit_edge

if.end17.if.then44_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end5.i:                                        ; preds = %if.end17
  %shr.i158 = lshr i32 %47, 27
  %add15.i = and i32 %shr.i158, 7
  %48 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %51)
  %cmp.i = icmp eq i16 %51, -26473
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %rev.i = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 8
  %52 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %53)
  %cmp18.i = icmp eq i8 %53, -106
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add15.i)
  %switch = icmp ult i32 %add15.i, 3
  br i1 %switch, label %if.then20.i.if.then44_crit_edge, label %if.then20.i.if.else46_crit_edge

if.then20.i.if.else46_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else46

if.then20.i.if.then44_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add15.i)
  %switch197 = icmp eq i32 %add15.i, 0
  br i1 %switch197, label %if.else.i.if.then44_crit_edge, label %if.else.i.if.else46_crit_edge

if.else.i.if.else46_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else46

if.else.i.if.then44_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %if.else.i.if.then44_crit_edge, %if.then20.i.if.then44_crit_edge, %if.end17.if.then44_crit_edge
  %54 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %55, ptr noundef nonnull @.str.50) #10
  br label %if.end55

if.else46:                                        ; preds = %if.else.i.if.else46_crit_edge, %if.then20.i.if.else46_crit_edge
  %56 = and i32 %47, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool47.not = icmp eq i32 %56, 0
  %57 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer, align 4
  %.str.52..str.51 = select i1 %tobool47.not, ptr @.str.52, ptr @.str.51
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef nonnull %.str.52..str.51) #10
  %59 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer, align 4
  %61 = ptrtoint ptr %rcreg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rcreg, align 4
  %and2.i162 = and i32 %62, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i162)
  %tobool3.not.i163 = icmp eq i32 %and2.i162, 0
  br i1 %tobool3.not.i163, label %if.end5.i169, label %if.else46.snd_rme32_capture_getrate.exit190_crit_edge

if.else46.snd_rme32_capture_getrate.exit190_crit_edge: ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_rme32_capture_getrate.exit190

if.end5.i169:                                     ; preds = %if.else46
  %shr.i164 = lshr i32 %62, 27
  %add15.i165 = and i32 %shr.i164, 7
  %63 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci, align 4
  %device.i167 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %device.i167 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %device.i167, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26473, i16 %66)
  %cmp.i168 = icmp eq i16 %66, -26473
  br i1 %cmp.i168, label %land.lhs.true.i172, label %if.end5.i169.switch.lookup200_crit_edge

if.end5.i169.switch.lookup200_crit_edge:          ; preds = %if.end5.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %switch.lookup200

land.lhs.true.i172:                               ; preds = %if.end5.i169
  %rev.i170 = getelementptr inbounds %struct.rme32, ptr %1, i32 0, i32 8
  %67 = ptrtoint ptr %rev.i170 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rev.i170, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %68)
  %cmp18.i171 = icmp eq i8 %68, -106
  br i1 %cmp18.i171, label %land.lhs.true.i172.snd_rme32_capture_getrate.exit190.sink.split_crit_edge, label %land.lhs.true.i172.switch.lookup200_crit_edge

land.lhs.true.i172.switch.lookup200_crit_edge:    ; preds = %land.lhs.true.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %switch.lookup200

land.lhs.true.i172.snd_rme32_capture_getrate.exit190.sink.split_crit_edge: ; preds = %land.lhs.true.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_rme32_capture_getrate.exit190.sink.split

switch.lookup200:                                 ; preds = %land.lhs.true.i172.switch.lookup200_crit_edge, %if.end5.i169.switch.lookup200_crit_edge
  br label %snd_rme32_capture_getrate.exit190.sink.split

snd_rme32_capture_getrate.exit190.sink.split:     ; preds = %switch.lookup200, %land.lhs.true.i172.snd_rme32_capture_getrate.exit190.sink.split_crit_edge
  %switch.table.snd_rme32_proc_read.66.sink = phi ptr [ @switch.table.snd_rme32_proc_read.66, %switch.lookup200 ], [ @switch.table.snd_rme32_proc_read.65, %land.lhs.true.i172.snd_rme32_capture_getrate.exit190.sink.split_crit_edge ]
  %switch.gep201 = getelementptr inbounds [8 x i32], ptr %switch.table.snd_rme32_proc_read.66.sink, i32 0, i32 %add15.i165
  %69 = ptrtoint ptr %switch.gep201 to i32
  call void @__asan_load4_noabort(i32 %69)
  %switch.load202 = load i32, ptr %switch.gep201, align 4
  br label %snd_rme32_capture_getrate.exit190

snd_rme32_capture_getrate.exit190:                ; preds = %snd_rme32_capture_getrate.exit190.sink.split, %if.else46.snd_rme32_capture_getrate.exit190_crit_edge
  %retval.0.i189 = phi i32 [ -1, %if.else46.snd_rme32_capture_getrate.exit190_crit_edge ], [ %switch.load202, %snd_rme32_capture_getrate.exit190.sink.split ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.53, i32 noundef %retval.0.i189) #10
  br label %if.end55

if.end55:                                         ; preds = %snd_rme32_capture_getrate.exit190, %if.then44
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %71, ptr noundef nonnull @.str.54) #10
  %72 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wcreg, align 4
  %and58 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %74 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buffer, align 4
  %.str.56..str.55 = select i1 %tobool59.not, ptr @.str.56, ptr @.str.55
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %75, ptr noundef nonnull %.str.56..str.55) #10
  %76 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %wcreg, align 4
  %and66 = and i32 %77, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %.str.58.sink = select i1 %tobool67.not, ptr @.str.58, ptr @.str.57
  %78 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %79, ptr noundef nonnull %.str.58.sink) #10
  %80 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wcreg, align 4
  %82 = and i32 %81, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %if.end55.if.end83_crit_edge, label %if.then80

if.end55.if.end83_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then80:                                        ; preds = %if.end55
  %84 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buffer, align 4
  %shr.i192 = lshr i32 %81, 4
  %add.i193 = and i32 %shr.i192, 3
  %switch.tableidx = add nsw i32 %add.i193, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %86 = icmp ult i32 %switch.tableidx, 3
  br i1 %86, label %switch.lookup203, label %if.then80.snd_rme32_playback_getrate.exit_crit_edge

if.then80.snd_rme32_playback_getrate.exit_crit_edge: ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_rme32_playback_getrate.exit

switch.lookup203:                                 ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep204 = getelementptr inbounds [3 x i32], ptr @switch.table.snd_rme32_proc_read.67, i32 0, i32 %switch.tableidx
  %87 = ptrtoint ptr %switch.gep204 to i32
  call void @__asan_load4_noabort(i32 %87)
  %switch.load205 = load i32, ptr %switch.gep204, align 4
  %and7.i = lshr i32 %81, 11
  %and7.lobit.i = and i32 %and7.i, 1
  %cond.i = shl nuw nsw i32 %switch.load205, %and7.lobit.i
  br label %snd_rme32_playback_getrate.exit

snd_rme32_playback_getrate.exit:                  ; preds = %switch.lookup203, %if.then80.snd_rme32_playback_getrate.exit_crit_edge
  %retval.0.i194 = phi i32 [ %cond.i, %switch.lookup203 ], [ -1, %if.then80.snd_rme32_playback_getrate.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef nonnull @.str.53, i32 noundef %retval.0.i194) #10
  br label %if.end83

if.end83:                                         ; preds = %snd_rme32_playback_getrate.exit, %if.end55.if.end83_crit_edge
  %88 = ptrtoint ptr %rcreg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rcreg, align 4
  %and85 = and i32 %89, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %90 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffer, align 4
  %.str.60..str.59 = select i1 %tobool86.not, ptr @.str.60, ptr @.str.59
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %91, ptr noundef nonnull %.str.60..str.59) #10
  %92 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %wcreg, align 4
  %and93 = and i32 %93, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %.str.62.sink = select i1 %tobool94.not, ptr @.str.62, ptr @.str.61
  %94 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %95, ptr noundef nonnull %.str.62.sink) #10
  %96 = ptrtoint ptr %wcreg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wcreg, align 4
  %and101 = and i32 %97, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  %.str.64.sink = select i1 %tobool102.not, ptr @.str.64, ptr @.str.63
  %98 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %99, ptr noundef nonnull %.str.64.sink) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @__param_index, !1, !"__param_index", i1 false, i1 false}
!1 = !{!"../sound/pci/rme32.c", i32 80, i32 1}
!2 = !{ptr @__UNIQUE_ID_indextype242, !1, !"__UNIQUE_ID_indextype242", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_index243, !4, !"__UNIQUE_ID_index243", i1 false, i1 false}
!4 = !{!"../sound/pci/rme32.c", i32 81, i32 1}
!5 = !{ptr @__param_id, !6, !"__param_id", i1 false, i1 false}
!6 = !{!"../sound/pci/rme32.c", i32 82, i32 1}
!7 = !{ptr @__UNIQUE_ID_idtype244, !6, !"__UNIQUE_ID_idtype244", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_id245, !9, !"__UNIQUE_ID_id245", i1 false, i1 false}
!9 = !{!"../sound/pci/rme32.c", i32 83, i32 1}
!10 = !{ptr @__param_enable, !11, !"__param_enable", i1 false, i1 false}
!11 = !{!"../sound/pci/rme32.c", i32 84, i32 1}
!12 = !{ptr @__UNIQUE_ID_enabletype246, !11, !"__UNIQUE_ID_enabletype246", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable247, !14, !"__UNIQUE_ID_enable247", i1 false, i1 false}
!14 = !{!"../sound/pci/rme32.c", i32 85, i32 1}
!15 = !{ptr @__param_fullduplex, !16, !"__param_fullduplex", i1 false, i1 false}
!16 = !{!"../sound/pci/rme32.c", i32 86, i32 1}
!17 = !{ptr @__UNIQUE_ID_fullduplextype248, !16, !"__UNIQUE_ID_fullduplextype248", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_fullduplex249, !19, !"__UNIQUE_ID_fullduplex249", i1 false, i1 false}
!19 = !{!"../sound/pci/rme32.c", i32 87, i32 1}
!20 = !{ptr @__UNIQUE_ID_author250, !21, !"__UNIQUE_ID_author250", i1 false, i1 false}
!21 = !{!"../sound/pci/rme32.c", i32 88, i32 1}
!22 = !{ptr @__UNIQUE_ID_description251, !23, !"__UNIQUE_ID_description251", i1 false, i1 false}
!23 = !{!"../sound/pci/rme32.c", i32 89, i32 1}
!24 = !{ptr @__UNIQUE_ID_file252, !25, !"__UNIQUE_ID_file252", i1 false, i1 false}
!25 = !{!"../sound/pci/rme32.c", i32 90, i32 1}
!26 = !{ptr @__UNIQUE_ID_license253, !25, !"__UNIQUE_ID_license253", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_snd_rme32__254_1936_rme32_driver_init6, !28, !"__initcall__kmod_snd_rme32__254_1936_rme32_driver_init6", i1 false, i1 false}
!28 = !{!"../sound/pci/rme32.c", i32 1936, i32 1}
!29 = !{ptr @__exitcall_rme32_driver_exit, !28, !"__exitcall_rme32_driver_exit", i1 false, i1 false}
!30 = !{ptr @__param_str_index, !1, !"__param_str_index", i1 false, i1 false}
!31 = !{ptr @__param_arr_index, !1, !"__param_arr_index", i1 false, i1 false}
!32 = !{ptr @index, !33, !"index", i1 false, i1 false}
!33 = !{!"../sound/pci/rme32.c", i32 75, i32 12}
!34 = !{ptr @__param_str_id, !6, !"__param_str_id", i1 false, i1 false}
!35 = !{ptr @__param_arr_id, !6, !"__param_arr_id", i1 false, i1 false}
!36 = !{ptr @id, !37, !"id", i1 false, i1 false}
!37 = !{!"../sound/pci/rme32.c", i32 76, i32 14}
!38 = !{ptr @__param_str_enable, !11, !"__param_str_enable", i1 false, i1 false}
!39 = !{ptr @__param_arr_enable, !11, !"__param_arr_enable", i1 false, i1 false}
!40 = !{ptr @enable, !41, !"enable", i1 false, i1 false}
!41 = !{!"../sound/pci/rme32.c", i32 77, i32 13}
!42 = !{ptr @__param_str_fullduplex, !16, !"__param_str_fullduplex", i1 false, i1 false}
!43 = !{ptr @__param_arr_fullduplex, !16, !"__param_arr_fullduplex", i1 false, i1 false}
!44 = !{ptr @fullduplex, !45, !"fullduplex", i1 false, i1 false}
!45 = !{!"../sound/pci/rme32.c", i32 78, i32 13}
!46 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rme32_driver, !48, !"rme32_driver", i1 false, i1 false}
!48 = !{!"../sound/pci/rme32.c", i32 1930, i32 26}
!49 = !{ptr @snd_rme32_ids, !50, !"snd_rme32_ids", i1 false, i1 false}
!50 = !{!"../sound/pci/rme32.c", i32 213, i32 35}
!51 = !{ptr @snd_rme32_probe.dev, !52, !"dev", i1 false, i1 false}
!52 = !{!"../sound/pci/rme32.c", i32 1880, i32 13}
!53 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/rme32.c", i32 1907, i32 23}
!55 = !{ptr @.str.2, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/rme32.c", i32 1910, i32 27}
!57 = !{ptr @.str.3, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/rme32.c", i32 1913, i32 27}
!59 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/rme32.c", i32 1916, i32 27}
!61 = !{ptr @.str.5, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/rme32.c", i32 1919, i32 26}
!63 = !{ptr @snd_rme32_create.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../sound/pci/rme32.c", i32 1306, i32 2}
!65 = !{ptr @.str.6, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.7, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/rme32.c", i32 1312, i32 33}
!68 = !{ptr @.str.8, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/rme32.c", i32 1319, i32 3}
!70 = !{ptr @.str.9, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.11, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @snd_rme32_create._entry, !69, !"_entry", i1 false, i1 false}
!75 = !{ptr @snd_rme32_create._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/rme32.c", i32 1327, i32 3}
!78 = !{ptr @snd_rme32_create._entry.13, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @snd_rme32_create._entry_ptr.15, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/rme32.c", i32 1337, i32 33}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/rme32.c", i32 1366, i32 34}
!84 = !{ptr @snd_rme32_playback_spdif_fd_ops, !85, !"snd_rme32_playback_spdif_fd_ops", i1 false, i1 false}
!85 = !{!"../sound/pci/rme32.c", i32 1241, i32 33}
!86 = !{ptr @snd_rme32_spdif_fd_info, !87, !"snd_rme32_spdif_fd_info", i1 false, i1 false}
!87 = !{!"../sound/pci/rme32.c", i32 355, i32 38}
!88 = !{ptr @snd_rme32_spdif_info, !89, !"snd_rme32_spdif_info", i1 false, i1 false}
!89 = !{!"../sound/pci/rme32.c", i32 302, i32 38}
!90 = !{ptr @hw_constraints_period_bytes, !91, !"hw_constraints_period_bytes", i1 false, i1 false}
!91 = !{!"../sound/pci/rme32.c", i32 822, i32 48}
!92 = !{ptr @period_bytes, !93, !"period_bytes", i1 false, i1 false}
!93 = !{!"../sound/pci/rme32.c", i32 820, i32 27}
!94 = !{ptr @snd_rme32_capture_spdif_fd_ops, !95, !"snd_rme32_capture_spdif_fd_ops", i1 false, i1 false}
!95 = !{!"../sound/pci/rme32.c", i32 1251, i32 33}
!96 = !{ptr @snd_rme32_playback_spdif_ops, !97, !"snd_rme32_playback_spdif_ops", i1 false, i1 false}
!97 = !{!"../sound/pci/rme32.c", i32 1190, i32 33}
!98 = !{ptr @snd_rme32_capture_spdif_ops, !99, !"snd_rme32_capture_spdif_ops", i1 false, i1 false}
!99 = !{!"../sound/pci/rme32.c", i32 1203, i32 33}
!100 = !{ptr @snd_rme32_playback_adat_fd_ops, !101, !"snd_rme32_playback_adat_fd_ops", i1 false, i1 false}
!101 = !{!"../sound/pci/rme32.c", i32 1261, i32 33}
!102 = !{ptr @snd_rme32_adat_fd_info, !103, !"snd_rme32_adat_fd_info", i1 false, i1 false}
!103 = !{!"../sound/pci/rme32.c", i32 382, i32 38}
!104 = !{ptr @snd_rme32_adat_info, !105, !"snd_rme32_adat_info", i1 false, i1 false}
!105 = !{!"../sound/pci/rme32.c", i32 329, i32 38}
!106 = !{ptr @snd_rme32_capture_adat_fd_ops, !107, !"snd_rme32_capture_adat_fd_ops", i1 false, i1 false}
!107 = !{!"../sound/pci/rme32.c", i32 1271, i32 33}
!108 = !{ptr @snd_rme32_playback_adat_ops, !109, !"snd_rme32_playback_adat_ops", i1 false, i1 false}
!109 = !{!"../sound/pci/rme32.c", i32 1215, i32 33}
!110 = !{ptr @snd_rme32_capture_adat_ops, !111, !"snd_rme32_capture_adat_ops", i1 false, i1 false}
!111 = !{!"../sound/pci/rme32.c", i32 1228, i32 33}
!112 = !{ptr @.str.18, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/rme32.c", i32 1799, i32 11}
!114 = !{ptr @.str.19, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/rme32.c", i32 1807, i32 11}
!116 = !{ptr @.str.20, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/rme32.c", i32 1815, i32 11}
!118 = !{ptr @.str.21, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/rme32.c", i32 1823, i32 11}
!120 = !{ptr @.str.22, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/rme32.c", i32 1830, i32 11}
!122 = !{ptr @.str.23, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/rme32.c", i32 1837, i32 11}
!124 = !{ptr @.str.24, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/rme32.c", i32 1844, i32 11}
!126 = !{ptr @snd_rme32_controls, !127, !"snd_rme32_controls", i1 false, i1 false}
!127 = !{!"../sound/pci/rme32.c", i32 1796, i32 38}
!128 = !{ptr @.str.25, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/rme32.c", i32 1575, i32 3}
!130 = !{ptr @.str.26, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/rme32.c", i32 1575, i32 14}
!132 = !{ptr @.str.27, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/rme32.c", i32 1575, i32 25}
!134 = !{ptr @.str.28, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/rme32.c", i32 1575, i32 37}
!136 = !{ptr @snd_rme32_info_inputtype_control.texts, !137, !"texts", i1 false, i1 false}
!137 = !{!"../sound/pci/rme32.c", i32 1574, i32 28}
!138 = !{ptr @.str.29, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/rme32.c", i32 1588, i32 3}
!140 = !{ptr @.str.30, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/rme32.c", i32 1655, i32 41}
!142 = !{ptr @.str.31, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/rme32.c", i32 1656, i32 7}
!144 = !{ptr @.str.32, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/rme32.c", i32 1657, i32 7}
!146 = !{ptr @.str.33, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/rme32.c", i32 1658, i32 7}
!148 = !{ptr @snd_rme32_info_clockmode_control.texts, !149, !"texts", i1 false, i1 false}
!149 = !{!"../sound/pci/rme32.c", i32 1655, i32 28}
!150 = !{ptr @.str.34, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/rme32.c", i32 1526, i32 36}
!152 = !{ptr @.str.35, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/rme32.c", i32 1438, i32 2}
!154 = !{ptr @.str.36, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/rme32.c", i32 1440, i32 2}
!156 = !{ptr @.str.37, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/rme32.c", i32 1442, i32 3}
!158 = !{ptr @.str.38, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/rme32.c", i32 1444, i32 3}
!160 = !{ptr @.str.39, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/rme32.c", i32 1446, i32 3}
!162 = !{ptr @.str.40, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/rme32.c", i32 1448, i32 3}
!164 = !{ptr @.str.41, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/rme32.c", i32 1451, i32 3}
!166 = !{ptr @.str.42, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/rme32.c", i32 1453, i32 3}
!168 = !{ptr @.str.43, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/rme32.c", i32 1456, i32 3}
!170 = !{ptr @.str.44, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/rme32.c", i32 1458, i32 3}
!172 = !{ptr @.str.45, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/rme32.c", i32 1461, i32 2}
!174 = !{ptr @.str.46, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/rme32.c", i32 1464, i32 3}
!176 = !{ptr @.str.47, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/rme32.c", i32 1467, i32 3}
!178 = !{ptr @.str.48, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/rme32.c", i32 1470, i32 3}
!180 = !{ptr @.str.49, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/rme32.c", i32 1473, i32 3}
!182 = !{ptr @.str.50, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/rme32.c", i32 1477, i32 3}
!184 = !{ptr @.str.51, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/rme32.c", i32 1480, i32 4}
!186 = !{ptr @.str.52, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/rme32.c", i32 1482, i32 4}
!188 = !{ptr @.str.53, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/rme32.c", i32 1484, i32 3}
!190 = !{ptr @.str.54, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/rme32.c", i32 1488, i32 2}
!192 = !{ptr @.str.55, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/rme32.c", i32 1490, i32 3}
!194 = !{ptr @.str.56, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/rme32.c", i32 1492, i32 3}
!196 = !{ptr @.str.57, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/rme32.c", i32 1495, i32 3}
!198 = !{ptr @.str.58, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/rme32.c", i32 1497, i32 3}
!200 = !{ptr @.str.59, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/rme32.c", i32 1508, i32 3}
!202 = !{ptr @.str.60, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/rme32.c", i32 1510, i32 3}
!204 = !{ptr @.str.61, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/rme32.c", i32 1513, i32 3}
!206 = !{ptr @.str.62, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/rme32.c", i32 1515, i32 3}
!208 = !{ptr @.str.63, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/rme32.c", i32 1518, i32 3}
!210 = !{ptr @.str.64, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/rme32.c", i32 1520, i32 3}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{!"auto-init"}
!222 = !{i8 0, i8 2}
!223 = !{i64 2154785245}
!224 = !{i64 4308564}
!225 = !{i64 2154785726}
!226 = !{i64 2154805385}
!227 = !{i64 2154805824}
!228 = !{i64 4308982}
!229 = !{i64 2154791278}
!230 = !{i64 2154791514}
!231 = !{i64 2154791953}
!232 = !{i64 2154792387}
!233 = !{i64 2154793080}
!234 = !{i64 2154793316}
!235 = !{i64 2154794196}
!236 = !{i32 0, i32 33}
!237 = !{i64 2154788182}
!238 = !{i64 2154788726}
!239 = !{i64 2154795636}
!240 = !{i64 2154796066}
!241 = !{i64 2154790131}
!242 = !{i64 2154790552}
!243 = !{i64 2154783289}
!244 = !{i64 2154786571}
!245 = !{i64 2154789235}
!246 = !{i64 2154789694}
!247 = !{i64 2154796554}
!248 = !{i64 2154794960}
!249 = !{i64 2154812503}
!250 = !{i64 2154787631}
!251 = !{i64 2154810033}
!252 = !{i64 2154787099}
!253 = !{i64 2154806574}
