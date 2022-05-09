; ModuleID = '/llk/IR_all_yes/sound/pci/via82xx_modem.c_pt.bc'
source_filename = "../sound/pci/via82xx_modem.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.via82xx_modem = type { i32, i32, i32, ptr, ptr, i32, i32, i32, [2 x %struct.viadev], [2 x ptr], ptr, ptr, i32, i32, %struct.spinlock, ptr }
%struct.viadev = type { i32, i32, i32, ptr, i32, i32, %struct.snd_dma_buffer, ptr, i32, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.84, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.84 = type { i32, [28 x i8] }
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
%struct.snd_via_sg_table = type { i32, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [58 x i8] c"snd_via82xx_modem.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [47 x i8] c"snd_via82xx_modem.description=VIA VT82xx modem\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [51 x i8] c"snd_via82xx_modem.file=sound/pci/snd-via82xx-modem\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [30 x i8] c"snd_via82xx_modem.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [24 x i8] c"snd_via82xx_modem.index\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { i32, [28 x i8] } { i32 -2, [28 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [37 x i8] c"snd_via82xx_modem.parmtype=index:int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [62 x i8] c"snd_via82xx_modem.parm=index:Index value for VIA 82xx bridge.\00", section ".modinfo", align 1
@__param_str_id = internal constant [21 x i8] c"snd_via82xx_modem.id\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [36 x i8] c"snd_via82xx_modem.parmtype=id:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [57 x i8] c"snd_via82xx_modem.parm=id:ID string for VIA 82xx bridge.\00", section ".modinfo", align 1
@__param_str_ac97_clock = internal constant [29 x i8] c"snd_via82xx_modem.ac97_clock\00", align 1
@ac97_clock = internal global { i32, [28 x i8] } { i32 48000, [28 x i8] zeroinitializer }, align 32
@__param_ac97_clock = internal constant %struct.kernel_param { ptr @__param_str_ac97_clock, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_clock } }, section "__param", align 4
@__UNIQUE_ID_ac97_clocktype250 = internal constant [42 x i8] c"snd_via82xx_modem.parmtype=ac97_clock:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_clock251 = internal constant [71 x i8] c"snd_via82xx_modem.parm=ac97_clock:AC'97 codec clock (default 48000Hz).\00", section ".modinfo", align 1
@__param_str_enable = internal constant [25 x i8] c"snd_via82xx_modem.enable\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype252 = internal constant [39 x i8] c"snd_via82xx_modem.parmtype=enable:bool\00", section ".modinfo", align 1
@__initcall__kmod_snd_via82xx_modem__255_1169_via82xx_modem_driver_init6 = internal global ptr @via82xx_modem_driver_init, section ".initcall6.init", align 4
@via82xx_modem_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_via82xx_modem_ids, ptr @snd_via82xx_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_via82xx_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_via82xx_modem_driver_exit = internal global ptr @via82xx_modem_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_via82xx_modem\00", [46 x i8] zeroinitializer }, align 32
@snd_via82xx_modem_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 12392, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_via82xx_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_via82xx_suspend, ptr @snd_via82xx_resume, ptr @snd_via82xx_suspend, ptr @snd_via82xx_resume, ptr @snd_via82xx_suspend, ptr @snd_via82xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VIA82XX-MODEM\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VIA 82XX modem\00", [17 x i8] zeroinitializer }, align 32
@snd_via82xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1128, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid card type %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_via82xx_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/via82xx_modem.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_via82xx_probe._entry_ptr = internal global ptr @snd_via82xx_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %d\00", [44 x i8] zeroinitializer }, align 32
@snd_via82xx_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_via82xx_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 1085, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_via82xx_create\00", [45 x i8] zeroinitializer }, align 32
@snd_via82xx_create._entry_ptr = internal global ptr @snd_via82xx_create._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_via82xx_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 982, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AC'97 codec is not ready [0x%x]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_via82xx_chip_init\00", [42 x i8] zeroinitializer }, align 32
@snd_via82xx_chip_init._entry_ptr = internal global ptr @snd_via82xx_chip_init._entry, section ".printk_index", align 4
@snd_via82xx_mixer_new.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_via82xx_codec_write, ptr @snd_via82xx_codec_read, ptr @snd_via82xx_codec_wait, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_via82xx_codec_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 377, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"codec_ready: codec %i is not ready [0x%x]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_via82xx_codec_ready\00", [40 x i8] zeroinitializer }, align 32
@snd_via82xx_codec_ready._entry_ptr = internal global ptr @snd_via82xx_codec_ready._entry, section ".printk_index", align 4
@snd_via82xx_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 439, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"codec_read: codec %i is not valid [0x%x]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_via82xx_codec_read\00", [41 x i8] zeroinitializer }, align 32
@snd_via82xx_codec_read._entry_ptr = internal global ptr @snd_via82xx_codec_read._entry, section ".printk_index", align 4
@snd_via686_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_via82xx_playback_open, ptr @snd_via82xx_pcm_close, ptr null, ptr @snd_via82xx_hw_params, ptr @snd_via82xx_hw_free, ptr @snd_via82xx_pcm_prepare, ptr @snd_via82xx_pcm_trigger, ptr null, ptr @snd_via686_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_via686_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_via82xx_capture_open, ptr @snd_via82xx_pcm_close, ptr null, ptr @snd_via82xx_hw_params, ptr @snd_via82xx_hw_free, ptr @snd_via82xx_pcm_prepare, ptr @snd_via82xx_pcm_trigger, ptr null, ptr @snd_via686_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_via82xx_modem_pcm_open.rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8000, i32 9600, i32 12000, i32 16000], [16 x i8] zeroinitializer }, align 32
@snd_via82xx_modem_pcm_open.hw_constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @snd_via82xx_modem_pcm_open.rates, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@snd_via82xx_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 6, i32 -2147483638, i32 8000, i32 16000, i32 1, i32 1, i32 131072, i32 32, i32 131072, i32 2, i32 127, i32 0 }, [32 x i8] zeroinitializer }, align 32
@build_via_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 304, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"too much table size!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"build_via_table\00", [16 x i8] zeroinitializer }, align 32
@build_via_table._entry_ptr = internal global ptr @build_via_table._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@calc_linear_pos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 569, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid via82xx_cur_ptr (size = %d, count = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"calc_linear_pos\00", [16 x i8] zeroinitializer }, align 32
@calc_linear_pos._entry_ptr = internal global ptr @calc_linear_pos._entry, section ".printk_index", align 4
@calc_linear_pos.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.5, ptr @.str.23, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid via82xx_cur_ptr (2), using last valid pointer\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"via82xx\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s\0A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x: %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@switch.table.snd_via82xx_pcm_trigger = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 1, i32 1], [40 x i8] zeroinitializer }, align 32
@switch.table.snd_via82xx_pcm_trigger.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"@\80\80\08\00\80", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 42, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 43, i32 14 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"ac97_clock\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 44, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 54, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"via82xx_modem_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1160, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1169, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"snd_via82xx_modem_ids\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 248, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"snd_via82xx_pm\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1045, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1124, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1125, i32 28 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1128, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1148, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1074, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1085, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 981, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 878, i32 39 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 376, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 437, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"snd_via686_playback_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 795, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"snd_via686_capture_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 806, i32 33 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 733, i32 28 }
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"hw_constraints_rates\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 734, i32 49 }
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"snd_via82xx_hw\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 703, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 304, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 567, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 593, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 921, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 913, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [29 x i8] c"../sound/pci/via82xx_modem.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 915, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [37 x i8] c"switch.table.snd_via82xx_pcm_trigger\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [40 x i8] c"switch.table.snd_via82xx_pcm_trigger.27\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_ac97_clock251, ptr @__UNIQUE_ID_ac97_clocktype250, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enabletype252, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_via82xx_modem_driver_exit, ptr @__initcall__kmod_snd_via82xx_modem__255_1169_via82xx_modem_driver_init6, ptr @__param_ac97_clock, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @build_via_table._entry, ptr @build_via_table._entry_ptr, ptr @calc_linear_pos._entry, ptr @calc_linear_pos._entry_ptr, ptr @snd_via82xx_chip_init._entry, ptr @snd_via82xx_chip_init._entry_ptr, ptr @snd_via82xx_codec_read._entry, ptr @snd_via82xx_codec_read._entry_ptr, ptr @snd_via82xx_codec_ready._entry, ptr @snd_via82xx_codec_ready._entry_ptr, ptr @snd_via82xx_create._entry, ptr @snd_via82xx_create._entry_ptr, ptr @snd_via82xx_probe._entry, ptr @snd_via82xx_probe._entry_ptr, ptr @via82xx_modem_driver_exit, ptr @index, ptr @id, ptr @ac97_clock, ptr @enable, ptr @via82xx_modem_driver, ptr @.str, ptr @snd_via82xx_modem_ids, ptr @snd_via82xx_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_via82xx_create.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @snd_via82xx_mixer_new.ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @snd_via686_playback_ops, ptr @snd_via686_capture_ops, ptr @snd_via82xx_modem_pcm_open.rates, ptr @snd_via82xx_modem_pcm_open.hw_constraints_rates, ptr @snd_via82xx_hw, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch.table.snd_via82xx_pcm_trigger, ptr @switch.table.snd_via82xx_pcm_trigger.27], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_clock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via82xx_modem_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_modem_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_mixer_new.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_codec_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via686_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via686_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_modem_pcm_open.rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_modem_pcm_open.hw_constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_via_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_linear_pos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_via82xx_pcm_trigger to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_via82xx_pcm_trigger.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @via82xx_modem_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @via82xx_modem_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @via82xx_modem_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @via82xx_modem_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !127
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %1 = load i32, ptr @index, align 4
  %2 = load ptr, ptr @id, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 248, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cond = icmp eq i32 %8, 1
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.end
  %driver = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 14)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 15)
  %11 = load i32, ptr @ac97_clock, align 4
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %do.body.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %sw.bb
  %reg_lock.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 14
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @snd_via82xx_create.__key, i16 noundef signext 3) #10
  %card2.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 4
  %12 = ptrtoint ptr %card2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %card2.i, align 4
  %pci3.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %pci3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pci, ptr %pci3.i, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %6, align 4
  %call4.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef %driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.body.i.cleanup_crit_edge, label %if.end7.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %do.body.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %15 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %port.i, align 4
  %irq8.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %18 = ptrtoint ptr %irq8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq8.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %19, ptr noundef nonnull @snd_via82xx_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end16.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev14.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %20 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev14.i, align 8
  %22 = ptrtoint ptr %irq8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq8.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %23) #13
  br label %cleanup

