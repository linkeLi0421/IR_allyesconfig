; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/emu10k1x.c_pt.bc'
source_filename = "../sound/pci/emu10k1/emu10k1x.c"
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
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
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
%struct.emu10k1x = type { ptr, ptr, i32, i32, i8, i32, i16, %struct.spinlock, %struct.spinlock, ptr, ptr, [3 x %struct.emu10k1x_voice], %struct.emu10k1x_voice, [3 x i32], ptr, %struct.emu10k1x_midi }
%struct.emu10k1x_voice = type { ptr, i32, i32, ptr }
%struct.emu10k1x_midi = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, ptr }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.emu10k1x_pcm = type { ptr, ptr, ptr, i16 }
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
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.75, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.75 = type { i32, [28 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.77, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { %struct.anon.80, [40 x i8] }
%struct.anon.80 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.81, [128 x i8] }
%union.anon.81 = type { %union.anon.83 }
%union.anon.83 = type { [64 x i64] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.86 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [57 x i8] c"snd_emu10k1x.author=Francisco Moraes <fmoraes@nc.rr.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [34 x i8] c"snd_emu10k1x.description=EMU10K1X\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [49 x i8] c"snd_emu10k1x.file=sound/pci/emu10k1/snd-emu10k1x\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [25 x i8] c"snd_emu10k1x.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [19 x i8] c"snd_emu10k1x.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [41 x i8] c"snd_emu10k1x.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [64 x i8] c"snd_emu10k1x.parm=index:Index value for the EMU10K1X soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [16 x i8] c"snd_emu10k1x.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [40 x i8] c"snd_emu10k1x.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [59 x i8] c"snd_emu10k1x.parm=id:ID string for the EMU10K1X soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [20 x i8] c"snd_emu10k1x.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [43 x i8] c"snd_emu10k1x.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [56 x i8] c"snd_emu10k1x.parm=enable:Enable the EMU10K1X soundcard.\00", section ".modinfo", align 1
@__initcall__kmod_snd_emu10k1x__252_1571_emu10k1x_driver_init6 = internal global ptr @emu10k1x_driver_init, section ".initcall6.init", align 4
@emu10k1x_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_emu10k1x_ids, ptr @snd_emu10k1x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_emu10k1x_driver_exit = internal global ptr @emu10k1x_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_emu10k1x\00", [19 x i8] zeroinitializer }, align 32
@snd_emu10k1x_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4354, i32 6, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_emu10k1x_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EMU10K1X\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Dell Sound Blaster Live!\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%lx irq %i\00", [45 x i8] zeroinitializer }, align 32
@snd_emu10k1x_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 876, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error to set 28bit mask DMA\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_emu10k1x_create\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/pci/emu10k1/emu10k1x.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_emu10k1x_create._entry_ptr = internal global ptr @snd_emu10k1x_create._entry, section ".printk_index", align 4
@snd_emu10k1x_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->emu_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_emu10k1x_create.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->voice_lock\00", [46 x i8] zeroinitializer }, align 32
@snd_emu10k1x_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 894, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot grab irq %d\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_emu10k1x_create._entry_ptr.14 = internal global ptr @snd_emu10k1x_create._entry.12, section ".printk_index", align 4
@snd_emu10k1x_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 912, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Model %04x Rev %08x Serial %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_emu10k1x_create._entry_ptr.18 = internal global ptr @snd_emu10k1x_create._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emu10k1x\00", [23 x i8] zeroinitializer }, align 32
@snd_emu10k1x_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_emu10k1x_playback_open, ptr @snd_emu10k1x_playback_close, ptr null, ptr @snd_emu10k1x_pcm_hw_params, ptr @snd_emu10k1x_pcm_hw_free, ptr @snd_emu10k1x_pcm_prepare, ptr @snd_emu10k1x_pcm_trigger, ptr null, ptr @snd_emu10k1x_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_emu10k1x_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_emu10k1x_pcm_open_capture, ptr @snd_emu10k1x_pcm_close_capture, ptr null, ptr @snd_emu10k1x_pcm_hw_params_capture, ptr @snd_emu10k1x_pcm_hw_free_capture, ptr @snd_emu10k1x_pcm_prepare_capture, ptr @snd_emu10k1x_pcm_trigger_capture, ptr null, ptr @snd_emu10k1x_pcm_pointer_capture, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EMU10K1X Front\00", [17 x i8] zeroinitializer }, align 32
@snd_pcm_std_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EMU10K1X Rear\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EMU10K1X Center/LFE\00", [44 x i8] zeroinitializer }, align 32
@snd_emu10k1x_playback_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 32768, i32 64, i32 16384, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_emu10k1x_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 32768, i32 64, i32 16384, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@surround_map = internal constant { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [32 x i8] } { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 5, i8 6, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@clfe_map = internal constant { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [32 x i8] } { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 7, i8 8, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@snd_emu10k1x_ac97.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_emu10k1x_ac97_write, ptr @snd_emu10k1x_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_emu10k1x_spdif_mask_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.25, i32 0, i32 1, i32 3, ptr @snd_emu10k1x_spdif_info, ptr @snd_emu10k1x_spdif_get_mask, ptr null, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1x_shared_spdif = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_emu10k1x_shared_spdif_get, ptr @snd_emu10k1x_shared_spdif_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_emu10k1x_spdif_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 3, ptr @snd_emu10k1x_spdif_info, ptr @snd_emu10k1x_spdif_get, ptr @snd_emu10k1x_spdif_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Analog/Digital Output Jack\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EMU10K1X MPU-401 (UART)\00", [40 x i8] zeroinitializer }, align 32
@emu10k1x_midi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&midi->open_lock\00", [47 x i8] zeroinitializer }, align 32
@emu10k1x_midi_init.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&midi->input_lock\00", [46 x i8] zeroinitializer }, align 32
@emu10k1x_midi_init.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&midi->output_lock\00", [45 x i8] zeroinitializer }, align 32
@snd_emu10k1x_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_emu10k1x_midi_output_open, ptr @snd_emu10k1x_midi_output_close, ptr @snd_emu10k1x_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_emu10k1x_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_emu10k1x_midi_input_open, ptr @snd_emu10k1x_midi_input_close, ptr @snd_emu10k1x_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_emu10k1x_midi_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 1268, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"midi_cmd: 0x%x failed at 0x%lx (status = 0x%x, data = 0x%x)!!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_emu10k1x_midi_cmd\00", [42 x i8] zeroinitializer }, align 32
@snd_emu10k1x_midi_cmd._entry_ptr = internal global ptr @snd_emu10k1x_midi_cmd._entry, section ".printk_index", align 4
@mpu401_clear_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 1190, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cmd: clear rx timeout (status = 0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mpu401_clear_rx\00", [16 x i8] zeroinitializer }, align 32
@mpu401_clear_rx._entry_ptr = internal global ptr @mpu401_clear_rx._entry, section ".printk_index", align 4
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emu10k1x_regs\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Registers:\0A\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Register %02X: %08lX\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0ARegisters\0A\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%02X: %08lX %08lX %08lX\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%02X: %08lX\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%x %x %x\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"emu10k1x_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1565, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 36, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 37, i32 14 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 38, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1571, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"snd_emu10k1x_ids\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1558, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1497, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1543, i32 23 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1544, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1545, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 876, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 884, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 885, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 894, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 911, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 823, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"snd_emu10k1x_playback_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 536, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant [25 x i8] c"snd_emu10k1x_capture_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 682, i32 33 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 843, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 847, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 851, i32 21 }
@___asan_gen_.141 = private unnamed_addr constant [25 x i8] c"snd_emu10k1x_playback_hw\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 241, i32 38 }
@___asan_gen_.144 = private unnamed_addr constant [24 x i8] c"snd_emu10k1x_capture_hw\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 260, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant [13 x i8] c"surround_map\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 801, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"clfe_map\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 807, i32 40 }
@___asan_gen_.153 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 723, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant [32 x i8] c"snd_emu10k1x_spdif_mask_control\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1108, i32 38 }
@___asan_gen_.159 = private unnamed_addr constant [26 x i8] c"snd_emu10k1x_shared_spdif\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1049, i32 38 }
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"snd_emu10k1x_spdif_control\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1118, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1112, i32 18 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1052, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1121, i32 18 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1481, i32 41 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1461, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1462, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1463, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [25 x i8] c"snd_emu10k1x_midi_output\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1429, i32 37 }
@___asan_gen_.198 = private unnamed_addr constant [24 x i8] c"snd_emu10k1x_midi_input\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1436, i32 37 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1264, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1188, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1009, i32 34 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 971, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 976, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 978, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 984, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 986, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [32 x i8] c"../sound/pci/emu10k1/emu10k1x.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 999, i32 20 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_emu10k1x_driver_exit, ptr @__initcall__kmod_snd_emu10k1x__252_1571_emu10k1x_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @emu10k1x_driver_exit, ptr @mpu401_clear_rx._entry, ptr @mpu401_clear_rx._entry_ptr, ptr @snd_emu10k1x_create._entry, ptr @snd_emu10k1x_create._entry.12, ptr @snd_emu10k1x_create._entry.15, ptr @snd_emu10k1x_create._entry_ptr, ptr @snd_emu10k1x_create._entry_ptr.14, ptr @snd_emu10k1x_create._entry_ptr.18, ptr @snd_emu10k1x_midi_cmd._entry, ptr @snd_emu10k1x_midi_cmd._entry_ptr, ptr @emu10k1x_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @snd_emu10k1x_ids, ptr @snd_emu10k1x_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_emu10k1x_create.__key, ptr @.str.9, ptr @snd_emu10k1x_create.__key.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @snd_emu10k1x_playback_ops, ptr @snd_emu10k1x_capture_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @snd_emu10k1x_playback_hw, ptr @snd_emu10k1x_capture_hw, ptr @surround_map, ptr @clfe_map, ptr @snd_emu10k1x_ac97.ops, ptr @snd_emu10k1x_spdif_mask_control, ptr @snd_emu10k1x_shared_spdif, ptr @snd_emu10k1x_spdif_control, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @emu10k1x_midi_init.__key, ptr @.str.29, ptr @emu10k1x_midi_init.__key.30, ptr @.str.31, ptr @emu10k1x_midi_init.__key.32, ptr @.str.33, ptr @snd_emu10k1x_midi_output, ptr @snd_emu10k1x_midi_input, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu10k1x_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_create.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surround_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clfe_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_ac97.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_spdif_mask_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_shared_spdif to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_spdif_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu10k1x_midi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu10k1x_midi_init.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu10k1x_midi_init.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1x_midi_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu401_clear_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emu10k1x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @emu10k1x_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emu10k1x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @emu10k1x_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #11
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !155
  %1 = load i32, ptr @snd_emu10k1x_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_emu10k1x_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 380, ptr noundef nonnull %card) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 268435455) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %dma_set_mask_and_coherent.exit.thread.i, label %dma_set_mask_and_coherent.exit.i

dma_set_mask_and_coherent.exit.thread.i:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 268435455) #11
  br label %if.end5.i

dma_set_mask_and_coherent.exit.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %do.end.i, label %dma_set_mask_and_coherent.exit.i.if.end5.i_crit_edge

dma_set_mask_and_coherent.exit.i.if.end5.i_crit_edge: ; preds = %dma_set_mask_and_coherent.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

do.end.i:                                         ; preds = %dma_set_mask_and_coherent.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev4.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %12 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end5.i:                                        ; preds = %dma_set_mask_and_coherent.exit.i.if.end5.i_crit_edge, %dma_set_mask_and_coherent.exit.thread.i
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %11, align 4
  %pci7.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pci7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pci, ptr %pci7.i, align 4
  %irq.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %irq.i, align 4
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %emu_lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @snd_emu10k1x_create.__key, i16 noundef signext 3) #11
  %voice_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %voice_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @snd_emu10k1x_create.__key.10, i16 noundef signext 3) #11
  %call16.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end5.i.cleanup_crit_edge, label %if.end19.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19.i:                                       ; preds = %if.end5.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %17 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 2
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %port.i, align 4
  %irq21.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %20 = ptrtoint ptr %irq21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq21.i, align 4
  %call.i132.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull @snd_emu10k1x_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i)
  %tobool.not.i = icmp eq i32 %call.i132.i, 0
  br i1 %tobool.not.i, label %if.end29.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev27.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %22 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev27.i, align 8
  %24 = ptrtoint ptr %irq21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq21.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.13, i32 noundef %25) #14
  br label %cleanup

