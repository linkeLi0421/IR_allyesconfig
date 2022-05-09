; ModuleID = '/llk/IR_all_yes/sound/pci/atiixp.c_pt.bc'
source_filename = "../sound/pci/atiixp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ac97_quirk = type { i16, i16, i16, i32, ptr, i32 }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.atiixp_dma_ops = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ac97_pcm = type { ptr, i8, i16, i16, i32, [2 x %struct.anon.86], i32 }
%struct.anon.86 = type { i16, [4 x i16], [4 x i8], [4 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
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
%struct.atiixp = type { ptr, ptr, i32, ptr, i32, ptr, [3 x ptr], %struct.spinlock, [3 x %struct.atiixp_dma], [3 x ptr], [2 x ptr], i32, i32, i32, %struct.mutex }
%struct.atiixp_dma = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_chmap = type { ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.74, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.74 = type { i32, [28 x i8] }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.atiixp_dma_desc = type { i32, i16, i16, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [47 x i8] c"snd_atiixp.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [47 x i8] c"snd_atiixp.description=ATI IXP AC97 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [37 x i8] c"snd_atiixp.file=sound/pci/snd-atiixp\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"snd_atiixp.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_atiixp.index\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [30 x i8] c"snd_atiixp.parmtype=index:int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [58 x i8] c"snd_atiixp.parm=index:Index value for ATI IXP controller.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_atiixp.id\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [29 x i8] c"snd_atiixp.parmtype=id:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [53 x i8] c"snd_atiixp.parm=id:ID string for ATI IXP controller.\00", section ".modinfo", align 1
@__param_str_ac97_clock = internal constant [22 x i8] c"snd_atiixp.ac97_clock\00", align 1
@ac97_clock = internal global { i32, [28 x i8] } { i32 48000, [28 x i8] zeroinitializer }, align 32
@__param_ac97_clock = internal constant %struct.kernel_param { ptr @__param_str_ac97_clock, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_clock } }, section "__param", align 4
@__UNIQUE_ID_ac97_clocktype250 = internal constant [35 x i8] c"snd_atiixp.parmtype=ac97_clock:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_clock251 = internal constant [64 x i8] c"snd_atiixp.parm=ac97_clock:AC'97 codec clock (default 48000Hz).\00", section ".modinfo", align 1
@__param_str_ac97_quirk = internal constant [22 x i8] c"snd_atiixp.ac97_quirk\00", align 1
@ac97_quirk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_ac97_quirk = internal constant %struct.kernel_param { ptr @__param_str_ac97_quirk, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_quirk } }, section "__param", align 4
@__UNIQUE_ID_ac97_quirktype252 = internal constant [37 x i8] c"snd_atiixp.parmtype=ac97_quirk:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_quirk253 = internal constant [66 x i8] c"snd_atiixp.parm=ac97_quirk:AC'97 workaround for strange hardware.\00", section ".modinfo", align 1
@__param_str_ac97_codec = internal constant [22 x i8] c"snd_atiixp.ac97_codec\00", align 1
@ac97_codec = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_ac97_codec = internal constant %struct.kernel_param { ptr @__param_str_ac97_codec, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_codec } }, section "__param", align 4
@__UNIQUE_ID_ac97_codectype254 = internal constant [35 x i8] c"snd_atiixp.parmtype=ac97_codec:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_codec255 = internal constant [61 x i8] c"snd_atiixp.parm=ac97_codec:Specify codec instead of probing.\00", section ".modinfo", align 1
@__param_str_spdif_aclink = internal constant [24 x i8] c"snd_atiixp.spdif_aclink\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@spdif_aclink = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_spdif_aclink = internal constant %struct.kernel_param { ptr @__param_str_spdif_aclink, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @spdif_aclink } }, section "__param", align 4
@__UNIQUE_ID_spdif_aclinktype256 = internal constant [38 x i8] c"snd_atiixp.parmtype=spdif_aclink:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_spdif_aclink257 = internal constant [50 x i8] c"snd_atiixp.parm=spdif_aclink:S/PDIF over AC-link.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_atiixp.enable\00", align 1
@enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype258 = internal constant [32 x i8] c"snd_atiixp.parmtype=enable:bool\00", section ".modinfo", align 1
@__initcall__kmod_snd_atiixp__263_1635_atiixp_driver_init6 = internal global ptr @atiixp_driver_init, section ".initcall6.init", align 4
@atiixp_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_atiixp_ids, ptr @snd_atiixp_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_atiixp_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_atiixp_driver_exit = internal global ptr @atiixp_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_atiixp\00", [21 x i8] zeroinitializer }, align 32
@snd_atiixp_ids = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4098, i32 17217, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17249, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17264, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17282, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_atiixp_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_atiixp_suspend, ptr @snd_atiixp_resume, ptr @snd_atiixp_suspend, ptr @snd_atiixp_resume, ptr @snd_atiixp_suspend, ptr @snd_atiixp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ATIIXP\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATIIXP-SPDMA\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s rev %x with %s at %#lx, irq %i\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@snd_atiixp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_atiixp_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->open_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATI IXP AC97\00", [19 x i8] zeroinitializer }, align 32
@snd_atiixp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1563, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_atiixp_init\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/pci/atiixp.c\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_atiixp_init._entry_ptr = internal global ptr @snd_atiixp_init._entry, section ".printk_index", align 4
@snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.12, ptr @.str.16, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_atiixp_xrun_dma\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"XRUN detected (DMA %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_atiixp_aclink_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.12, i32 511, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"codec reset timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_atiixp_aclink_reset\00", [40 x i8] zeroinitializer }, align 32
@snd_atiixp_aclink_reset._entry_ptr = internal global ptr @snd_atiixp_aclink_reset._entry, section ".printk_index", align 4
@snd_atiixp_mixer_new.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_atiixp_ac97_write, ptr @snd_atiixp_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_atiixp_mixer_new.codec_skip = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1024, i32 2048, i32 4096], [20 x i8] zeroinitializer }, align 32
@snd_atiixp_mixer_new.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.12, ptr @.str.20, i8 1, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_atiixp_mixer_new\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"codec %d not available for audio\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_atiixp_mixer_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.12, i32 1447, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no codec available\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_atiixp_mixer_new._entry_ptr = internal global ptr @snd_atiixp_mixer_new._entry, section ".printk_index", align 4
@ac97_quirks = internal constant { [4 x %struct.ac97_quirk], [48 x i8] } { [4 x %struct.ac97_quirk] [%struct.ac97_quirk { i16 4156, i16 107, i16 0, i32 0, ptr @.str.33, i32 7 }, %struct.ac97_quirk { i16 4156, i16 12427, i16 0, i32 0, ptr @.str.34, i32 7 }, %struct.ac97_quirk { i16 4156, i16 12433, i16 0, i32 0, ptr @.str.35, i32 7 }, %struct.ac97_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@snd_atiixp_acquire_codec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.12, i32 420, ptr @.str.24, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"codec acquire timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_atiixp_acquire_codec\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_atiixp_acquire_codec._entry_ptr = internal global ptr @snd_atiixp_acquire_codec._entry, section ".printk_index", align 4
@snd_atiixp_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.12, i32 451, ptr @.str.24, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"codec read timeout (reg %x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_atiixp_codec_read\00", [42 x i8] zeroinitializer }, align 32
@snd_atiixp_codec_read._entry_ptr = internal global ptr @snd_atiixp_codec_read._entry, section ".printk_index", align 4
@snd_atiixp_codec_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.12, i32 587, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no codec detected!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_atiixp_codec_detect\00", [40 x i8] zeroinitializer }, align 32
@snd_atiixp_codec_detect._entry_ptr = internal global ptr @snd_atiixp_codec_detect._entry, section ".printk_index", align 4
@atiixp_quirks = internal constant { [3 x %struct.snd_pci_quirk], [48 x i8] } { [3 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4187, i16 3201, i16 -1, i32 0, ptr @.str.31 }, %struct.snd_pci_quirk { i16 5565, i16 12544, i16 -1, i32 0, ptr @.str.32 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ac97_probing_bugs.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.12, ptr @.str.30, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ac97_probing_bugs\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"atiixp quirk for %s.  Forcing codec %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Foxconn RC4107MA-RS2\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DFI RS482\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HP Pavilion ZV5030US\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP nx6125\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown HP\00", [21 x i8] zeroinitializer }, align 32
@snd_atiixp_playback_dma_ops = internal constant { %struct.atiixp_dma_ops, [40 x i8] } { %struct.atiixp_dma_ops { i32 0, i32 56, i32 68, ptr @atiixp_out_enable_dma, ptr @atiixp_out_enable_transfer, ptr @atiixp_out_flush_dma }, [40 x i8] zeroinitializer }, align 32
@snd_atiixp_capture_dma_ops = internal constant { %struct.atiixp_dma_ops, [40 x i8] } { %struct.atiixp_dma_ops { i32 1, i32 32, i32 44, ptr @atiixp_in_enable_dma, ptr @atiixp_in_enable_transfer, ptr @atiixp_in_flush_dma }, [40 x i8] zeroinitializer }, align 32
@snd_atiixp_spdif_dma_ops = internal constant { %struct.atiixp_dma_ops, [40 x i8] } { %struct.atiixp_dma_ops { i32 2, i32 80, i32 92, ptr @atiixp_spdif_enable_dma, ptr @atiixp_spdif_enable_transfer, ptr @atiixp_spdif_flush_dma }, [40 x i8] zeroinitializer }, align 32
@atiixp_pcm_defs = internal constant { [3 x %struct.ac97_pcm], [36 x i8] } { [3 x %struct.ac97_pcm] [%struct.ac97_pcm { ptr null, i8 64, i16 0, i16 0, i32 0, [2 x %struct.anon.86] [%struct.anon.86 { i16 984, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.86 zeroinitializer], i32 0 }, %struct.ac97_pcm { ptr null, i8 -64, i16 0, i16 0, i32 0, [2 x %struct.anon.86] [%struct.anon.86 { i16 24, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.86 zeroinitializer], i32 0 }, %struct.ac97_pcm { ptr null, i8 80, i16 0, i16 0, i32 0, [2 x %struct.anon.86] [%struct.anon.86 { i16 3072, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.86 zeroinitializer], i32 0 }], [36 x i8] zeroinitializer }, align 32
@snd_atiixp_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_atiixp_playback_open, ptr @snd_atiixp_playback_close, ptr null, ptr @snd_atiixp_pcm_hw_params, ptr @snd_atiixp_pcm_hw_free, ptr @snd_atiixp_playback_prepare, ptr @snd_atiixp_pcm_trigger, ptr null, ptr @snd_atiixp_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_atiixp_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_atiixp_capture_open, ptr @snd_atiixp_capture_close, ptr null, ptr @snd_atiixp_pcm_hw_params, ptr @snd_atiixp_pcm_hw_free, ptr @snd_atiixp_capture_prepare, ptr @snd_atiixp_pcm_trigger, ptr null, ptr @snd_atiixp_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_pcm_alt_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ATI IXP IEC958\00", [17 x i8] zeroinitializer }, align 32
@snd_atiixp_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_atiixp_spdif_open, ptr @snd_atiixp_spdif_close, ptr null, ptr @snd_atiixp_pcm_hw_params, ptr @snd_atiixp_pcm_hw_free, ptr @snd_atiixp_spdif_prepare, ptr @snd_atiixp_pcm_trigger, ptr null, ptr @snd_atiixp_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ATI IXP IEC958 (AC97)\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ATI IXP IEC958 (Direct)\00", [40 x i8] zeroinitializer }, align 32
@snd_atiixp_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 1028, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 262144, i32 32, i32 131072, i32 2, i32 256, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_atiixp_pcm_pointer.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.12, ptr @.str.40, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_atiixp_pcm_pointer\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid DMA pointer read 0x%x (buf=%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atiixp\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x: %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.43 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 27, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 28, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"ac97_clock\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 29, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"ac97_quirk\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 30, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"ac97_codec\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 32, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"spdif_aclink\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 31, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 48, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"atiixp_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1626, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1635, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"snd_atiixp_ids\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 274, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"snd_atiixp_pm\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1502, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1588, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1588, i32 49 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1613, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1615, i32 61 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1550, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1551, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1555, i32 40 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1563, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 675, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 511, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1406, i32 39 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"codec_skip\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1410, i32 28 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1439, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1447, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"ac97_quirks\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1377, i32 32 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 420, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 451, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 587, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [14 x i8] c"atiixp_quirks\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 284, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 555, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 285, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 286, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1381, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1387, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1393, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant [28 x i8] c"snd_atiixp_playback_dma_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1208, i32 36 }
@___asan_gen_.215 = private unnamed_addr constant [27 x i8] c"snd_atiixp_capture_dma_ops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1217, i32 36 }
@___asan_gen_.218 = private unnamed_addr constant [25 x i8] c"snd_atiixp_spdif_dma_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1226, i32 36 }
@___asan_gen_.221 = private unnamed_addr constant [16 x i8] c"atiixp_pcm_defs\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1172, i32 30 }
@___asan_gen_.224 = private unnamed_addr constant [24 x i8] c"snd_atiixp_playback_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1140, i32 33 }
@___asan_gen_.227 = private unnamed_addr constant [23 x i8] c"snd_atiixp_capture_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1151, i32 33 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1299, i32 32 }
@___asan_gen_.233 = private unnamed_addr constant [21 x i8] c"snd_atiixp_spdif_ops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1162, i32 33 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1306, i32 21 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1308, i32 21 }
@___asan_gen_.242 = private unnamed_addr constant [18 x i8] c"snd_atiixp_pcm_hw\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1000, i32 38 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 663, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1525, i32 35 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [22 x i8] c"../sound/pci/atiixp.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1520, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_ac97_clock251, ptr @__UNIQUE_ID_ac97_clocktype250, ptr @__UNIQUE_ID_ac97_codec255, ptr @__UNIQUE_ID_ac97_codectype254, ptr @__UNIQUE_ID_ac97_quirk253, ptr @__UNIQUE_ID_ac97_quirktype252, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enabletype258, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_spdif_aclink257, ptr @__UNIQUE_ID_spdif_aclinktype256, ptr @__exitcall_atiixp_driver_exit, ptr @__initcall__kmod_snd_atiixp__263_1635_atiixp_driver_init6, ptr @__param_ac97_clock, ptr @__param_ac97_codec, ptr @__param_ac97_quirk, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_spdif_aclink, ptr @atiixp_driver_exit, ptr @snd_atiixp_aclink_reset._entry, ptr @snd_atiixp_aclink_reset._entry_ptr, ptr @snd_atiixp_acquire_codec._entry, ptr @snd_atiixp_acquire_codec._entry_ptr, ptr @snd_atiixp_codec_detect._entry, ptr @snd_atiixp_codec_detect._entry_ptr, ptr @snd_atiixp_codec_read._entry, ptr @snd_atiixp_codec_read._entry_ptr, ptr @snd_atiixp_init._entry, ptr @snd_atiixp_init._entry_ptr, ptr @snd_atiixp_mixer_new._entry, ptr @snd_atiixp_mixer_new._entry_ptr, ptr @index, ptr @id, ptr @ac97_clock, ptr @ac97_quirk, ptr @ac97_codec, ptr @spdif_aclink, ptr @enable, ptr @atiixp_driver, ptr @.str, ptr @snd_atiixp_ids, ptr @snd_atiixp_pm, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @snd_atiixp_init.__key, ptr @.str.6, ptr @snd_atiixp_init.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @snd_atiixp_mixer_new.ops, ptr @snd_atiixp_mixer_new.codec_skip, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ac97_quirks, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @atiixp_quirks, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @snd_atiixp_playback_dma_ops, ptr @snd_atiixp_capture_dma_ops, ptr @snd_atiixp_spdif_dma_ops, ptr @atiixp_pcm_defs, ptr @snd_atiixp_playback_ops, ptr @snd_atiixp_capture_ops, ptr @.str.36, ptr @snd_atiixp_spdif_ops, ptr @.str.37, ptr @.str.38, ptr @snd_atiixp_pcm_hw, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_clock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_quirk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_codec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_aclink to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_ids to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_aclink_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_mixer_new.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_mixer_new.codec_skip to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_mixer_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_quirks to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_acquire_codec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_codec_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_quirks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_playback_dma_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_capture_dma_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_spdif_dma_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_pcm_defs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atiixp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @atiixp_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @atiixp_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %chmap.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #8
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !191
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %1 = load i32, ptr @index, align 4
  %2 = load ptr, ptr @id, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 444, ptr noundef nonnull %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 2
  %7 = load i8, ptr @spdif_aclink, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.2, ptr @.str.1
  %call1 = call ptr @strcpy(ptr noundef %driver, ptr noundef nonnull %cond) #11
  %shortname = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %shortname to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 4707467913527316480, ptr %shortname, align 1
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %do.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  %reg_lock.i = getelementptr inbounds %struct.atiixp, ptr %10, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_atiixp_init.__key, i16 noundef signext 3) #8
  %open_mutex.i = getelementptr inbounds %struct.atiixp, ptr %10, i32 0, i32 14
  call void @__mutex_init(ptr noundef %open_mutex.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @snd_atiixp_init.__key.7) #8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %4, ptr %10, align 4
  %pci6.i = getelementptr inbounds %struct.atiixp, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pci6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pci, ptr %pci6.i, align 4
  %irq.i = getelementptr inbounds %struct.atiixp, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %irq.i, align 4
  %call7.i = call i32 @pcim_iomap_regions(ptr noundef %pci, i32 noundef 1, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.body.i.cleanup_crit_edge, label %if.end10.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i:                                       ; preds = %do.body.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %14 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resource.i, align 8
  %addr.i = getelementptr inbounds %struct.atiixp, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %addr.i, align 4
  %call11.i = call ptr @pcim_iomap_table(ptr noundef %pci) #8
  %17 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call11.i, align 4
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %remap_addr.i, align 4
  %irq13.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %20 = ptrtoint ptr %irq13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq13.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull @snd_atiixp_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end7, label %do.end18.i

do.end18.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev19.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %22 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev19.i, align 8
  %24 = ptrtoint ptr %irq13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq13.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %25) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end10.i
  %26 = ptrtoint ptr %irq13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq13.i, align 4
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 33
  %29 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 10
  %30 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @snd_atiixp_free, ptr %private_free.i, align 4
  call void @pci_set_master(ptr noundef %pci) #8
  call fastcc void @snd_atiixp_aclink_reset(ptr noundef %6)
  %31 = load i8, ptr @spdif_aclink, align 1, !range !192
  %32 = zext i8 %31 to i32
  %spdif_over_aclink = getelementptr inbounds %struct.atiixp, ptr %6, i32 0, i32 13
  %33 = ptrtoint ptr %spdif_over_aclink to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %spdif_over_aclink, align 4
  %34 = load i32, ptr @ac97_clock, align 4
  %35 = load ptr, ptr @ac97_quirk, align 4
  %call13 = call fastcc i32 @snd_atiixp_mixer_new(ptr noundef %6, i32 noundef %34, ptr noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end7.cleanup_crit_edge, label %if.end17

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #8
  %36 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !191
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chmap.i) #8
  %37 = ptrtoint ptr %chmap.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %chmap.i, align 4, !annotation !191
  %ac97_bus.i = getelementptr inbounds %struct.atiixp, ptr %6, i32 0, i32 5
  %38 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ac97_bus.i, align 4
  %dmas.i = getelementptr inbounds %struct.atiixp, ptr %6, i32 0, i32 8
  %40 = ptrtoint ptr %dmas.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @snd_atiixp_playback_dma_ops, ptr %dmas.i, align 4
  %arrayidx2.i = getelementptr %struct.atiixp, ptr %6, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @snd_atiixp_capture_dma_ops, ptr %arrayidx2.i, align 4
  %42 = ptrtoint ptr %spdif_over_aclink to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %spdif_over_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i64 = icmp eq i32 %43, 0
  br i1 %tobool.not.i64, label %if.then.i, label %if.end17.if.end.i_crit_edge

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i = getelementptr %struct.atiixp, ptr %6, i32 0, i32 8, i32 2
  %44 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @snd_atiixp_spdif_dma_ops, ptr %arrayidx5.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end17.if.end.i_crit_edge
  %..i = phi i16 [ 2, %if.then.i ], [ 3, %if.end17.if.end.i_crit_edge ]
  %call.i65 = call i32 @snd_ac97_pcm_assign(ptr noundef %39, i16 noundef zeroext %..i, ptr noundef nonnull @atiixp_pcm_defs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.i66 = icmp slt i32 %call.i65, 0
  br i1 %cmp.i66, label %if.end.i.snd_atiixp_pcm_new.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.i.snd_atiixp_pcm_new.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_pcm_new.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i
  %pcms.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %39, i32 0, i32 10
  %45 = ptrtoint ptr %pcms.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcms.i, align 4
  %arrayidx18.i = getelementptr %struct.atiixp, ptr %6, i32 0, i32 9, i32 0
  %47 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %arrayidx18.i, align 4
  %48 = load ptr, ptr %pcms.i, align 4
  %arrayidx16.i.1 = getelementptr %struct.ac97_pcm, ptr %48, i32 1
  %arrayidx18.i.1 = getelementptr %struct.atiixp, ptr %6, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %arrayidx18.i.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx16.i.1, ptr %arrayidx18.i.1, align 4
  br i1 %tobool.not.i64, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.i.2

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %pcms.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcms.i, align 4
  %arrayidx16.i.2 = getelementptr %struct.ac97_pcm, ptr %51, i32 2
  %arrayidx18.i.2 = getelementptr %struct.atiixp, ptr %6, i32 0, i32 9, i32 2
  %52 = ptrtoint ptr %arrayidx18.i.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx16.i.2, ptr %arrayidx18.i.2, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.2, %for.cond.preheader.i.for.end.i_crit_edge
  %max_channels.i = getelementptr inbounds %struct.atiixp, ptr %6, i32 0, i32 11
  %53 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %max_channels.i, align 4
  %54 = ptrtoint ptr %pcms.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pcms.i, align 4
  %r.i = getelementptr inbounds %struct.ac97_pcm, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %r.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %r.i, align 4
  %conv22.i = zext i16 %57 to i32
  %and.i = and i32 %conv22.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %for.end.i.if.end38.i_crit_edge, label %if.then24.i

for.end.i.if.end38.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then24.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and31.i = and i32 %conv22.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %.163.i = select i1 %tobool32.not.i, i32 4, i32 6
  %58 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.163.i, ptr %max_channels.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then24.i, %for.end.i.if.end38.i_crit_edge
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %6, align 4
  %call39.i = call i32 @snd_pcm_new(ptr noundef %60, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %if.end38.i.snd_atiixp_pcm_new.exit.thread_crit_edge, label %if.end43.i

if.end38.i.snd_atiixp_pcm_new.exit.thread_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_pcm_new.exit.thread

if.end43.i:                                       ; preds = %if.end38.i
  %61 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %62, i32 noundef 0, ptr noundef nonnull @snd_atiixp_playback_ops) #8
  %63 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %64, i32 noundef 1, ptr noundef nonnull @snd_atiixp_capture_ops) #8
  %65 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcm.i, align 4
  %private_data.i67 = getelementptr inbounds %struct.snd_pcm, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %private_data.i67 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %6, ptr %private_data.i67, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %66, i32 0, i32 7
  %68 = call ptr @memcpy(ptr %name.i, ptr @.str.9, i32 13)
  %pcmdevs.i = getelementptr inbounds %struct.atiixp, ptr %6, i32 0, i32 10
  %69 = ptrtoint ptr %pcmdevs.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %pcmdevs.i, align 4
  %pci.i = getelementptr inbounds %struct.atiixp, ptr %6, i32 0, i32 1
  %70 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci.i, align 4
  %dev.i68 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %call46.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %66, i32 noundef 2, ptr noundef %dev.i68, i32 noundef 65536, i32 noundef 131072) #8
  %72 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcm.i, align 4
  %74 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_channels.i, align 4
  %call48.i = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %73, i32 noundef 0, ptr noundef nonnull @snd_pcm_alt_chmaps, i32 noundef %75, i32 noundef 0, ptr noundef nonnull %chmap.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.end43.i.snd_atiixp_pcm_new.exit.thread_crit_edge, label %if.end52.i

if.end43.i.snd_atiixp_pcm_new.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_pcm_new.exit.thread

if.end52.i:                                       ; preds = %if.end43.i
  %76 = ptrtoint ptr %chmap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chmap.i, align 4
  %channel_mask.i = getelementptr inbounds %struct.snd_pcm_chmap, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %channel_mask.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 340, ptr %channel_mask.i, align 4
  %ac97.i = getelementptr %struct.atiixp, ptr %6, i32 0, i32 6
  %79 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ac97.i, align 4
  %chmaps.i = getelementptr inbounds %struct.snd_ac97, ptr %80, i32 0, i32 31
  %81 = ptrtoint ptr %chmaps.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %77, ptr %chmaps.i, align 4
  %arrayidx56.i = getelementptr %struct.atiixp, ptr %6, i32 0, i32 9, i32 2
  %82 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx56.i, align 4
  %tobool57.not.i = icmp eq ptr %83, null
  br i1 %tobool57.not.i, label %if.end52.i.if.end70.i_crit_edge, label %land.lhs.true.i

if.end52.i.if.end70.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i

land.lhs.true.i:                                  ; preds = %if.end52.i
  %rates.i = getelementptr inbounds %struct.ac97_pcm, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool60.not.i = icmp eq i32 %85, 0
  br i1 %tobool60.not.i, label %land.lhs.true.i.if.end22_crit_edge, label %if.then66.i

land.lhs.true.i.if.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then66.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 128, ptr %rates.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %if.end52.i.if.end70.i_crit_edge
  %87 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %6, align 4
  %call72.i = call i32 @snd_pcm_new(ptr noundef %88, ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %cmp73.i = icmp slt i32 %call72.i, 0
  br i1 %cmp73.i, label %if.end70.i.snd_atiixp_pcm_new.exit.thread_crit_edge, label %if.end76.i

if.end70.i.snd_atiixp_pcm_new.exit.thread_crit_edge: ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_pcm_new.exit.thread

if.end76.i:                                       ; preds = %if.end70.i
  %89 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %90, i32 noundef 0, ptr noundef nonnull @snd_atiixp_spdif_ops) #8
  %91 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pcm.i, align 4
  %private_data77.i = getelementptr inbounds %struct.snd_pcm, ptr %92, i32 0, i32 11
  %93 = ptrtoint ptr %private_data77.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %6, ptr %private_data77.i, align 8
  %94 = ptrtoint ptr %spdif_over_aclink to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %spdif_over_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool79.not.i = icmp eq i32 %95, 0
  %name85.i = getelementptr inbounds %struct.snd_pcm, ptr %92, i32 0, i32 7
  br i1 %tobool79.not.i, label %if.else84.i, label %if.then80.i

if.then80.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = call ptr @memcpy(ptr %name85.i, ptr @.str.37, i32 22)
  br label %if.end88.i

if.else84.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = call ptr @memcpy(ptr %name85.i, ptr @.str.38, i32 24)
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else84.i, %if.then80.i
  %arrayidx90.i = getelementptr %struct.atiixp, ptr %6, i32 0, i32 10, i32 1
  %98 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %92, ptr %arrayidx90.i, align 4
  %99 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pci.i, align 4
  %dev92.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %call93.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %92, i32 noundef 2, ptr noundef %dev92.i, i32 noundef 65536, i32 noundef 131072) #8
  %101 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ac97.i, align 4
  %tobool100.not.i = icmp eq ptr %102, null
  br i1 %tobool100.not.i, label %if.end88.i.for.inc106.i_crit_edge, label %if.then101.i

if.end88.i.for.inc106.i_crit_edge:                ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc106.i

if.then101.i:                                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  %call104.i = call i32 @snd_ac97_update_bits(ptr noundef nonnull %102, i16 noundef zeroext 42, i16 noundef zeroext 48, i16 noundef zeroext 48) #8
  br label %for.inc106.i

for.inc106.i:                                     ; preds = %if.then101.i, %if.end88.i.for.inc106.i_crit_edge
  %arrayidx99.1.i = getelementptr %struct.atiixp, ptr %6, i32 0, i32 6, i32 1
  %103 = ptrtoint ptr %arrayidx99.1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx99.1.i, align 4
  %tobool100.not.1.i = icmp eq ptr %104, null
  br i1 %tobool100.not.1.i, label %for.inc106.i.for.inc106.1.i_crit_edge, label %if.then101.1.i

for.inc106.i.for.inc106.1.i_crit_edge:            ; preds = %for.inc106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc106.1.i

if.then101.1.i:                                   ; preds = %for.inc106.i
  call void @__sanitizer_cov_trace_pc() #10
  %call104.1.i = call i32 @snd_ac97_update_bits(ptr noundef nonnull %104, i16 noundef zeroext 42, i16 noundef zeroext 48, i16 noundef zeroext 48) #8
  br label %for.inc106.1.i

for.inc106.1.i:                                   ; preds = %if.then101.1.i, %for.inc106.i.for.inc106.1.i_crit_edge
  %arrayidx99.2.i = getelementptr %struct.atiixp, ptr %6, i32 0, i32 6, i32 2
  %105 = ptrtoint ptr %arrayidx99.2.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx99.2.i, align 4
  %tobool100.not.2.i = icmp eq ptr %106, null
  br i1 %tobool100.not.2.i, label %for.inc106.1.i.if.end22_crit_edge, label %if.then101.2.i

for.inc106.1.i.if.end22_crit_edge:                ; preds = %for.inc106.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then101.2.i:                                   ; preds = %for.inc106.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call104.2.i = call i32 @snd_ac97_update_bits(ptr noundef nonnull %106, i16 noundef zeroext 42, i16 noundef zeroext 48, i16 noundef zeroext 48) #8
  br label %if.end22

snd_atiixp_pcm_new.exit.thread:                   ; preds = %if.end70.i.snd_atiixp_pcm_new.exit.thread_crit_edge, %if.end43.i.snd_atiixp_pcm_new.exit.thread_crit_edge, %if.end38.i.snd_atiixp_pcm_new.exit.thread_crit_edge, %if.end.i.snd_atiixp_pcm_new.exit.thread_crit_edge
  %retval.0.i69.ph = phi i32 [ %call72.i, %if.end70.i.snd_atiixp_pcm_new.exit.thread_crit_edge ], [ %call48.i, %if.end43.i.snd_atiixp_pcm_new.exit.thread_crit_edge ], [ %call39.i, %if.end38.i.snd_atiixp_pcm_new.exit.thread_crit_edge ], [ %call.i65, %if.end.i.snd_atiixp_pcm_new.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #8
  br label %cleanup

if.end22:                                         ; preds = %if.then101.2.i, %for.inc106.1.i.if.end22_crit_edge, %land.lhs.true.i.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #8
  %107 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %6, align 4
  %call.i.i70 = call i32 @snd_card_rw_proc_new(ptr noundef %108, ptr noundef nonnull @.str.41, ptr noundef %6, ptr noundef nonnull @snd_atiixp_proc_read, ptr noundef null) #8
  %remap_addr.i71 = getelementptr inbounds %struct.atiixp, ptr %6, i32 0, i32 3
  %109 = ptrtoint ptr %remap_addr.i71 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %remap_addr.i71, align 4
  %add.ptr.i = getelementptr i8, ptr %110, i32 8
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %112 = or i32 %111, -2147483646
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  call void @arm_heavy_mb() #8
  %113 = ptrtoint ptr %remap_addr.i71 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %remap_addr.i71, align 4
  %add.ptr4.i = getelementptr i8, ptr %114, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %112) #8, !srcloc !196
  %115 = ptrtoint ptr %remap_addr.i71 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %remap_addr.i71, align 4
  %add.ptr8.i = getelementptr i8, ptr %116, i32 76
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %118 = and i32 %117, -805306369
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  call void @arm_heavy_mb() #8
  %119 = ptrtoint ptr %remap_addr.i71 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %remap_addr.i71, align 4
  %add.ptr16.i = getelementptr i8, ptr %120, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %118) #8, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %remap_addr.i71 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %remap_addr.i71, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 -1) #8, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  call void @arm_heavy_mb() #8
  %123 = ptrtoint ptr %remap_addr.i71 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %remap_addr.i71, align 4
  %add.ptr26.i = getelementptr i8, ptr %124, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 922746880) #8, !srcloc !196
  %125 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %126, i32 0, i32 4
  %shortname25 = getelementptr inbounds %struct.snd_card, ptr %126, i32 0, i32 3
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %127 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %revision, align 4
  %conv27 = zext i8 %128 to i32
  %129 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ac97.i, align 4
  %tobool28.not = icmp eq ptr %130, null
  br i1 %tobool28.not, label %if.end22.cond.end_crit_edge, label %cond.true

if.end22.cond.end_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = call ptr @snd_ac97_get_short_name(ptr noundef nonnull %130) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end22.cond.end_crit_edge
  %cond32 = phi ptr [ %call31, %cond.true ], [ @.str.5, %if.end22.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.atiixp, ptr %6, i32 0, i32 2
  %131 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %addr, align 4
  %irq = getelementptr inbounds %struct.atiixp, ptr %6, i32 0, i32 4
  %133 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %irq, align 4
  %call33 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.4, ptr noundef %shortname25, i32 noundef %conv27, ptr noundef %cond32, i32 noundef %132, i32 noundef %134)
  %135 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %card, align 4
  %call34 = call i32 @snd_card_register(ptr noundef %136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %cond.end.cleanup_crit_edge, label %if.end38

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %139 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %cond.end.cleanup_crit_edge, %snd_atiixp_pcm_new.exit.thread, %if.end7.cleanup_crit_edge, %do.end18.i, %do.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ %call, %entry.cleanup_crit_edge ], [ %call13, %if.end7.cleanup_crit_edge ], [ %call34, %cond.end.cleanup_crit_edge ], [ %retval.0.i69.ph, %snd_atiixp_pcm_new.exit.thread ], [ %call7.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -16, %do.end18.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_atiixp_aclink_reset(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i = and i32 %3, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i)
  %cmp.i = icmp eq i32 %3, %and.i
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #8, !srcloc !193
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %or.i = or i32 %9, 536870912
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %or.i)
  %cmp.i4 = icmp eq i32 %9, %or.i
  br i1 %cmp.i4, label %if.end.snd_atiixp_update_bits.exit7_crit_edge, label %do.body.i5

if.end.snd_atiixp_update_bits.exit7_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit7

do.body.i5:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %10) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit7