if.end16.i:                                       ; preds = %if.end7.i
  %24 = ptrtoint ptr %irq8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq8.i, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %6, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 33
  %27 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 10
  %28 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @snd_via82xx_free, ptr %private_free.i, align 4
  %29 = add i32 %11, -8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %29)
  %30 = icmp ult i32 %29, 40001
  br i1 %30, label %if.then22.i, label %if.end16.i.if.end9_crit_edge

if.end16.i.if.end9_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %ac97_clock23.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 12
  %31 = ptrtoint ptr %ac97_clock23.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %11, ptr %ac97_clock23.i, align 4
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %32 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.3, i32 noundef %8) #13
  br label %cleanup

if.end9:                                          ; preds = %if.then22.i, %if.end16.i.if.end9_crit_edge
  call fastcc void @snd_via82xx_chip_init(ptr noundef %6) #10
  call void @pci_set_master(ptr noundef %pci) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #10
  %34 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card2.i, align 4
  %ac97_bus.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 10
  %call.i58 = call i32 @snd_ac97_bus(ptr noundef %35, i32 noundef 0, ptr noundef nonnull @snd_via82xx_mixer_new.ops, ptr noundef %6, ptr noundef %ac97_bus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.i59 = icmp slt i32 %call.i58, 0
  br i1 %cmp.i59, label %snd_via82xx_mixer_new.exit.thread, label %snd_via82xx_mixer_new.exit

snd_via82xx_mixer_new.exit.thread:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  br label %cleanup

snd_via82xx_mixer_new.exit:                       ; preds = %if.end9
  %36 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  %37 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 3
  %38 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 2
  %39 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 1
  %40 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ac97_bus.i, align 4
  %private_free.i60 = getelementptr inbounds %struct.snd_ac97_bus, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %private_free.i60 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @snd_via82xx_mixer_free_ac97_bus, ptr %private_free.i60, align 4
  %ac97_clock.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 12
  %43 = ptrtoint ptr %ac97_clock.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ac97_clock.i, align 4
  %45 = load ptr, ptr %ac97_bus.i, align 4
  %clock.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %clock.i, align 4
  %47 = call ptr @memset(ptr %37, i32 0, i32 12)
  %48 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %6, ptr %ac97.i, align 4
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @snd_via82xx_mixer_free_ac97, ptr %39, align 4
  %50 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci3.i, align 4
  %52 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %38, align 4
  %53 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2064, ptr %36, align 4
  %ac97_secondary.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 13
  %54 = ptrtoint ptr %ac97_secondary.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ac97_secondary.i, align 4
  %conv.i = trunc i32 %55 to i16
  %56 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i, ptr %37, align 4
  %57 = load ptr, ptr %ac97_bus.i, align 4
  %ac976.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 11
  %call7.i = call i32 @snd_ac97_mixer(ptr noundef %57, ptr noundef nonnull %ac97.i, ptr noundef %ac976.i) #10
  %58 = call i32 @llvm.smin.i32(i32 %call7.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp11 = icmp slt i32 %call7.i, 0
  br i1 %cmp11, label %snd_via82xx_mixer_new.exit.cleanup_crit_edge, label %if.end14

snd_via82xx_mixer_new.exit.cleanup_crit_edge:     ; preds = %snd_via82xx_mixer_new.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %snd_via82xx_mixer_new.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #10
  %59 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !127
  %playback_devno.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 6
  %60 = ptrtoint ptr %playback_devno.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %playback_devno.i, align 4
  %capture_devno.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 7
  %61 = ptrtoint ptr %capture_devno.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %capture_devno.i, align 4
  %num_devs.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 5
  %62 = ptrtoint ptr %num_devs.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %num_devs.i, align 4
  %intr_mask.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 2
  %63 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3342336, ptr %intr_mask.i, align 4
  %64 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card2.i, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %65, i32 0, i32 3
  %call.i63 = call i32 @snd_pcm_new(ptr noundef %65, ptr noundef %shortname.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i64 = icmp slt i32 %call.i63, 0
  br i1 %cmp.i64, label %snd_via686_pcm_new.exit.thread, label %snd_via686_pcm_new.exit

snd_via686_pcm_new.exit.thread:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  br label %cleanup

snd_via686_pcm_new.exit:                          ; preds = %if.end14
  %66 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %67, i32 noundef 0, ptr noundef nonnull @snd_via686_playback_ops) #10
  %68 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %69, i32 noundef 1, ptr noundef nonnull @snd_via686_capture_ops) #10
  %70 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcm.i, align 4
  %dev_class.i = getelementptr inbounds %struct.snd_pcm, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %dev_class.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 2, ptr %dev_class.i, align 4
  %private_data.i65 = getelementptr inbounds %struct.snd_pcm, ptr %71, i32 0, i32 11
  %73 = ptrtoint ptr %private_data.i65 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %6, ptr %private_data.i65, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %71, i32 0, i32 7
  %74 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card2.i, align 4
  %shortname4.i = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 3
  %call6.i = call ptr @strcpy(ptr noundef %name.i, ptr noundef %shortname4.i) #14
  %pcms.i = getelementptr inbounds %struct.via82xx_modem, ptr %6, i32 0, i32 9
  %76 = ptrtoint ptr %pcms.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %71, ptr %pcms.i, align 4
  %arrayidx.i.i = getelementptr %struct.via82xx_modem, ptr %6, i32 0, i32 8, i32 0
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 64, ptr %arrayidx.i.i, align 4
  %direction4.i.i = getelementptr %struct.via82xx_modem, ptr %6, i32 0, i32 8, i32 0, i32 2
  %78 = ptrtoint ptr %direction4.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %direction4.i.i, align 4
  %79 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port.i, align 4
  %add.i.i = add i32 %80, 64
  %port7.i.i = getelementptr %struct.via82xx_modem, ptr %6, i32 0, i32 8, i32 0, i32 1
  %81 = ptrtoint ptr %port7.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i.i, ptr %port7.i.i, align 4
  %arrayidx.i21.i = getelementptr %struct.via82xx_modem, ptr %6, i32 0, i32 8, i32 1
  %82 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 80, ptr %arrayidx.i21.i, align 4
  %direction4.i22.i = getelementptr %struct.via82xx_modem, ptr %6, i32 0, i32 8, i32 1, i32 2
  %83 = ptrtoint ptr %direction4.i22.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %direction4.i22.i, align 4
  %add.i24.i = add i32 %80, 80
  %port7.i25.i = getelementptr %struct.via82xx_modem, ptr %6, i32 0, i32 8, i32 1, i32 1
  %84 = ptrtoint ptr %port7.i25.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.i24.i, ptr %port7.i25.i, align 4
  %85 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pci3.i, align 4
  %dev.i67 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %call7.i68 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %71, i32 noundef 2, ptr noundef %dev.i67, i32 noundef 65536, i32 noundef 131072) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  %87 = ptrtoint ptr %num_devs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_devs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp2080.not = icmp eq i32 %88, 0
  br i1 %cmp2080.not, label %snd_via686_pcm_new.exit.for.end_crit_edge, label %snd_via686_pcm_new.exit.for.body_crit_edge