if.end29.i:                                       ; preds = %if.end19.i
  %26 = ptrtoint ptr %irq21.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq21.i, align 4
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %29 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %30 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @snd_emu10k1x_free, ptr %private_free.i, align 4
  %call.i133.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 4096) #11
  %dma_buffer.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 14
  %31 = ptrtoint ptr %dma_buffer.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i133.i, ptr %dma_buffer.i, align 4
  %tobool36.not.i = icmp eq ptr %call.i133.i, null
  br i1 %tobool36.not.i, label %if.end29.i.cleanup_crit_edge, label %if.end11

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end29.i
  call void @pci_set_master(ptr noundef %pci) #11
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %32 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %revision.i, align 4
  %revision39.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 4
  %34 = ptrtoint ptr %revision39.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %revision39.i, align 4
  %serial.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 5
  %call40.i = call i32 @pci_read_config_dword(ptr noundef %pci, i32 noundef 44, ptr noundef %serial.i) #11
  %model.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 6
  %call41.i = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef 46, ptr noundef %model.i) #11
  %dev45.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %35 = ptrtoint ptr %dev45.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev45.i, align 8
  %37 = ptrtoint ptr %model.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %model.i, align 4
  %conv.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %revision39.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %revision39.i, align 4
  %conv48.i = zext i8 %40 to i32
  %41 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %serial.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.16, i32 noundef %conv.i, i32 noundef %conv48.i, i32 noundef %42) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !157
  call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.i, align 4
  %add.i = add i32 %44, 12
  %and.i = and i32 %add.i, 1048575
  %add54.i = or i32 %and.i, -18874368
  %45 = inttoptr i32 %add54.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 0) #11, !srcloc !158
  %arrayidx58.i = getelementptr %struct.emu10k1x, ptr %11, i32 0, i32 11, i32 0
  %46 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %11, ptr %arrayidx58.i, align 4
  %number.i = getelementptr %struct.emu10k1x, ptr %11, i32 0, i32 11, i32 0, i32 1
  %47 = ptrtoint ptr %number.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %number.i, align 4
  %arrayidx58.1.i = getelementptr %struct.emu10k1x, ptr %11, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %arrayidx58.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %11, ptr %arrayidx58.1.i, align 4
  %number.1.i = getelementptr %struct.emu10k1x, ptr %11, i32 0, i32 11, i32 1, i32 1
  %49 = ptrtoint ptr %number.1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %number.1.i, align 4
  %arrayidx58.2.i = getelementptr %struct.emu10k1x, ptr %11, i32 0, i32 11, i32 2
  %50 = ptrtoint ptr %arrayidx58.2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %11, ptr %arrayidx58.2.i, align 4
  %number.2.i = getelementptr %struct.emu10k1x, ptr %11, i32 0, i32 11, i32 2, i32 1
  %51 = ptrtoint ptr %number.2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %number.2.i, align 4
  %spdif_bits.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 13
  %52 = ptrtoint ptr %spdif_bits.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 34640388, ptr %spdif_bits.i, align 4
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port.i, align 4
  %and.i.i = and i32 %54, 1048575
  %add8.i.i = or i32 %and.i.i, -18874368
  %55 = inttoptr i32 %add8.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 16896) #11, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port.i, align 4
  %add14.i.i = add i32 %57, 4
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %58 = inttoptr i32 %add16.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %58, i32 76681218) #11, !srcloc !158
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i.i) #11
  %arrayidx63.i = getelementptr %struct.emu10k1x, ptr %11, i32 0, i32 13, i32 1
  %59 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 34640388, ptr %arrayidx63.i, align 4
  %call2.i135.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  call void @arm_heavy_mb() #11
  %60 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port.i, align 4
  %and.i137.i = and i32 %61, 1048575
  %add8.i138.i = or i32 %and.i137.i, -18874368
  %62 = inttoptr i32 %add8.i138.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %62, i32 17152) #11, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @arm_heavy_mb() #11
  %63 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port.i, align 4
  %add14.i139.i = add i32 %64, 4
  %and15.i140.i = and i32 %add14.i139.i, 1048575
  %add16.i141.i = or i32 %and15.i140.i, -18874368
  %65 = inttoptr i32 %add16.i141.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %65, i32 76681218) #11, !srcloc !158
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i135.i) #11
  %arrayidx65.i = getelementptr %struct.emu10k1x, ptr %11, i32 0, i32 13, i32 2
  %66 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 34640388, ptr %arrayidx65.i, align 4
  %call2.i143.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  call void @arm_heavy_mb() #11
  %67 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port.i, align 4
  %and.i145.i = and i32 %68, 1048575
  %add8.i146.i = or i32 %and.i145.i, -18874368
  %69 = inttoptr i32 %add8.i146.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %69, i32 17408) #11, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @arm_heavy_mb() #11
  %70 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port.i, align 4
  %add14.i147.i = add i32 %71, 4
  %and15.i148.i = and i32 %add14.i147.i, 1048575
  %add16.i149.i = or i32 %and15.i148.i, -18874368
  %72 = inttoptr i32 %add16.i149.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %72, i32 76681218) #11, !srcloc !158
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i143.i) #11
  %call2.i151.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  call void @arm_heavy_mb() #11
  %73 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port.i, align 4
  %and.i153.i = and i32 %74, 1048575
  %add8.i154.i = or i32 %and.i153.i, -18874368
  %75 = inttoptr i32 %add8.i154.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %75, i32 17664) #11, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @arm_heavy_mb() #11
  %76 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port.i, align 4
  %add14.i155.i = add i32 %77, 4
  %and15.i156.i = and i32 %add14.i155.i, 1048575
  %add16.i157.i = or i32 %and15.i156.i, -18874368
  %78 = inttoptr i32 %add16.i157.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %78, i32 458752) #11, !srcloc !158
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i151.i) #11
  %call2.i159.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  call void @arm_heavy_mb() #11
  %79 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port.i, align 4
  %and.i161.i = and i32 %80, 1048575
  %add8.i162.i = or i32 %and.i161.i, -18874368
  %81 = inttoptr i32 %add8.i162.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %81, i32 16640) #11, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @arm_heavy_mb() #11
  %82 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port.i, align 4
  %add14.i163.i = add i32 %83, 4
  %and15.i164.i = and i32 %add14.i163.i, 1048575
  %add16.i165.i = or i32 %and15.i164.i, -18874368
  %84 = inttoptr i32 %add16.i165.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %84, i32 1056964864) #11, !srcloc !158
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i159.i) #11
  %call2.i167.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !161
  call void @arm_heavy_mb() #11
  %85 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port.i, align 4
  %add.i.i = add i32 %86, 24
  %and.i169.i = and i32 %add.i.i, 1048575
  %add8.i170.i = or i32 %and.i169.i, -18874368
  %87 = inttoptr i32 %add8.i170.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %87, i32 -2146435072) #11, !srcloc !158
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i167.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !162
  call void @arm_heavy_mb() #11
  %88 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port.i, align 4
  %add70.i = add i32 %89, 20
  %and71.i = and i32 %add70.i, 1048575
  %add72.i = or i32 %and71.i, -18874368
  %90 = inttoptr i32 %add72.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %90, i32 150994944) #11, !srcloc !158
  %call12 = call fastcc i32 @snd_emu10k1x_pcm(ptr noundef %11, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = call fastcc i32 @snd_emu10k1x_pcm(ptr noundef %11, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = call fastcc i32 @snd_emu10k1x_pcm(ptr noundef %11, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #11
  %91 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #11
  %92 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %11, align 4
  %call.i78 = call i32 @snd_ac97_bus(ptr noundef %93, i32 noundef 0, ptr noundef nonnull @snd_emu10k1x_ac97.ops, ptr noundef null, ptr noundef nonnull %pbus.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp.i79 = icmp slt i32 %call.i78, 0
  br i1 %cmp.i79, label %snd_emu10k1x_ac97.exit.thread, label %snd_emu10k1x_ac97.exit

snd_emu10k1x_ac97.exit.thread:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #11
  br label %cleanup

snd_emu10k1x_ac97.exit:                           ; preds = %if.end23
  %94 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  %95 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pbus.i, align 4
  %no_vra.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %no_vra.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load.i = load i8, ptr %no_vra.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %no_vra.i, align 2
  %98 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %99 = call ptr @memset(ptr %98, i32 0, i32 20)
  %100 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %11, ptr %ac97.i, align 4
  %101 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 512, ptr %94, align 4
  %ac971.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 9
  %call2.i = call i32 @snd_ac97_mixer(ptr noundef %96, ptr noundef nonnull %ac97.i, ptr noundef %ac971.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp25 = icmp slt i32 %call2.i, 0
  br i1 %cmp25, label %snd_emu10k1x_ac97.exit.cleanup_crit_edge, label %if.end27

snd_emu10k1x_ac97.exit.cleanup_crit_edge:         ; preds = %snd_emu10k1x_ac97.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %snd_emu10k1x_ac97.exit
  %call28 = call fastcc i32 @snd_emu10k1x_mixer(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %call32 = call fastcc i32 @snd_emu10k1x_midi(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %102 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %11, align 4
  %call.i82 = call i32 @snd_card_rw_proc_new(ptr noundef %103, ptr noundef nonnull @.str.38, ptr noundef %11, ptr noundef nonnull @snd_emu10k1x_proc_reg_read, ptr noundef nonnull @snd_emu10k1x_proc_reg_write) #11
  %104 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %105, i32 0, i32 2
  %106 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 9)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %105, i32 0, i32 3
  %107 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 25)
  %longname = getelementptr inbounds %struct.snd_card, ptr %105, i32 0, i32 4
  %108 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port.i, align 4
  %110 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq.i, align 4
  %call43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname, i32 noundef %109, i32 noundef %111)
  %112 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %card, align 4
  %call44 = call i32 @snd_card_register(ptr noundef %113) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end35.cleanup_crit_edge, label %if.end47

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %116 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %driver_data.i.i, align 4
  %117 = load i32, ptr @snd_emu10k1x_probe.dev, align 4
  %inc48 = add i32 %117, 1
  store i32 %inc48, ptr @snd_emu10k1x_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %snd_emu10k1x_ac97.exit.cleanup_crit_edge, %snd_emu10k1x_ac97.exit.thread, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %do.end26.i, %if.end5.i.cleanup_crit_edge, %do.end.i, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call2.i, %snd_emu10k1x_ac97.exit.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call44, %if.end35.cleanup_crit_edge ], [ %call.i78, %snd_emu10k1x_ac97.exit.thread ], [ -12, %if.end29.i.cleanup_crit_edge ], [ %call16.i, %if.end5.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -16, %do.end26.i ], [ -6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_emu10k1x_pcm(ptr noundef %emu, i32 noundef %device) unnamed_addr #2 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #11
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %device)
  %cmp = icmp eq i32 %device, 0
  %spec.store.select = zext i1 %cmp to i32
  %1 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %emu, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %device, i32 noundef 1, i32 noundef %spec.store.select, ptr noundef nonnull %pcm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %entry
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %emu, ptr %private_data, align 8
  %6 = zext i32 %device to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %device, label %if.end3.sw.epilog_crit_edge [
    i32 0, label %sw.epilog.thread
    i32 1, label %if.end3.sw.bb4_crit_edge
    i32 2, label %if.end3.sw.bb4_crit_edge30
  ]

if.end3.sw.bb4_crit_edge30:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

if.end3.sw.bb4_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_emu10k1x_playback_ops) #11
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @snd_emu10k1x_capture_ops) #11
  %9 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm, align 4
  %info_flags29 = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %info_flags29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %info_flags29, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %name, ptr @.str.20, i32 15)
  br label %sw.epilog15

sw.bb4:                                           ; preds = %if.end3.sw.bb4_crit_edge, %if.end3.sw.bb4_crit_edge30
  call void @snd_pcm_set_ops(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @snd_emu10k1x_playback_ops) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end3.sw.epilog_crit_edge
  %13 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %info_flags, align 8
  %16 = zext i32 %device to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %device, label %sw.epilog.sw.epilog15_crit_edge [
    i32 2, label %sw.bb11
    i32 1, label %sw.bb7
  ]

sw.epilog.sw.epilog15_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog15

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %name8 = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 7
  %17 = call ptr @memcpy(ptr %name8, ptr @.str.21, i32 14)
  br label %sw.epilog15

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %name12 = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %name12, ptr @.str.22, i32 20)
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb11, %sw.bb7, %sw.epilog.sw.epilog15_crit_edge, %sw.epilog.thread
  %19 = phi ptr [ %14, %sw.epilog.sw.epilog15_crit_edge ], [ %14, %sw.bb11 ], [ %14, %sw.bb7 ], [ %10, %sw.epilog.thread ]
  %map.0 = phi ptr [ null, %sw.epilog.sw.epilog15_crit_edge ], [ @clfe_map, %sw.bb11 ], [ @surround_map, %sw.bb7 ], [ @snd_pcm_std_chmaps, %sw.epilog.thread ]
  %pcm16 = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 10
  %20 = ptrtoint ptr %pcm16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %pcm16, align 4
  %pci = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 1
  %21 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call17 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %19, i32 noundef 2, ptr noundef %dev, i32 noundef 32768, i32 noundef 32768) #11
  %23 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcm, align 4
  %call18 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %24, i32 noundef 0, ptr noundef %map.0, i32 noundef 2, i32 noundef 4, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %sw.epilog15 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_emu10k1x_mixer(ptr noundef %emu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1x_spdif_mask_control, ptr noundef %emu) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1x_shared_spdif, ptr noundef %emu) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_emu10k1x_spdif_control, ptr noundef %emu) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call14) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_emu10k1x_midi(ptr noundef %emu) unnamed_addr #2 align 64 {
