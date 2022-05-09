; ModuleID = '/llk/IR_all_yes/sound/pci/atiixp_modem.c_pt.bc'
source_filename = "../sound/pci/atiixp_modem.c"
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
%struct.atiixp_dma_ops = type { i32, i32, i32, ptr, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
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
%struct.atiixp_modem = type { ptr, ptr, ptr, i32, ptr, i32, ptr, [3 x ptr], %struct.spinlock, [2 x %struct.atiixp_dma], [2 x ptr], [1 x ptr], i32, i32, i32, %struct.mutex }
%struct.atiixp_dma = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.74, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.74 = type { i32, [28 x i8] }
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

@__UNIQUE_ID_author242 = internal constant [53 x i8] c"snd_atiixp_modem.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [53 x i8] c"snd_atiixp_modem.description=ATI IXP MC97 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [49 x i8] c"snd_atiixp_modem.file=sound/pci/snd-atiixp-modem\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [29 x i8] c"snd_atiixp_modem.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [23 x i8] c"snd_atiixp_modem.index\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { i32, [28 x i8] } { i32 -2, [28 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [36 x i8] c"snd_atiixp_modem.parmtype=index:int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [64 x i8] c"snd_atiixp_modem.parm=index:Index value for ATI IXP controller.\00", section ".modinfo", align 1
@__param_str_id = internal constant [20 x i8] c"snd_atiixp_modem.id\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [35 x i8] c"snd_atiixp_modem.parmtype=id:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [59 x i8] c"snd_atiixp_modem.parm=id:ID string for ATI IXP controller.\00", section ".modinfo", align 1
@__param_str_ac97_clock = internal constant [28 x i8] c"snd_atiixp_modem.ac97_clock\00", align 1
@ac97_clock = internal global { i32, [28 x i8] } { i32 48000, [28 x i8] zeroinitializer }, align 32
@__param_ac97_clock = internal constant %struct.kernel_param { ptr @__param_str_ac97_clock, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_clock } }, section "__param", align 4
@__UNIQUE_ID_ac97_clocktype250 = internal constant [41 x i8] c"snd_atiixp_modem.parmtype=ac97_clock:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_clock251 = internal constant [70 x i8] c"snd_atiixp_modem.parm=ac97_clock:AC'97 codec clock (default 48000Hz).\00", section ".modinfo", align 1
@__param_str_enable = internal constant [24 x i8] c"snd_atiixp_modem.enable\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype252 = internal constant [38 x i8] c"snd_atiixp_modem.parmtype=enable:bool\00", section ".modinfo", align 1
@__initcall__kmod_snd_atiixp_modem__256_1259_atiixp_modem_driver_init6 = internal global ptr @atiixp_modem_driver_init, section ".initcall6.init", align 4
@atiixp_modem_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_atiixp_ids, ptr @snd_atiixp_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_atiixp_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_atiixp_modem_driver_exit = internal global ptr @atiixp_modem_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_atiixp_modem\00", [47 x i8] zeroinitializer }, align 32
@snd_atiixp_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4098, i32 17229, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17272, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_atiixp_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_atiixp_suspend, ptr @snd_atiixp_resume, ptr @snd_atiixp_suspend, ptr @snd_atiixp_resume, ptr @snd_atiixp_suspend, ptr @snd_atiixp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATIIXP-MODEM\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ATI IXP Modem\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s rev %x at 0x%lx, irq %i\00", [37 x i8] zeroinitializer }, align 32
@snd_atiixp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_atiixp_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->open_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATI IXP MC97\00", [19 x i8] zeroinitializer }, align 32
@snd_atiixp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1192, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_atiixp_init\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/pci/atiixp_modem.c\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_atiixp_init._entry_ptr = internal global ptr @snd_atiixp_init._entry, section ".printk_index", align 4
@snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.10, ptr @.str.14, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_atiixp_xrun_dma\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"XRUN detected (DMA %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_atiixp_aclink_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.10, i32 487, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"codec reset timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_atiixp_aclink_reset\00", [40 x i8] zeroinitializer }, align 32
@snd_atiixp_aclink_reset._entry_ptr = internal global ptr @snd_atiixp_aclink_reset._entry, section ".printk_index", align 4
@snd_atiixp_mixer_new.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_atiixp_ac97_write, ptr @snd_atiixp_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_atiixp_mixer_new.codec_skip = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1024, i32 2048, i32 4096], [20 x i8] zeroinitializer }, align 32
@snd_atiixp_mixer_new.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.18, i8 1, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_atiixp_mixer_new\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"codec %d not available for modem\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_atiixp_mixer_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.10, i32 1087, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no codec available\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_atiixp_mixer_new._entry_ptr = internal global ptr @snd_atiixp_mixer_new._entry, section ".printk_index", align 4
@snd_atiixp_acquire_codec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.10, i32 388, ptr @.str.22, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"codec acquire timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_atiixp_acquire_codec\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_atiixp_acquire_codec._entry_ptr = internal global ptr @snd_atiixp_acquire_codec._entry, section ".printk_index", align 4
@snd_atiixp_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.10, i32 421, ptr @.str.22, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"codec read timeout (reg %x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_atiixp_codec_read\00", [42 x i8] zeroinitializer }, align 32
@snd_atiixp_codec_read._entry_ptr = internal global ptr @snd_atiixp_codec_read._entry, section ".printk_index", align 4
@snd_atiixp_codec_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.10, i32 541, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no codec detected!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_atiixp_codec_detect\00", [40 x i8] zeroinitializer }, align 32
@snd_atiixp_codec_detect._entry_ptr = internal global ptr @snd_atiixp_codec_detect._entry, section ".printk_index", align 4
@snd_atiixp_playback_dma_ops = internal constant { %struct.atiixp_dma_ops, [40 x i8] } { %struct.atiixp_dma_ops { i32 0, i32 56, i32 76, ptr @atiixp_out_enable_dma, ptr @atiixp_out_enable_transfer, ptr @atiixp_out_flush_dma }, [40 x i8] zeroinitializer }, align 32
@snd_atiixp_capture_dma_ops = internal constant { %struct.atiixp_dma_ops, [40 x i8] } { %struct.atiixp_dma_ops { i32 1, i32 32, i32 44, ptr @atiixp_in_enable_dma, ptr @atiixp_in_enable_transfer, ptr @atiixp_in_flush_dma }, [40 x i8] zeroinitializer }, align 32
@snd_atiixp_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_atiixp_playback_open, ptr @snd_atiixp_playback_close, ptr null, ptr @snd_atiixp_pcm_hw_params, ptr @snd_atiixp_pcm_hw_free, ptr @snd_atiixp_playback_prepare, ptr @snd_atiixp_pcm_trigger, ptr null, ptr @snd_atiixp_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_atiixp_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_atiixp_capture_open, ptr @snd_atiixp_capture_close, ptr null, ptr @snd_atiixp_pcm_hw_params, ptr @snd_atiixp_pcm_hw_free, ptr @snd_atiixp_capture_prepare, ptr @snd_atiixp_pcm_trigger, ptr null, ptr @snd_atiixp_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_atiixp_pcm_open.rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8000, i32 9600, i32 12000, i32 16000], [16 x i8] zeroinitializer }, align 32
@snd_atiixp_pcm_open.hw_constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @snd_atiixp_pcm_open.rates, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@snd_atiixp_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 -2147483638, i32 8000, i32 16000, i32 2, i32 2, i32 262144, i32 32, i32 131072, i32 2, i32 256, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_atiixp_pcm_pointer.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.10, ptr @.str.28, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_atiixp_pcm_pointer\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid DMA pointer read 0x%x (buf=%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atiixp-modem\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x: %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 27, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 28, i32 14 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"ac97_clock\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 29, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 39, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"atiixp_modem_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1250, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1259, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"snd_atiixp_ids\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 249, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"snd_atiixp_pm\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1131, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1217, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1218, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1239, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1179, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1180, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1184, i32 40 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1192, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 625, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 487, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1048, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"codec_skip\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1052, i32 28 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1079, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1087, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 388, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 421, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 541, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [28 x i8] c"snd_atiixp_playback_dma_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 952, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant [27 x i8] c"snd_atiixp_capture_dma_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 961, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant [24 x i8] c"snd_atiixp_playback_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 931, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"snd_atiixp_capture_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 942, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 844, i32 28 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"hw_constraints_rates\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 845, i32 49 }
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"snd_atiixp_pcm_hw\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 818, i32 38 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 612, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1153, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [28 x i8] c"../sound/pci/atiixp_modem.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1148, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_ac97_clock251, ptr @__UNIQUE_ID_ac97_clocktype250, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enabletype252, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_atiixp_modem_driver_exit, ptr @__initcall__kmod_snd_atiixp_modem__256_1259_atiixp_modem_driver_init6, ptr @__param_ac97_clock, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @atiixp_modem_driver_exit, ptr @snd_atiixp_aclink_reset._entry, ptr @snd_atiixp_aclink_reset._entry_ptr, ptr @snd_atiixp_acquire_codec._entry, ptr @snd_atiixp_acquire_codec._entry_ptr, ptr @snd_atiixp_codec_detect._entry, ptr @snd_atiixp_codec_detect._entry_ptr, ptr @snd_atiixp_codec_read._entry, ptr @snd_atiixp_codec_read._entry_ptr, ptr @snd_atiixp_init._entry, ptr @snd_atiixp_init._entry_ptr, ptr @snd_atiixp_mixer_new._entry, ptr @snd_atiixp_mixer_new._entry_ptr, ptr @index, ptr @id, ptr @ac97_clock, ptr @enable, ptr @atiixp_modem_driver, ptr @.str, ptr @snd_atiixp_ids, ptr @snd_atiixp_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @snd_atiixp_init.__key, ptr @.str.4, ptr @snd_atiixp_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @snd_atiixp_mixer_new.ops, ptr @snd_atiixp_mixer_new.codec_skip, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @snd_atiixp_playback_dma_ops, ptr @snd_atiixp_capture_dma_ops, ptr @snd_atiixp_playback_ops, ptr @snd_atiixp_capture_ops, ptr @snd_atiixp_pcm_open.rates, ptr @snd_atiixp_pcm_open.hw_constraints_rates, ptr @snd_atiixp_pcm_hw, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_clock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atiixp_modem_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_aclink_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_mixer_new.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_mixer_new.codec_skip to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_mixer_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_acquire_codec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_codec_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_playback_dma_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_capture_dma_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_pcm_open.rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_pcm_open.hw_constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_atiixp_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atiixp_modem_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @atiixp_modem_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_modem_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @atiixp_modem_driver) #8
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
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #8
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !137
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %1 = load i32, ptr @index, align 4
  %2 = load ptr, ptr @id, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 344, ptr noundef nonnull %card) #8
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
  %7 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 13)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 14)
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %do.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  %reg_lock.i = getelementptr inbounds %struct.atiixp_modem, ptr %6, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_atiixp_init.__key, i16 noundef signext 3) #8
  %open_mutex.i = getelementptr inbounds %struct.atiixp_modem, ptr %6, i32 0, i32 15
  call void @__mutex_init(ptr noundef %open_mutex.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_atiixp_init.__key.5) #8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %4, ptr %6, align 4
  %pci6.i = getelementptr inbounds %struct.atiixp_modem, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %pci6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pci, ptr %pci6.i, align 4
  %irq.i = getelementptr inbounds %struct.atiixp_modem, ptr %6, i32 0, i32 5
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %irq.i, align 4
  %call7.i = call i32 @pcim_iomap_regions(ptr noundef %pci, i32 noundef 1, ptr noundef nonnull @.str.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.body.i.cleanup_crit_edge, label %if.end10.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i:                                       ; preds = %do.body.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %12 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource.i, align 8
  %addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %addr.i, align 4
  %call11.i = call ptr @pcim_iomap_table(ptr noundef %pci) #8
  %15 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call11.i, align 4
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %6, i32 0, i32 4
  %17 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %remap_addr.i, align 4
  %irq13.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %18 = ptrtoint ptr %irq13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq13.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %19, ptr noundef nonnull @snd_atiixp_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end7, label %do.end18.i

do.end18.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev19.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %20 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev19.i, align 8
  %22 = ptrtoint ptr %irq13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq13.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8, i32 noundef %23) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end10.i
  %24 = ptrtoint ptr %irq13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq13.i, align 4
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 33
  %27 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 10
  %28 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @snd_atiixp_free, ptr %private_free.i, align 4
  call void @pci_set_master(ptr noundef %pci) #8
  call fastcc void @snd_atiixp_aclink_reset(ptr noundef %6)
  %29 = load i32, ptr @ac97_clock, align 4
  %call12 = call fastcc i32 @snd_atiixp_mixer_new(ptr noundef %6, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end7.cleanup_crit_edge, label %if.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #8
  %30 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !137
  %dmas.i = getelementptr inbounds %struct.atiixp_modem, ptr %6, i32 0, i32 9
  %31 = ptrtoint ptr %dmas.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @snd_atiixp_playback_dma_ops, ptr %dmas.i, align 4
  %arrayidx2.i = getelementptr %struct.atiixp_modem, ptr %6, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @snd_atiixp_capture_dma_ops, ptr %arrayidx2.i, align 4
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %6, align 4
  %call.i52 = call i32 @snd_pcm_new(ptr noundef %34, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp.i53 = icmp slt i32 %call.i52, 0
  br i1 %cmp.i53, label %snd_atiixp_pcm_new.exit.thread, label %if.end19

snd_atiixp_pcm_new.exit.thread:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %35 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %36, i32 noundef 0, ptr noundef nonnull @snd_atiixp_playback_ops) #8
  %37 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %38, i32 noundef 1, ptr noundef nonnull @snd_atiixp_capture_ops) #8
  %39 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcm.i, align 4
  %dev_class.i = getelementptr inbounds %struct.snd_pcm, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %dev_class.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 2, ptr %dev_class.i, align 4
  %private_data.i54 = getelementptr inbounds %struct.snd_pcm, ptr %40, i32 0, i32 11
  %42 = ptrtoint ptr %private_data.i54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %6, ptr %private_data.i54, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %40, i32 0, i32 7
  %43 = call ptr @memcpy(ptr %name.i, ptr @.str.7, i32 13)
  %pcmdevs.i = getelementptr inbounds %struct.atiixp_modem, ptr %6, i32 0, i32 11
  %44 = ptrtoint ptr %pcmdevs.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %40, ptr %pcmdevs.i, align 4
  %45 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci6.i, align 4
  %dev.i55 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %call6.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %40, i32 noundef 2, ptr noundef %dev.i55, i32 noundef 65536, i32 noundef 131072) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #8
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %6, align 4
  %call.i.i57 = call i32 @snd_card_rw_proc_new(ptr noundef %48, ptr noundef nonnull @.str.29, ptr noundef %6, ptr noundef nonnull @snd_atiixp_proc_read, ptr noundef null) #8
  %49 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 8
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  %52 = or i32 %51, 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %54, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %52) #8, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %remap_addr.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 -1) #8, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %58, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 117440512) #8, !srcloc !141
  %59 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %60, i32 0, i32 4
  %shortname22 = getelementptr inbounds %struct.snd_card, ptr %60, i32 0, i32 3
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %61 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %revision, align 4
  %conv = zext i8 %62 to i32
  %63 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr.i, align 4
  %65 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq.i, align 4
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname22, i32 noundef %conv, i32 noundef %64, i32 noundef %66)
  %67 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %card, align 4
  %call25 = call i32 @snd_card_register(ptr noundef %68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end19.cleanup_crit_edge, label %if.end29

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end19.cleanup_crit_edge, %snd_atiixp_pcm_new.exit.thread, %if.end7.cleanup_crit_edge, %do.end18.i, %do.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ %call, %entry.cleanup_crit_edge ], [ %call12, %if.end7.cleanup_crit_edge ], [ %call25, %if.end19.cleanup_crit_edge ], [ %call.i52, %snd_atiixp_pcm_new.exit.thread ], [ %call7.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -16, %do.end18.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_atiixp_aclink_reset(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !138
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %and.i = and i32 %3, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.i)
  %cmp.i = icmp eq i32 %3, %and.i
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #8, !srcloc !138
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %or.i = or i32 %9, 536870912
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %or.i)
  %cmp.i4 = icmp eq i32 %9, %or.i
  br i1 %cmp.i4, label %if.end.snd_atiixp_update_bits.exit7_crit_edge, label %do.body.i5