snd_via686_pcm_new.exit.for.body_crit_edge:       ; preds = %snd_via686_pcm_new.exit
  br label %for.body

snd_via686_pcm_new.exit.for.end_crit_edge:        ; preds = %snd_via686_pcm_new.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %snd_via686_pcm_new.exit.for.body_crit_edge
  %i.081 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %snd_via686_pcm_new.exit.for.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  call void @arm_heavy_mb() #10
  %port.i71 = getelementptr %struct.via82xx_modem, ptr %6, i32 0, i32 8, i32 %i.081, i32 1
  %89 = ptrtoint ptr %port.i71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port.i71, align 4
  %add.i = add i32 %90, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %91 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 73) #10, !srcloc !129
  %92 = ptrtoint ptr %port.i71 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port.i71, align 4
  %add3.i = add i32 %93, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %94 = inttoptr i32 %add5.i to ptr
  %95 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %94) #10, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 10737400) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  call void @arm_heavy_mb() #10
  %97 = ptrtoint ptr %port.i71 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port.i71, align 4
  %add11.i = add i32 %98, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %99 = inttoptr i32 %add13.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 0) #10, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  call void @arm_heavy_mb() #10
  %100 = ptrtoint ptr %port.i71 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port.i71, align 4
  %and19.i = and i32 %101, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %102 = inttoptr i32 %add20.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 3) #10, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @arm_heavy_mb() #10
  %103 = ptrtoint ptr %port.i71 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %port.i71, align 4
  %add25.i = add i32 %104, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %105 = inttoptr i32 %add27.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 0) #10, !srcloc !129
  %lastpos.i = getelementptr %struct.via82xx_modem, ptr %6, i32 0, i32 8, i32 %i.081, i32 8
  %106 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %lastpos.i, align 4
  %inc = add nuw i32 %i.081, 1
  %107 = ptrtoint ptr %num_devs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_devs.i, align 4
  %cmp20 = icmp ult i32 %inc, %108
  br i1 %cmp20, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %snd_via686_pcm_new.exit.for.end_crit_edge
  %109 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %110, i32 0, i32 4
  %shortname23 = getelementptr inbounds %struct.snd_card, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port.i, align 4
  %113 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %6, align 4
  %call25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.8, ptr noundef %shortname23, i32 noundef %112, i32 noundef %114)
  %115 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %card2.i, align 4
  %call.i.i73 = call i32 @snd_card_rw_proc_new(ptr noundef %116, ptr noundef nonnull @.str.24, ptr noundef %6, ptr noundef nonnull @snd_via82xx_proc_read, ptr noundef null) #10
  %117 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %card, align 4
  %call26 = call i32 @snd_card_register(ptr noundef %118) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %for.end.cleanup_crit_edge, label %if.end30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %121 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %for.end.cleanup_crit_edge, %snd_via686_pcm_new.exit.thread, %snd_via82xx_mixer_new.exit.cleanup_crit_edge, %snd_via82xx_mixer_new.exit.thread, %do.end, %do.end13.i, %do.body.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %58, %snd_via82xx_mixer_new.exit.cleanup_crit_edge ], [ %call26, %for.end.cleanup_crit_edge ], [ %call.i58, %snd_via82xx_mixer_new.exit.thread ], [ %call.i63, %snd_via686_pcm_new.exit.thread ], [ %call4.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ -16, %do.end13.i ]
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

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
define internal i32 @snd_via82xx_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.via82xx_modem, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 132
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #10, !srcloc !135
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  %intr_mask = getelementptr inbounds %struct.via82xx_modem, ptr %dev_id, i32 0, i32 2
  %5 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %intr_mask, align 4
  %and3 = and i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.via82xx_modem, ptr %dev_id, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %num_devs = getelementptr inbounds %struct.via82xx_modem, ptr %dev_id, i32 0, i32 5
  %7 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp49.not = icmp eq i32 %8, 0
  br i1 %cmp49.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %port5 = getelementptr %struct.via82xx_modem, ptr %dev_id, i32 0, i32 8, i32 %i.050, i32 1
  %9 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port5, align 4
  %and7 = and i32 %10, 1048575
  %add8 = or i32 %and7, -18874368
  %11 = inttoptr i32 %add8 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  %13 = and i8 %12, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %for.body.cleanup_crit_edge, label %if.end16

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %substream = getelementptr %struct.via82xx_modem, ptr %dev_id, i32 0, i32 8, i32 %i.050, i32 3
  %14 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %substream, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.end16.do.body_crit_edge, label %land.lhs.true

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.end16
  %running = getelementptr %struct.via82xx_modem, ptr %dev_id, i32 0, i32 8, i32 %i.050, i32 4
  %16 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.body_crit_edge, label %if.then19

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  %18 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %19) #10
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  br label %do.body

do.body:                                          ; preds = %if.then19, %land.lhs.true.do.body_crit_edge, %if.end16.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port5, align 4
  %and26 = and i32 %21, 1048575
  %add27 = or i32 %and26, -18874368
  %22 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %13) #10, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %do.body, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.050, 1
  %23 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_devs, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  br label %cleanup31

cleanup31:                                        ; preds = %for.end, %entry.cleanup31_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_via82xx_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %num_devs = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not = icmp eq i32 %3, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %port.i = getelementptr %struct.via82xx_modem, ptr %1, i32 0, i32 8, i32 %i.06, i32 1
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 4
  %add.i = add i32 %5, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 73) #10, !srcloc !129
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %8, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 10737400) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %13, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %14 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %16, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %17 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 3) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %19, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %20 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #10, !srcloc !129
  %lastpos.i = getelementptr %struct.via82xx_modem, ptr %1, i32 0, i32 8, i32 %i.06, i32 8
  %21 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %lastpos.i, align 4
  %inc = add nuw i32 %i.06, 1
  %22 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_devs, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_via82xx_chip_init(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  %pval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pval) #10
  %0 = ptrtoint ptr %pval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pval, align 1, !annotation !127
  %pci = getelementptr inbounds %struct.via82xx_modem, ptr %chip, i32 0, i32 3
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %call = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef 68, ptr noundef nonnull %pval) #10
  %3 = ptrtoint ptr %pval to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %4)
  %cmp.not = icmp ugt i8 %4, -65
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %or = or i8 %4, -64
  %call5 = call i32 @pci_write_config_byte(ptr noundef %6, i32 noundef 68, i8 noundef zeroext %or) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 21474800) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %call7 = call i32 @pci_read_config_byte(ptr noundef %9, i32 noundef 64, ptr noundef nonnull %pval) #10
  %10 = ptrtoint ptr %pval to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pval, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then10, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %call12 = call i32 @pci_write_config_byte(ptr noundef %14, i32 noundef 65, i8 noundef zeroext -32) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 21474800) #10
  %16 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci, align 4
  %call14 = call i32 @pci_write_config_byte(ptr noundef %17, i32 noundef 65, i8 noundef zeroext 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 21474800) #10
  %19 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci, align 4
  %call16 = call i32 @pci_write_config_byte(ptr noundef %20, i32 noundef 65, i8 noundef zeroext -60) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 21474800) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end.if.end17_crit_edge
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 4
  %call19 = call i32 @pci_read_config_byte(ptr noundef %23, i32 noundef 65, ptr noundef nonnull %pval) #10
  %24 = ptrtoint ptr %pval to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pval, align 1
  %26 = and i8 %25, -60
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %26)
  %cmp22.not = icmp eq i8 %26, -60
  br i1 %cmp22.not, label %if.end17.if.end27_crit_edge, label %if.then24

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci, align 4
  %call26 = call i32 @pci_write_config_byte(ptr noundef %28, i32 noundef 65, i8 noundef zeroext -60) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 21474800) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end17.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -75, %30
  br label %do.body

do.body:                                          ; preds = %if.end35.do.body_crit_edge, %if.end27
  %31 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci, align 4
  %call30 = call i32 @pci_read_config_byte(ptr noundef %32, i32 noundef 64, ptr noundef nonnull %pval) #10
  %33 = ptrtoint ptr %pval to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pval, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool33.not = icmp eq i8 %35, 0
  br i1 %tobool33.not, label %if.end35, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end35:                                         ; preds = %do.body
  %call36 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %36
  %cmp37 = icmp slt i32 %sub, 0
  br i1 %cmp37, label %if.end35.do.body_crit_edge, label %if.end35.do.end_crit_edge

if.end35.do.end_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end35.do.body_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %if.end35.do.end_crit_edge, %do.body.do.end_crit_edge
  %port.i = getelementptr inbounds %struct.via82xx_modem, ptr %chip, i32 0, i32 1
  %37 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port.i, align 4
  %add.i = add i32 %38, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %39 = inttoptr i32 %add1.i to ptr
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %39) #10, !srcloc !135
  %41 = call i32 @llvm.bswap.i32(i32 %40) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %and40 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.end.if.end46_crit_edge, label %do.end45