entry:
  %rmidi.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi.i) #11
  %0 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi.i, align 4, !annotation !155
  %1 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %emu, align 4
  %call.i = call i32 @snd_rawmidi_new(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %emu10k1x_midi_init.exit.thread, label %if.end

emu10k1x_midi_init.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %midi1 = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15
  %3 = ptrtoint ptr %midi1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %emu, ptr %midi1, align 4
  %open_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 7
  call void @__raw_spin_lock_init(ptr noundef %open_lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @emu10k1x_midi_init.__key, i16 noundef signext 3) #11
  %input_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 5
  call void @__raw_spin_lock_init(ptr noundef %input_lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @emu10k1x_midi_init.__key.30, i16 noundef signext 3) #11
  %output_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 6
  call void @__raw_spin_lock_init(ptr noundef %output_lock.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @emu10k1x_midi_init.__key.32, i16 noundef signext 3) #11
  %4 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmidi.i, align 4
  %name11.i = getelementptr inbounds %struct.snd_rawmidi, ptr %5, i32 0, i32 5
  %6 = call ptr @memcpy(ptr %name11.i, ptr @.str.28, i32 24)
  call void @snd_rawmidi_set_ops(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @snd_emu10k1x_midi_output) #11
  %7 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmidi.i, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @snd_emu10k1x_midi_input) #11
  %9 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmidi.i, align 4
  %info_flags.i = getelementptr inbounds %struct.snd_rawmidi, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info_flags.i, align 8
  %or.i = or i32 %12, 7
  store i32 %or.i, ptr %info_flags.i, align 8
  %private_data.i = getelementptr inbounds %struct.snd_rawmidi, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %midi1, ptr %private_data.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_rawmidi, ptr %10, i32 0, i32 10
  %14 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @snd_emu10k1x_midi_free, ptr %private_free.i, align 8
  %rmidi13.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %rmidi13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %10, ptr %rmidi13.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #11
  %tx_enable = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 8
  %16 = ptrtoint ptr %tx_enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %tx_enable, align 4
  %rx_enable = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 9
  %17 = ptrtoint ptr %rx_enable to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %rx_enable, align 4
  %port = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 10
  %18 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 71, ptr %port, align 4
  %ipr_tx = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 11
  %19 = ptrtoint ptr %ipr_tx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ipr_tx, align 4
  %ipr_rx = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 12
  %20 = ptrtoint ptr %ipr_rx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %ipr_rx, align 4
  %interrupt = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 13
  %21 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @snd_emu10k1x_midi_interrupt, ptr %interrupt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %emu10k1x_midi_init.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %emu10k1x_midi_init.exit.thread ]
  ret i32 %retval.0
}

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
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.emu10k1x, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #11, !srcloc !163
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %4, 589824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %if.end
  %use = getelementptr inbounds %struct.emu10k1x, ptr %dev_id, i32 0, i32 12, i32 2
  %5 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  %epcm1.i = getelementptr inbounds %struct.emu10k1x, ptr %dev_id, i32 0, i32 12, i32 3
  %7 = ptrtoint ptr %epcm1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %epcm1.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then7.if.end9_crit_edge, label %if.end.i

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i:                                         ; preds = %if.then7
  %substream.i = getelementptr inbounds %struct.emu10k1x_pcm, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %substream.i, align 4
  %cmp.i = icmp eq ptr %10, null
  br i1 %cmp.i, label %if.end.i.if.end9_crit_edge, label %if.end3.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %10) #11
  br label %if.end9

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %dev_id, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add.i = add i32 %12, 12
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add5.i to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %15 = and i32 %14, -2305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add14.i = add i32 %17, 12
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %18 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end3.i, %if.end.i.if.end9_crit_edge, %if.then7.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %emu_lock.i68 = getelementptr inbounds %struct.emu10k1x, ptr %dev_id, i32 0, i32 7
  %and10 = and i32 %4, 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  %use13 = getelementptr inbounds %struct.emu10k1x, ptr %dev_id, i32 0, i32 11, i32 0, i32 2
  %19 = ptrtoint ptr %use13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.then12
  %epcm1.i61 = getelementptr inbounds %struct.emu10k1x, ptr %dev_id, i32 0, i32 11, i32 0, i32 3
  %21 = ptrtoint ptr %epcm1.i61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %epcm1.i61, align 4
  %tobool.not.i62 = icmp eq ptr %22, null
  br i1 %tobool.not.i62, label %if.then15.if.end18_crit_edge, label %if.end.i65

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end.i65:                                       ; preds = %if.then15
  %substream.i63 = getelementptr inbounds %struct.emu10k1x_pcm, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %substream.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %substream.i63, align 4
  %cmp.i64 = icmp eq ptr %24, null
  br i1 %cmp.i64, label %if.end.i65.if.end18_crit_edge, label %if.end3.i66

if.end.i65.if.end18_crit_edge:                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end3.i66:                                      ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %24) #11
  br label %if.end18

if.else16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i68) #11
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port, align 4
  %add.i71 = add i32 %26, 12
  %and.i72 = and i32 %add.i71, 1048575
  %add5.i73 = or i32 %and.i72, -18874368
  %27 = inttoptr i32 %add5.i73 to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %29 = and i32 %28, -589825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add14.i75 = add i32 %31, 12
  %and15.i76 = and i32 %add14.i75, 1048575
  %add16.i77 = or i32 %and15.i76, -18874368
  %32 = inttoptr i32 %add16.i77 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 %29) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i68, i32 noundef %call2.i69) #11
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.end3.i66, %if.end.i65.if.end18_crit_edge, %if.then15.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %and10.1 = and i32 %4, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.1)
  %tobool11.not.1 = icmp eq i32 %and10.1, 0
  br i1 %tobool11.not.1, label %if.end18.if.end18.1_crit_edge, label %if.then12.1

if.end18.if.end18.1_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.1

if.then12.1:                                      ; preds = %if.end18
  %use13.1 = getelementptr %struct.emu10k1x, ptr %dev_id, i32 0, i32 11, i32 1, i32 2
  %33 = ptrtoint ptr %use13.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %use13.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool14.not.1 = icmp eq i32 %34, 0
  br i1 %tobool14.not.1, label %if.else16.1, label %if.then15.1

if.then15.1:                                      ; preds = %if.then12.1
  %epcm1.i61.1 = getelementptr %struct.emu10k1x, ptr %dev_id, i32 0, i32 11, i32 1, i32 3
  %35 = ptrtoint ptr %epcm1.i61.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %epcm1.i61.1, align 4
  %tobool.not.i62.1 = icmp eq ptr %36, null
  br i1 %tobool.not.i62.1, label %if.then15.1.if.end18.1_crit_edge, label %if.end.i65.1

if.then15.1.if.end18.1_crit_edge:                 ; preds = %if.then15.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.1

if.end.i65.1:                                     ; preds = %if.then15.1
  %substream.i63.1 = getelementptr inbounds %struct.emu10k1x_pcm, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %substream.i63.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %substream.i63.1, align 4
  %cmp.i64.1 = icmp eq ptr %38, null
  br i1 %cmp.i64.1, label %if.end.i65.1.if.end18.1_crit_edge, label %if.end3.i66.1

if.end.i65.1.if.end18.1_crit_edge:                ; preds = %if.end.i65.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.1

if.end3.i66.1:                                    ; preds = %if.end.i65.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %38) #11
  br label %if.end18.1

if.else16.1:                                      ; preds = %if.then12.1
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i69.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i68) #11
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add.i71.1 = add i32 %40, 12
  %and.i72.1 = and i32 %add.i71.1, 1048575
  %add5.i73.1 = or i32 %and.i72.1, -18874368
  %41 = inttoptr i32 %add5.i73.1 to ptr
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %41) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %43 = and i32 %42, -1179649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %add14.i75.1 = add i32 %45, 12
  %and15.i76.1 = and i32 %add14.i75.1, 1048575
  %add16.i77.1 = or i32 %and15.i76.1, -18874368
  %46 = inttoptr i32 %add16.i77.1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %43) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i68, i32 noundef %call2.i69.1) #11
  br label %if.end18.1

if.end18.1:                                       ; preds = %if.else16.1, %if.end3.i66.1, %if.end.i65.1.if.end18.1_crit_edge, %if.then15.1.if.end18.1_crit_edge, %if.end18.if.end18.1_crit_edge
  %and10.2 = and i32 %4, 9216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.2)
  %tobool11.not.2 = icmp eq i32 %and10.2, 0
  br i1 %tobool11.not.2, label %if.end18.1.if.end18.2_crit_edge, label %if.then12.2

if.end18.1.if.end18.2_crit_edge:                  ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.2

if.then12.2:                                      ; preds = %if.end18.1
  %use13.2 = getelementptr %struct.emu10k1x, ptr %dev_id, i32 0, i32 11, i32 2, i32 2
  %47 = ptrtoint ptr %use13.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %use13.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool14.not.2 = icmp eq i32 %48, 0
  br i1 %tobool14.not.2, label %if.else16.2, label %if.then15.2

if.then15.2:                                      ; preds = %if.then12.2
  %epcm1.i61.2 = getelementptr %struct.emu10k1x, ptr %dev_id, i32 0, i32 11, i32 2, i32 3
  %49 = ptrtoint ptr %epcm1.i61.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %epcm1.i61.2, align 4
  %tobool.not.i62.2 = icmp eq ptr %50, null
  br i1 %tobool.not.i62.2, label %if.then15.2.if.end18.2_crit_edge, label %if.end.i65.2

if.then15.2.if.end18.2_crit_edge:                 ; preds = %if.then15.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.2

if.end.i65.2:                                     ; preds = %if.then15.2
  %substream.i63.2 = getelementptr inbounds %struct.emu10k1x_pcm, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %substream.i63.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %substream.i63.2, align 4
  %cmp.i64.2 = icmp eq ptr %52, null
  br i1 %cmp.i64.2, label %if.end.i65.2.if.end18.2_crit_edge, label %if.end3.i66.2

if.end.i65.2.if.end18.2_crit_edge:                ; preds = %if.end.i65.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.2

if.end3.i66.2:                                    ; preds = %if.end.i65.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %52) #11
  br label %if.end18.2

if.else16.2:                                      ; preds = %if.then12.2
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i69.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i68) #11
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %add.i71.2 = add i32 %54, 12
  %and.i72.2 = and i32 %add.i71.2, 1048575
  %add5.i73.2 = or i32 %and.i72.2, -18874368
  %55 = inttoptr i32 %add5.i73.2 to ptr
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %55) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %57 = and i32 %56, -2359297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %add14.i75.2 = add i32 %59, 12
  %and15.i76.2 = and i32 %add14.i75.2, 1048575
  %add16.i77.2 = or i32 %and15.i76.2, -18874368
  %60 = inttoptr i32 %add16.i77.2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %60, i32 %57) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i68, i32 noundef %call2.i69.2) #11
  br label %if.end18.2

if.end18.2:                                       ; preds = %if.else16.2, %if.end3.i66.2, %if.end.i65.2.if.end18.2_crit_edge, %if.then15.2.if.end18.2_crit_edge, %if.end18.1.if.end18.2_crit_edge
  %and19 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.2.do.body_crit_edge, label %if.then21

if.end18.2.do.body_crit_edge:                     ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then21:                                        ; preds = %if.end18.2
  %interrupt = getelementptr inbounds %struct.emu10k1x, ptr %dev_id, i32 0, i32 15, i32 13
  %61 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %interrupt, align 4
  %tobool22.not = icmp eq ptr %62, null
  br i1 %tobool22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %62(ptr noundef %dev_id, i32 noundef %4) #11
  br label %do.body

if.else26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i68) #11
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add.i81 = add i32 %64, 12
  %and.i82 = and i32 %add.i81, 1048575
  %add5.i83 = or i32 %and.i82, -18874368
  %65 = inttoptr i32 %add5.i83 to ptr
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %65) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %67 = and i32 %66, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add14.i85 = add i32 %69, 12
  %and15.i86 = and i32 %add14.i85, 1048575
  %add16.i87 = or i32 %and15.i86, -18874368
  %70 = inttoptr i32 %add16.i87 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 %67) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i68, i32 noundef %call2.i79) #11
  br label %do.body