snd_atiixp_update_bits.exit7:                     ; preds = %do.body.i5, %if.end.snd_atiixp_update_bits.exit7_crit_edge
  %11 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #8
  %15 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #8, !srcloc !193
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i10 = and i32 %18, -536870913
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %and.i10)
  %cmp.i11 = icmp eq i32 %18, %and.i10
  br i1 %cmp.i11, label %snd_atiixp_update_bits.exit7.while.cond.preheader_crit_edge, label %do.body.i12

snd_atiixp_update_bits.exit7.while.cond.preheader_crit_edge: ; preds = %snd_atiixp_update_bits.exit7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

do.body.i12:                                      ; preds = %snd_atiixp_update_bits.exit7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i10) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %19) #8, !srcloc !196
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.body.i12, %snd_atiixp_update_bits.exit7.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %snd_atiixp_update_bits.exit30.while.cond_crit_edge, %while.cond.preheader
  %timeout.0 = phi i32 [ %dec, %snd_atiixp_update_bits.exit30.while.cond_crit_edge ], [ 10, %while.cond.preheader ]
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr8 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not = icmp eq i32 %23, 0
  br i1 %tobool12.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %24 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #8, !srcloc !193
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i17 = and i32 %27, 1073741823
  %or.i18 = or i32 %and.i17, 1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %or.i18)
  %cmp.i19 = icmp eq i32 %27, %or.i18
  br i1 %cmp.i19, label %while.body.snd_atiixp_update_bits.exit22_crit_edge, label %do.body.i20