do.end.if.end46_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end45:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.via82xx_modem, ptr %chip, i32 0, i32 4
  %42 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.12, i32 noundef %41) #13
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %do.end.if.end46_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port.i, align 4
  %add.i2 = add i32 %47, 128
  %and.i3 = and i32 %add.i2, 1048575
  %add1.i4 = or i32 %and.i3, -18874368
  %48 = inttoptr i32 %add1.i4 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 32840) #10, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port.i, align 4
  %add.i6 = add i32 %51, 128
  %and.i7 = and i32 %add.i6, 1048575
  %add1.i8 = or i32 %and.i7, -18874368
  %52 = inttoptr i32 %add1.i8 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 32840) #10, !srcloc !141
  %add48.neg = sub i32 -75, %49
  br label %do.body49

do.body49:                                        ; preds = %if.end54.do.body49_crit_edge, %if.end46
  %53 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port.i, align 4
  %add.i10 = add i32 %54, 128
  %and.i11 = and i32 %add.i10, 1048575
  %add1.i12 = or i32 %and.i11, -18874368
  %55 = inttoptr i32 %add1.i12 to ptr
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %55) #10, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %57 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool52.not = icmp eq i32 %57, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %ac97_secondary = getelementptr inbounds %struct.via82xx_modem, ptr %chip, i32 0, i32 13
  %58 = ptrtoint ptr %ac97_secondary to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %ac97_secondary, align 4
  br label %do.body61

if.end54:                                         ; preds = %do.body49
  %call55 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %sub57 = add i32 %add48.neg, %59
  %cmp58 = icmp slt i32 %sub57, 0
  br i1 %cmp58, label %if.end54.do.body49_crit_edge, label %if.end54.do.body61_crit_edge

if.end54.do.body61_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61

if.end54.do.body49_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.body61:                                        ; preds = %if.end54.do.body61_crit_edge, %if.then53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port.i, align 4
  %add64 = add i32 %61, 140
  %and65 = and i32 %add64, 1048575
  %add66 = or i32 %and65, -18874368
  %62 = inttoptr i32 %add66 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %62, i32 0) #10, !srcloc !141
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pval) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_via82xx_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 84, i16 %reg)
  %cmp = icmp eq i16 %reg, 84
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %conv2 = zext i16 %val to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv2)
  %port = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 136
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #10, !srcloc !141
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %reg to i32
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.not = icmp eq i16 %7, 0
  %shl = select i1 %tobool.not.not, i32 0, i32 1073741824
  %shl5 = shl nuw i32 %conv, 16
  %conv6 = zext i16 %val to i32
  %or = or i32 %shl5, %conv6
  %or8 = or i32 %or, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %or8) #10
  %port.i = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i = add i32 %10, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #10, !srcloc !141
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num, align 8
  %conv10 = zext i16 %13 to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %timeout.0.i = phi i32 [ 1000, %if.end ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #10
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add.i.i = add i32 %16, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %17 = inttoptr i32 %add1.i.i to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %19 = and i32 %18, 1
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %card.i = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %add.i2.i = add i32 %25, 128
  %and.i3.i = and i32 %add.i2.i, 1048575
  %add1.i4.i = or i32 %and.i3.i, -18874368
  %26 = inttoptr i32 %add1.i4.i to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #10, !srcloc !135
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef %conv10, i32 noundef %28) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %while.body.i.cleanup_crit_edge, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_via82xx_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  %conv = zext i16 %3 to i32
  %shl = shl i32 %conv, 30
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %cond = select i1 %tobool.not, i32 33554432, i32 134217728
  %or = or i32 %shl, %cond
  %4 = and i16 %reg, 127
  %and = zext i16 %4 to i32
  %shl5 = shl nuw nsw i32 %and, 16
  %or3 = or i32 %or, %shl5
  %or6 = or i32 %or3, 8388608
  %5 = tail call i32 @llvm.bswap.i32(i32 %or6) #10
  %port.i34 = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i34, align 4
  %add.i35 = add i32 %7, 128
  %and.i36 = and i32 %add.i35, 1048575
  %add1.i37 = or i32 %and.i36, -18874368
  %8 = inttoptr i32 %add1.i37 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #10, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 4294960) #10
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  %cond.i = select i1 %tobool.not.i, i32 33554432, i32 134217728
  %or.i = or i32 %cond.i, 16777216
  br label %while.body.i

while.cond.loopexit:                              ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i34, align 4
  %add.i35.1 = add i32 %13, 128
  %and.i36.1 = and i32 %add.i35.1, 1048575
  %add1.i37.1 = or i32 %and.i36.1, -18874368
  %14 = inttoptr i32 %add1.i37.1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %5) #10, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 4294960) #10
  %16 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i.1 = icmp eq i16 %17, 0
  %cond.i.1 = select i1 %tobool.not.i.1, i32 33554432, i32 134217728
  %or.i.1 = or i32 %cond.i.1, 16777216
  br label %while.body.i.1

while.body.i.1:                                   ; preds = %if.end.i.1.while.body.i.1_crit_edge, %while.cond.loopexit
  %dec8.i.1 = phi i32 [ 999, %while.cond.loopexit ], [ %dec.i.1, %if.end.i.1.while.body.i.1_crit_edge ]
  %18 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i34, align 4
  %add.i.i.1 = add i32 %19, 128
  %and.i.i.1 = and i32 %add.i.i.1, 1048575
  %add1.i.i.1 = or i32 %and.i.i.1, -18874368
  %20 = inttoptr i32 %add1.i.i.1 to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #10, !srcloc !135
  %22 = shl i32 %21, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %and.i38.1 = and i32 %22, %or.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i38.1, i32 %cond.i.1)
  %cmp1.i.1 = icmp eq i32 %and.i38.1, %cond.i.1
  br i1 %cmp1.i.1, label %while.body.i.1.if.then15_crit_edge, label %if.end.i.1

while.body.i.1.if.then15_crit_edge:               ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.end.i.1:                                       ; preds = %while.body.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #10
  %dec.i.1 = add nsw i32 %dec8.i.1, -1
  %cmp.not.i.1 = icmp eq i32 %dec8.i.1, 0
  br i1 %cmp.not.i.1, label %while.cond.loopexit.1, label %if.end.i.1.while.body.i.1_crit_edge

if.end.i.1.while.body.i.1_crit_edge:              ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.1

while.cond.loopexit.1:                            ; preds = %if.end.i.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i34, align 4
  %add.i35.2 = add i32 %25, 128
  %and.i36.2 = and i32 %add.i35.2, 1048575
  %add1.i37.2 = or i32 %and.i36.2, -18874368
  %26 = inttoptr i32 %add1.i37.2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %5) #10, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 4294960) #10
  %28 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i.2 = icmp eq i16 %29, 0
  %cond.i.2 = select i1 %tobool.not.i.2, i32 33554432, i32 134217728
  %or.i.2 = or i32 %cond.i.2, 16777216
  br label %while.body.i.2

while.body.i.2:                                   ; preds = %if.end.i.2.while.body.i.2_crit_edge, %while.cond.loopexit.1
  %dec8.i.2 = phi i32 [ 999, %while.cond.loopexit.1 ], [ %dec.i.2, %if.end.i.2.while.body.i.2_crit_edge ]
  %30 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port.i34, align 4
  %add.i.i.2 = add i32 %31, 128
  %and.i.i.2 = and i32 %add.i.i.2, 1048575
  %add1.i.i.2 = or i32 %and.i.i.2, -18874368
  %32 = inttoptr i32 %add1.i.i.2 to ptr
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %32) #10, !srcloc !135
  %34 = shl i32 %33, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %and.i38.2 = and i32 %34, %or.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i38.2, i32 %cond.i.2)
  %cmp1.i.2 = icmp eq i32 %and.i38.2, %cond.i.2
  br i1 %cmp1.i.2, label %while.body.i.2.if.then15_crit_edge, label %if.end.i.2

while.body.i.2.if.then15_crit_edge:               ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.end.i.2:                                       ; preds = %while.body.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #10
  %dec.i.2 = add nsw i32 %dec8.i.2, -1
  %cmp.not.i.2 = icmp eq i32 %dec8.i.2, 0
  br i1 %cmp.not.i.2, label %while.cond.loopexit.2, label %if.end.i.2.while.body.i.2_crit_edge

if.end.i.2.while.body.i.2_crit_edge:              ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.2

while.cond.loopexit.2:                            ; preds = %if.end.i.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i34, align 4
  %add.i35.3 = add i32 %37, 128
  %and.i36.3 = and i32 %add.i35.3, 1048575
  %add1.i37.3 = or i32 %and.i36.3, -18874368
  %38 = inttoptr i32 %add1.i37.3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %5) #10, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 4294960) #10
  %40 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i.3 = icmp eq i16 %41, 0
  %cond.i.3 = select i1 %tobool.not.i.3, i32 33554432, i32 134217728
  %or.i.3 = or i32 %cond.i.3, 16777216
  br label %while.body.i.3