do.body:                                          ; preds = %if.else26, %if.then23, %if.end18.2.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void @arm_heavy_mb() #11
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %add30 = add i32 %72, 8
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %73 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %73, i32 %3) #11, !srcloc !158
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1x_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %and.i = and i32 %3, 1048575
  %add8.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 16384) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %6, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %7 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 0) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !168
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add = add i32 %9, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %10 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 0) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add6 = add i32 %12, 20
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %13 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 134217728) #11, !srcloc !158
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_playback_open(ptr noundef %substream) #2 align 64 {
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
  %call = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #15
  %cmp7 = icmp eq ptr %call7.i.i, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %substream10 = getelementptr inbounds %struct.emu10k1x_pcm, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %substream10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream10, align 4
  %private_data11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %7 = ptrtoint ptr %private_data11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %private_data11, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %8 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @snd_emu10k1x_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %9 = call ptr @memcpy(ptr %hw, ptr @snd_emu10k1x_playback_hw, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1x_playback_close(ptr nocapture noundef readnone %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %hw_params) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %voice = getelementptr inbounds %struct.emu10k1x_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %voice, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device, align 4
  %arrayidx = getelementptr %struct.emu10k1x, ptr %7, i32 0, i32 11, i32 %11
  %12 = ptrtoint ptr %voice to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %voice, align 4
  %use = getelementptr %struct.emu10k1x, ptr %7, i32 0, i32 11, i32 %11, i32 2
  %13 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %use, align 4
  %14 = load ptr, ptr %voice, align 4
  %epcm5 = getelementptr inbounds %struct.emu10k1x_voice, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %epcm5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %epcm5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_hw_free(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %voice = getelementptr inbounds %struct.emu10k1x_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %voice, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %use = getelementptr inbounds %struct.emu10k1x_voice, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %use, align 4
  %7 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %voice, align 4
  %epcm6 = getelementptr inbounds %struct.emu10k1x_voice, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %epcm6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %epcm6, align 4
  store ptr null, ptr %voice, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %voice3 = getelementptr inbounds %struct.emu10k1x_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %voice3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voice3, align 4
  %number = getelementptr inbounds %struct.emu10k1x_voice, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %dma_buffer = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 14
  %mul = shl i32 %9, 10
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %13, %11
  %div1.i = lshr i32 %mul.i, 3
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp111.not = icmp eq i32 %15, 0
  br i1 %cmp111.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %16 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_buffer, align 4
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %area, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %mul
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %shl = shl i32 %div1.i, 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %table_base.0112 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr5, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_addr, align 8
  %mul4 = mul i32 %i.0113, %div1.i
  %add = add i32 %21, %mul4
  %incdec.ptr = getelementptr i32, ptr %table_base.0112, i32 1
  %22 = ptrtoint ptr %table_base.0112 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %table_base.0112, align 4
  %incdec.ptr5 = getelementptr i32, ptr %table_base.0112, i32 2
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %incdec.ptr, align 4
  %inc = add nuw i32 %i.0113, 1
  %24 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %periods, align 8
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %26 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_buffer, align 4
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr, align 4
  %add8 = add i32 %29, %mul
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i, align 4
  %and.i = and i32 %32, 1048575
  %add8.i = or i32 %and.i, -18874368
  %33 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %30) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %add8) #11
  %35 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %36, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %37 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 %34) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  %38 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %periods, align 8
  %sub = shl i32 %39, 19
  %shl10 = add i32 %sub, -524288
  %or.i = or i32 %9, 65536
  %call2.i47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %41 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port.i, align 4
  %and.i49 = and i32 %42, 1048575
  %add8.i50 = or i32 %and.i49, -18874368
  %43 = inttoptr i32 %add8.i50 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 %40) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %44 = tail call i32 @llvm.bswap.i32(i32 %shl10) #11
  %45 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port.i, align 4
  %add14.i51 = add i32 %46, 4
  %and15.i52 = and i32 %add14.i51, 1048575
  %add16.i53 = or i32 %and15.i52, -18874368
  %47 = inttoptr i32 %add16.i53 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %47, i32 %44) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i47) #11
  %or.i54 = or i32 %9, 131072
  %call2.i56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i54) #11
  %49 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.i, align 4
  %and.i58 = and i32 %50, 1048575
  %add8.i59 = or i32 %and.i58, -18874368
  %51 = inttoptr i32 %add8.i59 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %51, i32 %48) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port.i, align 4
  %add14.i60 = add i32 %53, 4
  %and15.i61 = and i32 %add14.i60, 1048575
  %add16.i62 = or i32 %and15.i61, -18874368
  %54 = inttoptr i32 %add16.i62 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %54, i32 0) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i56) #11
  %or.i63 = or i32 %9, 393216
  %call2.i65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i63) #11
  %56 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port.i, align 4
  %and.i67 = and i32 %57, 1048575
  %add8.i68 = or i32 %and.i67, -18874368
  %58 = inttoptr i32 %add8.i68 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %58, i32 %55) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %59 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port.i, align 4
  %add14.i69 = add i32 %60, 4
  %and15.i70 = and i32 %add14.i69, 1048575
  %add16.i71 = or i32 %and15.i70, -18874368
  %61 = inttoptr i32 %add16.i71 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %61, i32 0) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i65) #11
  %or.i72 = or i32 %9, 458752
  %call2.i74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i72) #11
  %63 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port.i, align 4
  %and.i76 = and i32 %64, 1048575
  %add8.i77 = or i32 %and.i76, -18874368
  %65 = inttoptr i32 %add8.i77 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %65, i32 %62) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %66 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port.i, align 4
  %add14.i78 = add i32 %67, 4
  %and15.i79 = and i32 %add14.i78, 1048575
  %add16.i80 = or i32 %and15.i79, -18874368
  %68 = inttoptr i32 %add16.i80 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %68, i32 0) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i74) #11
  %or.i81 = or i32 %9, 524288
  %call2.i83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.i81) #11
  %70 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port.i, align 4
  %and.i85 = and i32 %71, 1048575
  %add8.i86 = or i32 %and.i85, -18874368
  %72 = inttoptr i32 %add8.i86 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %72, i32 %69) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %73 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port.i, align 4
  %add14.i87 = add i32 %74, 4
  %and15.i88 = and i32 %add14.i87, 1048575
  %add16.i89 = or i32 %and15.i88, -18874368
  %75 = inttoptr i32 %add16.i89 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %75, i32 0) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i83) #11
  %dma_addr11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %76 = ptrtoint ptr %dma_addr11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_addr11, align 8
  %or.i90 = or i32 %9, 262144
  %call2.i92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i90) #11
  %79 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port.i, align 4
  %and.i94 = and i32 %80, 1048575
  %add8.i95 = or i32 %and.i94, -18874368
  %81 = inttoptr i32 %add8.i95 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %81, i32 %78) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %82 = tail call i32 @llvm.bswap.i32(i32 %77) #11
  %83 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port.i, align 4
  %add14.i96 = add i32 %84, 4
  %and15.i97 = and i32 %add14.i96, 1048575
  %add16.i98 = or i32 %and15.i97, -18874368
  %85 = inttoptr i32 %add16.i98 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %85, i32 %82) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i92) #11
  %86 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %period_size, align 4
  %88 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %frame_bits.i, align 8
  %mul.i100 = shl i32 %87, 13
  %90 = mul i32 %mul.i100, %89
  %shl14 = and i32 %90, -65536
  %or.i102 = or i32 %9, 327680
  %call2.i104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i102) #11
  %92 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port.i, align 4
  %and.i106 = and i32 %93, 1048575
  %add8.i107 = or i32 %and.i106, -18874368
  %94 = inttoptr i32 %add8.i107 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %94, i32 %91) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %95 = tail call i32 @llvm.bswap.i32(i32 %shl14) #11
  %96 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port.i, align 4
  %add14.i108 = add i32 %97, 4
  %and15.i109 = and i32 %add14.i108, 1048575
  %add16.i110 = or i32 %and15.i109, -18874368
  %98 = inttoptr i32 %add16.i110 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %98, i32 %95) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i104) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %voice = getelementptr inbounds %struct.emu10k1x_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voice, align 4
  %number = getelementptr inbounds %struct.emu10k1x_voice, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl i32 2304, %9
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add.i = add i32 %14, 12
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add5.i to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #11, !srcloc !163
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !170
  %or.i = or i32 %17, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %add13.i = add i32 %20, 12
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %21 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %18) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %shl3 = shl i32 2048, %9
  %emu_lock.i24 = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i24) #11
  %port.i26 = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %port.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i26, align 4
  %add.i27 = add i32 %23, 12
  %and.i28 = and i32 %add.i27, 1048575
  %add5.i29 = or i32 %and.i28, -18874368
  %24 = inttoptr i32 %add5.i29 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %24) #11, !srcloc !163
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !170
  %or.i30 = or i32 %26, %shl3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i30) #11
  %28 = ptrtoint ptr %port.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i26, align 4
  %add13.i31 = add i32 %29, 12
  %and14.i32 = and i32 %add13.i31, 1048575
  %add15.i33 = or i32 %and14.i32, -18874368
  %30 = inttoptr i32 %add15.i33 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 %27) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i24, i32 noundef %call2.i25) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %running = getelementptr inbounds %struct.emu10k1x_pcm, ptr %5, i32 0, i32 3
  %31 = ptrtoint ptr %running to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %running, align 4
  %emu_lock.i34 = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %port.i36 = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %port.i36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i36, align 4
  %and.i37 = and i32 %33, 1048575
  %add8.i = or i32 %and.i37, -18874368
  %34 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 16384) #11, !srcloc !158
  %35 = ptrtoint ptr %port.i36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i36, align 4
  %add11.i = add i32 %36, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i38 = or i32 %and12.i, -18874368
  %37 = inttoptr i32 %add13.i38 to ptr
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #11, !srcloc !163
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i34, i32 noundef %call2.i35) #11
  %shl4 = shl nuw i32 1, %9
  %or = or i32 %39, %shl4
  %call2.i40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %port.i36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port.i36, align 4
  %and.i42 = and i32 %41, 1048575
  %add8.i43 = or i32 %and.i42, -18874368
  %42 = inttoptr i32 %add8.i43 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 16384) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %44 = ptrtoint ptr %port.i36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port.i36, align 4
  %add14.i = add i32 %45, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %46 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %43) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i34, i32 noundef %call2.i40) #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %running6 = getelementptr inbounds %struct.emu10k1x_pcm, ptr %5, i32 0, i32 3
  %47 = ptrtoint ptr %running6 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %running6, align 4
  %shl7 = shl i32 2304, %9
  %emu_lock.i44 = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i44) #11
  %port.i46 = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %port.i46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port.i46, align 4
  %add.i47 = add i32 %49, 12
  %and.i48 = and i32 %add.i47, 1048575
  %add5.i49 = or i32 %and.i48, -18874368
  %50 = inttoptr i32 %add5.i49 to ptr
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %50) #11, !srcloc !163
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %neg.i = xor i32 %shl7, -1
  %and9.i = and i32 %52, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %53 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #11
  %54 = ptrtoint ptr %port.i46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port.i46, align 4
  %add14.i50 = add i32 %55, 12
  %and15.i51 = and i32 %add14.i50, 1048575
  %add16.i52 = or i32 %and15.i51, -18874368
  %56 = inttoptr i32 %add16.i52 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 %53) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i44, i32 noundef %call2.i45) #11
  %call2.i54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %57 = ptrtoint ptr %port.i46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port.i46, align 4
  %and.i56 = and i32 %58, 1048575
  %add8.i57 = or i32 %and.i56, -18874368
  %59 = inttoptr i32 %add8.i57 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %59, i32 16384) #11, !srcloc !158
  %60 = ptrtoint ptr %port.i46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port.i46, align 4
  %add11.i58 = add i32 %61, 4
  %and12.i59 = and i32 %add11.i58, 1048575
  %add13.i60 = or i32 %and12.i59, -18874368
  %62 = inttoptr i32 %add13.i60 to ptr
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %62) #11, !srcloc !163
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i44, i32 noundef %call2.i54) #11
  %shl9 = shl nuw i32 1, %9
  %neg = xor i32 %shl9, -1
  %and = and i32 %64, %neg
  %call2.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %port.i46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port.i46, align 4
  %and.i64 = and i32 %66, 1048575
  %add8.i65 = or i32 %and.i64, -18874368
  %67 = inttoptr i32 %add8.i65 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %67, i32 16384) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %68 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %69 = ptrtoint ptr %port.i46 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port.i46, align 4
  %add14.i66 = add i32 %70, 4
  %and15.i67 = and i32 %add14.i66, 1048575
  %add16.i68 = or i32 %and15.i67, -18874368
  %71 = inttoptr i32 %add16.i68 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %71, i32 %68) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i44, i32 noundef %call2.i62) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %if.end, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %if.end ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %running = getelementptr inbounds %struct.emu10k1x_pcm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %voice = getelementptr inbounds %struct.emu10k1x_pcm, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voice, align 4
  %number = getelementptr inbounds %struct.emu10k1x_voice, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %or.i = or i32 %9, 131072
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %11, i32 0, i32 2
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %and.i = and i32 %14, 1048575
  %add8.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #11, !srcloc !158
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %17, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %18 = inttoptr i32 %add13.i to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  %or.i47 = or i32 %9, 393216
  %call2.i49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i47) #11
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i, align 4
  %and.i51 = and i32 %22, 1048575
  %add8.i52 = or i32 %and.i51, -18874368
  %23 = inttoptr i32 %add8.i52 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %20) #11, !srcloc !158
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %add11.i53 = add i32 %25, 4
  %and12.i54 = and i32 %add11.i53, 1048575
  %add13.i55 = or i32 %and12.i54, -18874368
  %26 = inttoptr i32 %add13.i55 to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #11, !srcloc !163
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i49) #11
  %call2.i58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port.i, align 4
  %and.i60 = and i32 %30, 1048575
  %add8.i61 = or i32 %and.i60, -18874368
  %31 = inttoptr i32 %add8.i61 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 %12) #11, !srcloc !158
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %add11.i62 = add i32 %33, 4
  %and12.i63 = and i32 %add11.i62, 1048575
  %add13.i64 = or i32 %and12.i63, -18874368
  %34 = inttoptr i32 %add13.i64 to ptr
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %34) #11, !srcloc !163
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i58) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp = icmp eq i32 %35, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %39 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %40, %38
  %div1.i = lshr i32 %mul.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div1.i)
  %cmp6 = icmp eq i32 %28, %div1.i
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %35)
  %cmp9.not = icmp eq i32 %19, %35
  br i1 %cmp9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port.i, align 4
  %and.i69 = and i32 %42, 1048575
  %add8.i70 = or i32 %and.i69, -18874368
  %43 = inttoptr i32 %add8.i70 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 %20) #11, !srcloc !158
  %44 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port.i, align 4
  %add11.i71 = add i32 %45, 4
  %and12.i72 = and i32 %add11.i71, 1048575
  %add13.i73 = or i32 %and12.i72, -18874368
  %46 = inttoptr i32 %add13.i73 to ptr
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %46) #11, !srcloc !163
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i67) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %ptr1.0 = phi i32 [ %48, %if.then10 ], [ %28, %if.end8.if.end12_crit_edge ]
  %mul.i74 = shl i32 %ptr1.0, 3
  %frame_bits.i75 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %49 = ptrtoint ptr %frame_bits.i75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %frame_bits.i75, align 8
  %div.i = udiv i32 %mul.i74, %50
  %shr = lshr i32 %36, 3
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %51 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %period_size, align 4
  %mul = mul i32 %52, %shr
  %add = add i32 %mul, %div.i
  %buffer_size14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %53 = ptrtoint ptr %buffer_size14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buffer_size14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %54)
  %cmp15.not = icmp ult i32 %add, %54
  %sub = select i1 %cmp15.not, i32 0, i32 %54
  %spec.select = sub i32 %add, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1x_pcm_free_substream(ptr nocapture noundef readonly %runtime) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_open_capture(ptr noundef %substream) #2 align 64 {
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
  %call = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #15
  %cmp7 = icmp eq ptr %call7.i.i, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %substream10 = getelementptr inbounds %struct.emu10k1x_pcm, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %substream10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream10, align 4
  %private_data11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %7 = ptrtoint ptr %private_data11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %private_data11, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %8 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @snd_emu10k1x_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %9 = call ptr @memcpy(ptr %hw, ptr @snd_emu10k1x_capture_hw, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_close_capture(ptr nocapture noundef readnone %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_hw_params_capture(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %hw_params) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %voice = getelementptr inbounds %struct.emu10k1x_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %voice, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %use = getelementptr inbounds %struct.emu10k1x, ptr %7, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %capture_voice = getelementptr inbounds %struct.emu10k1x, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %voice to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %capture_voice, ptr %voice, align 4
  %epcm8 = getelementptr inbounds %struct.emu10k1x, ptr %7, i32 0, i32 12, i32 3
  %11 = ptrtoint ptr %epcm8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %epcm8, align 4
  %12 = load ptr, ptr %voice, align 4
  %use10 = getelementptr inbounds %struct.emu10k1x_voice, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %use10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %use10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_hw_free_capture(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %voice = getelementptr inbounds %struct.emu10k1x_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %voice, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %use = getelementptr inbounds %struct.emu10k1x_voice, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %use, align 4
  %7 = ptrtoint ptr %voice to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %voice, align 4
  %epcm6 = getelementptr inbounds %struct.emu10k1x_voice, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %epcm6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %epcm6, align 4
  store ptr null, ptr %voice, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_prepare_capture(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr, align 8
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %and.i = and i32 %7, 1048575
  %add8.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 4096) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %11, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %12 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %13 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %15 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_bits.i, align 8
  %mul.i = shl i32 %14, 13
  %17 = mul i32 %mul.i, %16
  %shl = and i32 %17, -65536
  %call2.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %and.i11 = and i32 %19, 1048575
  %add8.i12 = or i32 %and.i11, -18874368
  %20 = inttoptr i32 %add8.i12 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 4352) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %shl) #11
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i, align 4
  %add14.i13 = add i32 %23, 4
  %and15.i14 = and i32 %add14.i13, 1048575
  %add16.i15 = or i32 %and15.i14, -18874368
  %24 = inttoptr i32 %add16.i15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 %21) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i9) #11
  %call2.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i, align 4
  %and.i19 = and i32 %26, 1048575
  %add8.i20 = or i32 %and.i19, -18874368
  %27 = inttoptr i32 %add8.i20 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 4608) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i, align 4
  %add14.i21 = add i32 %29, 4
  %and15.i22 = and i32 %add14.i21, 1048575
  %add16.i23 = or i32 %and15.i22, -18874368
  %30 = inttoptr i32 %add16.i23 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 0) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i17) #11
  %call2.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i, align 4
  %and.i27 = and i32 %32, 1048575
  %add8.i28 = or i32 %and.i27, -18874368
  %33 = inttoptr i32 %add8.i28 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 4864) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port.i, align 4
  %add14.i29 = add i32 %35, 4
  %and15.i30 = and i32 %add14.i29, 1048575
  %add16.i31 = or i32 %and15.i30, -18874368
  %36 = inttoptr i32 %add16.i31 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 0) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i25) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_trigger_capture(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add.i = add i32 %8, 12
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !170
  %11 = or i32 %10, 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add13.i = add i32 %13, 12
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %14 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  %call2.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %and.i16 = and i32 %16, 1048575
  %add8.i = or i32 %and.i16, -18874368
  %17 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 16384) #11, !srcloc !158
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %19, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i17 = or i32 %and12.i, -18874368
  %20 = inttoptr i32 %add13.i17 to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i14) #11
  %22 = or i32 %21, 65536
  %call2.i19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i, align 4
  %and.i21 = and i32 %24, 1048575
  %add8.i22 = or i32 %and.i21, -18874368
  %25 = inttoptr i32 %add8.i22 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 16384) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %27, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %28 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %22) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i19) #11
  %running = getelementptr inbounds %struct.emu10k1x_pcm, ptr %5, i32 0, i32 3
  %29 = ptrtoint ptr %running to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %running, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %running4 = getelementptr inbounds %struct.emu10k1x_pcm, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %running4 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %running4, align 4
  %emu_lock.i23 = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i23) #11
  %port.i25 = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %port.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i25, align 4
  %add.i26 = add i32 %32, 12
  %and.i27 = and i32 %add.i26, 1048575
  %add5.i28 = or i32 %and.i27, -18874368
  %33 = inttoptr i32 %add5.i28 to ptr
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %33) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %35 = and i32 %34, -2305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %port.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i25, align 4
  %add14.i29 = add i32 %37, 12
  %and15.i30 = and i32 %add14.i29, 1048575
  %add16.i31 = or i32 %and15.i30, -18874368
  %38 = inttoptr i32 %add16.i31 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %35) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i23, i32 noundef %call2.i24) #11
  %call2.i33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i23) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %port.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port.i25, align 4
  %and.i35 = and i32 %40, 1048575
  %add8.i36 = or i32 %and.i35, -18874368
  %41 = inttoptr i32 %add8.i36 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 16384) #11, !srcloc !158
  %42 = ptrtoint ptr %port.i25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i25, align 4
  %add11.i37 = add i32 %43, 4
  %and12.i38 = and i32 %add11.i37, 1048575
  %add13.i39 = or i32 %and12.i38, -18874368
  %44 = inttoptr i32 %add13.i39 to ptr
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %44) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i23, i32 noundef %call2.i33) #11
  %46 = and i32 %45, -65537
  %call2.i41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i23) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %47 = ptrtoint ptr %port.i25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port.i25, align 4
  %and.i43 = and i32 %48, 1048575
  %add8.i44 = or i32 %and.i43, -18874368
  %49 = inttoptr i32 %add8.i44 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 16384) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %port.i25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port.i25, align 4
  %add14.i45 = add i32 %51, 4
  %and15.i46 = and i32 %add14.i45, 1048575
  %add16.i47 = or i32 %and15.i46, -18874368
  %52 = inttoptr i32 %add16.i47 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %46) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i23, i32 noundef %call2.i41) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_pcm_pointer_capture(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %running = getelementptr inbounds %struct.emu10k1x_pcm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %7, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %and.i = and i32 %9, 1048575
  %add8.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 4608) #11, !srcloc !158
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %12, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %13 = inttoptr i32 %add13.i to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #11, !srcloc !163
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  %mul.i = shl i32 %15, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %17
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %19)
  %cmp.not = icmp ult i32 %div.i, %19
  %sub = select i1 %cmp.not, i32 0, i32 %19
  %spec.select = sub i32 %div.i, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1x_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %emu_lock = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  tail call void @arm_heavy_mb() #11
  %conv8 = trunc i16 %reg to i8
  %port = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 30
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %4 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv8) #11, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @arm_heavy_mb() #11
  %5 = tail call i16 @llvm.bswap.i16(i16 %val)
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add15 = add i32 %7, 28
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #11, !srcloc !177
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_emu10k1x_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %emu_lock = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @arm_heavy_mb() #11
  %conv8 = trunc i16 %reg to i8
  %port = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 30
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %4 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv8) #11, !srcloc !175
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add12 = add i32 %6, 28
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %7 = inttoptr i32 %add14 to ptr
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #11, !srcloc !179
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #11
  ret i16 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_emu10k1x_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_emu10k1x_spdif_get_mask(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_shared_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %and.i = and i32 %3, 1048575
  %add8.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 17664) #11, !srcloc !158
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %6, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %7 = inttoptr i32 %add13.i to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 458752, i32 %8)
  %cmp = icmp ne i32 %8, 458752
  %cond = zext i1 %cmp to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_shared_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %emu_lock.i19 = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %port.i21 = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port.i21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i21, align 4
  %and.i22 = and i32 %5, 1048575
  %add8.i23 = or i32 %and.i22, -18874368
  %6 = inttoptr i32 %add8.i23 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 17664) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %port.i21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i21, align 4
  %add14.i24 = add i32 %8, 4
  %and15.i25 = and i32 %add14.i24, 1048575
  %add16.i26 = or i32 %and15.i25, -18874368
  %9 = inttoptr i32 %add16.i26 to ptr
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 0) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i19, i32 noundef %call2.i20) #11
  %call2.i7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %port.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i21, align 4
  %and.i9 = and i32 %11, 1048575
  %add8.i10 = or i32 %and.i9, -18874368
  %12 = inttoptr i32 %add8.i10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 16640) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %port.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i21, align 4
  %add14.i11 = add i32 %14, 4
  %and15.i12 = and i32 %add14.i11, 1048575
  %add16.i13 = or i32 %and15.i12, -18874368
  %15 = inttoptr i32 %add16.i13 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 458752) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i19, i32 noundef %call2.i7) #11
  %call2.i15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !161
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %port.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i21, align 4
  %add.i = add i32 %17, 24
  %and.i17 = and i32 %add.i, 1048575
  %add8.i18 = or i32 %and.i17, -18874368
  %18 = inttoptr i32 %add8.i18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 1048576) #11, !srcloc !158
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 458752) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i19, i32 noundef %call2.i20) #11
  %call2.i28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %port.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i21, align 4
  %and.i30 = and i32 %20, 1048575
  %add8.i31 = or i32 %and.i30, -18874368
  %21 = inttoptr i32 %add8.i31 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 16640) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %port.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i21, align 4
  %add14.i32 = add i32 %23, 4
  %and15.i33 = and i32 %add14.i32, 1048575
  %add16.i34 = or i32 %and15.i33, -18874368
  %24 = inttoptr i32 %add16.i34 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 1056964864) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i19, i32 noundef %call2.i28) #11
  %call2.i36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !161
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %port.i21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i21, align 4
  %add.i38 = add i32 %26, 24
  %and.i39 = and i32 %add.i38, 1048575
  %add8.i40 = or i32 %and.i39, -18874368
  %27 = inttoptr i32 %add8.i40 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 -2146435072) #11, !srcloc !158
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2.i36.sink = phi i32 [ %call2.i36, %if.else ], [ %call2.i15, %if.then ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i19, i32 noundef %call2.i36.sink) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #11, !srcloc !181
  %and.i = and i32 %8, %sub.i
  %arrayidx = getelementptr %struct.emu10k1x, ptr %1, i32 0, i32 13, i32 %and.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %10 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %value, align 8
  %12 = load i32, ptr %arrayidx, align 4
  %shr4 = lshr i32 %12, 8
  %conv6 = trunc i32 %shr4 to i8
  %arrayidx9 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6, ptr %arrayidx9, align 1
  %14 = load i32, ptr %arrayidx, align 4
  %shr12 = lshr i32 %14, 16
  %conv14 = trunc i32 %shr12 to i8
  %arrayidx17 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv14, ptr %arrayidx17, align 2
  %16 = load i32, ptr %arrayidx, align 4
  %shr20 = lshr i32 %16, 24
  %conv22 = trunc i32 %shr20 to i8
  %arrayidx25 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv22, ptr %arrayidx25, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %7) #11, !srcloc !181
  %and.i = and i32 %8, %sub.i
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value, align 8
  %conv = zext i8 %10 to i32
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %12 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %conv
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 2
  %conv9 = zext i8 %14 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %shl16 = shl nuw i32 %conv15, 24
  %or17 = or i32 %or11, %shl16
  %arrayidx18 = getelementptr %struct.emu10k1x, ptr %1, i32 0, i32 13, i32 %and.i
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or17, i32 %18)
  %cmp = icmp ne i32 %or17, %18
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add = shl i32 %and.i, 16
  %shl.i = add i32 %add, 4325376
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %and.i34 = and i32 %21, 1048575
  %add8.i = or i32 %and.i34, -18874368
  %22 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %or17) #11
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %25, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %26 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or17, ptr %arrayidx18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv19 = zext i1 %cmp to i32
  ret i32 %conv19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1x_midi_interrupt(ptr noundef %emu, i32 noundef %status) #2 align 64 {