if.end.snd_atiixp_update_bits.exit7_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit7

do.body.i5:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %10) #8, !srcloc !141
  br label %snd_atiixp_update_bits.exit7

snd_atiixp_update_bits.exit7:                     ; preds = %do.body.i5, %if.end.snd_atiixp_update_bits.exit7_crit_edge
  %11 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #8
  %15 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #8, !srcloc !138
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %and.i10 = and i32 %18, -536870913
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %and.i10)
  %cmp.i11 = icmp eq i32 %18, %and.i10
  br i1 %cmp.i11, label %snd_atiixp_update_bits.exit7.while.cond.preheader_crit_edge, label %do.body.i12

snd_atiixp_update_bits.exit7.while.cond.preheader_crit_edge: ; preds = %snd_atiixp_update_bits.exit7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

do.body.i12:                                      ; preds = %snd_atiixp_update_bits.exit7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i10) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %19) #8, !srcloc !141
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.body.i12, %snd_atiixp_update_bits.exit7.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %snd_atiixp_update_bits.exit30.while.cond_crit_edge, %while.cond.preheader
  %timeout.0 = phi i32 [ %dec, %snd_atiixp_update_bits.exit30.while.cond_crit_edge ], [ 10, %while.cond.preheader ]
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr8 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
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
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #8, !srcloc !138
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i18) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %28) #8, !srcloc !141
  br label %snd_atiixp_update_bits.exit22