while.body.snd_atiixp_update_bits.exit22_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit22

do.body.i20:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i18) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %28) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit22

snd_atiixp_update_bits.exit22:                    ; preds = %do.body.i20, %while.body.snd_atiixp_update_bits.exit22_crit_edge
  %29 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr17 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #8
  %33 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %34, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #8, !srcloc !193
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %or.i26 = or i32 %36, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %or.i26)
  %cmp.i27 = icmp eq i32 %36, %or.i26
  br i1 %cmp.i27, label %snd_atiixp_update_bits.exit22.snd_atiixp_update_bits.exit30_crit_edge, label %do.body.i28

snd_atiixp_update_bits.exit22.snd_atiixp_update_bits.exit30_crit_edge: ; preds = %snd_atiixp_update_bits.exit22
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit30

do.body.i28:                                      ; preds = %snd_atiixp_update_bits.exit22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i26) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %37) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit30

snd_atiixp_update_bits.exit30:                    ; preds = %do.body.i28, %snd_atiixp_update_bits.exit22.snd_atiixp_update_bits.exit30_crit_edge
  %dec = add nsw i32 %timeout.0, -1
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %do.end, label %snd_atiixp_update_bits.exit30.while.cond_crit_edge

snd_atiixp_update_bits.exit30.while.cond_crit_edge: ; preds = %snd_atiixp_update_bits.exit30
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end:                                           ; preds = %snd_atiixp_update_bits.exit30
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.17) #12
  br label %while.end

while.end:                                        ; preds = %do.end, %while.cond.while.end_crit_edge
  %42 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #8, !srcloc !193
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %or.i34 = or i32 %45, -1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %or.i34)
  %cmp.i35 = icmp eq i32 %45, %or.i34
  br i1 %cmp.i35, label %while.end.snd_atiixp_update_bits.exit38_crit_edge, label %do.body.i36

while.end.snd_atiixp_update_bits.exit38_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit38

do.body.i36:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i34) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %46) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit38

snd_atiixp_update_bits.exit38:                    ; preds = %do.body.i36, %while.end.snd_atiixp_update_bits.exit38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_atiixp_mixer_new(ptr noundef %chip, i32 noundef %clock, ptr noundef %quirk_override) unnamed_addr #2 align 64 {
entry:
  %pbus = alloca ptr, align 4
  %ac97 = alloca %struct.snd_ac97_template, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus) #8
  %0 = ptrtoint ptr %pbus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus, align 4, !annotation !191
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97) #8
  %1 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 2
  %2 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 3
  %3 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 5
  %4 = call ptr @memset(ptr %ac97, i32 255, i32 24)
  %call = tail call fastcc i32 @snd_atiixp_codec_detect(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %call1 = call i32 @snd_ac97_bus(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @snd_atiixp_mixer_new.ops, ptr noundef %chip, ptr noundef nonnull %pbus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %pbus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pbus, align 4
  %clock5 = getelementptr inbounds %struct.snd_ac97_bus, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %clock5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %clock, ptr %clock5, align 4
  %ac97_bus = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 5
  %10 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %ac97_bus, align 4
  %codec_not_ready_bits = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 12
  %pci = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 1
  %spdif_over_aclink = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 13
  %11 = getelementptr inbounds i8, ptr %ac97, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4
  %i.069 = phi i32 [ 0, %if.end4 ], [ %inc30, %for.inc.for.body_crit_edge ]
  %codec_count.068 = phi i32 [ 0, %if.end4 ], [ %codec_count.1, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %codec_not_ready_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %codec_not_ready_bits, align 4
  %arrayidx = getelementptr [3 x i32], ptr @snd_atiixp_mixer_new.codec_skip, i32 0, i32 %i.069
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %and = and i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %16 = call ptr @memset(ptr %11, i32 0, i32 20)
  %17 = ptrtoint ptr %ac97 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %chip, ptr %ac97, align 4
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %1, align 4
  %conv = trunc i32 %i.069 to i16
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %2, align 4
  %22 = ptrtoint ptr %spdif_over_aclink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %spdif_over_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not = icmp eq i32 %23, 0
  %spec.store.select = select i1 %tobool10.not, i32 2592, i32 2080
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.store.select, ptr %3, align 4
  %25 = ptrtoint ptr %pbus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pbus, align 4
  %arrayidx15 = getelementptr %struct.atiixp, ptr %chip, i32 0, i32 6, i32 %i.069
  %call16 = call i32 @snd_ac97_mixer(ptr noundef %26, ptr noundef nonnull %ac97, ptr noundef %arrayidx15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end29

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx15, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_atiixp_mixer_new.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_atiixp_mixer_new, %if.then26)) #8
          to label %for.inc [label %if.then26], !srcloc !206

if.then26:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_atiixp_mixer_new.__UNIQUE_ID_ddebug262, ptr noundef %31, ptr noundef nonnull @.str.20, i32 noundef %i.069) #8
  br label %for.inc

if.end29:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %codec_count.068, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %if.then26, %if.then19, %for.body.for.inc_crit_edge
  %codec_count.1 = phi i32 [ %codec_count.068, %for.body.for.inc_crit_edge ], [ %codec_count.068, %if.then26 ], [ %inc, %if.end29 ], [ %codec_count.068, %if.then19 ]
  %inc30 = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc30, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %codec_count.1)
  %tobool31.not = icmp eq i32 %codec_count.1, 0
  br i1 %tobool31.not, label %do.end35, label %if.end38

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %dev37 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev37, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %ac9739 = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 6
  %36 = ptrtoint ptr %ac9739 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ac9739, align 4
  %call41 = call i32 @snd_ac97_tune_hardware(ptr noundef %37, ptr noundef nonnull @ac97_quirks, ptr noundef %quirk_override) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end35, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -19, %do.end35 ], [ -6, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ac97_get_short_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr = getelementptr inbounds %struct.atiixp, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !193
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %dmas = getelementptr inbounds %struct.atiixp, ptr %dev_id, i32 0, i32 8
  %substream.i = getelementptr inbounds %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 0, i32 2
  %4 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then3.if.end10_crit_edge, label %lor.lhs.false.i

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

lor.lhs.false.i:                                  ; preds = %if.then3
  %running.i = getelementptr inbounds %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 0, i32 8
  %6 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end10_crit_edge, label %do.body.i

lor.lhs.false.i.if.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.body.i:                                        ; preds = %lor.lhs.false.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_atiixp_interrupt, %if.then5.i)) #8
          to label %do.end.i [label %if.then5.i], !srcloc !206

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %12 = ptrtoint ptr %dmas to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmas, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug261, ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %15) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %16 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %substream.i, align 4
  %call8.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef %17) #8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %and4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end10_crit_edge, label %if.then6

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %if.else
  %substream.i78 = getelementptr inbounds %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 0, i32 2
  %18 = ptrtoint ptr %substream.i78 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream.i78, align 4
  %tobool.not.i79 = icmp eq ptr %19, null
  br i1 %tobool.not.i79, label %if.then6.if.end10_crit_edge, label %lor.lhs.false.i82

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