entry:
  %byte.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #11
  %0 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %byte.i, align 1, !annotation !155
  %rmidi.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 1
  %1 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmidi.i, align 4
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tx_enable.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 8
  %3 = ptrtoint ptr %tx_enable.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_enable.i, align 4
  %rx_enable.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 9
  %5 = ptrtoint ptr %rx_enable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_enable.i, align 4
  %or.i = or i32 %6, %4
  %emu_lock.i.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 7
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  %port.i.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 2
  %7 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %8, 12
  %and.i.i = and i32 %add.i.i, 1048575
  %add5.i.i = or i32 %and.i.i, -18874368
  %9 = inttoptr i32 %add5.i.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #11, !srcloc !163
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %neg.i.i = xor i32 %or.i, -1
  %and9.i.i = and i32 %11, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %and9.i.i) #11
  %13 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i.i, align 4
  %add14.i.i = add i32 %14, 12
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %15 = inttoptr i32 %add16.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i.i) #11
  br label %do_emu10k1x_midi_interrupt.exit

if.end.i:                                         ; preds = %entry
  %input_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 5
  tail call void @_raw_spin_lock(ptr noundef %input_lock.i) #11
  %ipr_rx.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 12
  %16 = ptrtoint ptr %ipr_rx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ipr_rx.i, align 4
  %and.i = and i32 %17, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end14.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %port.i64.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 10
  %18 = ptrtoint ptr %port.i64.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i64.i, align 4
  %add.i65.i = add i32 %19, 1
  %emu_lock.i.i.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 7
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %add.i65.i) #11
  %21 = lshr i32 %20, 16
  %port.i.i.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 2
  %22 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i.i.i, align 4
  %and.i.i.i = and i32 %23, 1048575
  %add8.i.i.i = or i32 %and.i.i.i, -18874368
  %24 = inttoptr i32 %add8.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 %21) #11, !srcloc !158
  %25 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i.i.i, align 4
  %add11.i.i.i = add i32 %26, 4
  %and12.i.i.i = and i32 %add11.i.i.i, 1048575
  %add13.i.i.i = or i32 %and12.i.i.i, -18874368
  %27 = inttoptr i32 %add13.i.i.i to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i.i, i32 noundef %call2.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool2.not.i = icmp sgt i32 %28, -1
  br i1 %tobool2.not.i, label %if.then3.i, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  %midi_mode.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 4
  %29 = ptrtoint ptr %midi_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %midi_mode.i, align 4
  %and4.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.land.rhs.i.i_crit_edge, label %if.else.i