while.body.i.3:                                   ; preds = %if.end.i.3.while.body.i.3_crit_edge, %while.cond.loopexit.2
  %dec8.i.3 = phi i32 [ 999, %while.cond.loopexit.2 ], [ %dec.i.3, %if.end.i.3.while.body.i.3_crit_edge ]
  %42 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i34, align 4
  %add.i.i.3 = add i32 %43, 128
  %and.i.i.3 = and i32 %add.i.i.3, 1048575
  %add1.i.i.3 = or i32 %and.i.i.3, -18874368
  %44 = inttoptr i32 %add1.i.i.3 to ptr
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %44) #10, !srcloc !135
  %46 = shl i32 %45, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %and.i38.3 = and i32 %46, %or.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i38.3, i32 %cond.i.3)
  %cmp1.i.3 = icmp eq i32 %and.i38.3, %cond.i.3
  br i1 %cmp1.i.3, label %while.body.i.3.if.then15_crit_edge, label %if.end.i.3

while.body.i.3.if.then15_crit_edge:               ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.end.i.3:                                       ; preds = %while.body.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #10
  %dec.i.3 = add nsw i32 %dec8.i.3, -1
  %cmp.not.i.3 = icmp eq i32 %dec8.i.3, 0
  br i1 %cmp.not.i.3, label %while.cond.loopexit.3, label %if.end.i.3.while.body.i.3_crit_edge

if.end.i.3.while.body.i.3_crit_edge:              ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.3

while.cond.loopexit.3:                            ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  %52 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num, align 8
  %conv9 = zext i16 %53 to i32
  %54 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port.i34, align 4
  %add.i = add i32 %55, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %56 = inttoptr i32 %add1.i to ptr
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %56) #10, !srcloc !135
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.16, i32 noundef %conv9, i32 noundef %58) #13
  br label %cleanup

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec8.i = phi i32 [ 999, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %59 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port.i34, align 4
  %add.i.i = add i32 %60, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %61 = inttoptr i32 %add1.i.i to ptr
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %61) #10, !srcloc !135
  %63 = shl i32 %62, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %and.i38 = and i32 %63, %or.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i38, i32 %cond.i)
  %cmp1.i = icmp eq i32 %and.i38, %cond.i
  br i1 %cmp1.i, label %while.body.i.if.then15_crit_edge, label %if.end.i

while.body.i.if.then15_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #10
  %dec.i = add nsw i32 %dec8.i, -1
  %cmp.not.i = icmp eq i32 %dec8.i, 0
  br i1 %cmp.not.i, label %while.cond.loopexit, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.then15:                                        ; preds = %while.body.i.if.then15_crit_edge, %while.body.i.3.if.then15_crit_edge, %while.body.i.2.if.then15_crit_edge, %while.body.i.1.if.then15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 5368700) #10
  %66 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port.i34, align 4
  %add.i40 = add i32 %67, 128
  %and.i41 = and i32 %add.i40, 1048575
  %add1.i42 = or i32 %and.i41, -18874368
  %68 = inttoptr i32 %add1.i42 to ptr
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %68) #10, !srcloc !135
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %conv19 = trunc i32 %70 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %while.cond.loopexit.3
  %retval.0 = phi i16 [ -1, %while.cond.loopexit.3 ], [ %conv19, %if.then15 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_via82xx_codec_wait(ptr nocapture noundef readonly %ac97) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  %conv = zext i16 %3 to i32
  %port.i.i = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1000, %entry ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %5 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %6, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add1.i.i to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %9 = and i32 %8, 1
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %while.body.i.snd_via82xx_codec_ready.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.body.i.snd_via82xx_codec_ready.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_via82xx_codec_ready.exit

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %card.i = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %14 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i.i, align 4
  %add.i2.i = add i32 %15, 128
  %and.i3.i = and i32 %add.i2.i, 1048575
  %add1.i4.i = or i32 %and.i3.i, -18874368
  %16 = inttoptr i32 %add1.i4.i to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #10, !srcloc !135
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %18) #13
  br label %snd_via82xx_codec_ready.exit

snd_via82xx_codec_ready.exit:                     ; preds = %do.end.i, %while.body.i.snd_via82xx_codec_ready.exit_crit_edge
  tail call void @msleep(i32 noundef 500) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_via82xx_mixer_free_ac97_bus(ptr nocapture noundef readonly %bus) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97_bus = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac97_bus, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_via82xx_mixer_free_ac97(ptr nocapture noundef readonly %ac97) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac971 = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ac971 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac971, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback_devno = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %playback_devno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %playback_devno, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %add = add i32 %5, %3
  %arrayidx = getelementptr %struct.via82xx_modem, ptr %1, i32 0, i32 8, i32 %add
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime1.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46
  %8 = call ptr @memcpy(ptr %hw.i, ptr @snd_via82xx_hw, i32 64)
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %7, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_via82xx_modem_pcm_open.hw_constraints_rates) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_via82xx_modem_pcm_open.exit_crit_edge, label %if.end.i

entry.snd_via82xx_modem_pcm_open.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_via82xx_modem_pcm_open.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %7, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.snd_via82xx_modem_pcm_open.exit_crit_edge, label %if.end5.i

if.end.i.snd_via82xx_modem_pcm_open.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_via82xx_modem_pcm_open.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 44
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %private_data.i, align 8
  %substream6.i = getelementptr %struct.via82xx_modem, ptr %1, i32 0, i32 8, i32 %add, i32 3
  %10 = ptrtoint ptr %substream6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %substream6.i, align 4
  br label %snd_via82xx_modem_pcm_open.exit

snd_via82xx_modem_pcm_open.exit:                  ; preds = %if.end5.i, %if.end.i.snd_via82xx_modem_pcm_open.exit_crit_edge, %entry.snd_via82xx_modem_pcm_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ %call.i, %entry.snd_via82xx_modem_pcm_open.exit_crit_edge ], [ %call2.i, %if.end.i.snd_via82xx_modem_pcm_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_via82xx_pcm_close(ptr nocapture noundef readonly %substream) #8 align 64 {
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
  %substream1 = getelementptr inbounds %struct.viadev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %pci = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i15 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i15, align 4
  %area.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %area.i, align 4
  %cmp.i = icmp eq ptr %13, null
  br i1 %cmp.i, label %if.then.i, label %entry.if.end6.i_crit_edge

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %table.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 6
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call.i.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev2.i, i32 noundef 0, i32 noundef 4096, ptr noundef %table.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %idx_table.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %idx_table.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then7.i, label %if.end6.i.if.end14.i_crit_edge

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 2040) #15
  %17 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %idx_table.i, align 4
  %tobool11.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i, label %if.then7.i.cleanup_crit_edge, label %if.then7.i.if.end14.i_crit_edge

if.then7.i.if.end14.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14.i:                                       ; preds = %if.then7.i.if.end14.i_crit_edge, %if.end6.i.if.end14.i_crit_edge
  %18 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %area.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1797.not.i = icmp eq i32 %9, 0
  br i1 %cmp1797.not.i, label %if.end14.i.if.end_crit_edge, label %do.body.preheader.lr.ph.i

if.end14.i.if.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body.preheader.lr.ph.i:                        ; preds = %if.end14.i
  %sub30.i = add i32 %9, -1
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %for.inc.i.do.body.preheader.i_crit_edge, %do.body.preheader.lr.ph.i
  %ofs.0100.i = phi i32 [ 0, %do.body.preheader.lr.ph.i ], [ %add42.i, %for.inc.i.do.body.preheader.i_crit_edge ]
  %idx.099.i = phi i32 [ 0, %do.body.preheader.lr.ph.i ], [ %inc.i, %for.inc.i.do.body.preheader.i_crit_edge ]
  %i.098.i = phi i32 [ 0, %do.body.preheader.lr.ph.i ], [ %inc48.i, %for.inc.i.do.body.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.098.i, i32 %sub30.i)
  %cmp31.i = icmp eq i32 %i.098.i, %sub30.i
  %..i = select i1 %cmp31.i, i32 -2147483648, i32 1073741824
  %umax.i = tail call i32 @llvm.umax.i32(i32 %idx.099.i, i32 255) #10
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond45.i.do.body.i_crit_edge, %do.body.preheader.i
  %idx.1.i = phi i32 [ %inc.i, %do.cond45.i.do.body.i_crit_edge ], [ %idx.099.i, %do.body.preheader.i ]
  %ofs.1.i = phi i32 [ %add42.i, %do.cond45.i.do.body.i_crit_edge ], [ %ofs.0100.i, %do.body.preheader.i ]
  %rest.0.i = phi i32 [ %sub27.i, %do.cond45.i.do.body.i_crit_edge ], [ %11, %do.body.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1.i, i32 %umax.i)
  %exitcond.i = icmp eq i32 %idx.1.i, %umax.i
  br i1 %exitcond.i, label %cleanup.thread.i, label %do.cond45.i