lor.lhs.false.i82:                                ; preds = %if.then6
  %running.i80 = getelementptr inbounds %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 0, i32 8
  %20 = ptrtoint ptr %running.i80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %running.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i81 = icmp eq i32 %21, 0
  br i1 %tobool1.not.i81, label %lor.lhs.false.i82.if.end10_crit_edge, label %if.end.i

lor.lhs.false.i82.if.end10_crit_edge:             ; preds = %lor.lhs.false.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i:                                         ; preds = %lor.lhs.false.i82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %19) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end.i, %lor.lhs.false.i82.if.end10_crit_edge, %if.then6.if.end10_crit_edge, %if.else.if.end10_crit_edge, %do.end.i, %lor.lhs.false.i.if.end10_crit_edge, %if.then3.if.end10_crit_edge
  %and11 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %if.end10
  %arrayidx15 = getelementptr %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 1
  %substream.i83 = getelementptr %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 1, i32 2
  %22 = ptrtoint ptr %substream.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %substream.i83, align 4
  %tobool.not.i84 = icmp eq ptr %23, null
  br i1 %tobool.not.i84, label %if.then13.if.end23_crit_edge, label %lor.lhs.false.i87

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

lor.lhs.false.i87:                                ; preds = %if.then13
  %running.i85 = getelementptr %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 1, i32 8
  %24 = ptrtoint ptr %running.i85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %running.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i86 = icmp eq i32 %25, 0
  br i1 %tobool1.not.i86, label %lor.lhs.false.i87.if.end23_crit_edge, label %do.body.i88

lor.lhs.false.i87.if.end23_crit_edge:             ; preds = %lor.lhs.false.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.body.i88:                                      ; preds = %lor.lhs.false.i87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_atiixp_interrupt, %if.then5.i90)) #8
          to label %do.end.i92 [label %if.then5.i90], !srcloc !206

if.then5.i90:                                     ; preds = %do.body.i88
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id, align 4
  %dev.i89 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev.i89 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i89, align 8
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx15, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug261, ptr noundef %29, ptr noundef nonnull @.str.16, i32 noundef %33) #8
  br label %do.end.i92

do.end.i92:                                       ; preds = %if.then5.i90, %do.body.i88
  %34 = ptrtoint ptr %substream.i83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %substream.i83, align 4
  %call8.i91 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %35) #8
  br label %if.end23

if.else16:                                        ; preds = %if.end10
  %and17 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else16.if.end23_crit_edge, label %if.then19

if.else16.if.end23_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %if.else16
  %substream.i94 = getelementptr %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 1, i32 2
  %36 = ptrtoint ptr %substream.i94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %substream.i94, align 4
  %tobool.not.i95 = icmp eq ptr %37, null
  br i1 %tobool.not.i95, label %if.then19.if.end23_crit_edge, label %lor.lhs.false.i98

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

lor.lhs.false.i98:                                ; preds = %if.then19
  %running.i96 = getelementptr %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 1, i32 8
  %38 = ptrtoint ptr %running.i96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %running.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool1.not.i97 = icmp eq i32 %39, 0
  br i1 %tobool1.not.i97, label %lor.lhs.false.i98.if.end23_crit_edge, label %if.end.i99

lor.lhs.false.i98.if.end23_crit_edge:             ; preds = %lor.lhs.false.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end.i99:                                       ; preds = %lor.lhs.false.i98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %37) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end.i99, %lor.lhs.false.i98.if.end23_crit_edge, %if.then19.if.end23_crit_edge, %if.else16.if.end23_crit_edge, %do.end.i92, %lor.lhs.false.i87.if.end23_crit_edge, %if.then13.if.end23_crit_edge
  %spdif_over_aclink = getelementptr inbounds %struct.atiixp, ptr %dev_id, i32 0, i32 13
  %40 = ptrtoint ptr %spdif_over_aclink to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %spdif_over_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool24.not = icmp eq i32 %41, 0
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end39_crit_edge

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then25:                                        ; preds = %if.end23
  %and26 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else31, label %if.then28

if.then28:                                        ; preds = %if.then25
  %arrayidx30 = getelementptr %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 2
  %substream.i101 = getelementptr %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 2, i32 2
  %42 = ptrtoint ptr %substream.i101 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %substream.i101, align 4
  %tobool.not.i102 = icmp eq ptr %43, null
  br i1 %tobool.not.i102, label %if.then28.if.end39_crit_edge, label %lor.lhs.false.i105

if.then28.if.end39_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

lor.lhs.false.i105:                               ; preds = %if.then28
  %running.i103 = getelementptr %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 2, i32 8
  %44 = ptrtoint ptr %running.i103 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %running.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool1.not.i104 = icmp eq i32 %45, 0
  br i1 %tobool1.not.i104, label %lor.lhs.false.i105.if.end39_crit_edge, label %do.body.i106

lor.lhs.false.i105.if.end39_crit_edge:            ; preds = %lor.lhs.false.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.body.i106:                                     ; preds = %lor.lhs.false.i105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_atiixp_interrupt, %if.then5.i108)) #8
          to label %do.end.i110 [label %if.then5.i108], !srcloc !206

if.then5.i108:                                    ; preds = %do.body.i106
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_id, align 4
  %dev.i107 = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %dev.i107 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i107, align 8
  %50 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx30, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug261, ptr noundef %49, ptr noundef nonnull @.str.16, i32 noundef %53) #8
  br label %do.end.i110

do.end.i110:                                      ; preds = %if.then5.i108, %do.body.i106
  %54 = ptrtoint ptr %substream.i101 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %substream.i101, align 4
  %call8.i109 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %55) #8
  br label %if.end39

if.else31:                                        ; preds = %if.then25
  %and32 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else31.if.end39_crit_edge, label %if.then34

if.else31.if.end39_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then34:                                        ; preds = %if.else31
  %substream.i112 = getelementptr %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 2, i32 2
  %56 = ptrtoint ptr %substream.i112 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %substream.i112, align 4
  %tobool.not.i113 = icmp eq ptr %57, null
  br i1 %tobool.not.i113, label %if.then34.if.end39_crit_edge, label %lor.lhs.false.i116

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

lor.lhs.false.i116:                               ; preds = %if.then34
  %running.i114 = getelementptr %struct.atiixp, ptr %dev_id, i32 0, i32 8, i32 2, i32 8
  %58 = ptrtoint ptr %running.i114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %running.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool1.not.i115 = icmp eq i32 %59, 0
  br i1 %tobool1.not.i115, label %lor.lhs.false.i116.if.end39_crit_edge, label %if.end.i117

lor.lhs.false.i116.if.end39_crit_edge:            ; preds = %lor.lhs.false.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end.i117:                                      ; preds = %lor.lhs.false.i116
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %57) #8
  br label %if.end39

if.end39:                                         ; preds = %if.end.i117, %lor.lhs.false.i116.if.end39_crit_edge, %if.then34.if.end39_crit_edge, %if.else31.if.end39_crit_edge, %do.end.i110, %lor.lhs.false.i105.if.end39_crit_edge, %if.then28.if.end39_crit_edge, %if.end23.if.end39_crit_edge
  %and40 = and i32 %3, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.do.body_crit_edge, label %if.then42

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then42:                                        ; preds = %if.end39
  %reg_lock = getelementptr inbounds %struct.atiixp, ptr %dev_id, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %codec_not_ready_bits = getelementptr inbounds %struct.atiixp, ptr %dev_id, i32 0, i32 12
  %60 = ptrtoint ptr %codec_not_ready_bits to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %codec_not_ready_bits, align 4
  %or = or i32 %61, %and40
  store i32 %or, ptr %codec_not_ready_bits, align 4
  %62 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %remap_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %63, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %neg.i = xor i32 %and40, -1
  %and.i = and i32 %65, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %and.i)
  %cmp.i = icmp eq i32 %65, %and.i
  br i1 %cmp.i, label %if.then42.snd_atiixp_update_bits.exit_crit_edge, label %do.body.i119

if.then42.snd_atiixp_update_bits.exit_crit_edge:  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit

do.body.i119:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %66) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit

snd_atiixp_update_bits.exit:                      ; preds = %do.body.i119, %if.then42.snd_atiixp_update_bits.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  br label %do.body

do.body:                                          ; preds = %snd_atiixp_update_bits.exit, %if.end39.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %remap_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %2) #8, !srcloc !196
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_atiixp_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  %5 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #8, !srcloc !196
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_atiixp_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  %remap_addr.i.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not5.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not5.i.i, label %entry.if.end.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %timeout.06.i.i = phi i32 [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 1000, %entry.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.06.i.i)
  %tobool2.not.i.i = icmp eq i32 %timeout.06.i.i, 0
  br i1 %tobool2.not.i.i, label %snd_atiixp_acquire_codec.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %dec.i.i = add nsw i32 %timeout.06.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #8
  %9 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %12 = and i32 %11, 65536
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_atiixp_acquire_codec.exit.i:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.22) #12
  br label %snd_atiixp_codec_write.exit

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %conv.i = zext i16 %val to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = zext i16 %reg to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 9
  %17 = or i16 %3, 256
  %or.i = zext i16 %17 to i32
  %or3.i = or i32 %shl.i, %shl2.i
  %or5.i = or i32 %or3.i, %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #8
  %19 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !196
  br label %snd_atiixp_codec_write.exit

snd_atiixp_codec_write.exit:                      ; preds = %if.end.i, %snd_atiixp_acquire_codec.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_atiixp_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  %remap_addr.i.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not5.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not5.i.i, label %entry.if.end.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %timeout.06.i.i = phi i32 [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 1000, %entry.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.06.i.i)
  %tobool2.not.i.i = icmp eq i32 %timeout.06.i.i, 0
  br i1 %tobool2.not.i.i, label %snd_atiixp_acquire_codec.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %dec.i.i = add nsw i32 %timeout.06.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #8
  %9 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %12 = and i32 %11, 65536
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_atiixp_acquire_codec.exit.i:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.22) #12
  br label %snd_atiixp_codec_read.exit

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %conv.i = zext i16 %reg to i32
  %shl.i = shl nuw nsw i32 %conv.i, 9
  %17 = or i16 %3, 260
  %or1.i = zext i16 %17 to i32
  %or3.i = or i32 %shl.i, %or1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #8
  %19 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !196
  %21 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr4.i39.i = getelementptr i8, ptr %22, i32 12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i39.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not5.i40.i = icmp eq i32 %24, 0
  br i1 %tobool.not5.i40.i, label %if.end.i.do.body9.i.preheader_crit_edge, label %if.end.i.while.body.i43.i_crit_edge

if.end.i.while.body.i43.i_crit_edge:              ; preds = %if.end.i
  br label %while.body.i43.i

if.end.i.do.body9.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9.i.preheader

while.body.i43.i:                                 ; preds = %if.end.i49.i.while.body.i43.i_crit_edge, %if.end.i.while.body.i43.i_crit_edge
  %timeout.06.i41.i = phi i32 [ %dec.i46.i, %if.end.i49.i.while.body.i43.i_crit_edge ], [ 1000, %if.end.i.while.body.i43.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.06.i41.i)
  %tobool2.not.i42.i = icmp eq i32 %timeout.06.i41.i, 0
  br i1 %tobool2.not.i42.i, label %snd_atiixp_acquire_codec.exit51.thread.i, label %if.end.i49.i

snd_atiixp_acquire_codec.exit51.thread.i:         ; preds = %while.body.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %dev.i44.i = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev.i44.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i44.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.22) #12
  br label %snd_atiixp_codec_read.exit

if.end.i49.i:                                     ; preds = %while.body.i43.i
  %dec.i46.i = add nsw i32 %timeout.06.i41.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #8
  %30 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %31, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %33 = and i32 %32, 65536
  %tobool.not.i48.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i48.i, label %if.end.i49.i.do.body9.i.preheader_crit_edge, label %if.end.i49.i.while.body.i43.i_crit_edge

if.end.i49.i.while.body.i43.i_crit_edge:          ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i43.i

if.end.i49.i.do.body9.i.preheader_crit_edge:      ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9.i.preheader

do.body9.i.preheader:                             ; preds = %if.end.i49.i.do.body9.i.preheader_crit_edge, %if.end.i.do.body9.i.preheader_crit_edge
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.end16.i.do.body9.i_crit_edge, %do.body9.i.preheader
  %timeout.0.i = phi i32 [ %dec.i, %if.end16.i.do.body9.i_crit_edge ], [ 1000, %do.body9.i.preheader ]
  %34 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %35, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !193
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  %and.i = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end16.i, label %if.then14.i

if.then14.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %37, 16
  %conv15.i = trunc i32 %shr.i to i16
  br label %snd_atiixp_codec_read.exit

if.end16.i:                                       ; preds = %do.body9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #8
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool18.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool18.not.i, label %do.end19.i, label %if.end16.i.do.body9.i_crit_edge

if.end16.i.do.body9.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9.i

do.end19.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 124, i16 %reg)
  %cmp21.i = icmp ult i16 %reg, 124
  br i1 %cmp21.i, label %do.end26.i, label %do.end19.i.snd_atiixp_codec_read.exit_crit_edge

do.end19.i.snd_atiixp_codec_read.exit_crit_edge:  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_codec_read.exit

do.end26.i:                                       ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.25, i32 noundef %conv.i) #12
  br label %snd_atiixp_codec_read.exit