if.then3.i.land.rhs.i.i_crit_edge:                ; preds = %if.then3.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body.i.i.land.rhs.i.i_crit_edge, %if.then3.i.land.rhs.i.i_crit_edge
  %timeout.035.i.i = phi i32 [ %dec.i.i, %for.body.i.i.land.rhs.i.i_crit_edge ], [ 100000, %if.then3.i.land.rhs.i.i_crit_edge ]
  %31 = ptrtoint ptr %port.i64.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i64.i, align 4
  %add.i.i.i = add i32 %32, 1
  %call2.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #11
  %34 = lshr i32 %33, 16
  %35 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i.i.i, align 4
  %and.i.i.i.i = and i32 %36, 1048575
  %add8.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %37 = inttoptr i32 %add8.i.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 %34) #11, !srcloc !158
  %38 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i.i.i, align 4
  %add11.i.i.i.i = add i32 %39, 4
  %and12.i.i.i.i = and i32 %add11.i.i.i.i, 1048575
  %add13.i.i.i.i = or i32 %and12.i.i.i.i, -18874368
  %40 = inttoptr i32 %add13.i.i.i.i to ptr
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %40) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i.i, i32 noundef %call2.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool.not.i.i = icmp sgt i32 %41, -1
  br i1 %tobool.not.i.i, label %for.body.i.i, label %land.rhs.i.i.if.end14.i_crit_edge

land.rhs.i.i.if.end14.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %42 = ptrtoint ptr %port.i64.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i64.i, align 4
  %call2.i.i15.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #11
  %45 = lshr i32 %44, 16
  %46 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port.i.i.i, align 4
  %and.i.i17.i.i = and i32 %47, 1048575
  %add8.i.i18.i.i = or i32 %and.i.i17.i.i, -18874368
  %48 = inttoptr i32 %add8.i.i18.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 %45) #11, !srcloc !158
  %49 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.i.i.i, align 4
  %add11.i.i19.i.i = add i32 %50, 4
  %and12.i.i20.i.i = and i32 %add11.i.i19.i.i, 1048575
  %add13.i.i21.i.i = or i32 %and12.i.i20.i.i, -18874368
  %51 = inttoptr i32 %add13.i.i21.i.i to ptr
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i.i, i32 noundef %call2.i.i15.i.i) #11
  %dec.i.i = add nsw i32 %timeout.035.i.i, -1
  %cmp.i.i = icmp ugt i32 %timeout.035.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.land.rhs.i.i_crit_edge, label %do.end.i.i

for.body.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %emu, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 27
  %55 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i.i, align 8
  %57 = ptrtoint ptr %port.i64.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port.i64.i, align 4
  %add.i24.i.i = add i32 %58, 1
  %call2.i.i26.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %59 = tail call i32 @llvm.bswap.i32(i32 %add.i24.i.i) #11
  %60 = lshr i32 %59, 16
  %61 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port.i.i.i, align 4
  %and.i.i28.i.i = and i32 %62, 1048575
  %add8.i.i29.i.i = or i32 %and.i.i28.i.i, -18874368
  %63 = inttoptr i32 %add8.i.i29.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %63, i32 %60) #11, !srcloc !158
  %64 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port.i.i.i, align 4
  %add11.i.i30.i.i = add i32 %65, 4
  %and12.i.i31.i.i = and i32 %add11.i.i30.i.i, 1048575
  %add13.i.i32.i.i = or i32 %and12.i.i31.i.i, -18874368
  %66 = inttoptr i32 %add13.i.i32.i.i to ptr
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %66) #11, !srcloc !163
  %68 = lshr i32 %67, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i.i, i32 noundef %call2.i.i26.i.i) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.36, i32 noundef %68) #14
  br label %if.end14.i

if.else.i:                                        ; preds = %if.then3.i
  %69 = ptrtoint ptr %port.i64.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port.i64.i, align 4
  %call2.i.i69.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #11
  %72 = lshr i32 %71, 16
  %73 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port.i.i.i, align 4
  %and.i.i71.i = and i32 %74, 1048575
  %add8.i.i72.i = or i32 %and.i.i71.i, -18874368
  %75 = inttoptr i32 %add8.i.i72.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %75, i32 %72) #11, !srcloc !158
  %76 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port.i.i.i, align 4
  %add11.i.i73.i = add i32 %77, 4
  %and12.i.i74.i = and i32 %add11.i.i73.i, 1048575
  %add13.i.i75.i = or i32 %and12.i.i74.i, -18874368
  %78 = inttoptr i32 %add13.i.i75.i to ptr
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %78) #11, !srcloc !163
  %80 = lshr i32 %79, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i.i, i32 noundef %call2.i.i69.i) #11
  %conv.i76.i = trunc i32 %80 to i8
  %81 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.i76.i, ptr %byte.i, align 1
  %substream_input.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 2
  %82 = ptrtoint ptr %substream_input.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %substream_input.i, align 4
  %tobool8.not.i = icmp eq ptr %83, null
  br i1 %tobool8.not.i, label %if.else.i.if.end14.i_crit_edge, label %if.then9.i

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = call i32 @snd_rawmidi_receive(ptr noundef nonnull %83, ptr noundef nonnull %byte.i, i32 noundef 1) #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.else.i.if.end14.i_crit_edge, %do.end.i.i, %land.rhs.i.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %input_lock.i) #11
  %output_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 6
  call void @_raw_spin_lock(ptr noundef %output_lock.i) #11
  %ipr_tx.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 11
  %84 = ptrtoint ptr %ipr_tx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ipr_tx.i, align 4
  %and16.i = and i32 %85, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end35.i_crit_edge, label %land.lhs.true18.i

if.end14.i.if.end35.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

land.lhs.true18.i:                                ; preds = %if.end14.i
  %port.i77.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 10
  %86 = ptrtoint ptr %port.i77.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port.i77.i, align 4
  %add.i78.i = add i32 %87, 1
  %emu_lock.i.i79.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 7
  %call2.i.i80.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i79.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  call void @arm_heavy_mb() #11
  %88 = call i32 @llvm.bswap.i32(i32 %add.i78.i) #11
  %89 = lshr i32 %88, 16
  %port.i.i81.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 2
  %90 = ptrtoint ptr %port.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port.i.i81.i, align 4
  %and.i.i82.i = and i32 %91, 1048575
  %add8.i.i83.i = or i32 %and.i.i82.i, -18874368
  %92 = inttoptr i32 %add8.i.i83.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %92, i32 %89) #11, !srcloc !158
  %93 = ptrtoint ptr %port.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %port.i.i81.i, align 4
  %add11.i.i84.i = add i32 %94, 4
  %and12.i.i85.i = and i32 %add11.i.i84.i, 1048575
  %add13.i.i86.i = or i32 %and12.i.i85.i, -18874368
  %95 = inttoptr i32 %add13.i.i86.i to ptr
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %95) #11, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i79.i, i32 noundef %call2.i.i80.i) #11
  %97 = and i32 %96, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool22.not.i = icmp eq i32 %97, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %land.lhs.true18.i.if.end35.i_crit_edge

land.lhs.true18.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then23.i:                                      ; preds = %land.lhs.true18.i
  %substream_output.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 3
  %98 = ptrtoint ptr %substream_output.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %substream_output.i, align 4
  %tobool24.not.i = icmp eq ptr %99, null
  br i1 %tobool24.not.i, label %if.then23.i.if.else32.i_crit_edge, label %land.lhs.true25.i

if.then23.i.if.else32.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else32.i

land.lhs.true25.i:                                ; preds = %if.then23.i
  %call27.i = call i32 @snd_rawmidi_transmit(ptr noundef nonnull %99, ptr noundef nonnull %byte.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27.i)
  %cmp28.i = icmp eq i32 %call27.i, 1
  br i1 %cmp28.i, label %if.then30.i, label %land.lhs.true25.i.if.else32.i_crit_edge

land.lhs.true25.i.if.else32.i_crit_edge:          ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else32.i

if.then30.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %byte.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %byte.i, align 1
  %conv31.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %port.i77.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port.i77.i, align 4
  %call2.i.i90.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i79.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  call void @arm_heavy_mb() #11
  %104 = call i32 @llvm.bswap.i32(i32 %103) #11
  %105 = lshr i32 %104, 16
  %106 = ptrtoint ptr %port.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port.i.i81.i, align 4
  %and.i.i92.i = and i32 %107, 1048575
  %add8.i.i93.i = or i32 %and.i.i92.i, -18874368
  %108 = inttoptr i32 %add8.i.i93.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %108, i32 %105) #11, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @arm_heavy_mb() #11
  %109 = shl nuw i32 %conv31.i, 24
  %110 = ptrtoint ptr %port.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %port.i.i81.i, align 4
  %add14.i.i.i = add i32 %111, 4
  %and15.i.i.i = and i32 %add14.i.i.i, 1048575
  %add16.i.i.i = or i32 %and15.i.i.i, -18874368
  %112 = inttoptr i32 %add16.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %112, i32 %109) #11, !srcloc !158
  br label %if.end35.sink.split.i

if.else32.i:                                      ; preds = %land.lhs.true25.i.if.else32.i_crit_edge, %if.then23.i.if.else32.i_crit_edge
  %tx_enable33.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 15, i32 8
  %113 = ptrtoint ptr %tx_enable33.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_enable33.i, align 4
  %call2.i95.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i79.i) #11
  %115 = ptrtoint ptr %port.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %port.i.i81.i, align 4
  %add.i97.i = add i32 %116, 12
  %and.i98.i = and i32 %add.i97.i, 1048575
  %add5.i99.i = or i32 %and.i98.i, -18874368
  %117 = inttoptr i32 %add5.i99.i to ptr
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %117) #11, !srcloc !163
  %119 = call i32 @llvm.bswap.i32(i32 %118) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %neg.i100.i = xor i32 %114, -1
  %and9.i101.i = and i32 %119, %neg.i100.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @arm_heavy_mb() #11
  %120 = call i32 @llvm.bswap.i32(i32 %and9.i101.i) #11
  %121 = ptrtoint ptr %port.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %port.i.i81.i, align 4
  %add14.i102.i = add i32 %122, 12
  %and15.i103.i = and i32 %add14.i102.i, 1048575
  %add16.i104.i = or i32 %and15.i103.i, -18874368
  %123 = inttoptr i32 %add16.i104.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %123, i32 %120) #11, !srcloc !158
  br label %if.end35.sink.split.i

if.end35.sink.split.i:                            ; preds = %if.else32.i, %if.then30.i
  %call2.i.i90.sink.i = phi i32 [ %call2.i.i90.i, %if.then30.i ], [ %call2.i95.i, %if.else32.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i79.i, i32 noundef %call2.i.i90.sink.i) #11
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end35.sink.split.i, %land.lhs.true18.i.if.end35.i_crit_edge, %if.end14.i.if.end35.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %output_lock.i) #11
  br label %do_emu10k1x_midi_interrupt.exit

do_emu10k1x_midi_interrupt.exit:                  ; preds = %if.end35.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_emu10k1x_midi_free(ptr nocapture noundef readonly %rmidi) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %interrupt = getelementptr inbounds %struct.emu10k1x_midi, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %interrupt, align 4
  %rmidi1 = getelementptr inbounds %struct.emu10k1x_midi, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %rmidi1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rmidi1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_midi_output_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body26, !prof !182

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1308, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body26:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #11
  %midi_mode = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %midi_mode, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %midi_mode, align 4
  %substream_output = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %substream_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream_output, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call28) #11
  br i1 %tobool34.not, label %if.then35, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then35:                                        ; preds = %do.body26
  %call37 = tail call fastcc i32 @snd_emu10k1x_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext -1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then35.error_out_crit_edge