snd_atiixp_update_bits.exit22:                    ; preds = %do.body.i20, %while.body.snd_atiixp_update_bits.exit22_crit_edge
  %29 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr17 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @msleep(i32 noundef 1) #8
  %32 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #8, !srcloc !138
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %or.i26 = or i32 %35, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %or.i26)
  %cmp.i27 = icmp eq i32 %35, %or.i26
  br i1 %cmp.i27, label %snd_atiixp_update_bits.exit22.snd_atiixp_update_bits.exit30_crit_edge, label %do.body.i28

snd_atiixp_update_bits.exit22.snd_atiixp_update_bits.exit30_crit_edge: ; preds = %snd_atiixp_update_bits.exit22
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit30

do.body.i28:                                      ; preds = %snd_atiixp_update_bits.exit22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i26) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %36) #8, !srcloc !141
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
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.15) #11
  br label %while.end

while.end:                                        ; preds = %do.end, %while.cond.while.end_crit_edge
  %41 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %42, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #8, !srcloc !138
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %or.i34 = or i32 %44, -1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %or.i34)
  %cmp.i35 = icmp eq i32 %44, %or.i34
  br i1 %cmp.i35, label %while.end.snd_atiixp_update_bits.exit38_crit_edge, label %do.body.i36

while.end.snd_atiixp_update_bits.exit38_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit38

do.body.i36:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i34) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %45) #8, !srcloc !141
  br label %snd_atiixp_update_bits.exit38

snd_atiixp_update_bits.exit38:                    ; preds = %do.body.i36, %while.end.snd_atiixp_update_bits.exit38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_atiixp_mixer_new(ptr noundef %chip, i32 noundef %clock) unnamed_addr #2 align 64 {
entry:
  %pbus = alloca ptr, align 4
  %ac97 = alloca %struct.snd_ac97_template, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus) #8
  %0 = ptrtoint ptr %pbus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97) #8
  %1 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 2
  %2 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 3
  %3 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97, i32 0, i32 5
  %codec_not_ready_bits.i = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 13
  %4 = call ptr @memset(ptr %ac97, i32 255, i32 24)
  %5 = ptrtoint ptr %codec_not_ready_bits.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %codec_not_ready_bits.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 3932160) #8, !srcloc !141
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 50, %entry ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i, label %while.cond.i.do.body2.i_crit_edge, label %while.body.i

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  tail call void @msleep(i32 noundef 1) #8
  %8 = ptrtoint ptr %codec_not_ready_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec_not_ready_bits.i, align 4
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.do.body2.i_crit_edge

while.body.i.do.body2.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