snd_atiixp_codec_read.exit:                       ; preds = %do.end26.i, %do.end19.i.snd_atiixp_codec_read.exit_crit_edge, %if.then14.i, %snd_atiixp_acquire_codec.exit51.thread.i, %snd_atiixp_acquire_codec.exit.i
  %retval.0.i = phi i16 [ %conv15.i, %if.then14.i ], [ -1, %snd_atiixp_acquire_codec.exit.i ], [ -1, %do.end26.i ], [ -1, %do.end19.i.snd_atiixp_codec_read.exit_crit_edge ], [ -1, %snd_atiixp_acquire_codec.exit51.thread.i ]
  ret i16 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_atiixp_codec_detect(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %codec_not_ready_bits = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %codec_not_ready_bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %codec_not_ready_bits, align 4
  %1 = load i32, ptr @ac97_codec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %pci = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %call.i = tail call ptr @snd_pci_quirk_lookup(ptr noundef %3, ptr noundef nonnull @atiixp_quirks) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.ac97_probing_bugs.exit_crit_edge, label %do.body.i

if.then.ac97_probing_bugs.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ac97_probing_bugs.exit

do.body.i:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ac97_probing_bugs.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_atiixp_codec_detect, %if.then5.i)) #8
          to label %do.end.i [label %if.then5.i], !srcloc !206

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %name.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 4
  %value.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ac97_probing_bugs.__UNIQUE_ID_ddebug259, ptr noundef %dev.i, ptr noundef nonnull @.str.30, ptr noundef %5, i32 noundef %7) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %value6.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %value6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value6.i, align 4
  br label %ac97_probing_bugs.exit

ac97_probing_bugs.exit:                           ; preds = %do.end.i, %if.then.ac97_probing_bugs.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %do.end.i ], [ -1, %if.then.ac97_probing_bugs.exit_crit_edge ]
  store i32 %retval.0.i, ptr @ac97_codec, align 4
  br label %if.end

if.end:                                           ; preds = %ac97_probing_bugs.exit, %entry.if.end_crit_edge
  %10 = phi i32 [ %retval.0.i, %ac97_probing_bugs.exit ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp1 = icmp sgt i32 %10, -1
  br i1 %cmp1, label %if.then2, label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 1024, %10
  %xor = xor i32 %shl, 15360
  %11 = ptrtoint ptr %codec_not_ready_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %codec_not_ready_bits, align 4
  %or = or i32 %12, %xor
  store i32 %or, ptr %codec_not_ready_bits, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %remap_addr = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %13 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 3932160) #8, !srcloc !196
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.body
  %timeout.0 = phi i32 [ 50, %do.body ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp5.not = icmp eq i32 %timeout.0, 0
  br i1 %cmp5.not, label %while.cond.do.body9_crit_edge, label %while.body

while.cond.do.body9_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %timeout.0, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #8
  %16 = ptrtoint ptr %codec_not_ready_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %codec_not_ready_bits, align 4
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %while.body.while.cond_crit_edge, label %while.body.do.body9_crit_edge

while.body.do.body9_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.body9:                                         ; preds = %while.body.do.body9_crit_edge, %while.cond.do.body9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr, align 4
  %add.ptr13 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #8, !srcloc !196
  %20 = ptrtoint ptr %codec_not_ready_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %codec_not_ready_bits, align 4
  %and = and i32 %21, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 7168, i32 %and)
  %cmp15 = icmp eq i32 %and, 7168
  br i1 %cmp15, label %do.end19, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end19:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.27) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.body9.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ -6, %do.end19 ], [ 0, %do.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_tune_hardware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_assign(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_out_enable_dma(ptr nocapture noundef readonly %chip, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !193
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !196
  %or = or i32 %3, 512
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and4 = and i32 %3, -513
  br label %do.body

do.body:                                          ; preds = %if.else, %if.end
  %data.0 = phi i32 [ %or, %if.end ], [ %and4, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %data.0)
  %7 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %6) #8, !srcloc !196
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_out_enable_transfer(ptr nocapture noundef readonly %chip, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool.not, i32 0, i32 4
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i = and i32 %3, -5
  %or.i = or i32 %and.i, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or.i)
  %cmp.i = icmp eq i32 %3, %or.i
  br i1 %cmp.i, label %entry.snd_atiixp_update_bits.exit_crit_edge, label %do.body.i

entry.snd_atiixp_update_bits.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit

snd_atiixp_update_bits.exit:                      ; preds = %do.body.i, %entry.snd_atiixp_update_bits.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_out_flush_dma(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @arm_heavy_mb() #8
  %remap_addr = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !196
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_in_enable_dma(ptr nocapture noundef readonly %chip, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool.not, i32 0, i32 256
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i = and i32 %3, -257
  %or.i = or i32 %and.i, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or.i)
  %cmp.i = icmp eq i32 %3, %or.i
  br i1 %cmp.i, label %entry.snd_atiixp_update_bits.exit_crit_edge, label %do.body.i

entry.snd_atiixp_update_bits.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit

snd_atiixp_update_bits.exit:                      ; preds = %do.body.i, %entry.snd_atiixp_update_bits.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_in_enable_transfer(ptr nocapture noundef readonly %chip, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %3, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #8, !srcloc !196
  br label %if.end7

if.else:                                          ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i = and i32 %7, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and.i)
  %cmp.i = icmp eq i32 %7, %and.i
  br i1 %cmp.i, label %if.else.if.end7_crit_edge, label %do.body.i

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.body.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !196
  br label %if.end7

if.end7:                                          ; preds = %do.body.i, %if.else.if.end7_crit_edge, %if.then3, %if.then.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_in_flush_dma(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %remap_addr = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #8, !srcloc !196
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_spdif_enable_dma(ptr nocapture noundef readonly %chip, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool.not, i32 0, i32 1024
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i = and i32 %3, -1025
  %or.i = or i32 %and.i, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or.i)
  %cmp.i = icmp eq i32 %3, %or.i
  br i1 %cmp.i, label %entry.snd_atiixp_update_bits.exit_crit_edge, label %do.body.i

entry.snd_atiixp_update_bits.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit

snd_atiixp_update_bits.exit:                      ; preds = %do.body.i, %entry.snd_atiixp_update_bits.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_spdif_enable_transfer(ptr nocapture noundef readonly %chip, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %3 = and i32 %2, -268435457
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %tobool.not, i32 0, i32 16
  %data.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %data.0)
  %6 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #8, !srcloc !196
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_spdif_flush_dma(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr.i.i = getelementptr inbounds %struct.atiixp, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !193
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i.i = and i32 %3, -1025
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %3, %and.i.i
  br i1 %cmp.i.i, label %entry.atiixp_spdif_enable_dma.exit_crit_edge, label %do.body.i.i

entry.atiixp_spdif_enable_dma.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atiixp_spdif_enable_dma.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #8, !srcloc !196
  br label %atiixp_spdif_enable_dma.exit

atiixp_spdif_enable_dma.exit:                     ; preds = %do.body.i.i, %entry.atiixp_spdif_enable_dma.exit_crit_edge
  %5 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  %8 = or i32 %7, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %8) #8, !srcloc !196
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %atiixp_spdif_enable_dma.exit
  %timeout.0 = phi i32 [ 100, %atiixp_spdif_enable_dma.exit ], [ %dec, %if.end.do.body_crit_edge ]
  %11 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 96
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  %14 = and i32 %13, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  %dec = add nsw i32 %timeout.0, -1
  %cmp.not = icmp eq i32 %timeout.0, 0
  br i1 %cmp.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  %16 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  %19 = and i32 %18, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr3.i7 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i7, i32 %19) #8, !srcloc !196
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %open_mutex = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #8
  %dmas = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 8
  %call = tail call fastcc i32 @snd_atiixp_pcm_open(ptr noundef %substream, ptr noundef %dmas, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %open_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_channels = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_channels, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 6
  %6 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %channels_max, align 8
  %7 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3 = icmp sgt i32 %7, 2
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %call6 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %9, i32 noundef 0, i32 noundef 10, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %open_mutex = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #8
  %dmas = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %dmas to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmas, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %lor.rhs.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.rhs.i:                                        ; preds = %entry
  %enable_dma.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enable_dma.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_dma.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !227

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1061, i32 noundef 9, ptr noundef null) #8
  br label %snd_atiixp_pcm_close.exit

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg_lock.i = getelementptr inbounds %struct.atiixp, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #8
  %8 = ptrtoint ptr %dmas to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dmas, align 4
  %enable_dma27.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %enable_dma27.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable_dma27.i, align 4
  tail call void %11(ptr noundef %3, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #8
  %substream29.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 8, i32 0, i32 2
  %12 = ptrtoint ptr %substream29.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %substream29.i, align 4
  %opened.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 8, i32 0, i32 7
  %13 = ptrtoint ptr %opened.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %opened.i, align 4
  br label %snd_atiixp_pcm_close.exit

snd_atiixp_pcm_close.exit:                        ; preds = %if.end25.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.end25.i ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
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
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 8
  %buf_addr = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buf_addr, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %buf_bytes = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %buf_bytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buf_bytes, align 4
  %arrayidx.i.i44 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i44, align 4
  %arrayidx.i.i45 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %14 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %13)
  %cmp.i = icmp ugt i32 %13, 256
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %area.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area.i, align 4
  %cmp1.i = icmp eq ptr %17, null
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i
  %desc_buf.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 1
  %pci.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %call.i.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev.i, i32 noundef 0, i32 noundef 4096, ptr noundef %desc_buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.then2.i.cleanup_crit_edge, label %if.end6.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %periods7.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %periods7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %periods7.i, align 4
  %period_bytes8.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %period_bytes8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %period_bytes8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end6.i, %if.end.i.if.end9.i_crit_edge
  %periods10.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %periods10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %periods10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %13)
  %cmp11.i = icmp eq i32 %23, %13
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.end9.i.do.body16.i_crit_edge

if.end9.i.do.body16.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %period_bytes12.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %period_bytes12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %period_bytes12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %15)
  %cmp13.i = icmp eq i32 %25, %15
  br i1 %cmp13.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.do.body16.i_crit_edge

land.lhs.true.i.do.body16.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body16.i:                                      ; preds = %land.lhs.true.i.do.body16.i_crit_edge, %if.end9.i.do.body16.i_crit_edge
  %reg_lock.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 7
  %call19.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void @arm_heavy_mb() #8
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr.i, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %llp_offset.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %llp_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %llp_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !196
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %enable_dma.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %enable_dma.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enable_dma.i, align 4
  tail call void %35(ptr noundef %1, i32 noundef 0) #8
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 4
  %enable_dma27.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %enable_dma27.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enable_dma27.i, align 4
  tail call void %39(ptr noundef %1, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call19.i) #8
  %addr30.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3196.not.i = icmp eq i32 %13, 0
  br i1 %cmp3196.not.i, label %do.body16.i.do.body45.i_crit_edge, label %for.body.lr.ph.i

do.body16.i.do.body45.i_crit_edge:                ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45.i

for.body.lr.ph.i:                                 ; preds = %do.body16.i
  %40 = ptrtoint ptr %addr30.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr30.i, align 4
  %42 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %runtime, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 51
  %44 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_addr.i, align 8
  %shr.i = lshr i32 %15, 2
  %conv36.i = trunc i32 %shr.i to i16
  %sub.i = add nsw i32 %13, -1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end43.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %desc_addr.0100.i = phi i32 [ %41, %for.body.lr.ph.i ], [ %add.i, %if.end43.i.for.body.i_crit_edge ]
  %addr.099.i = phi i32 [ %45, %for.body.lr.ph.i ], [ %add44.i, %if.end43.i.for.body.i_crit_edge ]
  %i.097.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end43.i.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %area.i, align 4
  %arrayidx.i = getelementptr %struct.atiixp_dma_desc, ptr %47, i32 %i.097.i
  %48 = tail call i32 @llvm.bswap.i32(i32 %addr.099.i) #8
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx.i, align 4
  %status.i = getelementptr %struct.atiixp_dma_desc, ptr %47, i32 %i.097.i, i32 1
  %50 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %status.i, align 4
  %size.i = getelementptr %struct.atiixp_dma_desc, ptr %47, i32 %i.097.i, i32 2
  %51 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv36.i, ptr %size.i, align 2
  %add.i = add i32 %desc_addr.0100.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %i.097.i, i32 %sub.i)
  %cmp37.i = icmp eq i32 %i.097.i, %sub.i
  br i1 %cmp37.i, label %if.then39.i, label %for.body.i.if.end43.i_crit_edge

for.body.i.if.end43.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then39.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %addr30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr30.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %for.body.i.if.end43.i_crit_edge
  %add.sink.i = phi i32 [ %53, %if.then39.i ], [ %add.i, %for.body.i.if.end43.i_crit_edge ]
  %54 = tail call i32 @llvm.bswap.i32(i32 %add.sink.i) #8
  %55 = getelementptr %struct.atiixp_dma_desc, ptr %47, i32 %i.097.i, i32 3
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %55, align 4
  %add44.i = add i32 %addr.099.i, %15
  %inc.i = add nuw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %if.end43.i.do.body45.i_crit_edge, label %if.end43.i.for.body.i_crit_edge

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end43.i.do.body45.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45.i