cleanup.thread.i:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.18) #13
  br label %cleanup

do.cond45.i:                                      ; preds = %do.body.i
  %20 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime, align 4
  %dma_buffer_p.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %dma_buffer_p.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_buffer_p.i.i, align 8
  %call.i92.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %23, i32 noundef %ofs.1.i) #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %call.i92.i) #10
  %shl.i = shl nuw nsw i32 %idx.1.i, 1
  %arrayidx.i = getelementptr i32, ptr %19, i32 %shl.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.i, align 4
  %rem.i = and i32 %ofs.1.i, 4095
  %sub.i = sub nuw nsw i32 4096, %rem.i
  %26 = tail call i32 @llvm.umin.i32(i32 %rest.0.i, i32 %sub.i) #10
  %sub27.i = sub i32 %rest.0.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub27.i)
  %tobool28.not.i = icmp eq i32 %sub27.i, 0
  %flag.0.i = select i1 %tobool28.not.i, i32 %..i, i32 0
  %or.i = or i32 %flag.0.i, %26
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %add.i = or i32 %shl.i, 1
  %arrayidx37.i = getelementptr i32, ptr %19, i32 %add.i
  %28 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx37.i, align 4
  %29 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %idx_table.i, align 4
  %arrayidx39.i = getelementptr %struct.snd_via_sg_table, ptr %30, i32 %idx.1.i
  %31 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %ofs.1.i, ptr %arrayidx39.i, align 4
  %32 = load ptr, ptr %idx_table.i, align 4
  %size.i = getelementptr %struct.snd_via_sg_table, ptr %32, i32 %idx.1.i, i32 1
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %size.i, align 4
  %add42.i = add i32 %26, %ofs.1.i
  %inc.i = add i32 %idx.1.i, 1
  br i1 %tobool28.not.i, label %for.inc.i, label %do.cond45.i.do.body.i_crit_edge

do.cond45.i.do.body.i_crit_edge:                  ; preds = %do.cond45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.inc.i:                                        ; preds = %do.cond45.i
  %inc48.i = add nuw i32 %i.098.i, 1
  %exitcond101.not.i = icmp eq i32 %inc48.i, %9
  br i1 %exitcond101.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.do.body.preheader.i_crit_edge

for.inc.i.do.body.preheader.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.end14.i.if.end_crit_edge
  %idx.0.lcssa.i = phi i32 [ 0, %if.end14.i.if.end_crit_edge ], [ %inc.i, %for.inc.i.if.end_crit_edge ]
  %tbl_entries.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 5
  %34 = ptrtoint ptr %tbl_entries.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %idx.0.lcssa.i, ptr %tbl_entries.i, align 4
  %mul.i = mul i32 %11, %9
  %bufsize.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 9
  %35 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul.i, ptr %bufsize.i, align 4
  %div91.i = lshr i32 %mul.i, 1
  %bufsize2.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 10
  %36 = ptrtoint ptr %bufsize2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div91.i, ptr %bufsize2.i, align 4
  %ac97 = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 11
  %37 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ac97, align 4
  %arrayidx.i.i16 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i16, align 4
  %conv = trunc i32 %40 to i16
  tail call void @snd_ac97_write(ptr noundef %38, i16 noundef zeroext 64, i16 noundef zeroext %conv) #10
  %41 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_write(ptr noundef %42, i16 noundef zeroext 70, i16 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup.thread.i, %if.then7.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %cleanup.thread.i ], [ -12, %if.then7.i.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  %area.i = getelementptr inbounds %struct.viadev, ptr %3, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.clean_via_table.exit_crit_edge, label %if.then.i

entry.clean_via_table.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_via_table.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %table.i = getelementptr inbounds %struct.viadev, ptr %3, i32 0, i32 6
  tail call void @snd_dma_free_pages(ptr noundef %table.i) #10
  %6 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %area.i, align 4
  br label %clean_via_table.exit

clean_via_table.exit:                             ; preds = %if.then.i, %entry.clean_via_table.exit_crit_edge
  %idx_table.i = getelementptr inbounds %struct.viadev, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idx_table.i, align 4
  tail call void @kfree(ptr noundef %8) #10
  %9 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %idx_table.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %port.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %add.i = add i32 %7, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 73) #10, !srcloc !129
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %10, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %11 = inttoptr i32 %add5.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 10737400) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %15, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %16 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %18, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %19 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 3) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %21, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %22 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #10, !srcloc !129
  %lastpos.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %23 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %lastpos.i, align 4
  %ac97_secondary.i = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %ac97_secondary.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ac97_secondary.i, align 4
  %port.i.i.i = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %timeout.0.i.i = phi i32 [ 1000, %entry ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %cmp.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #10
  %27 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i.i.i, align 4
  %add.i.i.i = add i32 %28, 128
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %29 = inttoptr i32 %add1.i.i.i to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %29) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %31 = and i32 %30, 1
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.snd_via82xx_codec_ready.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.body.i.i.snd_via82xx_codec_ready.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_via82xx_codec_ready.exit.i

do.end.i.i:                                       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %card.i.i = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i, align 8
  %36 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i.i.i, align 4
  %add.i2.i.i = add i32 %37, 128
  %and.i3.i.i = and i32 %add.i2.i.i, 1048575
  %add1.i4.i.i = or i32 %and.i3.i.i, -18874368
  %38 = inttoptr i32 %add1.i4.i.i to ptr
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %38) #10, !srcloc !135
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.14, i32 noundef %25, i32 noundef %40) #13
  br label %snd_via82xx_codec_ready.exit.i

snd_via82xx_codec_ready.exit.i:                   ; preds = %do.end.i.i, %while.body.i.i.snd_via82xx_codec_ready.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  tail call void @arm_heavy_mb() #10
  %addr.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  %44 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port.i, align 4
  %add.i8 = add i32 %45, 4
  %and.i9 = and i32 %add.i8, 1048575
  %add1.i10 = or i32 %and.i9, -18874368
  %46 = inttoptr i32 %add1.i10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %43) #10, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 4294960) #10
  %48 = ptrtoint ptr %ac97_secondary.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ac97_secondary.i, align 4
  br label %while.cond.i12.i

while.cond.i12.i:                                 ; preds = %while.body.i18.i.while.cond.i12.i_crit_edge, %snd_via82xx_codec_ready.exit.i
  %timeout.0.i10.i = phi i32 [ 1000, %snd_via82xx_codec_ready.exit.i ], [ %dec.i13.i, %while.body.i18.i.while.cond.i12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i10.i)
  %cmp.not.i11.i = icmp eq i32 %timeout.0.i10.i, 0
  br i1 %cmp.not.i11.i, label %do.end.i24.i, label %while.body.i18.i

while.body.i18.i:                                 ; preds = %while.cond.i12.i
  %dec.i13.i = add nsw i32 %timeout.0.i10.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #10
  %51 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port.i.i.i, align 4
  %add.i.i14.i = add i32 %52, 128
  %and.i.i15.i = and i32 %add.i.i14.i, 1048575
  %add1.i.i16.i = or i32 %and.i.i15.i, -18874368
  %53 = inttoptr i32 %add1.i.i16.i to ptr
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %53) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %55 = and i32 %54, 1
  %tobool.not.i17.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i17.i, label %while.body.i18.i.snd_via82xx_set_table_ptr.exit_crit_edge, label %while.body.i18.i.while.cond.i12.i_crit_edge

while.body.i18.i.while.cond.i12.i_crit_edge:      ; preds = %while.body.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i12.i

while.body.i18.i.snd_via82xx_set_table_ptr.exit_crit_edge: ; preds = %while.body.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_via82xx_set_table_ptr.exit

do.end.i24.i:                                     ; preds = %while.cond.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  %card.i19.i = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %card.i19.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card.i19.i, align 4
  %dev.i20.i = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %dev.i20.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i20.i, align 8
  %60 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port.i.i.i, align 4
  %add.i2.i21.i = add i32 %61, 128
  %and.i3.i22.i = and i32 %add.i2.i21.i, 1048575
  %add1.i4.i23.i = or i32 %and.i3.i22.i, -18874368
  %62 = inttoptr i32 %add1.i4.i23.i to ptr
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %62) #10, !srcloc !135
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.14, i32 noundef %49, i32 noundef %64) #13
  br label %snd_via82xx_set_table_ptr.exit