do.body2.i:                                       ; preds = %while.body.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !141
  %12 = ptrtoint ptr %codec_not_ready_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %codec_not_ready_bits.i, align 4
  %and.i = and i32 %13, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 7168, i32 %and.i)
  %cmp8.i = icmp eq i32 %and.i, 7168
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  br i1 %cmp8.i, label %snd_atiixp_codec_detect.exit.thread, label %if.end

snd_atiixp_codec_detect.exit.thread:              ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.25) #11
  br label %cleanup

if.end:                                           ; preds = %do.body2.i
  %call1 = call i32 @snd_ac97_bus(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @snd_atiixp_mixer_new.ops, ptr noundef %chip, ptr noundef nonnull %pbus) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %18 = ptrtoint ptr %pbus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pbus, align 4
  %clock5 = getelementptr inbounds %struct.snd_ac97_bus, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %clock5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %clock, ptr %clock5, align 4
  %ac97_bus = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 6
  %21 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %ac97_bus, align 4
  %pci = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 1
  %22 = getelementptr inbounds i8, ptr %ac97, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4
  %i.063 = phi i32 [ 0, %if.end4 ], [ %inc26, %for.inc.for.body_crit_edge ]
  %codec_count.062 = phi i32 [ 0, %if.end4 ], [ %codec_count.1, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %codec_not_ready_bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %codec_not_ready_bits.i, align 4
  %arrayidx = getelementptr [3 x i32], ptr @snd_atiixp_mixer_new.codec_skip, i32 0, i32 %i.063
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %and = and i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %27 = call ptr @memset(ptr %22, i32 0, i32 20)
  %28 = ptrtoint ptr %ac97 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %chip, ptr %ac97, align 4
  %29 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %1, align 4
  %conv = trunc i32 %i.063 to i16
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %2, align 4
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2064, ptr %3, align 4
  %34 = ptrtoint ptr %pbus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pbus, align 4
  %arrayidx11 = getelementptr %struct.atiixp_modem, ptr %chip, i32 0, i32 7, i32 %i.063
  %call12 = call i32 @snd_ac97_mixer(ptr noundef %35, ptr noundef nonnull %ac97, ptr noundef %arrayidx11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end25

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_atiixp_mixer_new.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_atiixp_mixer_new, %if.then22)) #8
          to label %for.inc [label %if.then22], !srcloc !151

if.then22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_atiixp_mixer_new.__UNIQUE_ID_ddebug255, ptr noundef %40, ptr noundef nonnull @.str.18, i32 noundef %i.063) #8
  br label %for.inc

if.end25:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %codec_count.062, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %if.then22, %if.then15, %for.body.for.inc_crit_edge
  %codec_count.1 = phi i32 [ %codec_count.062, %for.body.for.inc_crit_edge ], [ %codec_count.062, %if.then22 ], [ %inc, %if.end25 ], [ %codec_count.062, %if.then15 ]
  %inc26 = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc26, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %codec_count.1)
  %tobool27.not = icmp eq i32 %codec_count.1, 0
  br i1 %tobool27.not, label %do.end31, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip, align 4
  %dev33 = getelementptr inbounds %struct.snd_card, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev33, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.19) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %snd_atiixp_codec_detect.exit.thread
  %retval.0 = phi i32 [ -19, %do.end31 ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -6, %snd_atiixp_codec_detect.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus) #8
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
  %remap_addr = getelementptr inbounds %struct.atiixp_modem, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !138
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
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
  %dmas = getelementptr inbounds %struct.atiixp_modem, ptr %dev_id, i32 0, i32 9
  %substream.i = getelementptr inbounds %struct.atiixp_modem, ptr %dev_id, i32 0, i32 9, i32 0, i32 2
  %4 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then3.if.end10_crit_edge, label %lor.lhs.false.i

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

lor.lhs.false.i:                                  ; preds = %if.then3
  %running.i = getelementptr inbounds %struct.atiixp_modem, ptr %dev_id, i32 0, i32 9, i32 0, i32 8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_atiixp_interrupt, %if.then5.i)) #8
          to label %do.end.i [label %if.then5.i], !srcloc !151

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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug254, ptr noundef %11, ptr noundef nonnull @.str.14, i32 noundef %15) #8
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
  %substream.i55 = getelementptr inbounds %struct.atiixp_modem, ptr %dev_id, i32 0, i32 9, i32 0, i32 2
  %18 = ptrtoint ptr %substream.i55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream.i55, align 4
  %tobool.not.i56 = icmp eq ptr %19, null
  br i1 %tobool.not.i56, label %if.then6.if.end10_crit_edge, label %lor.lhs.false.i59

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

lor.lhs.false.i59:                                ; preds = %if.then6
  %running.i57 = getelementptr inbounds %struct.atiixp_modem, ptr %dev_id, i32 0, i32 9, i32 0, i32 8
  %20 = ptrtoint ptr %running.i57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %running.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i58 = icmp eq i32 %21, 0
  br i1 %tobool1.not.i58, label %lor.lhs.false.i59.if.end10_crit_edge, label %if.end.i

lor.lhs.false.i59.if.end10_crit_edge:             ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i:                                         ; preds = %lor.lhs.false.i59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %19) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end.i, %lor.lhs.false.i59.if.end10_crit_edge, %if.then6.if.end10_crit_edge, %if.else.if.end10_crit_edge, %do.end.i, %lor.lhs.false.i.if.end10_crit_edge, %if.then3.if.end10_crit_edge
  %and11 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %if.end10
  %arrayidx15 = getelementptr %struct.atiixp_modem, ptr %dev_id, i32 0, i32 9, i32 1
  %substream.i60 = getelementptr %struct.atiixp_modem, ptr %dev_id, i32 0, i32 9, i32 1, i32 2
  %22 = ptrtoint ptr %substream.i60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %substream.i60, align 4
  %tobool.not.i61 = icmp eq ptr %23, null
  br i1 %tobool.not.i61, label %if.then13.if.end23_crit_edge, label %lor.lhs.false.i64

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

lor.lhs.false.i64:                                ; preds = %if.then13
  %running.i62 = getelementptr %struct.atiixp_modem, ptr %dev_id, i32 0, i32 9, i32 1, i32 8
  %24 = ptrtoint ptr %running.i62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %running.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i63 = icmp eq i32 %25, 0
  br i1 %tobool1.not.i63, label %lor.lhs.false.i64.if.end23_crit_edge, label %do.body.i65

lor.lhs.false.i64.if.end23_crit_edge:             ; preds = %lor.lhs.false.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.body.i65:                                      ; preds = %lor.lhs.false.i64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_atiixp_interrupt, %if.then5.i67)) #8
          to label %do.end.i69 [label %if.then5.i67], !srcloc !151

if.then5.i67:                                     ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id, align 4
  %dev.i66 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev.i66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i66, align 8
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx15, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug254, ptr noundef %29, ptr noundef nonnull @.str.14, i32 noundef %33) #8
  br label %do.end.i69