do.body45.i:                                      ; preds = %if.end43.i.do.body45.i_crit_edge, %do.body16.i.do.body45.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %addr30.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr30.i, align 4
  %or.i = or i32 %58, 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %60 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %remap_addr.i, align 4
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %5, align 4
  %llp_offset52.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %llp_offset52.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %llp_offset52.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %61, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %59) #8, !srcloc !196
  %period_bytes54.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 5
  %66 = ptrtoint ptr %period_bytes54.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %15, ptr %period_bytes54.i, align 4
  %67 = ptrtoint ptr %periods10.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %13, ptr %periods10.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.body45.i, %land.lhs.true.i.if.end_crit_edge
  %ac97_pcm_type = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 11
  %68 = ptrtoint ptr %ac97_pcm_type to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ac97_pcm_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp6 = icmp sgt i32 %69, -1
  br i1 %cmp6, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.atiixp, ptr %1, i32 0, i32 9, i32 %69
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx, align 4
  %pcm_open_flag = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 10
  %72 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pcm_open_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not = icmp eq i32 %73, 0
  br i1 %tobool.not, label %if.then7.if.end12_crit_edge, label %if.then9

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @snd_ac97_pcm_close(ptr noundef %71) #8
  %74 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %pcm_open_flag, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then7.if.end12_crit_edge
  %arrayidx.i.i46 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %75 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i46, align 4
  %arrayidx.i.i47 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %77 = ptrtoint ptr %arrayidx.i.i47 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i47, align 4
  %r = getelementptr inbounds %struct.ac97_pcm, ptr %71, i32 0, i32 5
  %79 = ptrtoint ptr %r to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %r, align 4
  %call16 = tail call i32 @snd_ac97_pcm_open(ptr noundef %71, i32 noundef %76, i32 noundef %78, i16 noundef zeroext %80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, -1
  br i1 %cmp17, label %if.then18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %pcm_open_flag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call16, %if.then18 ], [ %call16, %if.end12.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_pcm_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %pcm_open_flag = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcm_open_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ac97_pcm_type = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %ac97_pcm_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ac97_pcm_type, align 4
  %arrayidx = getelementptr %struct.atiixp, ptr %1, i32 0, i32 9, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @snd_ac97_pcm_close(ptr noundef %11) #8
  %12 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pcm_open_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %area.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %area.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.atiixp_clear_dma_packets.exit_crit_edge, label %do.body.i

if.end.atiixp_clear_dma_packets.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %atiixp_clear_dma_packets.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %desc_buf.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  tail call void @arm_heavy_mb() #8
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr.i, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %llp_offset.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %llp_offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %llp_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !196
  tail call void @snd_dma_free_pages(ptr noundef %desc_buf.i) #8
  %21 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %area.i, align 4
  br label %atiixp_clear_dma_packets.exit

atiixp_clear_dma_packets.exit:                    ; preds = %do.body.i, %if.end.atiixp_clear_dma_packets.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %remap_addr = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %5 = and i32 %4, 16711679
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %7 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %entry.sw.default_crit_edge [
    i32 8, label %sw.bb
    i32 6, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb4_crit_edge
  ]

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %6, 384
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %data.0 = phi i32 [ %6, %entry.sw.bb2_crit_edge ], [ %or, %sw.bb ]
  %or3 = or i32 %data.0, 48
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb2, %entry.sw.bb4_crit_edge
  %data.1 = phi i32 [ %6, %entry.sw.bb4_crit_edge ], [ %or3, %sw.bb2 ]
  %or5 = or i32 %data.1, 72
  br label %sw.default

sw.default:                                       ; preds = %sw.bb4, %entry.sw.default_crit_edge
  %data.2 = phi i32 [ %6, %entry.sw.default_crit_edge ], [ %or5, %sw.bb4 ]
  %or7 = or i32 %data.2, 8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %13 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #8, !srcloc !196
  %15 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp eq i32 %18, 2
  %cond = select i1 %cmp, i32 4194304, i32 0
  %19 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i = and i32 %22, -4194305
  %or.i = or i32 %and.i, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %or.i)
  %cmp.i = icmp eq i32 %22, %or.i
  br i1 %cmp.i, label %sw.default.snd_atiixp_update_bits.exit_crit_edge, label %do.body.i

sw.default.snd_atiixp_update_bits.exit_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit

do.body.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit

snd_atiixp_update_bits.exit:                      ; preds = %do.body.i, %sw.default.snd_atiixp_update_bits.exit_crit_edge
  %24 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime, align 4
  %channels13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %channels13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channels13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %cmp14 = icmp ugt i32 %27, 5
  %cond15 = zext i1 %cmp14 to i32
  %28 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr, align 4
  %add.ptr.i32 = getelementptr i8, ptr %29, i32 132
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #8, !srcloc !193
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i33 = and i32 %31, -2
  %or.i34 = or i32 %and.i33, %cond15
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %or.i34)
  %cmp.i35 = icmp eq i32 %31, %or.i34
  br i1 %cmp.i35, label %snd_atiixp_update_bits.exit.snd_atiixp_update_bits.exit38_crit_edge, label %do.body.i36

snd_atiixp_update_bits.exit.snd_atiixp_update_bits.exit38_crit_edge: ; preds = %snd_atiixp_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit38

do.body.i36:                                      ; preds = %snd_atiixp_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i34) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %32) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit38

snd_atiixp_update_bits.exit38:                    ; preds = %do.body.i36, %snd_atiixp_update_bits.exit.snd_atiixp_update_bits.exit38_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %enable_transfer = getelementptr inbounds %struct.atiixp_dma_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %enable_transfer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_transfer, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %flush_dma = getelementptr inbounds %struct.atiixp_dma_ops, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %flush_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flush_dma, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %lor.rhs.do.end_crit_edge, label %if.end26, !prof !227

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 713, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end26:                                         ; preds = %lor.rhs
  %reg_lock = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %cmd, label %if.end26.if.end68_crit_edge [
    i32 1, label %if.end26.sw.bb_crit_edge
    i32 4, label %if.end26.sw.bb_crit_edge116
    i32 6, label %if.end26.sw.bb_crit_edge117
    i32 0, label %if.end26.sw.bb40_crit_edge
    i32 3, label %if.end26.sw.bb40_crit_edge118
    i32 5, label %if.end26.sw.bb40_crit_edge119
  ]

if.end26.sw.bb40_crit_edge119:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40

if.end26.sw.bb40_crit_edge118:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40

if.end26.sw.bb40_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40

if.end26.sw.bb_crit_edge117:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end26.sw.bb_crit_edge116:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end26.sw.bb_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end26.if.end68_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

sw.bb:                                            ; preds = %if.end26.sw.bb_crit_edge, %if.end26.sw.bb_crit_edge116, %if.end26.sw.bb_crit_edge117
  %running = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool27.not = icmp eq i32 %14, 0
  br i1 %tobool27.not, label %sw.bb.if.end35_crit_edge, label %land.lhs.true

sw.bb.if.end35_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %sw.bb
  %suspended = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 9
  %15 = ptrtoint ptr %suspended to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 6
  %or.cond = and i1 %cmp, %tobool28.not
  br i1 %or.cond, label %do.body31, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.body31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @arm_heavy_mb() #8
  %saved_curptr = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 12
  %17 = ptrtoint ptr %saved_curptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %saved_curptr, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %remap_addr = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %dt_cur = getelementptr inbounds %struct.atiixp_dma_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dt_cur to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dt_cur, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #8, !srcloc !196
  br label %if.end35

if.end35:                                         ; preds = %do.body31, %land.lhs.true.if.end35_crit_edge, %sw.bb.if.end35_crit_edge
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %enable_transfer37 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %enable_transfer37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %enable_transfer37, align 4
  tail call void %29(ptr noundef %1, i32 noundef 1) #8
  %30 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %running, align 4
  %suspended39 = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 9
  br label %if.then61

sw.bb40:                                          ; preds = %if.end26.sw.bb40_crit_edge, %if.end26.sw.bb40_crit_edge118, %if.end26.sw.bb40_crit_edge119
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cmd)
  %cmp41 = icmp eq i32 %cmd, 5
  %conv = zext i1 %cmp41 to i32
  %suspended42 = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 9
  %31 = ptrtoint ptr %suspended42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %suspended42, align 4
  %running43 = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 8
  %32 = ptrtoint ptr %running43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %running43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool44.not = icmp ne i32 %33, 0
  %34 = and i1 %cmp41, %tobool44.not
  br i1 %34, label %if.then48, label %sw.bb40.if.end56_crit_edge

sw.bb40.if.end56_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then48:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  %remap_addr49 = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %remap_addr49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remap_addr49, align 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  %dt_cur51 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dt_cur51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dt_cur51, align 4
  %add.ptr52 = getelementptr i8, ptr %36, i32 %40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #8, !srcloc !193
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  %saved_curptr55 = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 12
  %43 = ptrtoint ptr %saved_curptr55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %saved_curptr55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %sw.bb40.if.end56_crit_edge
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  %enable_transfer58 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %enable_transfer58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %enable_transfer58, align 4
  tail call void %47(ptr noundef %1, i32 noundef 0) #8
  br label %if.then61

if.then61:                                        ; preds = %if.end56, %if.end35
  %running43.sink = phi ptr [ %running43, %if.end56 ], [ %suspended39, %if.end35 ]
  %48 = ptrtoint ptr %running43.sink to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %running43.sink, align 4
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 8
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  %52 = and i32 %51, 369098752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i = icmp eq i32 %52, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 16384
  %53 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !193
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i.i = and i32 %56, -16385
  %or.i.i = or i32 %and.i.i, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %56, %or.i.i
  br i1 %cmp.i.i, label %if.then61.snd_atiixp_check_bus_busy.exit_crit_edge, label %do.body.i.i

if.then61.snd_atiixp_check_bus_busy.exit_crit_edge: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_check_bus_busy.exit

do.body.i.i:                                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %57) #8, !srcloc !196
  br label %snd_atiixp_check_bus_busy.exit

snd_atiixp_check_bus_busy.exit:                   ; preds = %do.body.i.i, %if.then61.snd_atiixp_check_bus_busy.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp62 = icmp eq i32 %cmd, 0
  br i1 %cmp62, label %if.then64, label %snd_atiixp_check_bus_busy.exit.if.end68_crit_edge

snd_atiixp_check_bus_busy.exit.if.end68_crit_edge: ; preds = %snd_atiixp_check_bus_busy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then64:                                        ; preds = %snd_atiixp_check_bus_busy.exit
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 4
  %flush_dma66 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %flush_dma66 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %flush_dma66, align 4
  tail call void %61(ptr noundef %1) #8
  %62 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %63, i32 8
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  %65 = and i32 %64, 369098752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i104 = icmp eq i32 %65, 0
  %..i105 = select i1 %tobool.not.i104, i32 0, i32 16384
  %66 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i106 = getelementptr i8, ptr %67, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i106) #8, !srcloc !193
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i.i107 = and i32 %69, -16385
  %or.i.i108 = or i32 %and.i.i107, %..i105
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %or.i.i108)
  %cmp.i.i109 = icmp eq i32 %69, %or.i.i108
  br i1 %cmp.i.i109, label %if.then64.if.end68_crit_edge, label %do.body.i.i110

if.then64.if.end68_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.body.i.i110:                                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %70 = tail call i32 @llvm.bswap.i32(i32 %or.i.i108) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106, i32 %70) #8, !srcloc !196
  br label %if.end68

if.end68:                                         ; preds = %do.body.i.i110, %if.then64.if.end68_crit_edge, %snd_atiixp_check_bus_busy.exit.if.end68_crit_edge, %if.end26.if.end68_crit_edge
  %err.0114 = phi i32 [ 0, %snd_atiixp_check_bus_busy.exit.if.end68_crit_edge ], [ -22, %if.end26.if.end68_crit_edge ], [ 0, %if.then64.if.end68_crit_edge ], [ 0, %do.body.i.i110 ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0114, %if.end68 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %remap_addr = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %buf_addr = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 3
  %buf_bytes = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry
  %dec44 = phi i32 [ 999, %entry ], [ %dec, %while.cond.backedge.while.body_crit_edge ]
  %6 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %dt_cur = getelementptr inbounds %struct.atiixp_dma_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dt_cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dt_cur, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !193
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !236
  %14 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp ult i32 %13, %15
  br i1 %cmp, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %dec = add nsw i32 %dec44, -1
  %tobool.not = icmp eq i32 %dec44, 0
  br i1 %tobool.not, label %do.body, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end:                                           ; preds = %while.body
  %sub = sub i32 %13, %15
  %16 = ptrtoint ptr %buf_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %17)
  %cmp5.not = icmp ult i32 %sub, %17
  br i1 %cmp5.not, label %if.end7, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %18 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %19
  br label %cleanup