if.then35.error_out_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_out

if.end40:                                         ; preds = %if.then35
  %call41 = tail call fastcc i32 @snd_emu10k1x_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext 63, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.end40.error_out_crit_edge

if.end40.error_out_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_out

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

error_out:                                        ; preds = %if.end40.error_out_crit_edge, %if.then35.error_out_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %error_out, %if.end40.cleanup_crit_edge, %do.body26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -5, %error_out ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_midi_output_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body26, !prof !182

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1359, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body26:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #11
  %tx_enable = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_enable, align 4
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %5, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add.i = add i32 %9, 12
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add5.i to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #11, !srcloc !163
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %neg.i = xor i32 %7, -1
  %and9.i = and i32 %12, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #11
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %15, 12
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %16 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  %midi_mode = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %midi_mode, align 4
  %and = and i32 %18, -3
  store i32 %and, ptr %midi_mode, align 4
  %substream_output = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %substream_output to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %substream_output, align 4
  %and34 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call28) #11
  br i1 %tobool35.not, label %if.then36, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then36:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call fastcc i32 @snd_emu10k1x_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext -1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.body26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call38, %if.then36 ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1x_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #2 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !182

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1395, i32 noundef 9, ptr noundef null) #11
  br label %cleanup56

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool25.not = icmp eq i32 %up, 0
  br i1 %tobool25.not, label %if.else53, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #11
  %6 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %byte, align 1, !annotation !155
  %output_lock = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 6
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #11
  %port.i = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 10
  %emu_lock.i.i = getelementptr inbounds %struct.emu10k1x, ptr %5, i32 0, i32 7
  %port.i.i = getelementptr inbounds %struct.emu10k1x, ptr %5, i32 0, i32 2
  %midi_mode = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end48.while.body_crit_edge, %if.then26
  %max.091 = phi i32 [ 4, %if.then26 ], [ %dec, %if.end48.while.body_crit_edge ]
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add.i = add i32 %8, 1
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  call void @arm_heavy_mb() #11
  %9 = call i32 @llvm.bswap.i32(i32 %add.i) #11
  %10 = lshr i32 %9, 16
  %11 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i.i, align 4
  %and.i.i = and i32 %12, 1048575
  %add8.i.i = or i32 %and.i.i, -18874368
  %13 = inttoptr i32 %add8.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #11, !srcloc !158
  %14 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i.i, align 4
  %add11.i.i = add i32 %15, 4
  %and12.i.i = and i32 %add11.i.i, 1048575
  %add13.i.i = or i32 %and12.i.i, -18874368
  %16 = inttoptr i32 %add13.i.i to ptr
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #11, !srcloc !163
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i.i) #11
  %18 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool39.not = icmp eq i32 %18, 0
  br i1 %tobool39.not, label %if.then40, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then40:                                        ; preds = %while.body
  %19 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %midi_mode, align 4
  %and41 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then40.if.then46_crit_edge, label %lor.lhs.false

if.then40.if.then46_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

lor.lhs.false:                                    ; preds = %if.then40
  %call43 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 1
  br i1 %cmp44.not, label %if.end48, label %lor.lhs.false.if.then46_crit_edge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %if.then40.if.then46_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call30) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #11
  br label %cleanup56

if.end48:                                         ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %byte, align 1
  %conv49 = zext i8 %22 to i32
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i, align 4
  %call2.i.i79 = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  call void @arm_heavy_mb() #11
  %25 = call i32 @llvm.bswap.i32(i32 %24) #11
  %26 = lshr i32 %25, 16
  %27 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i.i, align 4
  %and.i.i81 = and i32 %28, 1048575
  %add8.i.i82 = or i32 %and.i.i81, -18874368
  %29 = inttoptr i32 %add8.i.i82 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %26) #11, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @arm_heavy_mb() #11
  %30 = shl nuw i32 %conv49, 24
  %31 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i.i, align 4
  %add14.i.i = add i32 %32, 4
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %33 = inttoptr i32 %add16.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %30) #11, !srcloc !158
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i.i79) #11
  %dec = add nsw i32 %max.091, -1
  %cmp35 = icmp ugt i32 %max.091, 1
  br i1 %cmp35, label %if.end48.while.body_crit_edge, label %if.end48.while.end_crit_edge

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end48.while.body_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end48.while.end_crit_edge, %while.body.while.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call30) #11
  %tx_enable = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_enable, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  %36 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i.i, align 4
  %add.i84 = add i32 %37, 12
  %and.i = and i32 %add.i84, 1048575
  %add5.i = or i32 %and.i, -18874368
  %38 = inttoptr i32 %add5.i to ptr
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %38) #11, !srcloc !163
  %40 = call i32 @llvm.bswap.i32(i32 %39) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !170
  %or.i = or i32 %40, %35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  call void @arm_heavy_mb() #11
  %41 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  %42 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i.i, align 4
  %add13.i = add i32 %43, 12
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %44 = inttoptr i32 %add15.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %44, i32 %41) #11, !srcloc !158
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #11
  br label %cleanup56

if.else53:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %tx_enable54 = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 8
  %45 = ptrtoint ptr %tx_enable54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_enable54, align 4
  %emu_lock.i85 = getelementptr inbounds %struct.emu10k1x, ptr %5, i32 0, i32 7
  %call2.i86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i85) #11
  %port.i87 = getelementptr inbounds %struct.emu10k1x, ptr %5, i32 0, i32 2
  %47 = ptrtoint ptr %port.i87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port.i87, align 4
  %add.i88 = add i32 %48, 12
  %and.i89 = and i32 %add.i88, 1048575
  %add5.i90 = or i32 %and.i89, -18874368
  %49 = inttoptr i32 %add5.i90 to ptr
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %49) #11, !srcloc !163
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %neg.i = xor i32 %46, -1
  %and9.i = and i32 %51, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %52 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #11
  %53 = ptrtoint ptr %port.i87 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port.i87, align 4
  %add14.i = add i32 %54, 12
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %55 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 %52) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i85, i32 noundef %call2.i86) #11
  br label %cleanup56

cleanup56:                                        ; preds = %if.else53, %while.end, %if.then46, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_emu10k1x_midi_cmd(ptr noundef %emu, ptr noundef %midi, i8 noundef zeroext %cmd, i32 noundef %ack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %input_lock = getelementptr inbounds %struct.emu10k1x_midi, ptr %midi, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %input_lock) #11
  %port.i = getelementptr inbounds %struct.emu10k1x_midi, ptr %midi, i32 0, i32 10
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %emu_lock.i.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 7
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #11
  %3 = lshr i32 %2, 16
  %port.i.i = getelementptr inbounds %struct.emu10k1x, ptr %emu, i32 0, i32 2
  %4 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i.i, align 4
  %and.i.i = and i32 %5, 1048575
  %add8.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %3) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i.i, align 4
  %add14.i.i = add i32 %8, 4
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %9 = inttoptr i32 %add16.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 0) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i.i) #11
  %conv5 = zext i8 %cmd to i32
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add.i = add i32 %11, 1
  %call2.i.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %add.i) #11
  %13 = lshr i32 %12, 16
  %14 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i.i, align 4
  %and.i.i64 = and i32 %15, 1048575
  %add8.i.i65 = or i32 %and.i.i64, -18874368
  %16 = inttoptr i32 %add8.i.i65 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #11, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @arm_heavy_mb() #11
  %17 = shl nuw i32 %conv5, 24
  %18 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i.i, align 4
  %add14.i.i66 = add i32 %19, 4
  %and15.i.i67 = and i32 %add14.i.i66, 1048575
  %add16.i.i68 = or i32 %and15.i.i67, -18874368
  %20 = inttoptr i32 %add16.i.i68 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i.i62) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ack)
  %tobool.not = icmp eq i32 %ack, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.rhs:                                         ; preds = %if.end18.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %timeout.0118 = phi i32 [ %dec, %if.end18.land.rhs_crit_edge ], [ 10000, %entry.land.rhs_crit_edge ]
  %dec = add nsw i32 %timeout.0118, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0118)
  %cmp7.not = icmp eq i32 %timeout.0118, 0
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i, align 4
  br i1 %cmp7.not, label %land.lhs.true.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  %add.i70 = add i32 %22, 1
  %call2.i.i72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %add.i70) #11
  %24 = lshr i32 %23, 16
  %25 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i.i, align 4
  %and.i.i74 = and i32 %26, 1048575
  %add8.i.i75 = or i32 %and.i.i74, -18874368
  %27 = inttoptr i32 %add8.i.i75 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #11, !srcloc !158
  %28 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i.i, align 4
  %add11.i.i = add i32 %29, 4
  %and12.i.i = and i32 %add11.i.i, 1048575
  %add13.i.i = or i32 %and12.i.i, -18874368
  %30 = inttoptr i32 %add13.i.i to ptr
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i.i72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %tobool11.not = icmp sgt i32 %31, -1
  br i1 %tobool11.not, label %if.then12, label %while.body.if.end18_crit_edge

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %call2.i.i78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  %35 = lshr i32 %34, 16
  %36 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i.i, align 4
  %and.i.i80 = and i32 %37, 1048575
  %add8.i.i81 = or i32 %and.i.i80, -18874368
  %38 = inttoptr i32 %add8.i.i81 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %35) #11, !srcloc !158
  %39 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port.i.i, align 4
  %add11.i.i82 = add i32 %40, 4
  %and12.i.i83 = and i32 %add11.i.i82, 1048575
  %add13.i.i84 = or i32 %and12.i.i83, -18874368
  %41 = inttoptr i32 %add13.i.i84 to ptr
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %41) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i.i78) #11
  %.mask117 = and i32 %42, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554432, i32 %.mask117)
  %cmp15 = icmp eq i32 %.mask117, -33554432
  %spec.select = zext i1 %cmp15 to i32
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %while.body.if.end18_crit_edge
  %ok.1 = phi i32 [ 0, %while.body.if.end18_crit_edge ], [ %spec.select, %if.then12 ]
  %tobool6.not = icmp eq i32 %ok.1, 0
  br i1 %tobool6.not, label %if.end18.land.rhs_crit_edge, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end18.land.rhs_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.lhs.true.critedge:                           ; preds = %land.rhs
  %call2.i.i88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  %44 = lshr i32 %43, 16
  %45 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port.i.i, align 4
  %and.i.i90 = and i32 %46, 1048575
  %add8.i.i91 = or i32 %and.i.i90, -18874368
  %47 = inttoptr i32 %add8.i.i91 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %47, i32 %44) #11, !srcloc !158
  %48 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port.i.i, align 4
  %add11.i.i92 = add i32 %49, 4
  %and12.i.i93 = and i32 %add11.i.i92, 1048575
  %add13.i.i94 = or i32 %and12.i.i93, -18874368
  %50 = inttoptr i32 %add13.i.i94 to ptr
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %50) #11, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i.i88) #11
  %.mask = and i32 %51, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554432, i32 %.mask)
  %cmp22 = icmp eq i32 %.mask, -33554432
  br i1 %cmp22, label %land.lhs.true.critedge.if.end26_crit_edge, label %do.end32.critedge

land.lhs.true.critedge.if.end26_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true.critedge.if.end26_crit_edge, %if.end18.if.end26_crit_edge, %entry.if.end26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock, i32 noundef %call2) #11
  br label %cleanup

do.end32.critedge:                                ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock, i32 noundef %call2) #11
  %52 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %emu, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  %56 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port.i.i, align 4
  %58 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port.i, align 4
  %add.i97 = add i32 %59, 1
  %call2.i.i99 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %60 = tail call i32 @llvm.bswap.i32(i32 %add.i97) #11
  %61 = lshr i32 %60, 16
  %62 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port.i.i, align 4
  %and.i.i101 = and i32 %63, 1048575
  %add8.i.i102 = or i32 %and.i.i101, -18874368
  %64 = inttoptr i32 %add8.i.i102 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %64, i32 %61) #11, !srcloc !158
  %65 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port.i.i, align 4
  %add11.i.i103 = add i32 %66, 4
  %and12.i.i104 = and i32 %add11.i.i103, 1048575
  %add13.i.i105 = or i32 %and12.i.i104, -18874368
  %67 = inttoptr i32 %add13.i.i105 to ptr
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %67) #11, !srcloc !163
  %69 = lshr i32 %68, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i.i99) #11
  %70 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port.i, align 4
  %call2.i.i109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #11
  %73 = lshr i32 %72, 16
  %74 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port.i.i, align 4
  %and.i.i111 = and i32 %75, 1048575
  %add8.i.i112 = or i32 %and.i.i111, -18874368
  %76 = inttoptr i32 %add8.i.i112 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %76, i32 %73) #11, !srcloc !158
  %77 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port.i.i, align 4
  %add11.i.i113 = add i32 %78, 4
  %and12.i.i114 = and i32 %add11.i.i113, 1048575
  %add13.i.i115 = or i32 %and12.i.i114, -18874368
  %79 = inttoptr i32 %add13.i.i115 to ptr
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %79) #11, !srcloc !163
  %81 = lshr i32 %80, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i.i, i32 noundef %call2.i.i109) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.34, i32 noundef %conv5, i32 noundef %57, i32 noundef %69, i32 noundef %81) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end32.critedge, %if.end26
  %retval.0 = phi i32 [ 0, %if.end26 ], [ 1, %do.end32.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_midi_input_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body26, !prof !182

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1281, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body26:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #11
  %midi_mode = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %midi_mode, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %midi_mode, align 4
  %substream_input = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %substream_input to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream_input, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call28) #11
  br i1 %tobool34.not, label %if.then35, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then35:                                        ; preds = %do.body26
  %call37 = tail call fastcc i32 @snd_emu10k1x_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext -1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then35.error_out_crit_edge