snd_via82xx_set_table_ptr.exit:                   ; preds = %do.end.i24.i, %while.body.i18.i.snd_via82xx_set_table_ptr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port.i, align 4
  %add = add i32 %66, 2
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %67 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 -125) #10, !srcloc !129
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cmd)
  %4 = icmp ult i32 %cmd, 6
  br i1 %4, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %cmd to i8
  %switch.shifted = lshr i8 59, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.snd_via82xx_pcm_trigger, i32 0, i32 %cmd
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep25 = getelementptr inbounds [6 x i8], ptr @switch.table.snd_via82xx_pcm_trigger.27, i32 0, i32 %cmd
  %7 = ptrtoint ptr %switch.gep25 to i32
  call void @__asan_load1_noabort(i32 %7)
  %switch.load26 = load i8, ptr %switch.gep25, align 1
  %running = getelementptr inbounds %struct.viadev, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %switch.load, ptr %running, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.viadev, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add = add i32 %10, 1
  %and = and i32 %add, 1048575
  %add12 = or i32 %and, -18874368
  %11 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %switch.load26) #10, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 0
  br i1 %cmp, label %if.then, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add.i = add i32 %13, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 73) #10, !srcloc !129
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add3.i = add i32 %16, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %17 = inttoptr i32 %add5.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 10737400) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add11.i = add i32 %21, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %22 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %and19.i = and i32 %24, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %25 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 3) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add25.i = add i32 %27, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %28 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #10, !srcloc !129
  %lastpos.i = getelementptr inbounds %struct.viadev, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %lastpos.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via686_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %tbl_entries = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %tbl_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tbl_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !147

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 614, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %entry
  %port = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %and = and i32 %9, 1048575
  %add25 = or i32 %and, -18874368
  %10 = inttoptr i32 %add25 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool29.not = icmp sgt i8 %11, -1
  br i1 %tobool29.not, label %if.end24.cleanup_crit_edge, label %if.end31

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %reg_lock = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add34 = add i32 %13, 12
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %14 = inttoptr i32 %add36 to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #10, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %16 = and i32 %15, -256
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add43 = add i32 %19, 4
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %20 = inttoptr i32 %add45 to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #10, !srcloc !135
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !150
  %addr = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not = icmp ugt i32 %22, %24
  br i1 %cmp.not, label %if.else, label %if.end31.if.end55_crit_edge

if.end31.if.end55_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %22, %24
  %div79 = lshr i32 %sub, 3
  %sub53 = add nsw i32 %div79, -1
  %25 = ptrtoint ptr %tbl_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tbl_entries, align 4
  %rem = urem i32 %sub53, %26
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.end31.if.end55_crit_edge
  %idx.0 = phi i32 [ %rem, %if.else ], [ 0, %if.end31.if.end55_crit_edge ]
  %idx_table.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 7
  %27 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %idx_table.i, align 4
  %arrayidx.i = getelementptr %struct.snd_via_sg_table, ptr %28, i32 %idx.0
  %size1.i = getelementptr %struct.snd_via_sg_table, ptr %28, i32 %idx.0, i32 1
  %29 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size1.i, align 4
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %32, %30
  %sub.i = sub i32 %add.i, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %17)
  %cmp.i = icmp ult i32 %30, %17
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %card.i = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.20, i32 noundef %30, i32 noundef %17) #13
  %lastpos.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  br label %if.end68.sink.split.i

if.else.i:                                        ; preds = %if.end55
  %lastpos4.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %37 = ptrtoint ptr %lastpos4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lastpos4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %38)
  %cmp5.i = icmp ult i32 %sub.i, %38
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.else.i.calc_linear_pos.exit_crit_edge

if.else.i.calc_linear_pos.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_linear_pos.exit

land.lhs.true.i:                                  ; preds = %if.else.i
  %bufsize2.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 10
  %39 = ptrtoint ptr %bufsize2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bufsize2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %40)
  %cmp6.not.i = icmp uge i32 %sub.i, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp9.i = icmp ult i32 %38, %40
  %or.cond.i = select i1 %cmp6.not.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %if.then10.i, label %land.lhs.true.i.calc_linear_pos.exit_crit_edge

land.lhs.true.i.calc_linear_pos.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_linear_pos.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %spec.select120.i = select i1 %tobool.not.i, i32 %32, i32 %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select120.i, i32 %38)
  %cmp37.i = icmp ult i32 %spec.select120.i, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select120.i, i32 %40)
  %cmp40.not.i = icmp uge i32 %spec.select120.i, %40
  %or.cond118.i = select i1 %cmp40.not.i, i1 true, i1 %cmp9.i
  %or.cond121.i = select i1 %cmp37.i, i1 %or.cond118.i, i1 false
  br i1 %or.cond121.i, label %do.body46.i, label %if.then10.i.calc_linear_pos.exit_crit_edge

if.then10.i.calc_linear_pos.exit_crit_edge:       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %calc_linear_pos.exit

do.body46.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_linear_pos.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_via686_pcm_pointer, %if.then58.i)) #10
          to label %if.end68.sink.split.i [label %if.then58.i], !srcloc !151

if.then58.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  %card59.i = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %card59.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card59.i, align 4
  %dev60.i = getelementptr inbounds %struct.snd_card, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %dev60.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev60.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_linear_pos.__UNIQUE_ID_ddebug254, ptr noundef %44, ptr noundef nonnull @.str.23) #10
  br label %if.end68.sink.split.i

if.end68.sink.split.i:                            ; preds = %if.then58.i, %do.body46.i, %do.end.i
  %lastpos4.sink.i = phi ptr [ %lastpos.i, %do.end.i ], [ %lastpos4.i, %do.body46.i ], [ %lastpos4.i, %if.then58.i ]
  %45 = ptrtoint ptr %lastpos4.sink.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lastpos4.sink.i, align 4
  br label %calc_linear_pos.exit

calc_linear_pos.exit:                             ; preds = %if.end68.sink.split.i, %if.then10.i.calc_linear_pos.exit_crit_edge, %land.lhs.true.i.calc_linear_pos.exit_crit_edge, %if.else.i.calc_linear_pos.exit_crit_edge
  %res.1.i = phi i32 [ %spec.select120.i, %if.then10.i.calc_linear_pos.exit_crit_edge ], [ %sub.i, %if.else.i.calc_linear_pos.exit_crit_edge ], [ %sub.i, %land.lhs.true.i.calc_linear_pos.exit_crit_edge ], [ %46, %if.end68.sink.split.i ]
  %lastpos69.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %47 = ptrtoint ptr %lastpos69.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %res.1.i, ptr %lastpos69.i, align 4
  %bufsize.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 9
  %48 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bufsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %res.1.i, i32 %49)
  %cmp70.not.i = icmp ult i32 %res.1.i, %49
  %sub73.i = select i1 %cmp70.not.i, i32 0, i32 %49
  %spec.select.i = sub i32 %res.1.i, %sub73.i
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  %50 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %spec.select.i, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %51, i32 0, i32 21
  %52 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %53
  br label %cleanup

cleanup:                                          ; preds = %calc_linear_pos.exit, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %div.i, %calc_linear_pos.exit ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_devno = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %capture_devno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capture_devno, align 4
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %add = add i32 %7, %3
  %arrayidx = getelementptr %struct.via82xx_modem, ptr %1, i32 0, i32 8, i32 %add
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw.i, ptr @snd_via82xx_hw, i32 64)
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %9, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_via82xx_modem_pcm_open.hw_constraints_rates) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_via82xx_modem_pcm_open.exit_crit_edge, label %if.end.i

entry.snd_via82xx_modem_pcm_open.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_via82xx_modem_pcm_open.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %9, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.snd_via82xx_modem_pcm_open.exit_crit_edge, label %if.end5.i

if.end.i.snd_via82xx_modem_pcm_open.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_via82xx_modem_pcm_open.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 44
  %11 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %private_data.i, align 8
  %substream6.i = getelementptr %struct.via82xx_modem, ptr %1, i32 0, i32 8, i32 %add, i32 3
  %12 = ptrtoint ptr %substream6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %substream, ptr %substream6.i, align 4
  br label %snd_via82xx_modem_pcm_open.exit