do.end.i69:                                       ; preds = %if.then5.i67, %do.body.i65
  %34 = ptrtoint ptr %substream.i60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %substream.i60, align 4
  %call8.i68 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %35) #8
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
  %substream.i71 = getelementptr %struct.atiixp_modem, ptr %dev_id, i32 0, i32 9, i32 1, i32 2
  %36 = ptrtoint ptr %substream.i71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %substream.i71, align 4
  %tobool.not.i72 = icmp eq ptr %37, null
  br i1 %tobool.not.i72, label %if.then19.if.end23_crit_edge, label %lor.lhs.false.i75

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

lor.lhs.false.i75:                                ; preds = %if.then19
  %running.i73 = getelementptr %struct.atiixp_modem, ptr %dev_id, i32 0, i32 9, i32 1, i32 8
  %38 = ptrtoint ptr %running.i73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %running.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool1.not.i74 = icmp eq i32 %39, 0
  br i1 %tobool1.not.i74, label %lor.lhs.false.i75.if.end23_crit_edge, label %if.end.i76

lor.lhs.false.i75.if.end23_crit_edge:             ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end.i76:                                       ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %37) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end.i76, %lor.lhs.false.i75.if.end23_crit_edge, %if.then19.if.end23_crit_edge, %if.else16.if.end23_crit_edge, %do.end.i69, %lor.lhs.false.i64.if.end23_crit_edge, %if.then13.if.end23_crit_edge
  %and24 = and i32 %3, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.do.body_crit_edge, label %if.then26

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then26:                                        ; preds = %if.end23
  %reg_lock = getelementptr inbounds %struct.atiixp_modem, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %codec_not_ready_bits = getelementptr inbounds %struct.atiixp_modem, ptr %dev_id, i32 0, i32 13
  %40 = ptrtoint ptr %codec_not_ready_bits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %codec_not_ready_bits, align 4
  %or = or i32 %41, %and24
  store i32 %or, ptr %codec_not_ready_bits, align 4
  %42 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remap_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !138
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %neg.i = xor i32 %and24, -1
  %and.i = and i32 %45, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %and.i)
  %cmp.i = icmp eq i32 %45, %and.i
  br i1 %cmp.i, label %if.then26.snd_atiixp_update_bits.exit_crit_edge, label %do.body.i78

if.then26.snd_atiixp_update_bits.exit_crit_edge:  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_update_bits.exit

do.body.i78:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %46) #8, !srcloc !141
  br label %snd_atiixp_update_bits.exit

snd_atiixp_update_bits.exit:                      ; preds = %do.body.i78, %if.then26.snd_atiixp_update_bits.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  br label %do.body

do.body:                                          ; preds = %snd_atiixp_update_bits.exit, %if.end23.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %remap_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %2) #8, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_atiixp_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %5 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #8, !srcloc !141
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_atiixp_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 84, i16 %reg)
  %cmp = icmp eq i16 %reg, 84
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %conv2 = zext i16 %val to i32
  %shl = shl nuw nsw i32 %conv2, 5
  %or = or i32 %shl, 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %remap_addr = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !141
  br label %cleanup

if.end:                                           ; preds = %entry
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num, align 8
  %remap_addr.i.i = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not5.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not5.i.i, label %if.end.if.end.i_crit_edge, label %if.end.while.body.i.i_crit_edge

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  %timeout.06.i.i = phi i32 [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 1000, %if.end.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.06.i.i)
  %tobool2.not.i.i = icmp eq i32 %timeout.06.i.i, 0
  br i1 %tobool2.not.i.i, label %snd_atiixp_acquire_codec.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %dec.i.i = add nsw i32 %timeout.06.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %12 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  %15 = and i32 %14, 65536
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_atiixp_acquire_codec.exit.i:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %conv.i = zext i16 %val to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = zext i16 %reg to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 9
  %20 = or i16 %6, 256
  %or.i = zext i16 %20 to i32
  %or3.i = or i32 %shl.i, %shl2.i
  %or5.i = or i32 %or3.i, %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #8
  %22 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #8, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %snd_atiixp_acquire_codec.exit.i, %do.body
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
  %remap_addr.i.i = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
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
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.20) #11
  br label %snd_atiixp_codec_read.exit

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %conv.i = zext i16 %reg to i32
  %shl.i = shl nuw nsw i32 %conv.i, 9
  %17 = or i16 %3, 260
  %or1.i = zext i16 %17 to i32
  %or3.i = or i32 %shl.i, %or1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #8
  %19 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !141
  %21 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr4.i39.i = getelementptr i8, ptr %22, i32 12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i39.i) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.20) #11
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
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
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
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !138
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.23, i32 noundef %conv.i) #11
  br label %snd_atiixp_codec_read.exit

snd_atiixp_codec_read.exit:                       ; preds = %do.end26.i, %do.end19.i.snd_atiixp_codec_read.exit_crit_edge, %if.then14.i, %snd_atiixp_acquire_codec.exit51.thread.i, %snd_atiixp_acquire_codec.exit.i
  %retval.0.i = phi i16 [ %conv15.i, %if.then14.i ], [ -1, %snd_atiixp_acquire_codec.exit.i ], [ -1, %do.end26.i ], [ -1, %do.end19.i.snd_atiixp_codec_read.exit_crit_edge ], [ -1, %snd_atiixp_acquire_codec.exit51.thread.i ]
  ret i16 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_out_enable_dma(ptr nocapture noundef readonly %chip, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !138
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !141
  %or = or i32 %3, 512
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and4 = and i32 %3, -513
  br label %do.body

do.body:                                          ; preds = %if.else, %if.end
  %data.0 = phi i32 [ %or, %if.end ], [ %and4, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %data.0)
  %7 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %6) #8, !srcloc !141
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
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !138
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !141
  br label %snd_atiixp_update_bits.exit

snd_atiixp_update_bits.exit:                      ; preds = %do.body.i, %entry.snd_atiixp_update_bits.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_out_flush_dma(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %remap_addr = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !141
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
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !138
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !141
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
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #8, !srcloc !141
  br label %if.end7

if.else:                                          ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %and.i = and i32 %7, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and.i)
  %cmp.i = icmp eq i32 %7, %and.i
  br i1 %cmp.i, label %if.else.if.end7_crit_edge, label %do.body.i

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.body.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !141
  br label %if.end7