if.then35.error_out_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_out

if.end40:                                         ; preds = %if.then35
  %call41 = tail call fastcc i32 @snd_emu10k1x_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext 63, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.end40.error_out_crit_edge

if.end40.error_out_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_out

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

error_out:                                        ; preds = %if.end40.error_out_crit_edge, %if.then35.error_out_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %error_out, %if.end40.cleanup_crit_edge, %do.body26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -5, %error_out ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1x_midi_input_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body26, !prof !182

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1336, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body26:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #11
  %rx_enable = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %rx_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_enable, align 4
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %5, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add.i = add i32 %9, 12
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add5.i to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #11, !srcloc !163
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  %neg.i = xor i32 %7, -1
  %and9.i = and i32 %12, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #11
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %15, 12
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %16 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  %midi_mode = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %midi_mode, align 4
  %and = and i32 %18, -2
  store i32 %and, ptr %midi_mode, align 4
  %substream_input = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %substream_input to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %substream_input, align 4
  %and34 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call28) #11
  br i1 %tobool35.not, label %if.then36, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then36:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call fastcc i32 @snd_emu10k1x_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext -1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.body26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call38, %if.then36 ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1x_midi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !182

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1379, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool25.not = icmp eq i32 %up, 0
  %rx_enable27 = getelementptr inbounds %struct.emu10k1x_midi, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %rx_enable27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_enable27, align 4
  %emu_lock.i35 = getelementptr inbounds %struct.emu10k1x, ptr %5, i32 0, i32 7
  %call2.i36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i35) #11
  %port.i37 = getelementptr inbounds %struct.emu10k1x, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %port.i37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i37, align 4
  %add.i38 = add i32 %9, 12
  %and.i39 = and i32 %add.i38, 1048575
  %add5.i40 = or i32 %and.i39, -18874368
  %10 = inttoptr i32 %add5.i40 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %12, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %14 = ptrtoint ptr %port.i37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i37, align 4
  %add13.i = add i32 %15, 12
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %16 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i35, i32 noundef %call2.i36) #11
  br label %cleanup

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i = xor i32 %7, -1
  %and9.i = and i32 %12, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #11
  %18 = ptrtoint ptr %port.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i37, align 4
  %add14.i = add i32 %19, 12
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %20 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #11, !srcloc !158
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i35, i32 noundef %call2.i36) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then26, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1x_proc_reg_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.39) #11
  %emu_lock = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %port = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry
  %i.077 = phi i32 [ 0, %entry ], [ %add14, %do.body3.do.body3_crit_edge ]
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #11
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add = add i32 %5, %i.077
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %6 = inttoptr i32 %add8 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #11, !srcloc !163
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call5) #11
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.40, i32 noundef %i.077, i32 noundef %8) #11
  %add14 = add nuw nsw i32 %i.077, 4
  %cmp = icmp ult i32 %i.077, 28
  br i1 %cmp, label %do.body3.do.body3_crit_edge, label %for.end

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3

for.end:                                          ; preds = %do.body3
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.41) #11
  br label %for.body19

for.body19:                                       ; preds = %for.inc31.for.body19_crit_edge, %for.end
  %i.178 = phi i32 [ 0, %for.end ], [ %inc, %for.inc31.for.body19_crit_edge ]
  %shl.i = shl i32 %i.178, 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %and.i = and i32 %15, 1048575
  %add8.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #11, !srcloc !158
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add11.i = add i32 %18, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %19 = inttoptr i32 %add13.i to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #11, !srcloc !163
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.178)
  %cmp21 = icmp ult i32 %i.178, 16
  %22 = and i32 %i.178, 2147483616
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %22)
  %23 = icmp eq i32 %22, 32
  %or.cond = or i1 %cmp21, %23
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %shl.i, 1
  %call2.i59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port, align 4
  %and.i61 = and i32 %26, 1048575
  %add8.i62 = or i32 %and.i61, -18874368
  %27 = inttoptr i32 %add8.i62 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #11, !srcloc !158
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add11.i63 = add i32 %29, 4
  %and12.i64 = and i32 %add11.i63, 1048575
  %add13.i65 = or i32 %and12.i64, -18874368
  %30 = inttoptr i32 %add13.i65 to ptr
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #11, !srcloc !163
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2.i59) #11
  %or.i67 = or i32 %shl.i, 2
  %call2.i69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  tail call void @arm_heavy_mb() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i67) #11
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %and.i71 = and i32 %35, 1048575
  %add8.i72 = or i32 %and.i71, -18874368
  %36 = inttoptr i32 %add8.i72 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 %33) #11, !srcloc !158
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %add11.i73 = add i32 %38, 4
  %and12.i74 = and i32 %add11.i73, 1048575
  %add13.i75 = or i32 %and12.i74, -18874368
  %39 = inttoptr i32 %add13.i75 to ptr
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %39) #11, !srcloc !163
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2.i69) #11
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.42, i32 noundef %i.178, i32 noundef %21, i32 noundef %32, i32 noundef %41) #11
  br label %for.inc31

if.else:                                          ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.43, i32 noundef %i.178, i32 noundef %21) #11
  br label %for.inc31

for.inc31:                                        ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %i.178, 1
  %exitcond.not = icmp eq i32 %inc, 73
  br i1 %exitcond.not, label %for.end32, label %for.inc31.for.body19_crit_edge

for.inc31.for.body19_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

for.end32:                                        ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1x_proc_reg_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #2 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %reg = alloca i32, align 4
  %channel_id = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #11
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel_id) #11
  %4 = ptrtoint ptr %channel_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %channel_id, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call9 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not10 = icmp eq i32 %call9, 0
  br i1 %tobool.not10, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %emu_lock.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 7
  %port.i = getelementptr inbounds %struct.emu10k1x, ptr %1, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.44, ptr noundef nonnull %reg, ptr noundef nonnull %channel_id, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 3
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %7)
  %cmp4 = icmp ult i32 %7, 73
  br i1 %cmp4, label %land.lhs.true, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp5 = icmp ult i32 %9, 3
  br i1 %cmp5, label %if.then6, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %shl.i = shl nuw nsw i32 %7, 16
  %or.i = or i32 %9, %shl.i
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  call void @arm_heavy_mb() #11
  %12 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %and.i = and i32 %14, 1048575
  %add8.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #11, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  call void @arm_heavy_mb() #11
  %16 = call i32 @llvm.bswap.i32(i32 %11) #11
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %18, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %19 = inttoptr i32 %add16.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #11, !srcloc !158
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then6, %land.lhs.true.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel_id) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !114, !115, !117, !118, !120, !122, !123, !124, !125, !127, !129, !130, !131, !132, !134, !136, !138, !140, !142, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 32, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 33, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 40, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 41, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 42, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 43, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 44, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 45, i32 1}
!22 = !{ptr @__initcall__kmod_snd_emu10k1x__252_1571_emu10k1x_driver_init6, !23, !"__initcall__kmod_snd_emu10k1x__252_1571_emu10k1x_driver_init6", i1 false, i1 false}
!23 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1571, i32 1}
!24 = !{ptr @__exitcall_emu10k1x_driver_exit, !23, !"__exitcall_emu10k1x_driver_exit", i1 false, i1 false}
!25 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!26 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!27 = !{ptr @index, !28, !"index", i1 false, i1 false}
!28 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 36, i32 12}
!29 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!30 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!31 = !{ptr @id, !32, !"id", i1 false, i1 false}
!32 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 37, i32 14}
!33 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!34 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!35 = !{ptr @enable, !36, !"enable", i1 false, i1 false}
!36 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 38, i32 13}
!37 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @emu10k1x_driver, !39, !"emu10k1x_driver", i1 false, i1 false}
!39 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1565, i32 26}
!40 = !{ptr @snd_emu10k1x_ids, !41, !"snd_emu10k1x_ids", i1 false, i1 false}
!41 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1558, i32 35}
!42 = !{ptr @snd_emu10k1x_probe.dev, !43, !"dev", i1 false, i1 false}
!43 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1497, i32 13}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1543, i32 23}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1544, i32 26}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1545, i32 26}
!50 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 876, i32 3}
!52 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @snd_emu10k1x_create._entry, !51, !"_entry", i1 false, i1 false}
!57 = !{ptr @snd_emu10k1x_create._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @snd_emu10k1x_create.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 884, i32 2}
!60 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @snd_emu10k1x_create.__key.10, !62, !"__key", i1 false, i1 false}
!62 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 885, i32 2}
!63 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 894, i32 3}
!66 = !{ptr @snd_emu10k1x_create._entry.12, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @snd_emu10k1x_create._entry_ptr.14, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 911, i32 2}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @snd_emu10k1x_create._entry.15, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @snd_emu10k1x_create._entry_ptr.18, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 823, i32 31}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 843, i32 21}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 847, i32 21}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 851, i32 21}
!81 = !{ptr @snd_emu10k1x_playback_ops, !82, !"snd_emu10k1x_playback_ops", i1 false, i1 false}
!82 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 536, i32 33}
!83 = !{ptr @snd_emu10k1x_playback_hw, !84, !"snd_emu10k1x_playback_hw", i1 false, i1 false}
!84 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 241, i32 38}
!85 = !{ptr @snd_emu10k1x_capture_ops, !86, !"snd_emu10k1x_capture_ops", i1 false, i1 false}
!86 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 682, i32 33}
!87 = !{ptr @snd_emu10k1x_capture_hw, !88, !"snd_emu10k1x_capture_hw", i1 false, i1 false}
!88 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 260, i32 38}
!89 = !{ptr @surround_map, !90, !"surround_map", i1 false, i1 false}
!90 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 801, i32 40}
!91 = !{ptr @clfe_map, !92, !"clfe_map", i1 false, i1 false}
!92 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 807, i32 40}
!93 = !{ptr @snd_emu10k1x_ac97.ops, !94, !"ops", i1 false, i1 false}
!94 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 723, i32 39}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1112, i32 18}
!97 = !{ptr @snd_emu10k1x_spdif_mask_control, !98, !"snd_emu10k1x_spdif_mask_control", i1 false, i1 false}
!98 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1108, i32 38}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1052, i32 11}
!101 = !{ptr @snd_emu10k1x_shared_spdif, !102, !"snd_emu10k1x_shared_spdif", i1 false, i1 false}
!102 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1049, i32 38}
!103 = !{ptr @.str.27, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1121, i32 18}
!105 = !{ptr @snd_emu10k1x_spdif_control, !106, !"snd_emu10k1x_spdif_control", i1 false, i1 false}
!106 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1118, i32 38}
!107 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1481, i32 41}
!109 = !{ptr @emu10k1x_midi_init.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1461, i32 2}
!111 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @emu10k1x_midi_init.__key.30, !113, !"__key", i1 false, i1 false}
!113 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1462, i32 2}
!114 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @emu10k1x_midi_init.__key.32, !116, !"__key", i1 false, i1 false}
!116 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1463, i32 2}
!117 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @snd_emu10k1x_midi_output, !119, !"snd_emu10k1x_midi_output", i1 false, i1 false}
!119 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1429, i32 37}
!120 = !{ptr @.str.34, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1264, i32 3}
!122 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @snd_emu10k1x_midi_cmd._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @snd_emu10k1x_midi_cmd._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @snd_emu10k1x_midi_input, !126, !"snd_emu10k1x_midi_input", i1 false, i1 false}
!126 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1436, i32 37}
!127 = !{ptr @.str.36, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1188, i32 3}
!129 = !{ptr @.str.37, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @mpu401_clear_rx._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @mpu401_clear_rx._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.38, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 1009, i32 34}
!134 = !{ptr @.str.39, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 971, i32 2}
!136 = !{ptr @.str.40, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 976, i32 3}
!138 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 978, i32 2}
!140 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 984, i32 4}
!142 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 986, i32 4}
!144 = !{ptr @.str.44, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/emu10k1/emu10k1x.c", i32 999, i32 20}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"auto-init"}
!156 = !{i8 0, i8 2}
!157 = !{i64 2154778300}
!158 = !{i64 4242520}
!159 = !{i64 2154761920}
!160 = !{i64 2154762405}
!161 = !{i64 2154766329}
!162 = !{i64 2154779073}
!163 = !{i64 4242938}
!164 = !{i64 2154771894}
!165 = !{i64 2154765207}
!166 = !{i64 2154765473}
!167 = !{i64 2154772266}
!168 = !{i64 2154770482}
!169 = !{i64 2154770976}
!170 = !{i64 2154763666}
!171 = !{i64 2154763932}
!172 = !{i64 2154760394}
!173 = !{i64 2154761299}
!174 = !{i64 2154769598}
!175 = !{i64 4242323}
!176 = !{i64 2154769981}
!177 = !{i64 4241900}
!178 = !{i64 2154768212}
!179 = !{i64 4242100}
!180 = !{i64 2154769016}
!181 = !{i64 740386, i64 740403}
!182 = !{!"branch_weights", i32 1, i32 2000}
!183 = !{i64 2154780437}