snd_via82xx_modem_pcm_open.exit:                  ; preds = %if.end5.i, %if.end.i.snd_via82xx_modem_pcm_open.exit_crit_edge, %entry.snd_via82xx_modem_pcm_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ %call.i, %entry.snd_via82xx_modem_pcm_open.exit_crit_edge ], [ %call2.i, %if.end.i.snd_via82xx_modem_pcm_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_via82xx_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %card = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.25, ptr noundef %longname) #10
  %port = getelementptr inbounds %struct.via82xx_modem, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %add6, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add = add i32 %9, %i.012
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %10 = inttoptr i32 %add4 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #10, !srcloc !135
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.26, i32 noundef %i.012, i32 noundef %12) #10
  %add6 = add nuw nsw i32 %i.012, 4
  %cmp = icmp ult i32 %i.012, 156
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %num_devs = getelementptr inbounds %struct.via82xx_modem, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7.not = icmp eq i32 %6, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %port.i = getelementptr %struct.via82xx_modem, ptr %3, i32 0, i32 8, i32 %i.08, i32 1
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add.i = add i32 %8, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 73) #10, !srcloc !129
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %11, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %12 = inttoptr i32 %add5.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 10737400) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %16, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %17 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %19, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %20 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 3) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %22, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %23 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 0) #10, !srcloc !129
  %lastpos.i = getelementptr %struct.via82xx_modem, ptr %3, i32 0, i32 8, i32 %i.08, i32 8
  %24 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lastpos.i, align 4
  %inc = add nuw i32 %i.08, 1
  %25 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_devs, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ac97 = getelementptr inbounds %struct.via82xx_modem, ptr %3, i32 0, i32 11
  %27 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %28) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  tail call fastcc void @snd_via82xx_chip_init(ptr noundef %3)
  %ac97 = getelementptr inbounds %struct.via82xx_modem, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %5) #10
  %num_devs = getelementptr inbounds %struct.via82xx_modem, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.not = icmp eq i32 %7, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %port.i = getelementptr %struct.via82xx_modem, ptr %3, i32 0, i32 8, i32 %i.010, i32 1
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add.i = add i32 %9, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 73) #10, !srcloc !129
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %12, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %13 = inttoptr i32 %add5.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #10, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 10737400) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %17, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %18 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %20, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %21 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 3) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %23, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %24 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #10, !srcloc !129
  %lastpos.i = getelementptr %struct.via82xx_modem, ptr %3, i32 0, i32 8, i32 %i.010, i32 8
  %25 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %lastpos.i, align 4
  %inc = add nuw i32 %i.010, 1
  %26 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_devs, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %28 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !57, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !107, !108, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/via82xx_modem.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/via82xx_modem.c", i32 39, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/via82xx_modem.c", i32 40, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/via82xx_modem.c", i32 46, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/via82xx_modem.c", i32 47, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/via82xx_modem.c", i32 48, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/via82xx_modem.c", i32 49, i32 1}
!17 = !{ptr @__param_ac97_clock, !18, !"__param_ac97_clock", i1 false, i1 false}
!18 = !{!"../sound/pci/via82xx_modem.c", i32 50, i32 1}
!19 = !{ptr @__UNIQUE_ID_ac97_clocktype250, !18, !"__UNIQUE_ID_ac97_clocktype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_ac97_clock251, !21, !"__UNIQUE_ID_ac97_clock251", i1 false, i1 false}
!21 = !{!"../sound/pci/via82xx_modem.c", i32 51, i32 1}
!22 = !{ptr @__param_enable, !23, !"__param_enable", i1 false, i1 false}
!23 = !{!"../sound/pci/via82xx_modem.c", i32 55, i32 1}
!24 = !{ptr @__UNIQUE_ID_enabletype252, !23, !"__UNIQUE_ID_enabletype252", i1 false, i1 false}
!25 = !{ptr @__initcall__kmod_snd_via82xx_modem__255_1169_via82xx_modem_driver_init6, !26, !"__initcall__kmod_snd_via82xx_modem__255_1169_via82xx_modem_driver_init6", i1 false, i1 false}
!26 = !{!"../sound/pci/via82xx_modem.c", i32 1169, i32 1}
!27 = !{ptr @__exitcall_via82xx_modem_driver_exit, !26, !"__exitcall_via82xx_modem_driver_exit", i1 false, i1 false}
!28 = !{ptr @enable, !29, !"enable", i1 false, i1 false}
!29 = !{!"../sound/pci/via82xx_modem.c", i32 54, i32 13}
!30 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!31 = !{ptr @index, !32, !"index", i1 false, i1 false}
!32 = !{!"../sound/pci/via82xx_modem.c", i32 42, i32 12}
!33 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!34 = !{ptr @id, !35, !"id", i1 false, i1 false}
!35 = !{!"../sound/pci/via82xx_modem.c", i32 43, i32 14}
!36 = !{ptr @__param_str_ac97_clock, !18, !"__param_str_ac97_clock", i1 false, i1 false}
!37 = !{ptr @ac97_clock, !38, !"ac97_clock", i1 false, i1 false}
!38 = !{!"../sound/pci/via82xx_modem.c", i32 44, i32 12}
!39 = !{ptr @__param_str_enable, !23, !"__param_str_enable", i1 false, i1 false}
!40 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @via82xx_modem_driver, !42, !"via82xx_modem_driver", i1 false, i1 false}
!42 = !{!"../sound/pci/via82xx_modem.c", i32 1160, i32 26}
!43 = !{ptr @snd_via82xx_modem_ids, !44, !"snd_via82xx_modem_ids", i1 false, i1 false}
!44 = !{!"../sound/pci/via82xx_modem.c", i32 248, i32 35}
!45 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/via82xx_modem.c", i32 1124, i32 24}
!47 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/via82xx_modem.c", i32 1125, i32 28}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/via82xx_modem.c", i32 1128, i32 3}
!51 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @snd_via82xx_probe._entry, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @snd_via82xx_probe._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/via82xx_modem.c", i32 1148, i32 26}
!59 = !{ptr @snd_via82xx_create.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../sound/pci/via82xx_modem.c", i32 1074, i32 2}
!61 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.10, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/via82xx_modem.c", i32 1085, i32 3}
!64 = !{ptr @.str.11, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @snd_via82xx_create._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @snd_via82xx_create._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.12, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/via82xx_modem.c", i32 981, i32 3}
!69 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @snd_via82xx_chip_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @snd_via82xx_chip_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @snd_via82xx_mixer_new.ops, !73, !"ops", i1 false, i1 false}
!73 = !{!"../sound/pci/via82xx_modem.c", i32 878, i32 39}
!74 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/via82xx_modem.c", i32 376, i32 2}
!76 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @snd_via82xx_codec_ready._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @snd_via82xx_codec_ready._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/via82xx_modem.c", i32 437, i32 4}
!81 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @snd_via82xx_codec_read._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @snd_via82xx_codec_read._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @snd_via686_playback_ops, !85, !"snd_via686_playback_ops", i1 false, i1 false}
!85 = !{!"../sound/pci/via82xx_modem.c", i32 795, i32 33}
!86 = !{ptr @snd_via82xx_modem_pcm_open.rates, !87, !"rates", i1 false, i1 false}
!87 = !{!"../sound/pci/via82xx_modem.c", i32 733, i32 28}
!88 = !{ptr @snd_via82xx_modem_pcm_open.hw_constraints_rates, !89, !"hw_constraints_rates", i1 false, i1 false}
!89 = !{!"../sound/pci/via82xx_modem.c", i32 734, i32 49}
!90 = !{ptr @snd_via82xx_hw, !91, !"snd_via82xx_hw", i1 false, i1 false}
!91 = !{!"../sound/pci/via82xx_modem.c", i32 703, i32 38}
!92 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/via82xx_modem.c", i32 304, i32 5}
!94 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @build_via_table._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @build_via_table._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.20, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/via82xx_modem.c", i32 567, i32 3}
!99 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @calc_linear_pos._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @calc_linear_pos._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/via82xx_modem.c", i32 580, i32 4}
!104 = distinct !{null, !103, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!105 = !{ptr @.str.23, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/via82xx_modem.c", i32 593, i32 5}
!107 = !{ptr @calc_linear_pos.__UNIQUE_ID_ddebug254, !106, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!108 = !{ptr @snd_via686_capture_ops, !109, !"snd_via686_capture_ops", i1 false, i1 false}
!109 = !{!"../sound/pci/via82xx_modem.c", i32 806, i32 33}
!110 = !{ptr @.str.24, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/via82xx_modem.c", i32 921, i32 35}
!112 = !{ptr @.str.25, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/via82xx_modem.c", i32 913, i32 2}
!114 = !{ptr @.str.26, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/via82xx_modem.c", i32 915, i32 3}
!116 = !{ptr @snd_via82xx_pm, !117, !"snd_via82xx_pm", i1 false, i1 false}
!117 = !{!"../sound/pci/via82xx_modem.c", i32 1045, i32 8}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
!128 = !{i64 2154774324}
!129 = !{i64 715786}
!130 = !{i64 716181}
!131 = !{i64 2154774853}
!132 = !{i64 2154775704}
!133 = !{i64 2154776146}
!134 = !{i64 2154776584}
!135 = !{i64 716401}
!136 = !{i64 2154777493}
!137 = !{i64 2154777885}
!138 = !{i64 2154778211}
!139 = !{i64 2154766739}
!140 = !{i64 2154767225}
!141 = !{i64 715983}
!142 = !{i64 2154798606}
!143 = !{i64 2154770779}
!144 = !{i64 2154789303}
!145 = !{i64 2154790485}
!146 = !{i64 2154778720}
!147 = !{!"branch_weights", i32 1, i32 2000}
!148 = !{i64 2154787246}
!149 = !{i64 2154788052}
!150 = !{i64 2154788849}
!151 = !{i64 2148183140, i64 2148183145, i64 2148183158, i64 2148183202, i64 2148183236, i64 2148183257}
!152 = !{i64 2154792298}