if.end7:                                          ; preds = %do.body.i, %if.else.if.end7_crit_edge, %if.then3, %if.then.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atiixp_in_flush_dma(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %remap_addr = getelementptr inbounds %struct.atiixp_modem, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #8, !srcloc !141
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
  %open_mutex = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #8
  %dmas = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 9
  %call = tail call fastcc i32 @snd_atiixp_pcm_open(ptr noundef %substream, ptr noundef %dmas, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %open_mutex) #8
  %2 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %2
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
  %open_mutex = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #8
  %dmas = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 9
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
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !168

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 882, i32 noundef 9, ptr noundef null) #8
  br label %snd_atiixp_pcm_close.exit

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg_lock.i = getelementptr inbounds %struct.atiixp_modem, ptr %3, i32 0, i32 8
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
  %substream29.i = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 9, i32 0, i32 2
  %12 = ptrtoint ptr %substream29.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %substream29.i, align 4
  %opened.i = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 9, i32 0, i32 7
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
  %arrayidx.i.i34 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i34, align 4
  %arrayidx.i.i35 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %14 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i35, align 4
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
  %pci.i = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 1
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
  br i1 %cmp13.i, label %land.lhs.true.i.atiixp_build_dma_packets.exit_crit_edge, label %land.lhs.true.i.do.body16.i_crit_edge

land.lhs.true.i.do.body16.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16.i

land.lhs.true.i.atiixp_build_dma_packets.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atiixp_build_dma_packets.exit

do.body16.i:                                      ; preds = %land.lhs.true.i.do.body16.i_crit_edge, %if.end9.i.do.body16.i_crit_edge
  %reg_lock.i = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 8
  %call19.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 4
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !141
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %59) #8, !srcloc !141
  %period_bytes54.i = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 5
  %66 = ptrtoint ptr %period_bytes54.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %15, ptr %period_bytes54.i, align 4
  %67 = ptrtoint ptr %periods10.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %13, ptr %periods10.i, align 4
  br label %atiixp_build_dma_packets.exit

atiixp_build_dma_packets.exit:                    ; preds = %do.body45.i, %land.lhs.true.i.atiixp_build_dma_packets.exit_crit_edge
  %arrayidx.i.i36 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %arrayidx = getelementptr %struct.atiixp_modem, ptr %1, i32 0, i32 7, i32 0
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %69, null
  br i1 %tobool.not, label %atiixp_build_dma_packets.exit.for.inc_crit_edge, label %if.end8

atiixp_build_dma_packets.exit.for.inc_crit_edge:  ; preds = %atiixp_build_dma_packets.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end8:                                          ; preds = %atiixp_build_dma_packets.exit
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i36, align 4
  %conv = trunc i32 %71 to i16
  tail call void @snd_ac97_write(ptr noundef nonnull %69, i16 noundef zeroext 64, i16 noundef zeroext %conv) #8
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx, align 4
  tail call void @snd_ac97_write(ptr noundef %73, i16 noundef zeroext 70, i16 noundef zeroext 0) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %atiixp_build_dma_packets.exit.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.atiixp_modem, ptr %1, i32 0, i32 7, i32 1
  %74 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %75, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end8.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end8.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i36, align 4
  %conv.1 = trunc i32 %77 to i16
  tail call void @snd_ac97_write(ptr noundef nonnull %75, i16 noundef zeroext 64, i16 noundef zeroext %conv.1) #8
  %78 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.1, align 4
  tail call void @snd_ac97_write(ptr noundef %79, i16 noundef zeroext 70, i16 noundef zeroext 0) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end8.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.atiixp_modem, ptr %1, i32 0, i32 7, i32 2
  %80 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %81, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %if.end8.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i36, align 4
  %conv.2 = trunc i32 %83 to i16
  tail call void @snd_ac97_write(ptr noundef nonnull %81, i16 noundef zeroext 64, i16 noundef zeroext %conv.2) #8
  %84 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.2, align 4
  tail call void @snd_ac97_write(ptr noundef %85, i16 noundef zeroext 70, i16 noundef zeroext 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8.2, %for.inc.1.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i39 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then2.i.cleanup_crit_edge ], [ 0, %if.end8.2 ], [ 0, %for.inc.1.cleanup_crit_edge ]
  ret i32 %retval.0.i39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_atiixp_pcm_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  %area.i = getelementptr inbounds %struct.atiixp_dma, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.atiixp_clear_dma_packets.exit_crit_edge, label %do.body.i

entry.atiixp_clear_dma_packets.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atiixp_clear_dma_packets.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %desc_buf.i = getelementptr inbounds %struct.atiixp_dma, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %llp_offset.i = getelementptr inbounds %struct.atiixp_dma_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %llp_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %llp_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !141
  tail call void @snd_dma_free_pages(ptr noundef %desc_buf.i) #8
  %14 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %area.i, align 4
  br label %atiixp_clear_dma_packets.exit

atiixp_clear_dma_packets.exit:                    ; preds = %do.body.i, %entry.atiixp_clear_dma_packets.exit_crit_edge
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
  %reg_lock = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %remap_addr = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %5 = and i32 %4, -3841
  %6 = or i32 %5, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #8, !srcloc !141
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
  br i1 %tobool3.not, label %lor.rhs.do.end_crit_edge, label %if.end26, !prof !168

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 663, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end26:                                         ; preds = %lor.rhs
  %reg_lock = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %switch = icmp ult i32 %cmd, 2
  br i1 %switch, label %if.then34, label %if.end26.if.end39_crit_edge

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then34:                                        ; preds = %if.end26
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %enable_transfer31 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %enable_transfer31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable_transfer31, align 4
  tail call void %15(ptr noundef %1, i32 noundef %cmd) #8
  %running32 = getelementptr inbounds %struct.atiixp_dma, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %running32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cmd, ptr %running32, align 4
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  %20 = and i32 %19, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 32768
  %21 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !138
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %and.i.i = and i32 %24, -32769
  %or.i.i = or i32 %and.i.i, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %24, %or.i.i
  br i1 %cmp.i.i, label %if.then34.snd_atiixp_check_bus_busy.exit_crit_edge, label %do.body.i.i

if.then34.snd_atiixp_check_bus_busy.exit_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_atiixp_check_bus_busy.exit

do.body.i.i:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #8, !srcloc !141
  br label %snd_atiixp_check_bus_busy.exit

snd_atiixp_check_bus_busy.exit:                   ; preds = %do.body.i.i, %if.then34.snd_atiixp_check_bus_busy.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 0
  br i1 %cmp, label %if.then35, label %snd_atiixp_check_bus_busy.exit.if.end39_crit_edge

snd_atiixp_check_bus_busy.exit.if.end39_crit_edge: ; preds = %snd_atiixp_check_bus_busy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then35:                                        ; preds = %snd_atiixp_check_bus_busy.exit
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %flush_dma37 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %flush_dma37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %flush_dma37, align 4
  tail call void %29(ptr noundef %1) #8
  %30 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %31, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  %33 = and i32 %32, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i61 = icmp eq i32 %33, 0
  %..i62 = select i1 %tobool.not.i61, i32 0, i32 32768
  %34 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i63) #8, !srcloc !138
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %and.i.i64 = and i32 %37, -32769
  %or.i.i65 = or i32 %and.i.i64, %..i62
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %or.i.i65)
  %cmp.i.i66 = icmp eq i32 %37, %or.i.i65
  br i1 %cmp.i.i66, label %if.then35.if.end39_crit_edge, label %do.body.i.i67