do.body:                                          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_atiixp_pcm_pointer.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_atiixp_pcm_pointer, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !206

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %24 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %dt_cur19 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dt_cur19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dt_cur19, align 4
  %add.ptr20 = getelementptr i8, ptr %25, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !193
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  %32 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_atiixp_pcm_pointer.__UNIQUE_ID_ddebug260, ptr noundef %23, ptr noundef nonnull @.str.40, i32 noundef %31, i32 noundef %33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body, %if.end7
  %retval.0 = phi i32 [ %div.i, %if.end7 ], [ 0, %if.then14 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_atiixp_pcm_open(ptr noundef %substream, ptr noundef %dma, i32 noundef %pcm_type) unnamed_addr #2 align 64 {
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
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %enable_dma = getelementptr inbounds %struct.atiixp_dma_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_dma, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.rhs.do.end_crit_edge, label %if.end26, !prof !227

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1027, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end26:                                         ; preds = %lor.rhs
  %opened = getelementptr inbounds %struct.atiixp_dma, ptr %dma, i32 0, i32 7
  %8 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool27.not = icmp eq i32 %9, 0
  br i1 %tobool27.not, label %if.end29, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %substream30 = getelementptr inbounds %struct.atiixp_dma, ptr %dma, i32 0, i32 2
  %10 = ptrtoint ptr %substream30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %substream30, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %11 = call ptr @memcpy(ptr %hw, ptr @snd_atiixp_pcm_hw, i32 64)
  %ac97_pcm_type = getelementptr inbounds %struct.atiixp_dma, ptr %dma, i32 0, i32 11
  %12 = ptrtoint ptr %ac97_pcm_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %pcm_type, ptr %ac97_pcm_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pcm_type)
  %cmp = icmp sgt i32 %pcm_type, -1
  br i1 %cmp, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.atiixp, ptr %1, i32 0, i32 9, i32 %pcm_type
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %rates = getelementptr inbounds %struct.ac97_pcm, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rates, align 4
  %rates33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %17 = ptrtoint ptr %rates33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rates33, align 8
  %call.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw) #8
  br label %if.end35

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 1
  %18 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 262144, ptr %formats, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then31
  %call36 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %private_data40 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %19 = ptrtoint ptr %private_data40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dma, ptr %private_data40, align 8
  %reg_lock = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %20 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma, align 4
  %enable_dma42 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %enable_dma42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable_dma42, align 4
  tail call void %23(ptr noundef %1, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  %24 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %opened, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end35.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end39 ], [ -16, %if.end26.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_open(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.atiixp, ptr %1, i32 0, i32 8, i32 1
  %call = tail call fastcc i32 @snd_atiixp_pcm_open(ptr noundef %substream, ptr noundef %arrayidx, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.atiixp, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %lor.rhs.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.rhs.i:                                        ; preds = %entry
  %enable_dma.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %enable_dma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_dma.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !227

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1061, i32 noundef 9, ptr noundef null) #8
  br label %snd_atiixp_pcm_close.exit

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg_lock.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %enable_dma27.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %enable_dma27.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_dma27.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #8
  %substream29.i = getelementptr %struct.atiixp, ptr %1, i32 0, i32 8, i32 1, i32 2
  %10 = ptrtoint ptr %substream29.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %substream29.i, align 4
  %opened.i = getelementptr %struct.atiixp, ptr %1, i32 0, i32 8, i32 1, i32 7
  %11 = ptrtoint ptr %opened.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %opened.i, align 4
  br label %snd_atiixp_pcm_close.exit

snd_atiixp_pcm_close.exit:                        ; preds = %if.end25.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.end25.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %cond = select i1 %cmp, i32 2097152, i32 0
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i = and i32 %9, -2097153
  %or.i = or i32 %and.i, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %or.i)
  %cmp.i = icmp eq i32 %9, %or.i
  br i1 %cmp.i, label %entry.snd_atiixp_update_bits.exit_crit_edge, label %do.body.i

entry.snd_atiixp_update_bits.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit

snd_atiixp_update_bits.exit:                      ; preds = %do.body.i, %entry.snd_atiixp_update_bits.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_spdif_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %open_mutex = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #8
  %spdif_over_aclink = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %spdif_over_aclink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_over_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dmas = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 8
  %call = tail call fastcc i32 @snd_atiixp_pcm_open(ptr noundef %substream, ptr noundef %dmas, i32 noundef 2)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2 = getelementptr %struct.atiixp, ptr %1, i32 0, i32 8, i32 2
  %call3 = tail call fastcc i32 @snd_atiixp_pcm_open(ptr noundef %substream, ptr noundef %arrayidx2, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_spdif_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %open_mutex = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #8
  %spdif_over_aclink = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %spdif_over_aclink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_over_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dmas = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %dmas to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmas, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.do.end.i_crit_edge, label %lor.rhs.i

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.then
  %enable_dma.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %enable_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_dma.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !227

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1061, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg_lock.i = getelementptr inbounds %struct.atiixp, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #8
  %10 = ptrtoint ptr %dmas to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmas, align 4
  %enable_dma27.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %enable_dma27.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_dma27.i, align 4
  tail call void %13(ptr noundef %5, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #8
  %substream29.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 8, i32 0, i32 2
  %14 = ptrtoint ptr %substream29.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %substream29.i, align 4
  %opened.i = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 8, i32 0, i32 7
  %15 = ptrtoint ptr %opened.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %opened.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx2 = getelementptr %struct.atiixp, ptr %1, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data, align 4
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2, align 4
  %tobool.not.i12 = icmp eq ptr %19, null
  br i1 %tobool.not.i12, label %if.else.do.end.i16_crit_edge, label %lor.rhs.i15

if.else.do.end.i16_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i16

lor.rhs.i15:                                      ; preds = %if.else
  %enable_dma.i13 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %enable_dma.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enable_dma.i13, align 4
  %tobool2.not.i14 = icmp eq ptr %21, null
  br i1 %tobool2.not.i14, label %lor.rhs.i15.do.end.i16_crit_edge, label %if.end25.i21, !prof !227

lor.rhs.i15.do.end.i16_crit_edge:                 ; preds = %lor.rhs.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i16

do.end.i16:                                       ; preds = %lor.rhs.i15.do.end.i16_crit_edge, %if.else.do.end.i16_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1061, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end25.i21:                                     ; preds = %lor.rhs.i15
  call void @__sanitizer_cov_trace_pc() #10
  %reg_lock.i17 = getelementptr inbounds %struct.atiixp, ptr %17, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i17) #8
  %22 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2, align 4
  %enable_dma27.i18 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %enable_dma27.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %enable_dma27.i18, align 4
  tail call void %25(ptr noundef %17, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i17) #8
  %substream29.i19 = getelementptr %struct.atiixp, ptr %1, i32 0, i32 8, i32 2, i32 2
  %26 = ptrtoint ptr %substream29.i19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %substream29.i19, align 4
  %opened.i20 = getelementptr %struct.atiixp, ptr %1, i32 0, i32 8, i32 2, i32 7
  %27 = ptrtoint ptr %opened.i20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %opened.i20, align 4
  br label %if.end

if.end:                                           ; preds = %if.end25.i21, %do.end.i16, %if.end25.i, %do.end.i
  %err.0 = phi i32 [ -22, %do.end.i ], [ 0, %if.end25.i ], [ -22, %do.end.i16 ], [ 0, %if.end25.i21 ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_spdif_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %spdif_over_aclink = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %spdif_over_aclink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_over_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %remap_addr.i29 = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %remap_addr.i29 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %and.i31 = and i32 %7, -28673
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %or.i = or i32 %and.i31, 16384
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %or.i)
  %cmp.i = icmp eq i32 %7, %or.i
  br i1 %cmp.i, label %if.then.snd_atiixp_update_bits.exit_crit_edge, label %do.body.i

if.then.snd_atiixp_update_bits.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %8) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit

snd_atiixp_update_bits.exit:                      ; preds = %do.body.i, %if.then.snd_atiixp_update_bits.exit_crit_edge
  %9 = ptrtoint ptr %remap_addr.i29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i29, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 52
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  %12 = and i32 %11, 14614527
  %13 = or i32 %12, -2145320960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %remap_addr.i29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr.i29, align 4
  %add.ptr5 = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %13) #8, !srcloc !196
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %16 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp eq i32 %19, 2
  %cond = select i1 %cmp, i32 4194304, i32 0
  %20 = ptrtoint ptr %remap_addr.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i29, align 4
  %add.ptr.i22 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #8, !srcloc !193
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i23 = and i32 %23, -4194305
  %or.i24 = or i32 %and.i23, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %or.i24)
  %cmp.i25 = icmp eq i32 %23, %or.i24
  br i1 %cmp.i25, label %snd_atiixp_update_bits.exit.if.end_crit_edge, label %do.body.i26

snd_atiixp_update_bits.exit.if.end_crit_edge:     ; preds = %snd_atiixp_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body.i26:                                      ; preds = %snd_atiixp_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i24) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %24) #8, !srcloc !196
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and.i31)
  %cmp.i32 = icmp eq i32 %7, %and.i31
  br i1 %cmp.i32, label %if.else.snd_atiixp_update_bits.exit35_crit_edge, label %do.body.i33

if.else.snd_atiixp_update_bits.exit35_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit35

do.body.i33:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i31) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %25) #8, !srcloc !196
  br label %snd_atiixp_update_bits.exit35

snd_atiixp_update_bits.exit35:                    ; preds = %do.body.i33, %if.else.snd_atiixp_update_bits.exit35_crit_edge
  %26 = ptrtoint ptr %remap_addr.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr.i29, align 4
  %add.ptr.i37 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #8, !srcloc !193
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i38 = and i32 %29, -65537
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %and.i38)
  %cmp.i39 = icmp eq i32 %29, %and.i38
  br i1 %cmp.i39, label %snd_atiixp_update_bits.exit35.if.end_crit_edge, label %do.body.i40

snd_atiixp_update_bits.exit35.if.end_crit_edge:   ; preds = %snd_atiixp_update_bits.exit35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body.i40:                                      ; preds = %snd_atiixp_update_bits.exit35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i38) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %30) #8, !srcloc !196
  br label %if.end

if.end:                                           ; preds = %do.body.i40, %snd_atiixp_update_bits.exit35.if.end_crit_edge, %do.body.i26, %snd_atiixp_update_bits.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_atiixp_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %remap_addr = getelementptr inbounds %struct.atiixp, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %i.07
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !193
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef %i.07, i32 noundef %7) #8
  %add = add nuw nsw i32 %i.07, 4
  %cmp = icmp ult i32 %i.07, 252
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %arrayidx = getelementptr %struct.atiixp, ptr %3, i32 0, i32 6, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @snd_ac97_suspend(ptr noundef %6) #8
  %arrayidx.1 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  tail call void @snd_ac97_suspend(ptr noundef %8) #8
  %arrayidx.2 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.2, align 4
  tail call void @snd_ac97_suspend(ptr noundef %10) #8
  %remap_addr.i.i = getelementptr inbounds %struct.atiixp, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !193
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %and.i.i = and i32 %14, 2147483646
  %or.i.i = or i32 %and.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %14, %or.i.i
  br i1 %cmp.i.i, label %entry.snd_atiixp_aclink_down.exit_crit_edge, label %do.body.i.i

entry.snd_atiixp_aclink_down.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_aclink_down.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #8, !srcloc !196
  br label %snd_atiixp_aclink_down.exit

snd_atiixp_aclink_down.exit:                      ; preds = %do.body.i.i, %entry.snd_atiixp_aclink_down.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr.i.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  %19 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #8, !srcloc !196
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  tail call fastcc void @snd_atiixp_aclink_reset(ptr noundef %3)
  %remap_addr.i = getelementptr inbounds %struct.atiixp, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %7 = or i32 %6, -2147483646
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %7) #8, !srcloc !196
  %10 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 76
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %13 = and i32 %12, -805306369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %15, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %13) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 922746880) #8, !srcloc !196
  %arrayidx = getelementptr %struct.atiixp, ptr %3, i32 0, i32 6, i32 0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  tail call void @snd_ac97_resume(ptr noundef %21) #8
  %arrayidx.1 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.1, align 4
  tail call void @snd_ac97_resume(ptr noundef %23) #8
  %arrayidx.2 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2, align 4
  tail call void @snd_ac97_resume(ptr noundef %25) #8
  %arrayidx6 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 10, i32 0
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %entry.for.inc17_crit_edge, label %if.then

entry.for.inc17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17

if.then:                                          ; preds = %entry
  %arrayidx7 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 8, i32 0
  %substream = getelementptr %struct.atiixp, ptr %3, i32 0, i32 8, i32 0, i32 2
  %28 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %substream, align 4
  %tobool8.not = icmp eq ptr %29, null
  br i1 %tobool8.not, label %if.then.for.inc17_crit_edge, label %land.lhs.true

if.then.for.inc17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17

land.lhs.true:                                    ; preds = %if.then
  %suspended = getelementptr %struct.atiixp, ptr %3, i32 0, i32 8, i32 0, i32 9
  %30 = ptrtoint ptr %suspended to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool9.not = icmp eq i32 %31, 0
  br i1 %tobool9.not, label %land.lhs.true.for.inc17_crit_edge, label %if.then10

land.lhs.true.for.inc17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx7, align 4
  %enable_dma = getelementptr inbounds %struct.atiixp_dma_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enable_dma, align 4
  tail call void %35(ptr noundef %3, i32 noundef 1) #8
  %36 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %substream, align 4
  %ops12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %ops12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops12, align 4
  %prepare = getelementptr inbounds %struct.snd_pcm_ops, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prepare, align 4
  %call14 = tail call i32 %41(ptr noundef %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %addr = getelementptr %struct.atiixp, ptr %3, i32 0, i32 8, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr, align 4
  %or = or i32 %43, 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %or)
  %45 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %remap_addr.i, align 4
  %47 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx7, align 4
  %llp_offset = getelementptr inbounds %struct.atiixp_dma_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %llp_offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %llp_offset, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %44) #8, !srcloc !196
  br label %for.inc17

for.inc17:                                        ; preds = %if.then10, %land.lhs.true.for.inc17_crit_edge, %if.then.for.inc17_crit_edge, %entry.for.inc17_crit_edge
  %arrayidx6.1 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 10, i32 1
  %51 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx6.1, align 4
  %tobool.not.1 = icmp eq ptr %52, null
  br i1 %tobool.not.1, label %for.inc17.for.inc17.1_crit_edge, label %if.then.1

for.inc17.for.inc17.1_crit_edge:                  ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.1

if.then.1:                                        ; preds = %for.inc17
  %arrayidx7.1 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 8, i32 1
  %substream.1 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 8, i32 1, i32 2
  %53 = ptrtoint ptr %substream.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %substream.1, align 4
  %tobool8.not.1 = icmp eq ptr %54, null
  br i1 %tobool8.not.1, label %if.then.1.for.inc17.1_crit_edge, label %land.lhs.true.1

if.then.1.for.inc17.1_crit_edge:                  ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.1

land.lhs.true.1:                                  ; preds = %if.then.1
  %suspended.1 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 8, i32 1, i32 9
  %55 = ptrtoint ptr %suspended.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %suspended.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool9.not.1 = icmp eq i32 %56, 0
  br i1 %tobool9.not.1, label %land.lhs.true.1.for.inc17.1_crit_edge, label %if.then10.1

land.lhs.true.1.for.inc17.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.1

if.then10.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx7.1, align 4
  %enable_dma.1 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %enable_dma.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %enable_dma.1, align 4
  tail call void %60(ptr noundef %3, i32 noundef 1) #8
  %61 = ptrtoint ptr %substream.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %substream.1, align 4
  %ops12.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %ops12.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops12.1, align 4
  %prepare.1 = getelementptr inbounds %struct.snd_pcm_ops, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %prepare.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prepare.1, align 4
  %call14.1 = tail call i32 %66(ptr noundef %62) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  tail call void @arm_heavy_mb() #8
  %addr.1 = getelementptr %struct.atiixp, ptr %3, i32 0, i32 8, i32 1, i32 1, i32 2
  %67 = ptrtoint ptr %addr.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %addr.1, align 4
  %or.1 = or i32 %68, 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.1)
  %70 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %remap_addr.i, align 4
  %72 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx7.1, align 4
  %llp_offset.1 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %llp_offset.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %llp_offset.1, align 4
  %add.ptr.1 = getelementptr i8, ptr %71, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %69) #8, !srcloc !196
  br label %for.inc17.1