if.then35.if.end39_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.body.i.i67:                                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i.i65) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 %38) #8, !srcloc !141
  br label %if.end39

if.end39:                                         ; preds = %do.body.i.i67, %if.then35.if.end39_crit_edge, %snd_atiixp_check_bus_busy.exit.if.end39_crit_edge, %if.end26.if.end39_crit_edge
  %err.071 = phi i32 [ 0, %snd_atiixp_check_bus_busy.exit.if.end39_crit_edge ], [ -22, %if.end26.if.end39_crit_edge ], [ 0, %if.then35.if.end39_crit_edge ], [ 0, %do.body.i.i67 ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.071, %if.end39 ]
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
  %remap_addr = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 4
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
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !138
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_atiixp_pcm_pointer.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_atiixp_pcm_pointer, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !151

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
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !138
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  %32 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_atiixp_pcm_pointer.__UNIQUE_ID_ddebug253, ptr noundef %23, ptr noundef nonnull @.str.28, i32 noundef %31, i32 noundef %33) #8
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
  br i1 %tobool3.not, label %lor.rhs.do.end_crit_edge, label %if.end26, !prof !168

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 851, i32 noundef 9, ptr noundef null) #8
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
  %ac97_pcm_type = getelementptr inbounds %struct.atiixp_dma, ptr %dma, i32 0, i32 10
  %12 = ptrtoint ptr %ac97_pcm_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %pcm_type, ptr %ac97_pcm_type, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_atiixp_pcm_open.hw_constraints_rates) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %call33 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %private_data37 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %13 = ptrtoint ptr %private_data37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dma, ptr %private_data37, align 8
  %reg_lock = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma, align 4
  %enable_dma39 = getelementptr inbounds %struct.atiixp_dma_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %enable_dma39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable_dma39, align 4
  tail call void %17(ptr noundef %1, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  %18 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %opened, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end32.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end36 ], [ -16, %if.end26.cleanup_crit_edge ], [ %call, %if.end29.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

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
  %arrayidx = getelementptr %struct.atiixp_modem, ptr %1, i32 0, i32 9, i32 1
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
  %arrayidx = getelementptr %struct.atiixp_modem, ptr %1, i32 0, i32 9, i32 1
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
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !168

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 882, i32 noundef 9, ptr noundef null) #8
  br label %snd_atiixp_pcm_close.exit

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg_lock.i = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 8
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
  %substream29.i = getelementptr %struct.atiixp_modem, ptr %1, i32 0, i32 9, i32 1, i32 2
  %10 = ptrtoint ptr %substream29.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %substream29.i, align 4
  %opened.i = getelementptr %struct.atiixp_modem, ptr %1, i32 0, i32 9, i32 1, i32 7
  %11 = ptrtoint ptr %opened.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %opened.i, align 4
  br label %snd_atiixp_pcm_close.exit

snd_atiixp_pcm_close.exit:                        ; preds = %if.end25.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.end25.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_atiixp_capture_prepare(ptr nocapture noundef readnone %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
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
  %remap_addr = getelementptr inbounds %struct.atiixp_modem, ptr %1, i32 0, i32 4
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
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !138
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %i.07, i32 noundef %7) #8
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
  %arrayidx = getelementptr %struct.atiixp_modem, ptr %3, i32 0, i32 7, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @snd_ac97_suspend(ptr noundef %6) #8
  %arrayidx.1 = getelementptr %struct.atiixp_modem, ptr %3, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  tail call void @snd_ac97_suspend(ptr noundef %8) #8
  %arrayidx.2 = getelementptr %struct.atiixp_modem, ptr %3, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.2, align 4
  tail call void @snd_ac97_suspend(ptr noundef %10) #8
  %remap_addr.i.i = getelementptr inbounds %struct.atiixp_modem, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !138
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #8, !srcloc !141
  br label %snd_atiixp_aclink_down.exit

snd_atiixp_aclink_down.exit:                      ; preds = %do.body.i.i, %entry.snd_atiixp_aclink_down.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr.i.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %19 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #8, !srcloc !141
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
  %remap_addr.i = getelementptr inbounds %struct.atiixp_modem, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  %7 = or i32 %6, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %7) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 117440512) #8, !srcloc !141
  %arrayidx = getelementptr %struct.atiixp_modem, ptr %3, i32 0, i32 7, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void @snd_ac97_resume(ptr noundef %15) #8
  %arrayidx.1 = getelementptr %struct.atiixp_modem, ptr %3, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  tail call void @snd_ac97_resume(ptr noundef %17) #8
  %arrayidx.2 = getelementptr %struct.atiixp_modem, ptr %3, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  tail call void @snd_ac97_resume(ptr noundef %19) #8
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %20 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
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
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !59, !61, !62, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/atiixp_modem.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/atiixp_modem.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/atiixp_modem.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/atiixp_modem.c", i32 31, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/atiixp_modem.c", i32 32, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/atiixp_modem.c", i32 33, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/atiixp_modem.c", i32 34, i32 1}
!17 = !{ptr @__param_ac97_clock, !18, !"__param_ac97_clock", i1 false, i1 false}
!18 = !{!"../sound/pci/atiixp_modem.c", i32 35, i32 1}
!19 = !{ptr @__UNIQUE_ID_ac97_clocktype250, !18, !"__UNIQUE_ID_ac97_clocktype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_ac97_clock251, !21, !"__UNIQUE_ID_ac97_clock251", i1 false, i1 false}
!21 = !{!"../sound/pci/atiixp_modem.c", i32 36, i32 1}
!22 = !{ptr @__param_enable, !23, !"__param_enable", i1 false, i1 false}
!23 = !{!"../sound/pci/atiixp_modem.c", i32 40, i32 1}
!24 = !{ptr @__UNIQUE_ID_enabletype252, !23, !"__UNIQUE_ID_enabletype252", i1 false, i1 false}
!25 = !{ptr @__initcall__kmod_snd_atiixp_modem__256_1259_atiixp_modem_driver_init6, !26, !"__initcall__kmod_snd_atiixp_modem__256_1259_atiixp_modem_driver_init6", i1 false, i1 false}
!26 = !{!"../sound/pci/atiixp_modem.c", i32 1259, i32 1}
!27 = !{ptr @__exitcall_atiixp_modem_driver_exit, !26, !"__exitcall_atiixp_modem_driver_exit", i1 false, i1 false}
!28 = !{ptr @enable, !29, !"enable", i1 false, i1 false}
!29 = !{!"../sound/pci/atiixp_modem.c", i32 39, i32 13}
!30 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!31 = !{ptr @index, !32, !"index", i1 false, i1 false}
!32 = !{!"../sound/pci/atiixp_modem.c", i32 27, i32 12}
!33 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!34 = !{ptr @id, !35, !"id", i1 false, i1 false}
!35 = !{!"../sound/pci/atiixp_modem.c", i32 28, i32 14}
!36 = !{ptr @__param_str_ac97_clock, !18, !"__param_str_ac97_clock", i1 false, i1 false}
!37 = !{ptr @ac97_clock, !38, !"ac97_clock", i1 false, i1 false}
!38 = !{!"../sound/pci/atiixp_modem.c", i32 29, i32 12}
!39 = !{ptr @__param_str_enable, !23, !"__param_str_enable", i1 false, i1 false}
!40 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @atiixp_modem_driver, !42, !"atiixp_modem_driver", i1 false, i1 false}
!42 = !{!"../sound/pci/atiixp_modem.c", i32 1250, i32 26}
!43 = !{ptr @snd_atiixp_ids, !44, !"snd_atiixp_ids", i1 false, i1 false}
!44 = !{!"../sound/pci/atiixp_modem.c", i32 249, i32 35}
!45 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/atiixp_modem.c", i32 1217, i32 23}
!47 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/atiixp_modem.c", i32 1218, i32 26}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/atiixp_modem.c", i32 1239, i32 26}
!51 = !{ptr @snd_atiixp_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../sound/pci/atiixp_modem.c", i32 1179, i32 2}
!53 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @snd_atiixp_init.__key.5, !55, !"__key", i1 false, i1 false}
!55 = !{!"../sound/pci/atiixp_modem.c", i32 1180, i32 2}
!56 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/atiixp_modem.c", i32 1184, i32 40}
!59 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/atiixp_modem.c", i32 1192, i32 3}
!61 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @snd_atiixp_init._entry, !60, !"_entry", i1 false, i1 false}
!66 = !{ptr @snd_atiixp_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/atiixp_modem.c", i32 625, i32 2}
!69 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @snd_atiixp_xrun_dma.__UNIQUE_ID_ddebug254, !68, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/atiixp_modem.c", i32 487, i32 4}
!73 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @snd_atiixp_aclink_reset._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @snd_atiixp_aclink_reset._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @snd_atiixp_mixer_new.ops, !77, !"ops", i1 false, i1 false}
!77 = !{!"../sound/pci/atiixp_modem.c", i32 1048, i32 39}
!78 = !{ptr @snd_atiixp_mixer_new.codec_skip, !79, !"codec_skip", i1 false, i1 false}
!79 = !{!"../sound/pci/atiixp_modem.c", i32 1052, i32 28}
!80 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/atiixp_modem.c", i32 1079, i32 4}
!82 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @snd_atiixp_mixer_new.__UNIQUE_ID_ddebug255, !81, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!84 = !{ptr @.str.19, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/atiixp_modem.c", i32 1087, i32 3}
!86 = !{ptr @snd_atiixp_mixer_new._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @snd_atiixp_mixer_new._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/atiixp_modem.c", i32 388, i32 4}
!90 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @snd_atiixp_acquire_codec._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @snd_atiixp_acquire_codec._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/atiixp_modem.c", i32 421, i32 3}
!96 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @snd_atiixp_codec_read._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @snd_atiixp_codec_read._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.25, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/atiixp_modem.c", i32 541, i32 3}
!101 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @snd_atiixp_codec_detect._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @snd_atiixp_codec_detect._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @snd_atiixp_playback_dma_ops, !105, !"snd_atiixp_playback_dma_ops", i1 false, i1 false}
!105 = !{!"../sound/pci/atiixp_modem.c", i32 952, i32 36}
!106 = !{ptr @snd_atiixp_capture_dma_ops, !107, !"snd_atiixp_capture_dma_ops", i1 false, i1 false}
!107 = !{!"../sound/pci/atiixp_modem.c", i32 961, i32 36}
!108 = !{ptr @snd_atiixp_playback_ops, !109, !"snd_atiixp_playback_ops", i1 false, i1 false}
!109 = !{!"../sound/pci/atiixp_modem.c", i32 931, i32 33}
!110 = !{ptr @snd_atiixp_pcm_open.rates, !111, !"rates", i1 false, i1 false}
!111 = !{!"../sound/pci/atiixp_modem.c", i32 844, i32 28}
!112 = !{ptr @snd_atiixp_pcm_open.hw_constraints_rates, !113, !"hw_constraints_rates", i1 false, i1 false}
!113 = !{!"../sound/pci/atiixp_modem.c", i32 845, i32 49}
!114 = !{ptr @snd_atiixp_pcm_hw, !115, !"snd_atiixp_pcm_hw", i1 false, i1 false}
!115 = !{!"../sound/pci/atiixp_modem.c", i32 818, i32 38}
!116 = !{ptr @.str.27, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/atiixp_modem.c", i32 612, i32 2}
!118 = !{ptr @.str.28, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @snd_atiixp_pcm_pointer.__UNIQUE_ID_ddebug253, !117, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!120 = !{ptr @snd_atiixp_capture_ops, !121, !"snd_atiixp_capture_ops", i1 false, i1 false}
!121 = !{!"../sound/pci/atiixp_modem.c", i32 942, i32 33}
!122 = !{ptr @.str.29, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/atiixp_modem.c", i32 1153, i32 35}
!124 = !{ptr @.str.30, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/atiixp_modem.c", i32 1148, i32 3}
!126 = !{ptr @snd_atiixp_pm, !127, !"snd_atiixp_pm", i1 false, i1 false}
!127 = !{!"../sound/pci/atiixp_modem.c", i32 1131, i32 8}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"auto-init"}
!138 = !{i64 717521}
!139 = !{i64 2154783293}
!140 = !{i64 2154783619}
!141 = !{i64 717103}
!142 = !{i64 2154784114}
!143 = !{i64 2154784688}
!144 = !{i64 2154763909}
!145 = !{i64 2154764111}
!146 = !{i64 2154775577}
!147 = !{i64 2154776800}
!148 = !{i64 2154777526}
!149 = !{i64 2154780086}
!150 = !{i64 2154780701}
!151 = !{i64 2148184260, i64 2148184265, i64 2148184278, i64 2148184322, i64 2148184356, i64 2148184377}
!152 = !{i64 2154802739}
!153 = !{i64 2154803542}
!154 = !{i64 2154786323}
!155 = !{i64 2154787246}
!156 = !{i64 2154787553}
!157 = !{i64 2154774021}
!158 = !{i64 2154767672}
!159 = !{i64 2154773482}
!160 = !{i64 2154770157}
!161 = !{i64 2154770940}
!162 = !{i64 2154796392}
!163 = !{i64 2154795618}
!164 = !{i64 2154796717}
!165 = !{i64 2154797726}
!166 = !{i64 2154798043}
!167 = !{i64 2154798668}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{i64 2154765544}
!170 = !{i64 2154766348}
!171 = !{i64 2154766869}
!172 = !{i64 2154799502}
!173 = !{i64 2154799838}
!174 = !{i64 2154794467}
!175 = !{i64 2154788325}
!176 = !{i64 2154791543}
!177 = !{i64 2154812983}