for.inc17.1:                                      ; preds = %if.then10.1, %land.lhs.true.1.for.inc17.1_crit_edge, %if.then.1.for.inc17.1_crit_edge, %for.inc17.for.inc17.1_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %76 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %76)
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

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !43, !45, !47, !48, !50, !51, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !84, !85, !87, !89, !90, !91, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !171, !172, !174, !176, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/atiixp.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/atiixp.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/atiixp.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/atiixp.c", i32 34, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/atiixp.c", i32 35, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/atiixp.c", i32 36, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/atiixp.c", i32 37, i32 1}
!17 = !{ptr @__param_ac97_clock, !18, !"__param_ac97_clock", i1 false, i1 false}
!18 = !{!"../sound/pci/atiixp.c", i32 38, i32 1}
!19 = !{ptr @__UNIQUE_ID_ac97_clocktype250, !18, !"__UNIQUE_ID_ac97_clocktype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_ac97_clock251, !21, !"__UNIQUE_ID_ac97_clock251", i1 false, i1 false}
!21 = !{!"../sound/pci/atiixp.c", i32 39, i32 1}
!22 = !{ptr @__param_ac97_quirk, !23, !"__param_ac97_quirk", i1 false, i1 false}
!23 = !{!"../sound/pci/atiixp.c", i32 40, i32 1}
!24 = !{ptr @__UNIQUE_ID_ac97_quirktype252, !23, !"__UNIQUE_ID_ac97_quirktype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_ac97_quirk253, !26, !"__UNIQUE_ID_ac97_quirk253", i1 false, i1 false}
!26 = !{!"../sound/pci/atiixp.c", i32 41, i32 1}
!27 = !{ptr @__param_ac97_codec, !28, !"__param_ac97_codec", i1 false, i1 false}
!28 = !{!"../sound/pci/atiixp.c", i32 42, i32 1}
!29 = !{ptr @__UNIQUE_ID_ac97_codectype254, !28, !"__UNIQUE_ID_ac97_codectype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_ac97_codec255, !31, !"__UNIQUE_ID_ac97_codec255", i1 false, i1 false}
!31 = !{!"../sound/pci/atiixp.c", i32 43, i32 1}
!32 = !{ptr @__param_spdif_aclink, !33, !"__param_spdif_aclink", i1 false, i1 false}
!33 = !{!"../sound/pci/atiixp.c", i32 44, i32 1}
!34 = !{ptr @__UNIQUE_ID_spdif_aclinktype256, !33, !"__UNIQUE_ID_spdif_aclinktype256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_spdif_aclink257, !36, !"__UNIQUE_ID_spdif_aclink257", i1 false, i1 false}
!36 = !{!"../sound/pci/atiixp.c", i32 45, i32 1}
!37 = !{ptr @__param_enable, !38, !"__param_enable", i1 false, i1 false}
!38 = !{!"../sound/pci/atiixp.c", i32 49, i32 1}
!39 = !{ptr @__UNIQUE_ID_enabletype258, !38, !"__UNIQUE_ID_enabletype258", i1 false, i1 false}
!40 = !{ptr @__initcall__kmod_snd_atiixp__263_1635_atiixp_driver_init6, !41, !"__initcall__kmod_snd_atiixp__263_1635_atiixp_driver_init6", i1 false, i1 false}
!41 = !{!"../sound/pci/atiixp.c", i32 1635, i32 1}
!42 = !{ptr @__exitcall_atiixp_driver_exit, !41, !"__exitcall_atiixp_driver_exit", i1 false, i1 false}
!43 = !{ptr @ac97_quirk, !44, !"ac97_quirk", i1 false, i1 false}
!44 = !{!"../sound/pci/atiixp.c", i32 30, i32 14}
!45 = !{ptr @enable, !46, !"enable", i1 false, i1 false}
!46 = !{!"../sound/pci/atiixp.c", i32 48, i32 13}
!47 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!48 = !{ptr @index, !49, !"index", i1 false, i1 false}
!49 = !{!"../sound/pci/atiixp.c", i32 27, i32 12}
!50 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!51 = !{ptr @id, !52, !"id", i1 false, i1 false}
!52 = !{!"../sound/pci/atiixp.c", i32 28, i32 14}
!53 = !{ptr @__param_str_ac97_clock, !18, !"__param_str_ac97_clock", i1 false, i1 false}
!54 = !{ptr @ac97_clock, !55, !"ac97_clock", i1 false, i1 false}
!55 = !{!"../sound/pci/atiixp.c", i32 29, i32 12}
!56 = !{ptr @__param_str_ac97_quirk, !23, !"__param_str_ac97_quirk", i1 false, i1 false}
!57 = !{ptr @__param_str_ac97_codec, !28, !"__param_str_ac97_codec", i1 false, i1 false}
!58 = !{ptr @ac97_codec, !59, !"ac97_codec", i1 false, i1 false}
!59 = !{!"../sound/pci/atiixp.c", i32 32, i32 12}
!60 = !{ptr @__param_str_spdif_aclink, !33, !"__param_str_spdif_aclink", i1 false, i1 false}
!61 = !{ptr @spdif_aclink, !62, !"spdif_aclink", i1 false, i1 false}
!62 = !{!"../sound/pci/atiixp.c", i32 31, i32 13}
!63 = !{ptr @__param_str_enable, !38, !"__param_str_enable", i1 false, i1 false}
!64 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @atiixp_driver, !66, !"atiixp_driver", i1 false, i1 false}
!66 = !{!"../sound/pci/atiixp.c", i32 1626, i32 26}
!67 = !{ptr @snd_atiixp_ids, !68, !"snd_atiixp_ids", i1 false, i1 false}
!68 = !{!"../sound/pci/atiixp.c", i32 274, i32 35}
!69 = !{ptr @.str.1, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/atiixp.c", i32 1588, i32 38}
!71 = !{ptr @.str.2, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/atiixp.c", i32 1588, i32 49}
!73 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/atiixp.c", i32 1589, i32 26}
!75 = !{ptr @.str.4, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/atiixp.c", i32 1613, i32 4}
!77 = !{ptr @.str.5, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/atiixp.c", i32 1615, i32 61}
!79 = !{ptr @snd_atiixp_init.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../sound/pci/atiixp.c", i32 1550, i32 2}
!81 = !{ptr @.str.6, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @snd_atiixp_init.__key.7, !83, !"__key", i1 false, i1 false}
!83 = !{!"../sound/pci/atiixp.c", i32 1551, i32 2}
!84 = !{ptr @.str.8, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.9, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/atiixp.c", i32 1555, i32 40}
!87 = !{ptr @.str.10, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/atiixp.c", i32 1563, i32 3}
!89 = !{ptr @.str.11, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.12, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.13, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.14, !88, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @snd_atiixp_init._entry, !88, !"_entry", i1 false, i1 false}
!94 = !{ptr @snd_atiixp_init._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.15, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/atiixp.c", i32 675, i32 2}
!97 = !{ptr @.str.16, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug261, !96, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!99 = !{ptr @.str.17, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/atiixp.c", i32 511, i32 4}
!101 = !{ptr @.str.18, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @snd_atiixp_aclink_reset._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @snd_atiixp_aclink_reset._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @snd_atiixp_mixer_new.ops, !105, !"ops", i1 false, i1 false}
!105 = !{!"../sound/pci/atiixp.c", i32 1406, i32 39}
!106 = !{ptr @snd_atiixp_mixer_new.codec_skip, !107, !"codec_skip", i1 false, i1 false}
!107 = !{!"../sound/pci/atiixp.c", i32 1410, i32 28}
!108 = !{ptr @.str.19, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/atiixp.c", i32 1439, i32 4}
!110 = !{ptr @.str.20, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @snd_atiixp_mixer_new.__UNIQUE_ID_ddebug262, !109, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!112 = !{ptr @.str.21, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/atiixp.c", i32 1447, i32 3}
!114 = !{ptr @snd_atiixp_mixer_new._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @snd_atiixp_mixer_new._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.22, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/atiixp.c", i32 420, i32 4}
!118 = !{ptr @.str.23, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.24, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @snd_atiixp_acquire_codec._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @snd_atiixp_acquire_codec._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.25, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/atiixp.c", i32 451, i32 3}
!124 = !{ptr @.str.26, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @snd_atiixp_codec_read._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @snd_atiixp_codec_read._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.27, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/atiixp.c", i32 587, i32 3}
!129 = !{ptr @.str.28, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @snd_atiixp_codec_detect._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @snd_atiixp_codec_detect._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.29, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/atiixp.c", i32 555, i32 3}
!134 = !{ptr @.str.30, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ac97_probing_bugs.__UNIQUE_ID_ddebug259, !133, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!136 = !{ptr @.str.31, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/atiixp.c", i32 285, i32 2}
!138 = !{ptr @.str.32, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/atiixp.c", i32 286, i32 2}
!140 = !{ptr @atiixp_quirks, !141, !"atiixp_quirks", i1 false, i1 false}
!141 = !{!"../sound/pci/atiixp.c", i32 284, i32 35}
!142 = !{ptr @.str.33, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/atiixp.c", i32 1381, i32 11}
!144 = !{ptr @.str.34, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/atiixp.c", i32 1387, i32 11}
!146 = !{ptr @.str.35, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/atiixp.c", i32 1393, i32 11}
!148 = !{ptr @ac97_quirks, !149, !"ac97_quirks", i1 false, i1 false}
!149 = !{!"../sound/pci/atiixp.c", i32 1377, i32 32}
!150 = !{ptr @.str.36, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/atiixp.c", i32 1299, i32 32}
!152 = !{ptr @.str.37, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/atiixp.c", i32 1306, i32 21}
!154 = !{ptr @.str.38, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/atiixp.c", i32 1308, i32 21}
!156 = !{ptr @snd_atiixp_playback_dma_ops, !157, !"snd_atiixp_playback_dma_ops", i1 false, i1 false}
!157 = !{!"../sound/pci/atiixp.c", i32 1208, i32 36}
!158 = !{ptr @snd_atiixp_capture_dma_ops, !159, !"snd_atiixp_capture_dma_ops", i1 false, i1 false}
!159 = !{!"../sound/pci/atiixp.c", i32 1217, i32 36}
!160 = !{ptr @snd_atiixp_spdif_dma_ops, !161, !"snd_atiixp_spdif_dma_ops", i1 false, i1 false}
!161 = !{!"../sound/pci/atiixp.c", i32 1226, i32 36}
!162 = !{ptr @atiixp_pcm_defs, !163, !"atiixp_pcm_defs", i1 false, i1 false}
!163 = !{!"../sound/pci/atiixp.c", i32 1172, i32 30}
!164 = !{ptr @snd_atiixp_playback_ops, !165, !"snd_atiixp_playback_ops", i1 false, i1 false}
!165 = !{!"../sound/pci/atiixp.c", i32 1140, i32 33}
!166 = !{ptr @snd_atiixp_pcm_hw, !167, !"snd_atiixp_pcm_hw", i1 false, i1 false}
!167 = !{!"../sound/pci/atiixp.c", i32 1000, i32 38}
!168 = !{ptr @.str.39, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/atiixp.c", i32 663, i32 2}
!170 = !{ptr @.str.40, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @snd_atiixp_pcm_pointer.__UNIQUE_ID_ddebug260, !169, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!172 = !{ptr @snd_atiixp_capture_ops, !173, !"snd_atiixp_capture_ops", i1 false, i1 false}
!173 = !{!"../sound/pci/atiixp.c", i32 1151, i32 33}
!174 = !{ptr @snd_atiixp_spdif_ops, !175, !"snd_atiixp_spdif_ops", i1 false, i1 false}
!175 = !{!"../sound/pci/atiixp.c", i32 1162, i32 33}
!176 = !{ptr @.str.41, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/atiixp.c", i32 1525, i32 35}
!178 = !{ptr @.str.42, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/atiixp.c", i32 1520, i32 3}
!180 = !{ptr @snd_atiixp_pm, !181, !"snd_atiixp_pm", i1 false, i1 false}
!181 = !{!"../sound/pci/atiixp.c", i32 1502, i32 8}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{!"auto-init"}
!192 = !{i8 0, i8 2}
!193 = !{i64 727580}
!194 = !{i64 2154810732}
!195 = !{i64 2154811042}
!196 = !{i64 727162}
!197 = !{i64 2154811814}
!198 = !{i64 2154812139}
!199 = !{i64 2154812634}
!200 = !{i64 2154813264}
!201 = !{i64 2154786647}
!202 = !{i64 2154786849}
!203 = !{i64 2154797731}
!204 = !{i64 2154798954}
!205 = !{i64 2154799680}
!206 = !{i64 2148194319, i64 2148194324, i64 2148194337, i64 2148194381, i64 2148194415, i64 2148194436}
!207 = !{i64 2154837688}
!208 = !{i64 2154838507}
!209 = !{i64 2154814959}
!210 = !{i64 2154815882}
!211 = !{i64 2154816189}
!212 = !{i64 2154790410}
!213 = !{i64 2154796208}
!214 = !{i64 2154792889}
!215 = !{i64 2154793672}
!216 = !{i64 2154806243}
!217 = !{i64 2154808146}
!218 = !{i64 2154826097}
!219 = !{i64 2154825323}
!220 = !{i64 2154826422}
!221 = !{i64 2154827431}
!222 = !{i64 2154827748}
!223 = !{i64 2154828361}
!224 = !{i64 2154829261}
!225 = !{i64 2154829578}
!226 = !{i64 2154830369}
!227 = !{!"branch_weights", i32 1, i32 2000}
!228 = !{i64 2154788282}
!229 = !{i64 2154789086}
!230 = !{i64 2154789607}
!231 = !{i64 2154833278}
!232 = !{i64 2154833867}
!233 = !{i64 2154824146}
!234 = !{i64 2154824989}
!235 = !{i64 2154823079}
!236 = !{i64 2154816961}
!237 = !{i64 2154820167}
!238 = !{i64 2154831670}
!239 = !{i64 2154832040}
!240 = !{i64 2154848498}
!241 = !{i64 2154843013}
