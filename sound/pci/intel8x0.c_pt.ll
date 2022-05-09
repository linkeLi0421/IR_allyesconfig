; ModuleID = '/llk/IR_all_yes/sound/pci/intel8x0.c_pt.bc'
source_filename = "../sound/pci/intel8x0.c"
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
%struct.shortname_table = type { i32, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.ich_reg_info = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ac97_quirk = type { i16, i16, i16, i32, ptr, i32 }
%struct.ac97_pcm = type { ptr, i8, i16, i16, i32, [2 x %struct.anon.86], i32 }
%struct.anon.86 = type { i16, [4 x i16], [4 x i8], [4 x ptr] }
%struct.ich_pcm_table = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
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
%struct.intel8x0 = type { i32, i32, ptr, ptr, ptr, ptr, i32, [6 x ptr], [6 x %struct.ichdev], i16, i32, i32, ptr, [3 x ptr], [3 x i32], i32, i32, ptr, i32, i32, %struct.spinlock, i32, ptr, i32, i32 }
%struct.ichdev = type { i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.84, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.84 = type { i32, [28 x i8] }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_chmap = type { ptr, i32, ptr, ptr, i32, i32, ptr }
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
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [53 x i8] c"snd_intel8x0.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [98 x i8] c"snd_intel8x0.description=Intel 82801AA,82901AB,i810,i820,i830,i840,i845,MX440; SiS 7012; Ali 5455\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [41 x i8] c"snd_intel8x0.file=sound/pci/snd-intel8x0\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [25 x i8] c"snd_intel8x0.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [19 x i8] c"snd_intel8x0.index\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [32 x i8] c"snd_intel8x0.parmtype=index:int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [62 x i8] c"snd_intel8x0.parm=index:Index value for Intel i8x0 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [16 x i8] c"snd_intel8x0.id\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [31 x i8] c"snd_intel8x0.parmtype=id:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [57 x i8] c"snd_intel8x0.parm=id:ID string for Intel i8x0 soundcard.\00", section ".modinfo", align 1
@__param_str_ac97_clock = internal constant [24 x i8] c"snd_intel8x0.ac97_clock\00", align 1
@ac97_clock = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ac97_clock = internal constant %struct.kernel_param { ptr @__param_str_ac97_clock, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_clock } }, section "__param", align 4
@__UNIQUE_ID_ac97_clocktype250 = internal constant [37 x i8] c"snd_intel8x0.parmtype=ac97_clock:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_clock251 = internal constant [100 x i8] c"snd_intel8x0.parm=ac97_clock:AC'97 codec clock (0 = allowlist + auto-detect, 1 = force autodetect).\00", section ".modinfo", align 1
@__param_str_ac97_quirk = internal constant [24 x i8] c"snd_intel8x0.ac97_quirk\00", align 1
@ac97_quirk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_ac97_quirk = internal constant %struct.kernel_param { ptr @__param_str_ac97_quirk, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_quirk } }, section "__param", align 4
@__UNIQUE_ID_ac97_quirktype252 = internal constant [39 x i8] c"snd_intel8x0.parmtype=ac97_quirk:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_quirk253 = internal constant [68 x i8] c"snd_intel8x0.parm=ac97_quirk:AC'97 workaround for strange hardware.\00", section ".modinfo", align 1
@__param_str_buggy_semaphore = internal constant [29 x i8] c"snd_intel8x0.buggy_semaphore\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@buggy_semaphore = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_buggy_semaphore = internal constant %struct.kernel_param { ptr @__param_str_buggy_semaphore, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @buggy_semaphore } }, section "__param", align 4
@__UNIQUE_ID_buggy_semaphoretype254 = internal constant [43 x i8] c"snd_intel8x0.parmtype=buggy_semaphore:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_buggy_semaphore255 = internal constant [101 x i8] c"snd_intel8x0.parm=buggy_semaphore:Enable workaround for hardwares with problematic codec semaphores.\00", section ".modinfo", align 1
@__param_str_buggy_irq = internal constant [23 x i8] c"snd_intel8x0.buggy_irq\00", align 1
@param_ops_bint = external dso_local constant %struct.kernel_param_ops, align 4
@buggy_irq = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_buggy_irq = internal constant %struct.kernel_param { ptr @__param_str_buggy_irq, ptr null, ptr @param_ops_bint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @buggy_irq } }, section "__param", align 4
@__UNIQUE_ID_buggy_irqtype256 = internal constant [37 x i8] c"snd_intel8x0.parmtype=buggy_irq:bint\00", section ".modinfo", align 1
@__UNIQUE_ID_buggy_irq257 = internal constant [89 x i8] c"snd_intel8x0.parm=buggy_irq:Enable workaround for buggy interrupts on some motherboards.\00", section ".modinfo", align 1
@__param_str_xbox = internal constant [18 x i8] c"snd_intel8x0.xbox\00", align 1
@xbox = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_xbox = internal constant %struct.kernel_param { ptr @__param_str_xbox, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @xbox } }, section "__param", align 4
@__UNIQUE_ID_xboxtype258 = internal constant [32 x i8] c"snd_intel8x0.parmtype=xbox:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_xbox259 = internal constant [95 x i8] c"snd_intel8x0.parm=xbox:Set to 1 for Xbox, if you have problems with the AC'97 codec detection.\00", section ".modinfo", align 1
@__param_str_spdif_aclink = internal constant [26 x i8] c"snd_intel8x0.spdif_aclink\00", align 1
@spdif_aclink = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_spdif_aclink = internal constant %struct.kernel_param { ptr @__param_str_spdif_aclink, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @spdif_aclink } }, section "__param", align 4
@__UNIQUE_ID_spdif_aclinktype260 = internal constant [39 x i8] c"snd_intel8x0.parmtype=spdif_aclink:int\00", section ".modinfo", align 1
@__UNIQUE_ID_spdif_aclink261 = internal constant [52 x i8] c"snd_intel8x0.parm=spdif_aclink:S/PDIF over AC-link.\00", section ".modinfo", align 1
@__param_str_inside_vm = internal constant [23 x i8] c"snd_intel8x0.inside_vm\00", align 1
@inside_vm = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_inside_vm = internal constant %struct.kernel_param { ptr @__param_str_inside_vm, ptr null, ptr @param_ops_bint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @inside_vm } }, section "__param", align 4
@__UNIQUE_ID_inside_vmtype262 = internal constant [37 x i8] c"snd_intel8x0.parmtype=inside_vm:bint\00", section ".modinfo", align 1
@__UNIQUE_ID_inside_vm263 = internal constant [56 x i8] c"snd_intel8x0.parm=inside_vm:KVM/Parallels optimization.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [20 x i8] c"snd_intel8x0.enable\00", align 1
@enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype264 = internal constant [34 x i8] c"snd_intel8x0.parmtype=enable:bool\00", section ".modinfo", align 1
@__param_str_joystick = internal constant [22 x i8] c"snd_intel8x0.joystick\00", align 1
@joystick = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_joystick = internal constant %struct.kernel_param { ptr @__param_str_joystick, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @joystick } }, section "__param", align 4
@__UNIQUE_ID_joysticktype265 = internal constant [35 x i8] c"snd_intel8x0.parmtype=joystick:int\00", section ".modinfo", align 1
@__initcall__kmod_snd_intel8x0__268_3201_intel8x0_driver_init6 = internal global ptr @intel8x0_driver_init, section ".initcall6.init", align 4
@intel8x0_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_intel8x0_ids, ptr @snd_intel8x0_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intel8x0_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_intel8x0_driver_exit = internal global ptr @intel8x0_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_intel8x0\00", [19 x i8] zeroinitializer }, align 32
@snd_intel8x0_ids = internal constant { [24 x %struct.pci_device_id], [192 x i8] } { [24 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 9237, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9253, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9285, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9349, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9413, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 9429, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 9638, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 9838, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 10206, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 9880, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 29077, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 28690, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4318, i32 433, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 58, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 106, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 89, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 138, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 218, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 234, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 619, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4130, i32 29805, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 29765, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4281, i32 21589, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@intel8x0_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @intel8x0_suspend, ptr @intel8x0_resume, ptr @intel8x0_suspend, ptr @intel8x0_resume, ptr @intel8x0_suspend, ptr @intel8x0_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NFORCE\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ICH4\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Intel ICH\00", [22 x i8] zeroinitializer }, align 32
@shortnames = internal constant { [23 x %struct.shortname_table], [40 x i8] } { [23 x %struct.shortname_table] [%struct.shortname_table { i32 9237, ptr @.str.11 }, %struct.shortname_table { i32 9253, ptr @.str.12 }, %struct.shortname_table { i32 9285, ptr @.str.13 }, %struct.shortname_table { i32 29077, ptr @.str.14 }, %struct.shortname_table { i32 9349, ptr @.str.15 }, %struct.shortname_table { i32 9413, ptr @.str.16 }, %struct.shortname_table { i32 9429, ptr @.str.17 }, %struct.shortname_table { i32 9638, ptr @.str.18 }, %struct.shortname_table { i32 9838, ptr @.str.19 }, %struct.shortname_table { i32 10206, ptr @.str.20 }, %struct.shortname_table { i32 9880, ptr @.str.21 }, %struct.shortname_table { i32 28690, ptr @.str.22 }, %struct.shortname_table { i32 433, ptr @.str.23 }, %struct.shortname_table { i32 106, ptr @.str.24 }, %struct.shortname_table { i32 218, ptr @.str.25 }, %struct.shortname_table { i32 234, ptr @.str.26 }, %struct.shortname_table { i32 89, ptr @.str.27 }, %struct.shortname_table { i32 138, ptr @.str.28 }, %struct.shortname_table { i32 58, ptr @.str.29 }, %struct.shortname_table { i32 29805, ptr @.str.30 }, %struct.shortname_table { i32 29765, ptr @.str.31 }, %struct.shortname_table { i32 21589, ptr @.str.32 }, %struct.shortname_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s with %s at irq %i\00", [43 x i8] zeroinitializer }, align 32
@spdif_aclink_defaults = internal constant { [2 x %struct.snd_pci_quirk], [32 x i8] } { [2 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 5243, i16 7194, i16 -1, i32 1, ptr @.str.10 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@check_default_spdif_aclink.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 3, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"check_default_spdif_aclink\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/pci/intel8x0.c\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Using SPDIF over AC-Link for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@check_default_spdif_aclink.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.9, i8 3, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Using integrated SPDIF DMA for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ASUS KN8\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Intel 82801AA-ICH\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Intel 82901AB-ICH0\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Intel 82801BA-ICH2\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Intel 440MX\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Intel 82801CA-ICH3\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Intel 82801DB-ICH4\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel ICH5\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Intel 6300ESB\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel ICH6\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel ICH7\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel ESB2\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SiS SI7012\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NVidia nForce\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NVidia nForce2\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NVidia nForce3\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NVidia CK8S\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NVidia CK804\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NVidia CK8\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NVidia MCP04\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMD AMD8111\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMD AMD768\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ALi M5455\00", [22 x i8] zeroinitializer }, align 32
@snd_intel8x0_init.bdbars = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 6, i32 3, i32 6, i32 4], [44 x i8] zeroinitializer }, align 32
@snd_intel8x0_init.intel_regs = internal constant { [6 x %struct.ich_reg_info], [48 x i8] } { [6 x %struct.ich_reg_info] [%struct.ich_reg_info { i32 32, i32 0 }, %struct.ich_reg_info { i32 64, i32 16 }, %struct.ich_reg_info { i32 128, i32 32 }, %struct.ich_reg_info { i32 16777216, i32 64 }, %struct.ich_reg_info { i32 33554432, i32 80 }, %struct.ich_reg_info { i32 67108864, i32 96 }], [48 x i8] zeroinitializer }, align 32
@snd_intel8x0_init.nforce_regs = internal constant { [4 x %struct.ich_reg_info], [32 x i8] } { [4 x %struct.ich_reg_info] [%struct.ich_reg_info { i32 32, i32 0 }, %struct.ich_reg_info { i32 64, i32 16 }, %struct.ich_reg_info { i32 128, i32 32 }, %struct.ich_reg_info { i32 16, i32 112 }], [32 x i8] zeroinitializer }, align 32
@snd_intel8x0_init.ali_regs = internal constant { [6 x %struct.ich_reg_info], [48 x i8] } { [6 x %struct.ich_reg_info] [%struct.ich_reg_info { i32 65536, i32 64 }, %struct.ich_reg_info { i32 131072, i32 80 }, %struct.ich_reg_info { i32 262144, i32 96 }, %struct.ich_reg_info { i32 524288, i32 112 }, %struct.ich_reg_info { i32 4194304, i32 160 }, %struct.ich_reg_info { i32 8388608, i32 176 }], [48 x i8] zeroinitializer }, align 32
@snd_intel8x0_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@ich_codec_bits = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 256, i32 512, i32 268435456], [20 x i8] zeroinitializer }, align 32
@sis_codec_bits = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 256, i32 512, i32 262144], [20 x i8] zeroinitializer }, align 32
@snd_intel8x0_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 3047, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_intel8x0_init\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_intel8x0_init._entry_ptr = internal global ptr @snd_intel8x0_init._entry, section ".printk_index", align 4
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable (forced) VM\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disable (forced) VM\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enable KVM\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enable Parallels VM\00", [44 x i8] zeroinitializer }, align 32
@snd_intel8x0_inside_vm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 2863, ptr @.str.44, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s optimization\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_intel8x0_inside_vm\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_intel8x0_inside_vm._entry_ptr = internal global ptr @snd_intel8x0_inside_vm._entry, section ".printk_index", align 4
@snd_intel8x0_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.7, i32 2522, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reset of registers failed?\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_intel8x0_chip_init\00", [41 x i8] zeroinitializer }, align 32
@snd_intel8x0_chip_init._entry_ptr = internal global ptr @snd_intel8x0_chip_init._entry, section ".printk_index", align 4
@ich_chip_reset_mode = internal constant { [2 x %struct.snd_pci_quirk], [32 x i8] } { [2 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4116, i16 1311, i16 -1, i32 1, ptr @.str.49 }, %struct.snd_pci_quirk zeroinitializer], [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_intel8x0_ich_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.7, i32 2413, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"codec_ready: codec is not ready [0x%x]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_intel8x0_ich_chip_init\00", [37 x i8] zeroinitializer }, align 32
@snd_intel8x0_ich_chip_init._entry_ptr = internal global ptr @snd_intel8x0_ich_chip_init._entry, section ".printk_index", align 4
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thinkpad R32\00", [19 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_intel8x0_ich_chip_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.7, i32 2370, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AC'97 warm reset still in progress? [0x%x]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_intel8x0_ich_chip_reset\00", [36 x i8] zeroinitializer }, align 32
@snd_intel8x0_ich_chip_reset._entry_ptr = internal global ptr @snd_intel8x0_ich_chip_reset._entry, section ".printk_index", align 4
@snd_intel8x0_ali_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.7, i32 2476, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AC'97 reset failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_intel8x0_ali_chip_init\00", [37 x i8] zeroinitializer }, align 32
@snd_intel8x0_ali_chip_init._entry_ptr = internal global ptr @snd_intel8x0_ali_chip_init._entry, section ".printk_index", align 4
@snd_intel8x0_mixer.standard_bus_ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_intel8x0_codec_write, ptr @snd_intel8x0_codec_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_intel8x0_mixer.ali_bus_ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_intel8x0_ali_codec_write, ptr @snd_intel8x0_ali_codec_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_intel8x0_mixer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.7, i32 2217, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to initialize codec #%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_intel8x0_mixer\00", [45 x i8] zeroinitializer }, align 32
@snd_intel8x0_mixer._entry_ptr = internal global ptr @snd_intel8x0_mixer._entry, section ".printk_index", align 4
@ac97_quirks = internal constant { [66 x %struct.ac97_quirk], [344 x i8] } { [66 x %struct.ac97_quirk] [%struct.ac97_quirk { i16 3601, i16 14, i16 0, i32 0, ptr @.str.70, i32 1 }, %struct.ac97_quirk { i16 3601, i16 138, i16 0, i32 0, ptr @.str.71, i32 1 }, %struct.ac97_quirk { i16 3601, i16 184, i16 0, i32 0, ptr @.str.72, i32 1 }, %struct.ac97_quirk { i16 3601, i16 2144, i16 0, i32 0, ptr @.str.73, i32 7 }, %struct.ac97_quirk { i16 4116, i16 1332, i16 0, i32 0, ptr @.str.74, i32 6 }, %struct.ac97_quirk { i16 4116, i16 7936, i16 0, i32 0, ptr @.str.75, i32 5 }, %struct.ac97_quirk { i16 4116, i16 615, i16 0, i32 0, ptr @.str.76, i32 1 }, %struct.ac97_quirk { i16 4133, i16 130, i16 0, i32 0, ptr @.str.77, i32 1 }, %struct.ac97_quirk { i16 4133, i16 131, i16 0, i32 0, ptr @.str.78, i32 1 }, %struct.ac97_quirk { i16 4136, i16 216, i16 0, i32 0, ptr @.str.79, i32 1 }, %struct.ac97_quirk { i16 4136, i16 269, i16 0, i32 0, ptr @.str.80, i32 1 }, %struct.ac97_quirk { i16 4136, i16 294, i16 0, i32 0, ptr @.str.81, i32 1 }, %struct.ac97_quirk { i16 4136, i16 300, i16 0, i32 0, ptr @.str.82, i32 1 }, %struct.ac97_quirk { i16 4136, i16 301, i16 0, i32 0, ptr @.str.83, i32 1 }, %struct.ac97_quirk { i16 4136, i16 327, i16 0, i32 0, ptr @.str.80, i32 1 }, %struct.ac97_quirk { i16 4136, i16 337, i16 0, i32 0, ptr @.str.84, i32 1 }, %struct.ac97_quirk { i16 4136, i16 334, i16 0, i32 0, ptr @.str.85, i32 1 }, %struct.ac97_quirk { i16 4136, i16 355, i16 0, i32 0, ptr @.str.86, i32 1 }, %struct.ac97_quirk { i16 4136, i16 362, i16 0, i32 0, ptr @.str.87, i32 1 }, %struct.ac97_quirk { i16 4136, i16 386, i16 0, i32 0, ptr @.str.88, i32 1 }, %struct.ac97_quirk { i16 4136, i16 390, i16 0, i32 0, ptr @.str.89, i32 8 }, %struct.ac97_quirk { i16 4136, i16 392, i16 0, i32 0, ptr @.str.90, i32 8 }, %struct.ac97_quirk { i16 4136, i16 393, i16 0, i32 0, ptr @.str.91, i32 8 }, %struct.ac97_quirk { i16 4136, i16 401, i16 0, i32 0, ptr @.str.87, i32 1 }, %struct.ac97_quirk { i16 4156, i16 109, i16 0, i32 0, ptr @.str.92, i32 7 }, %struct.ac97_quirk { i16 4156, i16 195, i16 0, i32 0, ptr @.str.93, i32 1 }, %struct.ac97_quirk { i16 4156, i16 2188, i16 0, i32 0, ptr @.str.94, i32 8 }, %struct.ac97_quirk { i16 4156, i16 2192, i16 0, i32 0, ptr @.str.95, i32 7 }, %struct.ac97_quirk { i16 4156, i16 4765, i16 0, i32 0, ptr @.str.96, i32 1 }, %struct.ac97_quirk { i16 4156, i16 2360, i16 0, i32 0, ptr @.str.97, i32 8 }, %struct.ac97_quirk { i16 4156, i16 2460, i16 0, i32 0, ptr @.str.98, i32 8 }, %struct.ac97_quirk { i16 4156, i16 2372, i16 0, i32 0, ptr @.str.99, i32 8 }, %struct.ac97_quirk { i16 4156, i16 2356, i16 0, i32 0, ptr @.str.100, i32 8 }, %struct.ac97_quirk { i16 4156, i16 4849, i16 0, i32 0, ptr @.str.101, i32 1 }, %struct.ac97_quirk { i16 4156, i16 4850, i16 0, i32 0, ptr @.str.102, i32 1 }, %struct.ac97_quirk { i16 4156, i16 12296, i16 0, i32 0, ptr @.str.103, i32 1 }, %struct.ac97_quirk { i16 4173, i16 -32444, i16 0, i32 0, ptr @.str.104, i32 6 }, %struct.ac97_quirk { i16 4173, i16 -32361, i16 0, i32 0, ptr @.str.105, i32 6 }, %struct.ac97_quirk { i16 4173, i16 -32320, i16 0, i32 0, ptr @.str.106, i32 6 }, %struct.ac97_quirk { i16 4173, i16 -32315, i16 0, i32 0, ptr @.str.107, i32 6 }, %struct.ac97_quirk { i16 4163, i16 -32525, i16 0, i32 0, ptr @.str.108, i32 4 }, %struct.ac97_quirk { i16 4303, i16 4547, i16 0, i32 0, ptr @.str.109, i32 1 }, %struct.ac97_quirk { i16 4303, i16 4645, i16 0, i32 0, ptr @.str.110, i32 1 }, %struct.ac97_quirk { i16 4303, i16 4691, i16 0, i32 0, ptr @.str.111, i32 1 }, %struct.ac97_quirk { i16 4303, i16 4733, i16 0, i32 0, ptr @.str.112, i32 1 }, %struct.ac97_quirk { i16 4303, i16 4734, i16 0, i32 0, ptr @.str.113, i32 1 }, %struct.ac97_quirk { i16 4303, i16 4844, i16 0, i32 0, ptr @.str.114, i32 1 }, %struct.ac97_quirk { i16 4303, i16 4850, i16 0, i32 0, ptr @.str.115, i32 2 }, %struct.ac97_quirk { i16 4337, i16 9829, i16 0, i32 0, ptr @.str.116, i32 1 }, %struct.ac97_quirk { i16 4337, i16 10373, i16 0, i32 0, ptr @.str.117, i32 1 }, %struct.ac97_quirk { i16 4337, i16 10389, i16 0, i32 0, ptr @.str.118, i32 1 }, %struct.ac97_quirk { i16 4343, i16 -31924, i16 0, i32 0, ptr @.str.119, i32 1 }, %struct.ac97_quirk { i16 4362, i16 86, i16 0, i32 0, ptr @.str.120, i32 1 }, %struct.ac97_quirk { i16 4564, i16 21365, i16 0, i32 0, ptr @.str.121, i32 1 }, %struct.ac97_quirk { i16 5218, i16 21616, i16 0, i32 0, ptr @.str.122, i32 1 }, %struct.ac97_quirk { i16 5663, i16 8239, i16 0, i32 0, ptr @.str.123, i32 6 }, %struct.ac97_quirk { i16 5663, i16 8250, i16 0, i32 0, ptr @.str.124, i32 6 }, %struct.ac97_quirk { i16 5940, i16 136, i16 0, i32 0, ptr @.str.125, i32 1 }, %struct.ac97_quirk { i16 -32634, i16 8192, i16 -16, i32 0, ptr @.str.126, i32 4 }, %struct.ac97_quirk { i16 -32634, i16 16384, i16 -16, i32 0, ptr @.str.126, i32 4 }, %struct.ac97_quirk { i16 -32634, i16 18518, i16 0, i32 0, ptr @.str.127, i32 2 }, %struct.ac97_quirk { i16 -32634, i16 19780, i16 0, i32 0, ptr @.str.128, i32 1 }, %struct.ac97_quirk { i16 -32634, i16 19798, i16 0, i32 0, ptr @.str.129, i32 1 }, %struct.ac97_quirk { i16 -32634, i16 24576, i16 -16, i32 0, ptr @.str.126, i32 4 }, %struct.ac97_quirk { i16 -32634, i16 -8192, i16 -16, i32 0, ptr @.str.126, i32 4 }, %struct.ac97_quirk zeroinitializer], [344 x i8] zeroinitializer }, align 32
@ac97_pcm_defs = internal constant { [6 x %struct.ac97_pcm], [104 x i8] } { [6 x %struct.ac97_pcm] [%struct.ac97_pcm { ptr null, i8 64, i16 0, i16 0, i32 0, [2 x %struct.anon.86] [%struct.anon.86 { i16 984, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.86 { i16 408, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }], i32 0 }, %struct.ac97_pcm { ptr null, i8 -64, i16 0, i16 0, i32 0, [2 x %struct.anon.86] [%struct.anon.86 { i16 24, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.86 zeroinitializer], i32 0 }, %struct.ac97_pcm { ptr null, i8 -64, i16 0, i16 0, i32 0, [2 x %struct.anon.86] [%struct.anon.86 { i16 64, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.86 zeroinitializer], i32 0 }, %struct.ac97_pcm { ptr null, i8 80, i16 0, i16 0, i32 0, [2 x %struct.anon.86] [%struct.anon.86 { i16 3072, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.86 zeroinitializer], i32 0 }, %struct.ac97_pcm { ptr null, i8 -64, i16 0, i16 0, i32 0, [2 x %struct.anon.86] [%struct.anon.86 { i16 24, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.86 zeroinitializer], i32 0 }, %struct.ac97_pcm { ptr null, i8 -64, i16 0, i16 0, i32 0, [2 x %struct.anon.86] [%struct.anon.86 { i16 64, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.86 zeroinitializer], i32 0 }], [104 x i8] zeroinitializer }, align 32
@snd_intel8x0_codec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.7, i32 521, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"codec_write %d: semaphore is not ready for register 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_intel8x0_codec_write\00", [39 x i8] zeroinitializer }, align 32
@snd_intel8x0_codec_write._entry_ptr = internal global ptr @snd_intel8x0_codec_write._entry, section ".printk_index", align 4
@snd_intel8x0_codec_semaphore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.7, i32 505, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"codec_semaphore: semaphore is not ready [0x%x][0x%x]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_intel8x0_codec_semaphore\00", [35 x i8] zeroinitializer }, align 32
@snd_intel8x0_codec_semaphore._entry_ptr = internal global ptr @snd_intel8x0_codec_semaphore._entry, section ".printk_index", align 4
@snd_intel8x0_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.7, i32 537, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"codec_read %d: semaphore is not ready for register 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_intel8x0_codec_read\00", [40 x i8] zeroinitializer }, align 32
@snd_intel8x0_codec_read._entry_ptr = internal global ptr @snd_intel8x0_codec_read._entry, section ".printk_index", align 4
@snd_intel8x0_codec_read._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.7, i32 549, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"codec_read %d: read timeout for register 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@snd_intel8x0_codec_read._entry_ptr.64 = internal global ptr @snd_intel8x0_codec_read._entry.62, section ".printk_index", align 4
@snd_intel8x0_ali_codec_semaphore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.7, i32 596, ptr @.str.67, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ali_codec_semaphore timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_intel8x0_ali_codec_semaphore\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_intel8x0_ali_codec_semaphore._entry_ptr = internal global ptr @snd_intel8x0_ali_codec_semaphore._entry, section ".printk_index", align 4
@snd_intel8x0_ali_codec_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.7, i32 584, ptr @.str.67, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AC97 codec ready timeout.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_intel8x0_ali_codec_ready\00", [35 x i8] zeroinitializer }, align 32
@snd_intel8x0_ali_codec_ready._entry_ptr = internal global ptr @snd_intel8x0_ali_codec_ready._entry, section ".printk_index", align 4
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Compaq Deskpro EN\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Compaq Evo W4000\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Compaq Evo D510C\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HP/Compaq nx7010\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ThinkPad X31\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MS-9128\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IBM NetVista A30p\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Acer Travelmate 2310\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Acer Aspire 3003LCi\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Precision 530\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Dell\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dell Optiplex GX260\00", [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Precision 650\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Precision 450\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dell Optiplex GX270\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Dell D800\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Dell Unknown\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 8600\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Latitude D610\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Latitude D810\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 6000\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dell Inspiron 9300\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP zv5000\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP xw6000\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP nc8000\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP nc6000\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP xw8000\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP nc4200\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HP nx6110/nc6120\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP nc6220\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP nc8220\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP xw8200\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP xw6200\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HP xw4200\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sony\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Sony S1XP\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sony VAIO VGN-T350P\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Sony VAIO VGN-B1VP\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ASUS ICH5/AD1985\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fujitsu-Siemens E4010\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fujitsu-Siemens T3010\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Fujitsu S6210\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fujitsu Lifebook P7010\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Fujitsu Lifebook C1211D\00", [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fujitsu-Siemens 4010\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fujitsu-Siemens Celsius H320\00", [35 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Fujitsu-Siemens Celsius\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMD64 Mobo\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tyan Thunder K8WE\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Panasonic CF-R4\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fujitsu-Siemens Scenic\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADI AD1985 (discrete)\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MSI P4 ATX 645 Ultra\00", [43 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Gateway M520\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Gateway 4525GZ\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fujitsu-Siemens D1522\00", [42 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Intel ICH5/AD1985\00", [46 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Intel D845WN (82801BA)\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Intel D850EMV2\00", [17 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Intel ICH/AD1885\00", [47 x i8] zeroinitializer }, align 32
@intel_pcms = internal constant { [5 x %struct.ich_pcm_table], [40 x i8] } { [5 x %struct.ich_pcm_table] [%struct.ich_pcm_table { ptr null, ptr @snd_intel8x0_playback_ops, ptr @snd_intel8x0_capture_ops, i32 65536, i32 131072, i32 0 }, %struct.ich_pcm_table { ptr @.str.130, ptr null, ptr @snd_intel8x0_capture_mic_ops, i32 0, i32 131072, i32 2 }, %struct.ich_pcm_table { ptr @.str.131, ptr null, ptr @snd_intel8x0_capture_mic2_ops, i32 0, i32 131072, i32 3 }, %struct.ich_pcm_table { ptr @.str.132, ptr null, ptr @snd_intel8x0_capture2_ops, i32 0, i32 131072, i32 4 }, %struct.ich_pcm_table { ptr @.str.133, ptr @snd_intel8x0_spdif_ops, ptr null, i32 65536, i32 131072, i32 5 }], [40 x i8] zeroinitializer }, align 32
@nforce_pcms = internal constant { [3 x %struct.ich_pcm_table], [56 x i8] } { [3 x %struct.ich_pcm_table] [%struct.ich_pcm_table { ptr null, ptr @snd_intel8x0_playback_ops, ptr @snd_intel8x0_capture_ops, i32 65536, i32 131072, i32 0 }, %struct.ich_pcm_table { ptr @.str.130, ptr null, ptr @snd_intel8x0_capture_mic_ops, i32 0, i32 131072, i32 2 }, %struct.ich_pcm_table { ptr @.str.133, ptr @snd_intel8x0_spdif_ops, ptr null, i32 65536, i32 131072, i32 3 }], [56 x i8] zeroinitializer }, align 32
@ali_pcms = internal constant { [3 x %struct.ich_pcm_table], [56 x i8] } { [3 x %struct.ich_pcm_table] [%struct.ich_pcm_table { ptr null, ptr @snd_intel8x0_ali_playback_ops, ptr @snd_intel8x0_ali_capture_ops, i32 65536, i32 131072, i32 0 }, %struct.ich_pcm_table { ptr @.str.130, ptr null, ptr @snd_intel8x0_ali_capture_mic_ops, i32 0, i32 131072, i32 2 }, %struct.ich_pcm_table { ptr @.str.133, ptr @snd_intel8x0_ali_ac97spdifout_ops, ptr null, i32 65536, i32 131072, i32 3 }], [56 x i8] zeroinitializer }, align 32
@snd_intel8x0_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0_playback_open, ptr @snd_intel8x0_playback_close, ptr null, ptr @snd_intel8x0_hw_params, ptr @snd_intel8x0_hw_free, ptr @snd_intel8x0_pcm_prepare, ptr @snd_intel8x0_pcm_trigger, ptr null, ptr @snd_intel8x0_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_intel8x0_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0_capture_open, ptr @snd_intel8x0_capture_close, ptr null, ptr @snd_intel8x0_hw_params, ptr @snd_intel8x0_hw_free, ptr @snd_intel8x0_pcm_prepare, ptr @snd_intel8x0_pcm_trigger, ptr null, ptr @snd_intel8x0_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MIC ADC\00", [24 x i8] zeroinitializer }, align 32
@snd_intel8x0_capture_mic_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0_mic_open, ptr @snd_intel8x0_mic_close, ptr null, ptr @snd_intel8x0_hw_params, ptr @snd_intel8x0_hw_free, ptr @snd_intel8x0_pcm_prepare, ptr @snd_intel8x0_pcm_trigger, ptr null, ptr @snd_intel8x0_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MIC2 ADC\00", [23 x i8] zeroinitializer }, align 32
@snd_intel8x0_capture_mic2_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0_mic2_open, ptr @snd_intel8x0_mic2_close, ptr null, ptr @snd_intel8x0_hw_params, ptr @snd_intel8x0_hw_free, ptr @snd_intel8x0_pcm_prepare, ptr @snd_intel8x0_pcm_trigger, ptr null, ptr @snd_intel8x0_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@snd_intel8x0_capture2_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0_capture2_open, ptr @snd_intel8x0_capture2_close, ptr null, ptr @snd_intel8x0_hw_params, ptr @snd_intel8x0_hw_free, ptr @snd_intel8x0_pcm_prepare, ptr @snd_intel8x0_pcm_trigger, ptr null, ptr @snd_intel8x0_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IEC958\00", [25 x i8] zeroinitializer }, align 32
@snd_intel8x0_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0_spdif_open, ptr @snd_intel8x0_spdif_close, ptr null, ptr @snd_intel8x0_hw_params, ptr @snd_intel8x0_hw_free, ptr @snd_intel8x0_pcm_prepare, ptr @snd_intel8x0_pcm_trigger, ptr null, ptr @snd_intel8x0_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_channels8 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @channels8, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hw_constraints_channels6 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @channels6, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hw_constraints_channels4 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @channels4, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@snd_intel8x0_stream = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 131072, i32 32, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@channels8 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 4, i32 6, i32 8], [16 x i8] zeroinitializer }, align 32
@channels6 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 6], [20 x i8] zeroinitializer }, align 32
@channels4 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 4], [24 x i8] zeroinitializer }, align 32
@snd_intel8x0_ali_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0_playback_open, ptr @snd_intel8x0_playback_close, ptr null, ptr @snd_intel8x0_hw_params, ptr @snd_intel8x0_hw_free, ptr @snd_intel8x0_pcm_prepare, ptr @snd_intel8x0_ali_trigger, ptr null, ptr @snd_intel8x0_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_intel8x0_ali_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0_capture_open, ptr @snd_intel8x0_capture_close, ptr null, ptr @snd_intel8x0_hw_params, ptr @snd_intel8x0_hw_free, ptr @snd_intel8x0_pcm_prepare, ptr @snd_intel8x0_ali_trigger, ptr null, ptr @snd_intel8x0_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_intel8x0_ali_capture_mic_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0_mic_open, ptr @snd_intel8x0_mic_close, ptr null, ptr @snd_intel8x0_hw_params, ptr @snd_intel8x0_hw_free, ptr @snd_intel8x0_pcm_prepare, ptr @snd_intel8x0_ali_trigger, ptr null, ptr @snd_intel8x0_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_intel8x0_ali_ac97spdifout_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0_ali_ac97spdifout_open, ptr @snd_intel8x0_ali_ac97spdifout_close, ptr null, ptr @snd_intel8x0_hw_params, ptr @snd_intel8x0_hw_free, ptr @snd_intel8x0_pcm_prepare, ptr @snd_intel8x0_ali_trigger, ptr null, ptr @snd_intel8x0_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_intel8x0_ali_trigger.fiforeg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 12, i32 28, i32 44], [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Intel ICH - %s\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s - %s\00", [24 x i8] zeroinitializer }, align 32
@snd_pcm_alt_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intel8x0\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel8x0\0A\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Global control        : 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Global status         : 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SDM                   : 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AC'97 codecs ready    :\00", [40 x i8] zeroinitializer }, align 32
@snd_intel8x0_proc_read.codecs = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.142, ptr @.str.143, ptr @.str.144], [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"secondary\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tertiary\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" none\00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AC'97 codecs SDIN     : %i %i %i\0A\00", [62 x i8] zeroinitializer }, align 32
@intel8x0_clock_list = internal constant { [7 x %struct.snd_pci_quirk], [48 x i8] } { [7 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 3601, i16 138, i16 -1, i32 41000, ptr @.str.151 }, %struct.snd_pci_quirk { i16 4116, i16 1409, i16 -1, i32 48000, ptr @.str.152 }, %struct.snd_pci_quirk { i16 4136, i16 190, i16 -1, i32 44100, ptr @.str.151 }, %struct.snd_pci_quirk { i16 4136, i16 375, i16 -1, i32 48000, ptr @.str.153 }, %struct.snd_pci_quirk { i16 4136, i16 429, i16 -1, i32 48000, ptr @.str.152 }, %struct.snd_pci_quirk { i16 4163, i16 -32525, i16 -1, i32 48000, ptr @.str.154 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@intel8x0_in_clock_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.7, i32 2780, ptr @.str.44, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"allow list rate for %04x:%04x is %i\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"intel8x0_in_clock_list\00", [41 x i8] zeroinitializer }, align 32
@intel8x0_in_clock_list._entry_ptr = internal global ptr @intel8x0_in_clock_list._entry, section ".printk_index", align 4
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1885\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD1981B\00", [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1980\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1985\00", [25 x i8] zeroinitializer }, align 32
@intel8x0_measure_ac97_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.7, i32 2657, ptr @.str.67, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"no playback buffer allocated - aborting measure ac97 clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"intel8x0_measure_ac97_clock\00", [36 x i8] zeroinitializer }, align 32
@intel8x0_measure_ac97_clock._entry_ptr = internal global ptr @intel8x0_measure_ac97_clock._entry, section ".printk_index", align 4
@intel8x0_measure_ac97_clock._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.7, i32 2668, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot set ac97 rate: clock = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@intel8x0_measure_ac97_clock._entry_ptr.159 = internal global ptr @intel8x0_measure_ac97_clock._entry.157, section ".printk_index", align 4
@intel8x0_measure_ac97_clock._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.156, ptr @.str.7, i32 2723, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"measure - unreliable DMA position..\0A\00", [59 x i8] zeroinitializer }, align 32
@intel8x0_measure_ac97_clock._entry_ptr.162 = internal global ptr @intel8x0_measure_ac97_clock._entry.160, section ".printk_index", align 4
@intel8x0_measure_ac97_clock._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.156, ptr @.str.7, i32 2736, ptr @.str.44, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: measured %lu usecs (%lu samples)\0A\00", [58 x i8] zeroinitializer }, align 32
@intel8x0_measure_ac97_clock._entry_ptr.165 = internal global ptr @intel8x0_measure_ac97_clock._entry.163, section ".printk_index", align 4
@intel8x0_measure_ac97_clock._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.156, ptr @.str.7, i32 2738, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"?? calculation error..\0A\00", [40 x i8] zeroinitializer }, align 32
@intel8x0_measure_ac97_clock._entry_ptr.168 = internal global ptr @intel8x0_measure_ac97_clock._entry.166, section ".printk_index", align 4
@intel8x0_measure_ac97_clock._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.156, ptr @.str.7, i32 2745, ptr @.str.44, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"measured clock %ld rejected\0A\00", [35 x i8] zeroinitializer }, align 32
@intel8x0_measure_ac97_clock._entry_ptr.171 = internal global ptr @intel8x0_measure_ac97_clock._entry.169, section ".printk_index", align 4
@intel8x0_measure_ac97_clock._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.156, ptr @.str.7, i32 2757, ptr @.str.44, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clocking to %d\0A\00", [16 x i8] zeroinitializer }, align 32
@intel8x0_measure_ac97_clock._entry_ptr.174 = internal global ptr @intel8x0_measure_ac97_clock._entry.172, section ".printk_index", align 4
@intel8x0_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.7, i32 2593, ptr @.str.36, ptr @.str.37 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to grab IRQ %d, disabling device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"intel8x0_resume\00", [16 x i8] zeroinitializer }, align 32
@intel8x0_resume._entry_ptr = internal global ptr @intel8x0_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.177 = internal global [24 x i64] [i64 22, i64 16, i64 58, i64 89, i64 106, i64 138, i64 218, i64 234, i64 433, i64 9237, i64 9253, i64 9285, i64 9349, i64 9413, i64 9429, i64 9638, i64 9838, i64 9880, i64 10206, i64 21589, i64 28690, i64 29077, i64 29765, i64 29805]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 16, i64 6840, i64 6900]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.182 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.186 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 31, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 32, i32 14 }
@___asan_gen_.193 = private unnamed_addr constant [11 x i8] c"ac97_clock\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 33, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [11 x i8] c"ac97_quirk\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 34, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant [16 x i8] c"buggy_semaphore\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 35, i32 13 }
@___asan_gen_.202 = private unnamed_addr constant [10 x i8] c"buggy_irq\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 36, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [5 x i8] c"xbox\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 37, i32 13 }
@___asan_gen_.208 = private unnamed_addr constant [13 x i8] c"spdif_aclink\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 38, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant [10 x i8] c"inside_vm\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 39, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 61, i32 13 }
@___asan_gen_.217 = private unnamed_addr constant [9 x i8] c"joystick\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 63, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"intel8x0_driver\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3192, i32 26 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3201, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"snd_intel8x0_ids\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 386, i32 35 }
@___asan_gen_.229 = private unnamed_addr constant [12 x i8] c"intel8x0_pm\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2631, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3133, i32 25 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3136, i32 25 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3140, i32 26 }
@___asan_gen_.241 = private unnamed_addr constant [11 x i8] c"shortnames\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3061, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3172, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant [22 x i8] c"spdif_aclink_defaults\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3087, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3100, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3104, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3088, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3062, i32 35 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3063, i32 35 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3064, i32 35 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3065, i32 31 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3066, i32 35 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3067, i32 35 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3068, i32 35 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3069, i32 31 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3070, i32 33 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3071, i32 33 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3072, i32 33 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3073, i32 27 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3074, i32 37 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3075, i32 37 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3076, i32 37 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3077, i32 37 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3078, i32 38 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3079, i32 36 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3080, i32 12 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3081, i32 12 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3082, i32 12 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3083, i32 12 }
@___asan_gen_.331 = private unnamed_addr constant [7 x i8] c"bdbars\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2878, i32 28 }
@___asan_gen_.334 = private unnamed_addr constant [11 x i8] c"intel_regs\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2885, i32 35 }
@___asan_gen_.337 = private unnamed_addr constant [12 x i8] c"nforce_regs\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2893, i32 35 }
@___asan_gen_.340 = private unnamed_addr constant [9 x i8] c"ali_regs\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2899, i32 35 }
@___asan_gen_.343 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2913, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [15 x i8] c"ich_codec_bits\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2830, i32 27 }
@___asan_gen_.352 = private unnamed_addr constant [15 x i8] c"sis_codec_bits\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2833, i32 27 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 3047, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2844, i32 18 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2844, i32 41 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2853, i32 9 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2857, i32 9 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2863, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2522, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant [20 x i8] c"ich_chip_reset_mode\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2320, i32 35 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2411, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2321, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2369, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2476, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [17 x i8] c"standard_bus_ops\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2129, i32 39 }
@___asan_gen_.439 = private unnamed_addr constant [12 x i8] c"ali_bus_ops\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2133, i32 39 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2216, i32 5 }
@___asan_gen_.451 = private unnamed_addr constant [12 x i8] c"ac97_quirks\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1713, i32 32 }
@___asan_gen_.454 = private unnamed_addr constant [14 x i8] c"ac97_pcm_defs\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1643, i32 30 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 519, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 503, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 535, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 547, i32 5 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 596, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 584, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1717, i32 11 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1723, i32 11 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1729, i32 11 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1735, i32 11 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1741, i32 11 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1747, i32 11 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1753, i32 11 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1759, i32 11 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1765, i32 11 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1771, i32 11 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1777, i32 11 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1783, i32 11 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1789, i32 11 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1795, i32 11 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1807, i32 11 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1813, i32 11 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1819, i32 11 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1825, i32 11 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1831, i32 11 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1837, i32 11 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1843, i32 11 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1849, i32 11 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1861, i32 11 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1867, i32 11 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1873, i32 11 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1879, i32 11 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1885, i32 11 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1891, i32 11 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1897, i32 11 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1903, i32 11 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1909, i32 11 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1915, i32 11 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1921, i32 11 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1927, i32 11 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1933, i32 11 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1939, i32 11 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1945, i32 11 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1951, i32 11 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1957, i32 11 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1963, i32 11 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1969, i32 11 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1975, i32 11 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1981, i32 11 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1987, i32 11 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1993, i32 11 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1999, i32 11 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2005, i32 11 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2011, i32 11 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2017, i32 11 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2023, i32 11 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2029, i32 11 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2035, i32 11 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2041, i32 11 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2047, i32 11 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2053, i32 11 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2059, i32 11 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2066, i32 11 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2079, i32 11 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2085, i32 11 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2091, i32 11 }
@___asan_gen_.691 = private unnamed_addr constant [11 x i8] c"intel_pcms\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1488, i32 35 }
@___asan_gen_.694 = private unnamed_addr constant [12 x i8] c"nforce_pcms\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1525, i32 35 }
@___asan_gen_.697 = private unnamed_addr constant [9 x i8] c"ali_pcms\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1548, i32 35 }
@___asan_gen_.700 = private unnamed_addr constant [26 x i8] c"snd_intel8x0_playback_ops\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1298, i32 33 }
@___asan_gen_.703 = private unnamed_addr constant [25 x i8] c"snd_intel8x0_capture_ops\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1308, i32 33 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1496, i32 13 }
@___asan_gen_.709 = private unnamed_addr constant [29 x i8] c"snd_intel8x0_capture_mic_ops\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1318, i32 33 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1503, i32 13 }
@___asan_gen_.715 = private unnamed_addr constant [30 x i8] c"snd_intel8x0_capture_mic2_ops\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1328, i32 33 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1510, i32 13 }
@___asan_gen_.721 = private unnamed_addr constant [26 x i8] c"snd_intel8x0_capture2_ops\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1338, i32 33 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1517, i32 13 }
@___asan_gen_.727 = private unnamed_addr constant [23 x i8] c"snd_intel8x0_spdif_ops\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1348, i32 33 }
@___asan_gen_.730 = private unnamed_addr constant [25 x i8] c"hw_constraints_channels8\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1090, i32 48 }
@___asan_gen_.733 = private unnamed_addr constant [25 x i8] c"hw_constraints_channels6\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1080, i32 48 }
@___asan_gen_.736 = private unnamed_addr constant [25 x i8] c"hw_constraints_channels4\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1070, i32 48 }
@___asan_gen_.739 = private unnamed_addr constant [20 x i8] c"snd_intel8x0_stream\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1045, i32 38 }
@___asan_gen_.742 = private unnamed_addr constant [10 x i8] c"channels8\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1086, i32 27 }
@___asan_gen_.745 = private unnamed_addr constant [10 x i8] c"channels6\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1076, i32 27 }
@___asan_gen_.748 = private unnamed_addr constant [10 x i8] c"channels4\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1066, i32 27 }
@___asan_gen_.751 = private unnamed_addr constant [30 x i8] c"snd_intel8x0_ali_playback_ops\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1358, i32 33 }
@___asan_gen_.754 = private unnamed_addr constant [29 x i8] c"snd_intel8x0_ali_capture_ops\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1368, i32 33 }
@___asan_gen_.757 = private unnamed_addr constant [33 x i8] c"snd_intel8x0_ali_capture_mic_ops\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1378, i32 33 }
@___asan_gen_.760 = private unnamed_addr constant [34 x i8] c"snd_intel8x0_ali_ac97spdifout_ops\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1388, i32 33 }
@___asan_gen_.763 = private unnamed_addr constant [8 x i8] c"fiforeg\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 829, i32 19 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1440, i32 17 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 1457, i32 22 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2821, i32 35 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2791, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2795, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2796, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2798, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2799, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant [7 x i8] c"codecs\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2802, i32 22 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2803, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2803, i32 15 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2803, i32 28 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2807, i32 5 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2809, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2810, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2813, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant [20 x i8] c"intel8x0_clock_list\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2761, i32 35 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2779, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2762, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2763, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2765, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2767, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2656, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2667, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2722, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2735, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2738, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2745, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2757, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.889 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.890 = private constant [24 x i8] c"../sound/pci/intel8x0.c\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.890, i32 2592, i32 3 }
@llvm.compiler.used = appending global [295 x ptr] [ptr @__UNIQUE_ID_ac97_clock251, ptr @__UNIQUE_ID_ac97_clocktype250, ptr @__UNIQUE_ID_ac97_quirk253, ptr @__UNIQUE_ID_ac97_quirktype252, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_buggy_irq257, ptr @__UNIQUE_ID_buggy_irqtype256, ptr @__UNIQUE_ID_buggy_semaphore255, ptr @__UNIQUE_ID_buggy_semaphoretype254, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enabletype264, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_inside_vm263, ptr @__UNIQUE_ID_inside_vmtype262, ptr @__UNIQUE_ID_joysticktype265, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_spdif_aclink261, ptr @__UNIQUE_ID_spdif_aclinktype260, ptr @__UNIQUE_ID_xbox259, ptr @__UNIQUE_ID_xboxtype258, ptr @__exitcall_intel8x0_driver_exit, ptr @__initcall__kmod_snd_intel8x0__268_3201_intel8x0_driver_init6, ptr @__param_ac97_clock, ptr @__param_ac97_quirk, ptr @__param_buggy_irq, ptr @__param_buggy_semaphore, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_inside_vm, ptr @__param_joystick, ptr @__param_spdif_aclink, ptr @__param_xbox, ptr @intel8x0_driver_exit, ptr @intel8x0_in_clock_list._entry, ptr @intel8x0_in_clock_list._entry_ptr, ptr @intel8x0_measure_ac97_clock._entry, ptr @intel8x0_measure_ac97_clock._entry.157, ptr @intel8x0_measure_ac97_clock._entry.160, ptr @intel8x0_measure_ac97_clock._entry.163, ptr @intel8x0_measure_ac97_clock._entry.166, ptr @intel8x0_measure_ac97_clock._entry.169, ptr @intel8x0_measure_ac97_clock._entry.172, ptr @intel8x0_measure_ac97_clock._entry_ptr, ptr @intel8x0_measure_ac97_clock._entry_ptr.159, ptr @intel8x0_measure_ac97_clock._entry_ptr.162, ptr @intel8x0_measure_ac97_clock._entry_ptr.165, ptr @intel8x0_measure_ac97_clock._entry_ptr.168, ptr @intel8x0_measure_ac97_clock._entry_ptr.171, ptr @intel8x0_measure_ac97_clock._entry_ptr.174, ptr @intel8x0_resume._entry, ptr @intel8x0_resume._entry_ptr, ptr @snd_intel8x0_ali_chip_init._entry, ptr @snd_intel8x0_ali_chip_init._entry_ptr, ptr @snd_intel8x0_ali_codec_ready._entry, ptr @snd_intel8x0_ali_codec_ready._entry_ptr, ptr @snd_intel8x0_ali_codec_semaphore._entry, ptr @snd_intel8x0_ali_codec_semaphore._entry_ptr, ptr @snd_intel8x0_chip_init._entry, ptr @snd_intel8x0_chip_init._entry_ptr, ptr @snd_intel8x0_codec_read._entry, ptr @snd_intel8x0_codec_read._entry.62, ptr @snd_intel8x0_codec_read._entry_ptr, ptr @snd_intel8x0_codec_read._entry_ptr.64, ptr @snd_intel8x0_codec_semaphore._entry, ptr @snd_intel8x0_codec_semaphore._entry_ptr, ptr @snd_intel8x0_codec_write._entry, ptr @snd_intel8x0_codec_write._entry_ptr, ptr @snd_intel8x0_ich_chip_init._entry, ptr @snd_intel8x0_ich_chip_init._entry_ptr, ptr @snd_intel8x0_ich_chip_reset._entry, ptr @snd_intel8x0_ich_chip_reset._entry_ptr, ptr @snd_intel8x0_init._entry, ptr @snd_intel8x0_init._entry_ptr, ptr @snd_intel8x0_inside_vm._entry, ptr @snd_intel8x0_inside_vm._entry_ptr, ptr @snd_intel8x0_mixer._entry, ptr @snd_intel8x0_mixer._entry_ptr, ptr @index, ptr @id, ptr @ac97_clock, ptr @ac97_quirk, ptr @buggy_semaphore, ptr @buggy_irq, ptr @xbox, ptr @spdif_aclink, ptr @inside_vm, ptr @enable, ptr @joystick, ptr @intel8x0_driver, ptr @.str, ptr @snd_intel8x0_ids, ptr @intel8x0_pm, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @shortnames, ptr @.str.5, ptr @spdif_aclink_defaults, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @snd_intel8x0_init.bdbars, ptr @snd_intel8x0_init.intel_regs, ptr @snd_intel8x0_init.nforce_regs, ptr @snd_intel8x0_init.ali_regs, ptr @snd_intel8x0_init.__key, ptr @.str.33, ptr @ich_codec_bits, ptr @sis_codec_bits, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @ich_chip_reset_mode, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @snd_intel8x0_mixer.standard_bus_ops, ptr @snd_intel8x0_mixer.ali_bus_ops, ptr @.str.54, ptr @.str.55, ptr @ac97_quirks, ptr @ac97_pcm_defs, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @intel_pcms, ptr @nforce_pcms, ptr @ali_pcms, ptr @snd_intel8x0_playback_ops, ptr @snd_intel8x0_capture_ops, ptr @.str.130, ptr @snd_intel8x0_capture_mic_ops, ptr @.str.131, ptr @snd_intel8x0_capture_mic2_ops, ptr @.str.132, ptr @snd_intel8x0_capture2_ops, ptr @.str.133, ptr @snd_intel8x0_spdif_ops, ptr @hw_constraints_channels8, ptr @hw_constraints_channels6, ptr @hw_constraints_channels4, ptr @snd_intel8x0_stream, ptr @channels8, ptr @channels6, ptr @channels4, ptr @snd_intel8x0_ali_playback_ops, ptr @snd_intel8x0_ali_capture_ops, ptr @snd_intel8x0_ali_capture_mic_ops, ptr @snd_intel8x0_ali_ac97spdifout_ops, ptr @snd_intel8x0_ali_trigger.fiforeg, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @snd_intel8x0_proc_read.codecs, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @intel8x0_clock_list, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @.str.176], section "llvm.metadata"
@0 = internal global [235 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_clock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_quirk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buggy_semaphore to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buggy_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_aclink to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inside_vm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joystick to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ids to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shortnames to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_aclink_defaults to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_init.bdbars to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_init.intel_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_init.nforce_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_init.ali_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich_codec_bits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_codec_bits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_inside_vm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich_chip_reset_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ich_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ich_chip_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ali_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_mixer.standard_bus_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_mixer.ali_bus_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_mixer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_quirks to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_pcm_defs to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_codec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_codec_semaphore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_codec_read._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ali_codec_semaphore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ali_codec_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pcms to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nforce_pcms to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_pcms to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_capture_mic_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_capture_mic2_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_capture2_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_channels8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_channels6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_channels4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_stream to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channels8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channels6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channels4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ali_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ali_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ali_capture_mic_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ali_ac97spdifout_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_ali_trigger.fiforeg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0_proc_read.codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_clock_list to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_in_clock_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_measure_ac97_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_measure_ac97_clock._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_measure_ac97_clock._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_measure_ac97_clock._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_measure_ac97_clock._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_measure_ac97_clock._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_measure_ac97_clock._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel8x0_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @intel8x0_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intel8x0_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @intel8x0_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %pcm.i.i = alloca ptr, align 4
  %name.i.i = alloca [32 x i8], align 1
  %chmap.i.i = alloca ptr, align 4
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #9
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !532
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %1 = load i32, ptr @index, align 4
  %2 = load ptr, ptr @id, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 796, ptr noundef nonnull %card) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  %7 = load i32, ptr @spdif_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %call.i = call ptr @snd_pci_quirk_lookup(ptr noundef %pci, ptr noundef nonnull @spdif_aclink_defaults) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then2.check_default_spdif_aclink.exit_crit_edge, label %if.then.i

if.then2.check_default_spdif_aclink.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_default_spdif_aclink.exit

if.then.i:                                        ; preds = %if.then2
  %value.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %do.body8.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_default_spdif_aclink.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_intel8x0_probe, %if.then7.i)) #9
          to label %if.end26.i [label %if.then7.i], !srcloc !533

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_default_spdif_aclink.__UNIQUE_ID_ddebug266, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %11) #9
  br label %if.end26.i

do.body8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_default_spdif_aclink.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_intel8x0_probe, %if.then20.i)) #9
          to label %if.end26.i [label %if.then20.i], !srcloc !533

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %name22.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %name22.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name22.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_default_spdif_aclink.__UNIQUE_ID_ddebug267, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %13) #9
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i, %do.body8.i, %if.then7.i, %do.body.i
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i, align 4
  br label %check_default_spdif_aclink.exit

check_default_spdif_aclink.exit:                  ; preds = %if.end26.i, %if.then2.check_default_spdif_aclink.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.end26.i ], [ 0, %if.then2.check_default_spdif_aclink.exit_crit_edge ]
  store i32 %retval.0.i, ptr @spdif_aclink, align 4
  br label %if.end4

if.end4:                                          ; preds = %check_default_spdif_aclink.exit, %if.end.if.end4_crit_edge
  %16 = phi i32 [ %retval.0.i, %check_default_spdif_aclink.exit ], [ %7, %if.end.if.end4_crit_edge ]
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 1229146112, ptr %driver, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then6, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then6:                                         ; preds = %if.end4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %20 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_data, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.then6.if.end14_crit_edge [
    i32 4, label %sw.bb
    i32 1, label %sw.bb10
  ]

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %23 = call ptr @memcpy(ptr %driver, ptr @.str.2, i32 7)
  br label %if.end14

sw.bb10:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %24 = call ptr @memcpy(ptr %driver, ptr @.str.3, i32 5)
  br label %if.end14

if.end14:                                         ; preds = %sw.bb10, %sw.bb, %if.then6.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %shortname = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 3
  %25 = call ptr @memcpy(ptr %shortname, ptr @.str.4, i32 10)
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.177)
  switch i16 %27, label %if.end14.for.end_crit_edge [
    i16 9237, label %if.end14.if.then21_crit_edge
    i16 9253, label %if.then21.fold.split
    i16 9285, label %if.then21.fold.split178
    i16 29077, label %if.then21.fold.split179
    i16 9349, label %if.then21.fold.split180
    i16 9413, label %if.then21.fold.split181
    i16 9429, label %if.then21.fold.split182
    i16 9638, label %if.then21.fold.split183
    i16 9838, label %if.then21.fold.split184
    i16 10206, label %if.then21.fold.split185
    i16 9880, label %if.then21.fold.split186
    i16 28690, label %if.then21.fold.split187
    i16 433, label %if.then21.fold.split188
    i16 106, label %if.then21.fold.split189
    i16 218, label %if.then21.fold.split190
    i16 234, label %if.then21.fold.split191
    i16 89, label %if.then21.fold.split192
    i16 138, label %if.then21.fold.split193
    i16 58, label %if.then21.fold.split194
    i16 29805, label %if.then21.fold.split195
    i16 29765, label %if.then21.fold.split196
    i16 21589, label %if.then21.fold.split197
  ]

if.end14.if.then21_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then21.fold.split:                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split178:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split179:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split180:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split181:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split182:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split183:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split184:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split185:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split186:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split187:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split188:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split189:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split190:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split191:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split192:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split193:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split194:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split195:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split196:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21.fold.split197:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %if.then21.fold.split197, %if.then21.fold.split196, %if.then21.fold.split195, %if.then21.fold.split194, %if.then21.fold.split193, %if.then21.fold.split192, %if.then21.fold.split191, %if.then21.fold.split190, %if.then21.fold.split189, %if.then21.fold.split188, %if.then21.fold.split187, %if.then21.fold.split186, %if.then21.fold.split185, %if.then21.fold.split184, %if.then21.fold.split183, %if.then21.fold.split182, %if.then21.fold.split181, %if.then21.fold.split180, %if.then21.fold.split179, %if.then21.fold.split178, %if.then21.fold.split, %if.end14.if.then21_crit_edge
  %name.0172.lcssa = phi ptr [ @shortnames, %if.end14.if.then21_crit_edge ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 1), %if.then21.fold.split ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 2), %if.then21.fold.split178 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 3), %if.then21.fold.split179 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 4), %if.then21.fold.split180 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 5), %if.then21.fold.split181 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 6), %if.then21.fold.split182 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 7), %if.then21.fold.split183 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 8), %if.then21.fold.split184 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 9), %if.then21.fold.split185 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 10), %if.then21.fold.split186 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 11), %if.then21.fold.split187 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 12), %if.then21.fold.split188 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 13), %if.then21.fold.split189 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 14), %if.then21.fold.split190 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 15), %if.then21.fold.split191 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 16), %if.then21.fold.split192 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 17), %if.then21.fold.split193 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 18), %if.then21.fold.split194 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 19), %if.then21.fold.split195 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 20), %if.then21.fold.split196 ], [ getelementptr inbounds ([23 x %struct.shortname_table], ptr @shortnames, i32 0, i32 21), %if.then21.fold.split197 ]
  %s = getelementptr inbounds %struct.shortname_table, ptr %name.0172.lcssa, i32 0, i32 1
  %29 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s, align 4
  %call24 = call ptr @strcpy(ptr noundef %shortname, ptr noundef %30) #12
  br label %for.end

for.end:                                          ; preds = %if.then21, %if.end14.for.end_crit_edge
  %31 = load i32, ptr @buggy_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp26 = icmp slt i32 %31, 0
  br i1 %cmp26, label %if.then28, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data29 = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %32 = ptrtoint ptr %driver_data29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %driver_data29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp30 = icmp eq i32 %33, 4
  %. = zext i1 %cmp30 to i32
  store i32 %., ptr @buggy_irq, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %for.end.if.end34_crit_edge
  %driver_data35 = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %34 = ptrtoint ptr %driver_data35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %driver_data35, align 4
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 9
  %36 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private_data.i, align 8
  %call.i106 = call i32 @pcim_enable_device(ptr noundef %pci) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp.i = icmp slt i32 %call.i106, 0
  br i1 %cmp.i, label %if.end34.cleanup_crit_edge, label %do.body.i107

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i107:                                     ; preds = %if.end34
  %reg_lock.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 20
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @snd_intel8x0_init.__key, i16 noundef signext 3) #9
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %37, align 4
  %card3.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 5
  %39 = ptrtoint ptr %card3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %18, ptr %card3.i, align 4
  %pci4.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %pci4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pci, ptr %pci4.i, align 4
  %irq.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %irq.i, align 4
  %42 = load i32, ptr @buggy_irq, align 4
  %buggy_irq.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 9
  %43 = trunc i32 %42 to i16
  %44 = ptrtoint ptr %buggy_irq.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i = load i16, ptr %buggy_irq.i, align 4
  %bf.value.i = shl i16 %43, 6
  %bf.shl.i = and i16 %bf.value.i, 64
  %bf.clear.i = and i16 %bf.load.i, -81
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  %45 = load i8, ptr @buggy_semaphore, align 1, !range !534
  %46 = shl nuw nsw i8 %45, 4
  %bf.shl7.i = zext i8 %46 to i16
  %bf.set9.i = or i16 %bf.set.i, %bf.shl7.i
  store i16 %bf.set9.i, ptr %buggy_irq.i, align 4
  %47 = load i8, ptr @xbox, align 1, !range !534
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool11.not.i = icmp eq i8 %47, 0
  br i1 %tobool11.not.i, label %do.body.i107.if.end16.i_crit_edge, label %if.then12.i

do.body.i107.if.end16.i_crit_edge:                ; preds = %do.body.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then12.i:                                      ; preds = %do.body.i107
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set15.i = or i16 %bf.set9.i, 32
  %48 = ptrtoint ptr %buggy_irq.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %bf.set15.i, ptr %buggy_irq.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %do.body.i107.if.end16.i_crit_edge
  %49 = load i32, ptr @inside_vm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i.i = icmp sgt i32 %49, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i = icmp eq i32 %49, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.39, ptr @.str.38
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.end16.i
  %subsystem_vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 9
  %50 = ptrtoint ptr %subsystem_vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %subsystem_vendor.i.i, align 4
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.178)
  switch i16 %51, label %if.end.i.i.snd_intel8x0_inside_vm.exit.i_crit_edge [
    i16 6900, label %land.lhs.true.i.i
    i16 6840, label %if.end.i.i.do.end.i.i_crit_edge
  ]

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.end.i.i.snd_intel8x0_inside_vm.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_inside_vm.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %subsystem_device.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 10
  %53 = ptrtoint ptr %subsystem_device.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %subsystem_device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %54)
  %cmp4.i.i = icmp eq i16 %54, 4352
  br i1 %cmp4.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i.snd_intel8x0_inside_vm.exit.i_crit_edge

land.lhs.true.i.i.snd_intel8x0_inside_vm.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_inside_vm.exit.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.then.i.i
  %result.0.ph.i.i = phi i32 [ 1, %land.lhs.true.i.i.do.end.i.i_crit_edge ], [ %49, %if.then.i.i ], [ 1, %if.end.i.i.do.end.i.i_crit_edge ]
  %msg.0.ph.i.i = phi ptr [ @.str.40, %land.lhs.true.i.i.do.end.i.i_crit_edge ], [ %cond.i.i, %if.then.i.i ], [ @.str.41, %if.end.i.i.do.end.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull %msg.0.ph.i.i) #13
  br label %snd_intel8x0_inside_vm.exit.i

snd_intel8x0_inside_vm.exit.i:                    ; preds = %do.end.i.i, %land.lhs.true.i.i.snd_intel8x0_inside_vm.exit.i_crit_edge, %if.end.i.i.snd_intel8x0_inside_vm.exit.i_crit_edge
  %result.029.i.i = phi i32 [ %result.0.ph.i.i, %do.end.i.i ], [ 0, %land.lhs.true.i.i.snd_intel8x0_inside_vm.exit.i_crit_edge ], [ 0, %if.end.i.i.snd_intel8x0_inside_vm.exit.i_crit_edge ]
  %55 = trunc i32 %result.029.i.i to i16
  %56 = ptrtoint ptr %buggy_irq.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load18.i = load i16, ptr %buggy_irq.i, align 4
  %bf.value19.i = shl i16 %55, 3
  %bf.shl20.i = and i16 %bf.value19.i, 8
  %bf.clear21.i = and i16 %bf.load18.i, -9
  %bf.set22.i = or i16 %bf.shl20.i, %bf.clear21.i
  store i16 %bf.set22.i, ptr %buggy_irq.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 7
  %57 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %58)
  %cmp25.i = icmp eq i16 %58, -32634
  br i1 %cmp25.i, label %land.lhs.true.i, label %snd_intel8x0_inside_vm.exit.i.if.end34.i_crit_edge

snd_intel8x0_inside_vm.exit.i.if.end34.i_crit_edge: ; preds = %snd_intel8x0_inside_vm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %snd_intel8x0_inside_vm.exit.i
  %59 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 29077, i16 %60)
  %cmp28.i = icmp eq i16 %60, 29077
  br i1 %cmp28.i, label %if.then30.i, label %land.lhs.true.i.if.end34.i_crit_edge

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set33.i = or i16 %bf.set22.i, 128
  %61 = ptrtoint ptr %buggy_irq.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %bf.set33.i, ptr %buggy_irq.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then30.i, %land.lhs.true.i.if.end34.i_crit_edge, %snd_intel8x0_inside_vm.exit.i.if.end34.i_crit_edge
  %call35.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef %shortname) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.end34.i.cleanup_crit_edge, label %if.end39.i

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp40.i = icmp eq i32 %35, 3
  br i1 %cmp40.i, label %if.end39.i.for.body.lr.ph.i_crit_edge, label %if.else.i

if.end39.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph.i

if.else.i:                                        ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2, i32 3
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %63, 8
  %64 = and i32 %and.i, 2
  %call48.i = call ptr @pcim_iomap(ptr noundef %pci, i32 noundef %64, i32 noundef 0) #9
  %65 = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 2
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call48.i, ptr %65, align 4
  %flags53.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 3, i32 3
  %67 = ptrtoint ptr %flags53.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags53.i, align 4
  %and54.i = and i32 %68, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  %spec.select294.i = select i1 %tobool55.not.i, i32 1, i32 3
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.else.i, %if.end39.i.for.body.lr.ph.i_crit_edge
  %.sink291.i = phi i32 [ 0, %if.end39.i.for.body.lr.ph.i_crit_edge ], [ %spec.select294.i, %if.else.i ]
  %switch.select.i = phi ptr [ @snd_intel8x0_init.ali_regs, %if.end39.i.for.body.lr.ph.i_crit_edge ], [ @snd_intel8x0_init.intel_regs, %if.else.i ]
  %call43.i = call ptr @pcim_iomap(ptr noundef %pci, i32 noundef %.sink291.i, i32 noundef 0) #9
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 3
  %69 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call43.i, ptr %bmaddr.i, align 4
  %arrayidx64.i = getelementptr [5 x i32], ptr @snd_intel8x0_init.bdbars, i32 0, i32 %35
  %70 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx64.i, align 4
  %bdbars_count.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 21
  %72 = ptrtoint ptr %bdbars_count.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %bdbars_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %switch.selectcmp275.i = icmp eq i32 %35, 4
  %switch.select276.i = select i1 %switch.selectcmp275.i, ptr @snd_intel8x0_init.nforce_regs, ptr %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp74.i = icmp eq i32 %35, 2
  %not.cmp74.i = xor i1 %cmp74.i, true
  %cond.i = zext i1 %not.cmp74.i to i32
  %spec.select.i = select i1 %cmp74.i, i32 8, i32 6
  %spec.select292.i = select i1 %cmp74.i, i32 6, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end85.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0279.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end85.i.for.body.i_crit_edge ]
  %arrayidx69.i = getelementptr %struct.intel8x0, ptr %37, i32 0, i32 8, i32 %i.0279.i
  %73 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %i.0279.i, ptr %arrayidx69.i, align 4
  %arrayidx71.i = getelementptr %struct.ich_reg_info, ptr %switch.select276.i, i32 %i.0279.i
  %offset.i = getelementptr %struct.ich_reg_info, ptr %switch.select276.i, i32 %i.0279.i, i32 1
  %74 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset.i, align 4
  %reg_offset.i = getelementptr %struct.intel8x0, ptr %37, i32 0, i32 8, i32 %i.0279.i, i32 1
  %76 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %reg_offset.i, align 4
  %77 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx71.i, align 4
  %int_sta_mask73.i = getelementptr %struct.intel8x0, ptr %37, i32 0, i32 8, i32 %i.0279.i, i32 21
  %79 = ptrtoint ptr %int_sta_mask73.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %int_sta_mask73.i, align 4
  %80 = getelementptr %struct.intel8x0, ptr %37, i32 0, i32 8, i32 %i.0279.i, i32 19
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.select.i, ptr %80, align 4
  %82 = getelementptr %struct.intel8x0, ptr %37, i32 0, i32 8, i32 %i.0279.i, i32 20
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.select292.i, ptr %82, align 4
  br i1 %cmp40.i, label %if.then83.i, label %for.body.i.if.end85.i_crit_edge

for.body.i.if.end85.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

if.then83.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %75, -64
  %div274.i = lshr i32 %sub.i, 4
  %ali_slot.i = getelementptr %struct.intel8x0, ptr %37, i32 0, i32 8, i32 %i.0279.i, i32 22
  %84 = ptrtoint ptr %ali_slot.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div274.i, ptr %ali_slot.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then83.i, %for.body.i.if.end85.i_crit_edge
  %pos_shift.i = getelementptr %struct.intel8x0, ptr %37, i32 0, i32 8, i32 %i.0279.i, i32 10
  %85 = ptrtoint ptr %pos_shift.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cond.i, ptr %pos_shift.i, align 4
  %inc.i = add nuw i32 %i.0279.i, 1
  %86 = ptrtoint ptr %bdbars_count.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bdbars_count.i, align 4
  %cmp67.i = icmp ult i32 %inc.i, %87
  br i1 %cmp67.i, label %if.end85.i.for.body.i_crit_edge, label %for.end.i

if.end85.i.for.body.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end85.i
  %phi.bo.i = shl i32 %87, 8
  %88 = ptrtoint ptr %buggy_irq.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load89.i = load i16, ptr %buggy_irq.i, align 4
  %89 = and i16 %bf.load89.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool91.not.i = icmp eq i16 %89, 0
  %cond92.i = select i1 %tobool91.not.i, i32 2, i32 5
  %call.i.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef %cond92.i, i32 noundef 0, i32 noundef %phi.bo.i) #9
  %bdbars.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 22
  %90 = ptrtoint ptr %bdbars.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i.i, ptr %bdbars.i, align 4
  %tobool98.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool98.not.i, label %for.end.i.cleanup_crit_edge, label %for.cond101.preheader.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond101.preheader.i:                          ; preds = %for.end.i
  %91 = ptrtoint ptr %bdbars_count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bdbars_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp103282.not.i = icmp eq i32 %92, 0
  br i1 %cmp103282.not.i, label %for.cond101.preheader.i.for.end119.i_crit_edge, label %for.cond101.preheader.i.for.body105.i_crit_edge

for.cond101.preheader.i.for.body105.i_crit_edge:  ; preds = %for.cond101.preheader.i
  br label %for.body105.i

for.cond101.preheader.i.for.end119.i_crit_edge:   ; preds = %for.cond101.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end119.i

for.body105.i:                                    ; preds = %for.body105.i.for.body105.i_crit_edge, %for.cond101.preheader.i.for.body105.i_crit_edge
  %int_sta_masks.0284.i = phi i32 [ %or.i, %for.body105.i.for.body105.i_crit_edge ], [ 0, %for.cond101.preheader.i.for.body105.i_crit_edge ]
  %i.1283.i = phi i32 [ %inc118.i, %for.body105.i.for.body105.i_crit_edge ], [ 0, %for.cond101.preheader.i.for.body105.i_crit_edge ]
  %93 = ptrtoint ptr %bdbars.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bdbars.i, align 4
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %area.i, align 4
  %mul110.i = shl i32 %i.1283.i, 6
  %add.ptr.i = getelementptr i32, ptr %96, i32 %mul110.i
  %bdbar.i = getelementptr %struct.intel8x0, ptr %37, i32 0, i32 8, i32 %i.1283.i, i32 2
  %97 = ptrtoint ptr %bdbar.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr.i, ptr %bdbar.i, align 4
  %addr112.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %94, i32 0, i32 2
  %98 = ptrtoint ptr %addr112.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr112.i, align 4
  %mul115.i = shl i32 %i.1283.i, 8
  %add.i = add i32 %99, %mul115.i
  %bdbar_addr.i = getelementptr %struct.intel8x0, ptr %37, i32 0, i32 8, i32 %i.1283.i, i32 3
  %100 = ptrtoint ptr %bdbar_addr.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add.i, ptr %bdbar_addr.i, align 4
  %int_sta_mask116.i = getelementptr %struct.intel8x0, ptr %37, i32 0, i32 8, i32 %i.1283.i, i32 21
  %101 = ptrtoint ptr %int_sta_mask116.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %int_sta_mask116.i, align 4
  %or.i = or i32 %102, %int_sta_masks.0284.i
  %inc118.i = add nuw i32 %i.1283.i, 1
  %103 = ptrtoint ptr %bdbars_count.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bdbars_count.i, align 4
  %cmp103.i = icmp ult i32 %inc118.i, %104
  br i1 %cmp103.i, label %for.body105.i.for.body105.i_crit_edge, label %for.body105.i.for.end119.i_crit_edge

for.body105.i.for.end119.i_crit_edge:             ; preds = %for.body105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end119.i

for.body105.i.for.body105.i_crit_edge:            ; preds = %for.body105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body105.i

for.end119.i:                                     ; preds = %for.body105.i.for.end119.i_crit_edge, %for.cond101.preheader.i.for.end119.i_crit_edge
  %int_sta_masks.0.lcssa.i = phi i32 [ 0, %for.cond101.preheader.i.for.end119.i_crit_edge ], [ %or.i, %for.body105.i.for.end119.i_crit_edge ]
  %cond122.i = select i1 %cmp40.i, i32 24, i32 48
  %int_sta_reg.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 23
  %105 = ptrtoint ptr %int_sta_reg.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %cond122.i, ptr %int_sta_reg.i, align 4
  %int_sta_mask123.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 24
  %106 = ptrtoint ptr %int_sta_mask123.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %int_sta_masks.0.lcssa.i, ptr %int_sta_mask123.i, align 4
  call void @pci_set_master(ptr noundef %pci) #9
  %107 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %37, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %108, label %sw.default130.i [
    i32 1, label %for.end119.i.sw.epilog134.i_crit_edge
    i32 2, label %sw.bb126.i
  ]

for.end119.i.sw.epilog134.i_crit_edge:            ; preds = %for.end119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog134.i

sw.bb126.i:                                       ; preds = %for.end119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog134.i

sw.default130.i:                                  ; preds = %for.end119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog134.i

sw.epilog134.i:                                   ; preds = %sw.default130.i, %sw.bb126.i, %for.end119.i.sw.epilog134.i_crit_edge
  %.sink293.i = phi i32 [ 2, %sw.default130.i ], [ 3, %sw.bb126.i ], [ 3, %for.end119.i.sw.epilog134.i_crit_edge ]
  %ich_codec_bits.sink.i = phi ptr [ @ich_codec_bits, %sw.default130.i ], [ @sis_codec_bits, %sw.bb126.i ], [ @ich_codec_bits, %for.end119.i.sw.epilog134.i_crit_edge ]
  %.sink.i = phi i32 [ 3072, %sw.default130.i ], [ 527360, %sw.bb126.i ], [ 536873984, %for.end119.i.sw.epilog134.i_crit_edge ]
  %max_codecs131.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 15
  %110 = ptrtoint ptr %max_codecs131.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %.sink293.i, ptr %max_codecs131.i, align 4
  %codec_bit132.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 17
  %111 = ptrtoint ptr %codec_bit132.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %ich_codec_bits.sink.i, ptr %codec_bit132.i, align 4
  %codec_ready_bits133.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 19
  %112 = ptrtoint ptr %codec_ready_bits133.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %.sink.i, ptr %codec_ready_bits133.i, align 4
  %codec_isr_bits.i = getelementptr inbounds %struct.intel8x0, ptr %37, i32 0, i32 18
  br label %for.body139.i

for.body139.i:                                    ; preds = %for.body139.i.for.body139.i_crit_edge, %sw.epilog134.i
  %i.2287.i = phi i32 [ 0, %sw.epilog134.i ], [ %inc144.i, %for.body139.i.for.body139.i_crit_edge ]
  %113 = ptrtoint ptr %codec_bit132.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %codec_bit132.i, align 4
  %arrayidx141.i = getelementptr i32, ptr %114, i32 %i.2287.i
  %115 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx141.i, align 4
  %117 = ptrtoint ptr %codec_isr_bits.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %codec_isr_bits.i, align 4
  %or142.i = or i32 %118, %116
  store i32 %or142.i, ptr %codec_isr_bits.i, align 4
  %inc144.i = add nuw i32 %i.2287.i, 1
  %119 = ptrtoint ptr %max_codecs131.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max_codecs131.i, align 4
  %cmp137.i = icmp ult i32 %inc144.i, %120
  br i1 %cmp137.i, label %for.body139.i.for.body139.i_crit_edge, label %for.end145.i

for.body139.i.for.body139.i_crit_edge:            ; preds = %for.body139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body139.i

for.end145.i:                                     ; preds = %for.body139.i
  %call146.i = call fastcc i32 @snd_intel8x0_chip_init(ptr noundef %37, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %cmp147.i = icmp slt i32 %call146.i, 0
  br i1 %cmp147.i, label %for.end145.i.cleanup_crit_edge, label %if.end150.i

for.end145.i.cleanup_crit_edge:                   ; preds = %for.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end150.i:                                      ; preds = %for.end145.i
  %irq151.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %121 = ptrtoint ptr %irq151.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %irq151.i, align 4
  %call.i277.i = call i32 @request_threaded_irq(i32 noundef %122, ptr noundef nonnull @snd_intel8x0_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277.i)
  %tobool153.not.i = icmp eq i32 %call.i277.i, 0
  br i1 %tobool153.not.i, label %if.end40, label %do.end157.i

do.end157.i:                                      ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev158.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %123 = ptrtoint ptr %dev158.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev158.i, align 8
  %125 = ptrtoint ptr %irq151.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq151.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.34, i32 noundef %126) #13
  br label %cleanup

if.end40:                                         ; preds = %if.end150.i
  %127 = ptrtoint ptr %irq151.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %irq151.i, align 4
  %129 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 33
  %130 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %128, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 10
  %131 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @snd_intel8x0_free, ptr %private_free.i, align 4
  %132 = load i32, ptr @ac97_clock, align 4
  %133 = load ptr, ptr @ac97_quirk, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #9
  %134 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !532
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #9
  %135 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 1
  %136 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 2
  %137 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 3
  %138 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  %spdif_idx.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 10
  %139 = ptrtoint ptr %spdif_idx.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %spdif_idx.i, align 4
  %140 = load i32, ptr @spdif_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i110 = icmp eq i32 %140, 0
  br i1 %tobool.not.i110, label %if.then.i111, label %if.end40.if.end.i_crit_edge

if.end40.if.end.i_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i111:                                     ; preds = %if.end40
  %141 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %6, align 4
  %143 = zext i32 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %142, label %if.then.i111.if.end.i_crit_edge [
    i32 4, label %if.then.i111.if.end.sink.split.i_crit_edge
    i32 3, label %if.then.i111.if.end.sink.split.i_crit_edge204
    i32 1, label %sw.bb4.i
  ]

if.then.i111.if.end.sink.split.i_crit_edge204:    ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split.i

if.then.i111.if.end.sink.split.i_crit_edge:       ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split.i

if.then.i111.if.end.i_crit_edge:                  ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

sw.bb4.i:                                         ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %sw.bb4.i, %if.then.i111.if.end.sink.split.i_crit_edge, %if.then.i111.if.end.sink.split.i_crit_edge204
  %.sink.i112 = phi i32 [ 5, %sw.bb4.i ], [ 3, %if.then.i111.if.end.sink.split.i_crit_edge ], [ 3, %if.then.i111.if.end.sink.split.i_crit_edge204 ]
  %144 = ptrtoint ptr %spdif_idx.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %.sink.i112, ptr %spdif_idx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.then.i111.if.end.i_crit_edge, %if.end40.if.end.i_crit_edge
  %in_ac97_init.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 9
  %145 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %bf.load.i113 = load i16, ptr %in_ac97_init.i, align 4
  %bf.set.i114 = or i16 %bf.load.i113, 1024
  store i16 %bf.set.i114, ptr %in_ac97_init.i, align 4
  %146 = call ptr @memset(ptr %136, i32 0, i32 16)
  %147 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %6, ptr %ac97.i, align 4
  %148 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @snd_intel8x0_mixer_free_ac97, ptr %135, align 4
  %149 = and i16 %bf.load.i113, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool8.not.i = icmp eq i16 %149, 0
  %spec.select.i115 = select i1 %tobool8.not.i, i32 2080, i32 2336
  %150 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %spec.select.i115, ptr %138, align 4
  %151 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %152)
  %cmp.not.i = icmp eq i32 %152, 3
  %bmaddr.i468.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 3
  br i1 %cmp.not.i, label %if.end.i.for.body72.i_crit_edge, label %if.then13.i

if.end.i.for.body72.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body72.i

if.then13.i:                                      ; preds = %if.end.i
  %153 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %154, i32 48
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !535
  %156 = call i32 @llvm.bswap.i32(i32 %155) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %157 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %bf.load14.i = load i16, ptr %in_ac97_init.i, align 4
  %bf.set16.i = or i16 %bf.load14.i, 512
  store i16 %bf.set16.i, ptr %in_ac97_init.i, align 4
  %max_codecs.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 15
  %158 = ptrtoint ptr %max_codecs.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %max_codecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp17490.not.i = icmp eq i32 %159, 0
  br i1 %cmp17490.not.i, label %for.end.thread.i, label %for.body.lr.ph.i116

for.end.thread.i:                                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear63508.i = and i16 %bf.load14.i, -513
  %160 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %bf.clear63508.i, ptr %in_ac97_init.i, align 4
  br label %190

for.body.lr.ph.i116:                              ; preds = %if.then13.i
  %codec_bit.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 17
  %addr.i.i.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 2
  %codec_ready_bits.i.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 19
  br label %for.body.i118

for.body.i118:                                    ; preds = %for.inc.i.for.body.i118_crit_edge, %for.body.lr.ph.i116
  %codecs.0494.i = phi i32 [ 0, %for.body.lr.ph.i116 ], [ %codecs.1.i, %for.inc.i.for.body.i118_crit_edge ]
  %i.0491.i = phi i32 [ 0, %for.body.lr.ph.i116 ], [ %inc60.i, %for.inc.i.for.body.i118_crit_edge ]
  %161 = ptrtoint ptr %codec_bit.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %codec_bit.i, align 4
  %arrayidx.i = getelementptr i32, ptr %162, i32 %i.0491.i
  %163 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i, align 4
  %and.i117 = and i32 %164, %156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool18.not.i = icmp eq i32 %and.i117, 0
  br i1 %tobool18.not.i, label %for.body.i118.for.inc.i_crit_edge, label %if.end20.i

for.body.i118.for.inc.i_crit_edge:                ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end20.i:                                       ; preds = %for.body.i118
  %165 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp22.i = icmp eq i32 %166, 1
  br i1 %cmp22.i, label %if.then23.i, label %if.else.i123

if.then23.i:                                      ; preds = %if.end20.i
  %call.i.i119 = call fastcc i32 @snd_intel8x0_codec_semaphore(ptr noundef %6, i32 noundef %codecs.0494.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i119)
  %cmp.i.i120 = icmp sgt i32 %call.i.i119, -1
  br i1 %cmp.i.i120, label %if.then.i.i122, label %if.then23.i.snd_intel8x0_codec_read_test.exit.i_crit_edge

if.then23.i.snd_intel8x0_codec_read_test.exit.i_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_codec_read_test.exit.i

if.then.i.i122:                                   ; preds = %if.then23.i
  %mul.i.i = shl i32 %codecs.0494.i, 7
  %167 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %168, i32 %mul.i.i
  %169 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #9, !srcloc !537
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  %170 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %171, i32 48
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #9, !srcloc !535
  %173 = call i32 @llvm.bswap.i32(i32 %172) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %and.i.i = and i32 %173, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i121 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i121, label %if.then.i.i122.snd_intel8x0_codec_read_test.exit.i_crit_edge, label %if.then3.i.i

if.then.i.i122.snd_intel8x0_codec_read_test.exit.i_crit_edge: ; preds = %if.then.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_codec_read_test.exit.i

if.then3.i.i:                                     ; preds = %if.then.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  %174 = ptrtoint ptr %codec_ready_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %codec_ready_bits.i.i, align 4
  %176 = and i32 %175, -2
  %neg.i.i = xor i32 %176, -2
  %and4.i.i = and i32 %neg.i.i, %173
  %177 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %178, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %179 = call i32 @llvm.bswap.i32(i32 %and4.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %179) #9, !srcloc !540
  br label %snd_intel8x0_codec_read_test.exit.i

snd_intel8x0_codec_read_test.exit.i:              ; preds = %if.then3.i.i, %if.then.i.i122.snd_intel8x0_codec_read_test.exit.i_crit_edge, %if.then23.i.snd_intel8x0_codec_read_test.exit.i_crit_edge
  %180 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i467.i = getelementptr i8, ptr %181, i32 128
  %182 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i467.i) #9, !srcloc !541
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %183 = and i8 %182, 3
  %and25.i = zext i8 %183 to i32
  %arrayidx26.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 14, i32 %codecs.0494.i
  %184 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %and25.i, ptr %arrayidx26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %183)
  %cmp29.i = icmp eq i8 %183, 3
  br i1 %cmp29.i, label %do.end.i, label %snd_intel8x0_codec_read_test.exit.i.if.end59.i_crit_edge, !prof !543

snd_intel8x0_codec_read_test.exit.i.if.end59.i_crit_edge: ; preds = %snd_intel8x0_codec_read_test.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

do.end.i:                                         ; preds = %snd_intel8x0_codec_read_test.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2173, i32 noundef 9, ptr noundef null) #9
  %185 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %arrayidx26.i, align 4
  br label %if.end59.i

if.else.i123:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx58.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 14, i32 %codecs.0494.i
  %186 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %i.0491.i, ptr %arrayidx58.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else.i123, %do.end.i, %snd_intel8x0_codec_read_test.exit.i.if.end59.i_crit_edge
  %inc.i124 = add i32 %codecs.0494.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end59.i, %for.body.i118.for.inc.i_crit_edge
  %codecs.1.i = phi i32 [ %inc.i124, %if.end59.i ], [ %codecs.0494.i, %for.body.i118.for.inc.i_crit_edge ]
  %inc60.i = add nuw i32 %i.0491.i, 1
  %187 = ptrtoint ptr %max_codecs.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %max_codecs.i, align 4
  %cmp17.i = icmp ult i32 %inc60.i, %188
  br i1 %cmp17.i, label %for.inc.i.for.body.i118_crit_edge, label %for.end.i125

for.inc.i.for.body.i118_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i118

for.end.i125:                                     ; preds = %for.inc.i
  %189 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %bf.load62.i = load i16, ptr %in_ac97_init.i, align 4
  %bf.clear63.i = and i16 %bf.load62.i, -513
  store i16 %bf.clear63.i, ptr %in_ac97_init.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %codecs.1.i)
  %tobool65.not.i = icmp eq i32 %codecs.1.i, 0
  br i1 %tobool65.not.i, label %for.end.i125._crit_edge, label %for.end.i125.if.end82.i_crit_edge

for.end.i125.if.end82.i_crit_edge:                ; preds = %for.end.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

for.end.i125._crit_edge:                          ; preds = %for.end.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %190

190:                                              ; preds = %for.end.i125._crit_edge, %for.end.thread.i
  br label %if.end82.i

for.body72.i:                                     ; preds = %for.inc79.i.for.body72.i_crit_edge, %if.end.i.for.body72.i_crit_edge
  %i.1497.i = phi i32 [ %inc80.i, %for.inc79.i.for.body72.i_crit_edge ], [ 0, %if.end.i.for.body72.i_crit_edge ]
  %191 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i469.i = getelementptr i8, ptr %192, i32 52
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i469.i) #9, !srcloc !535
  %194 = call i32 @llvm.bswap.i32(i32 %193) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %and74.i = and i32 %194, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %for.inc79.i, label %for.body72.i.if.end82.i_crit_edge

for.body72.i.if.end82.i_crit_edge:                ; preds = %for.body72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

for.inc79.i:                                      ; preds = %for.body72.i
  %or78.i = or i32 %194, 64
  %195 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i471.i = getelementptr i8, ptr %196, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %197 = call i32 @llvm.bswap.i32(i32 %or78.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i471.i, i32 %197) #9, !srcloc !540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %198(i32 noundef 214748) #9
  %inc80.i = add nuw nsw i32 %i.1497.i, 1
  %exitcond.not.i = icmp eq i32 %inc80.i, 100
  br i1 %exitcond.not.i, label %for.inc79.i.if.end82.i_crit_edge, label %for.inc79.i.for.body72.i_crit_edge

for.inc79.i.for.body72.i_crit_edge:               ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body72.i

for.inc79.i.if.end82.i_crit_edge:                 ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

if.end82.i:                                       ; preds = %for.inc79.i.if.end82.i_crit_edge, %for.body72.i.if.end82.i_crit_edge, %190, %for.end.i125.if.end82.i_crit_edge
  %codecs.4.i = phi i32 [ 1, %190 ], [ %codecs.1.i, %for.end.i125.if.end82.i_crit_edge ], [ 1, %for.inc79.i.if.end82.i_crit_edge ], [ 2, %for.body72.i.if.end82.i_crit_edge ]
  %ops.0.i = phi ptr [ @snd_intel8x0_mixer.standard_bus_ops, %190 ], [ @snd_intel8x0_mixer.standard_bus_ops, %for.end.i125.if.end82.i_crit_edge ], [ @snd_intel8x0_mixer.ali_bus_ops, %for.body72.i.if.end82.i_crit_edge ], [ @snd_intel8x0_mixer.ali_bus_ops, %for.inc79.i.if.end82.i_crit_edge ]
  %card.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 5
  %199 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %card.i, align 4
  %call83.i = call i32 @snd_ac97_bus(ptr noundef %200, i32 noundef 0, ptr noundef nonnull %ops.0.i, ptr noundef %6, ptr noundef nonnull %pbus.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %cmp84.i = icmp slt i32 %call83.i, 0
  br i1 %cmp84.i, label %if.end82.i.__err.i_crit_edge, label %if.end87.i

if.end82.i.__err.i_crit_edge:                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__err.i

if.end87.i:                                       ; preds = %if.end82.i
  %201 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pbus.i, align 4
  %private_free88.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %private_free88.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @snd_intel8x0_mixer_free_ac97_bus, ptr %private_free88.i, align 4
  %204 = add i32 %132, -8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %204)
  %205 = icmp ult i32 %204, 40001
  br i1 %205, label %if.then93.i, label %if.end87.i.if.end94.i_crit_edge

if.end87.i.if.end94.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i

if.then93.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %clock.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %202, i32 0, i32 6
  %206 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %132, ptr %clock.i, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then93.i, %if.end87.i.if.end94.i_crit_edge
  %207 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %208)
  %cmp96.i = icmp eq i32 %208, 3
  %no_vra.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %202, i32 0, i32 5
  %209 = ptrtoint ptr %no_vra.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load99.i = load i8, ptr %no_vra.i, align 2
  %..i = select i1 %cmp96.i, i8 -128, i8 64
  %bf.set101.i = or i8 %..i, %bf.load99.i
  store i8 %bf.set101.i, ptr %no_vra.i, align 2
  %ac97_bus.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 12
  %210 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %202, ptr %ac97_bus.i, align 4
  %ncodecs.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 16
  %211 = ptrtoint ptr %ncodecs.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %codecs.4.i, ptr %ncodecs.i, align 4
  %pci.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 4
  %212 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pci.i, align 4
  %214 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %213, ptr %136, align 4
  br label %for.body111.i

for.body111.i:                                    ; preds = %for.inc132.i.for.body111.i_crit_edge, %if.end94.i
  %i.2499.i = phi i32 [ %inc133.i, %for.inc132.i.for.body111.i_crit_edge ], [ 0, %if.end94.i ]
  %conv112.i = trunc i32 %i.2499.i to i16
  %215 = ptrtoint ptr %137 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv112.i, ptr %137, align 4
  %216 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pbus.i, align 4
  %arrayidx114.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 13, i32 %i.2499.i
  %call115.i = call i32 @snd_ac97_mixer(ptr noundef %217, ptr noundef nonnull %ac97.i, ptr noundef %arrayidx114.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %cmp116.i = icmp slt i32 %call115.i, 0
  br i1 %cmp116.i, label %if.then118.i, label %for.body111.i.for.inc132.i_crit_edge

for.body111.i.for.inc132.i_crit_edge:             ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc132.i

if.then118.i:                                     ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call115.i)
  %cmp119.not.i = icmp eq i32 %call115.i, -13
  br i1 %cmp119.not.i, label %if.then118.i.if.end126.i_crit_edge, label %do.end124.i

if.then118.i.if.end126.i_crit_edge:               ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i

do.end124.i:                                      ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #11
  %218 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %card.i, align 4
  %dev.i126 = getelementptr inbounds %struct.snd_card, ptr %219, i32 0, i32 27
  %220 = ptrtoint ptr %dev.i126 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev.i126, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.54, i32 noundef %i.2499.i) #13
  br label %if.end126.i

if.end126.i:                                      ; preds = %do.end124.i, %if.then118.i.if.end126.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2499.i)
  %cmp127.i = icmp eq i32 %i.2499.i, 0
  br i1 %cmp127.i, label %if.end126.i.__err.i_crit_edge, label %if.end126.i.for.inc132.i_crit_edge

if.end126.i.for.inc132.i_crit_edge:               ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc132.i

if.end126.i.__err.i_crit_edge:                    ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__err.i

for.inc132.i:                                     ; preds = %if.end126.i.for.inc132.i_crit_edge, %for.body111.i.for.inc132.i_crit_edge
  %inc133.i = add nuw i32 %i.2499.i, 1
  %exitcond504.not.i = icmp eq i32 %inc133.i, %codecs.4.i
  br i1 %exitcond504.not.i, label %for.end134.i, label %for.inc132.i.for.body111.i_crit_edge

for.inc132.i.for.body111.i_crit_edge:             ; preds = %for.inc132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body111.i

for.end134.i:                                     ; preds = %for.inc132.i
  %ac97135.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 13
  %222 = ptrtoint ptr %ac97135.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ac97135.i, align 4
  %call137.i = call i32 @snd_ac97_tune_hardware(ptr noundef %223, ptr noundef nonnull @ac97_quirks, ptr noundef %133) #9
  %224 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %225)
  %cmp139.i = icmp eq i32 %225, 1
  br i1 %cmp139.i, label %if.then141.i, label %for.end134.i.if.end145.i_crit_edge

for.end134.i.if.end145.i_crit_edge:               ; preds = %for.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145.i

if.then141.i:                                     ; preds = %for.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  %226 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pbus.i, align 4
  %isdin.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %227, i32 0, i32 5
  %228 = ptrtoint ptr %isdin.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %bf.load142.i = load i8, ptr %isdin.i, align 2
  %bf.set144.i = or i8 %bf.load142.i, 32
  store i8 %bf.set144.i, ptr %isdin.i, align 2
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then141.i, %for.end134.i.if.end145.i_crit_edge
  %229 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %230)
  %cmp147.not.i = icmp eq i32 %230, 1
  %spec.select465.i = select i1 %cmp147.not.i, i32 6, i32 4
  %231 = ptrtoint ptr %spdif_idx.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %spdif_idx.i, align 4
  %.lobit.i = ashr i32 %232, 31
  %i.4.i = add nsw i32 %spec.select465.i, %.lobit.i
  %233 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %pbus.i, align 4
  %conv156.i = trunc i32 %i.4.i to i16
  %call157.i = call i32 @snd_ac97_pcm_assign(ptr noundef %234, i16 noundef zeroext %conv156.i, ptr noundef nonnull @ac97_pcm_defs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %cmp158.i = icmp slt i32 %call157.i, 0
  br i1 %cmp158.i, label %if.end145.i.__err.i_crit_edge, label %if.end161.i

if.end145.i.__err.i_crit_edge:                    ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__err.i

if.end161.i:                                      ; preds = %if.end145.i
  %235 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pbus.i, align 4
  %pcms.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %236, i32 0, i32 10
  %237 = ptrtoint ptr %pcms.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %pcms.i, align 4
  %pcm.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 8, i32 1, i32 23
  %239 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %238, ptr %pcm.i, align 4
  %240 = load ptr, ptr %pcms.i, align 4
  %arrayidx165.i = getelementptr %struct.ac97_pcm, ptr %240, i32 1
  %pcm168.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 8, i32 0, i32 23
  %241 = ptrtoint ptr %pcm168.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %arrayidx165.i, ptr %pcm168.i, align 4
  %242 = load ptr, ptr %pcms.i, align 4
  %arrayidx170.i = getelementptr %struct.ac97_pcm, ptr %242, i32 2
  %pcm173.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 8, i32 2, i32 23
  %243 = ptrtoint ptr %pcm173.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %arrayidx170.i, ptr %pcm173.i, align 4
  %244 = ptrtoint ptr %spdif_idx.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %spdif_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %245)
  %cmp175.i = icmp sgt i32 %245, -1
  br i1 %cmp175.i, label %if.then177.i, label %if.end161.i.if.end184.i_crit_edge

if.end161.i.if.end184.i_crit_edge:                ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184.i

if.then177.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #11
  %246 = ptrtoint ptr %pcms.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %pcms.i, align 4
  %arrayidx179.i = getelementptr %struct.ac97_pcm, ptr %247, i32 3
  %pcm183.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 8, i32 %245, i32 23
  %248 = ptrtoint ptr %pcm183.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %arrayidx179.i, ptr %pcm183.i, align 4
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.then177.i, %if.end161.i.if.end184.i_crit_edge
  %249 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %250)
  %cmp186.i = icmp eq i32 %250, 1
  br i1 %cmp186.i, label %if.then203.i, label %if.end184.i.if.end251.i_crit_edge

if.end184.i.if.end251.i_crit_edge:                ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end251.i

if.then203.i:                                     ; preds = %if.end184.i
  %251 = ptrtoint ptr %pcms.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %pcms.i, align 4
  %arrayidx190.i = getelementptr %struct.ac97_pcm, ptr %252, i32 4
  %pcm193.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 8, i32 4, i32 23
  %253 = ptrtoint ptr %pcm193.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %arrayidx190.i, ptr %pcm193.i, align 4
  %254 = load ptr, ptr %pcms.i, align 4
  %arrayidx195.i = getelementptr %struct.ac97_pcm, ptr %254, i32 5
  %pcm198.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 8, i32 3, i32 23
  %255 = ptrtoint ptr %pcm198.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %arrayidx195.i, ptr %pcm198.i, align 4
  %256 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i473.i = getelementptr i8, ptr %257, i32 128
  %258 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i473.i) #9, !srcloc !541
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %tobool213.not.i = icmp eq ptr %arrayidx190.i, null
  %259 = and i8 %258, 7
  br i1 %tobool213.not.i, label %if.then203.i.if.end250.i_crit_edge, label %if.then214.i

if.then203.i.if.end250.i_crit_edge:               ; preds = %if.then203.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250.i

if.then214.i:                                     ; preds = %if.then203.i
  %260 = or i8 %259, 8
  %ac97_sdin218.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 14
  %261 = ptrtoint ptr %ac97_sdin218.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %ac97_sdin218.i, align 4
  %.tr.i = trunc i32 %262 to i8
  %263 = shl i8 %.tr.i, 4
  %conv222.i = or i8 %263, %260
  %arrayidx228.i = getelementptr %struct.ac97_pcm, ptr %252, i32 4, i32 5, i32 0, i32 3, i32 1
  %264 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx228.i, align 4
  %tobool229.not.i = icmp eq ptr %265, null
  br i1 %tobool229.not.i, label %for.cond223.i, label %if.then214.i.if.then230.i_crit_edge

if.then214.i.if.then230.i_crit_edge:              ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then230.i

for.cond223.i:                                    ; preds = %if.then214.i
  %arrayidx228.1.i = getelementptr %struct.ac97_pcm, ptr %252, i32 4, i32 5, i32 0, i32 3, i32 2
  %266 = ptrtoint ptr %arrayidx228.1.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx228.1.i, align 4
  %tobool229.not.1.i = icmp eq ptr %267, null
  br i1 %tobool229.not.1.i, label %for.cond223.1.i, label %for.cond223.i.if.then230.i_crit_edge

for.cond223.i.if.then230.i_crit_edge:             ; preds = %for.cond223.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then230.i

for.cond223.1.i:                                  ; preds = %for.cond223.i
  %arrayidx228.2.i = getelementptr %struct.ac97_pcm, ptr %252, i32 4, i32 5, i32 0, i32 3, i32 3
  %268 = ptrtoint ptr %arrayidx228.2.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx228.2.i, align 4
  %tobool229.not.2.i = icmp eq ptr %269, null
  br i1 %tobool229.not.2.i, label %for.cond223.1.i.if.end250.i_crit_edge, label %for.cond223.1.i.if.then230.i_crit_edge

for.cond223.1.i.if.then230.i_crit_edge:           ; preds = %for.cond223.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then230.i

for.cond223.1.i.if.end250.i_crit_edge:            ; preds = %for.cond223.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250.i

if.then230.i:                                     ; preds = %for.cond223.1.i.if.then230.i_crit_edge, %for.cond223.i.if.then230.i_crit_edge, %if.then214.i.if.then230.i_crit_edge
  %num236.i = getelementptr inbounds %struct.snd_ac97, ptr %265, i32 0, i32 11
  %270 = ptrtoint ptr %num236.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %num236.i, align 8
  %idxprom.i = zext i16 %271 to i32
  %arrayidx237.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 14, i32 %idxprom.i
  %272 = ptrtoint ptr %arrayidx237.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx237.i, align 4
  %.tr464.i = trunc i32 %273 to i8
  %274 = shl i8 %.tr464.i, 6
  %conv241.i = or i8 %274, %conv222.i
  br label %if.end250.i

if.end250.i:                                      ; preds = %if.then230.i, %for.cond223.1.i.if.end250.i_crit_edge, %if.then203.i.if.end250.i_crit_edge
  %tmp208.0.i = phi i8 [ %conv241.i, %if.then230.i ], [ %conv222.i, %for.cond223.1.i.if.end250.i_crit_edge ], [ %259, %if.then203.i.if.end250.i_crit_edge ]
  %275 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i475.i = getelementptr i8, ptr %276, i32 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i475.i, i8 %tmp208.0.i) #9, !srcloc !545
  br label %if.end251.i

if.end251.i:                                      ; preds = %if.end250.i, %if.end184.i.if.end251.i_crit_edge
  %277 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pbus.i, align 4
  %pcms252.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %278, i32 0, i32 10
  %279 = ptrtoint ptr %pcms252.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %pcms252.i, align 4
  %r254.i = getelementptr inbounds %struct.ac97_pcm, ptr %280, i32 0, i32 5
  %281 = ptrtoint ptr %r254.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %r254.i, align 4
  %283 = and i16 %282, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %283)
  %tobool258.not.i = icmp eq i16 %283, 0
  br i1 %tobool258.not.i, label %if.end251.i.if.end285.i_crit_edge, label %if.then259.i

if.end251.i.if.end285.i_crit_edge:                ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285.i

if.then259.i:                                     ; preds = %if.end251.i
  %284 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %bf.load260.i = load i16, ptr %in_ac97_init.i, align 4
  %bf.set262.i = or i16 %bf.load260.i, -32768
  store i16 %bf.set262.i, ptr %in_ac97_init.i, align 4
  %285 = ptrtoint ptr %pcms252.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pcms252.i, align 4
  %r265.i = getelementptr inbounds %struct.ac97_pcm, ptr %286, i32 0, i32 5
  %287 = ptrtoint ptr %r265.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %r265.i, align 4
  %289 = and i16 %288, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %289)
  %tobool270.not.i = icmp eq i16 %289, 0
  br i1 %tobool270.not.i, label %if.then259.i.if.end285.i_crit_edge, label %if.then271.i

if.then259.i.if.end285.i_crit_edge:               ; preds = %if.then259.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285.i

if.then271.i:                                     ; preds = %if.then259.i
  %bf.set274.i = or i16 %bf.load260.i, -16384
  %290 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %bf.set274.i, ptr %in_ac97_init.i, align 4
  %291 = ptrtoint ptr %ac97135.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %ac97135.i, align 4
  %flags.i127 = getelementptr inbounds %struct.snd_ac97, ptr %292, i32 0, i32 19
  %293 = ptrtoint ptr %flags.i127 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %flags.i127, align 8
  %and277.i = and i32 %294, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277.i)
  %tobool278.not.i = icmp eq i32 %and277.i, 0
  br i1 %tobool278.not.i, label %if.then271.i.if.end285.i_crit_edge, label %if.then279.i

if.then271.i.if.end285.i_crit_edge:               ; preds = %if.then271.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end285.i

if.then279.i:                                     ; preds = %if.then271.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set282.i = or i16 %bf.load260.i, -8192
  %295 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 %bf.set282.i, ptr %in_ac97_init.i, align 4
  br label %if.end285.i

if.end285.i:                                      ; preds = %if.then279.i, %if.then271.i.if.end285.i_crit_edge, %if.then259.i.if.end285.i_crit_edge, %if.end251.i.if.end285.i_crit_edge
  %296 = ptrtoint ptr %pcms252.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %pcms252.i, align 4
  %rslots.i = getelementptr %struct.ac97_pcm, ptr %297, i32 0, i32 5, i32 1, i32 1
  %298 = ptrtoint ptr %rslots.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %rslots.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %299)
  %tobool291.not.i = icmp eq i16 %299, 0
  br i1 %tobool291.not.i, label %if.end285.i.if.end297.i_crit_edge, label %if.then292.i

if.end285.i.if.end297.i_crit_edge:                ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end297.i

if.then292.i:                                     ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #11
  %300 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %bf.load294.i = load i16, ptr %in_ac97_init.i, align 4
  %bf.set296.i = or i16 %bf.load294.i, 4096
  store i16 %bf.set296.i, ptr %in_ac97_init.i, align 4
  br label %if.end297.i

if.end297.i:                                      ; preds = %if.then292.i, %if.end285.i.if.end297.i_crit_edge
  %301 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %302)
  %cmp299.i = icmp eq i32 %302, 1
  br i1 %cmp299.i, label %if.then301.i, label %if.end297.i.if.end311.i_crit_edge

if.end297.i.if.end311.i_crit_edge:                ; preds = %if.end297.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end311.i

if.then301.i:                                     ; preds = %if.end297.i
  %303 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i477.i = getelementptr i8, ptr %304, i32 48
  %305 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i477.i) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %306 = and i32 %305, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %306)
  %cmp304.i = icmp eq i32 %306, 16384
  br i1 %cmp304.i, label %if.then306.i, label %if.then301.i.if.end311thread-pre-split.i_crit_edge

if.then301.i.if.end311thread-pre-split.i_crit_edge: ; preds = %if.then301.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end311thread-pre-split.i

if.then306.i:                                     ; preds = %if.then301.i
  call void @__sanitizer_cov_trace_pc() #11
  %307 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %bf.load307.i = load i16, ptr %in_ac97_init.i, align 4
  %bf.set309.i = or i16 %bf.load307.i, 2048
  store i16 %bf.set309.i, ptr %in_ac97_init.i, align 4
  br label %if.end311thread-pre-split.i

if.end311thread-pre-split.i:                      ; preds = %if.then306.i, %if.then301.i.if.end311thread-pre-split.i_crit_edge
  %308 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %308)
  %.pr.i = load i32, ptr %6, align 4
  br label %if.end311.i

if.end311.i:                                      ; preds = %if.end311thread-pre-split.i, %if.end297.i.if.end311.i_crit_edge
  %309 = phi i32 [ %.pr.i, %if.end311thread-pre-split.i ], [ %302, %if.end297.i.if.end311.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %309)
  %cmp313.i = icmp eq i32 %309, 4
  br i1 %cmp313.i, label %land.lhs.true315.i, label %if.end311.i.if.end322.i_crit_edge

if.end311.i.if.end322.i_crit_edge:                ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end322.i

land.lhs.true315.i:                               ; preds = %if.end311.i
  %310 = load i32, ptr @spdif_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool316.not.i = icmp eq i32 %310, 0
  br i1 %tobool316.not.i, label %if.then317.i, label %land.lhs.true315.i.if.end322.i_crit_edge

land.lhs.true315.i.if.end322.i_crit_edge:         ; preds = %land.lhs.true315.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end322.i

if.then317.i:                                     ; preds = %land.lhs.true315.i
  call void @__sanitizer_cov_trace_pc() #11
  %311 = ptrtoint ptr %spdif_idx.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %spdif_idx.i, align 4
  %pcm321.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 8, i32 %312, i32 23
  %313 = ptrtoint ptr %pcm321.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %pcm321.i, align 4
  %rates.i = getelementptr inbounds %struct.ac97_pcm, ptr %314, i32 0, i32 4
  %315 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 128, ptr %rates.i, align 4
  br label %if.end322.i

if.end322.i:                                      ; preds = %if.then317.i, %land.lhs.true315.i.if.end322.i_crit_edge, %if.end311.i.if.end322.i_crit_edge
  %316 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %317)
  %cmp324.i = icmp eq i32 %317, 1
  br i1 %cmp324.i, label %land.lhs.true326.i, label %if.end322.i.if.end45_crit_edge

if.end322.i.if.end45_crit_edge:                   ; preds = %if.end322.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true326.i:                               ; preds = %if.end322.i
  %318 = load i32, ptr @spdif_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool327.not.i = icmp eq i32 %318, 0
  br i1 %tobool327.not.i, label %if.then328.i, label %land.lhs.true326.i.if.end45_crit_edge

land.lhs.true326.i.if.end45_crit_edge:            ; preds = %land.lhs.true326.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then328.i:                                     ; preds = %land.lhs.true326.i
  call void @__sanitizer_cov_trace_pc() #11
  %319 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i479.i = getelementptr i8, ptr %320, i32 44
  %321 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i479.i) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %322 = or i32 %321, 192
  %323 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i481.i = getelementptr i8, ptr %324, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i481.i, i32 %322) #9, !srcloc !540
  %325 = ptrtoint ptr %ac97135.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %ac97135.i, align 4
  %call334.i = call i32 @snd_ac97_update_bits(ptr noundef %326, i16 noundef zeroext 42, i16 noundef zeroext 48, i16 noundef zeroext 48) #9
  br label %if.end45

__err.i:                                          ; preds = %if.end145.i.__err.i_crit_edge, %if.end126.i.__err.i_crit_edge, %if.end82.i.__err.i_crit_edge
  %err.0.i = phi i32 [ %call83.i, %if.end82.i.__err.i_crit_edge ], [ %call157.i, %if.end145.i.__err.i_crit_edge ], [ %call115.i, %if.end126.i.__err.i_crit_edge ]
  %327 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %328)
  %cmp341.not.i = icmp eq i32 %328, 3
  br i1 %cmp341.not.i, label %__err.i.snd_intel8x0_mixer.exit.thread_crit_edge, label %if.then343.i

__err.i.snd_intel8x0_mixer.exit.thread_crit_edge: ; preds = %__err.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_mixer.exit.thread

if.then343.i:                                     ; preds = %__err.i
  call void @__sanitizer_cov_trace_pc() #11
  %329 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i483.i = getelementptr i8, ptr %330, i32 44
  %331 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i483.i) #9, !srcloc !535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %332 = and i32 %331, -33554433
  %333 = ptrtoint ptr %bmaddr.i468.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %bmaddr.i468.i, align 4
  %add.ptr.i485.i = getelementptr i8, ptr %334, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i485.i, i32 %332) #9, !srcloc !540
  br label %snd_intel8x0_mixer.exit.thread

snd_intel8x0_mixer.exit.thread:                   ; preds = %if.then343.i, %__err.i.snd_intel8x0_mixer.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #9
  br label %cleanup

if.end45:                                         ; preds = %if.then328.i, %land.lhs.true326.i.if.end45_crit_edge, %if.end322.i.if.end45_crit_edge
  %335 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %bf.load337.i = load i16, ptr %in_ac97_init.i, align 4
  %bf.clear338.i = and i16 %bf.load337.i, -1025
  store i16 %bf.clear338.i, ptr %in_ac97_init.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #9
  %336 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %6, align 4
  %338 = zext i32 %337 to i64
  call void @__sanitizer_cov_trace_switch(i64 %338, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %337, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 4, label %sw.bb1.i
    i32 3, label %if.end45.sw.epilog.i_crit_edge
  ]

if.end45.sw.epilog.i_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %339 = load i32, ptr @spdif_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool.not.i129 = icmp eq i32 %339, 0
  %spec.select.i130 = select i1 %tobool.not.i129, i32 5, i32 4
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %340 = load i32, ptr @spdif_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool2.not.i = icmp eq i32 %340, 0
  %spec.select37.i = select i1 %tobool2.not.i, i32 3, i32 2
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb1.i, %sw.bb.i, %if.end45.sw.epilog.i_crit_edge
  %tblsize.0.i = phi i32 [ 2, %sw.default.i ], [ %spec.select.i130, %sw.bb.i ], [ %spec.select37.i, %sw.bb1.i ], [ %337, %if.end45.sw.epilog.i_crit_edge ]
  %tbl.0.i = phi ptr [ @intel_pcms, %sw.default.i ], [ @intel_pcms, %sw.bb.i ], [ @nforce_pcms, %sw.bb1.i ], [ @ali_pcms, %if.end45.sw.epilog.i_crit_edge ]
  br label %for.body.i132

for.body.i132:                                    ; preds = %for.inc.i147.for.body.i132_crit_edge, %sw.epilog.i
  %device.045.i = phi i32 [ 0, %sw.epilog.i ], [ %device.1.i, %for.inc.i147.for.body.i132_crit_edge ]
  %i.043.i = phi i32 [ 0, %sw.epilog.i ], [ %inc18.i, %for.inc.i147.for.body.i132_crit_edge ]
  %add.ptr.i131 = getelementptr %struct.ich_pcm_table, ptr %tbl.0.i, i32 %i.043.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.043.i)
  %cmp7.not.i = icmp eq i32 %i.043.i, 0
  br i1 %cmp7.not.i, label %for.body.i132.if.end14.i_crit_edge, label %land.lhs.true.i134

for.body.i132.if.end14.i_crit_edge:               ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true.i134:                               ; preds = %for.body.i132
  %ac97_idx.i = getelementptr %struct.ich_pcm_table, ptr %tbl.0.i, i32 %i.043.i, i32 5
  %341 = ptrtoint ptr %ac97_idx.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %ac97_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %tobool8.not.i133 = icmp eq i32 %342, 0
  br i1 %tobool8.not.i133, label %land.lhs.true.i134.if.end14.i_crit_edge, label %if.then9.i

land.lhs.true.i134.if.end14.i_crit_edge:          ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then9.i:                                       ; preds = %land.lhs.true.i134
  %pcm.i135 = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 8, i32 %342, i32 23
  %343 = ptrtoint ptr %pcm.i135 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %pcm.i135, align 4
  %tobool11.not.i136 = icmp eq ptr %344, null
  br i1 %tobool11.not.i136, label %if.then9.i.for.inc.i147_crit_edge, label %if.then9.i.if.end14.i_crit_edge

if.then9.i.if.end14.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then9.i.for.inc.i147_crit_edge:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i147

if.end14.i:                                       ; preds = %if.then9.i.if.end14.i_crit_edge, %land.lhs.true.i134.if.end14.i_crit_edge, %for.body.i132.if.end14.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i.i) #9
  %345 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i.i, align 4, !annotation !532
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i.i) #9
  %346 = call ptr @memset(ptr %name.i.i, i32 255, i32 32)
  %347 = ptrtoint ptr %add.ptr.i131 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %add.ptr.i131, align 4
  %tobool.not.i.i137 = icmp eq ptr %348, null
  br i1 %tobool.not.i.i137, label %if.else.i.i, label %if.then.i.i139

if.then.i.i139:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i138 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i.i, ptr noundef nonnull @.str.134, ptr noundef nonnull %348) #9
  br label %if.end.i.i142

if.else.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %349 = call ptr @memcpy(ptr %name.i.i, ptr @.str.4, i32 10)
  br label %if.end.i.i142

if.end.i.i142:                                    ; preds = %if.else.i.i, %if.then.i.i139
  %350 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %card.i, align 4
  %playback_ops.i.i = getelementptr %struct.ich_pcm_table, ptr %tbl.0.i, i32 %i.043.i, i32 1
  %352 = ptrtoint ptr %playback_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %playback_ops.i.i, align 4
  %tobool5.not.i.i = icmp ne ptr %353, null
  %cond.i.i140 = zext i1 %tobool5.not.i.i to i32
  %capture_ops.i.i = getelementptr %struct.ich_pcm_table, ptr %tbl.0.i, i32 %i.043.i, i32 2
  %354 = ptrtoint ptr %capture_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %capture_ops.i.i, align 4
  %tobool6.not.i.i = icmp ne ptr %355, null
  %cond7.i.i = zext i1 %tobool6.not.i.i to i32
  %call8.i.i = call i32 @snd_pcm_new(ptr noundef %351, ptr noundef nonnull %name.i.i, i32 noundef %device.045.i, i32 noundef %cond.i.i140, i32 noundef %cond7.i.i, ptr noundef nonnull %pcm.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.i.i141 = icmp slt i32 %call8.i.i, 0
  br i1 %cmp.i.i141, label %if.end.i.i142.snd_intel8x0_pcm.exit.thread_crit_edge, label %if.end10.i.i

if.end.i.i142.snd_intel8x0_pcm.exit.thread_crit_edge: ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_pcm.exit.thread

if.end10.i.i:                                     ; preds = %if.end.i.i142
  %356 = ptrtoint ptr %playback_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %playback_ops.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %357, null
  br i1 %tobool12.not.i.i, label %if.end10.i.i.if.end15.i.i_crit_edge, label %if.then13.i.i

if.end10.i.i.if.end15.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %358 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %359, i32 noundef 0, ptr noundef nonnull %357) #9
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then13.i.i, %if.end10.i.i.if.end15.i.i_crit_edge
  %360 = ptrtoint ptr %capture_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %capture_ops.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %361, null
  br i1 %tobool17.not.i.i, label %if.end15.i.i.if.end20.i.i_crit_edge, label %if.then18.i.i

if.end15.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %362 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %363, i32 noundef 1, ptr noundef nonnull %361) #9
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i.i, %if.end15.i.i.if.end20.i.i_crit_edge
  %364 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %pcm.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm, ptr %365, i32 0, i32 11
  %366 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %6, ptr %private_data.i.i, align 8
  %info_flags.i.i = getelementptr inbounds %struct.snd_pcm, ptr %365, i32 0, i32 3
  %367 = ptrtoint ptr %info_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 0, ptr %info_flags.i.i, align 8
  %368 = ptrtoint ptr %add.ptr.i131 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %add.ptr.i131, align 4
  %tobool22.not.i.i = icmp eq ptr %369, null
  %name31.i.i = getelementptr inbounds %struct.snd_pcm, ptr %365, i32 0, i32 7
  %370 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %card.i, align 4
  %shortname34.i.i = getelementptr inbounds %struct.snd_card, ptr %371, i32 0, i32 3
  br i1 %tobool22.not.i.i, label %if.else30.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call29.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name31.i.i, ptr noundef nonnull @.str.135, ptr noundef %shortname34.i.i, ptr noundef nonnull %369) #9
  br label %if.end37.i.i

if.else30.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call36.i.i = call ptr @strcpy(ptr noundef %name31.i.i, ptr noundef %shortname34.i.i) #14
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.else30.i.i, %if.then23.i.i
  %372 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %pcm.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.intel8x0, ptr %6, i32 0, i32 7, i32 %device.045.i
  %374 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %373, ptr %arrayidx.i.i, align 4
  %375 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %375)
  %bf.load.i.i = load i16, ptr %in_ac97_init.i, align 4
  %376 = and i16 %bf.load.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %376)
  %tobool39.not.i.i = icmp eq i16 %376, 0
  %cond40.i.i = select i1 %tobool39.not.i.i, i32 2, i32 5
  %377 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %pci.i, align 4
  %dev.i.i143 = getelementptr inbounds %struct.pci_dev, ptr %378, i32 0, i32 44
  %prealloc_size.i.i = getelementptr %struct.ich_pcm_table, ptr %tbl.0.i, i32 %i.043.i, i32 3
  %379 = ptrtoint ptr %prealloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %prealloc_size.i.i, align 4
  %prealloc_max_size.i.i = getelementptr %struct.ich_pcm_table, ptr %tbl.0.i, i32 %i.043.i, i32 4
  %381 = ptrtoint ptr %prealloc_max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %prealloc_max_size.i.i, align 4
  %call41.i.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %373, i32 noundef %cond40.i.i, ptr noundef %dev.i.i143, i32 noundef %380, i32 noundef %382) #9
  %383 = ptrtoint ptr %playback_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %playback_ops.i.i, align 4
  %tobool43.not.i.i = icmp eq ptr %384, null
  br i1 %tobool43.not.i.i, label %if.end37.i.i.if.end17.i_crit_edge, label %land.lhs.true.i.i144

if.end37.i.i.if.end17.i_crit_edge:                ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

land.lhs.true.i.i144:                             ; preds = %if.end37.i.i
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %384, align 4
  %cmp45.i.i = icmp eq ptr %386, @snd_intel8x0_playback_open
  br i1 %cmp45.i.i, label %if.then46.i.i, label %land.lhs.true.i.i144.if.end17.i_crit_edge

land.lhs.true.i.i144.if.end17.i_crit_edge:        ; preds = %land.lhs.true.i.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then46.i.i:                                    ; preds = %land.lhs.true.i.i144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chmap.i.i) #9
  %387 = ptrtoint ptr %chmap.i.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr inttoptr (i32 -1 to ptr), ptr %chmap.i.i, align 4, !annotation !532
  %388 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %bf.load47.i.i = load i16, ptr %in_ac97_init.i, align 4
  %389 = and i16 %bf.load47.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %389)
  %tobool51.not.i.i = icmp eq i16 %389, 0
  br i1 %tobool51.not.i.i, label %if.else53.i.i, label %if.then46.i.i.if.end68.i.i_crit_edge

if.then46.i.i.if.end68.i.i_crit_edge:             ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i.i

if.else53.i.i:                                    ; preds = %if.then46.i.i
  %390 = and i16 %bf.load47.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %390)
  %tobool58.not.i.i = icmp eq i16 %390, 0
  br i1 %tobool58.not.i.i, label %if.else60.i.i, label %if.else53.i.i.if.end68.i.i_crit_edge

if.else53.i.i.if.end68.i.i_crit_edge:             ; preds = %if.else53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i.i

if.else60.i.i:                                    ; preds = %if.else53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load47.i.i)
  %tobool64.not.i.i = icmp sgt i16 %bf.load47.i.i, -1
  %spec.select.i.i = select i1 %tobool64.not.i.i, i32 2, i32 4
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.else60.i.i, %if.else53.i.i.if.end68.i.i_crit_edge, %if.then46.i.i.if.end68.i.i_crit_edge
  %chs.0.i.i = phi i32 [ 8, %if.then46.i.i.if.end68.i.i_crit_edge ], [ 6, %if.else53.i.i.if.end68.i.i_crit_edge ], [ %spec.select.i.i, %if.else60.i.i ]
  %391 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %pcm.i.i, align 4
  %call69.i.i = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %392, i32 noundef 0, ptr noundef nonnull @snd_pcm_alt_chmaps, i32 noundef %chs.0.i.i, i32 noundef 0, ptr noundef nonnull %chmap.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i.i)
  %cmp70.i.i = icmp slt i32 %call69.i.i, 0
  br i1 %cmp70.i.i, label %cleanup77.critedge.i.i, label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %393 = ptrtoint ptr %chmap.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %chmap.i.i, align 4
  %channel_mask.i.i = getelementptr inbounds %struct.snd_pcm_chmap, ptr %394, i32 0, i32 5
  %395 = ptrtoint ptr %channel_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 340, ptr %channel_mask.i.i, align 4
  %396 = ptrtoint ptr %ac97135.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ac97135.i, align 4
  %chmaps.i.i = getelementptr inbounds %struct.snd_ac97, ptr %397, i32 0, i32 31
  %398 = ptrtoint ptr %chmaps.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %394, ptr %chmaps.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap.i.i) #9
  br label %if.end17.i

cleanup77.critedge.i.i:                           ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap.i.i) #9
  br label %snd_intel8x0_pcm.exit.thread

snd_intel8x0_pcm.exit.thread:                     ; preds = %cleanup77.critedge.i.i, %if.end.i.i142.snd_intel8x0_pcm.exit.thread_crit_edge
  %retval.1.i.i = phi i32 [ %call69.i.i, %cleanup77.critedge.i.i ], [ %call8.i.i, %if.end.i.i142.snd_intel8x0_pcm.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #9
  br label %cleanup

if.end17.i:                                       ; preds = %if.end72.i.i, %land.lhs.true.i.i144.if.end17.i_crit_edge, %if.end37.i.i.if.end17.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #9
  %inc.i145 = add i32 %device.045.i, 1
  br label %for.inc.i147

for.inc.i147:                                     ; preds = %if.end17.i, %if.then9.i.for.inc.i147_crit_edge
  %device.1.i = phi i32 [ %inc.i145, %if.end17.i ], [ %device.045.i, %if.then9.i.for.inc.i147_crit_edge ]
  %inc18.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i146 = icmp eq i32 %inc18.i, %tblsize.0.i
  br i1 %exitcond.not.i146, label %if.end50, label %for.inc.i147.for.body.i132_crit_edge

for.inc.i147.for.body.i132_crit_edge:             ; preds = %for.inc.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i132

if.end50:                                         ; preds = %for.inc.i147
  %pcm_devs.i = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 6
  %399 = ptrtoint ptr %pcm_devs.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %device.1.i, ptr %pcm_devs.i, align 4
  %400 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %card.i, align 4
  %call.i.i151 = call i32 @snd_card_rw_proc_new(ptr noundef %401, ptr noundef nonnull @.str.136, ptr noundef %6, ptr noundef nonnull @snd_intel8x0_proc_read, ptr noundef null) #9
  %402 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %403, i32 0, i32 4
  %shortname52 = getelementptr inbounds %struct.snd_card, ptr %403, i32 0, i32 3
  %404 = ptrtoint ptr %ac97135.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %ac97135.i, align 4
  %call54 = call ptr @snd_ac97_get_short_name(ptr noundef %405) #9
  %irq = getelementptr inbounds %struct.intel8x0, ptr %6, i32 0, i32 1
  %406 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %irq, align 4
  %call55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.5, ptr noundef %shortname52, ptr noundef %call54, i32 noundef %407)
  %408 = load i32, ptr @ac97_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %408)
  %switch = icmp ult i32 %408, 2
  br i1 %switch, label %if.then60, label %if.end50.if.end71_crit_edge

if.end50.if.end71_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then60:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %408)
  %cmp61 = icmp eq i32 %408, 0
  br i1 %cmp61, label %if.then63, label %if.else69

if.then63:                                        ; preds = %if.then60
  %409 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %pci.i, align 4
  %call.i152 = call ptr @snd_pci_quirk_lookup(ptr noundef %410, ptr noundef nonnull @intel8x0_clock_list) #9
  %tobool.not.i153 = icmp eq ptr %call.i152, null
  br i1 %tobool.not.i153, label %if.then67, label %intel8x0_in_clock_list.exit

intel8x0_in_clock_list.exit:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %411 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %card.i, align 4
  %dev.i155 = getelementptr inbounds %struct.snd_card, ptr %412, i32 0, i32 27
  %413 = ptrtoint ptr %dev.i155 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %dev.i155, align 8
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %410, i32 0, i32 9
  %415 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %subsystem_vendor.i, align 4
  %conv.i = zext i16 %416 to i32
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %410, i32 0, i32 10
  %417 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %subsystem_device.i, align 2
  %conv2.i = zext i16 %418 to i32
  %value.i156 = getelementptr inbounds %struct.snd_pci_quirk, ptr %call.i152, i32 0, i32 3
  %419 = ptrtoint ptr %value.i156 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %value.i156, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %414, ptr noundef nonnull @.str.149, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %420) #13
  %421 = ptrtoint ptr %value.i156 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %value.i156, align 4
  %423 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %ac97_bus.i, align 4
  %clock.i158 = getelementptr inbounds %struct.snd_ac97_bus, ptr %424, i32 0, i32 6
  %425 = ptrtoint ptr %clock.i158 to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %422, ptr %clock.i158, align 4
  br label %if.end71

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @intel8x0_measure_ac97_clock(ptr noundef %6)
  br label %if.end71

if.else69:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @intel8x0_measure_ac97_clock(ptr noundef %6)
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then67, %intel8x0_in_clock_list.exit, %if.end50.if.end71_crit_edge
  %426 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %card, align 4
  %call72 = call i32 @snd_card_register(ptr noundef %427) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end71.cleanup_crit_edge, label %if.end76

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %428 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %430 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr %429, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.end71.cleanup_crit_edge, %snd_intel8x0_pcm.exit.thread, %snd_intel8x0_mixer.exit.thread, %do.end157.i, %for.end145.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end76 ], [ %call, %entry.cleanup_crit_edge ], [ %call72, %if.end71.cleanup_crit_edge ], [ %err.0.i, %snd_intel8x0_mixer.exit.thread ], [ %retval.1.i.i, %snd_intel8x0_pcm.exit.thread ], [ %call146.i, %for.end145.i.cleanup_crit_edge ], [ -12, %for.end.i.cleanup_crit_edge ], [ %call35.i, %if.end34.i.cleanup_crit_edge ], [ %call.i106, %if.end34.cleanup_crit_edge ], [ -16, %do.end157.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ac97_get_short_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @intel8x0_measure_ac97_clock(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ac97_bus = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac97_bus, align 4
  %clock = getelementptr inbounds %struct.snd_ac97_bus, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %3)
  %cmp.not = icmp eq i32 %3, 48000
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %inside_vm = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 9
  %4 = ptrtoint ptr %inside_vm to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %inside_vm, align 4
  %5 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, ptr @ac97_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %pcm = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 7
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  %substream332 = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 8, i32 0, i32 4
  %9 = ptrtoint ptr %substream332 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %substream332, align 8
  %tobool5.not333 = icmp eq ptr %10, null
  br i1 %tobool5.not333, label %if.end3.do.end_crit_edge, label %lor.lhs.false.lr.ph

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.lr.ph:                              ; preds = %if.end3
  %physbuf = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 5
  %fragsize = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 7
  %size = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 6
  %substream11 = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 4
  %ac97 = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 13
  %arrayidx9 = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1
  %reg_offset = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 1
  %reg_lock = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 20
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  %ali_slot = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 22
  %roff_picb = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 20
  %fragsize1 = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 8
  %pos_shift = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 10
  %position = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 9
  %roff_sr = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 1, i32 19
  %card116 = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 5
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then108.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %11 = phi ptr [ %10, %lor.lhs.false.lr.ph ], [ %108, %if.then108.lor.lhs.false_crit_edge ]
  %attempt.0335 = phi i32 [ 1, %lor.lhs.false.lr.ph ], [ %inc, %if.then108.lor.lhs.false_crit_edge ]
  %timeout.0334 = phi i32 [ 1000, %lor.lhs.false.lr.ph ], [ %timeout.2318, %if.then108.lor.lhs.false_crit_edge ]
  %bytes = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %13)
  %cmp6 = icmp ult i32 %13, 32768
  br i1 %cmp6, label %lor.lhs.false.do.end_crit_edge, label %if.end8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.then108.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end3.do.end_crit_edge
  %card = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 5
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.155) #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %addr = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %20 = ptrtoint ptr %physbuf to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %physbuf, align 4
  %21 = ptrtoint ptr %fragsize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 32768, ptr %fragsize, align 4
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32768, ptr %size, align 4
  %23 = ptrtoint ptr %substream11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %substream11, align 4
  %24 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ac97, align 4
  %call = tail call i32 @snd_ac97_set_rate(ptr noundef %25, i32 noundef 44, i32 noundef 48000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %do.end17, label %if.end22

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %card116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card116, align 4
  %dev19 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev19, align 8
  %30 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ac97_bus, align 4
  %clock21 = getelementptr inbounds %struct.snd_ac97_bus, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %clock21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clock21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.158, i32 noundef %33) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  tail call fastcc void @snd_intel8x0_setup_periods(ptr noundef %chip, ptr noundef %arrayidx9)
  %34 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_offset, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  %36 = ptrtoint ptr %inside_vm to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load23 = load i16, ptr %inside_vm, align 4
  %bf.set = or i16 %bf.load23, 256
  store i16 %bf.set, ptr %inside_vm, align 4
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp25.not = icmp eq i32 %38, 3
  %add27 = add i32 %35, 11
  %39 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i293 = getelementptr i8, ptr %40, i32 %add27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %cmp25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i293, i8 17) #9, !srcloc !545
  br label %if.end28

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i293, i8 16) #9, !srcloc !545
  %41 = ptrtoint ptr %ali_slot to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ali_slot, align 4
  %shl = shl nuw i32 1, %42
  %43 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i295 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i295, i32 %45) #9, !srcloc !540
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then26
  %call29 = tail call i64 @ktime_get() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  tail call void @msleep(i32 noundef 50) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  br label %do.body32

do.body32:                                        ; preds = %do.body32.backedge, %if.end28
  %timeout.1 = phi i32 [ %timeout.0334, %if.end28 ], [ %timeout.1.be, %do.body32.backedge ]
  %46 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg_offset, align 4
  %add34 = add i32 %47, 4
  %48 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %49, i32 %add34
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i297) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %51 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_offset, align 4
  %53 = ptrtoint ptr %roff_picb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %roff_picb, align 4
  %add37 = add i32 %54, %52
  %55 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i299 = getelementptr i8, ptr %56, i32 %add37
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i299) #9, !srcloc !537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp40 = icmp eq i16 %57, 0
  br i1 %cmp40, label %do.cond60.thread, label %if.end43

if.end43:                                         ; preds = %do.body32
  %58 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_offset, align 4
  %add45 = add i32 %59, 4
  %60 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i301 = getelementptr i8, ptr %61, i32 %add45
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i301) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %62)
  %cmp48 = icmp eq i8 %50, %62
  br i1 %cmp48, label %land.lhs.true50, label %if.end43.do.cond60_crit_edge

if.end43.do.cond60_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond60

land.lhs.true50:                                  ; preds = %if.end43
  %63 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reg_offset, align 4
  %65 = ptrtoint ptr %roff_picb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %roff_picb, align 4
  %add53 = add i32 %66, %64
  %67 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i303 = getelementptr i8, ptr %68, i32 %add53
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i303) #9, !srcloc !537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %69)
  %cmp56 = icmp eq i16 %57, %69
  br i1 %cmp56, label %land.lhs.true50.if.else66_crit_edge, label %land.lhs.true50.do.cond60_crit_edge

land.lhs.true50.do.cond60_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond60

land.lhs.true50.if.else66_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66

do.cond60:                                        ; preds = %land.lhs.true50.do.cond60_crit_edge, %if.end43.do.cond60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %tobool61.not = icmp eq i32 %timeout.1, 0
  br i1 %tobool61.not, label %do.cond60.if.else66_crit_edge, label %do.cond60.do.body32.backedge_crit_edge

do.cond60.do.body32.backedge_crit_edge:           ; preds = %do.cond60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32.backedge

do.cond60.if.else66_crit_edge:                    ; preds = %do.cond60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66

do.body32.backedge:                               ; preds = %do.cond60.thread.do.body32.backedge_crit_edge, %do.cond60.do.body32.backedge_crit_edge
  %timeout.1.be = add i32 %timeout.1, -1
  br label %do.body32

do.cond60.thread:                                 ; preds = %do.body32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 2147480) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %tobool61.not320 = icmp eq i32 %timeout.1, 0
  br i1 %tobool61.not320, label %do.cond60.thread.if.end69_crit_edge, label %do.cond60.thread.do.body32.backedge_crit_edge

do.cond60.thread.do.body32.backedge_crit_edge:    ; preds = %do.cond60.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32.backedge

do.cond60.thread.if.end69_crit_edge:              ; preds = %do.cond60.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.else66:                                        ; preds = %do.cond60.if.else66_crit_edge, %land.lhs.true50.if.else66_crit_edge
  %timeout.2317 = phi i32 [ %timeout.1, %land.lhs.true50.if.else66_crit_edge ], [ -1, %do.cond60.if.else66_crit_edge ]
  %71 = tail call i16 @llvm.bswap.i16(i16 %57) #9
  %conv39.le = zext i16 %71 to i32
  %72 = ptrtoint ptr %fragsize1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fragsize1, align 4
  %74 = ptrtoint ptr %pos_shift to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pos_shift, align 4
  %shl67 = shl i32 %conv39.le, %75
  %sub = sub i32 %73, %shl67
  %76 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %position, align 4
  %add68 = add i32 %sub, %77
  br label %if.end69

if.end69:                                         ; preds = %if.else66, %do.cond60.thread.if.end69_crit_edge
  %timeout.2318 = phi i32 [ %timeout.2317, %if.else66 ], [ -1, %do.cond60.thread.if.end69_crit_edge ]
  %pos.0 = phi i32 [ %add68, %if.else66 ], [ 0, %do.cond60.thread.if.end69_crit_edge ]
  %78 = ptrtoint ptr %inside_vm to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load71 = load i16, ptr %inside_vm, align 4
  %bf.clear72 = and i16 %bf.load71, -257
  store i16 %bf.clear72, ptr %inside_vm, align 4
  %call74 = tail call i64 @ktime_get() #9
  %79 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp76 = icmp eq i32 %80, 3
  br i1 %cmp76, label %if.then78, label %if.else86

if.then78:                                        ; preds = %if.end69
  %81 = ptrtoint ptr %ali_slot to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ali_slot, align 4
  %add80 = add i32 %82, 16
  %shl81 = shl nuw i32 1, %add80
  %83 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i305 = getelementptr i8, ptr %84, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %85 = tail call i32 @llvm.bswap.i32(i32 %shl81) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i305, i32 %85) #9, !srcloc !540
  %add82 = add i32 %35, 11
  %86 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i307 = getelementptr i8, ptr %87, i32 %add82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i307, i8 0) #9, !srcloc !545
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then78
  %88 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i309 = getelementptr i8, ptr %89, i32 %add82
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i309) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %tobool85.not = icmp eq i8 %90, 0
  br i1 %tobool85.not, label %while.cond.if.end95_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.cond.if.end95_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.else86:                                        ; preds = %if.end69
  %add87 = add i32 %35, 11
  %91 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i311 = getelementptr i8, ptr %92, i32 %add87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i311, i8 0) #9, !srcloc !545
  br label %while.cond88

while.cond88:                                     ; preds = %while.cond88.while.cond88_crit_edge, %if.else86
  %93 = ptrtoint ptr %roff_sr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %roff_sr, align 4
  %add89 = add i32 %94, %35
  %95 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i313 = getelementptr i8, ptr %96, i32 %add89
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i313) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %98 = and i8 %97, 1
  %tobool92.not = icmp eq i8 %98, 0
  br i1 %tobool92.not, label %while.cond88.while.cond88_crit_edge, label %while.cond88.if.end95_crit_edge

while.cond88.if.end95_crit_edge:                  ; preds = %while.cond88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

while.cond88.while.cond88_crit_edge:              ; preds = %while.cond88
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond88

if.end95:                                         ; preds = %while.cond88.if.end95_crit_edge, %while.cond.if.end95_crit_edge
  %add96.pre-phi = phi i32 [ %add82, %while.cond.if.end95_crit_edge ], [ %add87, %while.cond88.if.end95_crit_edge ]
  %99 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i315 = getelementptr i8, ptr %100, i32 %add96.pre-phi
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i315, i8 2) #9, !srcloc !545
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.0)
  %cmp98 = icmp eq i32 %pos.0, 0
  br i1 %cmp98, label %do.end103, label %if.end110

do.end103:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %card116 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %card116, align 4
  %dev105 = getelementptr inbounds %struct.snd_card, ptr %102, i32 0, i32 27
  %103 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev105, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.161) #13
  br label %__retry

__retry:                                          ; preds = %do.end140, %do.end123, %do.end103
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %attempt.0335)
  %exitcond.not = icmp eq i32 %attempt.0335, 3
  br i1 %exitcond.not, label %__retry.do.end180_crit_edge, label %if.then108

__retry.do.end180_crit_edge:                      ; preds = %__retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end180

if.then108:                                       ; preds = %__retry
  tail call void @msleep(i32 noundef 300) #9
  %inc = add nuw nsw i32 %attempt.0335, 1
  %105 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pcm, align 4
  %substream = getelementptr inbounds %struct.snd_pcm, ptr %106, i32 0, i32 8, i32 0, i32 4
  %107 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %substream, align 8
  %tobool5.not = icmp eq ptr %108, null
  br i1 %tobool5.not, label %if.then108.do.end_crit_edge, label %if.then108.lor.lhs.false_crit_edge

if.then108.lor.lhs.false_crit_edge:               ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.then108.do.end_crit_edge:                      ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end110:                                        ; preds = %if.end95
  %div288 = lshr i32 %pos.0, 2
  %sub.i = sub i64 %call74, %call29
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %109 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #9
  %110 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %109, i32 0) #15, !srcloc !546
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %110, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %110, 1
  %111 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %109, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #15, !srcloc !547
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %111, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv112 = trunc i64 %cond213.i.i.i to i32
  %112 = ptrtoint ptr %card116 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %card116, align 4
  %dev117 = getelementptr inbounds %struct.snd_card, ptr %113, i32 0, i32 27
  %114 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev117, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %115, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.156, i32 noundef %conv112, i32 noundef %div288) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv112)
  %cmp118 = icmp eq i32 %conv112, 0
  br i1 %cmp118, label %do.end123, label %if.end126

do.end123:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %card116 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %card116, align 4
  %dev125 = getelementptr inbounds %struct.snd_card, ptr %117, i32 0, i32 27
  %118 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev125, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.167) #13
  br label %__retry

if.end126:                                        ; preds = %if.end110
  %mul = mul i32 %div288, 1000
  %mul.frozen = freeze i32 %mul
  %div127 = udiv i32 %mul.frozen, %conv112
  %mul128 = mul i32 %div127, 1000
  %120 = mul i32 %div127, %conv112
  %rem.decomposed = sub i32 %mul.frozen, %120
  %mul129 = mul i32 %rem.decomposed, 1000
  %div130 = udiv i32 %mul129, %conv112
  %add131 = add i32 %div130, %mul128
  %121 = add i32 %add131, -60000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20000, i32 %121)
  %122 = icmp ult i32 %121, -20000
  br i1 %122, label %do.end140, label %if.else143

do.end140:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %card116 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %card116, align 4
  %dev142 = getelementptr inbounds %struct.snd_card, ptr %124, i32 0, i32 27
  %125 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev142, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %126, ptr noundef nonnull @.str.170, i32 noundef %add131) #13
  br label %__retry

if.else143:                                       ; preds = %if.end126
  %127 = add nsw i32 %add131, -40501
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %127)
  %128 = icmp ult i32 %127, 999
  br i1 %128, label %if.then149, label %if.else152

if.then149:                                       ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ac97_bus, align 4
  %clock151 = getelementptr inbounds %struct.snd_ac97_bus, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %clock151 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 41000, ptr %clock151, align 4
  br label %do.end180

if.else152:                                       ; preds = %if.else143
  %132 = add nsw i32 %add131, -43601
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %132)
  %133 = icmp ult i32 %132, 999
  br i1 %133, label %if.then158, label %if.else161

if.then158:                                       ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ac97_bus, align 4
  %clock160 = getelementptr inbounds %struct.snd_ac97_bus, ptr %135, i32 0, i32 6
  %136 = ptrtoint ptr %clock160 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 44100, ptr %clock160, align 4
  br label %do.end180

if.else161:                                       ; preds = %if.else152
  %137 = add nsw i32 %add131, -48501
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1001, i32 %137)
  %138 = icmp ult i32 %137, -1001
  br i1 %138, label %if.then167, label %if.else161.do.end180_crit_edge

if.else161.do.end180_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end180

if.then167:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ac97_bus, align 4
  %clock169 = getelementptr inbounds %struct.snd_ac97_bus, ptr %140, i32 0, i32 6
  %141 = ptrtoint ptr %clock169 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %clock169, align 4
  %mul170 = mul i32 %142, 48000
  %div171 = udiv i32 %mul170, %add131
  store i32 %div171, ptr %clock169, align 4
  br label %do.end180

do.end180:                                        ; preds = %if.then167, %if.else161.do.end180_crit_edge, %if.then158, %if.then149, %__retry.do.end180_crit_edge
  %143 = ptrtoint ptr %card116 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %card116, align 4
  %dev182 = getelementptr inbounds %struct.snd_card, ptr %144, i32 0, i32 27
  %145 = ptrtoint ptr %dev182 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev182, align 8
  %147 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ac97_bus, align 4
  %clock184 = getelementptr inbounds %struct.snd_ac97_bus, ptr %148, i32 0, i32 6
  %149 = ptrtoint ptr %clock184 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %clock184, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %146, ptr noundef nonnull @.str.173, i32 noundef %150) #13
  %151 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ac97, align 4
  %call187 = tail call i32 @snd_ac97_update_power(ptr noundef %152, i32 noundef 44, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end180, %do.end17, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_intel8x0_chip_init(ptr noundef readonly %chip, i32 noundef %probing) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp eq i32 %1, 4
  %spec.select.i = select i1 %cmp.i, i32 33008, i32 32992
  %bmaddr.i.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !535
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %and.i = and i32 %5, %spec.select.i
  %6 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 %8) #9, !srcloc !540
  %pci.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 4
  %9 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci.i, align 4
  %call1.i = tail call ptr @snd_pci_quirk_lookup(ptr noundef %10, ptr noundef nonnull @ich_chip_reset_mode) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then
  %11 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci.i, align 4
  %call.i.i = tail call ptr @snd_pci_quirk_lookup(ptr noundef %12, ptr noundef nonnull @ich_chip_reset_mode) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 44
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %16 = and i32 %15, -167784449
  %17 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %18, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %16) #9, !srcloc !540
  %19 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i13.i.i = getelementptr i8, ptr %20, i32 44
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i.i) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #9
  %23 = or i32 %21, 33554432
  %24 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %25, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %23) #9, !srcloc !540
  tail call void @msleep(i32 noundef 1) #9
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then
  %26 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i.i119.i = getelementptr i8, ptr %27, i32 44
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i119.i) #9, !srcloc !535
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %and.i.i = and i32 %29, -3145737
  %and1.i.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.i = icmp eq i32 %and1.i.i, 0
  %cond.i.i = select i1 %cmp.i.i, i32 2, i32 4
  %or.i.i = or i32 %cond.i.i, %and.i.i
  %30 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %31, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i, i32 %32) #9, !srcloc !540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add2.i.i = add i32 %33, 26
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i120.i.do.body.i.i_crit_edge, %if.else.i
  %34 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i23.i.i = getelementptr i8, ptr %35, i32 44
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i.i) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %37 = and i32 %36, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp5.i.i = icmp eq i32 %37, 0
  br i1 %cmp5.i.i, label %do.body.i.i.if.end8.i_crit_edge, label %if.end.i120.i

do.body.i.i.if.end8.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end.i120.i:                                    ; preds = %do.body.i.i
  %call6.i.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add2.i.i, %38
  %cmp7.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp7.i.i, label %if.end.i120.i.do.body.i.i_crit_edge, label %do.end10.i.i

if.end.i120.i.do.body.i.i_crit_edge:              ; preds = %if.end.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.end10.i.i:                                     ; preds = %if.end.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  %card.i.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 5
  %39 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 8
  %43 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %44, i32 44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i.i) #9, !srcloc !535
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.50, i32 noundef %46) #13
  br label %cleanup

if.end8.i:                                        ; preds = %do.body.i.i.if.end8.i_crit_edge, %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %probing)
  %tobool9.not.i = icmp eq i32 %probing, 0
  br i1 %tobool9.not.i, label %for.cond.preheader.i, label %if.then10.i

for.cond.preheader.i:                             ; preds = %if.end8.i
  %ncodecs.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 16
  %47 = ptrtoint ptr %ncodecs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ncodecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp36144.not.i = icmp eq i32 %48, 0
  br i1 %cmp36144.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %codec_bit.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 17
  br label %for.body.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %49, 100
  %codec_isr_bits.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 18
  br label %do.body.i

do.body.i:                                        ; preds = %if.end15.i.do.body.i_crit_edge, %if.then10.i
  %50 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %51, i32 48
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123.i) #9, !srcloc !535
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %54 = ptrtoint ptr %codec_isr_bits.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %codec_isr_bits.i, align 4
  %and12.i = and i32 %55, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end24.i

if.end15.i:                                       ; preds = %do.body.i
  %call16.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %56
  %cmp17.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp17.i, label %if.end15.i.do.body.i_crit_edge, label %do.end22.critedge.i

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end22.critedge.i:                              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 5
  %57 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %58, i32 0, i32 27
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 8
  %61 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %62, i32 48
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125.i) #9, !srcloc !535
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.47, i32 noundef %64) #13
  br label %cleanup

if.end24.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %add25.i = add i32 %65, 25
  call void @__sanitizer_cov_trace_cmp4(i32 %and12.i, i32 %55)
  %cmp27.not142.i = icmp eq i32 %and12.i, %55
  br i1 %cmp27.not142.i, label %if.end24.i.if.end56.i_crit_edge, label %if.end24.i.land.rhs.i_crit_edge

if.end24.i.land.rhs.i_crit_edge:                  ; preds = %if.end24.i
  br label %land.rhs.i

if.end24.i.if.end56.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end24.i.land.rhs.i_crit_edge
  %status.1143.i = phi i32 [ %or34.i, %while.body.i.land.rhs.i_crit_edge ], [ %and12.i, %if.end24.i.land.rhs.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %sub28.i = sub i32 %add25.i, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub28.i)
  %cmp29.i = icmp sgt i32 %sub28.i, -1
  br i1 %cmp29.i, label %while.body.i, label %land.rhs.i.if.end56.i_crit_edge

land.rhs.i.if.end56.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

while.body.i:                                     ; preds = %land.rhs.i
  %call30.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %67 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %68, i32 48
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127.i) #9, !srcloc !535
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %71 = ptrtoint ptr %codec_isr_bits.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %codec_isr_bits.i, align 4
  %and33.i = and i32 %72, %70
  %or34.i = or i32 %and33.i, %status.1143.i
  %cmp27.not.i = icmp eq i32 %or34.i, %72
  br i1 %cmp27.not.i, label %while.body.i.if.end56.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

while.body.i.if.end56.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0146.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %status.2145.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %status.3.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 13, i32 %i.0146.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i, align 4
  %tobool37.not.i = icmp eq ptr %74, null
  br i1 %tobool37.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then38.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then38.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %codec_bit.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %codec_bit.i, align 4
  %arrayidx39.i = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 14, i32 %i.0146.i
  %77 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx39.i, align 4
  %arrayidx40.i = getelementptr i32, ptr %76, i32 %78
  %79 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx40.i, align 4
  %or41.i = or i32 %80, %status.2145.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then38.i, %for.body.i.for.inc.i_crit_edge
  %status.3.i = phi i32 [ %or41.i, %if.then38.i ], [ %status.2145.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.0146.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %48
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %status.2.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %status.3.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %add43.i = add i32 %81, 100
  %codec_isr_bits46.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 18
  br label %do.body44.i

do.body44.i:                                      ; preds = %if.end50.i.do.body44.i_crit_edge, %for.end.i
  %82 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i129.i = getelementptr i8, ptr %83, i32 48
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129.i) #9, !srcloc !535
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %86 = ptrtoint ptr %codec_isr_bits46.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %codec_isr_bits46.i, align 4
  %and47.i = and i32 %87, %85
  call void @__sanitizer_cov_trace_cmp4(i32 %status.2.lcssa.i, i32 %and47.i)
  %cmp48.i = icmp eq i32 %status.2.lcssa.i, %and47.i
  br i1 %cmp48.i, label %do.body44.i.if.end56.i_crit_edge, label %if.end50.i

do.body44.i.if.end56.i_crit_edge:                 ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.end50.i:                                       ; preds = %do.body44.i
  %call51.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %sub53.i = sub i32 %add43.i, %88
  %cmp54.i = icmp sgt i32 %sub53.i, -1
  br i1 %cmp54.i, label %if.end50.i.do.body44.i_crit_edge, label %if.end50.i.if.end56.i_crit_edge

if.end50.i.if.end56.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.end50.i.do.body44.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body44.i

if.end56.i:                                       ; preds = %if.end50.i.if.end56.i_crit_edge, %do.body44.i.if.end56.i_crit_edge, %while.body.i.if.end56.i_crit_edge, %land.rhs.i.if.end56.i_crit_edge, %if.end24.i.if.end56.i_crit_edge
  %89 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp58.i = icmp eq i32 %90, 2
  br i1 %cmp58.i, label %if.then59.i, label %if.end56.i.if.end63.i_crit_edge

if.end56.i.if.end63.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %92, i32 76
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i131.i) #9, !srcloc !537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  %94 = or i16 %93, 256
  %95 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %96, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !548
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i133.i, i16 %94) #9, !srcloc !549
  %97 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr.i = load i32, ptr %chip, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %if.end56.i.if.end63.i_crit_edge
  %98 = phi i32 [ %.pr.i, %if.then59.i ], [ %90, %if.end56.i.if.end63.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %98)
  %cmp65.i = icmp eq i32 %98, 4
  br i1 %cmp65.i, label %land.lhs.true.i, label %if.end63.i.if.end_crit_edge

if.end63.i.if.end_crit_edge:                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end63.i
  %99 = load i32, ptr @spdif_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool67.not.i = icmp eq i32 %99, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then68.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %100 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %val.i, align 4, !annotation !532
  %101 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pci.i, align 4
  %call70.i = call i32 @pci_read_config_dword(ptr noundef %102, i32 noundef 76, ptr noundef nonnull %val.i) #9
  %103 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %val.i, align 4
  %or71.i = or i32 %104, 16777216
  store i32 %or71.i, ptr %val.i, align 4
  %105 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pci.i, align 4
  %call73.i = call i32 @pci_write_config_dword(ptr noundef %106, i32 noundef 76, i32 noundef %or71.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then68.i, %land.lhs.true.i.if.end_crit_edge, %if.end63.i.if.end_crit_edge
  %addr.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 2
  %107 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %addr.i, align 4
  %109 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %108) #9, !srcloc !537
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  br label %if.end8

if.else:                                          ; preds = %entry
  %bmaddr.i.i92 = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  %110 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bmaddr.i.i92, align 4
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #9, !srcloc !535
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %and.i93 = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %cmp.i94 = icmp eq i32 %and.i93, 0
  %reg.0.v.i = select i1 %cmp.i94, i32 2, i32 1
  %.masked.i = and i32 %113, 2147483647
  %and2.i = or i32 %reg.0.v.i, %.masked.i
  %114 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bmaddr.i.i92, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %116 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %116) #9, !srcloc !540
  br label %for.body.i97

for.body.i97:                                     ; preds = %if.end7.i.for.body.i97_crit_edge, %if.else
  %i.047.i = phi i32 [ 0, %if.else ], [ %inc.i98, %if.end7.i.for.body.i97_crit_edge ]
  %117 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bmaddr.i.i92, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %118, i32 24
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %120 = and i32 %119, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i96 = icmp eq i32 %120, 0
  br i1 %tobool.not.i96, label %for.body.i97.for.body14.i.preheader_crit_edge, label %if.end7.i

for.body.i97.for.body14.i.preheader_crit_edge:    ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i.preheader

if.end7.i:                                        ; preds = %for.body.i97
  %call8.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %inc.i98 = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, 50
  br i1 %exitcond.not.i99, label %do.end.i, label %if.end7.i.for.body.i97_crit_edge

if.end7.i.for.body.i97_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i97

do.end.i:                                         ; preds = %if.end7.i
  %card.i100 = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 5
  %121 = ptrtoint ptr %card.i100 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %card.i100, align 4
  %dev.i101 = getelementptr inbounds %struct.snd_card, ptr %122, i32 0, i32 27
  %123 = ptrtoint ptr %dev.i101 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i101, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %probing)
  %tobool9.not.i102 = icmp eq i32 %probing, 0
  br i1 %tobool9.not.i102, label %do.end.i.for.body14.i.preheader_crit_edge, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i.for.body14.i.preheader_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i.preheader

for.body14.i.preheader:                           ; preds = %do.end.i.for.body14.i.preheader_crit_edge, %for.body.i97.for.body14.i.preheader_crit_edge
  br label %for.body14.i

for.body14.i:                                     ; preds = %if.end19.i.for.body14.i_crit_edge, %for.body14.i.preheader
  %i.148.i = phi i32 [ %inc23.i, %if.end19.i.for.body14.i_crit_edge ], [ 0, %for.body14.i.preheader ]
  %125 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bmaddr.i.i92, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %126, i32 52
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i) #9, !srcloc !535
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %and16.i = and i32 %128, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %for.body14.i.snd_intel8x0_ali_chip_init.exit_crit_edge

for.body14.i.snd_intel8x0_ali_chip_init.exit_crit_edge: ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_ali_chip_init.exit

if.end19.i:                                       ; preds = %for.body14.i
  %or20.i = or i32 %128, 128
  %129 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bmaddr.i.i92, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %130, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %131 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 %131) #9, !srcloc !540
  %call21.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %inc23.i = add nuw nsw i32 %i.148.i, 1
  %exitcond49.not.i = icmp eq i32 %inc23.i, 50
  br i1 %exitcond49.not.i, label %if.end19.i.snd_intel8x0_ali_chip_init.exit_crit_edge, label %if.end19.i.for.body14.i_crit_edge

if.end19.i.for.body14.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i

if.end19.i.snd_intel8x0_ali_chip_init.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_ali_chip_init.exit

snd_intel8x0_ali_chip_init.exit:                  ; preds = %if.end19.i.snd_intel8x0_ali_chip_init.exit_crit_edge, %for.body14.i.snd_intel8x0_ali_chip_init.exit_crit_edge
  %132 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bmaddr.i.i92, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 128) #9, !srcloc !540
  %134 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bmaddr.i.i92, align 4
  %add.ptr.i.i.i103 = getelementptr i8, ptr %135, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i103, i32 -2088533117) #9, !srcloc !540
  %136 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bmaddr.i.i92, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %137, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 -2088533117) #9, !srcloc !540
  %138 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bmaddr.i.i92, align 4
  %add.ptr.i11.i.i104 = getelementptr i8, ptr %139, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i104, i32 -2088533117) #9, !srcloc !540
  %140 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bmaddr.i.i92, align 4
  %add.ptr.i13.i.i105 = getelementptr i8, ptr %141, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i105, i32 33556480) #9, !srcloc !540
  %142 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bmaddr.i.i92, align 4
  %add.ptr.i15.i.i106 = getelementptr i8, ptr %143, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i106, i32 0) #9, !srcloc !540
  %144 = ptrtoint ptr %bmaddr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bmaddr.i.i92, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %145, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 0) #9, !srcloc !540
  br label %if.end8

if.end8:                                          ; preds = %snd_intel8x0_ali_chip_init.exit, %if.end
  %bdbars_count = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 21
  %146 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bdbars_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp9124.not = icmp eq i32 %147, 0
  br i1 %cmp9124.not, label %if.end8.cleanup_crit_edge, label %for.body.lr.ph

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  br label %for.body

for.cond10.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp12126.not = icmp eq i32 %153, 0
  br i1 %cmp12126.not, label %for.cond10.preheader.for.cond42.preheaderthread-pre-split_crit_edge, label %for.body13.lr.ph

for.cond10.preheader.for.cond42.preheaderthread-pre-split_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond42.preheaderthread-pre-split

for.body13.lr.ph:                                 ; preds = %for.cond10.preheader
  %bmaddr.i108 = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  br label %for.body13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %reg_offset = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 %i.0125, i32 1
  %148 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %reg_offset, align 4
  %add = add i32 %149, 11
  %150 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %151, i32 %add
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #9, !srcloc !545
  %inc = add nuw i32 %i.0125, 1
  %152 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %bdbars_count, align 4
  %cmp9 = icmp ult i32 %inc, %153
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.cond10.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond21.preheader.loopexit:                    ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %phi.cmp = icmp eq i32 %159, 0
  br i1 %phi.cmp, label %for.cond21.preheader.loopexit.for.cond42.preheaderthread-pre-split_crit_edge, label %while.cond.preheader.lr.ph

for.cond21.preheader.loopexit.for.cond42.preheaderthread-pre-split_crit_edge: ; preds = %for.cond21.preheader.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond42.preheaderthread-pre-split

while.cond.preheader.lr.ph:                       ; preds = %for.cond21.preheader.loopexit
  %bmaddr.i110 = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  %card = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 5
  br label %while.cond.preheader

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %i.1127 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc19, %for.body13.for.body13_crit_edge ]
  %reg_offset16 = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 %i.1127, i32 1
  %154 = ptrtoint ptr %reg_offset16 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %reg_offset16, align 4
  %add17 = add i32 %155, 11
  %156 = ptrtoint ptr %bmaddr.i108 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bmaddr.i108, align 4
  %add.ptr.i109 = getelementptr i8, ptr %157, i32 %add17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i109, i8 2) #9, !srcloc !545
  %inc19 = add nuw i32 %i.1127, 1
  %158 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %bdbars_count, align 4
  %cmp12 = icmp ult i32 %inc19, %159
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.cond21.preheader.loopexit

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

while.cond.preheader:                             ; preds = %for.inc39.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %i.2129 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc40, %for.inc39.while.cond.preheader_crit_edge ]
  %reg_offset28 = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 %i.2129, i32 1
  br label %while.cond

for.cond42.preheaderthread-pre-split:             ; preds = %for.cond21.preheader.loopexit.for.cond42.preheaderthread-pre-split_crit_edge, %for.cond10.preheader.for.cond42.preheaderthread-pre-split_crit_edge
  %160 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %160)
  %.pr = load i32, ptr %bdbars_count, align 4
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.inc39.for.cond42.preheader_crit_edge, %for.cond42.preheaderthread-pre-split
  %161 = phi i32 [ %.pr, %for.cond42.preheaderthread-pre-split ], [ %173, %for.inc39.for.cond42.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp44130.not = icmp eq i32 %161, 0
  br i1 %cmp44130.not, label %for.cond42.preheader.cleanup_crit_edge, label %for.body46.lr.ph

for.cond42.preheader.cleanup_crit_edge:           ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body46.lr.ph:                                 ; preds = %for.cond42.preheader
  %bmaddr.i112 = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  br label %for.body46

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %timeout.0 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ 100000, %while.cond.preheader ]
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %do.end, label %while.body

while.body:                                       ; preds = %while.cond
  %162 = ptrtoint ptr %reg_offset28 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %reg_offset28, align 4
  %add29 = add i32 %163, 11
  %164 = ptrtoint ptr %bmaddr.i110 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %bmaddr.i110, align 4
  %add.ptr.i111 = getelementptr i8, ptr %165, i32 %add29
  %166 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i111) #9, !srcloc !541
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %167 = and i8 %166, 2
  %cmp31 = icmp eq i8 %167, 0
  br i1 %cmp31, label %while.body.for.inc39_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.for.inc39_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc39

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %169, i32 0, i32 27
  %170 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.45) #13
  br label %for.inc39

for.inc39:                                        ; preds = %do.end, %while.body.for.inc39_crit_edge
  %inc40 = add nuw i32 %i.2129, 1
  %172 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %bdbars_count, align 4
  %cmp23 = icmp ult i32 %inc40, %173
  br i1 %cmp23, label %for.inc39.while.cond.preheader_crit_edge, label %for.inc39.for.cond42.preheader_crit_edge

for.inc39.for.cond42.preheader_crit_edge:         ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond42.preheader

for.inc39.while.cond.preheader_crit_edge:         ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.body46.lr.ph
  %i.3131 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc54, %for.body46.for.body46_crit_edge ]
  %reg_offset49 = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 %i.3131, i32 1
  %174 = ptrtoint ptr %reg_offset49 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %reg_offset49, align 4
  %bdbar_addr = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 8, i32 %i.3131, i32 3
  %176 = ptrtoint ptr %bdbar_addr to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %bdbar_addr, align 4
  %178 = ptrtoint ptr %bmaddr.i112 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bmaddr.i112, align 4
  %add.ptr.i113 = getelementptr i8, ptr %179, i32 %175
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  call void @arm_heavy_mb() #9
  %180 = call i32 @llvm.bswap.i32(i32 %177) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %180) #9, !srcloc !540
  %inc54 = add nuw i32 %i.3131, 1
  %181 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bdbars_count, align 4
  %cmp44 = icmp ult i32 %inc54, %182
  br i1 %cmp44, label %for.body46.for.body46_crit_edge, label %for.body46.cleanup_crit_edge

for.body46.cleanup_crit_edge:                     ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body46

cleanup:                                          ; preds = %for.body46.cleanup_crit_edge, %for.cond42.preheader.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %do.end22.critedge.i, %do.end10.i.i, %if.then2.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end22.critedge.i ], [ -5, %if.then2.i.cleanup_crit_edge ], [ -5, %do.end10.i.i ], [ -5, %do.end.i.cleanup_crit_edge ], [ 0, %for.cond42.preheader.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %for.body46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %int_sta_reg = getelementptr inbounds %struct.intel8x0, ptr %dev_id, i32 0, i32 23
  %0 = ptrtoint ptr %int_sta_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_sta_reg, align 4
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !535
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %int_sta_mask = getelementptr inbounds %struct.intel8x0, ptr %dev_id, i32 0, i32 24
  %6 = ptrtoint ptr %int_sta_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_sta_mask, align 4
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %bdbars_count = getelementptr inbounds %struct.intel8x0, ptr %dev_id, i32 0, i32 21
  %8 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bdbars_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1147.not = icmp eq i32 %9, 0
  br i1 %cmp1147.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %in_measurement.i = getelementptr inbounds %struct.intel8x0, ptr %dev_id, i32 0, i32 9
  %reg_lock.i = getelementptr inbounds %struct.intel8x0, ptr %dev_id, i32 0, i32 20
  br label %for.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then2.cleanup_crit_edge, label %if.then3

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %int_sta_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_sta_reg, align 4
  %12 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %4) #9, !srcloc !540
  %buggy_irq = getelementptr inbounds %struct.intel8x0, ptr %dev_id, i32 0, i32 9
  %14 = ptrtoint ptr %buggy_irq to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %buggy_irq, align 4
  %15 = lshr i16 %bf.load, 6
  %.lobit = and i16 %15, 1
  %16 = zext i16 %.lobit to i32
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %int_sta_mask12 = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 21
  %17 = ptrtoint ptr %int_sta_mask12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %int_sta_mask12, align 4
  %and13 = and i32 %18, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.then15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then15:                                        ; preds = %for.body
  %reg_offset.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 1
  %19 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_offset.i, align 4
  %prepared.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 25
  %21 = ptrtoint ptr %prepared.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %prepared.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %lor.lhs.false5.i

lor.lhs.false.i:                                  ; preds = %if.then15
  %22 = ptrtoint ptr %in_measurement.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load1.i = load i16, ptr %in_measurement.i, align 4
  %23 = and i16 %bf.load1.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool4.not.i = icmp ne i16 %23, 0
  %24 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not.i = icmp eq i8 %24, 0
  %or.cond.i = select i1 %tobool4.not.i, i1 %tobool10.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.do.body11.i_crit_edge, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.i.do.body11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11.i

lor.lhs.false5.i:                                 ; preds = %if.then15
  %.old.i = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.old.i)
  %tobool10.not.old.i = icmp eq i8 %.old.i, 0
  br i1 %tobool10.not.old.i, label %lor.lhs.false5.i.do.body11.i_crit_edge, label %lor.lhs.false5.i.for.inc_crit_edge

lor.lhs.false5.i.for.inc_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false5.i.do.body11.i_crit_edge:           ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11.i

do.body11.i:                                      ; preds = %lor.lhs.false5.i.do.body11.i_crit_edge, %lor.lhs.false.i.do.body11.i_crit_edge
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #9
  %roff_sr.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 19
  %25 = ptrtoint ptr %roff_sr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %roff_sr.i, align 4
  %add.i = add i32 %26, %20
  %27 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %add.i
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %add17.i = add i32 %20, 4
  %30 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i138.i = getelementptr i8, ptr %31, i32 %add17.i
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i138.i) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %conv19.i = zext i8 %32 to i32
  %33 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool20.not.i = icmp eq i8 %33, 0
  br i1 %tobool20.not.i, label %do.body11.i.if.end38.i_crit_edge, label %if.else.i

do.body11.i.if.end38.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.else.i:                                        ; preds = %do.body11.i
  %civ22.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 15
  %34 = ptrtoint ptr %civ22.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %civ22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv19.i)
  %cmp23.i = icmp eq i32 %35, %conv19.i
  br i1 %cmp23.i, label %if.then25.i, label %if.else29.i

if.then25.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw nsw i32 %conv19.i, 1
  %and28.i = and i32 %inc.i, 31
  br label %if.end38.sink.split.i

if.else29.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i32 %conv19.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp31.i = icmp slt i32 %sub.i, 0
  %add34.i = add i32 %sub.i, 32
  %spec.select.i = select i1 %cmp31.i, i32 %add34.i, i32 %sub.i
  br label %if.end38.sink.split.i

if.end38.sink.split.i:                            ; preds = %if.else29.i, %if.then25.i
  %and28.sink.i = phi i32 [ %and28.i, %if.then25.i ], [ %conv19.i, %if.else29.i ]
  %step.1.ph.i = phi i32 [ 1, %if.then25.i ], [ %spec.select.i, %if.else29.i ]
  %36 = ptrtoint ptr %civ22.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and28.sink.i, ptr %civ22.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end38.sink.split.i, %do.body11.i.if.end38.i_crit_edge
  %step.1.i = phi i32 [ 0, %do.body11.i.if.end38.i_crit_edge ], [ %step.1.ph.i, %if.end38.sink.split.i ]
  %fragsize1.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 8
  %37 = ptrtoint ptr %fragsize1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fragsize1.i, align 4
  %mul.i = mul i32 %38, %step.1.i
  %position.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 9
  %39 = ptrtoint ptr %position.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %position.i, align 4
  %add39.i = add i32 %40, %mul.i
  store i32 %add39.i, ptr %position.i, align 4
  %41 = ptrtoint ptr %in_measurement.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load41.i = load i16, ptr %in_measurement.i, align 4
  %42 = and i16 %bf.load41.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool45.not.i = icmp eq i16 %42, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end38.i.if.end48.i_crit_edge

if.end38.i.if.end48.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  %size.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 6
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %add39.i, %44
  %45 = ptrtoint ptr %position.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %rem.i, ptr %position.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.end38.i.if.end48.i_crit_edge
  %lvi.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 13
  %46 = ptrtoint ptr %lvi.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lvi.i, align 4
  %add49.i = add i32 %47, %step.1.i
  %and51.i = and i32 %add49.i, 31
  store i32 %and51.i, ptr %lvi.i, align 4
  %add52.i = add i32 %20, 5
  %conv54.i = trunc i32 %and51.i to i8
  %48 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %49, i32 %add52.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i140.i, i8 %conv54.i) #9, !srcloc !545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %step.1.i)
  %cmp55143.i = icmp sgt i32 %step.1.i, 0
  br i1 %cmp55143.i, label %for.body.lr.ph.i, label %for.end.thread.i

for.end.thread.i:                                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call12.i) #9
  br label %if.end78.i

for.body.lr.ph.i:                                 ; preds = %if.end48.i
  %lvi_frag.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 14
  %frags.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 12
  %physbuf.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 5
  %bdbar.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 2
  %ack66.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 16
  %ack_reload.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ack.0145.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ack.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0144.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc72.i, %for.inc.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %lvi_frag.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lvi_frag.i, align 4
  %inc57.i = add i32 %51, 1
  %52 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %frags.i, align 4
  %rem59.i = srem i32 %inc57.i, %53
  store i32 %rem59.i, ptr %lvi_frag.i, align 4
  %54 = ptrtoint ptr %physbuf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %physbuf.i, align 4
  %56 = ptrtoint ptr %fragsize1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fragsize1.i, align 4
  %mul62.i = mul i32 %57, %rem59.i
  %add63.i = add i32 %mul62.i, %55
  %58 = tail call i32 @llvm.bswap.i32(i32 %add63.i) #9
  %59 = ptrtoint ptr %bdbar.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bdbar.i, align 4
  %61 = ptrtoint ptr %lvi.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lvi.i, align 4
  %mul65.i = shl i32 %62, 1
  %arrayidx.i = getelementptr i32, ptr %60, i32 %mul65.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %58, ptr %arrayidx.i, align 4
  %64 = ptrtoint ptr %ack66.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ack66.i, align 4
  %dec.i = add i32 %65, -1
  store i32 %dec.i, ptr %ack66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp67.i = icmp eq i32 %dec.i, 0
  br i1 %cmp67.i, label %if.then69.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then69.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %ack_reload.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ack_reload.i, align 4
  %68 = ptrtoint ptr %ack66.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %ack66.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then69.i, %for.body.i.for.inc.i_crit_edge
  %ack.1.i = phi i32 [ 1, %if.then69.i ], [ %ack.0145.i, %for.body.i.for.inc.i_crit_edge ]
  %inc72.i = add nuw nsw i32 %i.0144.i, 1
  %exitcond.not.i = icmp eq i32 %inc72.i, %step.1.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ack.1.i)
  %tobool74.not.i = icmp eq i32 %ack.1.i, 0
  br i1 %tobool74.not.i, label %for.end.i.if.end78.i_crit_edge, label %land.lhs.true.i

for.end.i.if.end78.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %substream.i = getelementptr %struct.intel8x0, ptr %dev_id, i32 0, i32 8, i32 %i.048, i32 4
  %69 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %substream.i, align 4
  %tobool75.not.i = icmp eq ptr %70, null
  br i1 %tobool75.not.i, label %land.lhs.true.i.if.end78.i_crit_edge, label %if.then76.i

land.lhs.true.i.if.end78.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

if.then76.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %70) #9
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then76.i, %land.lhs.true.i.if.end78.i_crit_edge, %for.end.i.if.end78.i_crit_edge, %for.end.thread.i
  %71 = ptrtoint ptr %roff_sr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %roff_sr.i, align 4
  %add80.i = add i32 %72, %20
  %and81.i = and i8 %29, 28
  %73 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %74, i32 %add80.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i142.i, i8 %and81.i) #9, !srcloc !545
  br label %for.inc

for.inc:                                          ; preds = %if.end78.i, %lor.lhs.false5.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %75 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bdbars_count, align 4
  %cmp11 = icmp ult i32 %inc, %76
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %77 = ptrtoint ptr %int_sta_reg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %int_sta_reg, align 4
  %79 = ptrtoint ptr %int_sta_mask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %int_sta_mask, align 4
  %and19 = and i32 %80, %5
  %81 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %82, i32 %78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %83 = tail call i32 @llvm.bswap.i32(i32 %and19) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %83) #9, !srcloc !540
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ %16, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_intel8x0_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %irq = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.if.end23_crit_edge, label %for.cond.preheader

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

for.cond.preheader:                               ; preds = %entry
  %bdbars_count = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bdbars_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp144.not = icmp eq i32 %5, 0
  br i1 %cmp144.not, label %for.cond.preheader.for.end12_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end12_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp446.not = icmp eq i32 %11, 0
  br i1 %cmp446.not, label %for.cond2.preheader.for.end12_crit_edge, label %for.body5.lr.ph

for.cond2.preheader.for.end12_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  %bmaddr.i41 = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  br label %for.body5

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %reg_offset = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 %i.045, i32 1
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %add = add i32 %7, 11
  %8 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #9, !srcloc !545
  %inc = add nuw i32 %i.045, 1
  %10 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bdbars_count, align 4
  %cmp1 = icmp ult i32 %inc, %11
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %i.147 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc11, %for.body5.for.body5_crit_edge ]
  %reg_offset8 = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 %i.147, i32 1
  %12 = ptrtoint ptr %reg_offset8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_offset8, align 4
  %add9 = add i32 %13, 11
  %14 = ptrtoint ptr %bmaddr.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmaddr.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %15, i32 %add9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i42, i8 2) #9, !srcloc !545
  %inc11 = add nuw i32 %i.147, 1
  %16 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bdbars_count, align 4
  %cmp4 = icmp ult i32 %inc11, %17
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.end12_crit_edge

for.body5.for.end12_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

for.end12:                                        ; preds = %for.body5.for.end12_crit_edge, %for.cond2.preheader.for.end12_crit_edge, %for.cond.preheader.for.end12_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp13 = icmp eq i32 %19, 4
  br i1 %cmp13, label %land.lhs.true, label %for.end12.__hw_end_crit_edge

for.end12.__hw_end_crit_edge:                     ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hw_end

land.lhs.true:                                    ; preds = %for.end12
  %20 = load i32, ptr @spdif_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.then14, label %land.lhs.true.__hw_end_crit_edge

land.lhs.true.__hw_end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hw_end

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val, align 4, !annotation !532
  %pci = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %23, i32 noundef 76, ptr noundef nonnull %val) #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %and = and i32 %25, -16777217
  store i32 %and, ptr %val, align 4
  %26 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci, align 4
  %call16 = call i32 @pci_write_config_dword(ptr noundef %27, i32 noundef 76, i32 noundef %and) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  br label %__hw_end

__hw_end:                                         ; preds = %if.then14, %land.lhs.true.__hw_end_crit_edge, %for.end12.__hw_end_crit_edge
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp19 = icmp sgt i32 %.pr, -1
  br i1 %cmp19, label %if.then20, label %__hw_end.if.end23_crit_edge

__hw_end.if.end23_crit_edge:                      ; preds = %__hw_end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %__hw_end
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call ptr @free_irq(i32 noundef %.pr, ptr noundef %1) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %__hw_end.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_intel8x0_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call = tail call fastcc i32 @snd_intel8x0_codec_semaphore(ptr noundef %1, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %in_ac97_init = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %in_ac97_init to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %in_ac97_init, align 4
  %5 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %do.end, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num, align 8
  %conv4 = zext i16 %11 to i32
  %conv5 = zext i16 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.56, i32 noundef %conv4, i32 noundef %conv5) #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %conv7 = zext i16 %reg to i32
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num, align 8
  %conv9 = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv9, 7
  %add = add nuw nsw i32 %mul, %conv7
  %addr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !548
  tail call void @arm_heavy_mb() #9
  %16 = tail call i16 @llvm.bswap.i16(i16 %val) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %16) #9, !srcloc !549
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_intel8x0_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call = tail call fastcc i32 @snd_intel8x0_codec_semaphore(ptr noundef %1, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %in_ac97_init = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %in_ac97_init to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %in_ac97_init, align 4
  %5 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %do.end, label %if.then.if.end31_crit_edge

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num, align 8
  %conv4 = zext i16 %11 to i32
  %conv5 = zext i16 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.60, i32 noundef %conv4, i32 noundef %conv5) #13
  br label %if.end31

if.else:                                          ; preds = %entry
  %conv6 = zext i16 %reg to i32
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num, align 8
  %conv8 = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv8, 7
  %add = add nuw nsw i32 %mul, %conv6
  %addr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !537
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %19, i32 48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #9, !srcloc !535
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %and = and i32 %21, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else.if.end31_crit_edge, label %if.then12

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then12:                                        ; preds = %if.else
  %codec_ready_bits = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %codec_ready_bits to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %codec_ready_bits, align 4
  %24 = and i32 %23, -2
  %neg = xor i32 %24, -2
  %and13 = and i32 %neg, %21
  %25 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %and13) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %27) #9, !srcloc !540
  %in_ac97_init14 = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %in_ac97_init14 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load15 = load i16, ptr %in_ac97_init14, align 4
  %29 = and i16 %bf.load15, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool19.not = icmp eq i16 %29, 0
  br i1 %tobool19.not, label %do.end23, label %if.then12.if.end31_crit_edge

if.then12.if.end31_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end23:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %card24 = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %card24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card24, align 4
  %dev25 = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev25, align 8
  %34 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num, align 8
  %conv27 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.63, i32 noundef %conv27, i32 noundef %conv6) #13
  br label %if.end31

if.end31:                                         ; preds = %do.end23, %if.then12.if.end31_crit_edge, %if.else.if.end31_crit_edge, %do.end, %if.then.if.end31_crit_edge
  %res.0 = phi i16 [ %17, %if.else.if.end31_crit_edge ], [ -1, %do.end ], [ -1, %if.then.if.end31_crit_edge ], [ -1, %do.end23 ], [ -1, %if.then12.if.end31_crit_edge ]
  ret i16 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_intel8x0_ali_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_intel8x0_ali_codec_semaphore(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !548
  tail call void @arm_heavy_mb() #9
  %4 = tail call i16 @llvm.bswap.i16(i16 %val) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %4) #9, !srcloc !549
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.not = icmp eq i16 %6, 0
  %7 = or i16 %reg, 256
  %spec.select = select i1 %tobool1.not, i16 %reg, i16 %7
  %8 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %9, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !548
  tail call void @arm_heavy_mb() #9
  %10 = tail call i16 @llvm.bswap.i16(i16 %spec.select) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12, i16 %10) #9, !srcloc !549
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %count.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 127
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %count.08.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 56
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i
  %in_ac97_init.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %in_ac97_init.i, align 4
  %16 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool1.not.i = icmp eq i16 %16, 0
  br i1 %tobool1.not.i, label %do.end.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.68) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %for.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_intel8x0_ali_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_intel8x0_ali_codec_semaphore(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.__err_crit_edge

entry.__err_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__err

if.end:                                           ; preds = %entry
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  %spec.select.v = select i1 %tobool2.not, i16 128, i16 384
  %spec.select = or i16 %spec.select.v, %reg
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !548
  tail call void @arm_heavy_mb() #9
  %6 = tail call i16 @llvm.bswap.i16(i16 %spec.select) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %6) #9, !srcloc !549
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %count.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 127
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %count.08.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 56
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end11

for.end.i:                                        ; preds = %for.cond.i
  %in_ac97_init.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %in_ac97_init.i, align 4
  %12 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool1.not.i = icmp eq i16 %12, 0
  br i1 %tobool1.not.i, label %do.end.i, label %for.end.i.__err_crit_edge

for.end.i.__err_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__err

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.68) #13
  br label %__err

if.end11:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %18, i32 36
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i20) #9, !srcloc !537
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  br label %__err

__err:                                            ; preds = %if.end11, %do.end.i, %for.end.i.__err_crit_edge, %entry.__err_crit_edge
  %data.0 = phi i16 [ -1, %entry.__err_crit_edge ], [ %20, %if.end11 ], [ -1, %do.end.i ], [ -1, %for.end.i.__err_crit_edge ]
  ret i16 %data.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_intel8x0_mixer_free_ac97(ptr nocapture noundef readonly %ac97) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 13, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_intel8x0_mixer_free_ac97_bus(ptr nocapture noundef readonly %bus) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97_bus = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac97_bus, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_tune_hardware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_assign(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_intel8x0_codec_semaphore(ptr nocapture noundef readonly %chip, i32 noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %codec)
  %cmp = icmp ugt i32 %codec, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_sdin_init = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 9
  %0 = ptrtoint ptr %in_sdin_init to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %in_sdin_init, align 4
  %1 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %codec_isr_bits = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 18
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %codec_bit = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 17
  %2 = ptrtoint ptr %codec_bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %codec_bit, align 4
  %arrayidx = getelementptr %struct.intel8x0, ptr %chip, i32 0, i32 14, i32 %codec
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %3, i32 %5
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %codec.addr.0.in = phi ptr [ %codec_isr_bits, %if.then1 ], [ %arrayidx2, %if.else ]
  %6 = ptrtoint ptr %codec.addr.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %codec.addr.0 = load i32, ptr %codec.addr.0.in, align 4
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !535
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %and = and i32 %10, %codec.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %11 = ptrtoint ptr %in_sdin_init to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load7 = load i16, ptr %in_sdin_init, align 4
  %12 = and i16 %bf.load7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool11.not = icmp eq i16 %12, 0
  br i1 %tobool11.not, label %if.end6.do.body_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  br label %do.body

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %if.end6.do.body_crit_edge
  %time.0 = phi i32 [ %dec, %if.end18.do.body_crit_edge ], [ 100, %if.end6.do.body_crit_edge ]
  %13 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %14, i32 52
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i40) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %do.body.cleanup_crit_edge, label %if.end18

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #9
  %dec = add nsw i32 %time.0, -1
  %tobool19.not = icmp eq i32 %time.0, 0
  br i1 %tobool19.not, label %do.end22, label %if.end18.do.body_crit_edge

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 5
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %23, i32 52
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i42) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %conv24 = zext i8 %24 to i32
  %25 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %26, i32 48
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #9, !srcloc !535
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.58, i32 noundef %conv24, i32 noundef %28) #13
  %addr.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 2
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr.i, align 4
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #9, !srcloc !537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end22 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_intel8x0_ali_codec_semaphore(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buggy_semaphore = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 9
  %0 = ptrtoint ptr %buggy_semaphore to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %buggy_semaphore, align 4
  %1 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader
  %dec17 = phi i32 [ 99, %while.cond.preheader ], [ %dec, %while.body.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool2.not = icmp eq i32 %.mask, 0
  br i1 %tobool2.not, label %land.rhs.for.body.i.preheader_crit_edge, label %while.body

land.rhs.for.body.i.preheader_crit_edge:          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %dec = add nsw i32 %dec17, -1
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %land.lhs.true.critedge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.lhs.true.critedge:                           ; preds = %while.body
  %6 = ptrtoint ptr %buggy_semaphore to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load4 = load i16, ptr %buggy_semaphore, align 4
  %7 = and i16 %bf.load4, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  br i1 %tobool8.not, label %do.end, label %land.lhs.true.critedge.for.body.i.preheader_crit_edge

land.lhs.true.critedge.for.body.i.preheader_crit_edge: ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

do.end:                                           ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 5
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.65) #13
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end, %land.lhs.true.critedge.for.body.i.preheader_crit_edge, %land.rhs.for.body.i.preheader_crit_edge
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %count.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 127
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %count.08.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %12 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 56
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i
  %16 = ptrtoint ptr %buggy_semaphore to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %buggy_semaphore, align 4
  %17 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool1.not.i = icmp eq i16 %17, 0
  br i1 %tobool1.not.i, label %do.end.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 5
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.68) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %for.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %do.end.i ], [ -16, %for.end.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %arrayidx = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 1
  %substream2.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 1, i32 4
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_intel8x0_stream, i32 64)
  %pcm.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 1, i32 23
  %6 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm.i, align 4
  %rates.i = getelementptr inbounds %struct.ac97_pcm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rates.i, align 4
  %rates4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %10 = ptrtoint ptr %rates4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rates4.i, align 8
  %call.i.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i) #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 7
  %13 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %buffer_bytes_max.i, align 4
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %14 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65536, ptr %period_bytes_max.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %private_data11.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %15 = ptrtoint ptr %private_data11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %private_data11.i, align 8
  %multi8 = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %multi8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %multi8, align 4
  %17 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end24.sink.split_crit_edge

if.end.if.end24.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split

if.else:                                          ; preds = %if.end
  %18 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool8.not = icmp eq i16 %18, 0
  br i1 %tobool8.not, label %if.else13, label %if.else.if.end24.sink.split_crit_edge

if.else.if.end24.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool17.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool17.not, label %if.else13.if.end24_crit_edge, label %if.else13.if.end24.sink.split_crit_edge

if.else13.if.end24.sink.split_crit_edge:          ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split

if.else13.if.end24_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24.sink.split:                              ; preds = %if.else13.if.end24.sink.split_crit_edge, %if.else.if.end24.sink.split_crit_edge, %if.end.if.end24.sink.split_crit_edge
  %.sink = phi i32 [ 8, %if.end.if.end24.sink.split_crit_edge ], [ 6, %if.else.if.end24.sink.split_crit_edge ], [ 4, %if.else13.if.end24.sink.split_crit_edge ]
  %hw_constraints_channels6.sink = phi ptr [ @hw_constraints_channels8, %if.end.if.end24.sink.split_crit_edge ], [ @hw_constraints_channels6, %if.else.if.end24.sink.split_crit_edge ], [ @hw_constraints_channels4, %if.else13.if.end24.sink.split_crit_edge ]
  %channels_max11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %19 = ptrtoint ptr %channels_max11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %channels_max11, align 8
  %call12 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %hw_constraints_channels6.sink) #9
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else13.if.end24_crit_edge
  %20 = ptrtoint ptr %multi8 to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load25 = load i16, ptr %multi8, align 4
  %21 = and i16 %bf.load25, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool29.not = icmp eq i16 %21, 0
  br i1 %tobool29.not, label %if.end24.if.end32_crit_edge, label %if.then30

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 @snd_ac97_pcm_double_rate_rules(ptr noundef %3) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end24.if.end32_crit_edge
  %22 = ptrtoint ptr %multi8 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load33 = load i16, ptr %multi8, align 4
  %23 = and i16 %bf.load33, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool37.not = icmp eq i16 %23, 0
  br i1 %tobool37.not, label %if.end32.cleanup_crit_edge, label %if.then38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 1
  %24 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %formats, align 8
  %or = or i64 %25, 1024
  store i64 %or, ptr %formats, align 8
  %call40 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end32.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then38 ], [ 0, %if.end32.cleanup_crit_edge ], [ %call7.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_intel8x0_playback_close(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %substream1 = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 1, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %7)
  %cmp = icmp ugt i32 %7, 48000
  %conv = zext i1 %cmp to i32
  %pcm_open_flag = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 24
  %8 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_open_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pcm = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 23
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 4
  %call2 = tail call i32 @snd_ac97_pcm_close(ptr noundef %11) #9
  %12 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pcm_open_flag, align 4
  %prepared = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 25
  %13 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %prepared, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %prepared, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pcm4 = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 23
  %14 = ptrtoint ptr %pcm4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcm4, align 4
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i40 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i40, align 4
  %arrayidx = getelementptr %struct.ac97_pcm, ptr %15, i32 0, i32 5, i32 %conv
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 4
  %call8 = tail call i32 @snd_ac97_pcm_open(ptr noundef %15, i32 noundef %17, i32 noundef %19, i16 noundef zeroext %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.then11, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then11:                                        ; preds = %if.end
  %22 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %pcm_open_flag, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp13 = icmp eq i32 %24, 1
  br i1 %cmp13, label %land.lhs.true, label %if.then11.if.end25_crit_edge

if.then11.if.end25_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then11
  %spdif_idx = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %spdif_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %spdif_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp15 = icmp slt i32 %26, 0
  br i1 %cmp15, label %if.then17, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %pcm4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcm4, align 4
  %codec = getelementptr inbounds %struct.ac97_pcm, ptr %28, i32 0, i32 5, i32 0, i32 3
  %29 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %codec, align 4
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %call23 = tail call i32 @snd_ac97_set_rate(ptr noundef %30, i32 noundef 58, i32 noundef %32) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %land.lhs.true.if.end25_crit_edge, %if.then11.if.end25_crit_edge, %if.end.if.end25_crit_edge
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %pcm_open_flag = getelementptr inbounds %struct.ichdev, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pcm_open_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pcm = getelementptr inbounds %struct.ichdev, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %call = tail call i32 @snd_ac97_pcm_close(ptr noundef %7) #9
  %8 = ptrtoint ptr %pcm_open_flag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pcm_open_flag, align 4
  %prepared = getelementptr inbounds %struct.ichdev, ptr %3, i32 0, i32 25
  %9 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %prepared, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %prepared, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 8
  %physbuf = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %physbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %physbuf, align 4
  %9 = load ptr, ptr %runtime1, align 4
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
  %size = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i, ptr %size, align 4
  %15 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 21
  %18 = ptrtoint ptr %frame_bits.i.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits.i.i24, align 8
  %mul.i.i25 = mul i32 %19, %17
  %div1.i.i26 = lshr i32 %mul.i.i25, 3
  %fragsize = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 7
  %20 = ptrtoint ptr %fragsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div1.i.i26, ptr %fragsize, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  tail call fastcc void @snd_intel8x0_setup_pcm_out(ptr noundef %1, ptr noundef %3)
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp5 = icmp eq i32 %24, 1
  br i1 %cmp5, label %if.then6, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sample_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 22
  %25 = ptrtoint ptr %sample_bits to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sample_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %26)
  %cmp7 = icmp ugt i32 %26, 16
  %cond = select i1 %cmp7, i32 2, i32 1
  %pos_shift = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 10
  %27 = ptrtoint ptr %pos_shift to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond, ptr %pos_shift, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call fastcc void @snd_intel8x0_setup_periods(ptr noundef %1, ptr noundef %5)
  %prepared = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 25
  %28 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %prepared, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %prepared, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %reg_offset = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge30
    i32 5, label %sw.bb3
    i32 0, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.bb2_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %suspended = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 25
  %9 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %suspended, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %suspended, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge30
  %position = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %position, align 4
  %last_pos = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %last_pos to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_pos, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %suspended4 = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 25
  %13 = ptrtoint ptr %suspended4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load5 = load i8, ptr %suspended4, align 4
  %bf.set7 = or i8 %bf.load5, 64
  store i8 %bf.set7, ptr %suspended4, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %val.0 = phi i8 [ 16, %sw.bb9 ], [ 17, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb3 ]
  %add = add i32 %7, 11
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %val.0) #9, !srcloc !545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 0
  br i1 %cmp, label %while.cond.preheader, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %sw.epilog
  %roff_sr = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %16 = ptrtoint ptr %roff_sr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %roff_sr, align 4
  %add10 = add i32 %17, %7
  %18 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %19, i32 %add10
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i27) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %21 = and i8 %20, 1
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i29, i8 2) #9, !srcloc !545
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %while.end ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %reg_lock = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #9
  %reg_offset = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 1
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  %roff_picb = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 20
  %position6 = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 9
  %inside_vm = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %timeout.0 = phi i32 [ 10, %entry ], [ %timeout.0.be, %do.body.backedge ]
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %add = add i32 %7, 4
  %8 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %11 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_offset, align 4
  %13 = ptrtoint ptr %roff_picb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %roff_picb, align 4
  %add3 = add i32 %14, %12
  %15 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %16, i32 %add3
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i95) #9, !srcloc !537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  %18 = ptrtoint ptr %position6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %position6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp = icmp eq i16 %17, 0
  br i1 %cmp, label %do.cond, label %if.end

if.end:                                           ; preds = %do.body
  %20 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_offset, align 4
  %add9 = add i32 %21, 4
  %22 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %23, i32 %add9
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i97) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %24)
  %cmp12.not = icmp eq i8 %10, %24
  br i1 %cmp12.not, label %if.end15, label %do.cond.thread

if.end15:                                         ; preds = %if.end
  %25 = ptrtoint ptr %inside_vm to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %inside_vm, align 4
  %26 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not = icmp eq i16 %26, 0
  br i1 %tobool.not, label %if.end17, label %if.end15.if.then30_crit_edge

if.end15.if.then30_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.end17:                                         ; preds = %if.end15
  %27 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_offset, align 4
  %29 = ptrtoint ptr %roff_picb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %roff_picb, align 4
  %add20 = add i32 %30, %28
  %31 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %32, i32 %add20
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i99) #9, !srcloc !537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %33)
  %cmp23 = icmp eq i16 %17, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool27.not = icmp eq i32 %timeout.0, 0
  %or.cond = select i1 %cmp23, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.end17.if.then30_crit_edge, label %if.end17.do.body.backedge_crit_edge

if.end17.do.body.backedge_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.backedge

if.end17.if.then30_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

do.cond:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool27.not.old = icmp eq i32 %timeout.0, 0
  br i1 %tobool27.not.old, label %do.end, label %do.cond.do.body.backedge_crit_edge

do.cond.do.body.backedge_crit_edge:               ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %do.cond.thread.do.body.backedge_crit_edge, %do.cond.do.body.backedge_crit_edge, %if.end17.do.body.backedge_crit_edge
  %timeout.0.be = add i32 %timeout.0, -1
  br label %do.body

do.cond.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool27.not.old104 = icmp eq i32 %timeout.0, 0
  br i1 %tobool27.not.old104, label %do.cond.thread.if.then30_crit_edge, label %do.cond.thread.do.body.backedge_crit_edge

do.cond.thread.do.body.backedge_crit_edge:        ; preds = %do.cond.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.backedge

do.cond.thread.if.then30_crit_edge:               ; preds = %do.cond.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  %last_pos = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 11
  %35 = ptrtoint ptr %last_pos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_pos, align 4
  br label %if.end46

if.then30:                                        ; preds = %do.cond.thread.if.then30_crit_edge, %if.end17.if.then30_crit_edge, %if.end15.if.then30_crit_edge
  %37 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  %conv5.le = zext i16 %37 to i32
  %last_pos101 = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 11
  %38 = ptrtoint ptr %last_pos101 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %last_pos101, align 4
  %pos_shift = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 10
  %40 = ptrtoint ptr %pos_shift to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pos_shift, align 4
  %shl = shl i32 %conv5.le, %41
  %fragsize1 = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 8
  %42 = ptrtoint ptr %fragsize1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fragsize1, align 4
  %sub = sub i32 %43, %shl
  %add31 = add i32 %sub, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %39)
  %cmp33 = icmp ult i32 %add31, %39
  br i1 %cmp33, label %if.then35, label %if.then30.if.end46_crit_edge

if.then30.if.end46_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %19, %43
  %div39 = udiv i32 %39, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div39)
  %cmp40 = icmp eq i32 %div, %div39
  %spec.select = select i1 %cmp40, i32 %39, i32 %add31
  br label %if.end46

if.end46:                                         ; preds = %if.then35, %if.then30.if.end46_crit_edge, %do.end
  %last_pos102 = phi ptr [ %last_pos101, %if.then35 ], [ %last_pos101, %if.then30.if.end46_crit_edge ], [ %last_pos, %do.end ]
  %ptr.1 = phi i32 [ %spec.select, %if.then35 ], [ %add31, %if.then30.if.end46_crit_edge ], [ %36, %do.end ]
  %44 = ptrtoint ptr %last_pos102 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %ptr.1, ptr %last_pos102, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #9
  %size = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 6
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ptr.1, i32 %46)
  %cmp49.not = icmp ult i32 %ptr.1, %46
  br i1 %cmp49.not, label %if.end52, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %ptr.1, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %48, i32 0, i32 21
  %49 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %50
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end46.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i, %if.end52 ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_double_rate_rules(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_open(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_set_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_intel8x0_setup_pcm_out(ptr noundef %chip, ptr nocapture noundef readonly %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 14
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %1)
  %cmp = icmp ugt i32 %1, 48000
  %reg_lock = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %3, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmaddr.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %8 = and i32 %7, -196609
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 15
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp1 = icmp eq i32 %11, 4
  %brmerge = select i1 %cmp1, i1 true, i1 %cmp
  %or = or i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp4 = icmp eq i32 %11, 6
  %or7 = or i32 %9, 512
  %spec.select = select i1 %cmp4, i32 %or7, i32 %9
  %cnt.0 = select i1 %brmerge, i32 %or, i32 %spec.select
  %12 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmaddr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %cnt.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %14) #9, !srcloc !540
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bmaddr.i121 = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  %15 = ptrtoint ptr %bmaddr.i121 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmaddr.i121, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %18 = and i32 %17, 1073741823
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %channels12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 15
  %20 = ptrtoint ptr %channels12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp13 = icmp eq i32 %21, 4
  %brmerge116 = select i1 %cmp13, i1 true, i1 %cmp
  %or18 = or i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp21 = icmp eq i32 %21, 6
  %or24 = or i32 %19, 128
  %spec.select117 = select i1 %cmp21, i32 %or24, i32 %19
  %cnt.1 = select i1 %brmerge116, i32 %or18, i32 %spec.select117
  %22 = ptrtoint ptr %bmaddr.i121 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmaddr.i121, align 4
  %add.ptr.i123 = getelementptr i8, ptr %23, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %cnt.1) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %24) #9, !srcloc !540
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %bmaddr.i124 = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  %25 = ptrtoint ptr %bmaddr.i124 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bmaddr.i124, align 4
  %add.ptr.i125 = getelementptr i8, ptr %26, i32 44
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %28 = and i32 %27, -28673
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %channels29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 15
  %30 = ptrtoint ptr %channels29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channels29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp30 = icmp eq i32 %31, 4
  %brmerge118 = select i1 %cmp30, i1 true, i1 %cmp
  br i1 %brmerge118, label %if.then34, label %if.else36

if.then34:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %or35 = or i32 %29, 1048576
  br label %if.end50

if.else36:                                        ; preds = %sw.default
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %31, label %if.else36.if.end50_crit_edge [
    i32 6, label %if.then40
    i32 8, label %if.then46
  ]

if.else36.if.end50_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then40:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %or41 = or i32 %29, 2097152
  br label %if.end50

if.then46:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %or47 = or i32 %29, 3145728
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.then40, %if.else36.if.end50_crit_edge, %if.then34
  %cnt.2 = phi i32 [ %or35, %if.then34 ], [ %or41, %if.then40 ], [ %or47, %if.then46 ], [ %29, %if.else36.if.end50_crit_edge ]
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %34, label %if.end50.if.end73_crit_edge [
    i32 4, label %if.then54
    i32 1, label %if.then66
  ]

if.end50.if.end73_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then54:                                        ; preds = %if.end50
  %and55 = and i32 %cnt.2, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then54.if.end73_crit_edge, label %if.then57

if.then54.if.end73_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %bmaddr.i124 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bmaddr.i124, align 4
  %add.ptr.i127 = getelementptr i8, ptr %37, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %28) #9, !srcloc !540
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  tail call void @msleep(i32 noundef 50) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  br label %if.end73

if.then66:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %sample_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 22
  %38 = ptrtoint ptr %sample_bits to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sample_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %39)
  %cmp67 = icmp ugt i32 %39, 16
  %or70 = or i32 %cnt.2, 4194304
  %spec.select119 = select i1 %cmp67, i32 %or70, i32 %cnt.2
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %if.then57, %if.then54.if.end73_crit_edge, %if.end50.if.end73_crit_edge
  %cnt.3 = phi i32 [ %cnt.2, %if.then57 ], [ %cnt.2, %if.then54.if.end73_crit_edge ], [ %cnt.2, %if.end50.if.end73_crit_edge ], [ %spec.select119, %if.then66 ]
  %40 = ptrtoint ptr %bmaddr.i124 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bmaddr.i124, align 4
  %add.ptr.i129 = getelementptr i8, ptr %41, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %cnt.3) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %42) #9, !srcloc !540
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end73, %sw.bb9, %sw.bb
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_intel8x0_setup_periods(ptr nocapture noundef readonly %chip, ptr noundef %ichdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bdbar1 = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 2
  %0 = ptrtoint ptr %bdbar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdbar1, align 4
  %reg_offset = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 1
  %2 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_offset, align 4
  %bdbar_addr = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 3
  %4 = ptrtoint ptr %bdbar_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bdbar_addr, align 4
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %chip, i32 0, i32 3
  %6 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #9, !srcloc !540
  %size = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 6
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %fragsize = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 7
  %11 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fragsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp eq i32 %10, %12
  %ack = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %ack, align 4
  %ack_reload = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 17
  %14 = ptrtoint ptr %ack_reload to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %ack_reload, align 4
  %shr = lshr i32 %10, 1
  %fragsize1 = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 8
  %15 = ptrtoint ptr %fragsize1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %fragsize1, align 4
  %physbuf = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 5
  %pos_shift = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %idx.0115 = phi i32 [ 0, %if.then ], [ %add21, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %physbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %physbuf, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %arrayidx = getelementptr i32, ptr %1, i32 %idx.0115
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %fragsize1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fragsize1, align 4
  %22 = ptrtoint ptr %pos_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pos_shift, align 4
  %shr6 = lshr i32 %21, %23
  %or = or i32 %shr6, -2147483648
  %24 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add7 = or i32 %idx.0115, 1
  %arrayidx8 = getelementptr i32, ptr %1, i32 %add7
  %25 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx8, align 4
  %26 = ptrtoint ptr %physbuf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %physbuf, align 4
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %shr11 = lshr i32 %29, 1
  %add12 = add i32 %shr11, %27
  %30 = tail call i32 @llvm.bswap.i32(i32 %add12)
  %add13 = or i32 %idx.0115, 2
  %arrayidx14 = getelementptr i32, ptr %1, i32 %add13
  %31 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx14, align 4
  %32 = ptrtoint ptr %fragsize1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fragsize1, align 4
  %34 = ptrtoint ptr %pos_shift to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pos_shift, align 4
  %shr17 = lshr i32 %33, %35
  %or18 = or i32 %shr17, -2147483648
  %36 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %add19 = or i32 %idx.0115, 3
  %arrayidx20 = getelementptr i32, ptr %1, i32 %add19
  %37 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx20, align 4
  %add21 = add nuw nsw i32 %idx.0115, 4
  %cmp3 = icmp ult i32 %idx.0115, 60
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %entry
  %38 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %ack, align 4
  %ack_reload23 = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 17
  %39 = ptrtoint ptr %ack_reload23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %ack_reload23, align 4
  %fragsize125 = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 8
  %40 = ptrtoint ptr %fragsize125 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %12, ptr %fragsize125, align 4
  %physbuf29 = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 5
  %pos_shift37 = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 10
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %if.else
  %idx.1114 = phi i32 [ 0, %if.else ], [ %add43, %for.body28.for.body28_crit_edge ]
  %41 = ptrtoint ptr %physbuf29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %physbuf29, align 4
  %43 = lshr exact i32 %idx.1114, 1
  %44 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fragsize, align 4
  %mul = mul i32 %45, %43
  %46 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size, align 4
  %rem = urem i32 %mul, %47
  %add33 = add i32 %rem, %42
  %48 = tail call i32 @llvm.bswap.i32(i32 %add33)
  %arrayidx35 = getelementptr i32, ptr %1, i32 %idx.1114
  %49 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx35, align 4
  %50 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fragsize, align 4
  %52 = ptrtoint ptr %pos_shift37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pos_shift37, align 4
  %shr38 = lshr i32 %51, %53
  %or39 = or i32 %shr38, -2147483648
  %54 = tail call i32 @llvm.bswap.i32(i32 %or39)
  %add40 = or i32 %idx.1114, 1
  %arrayidx41 = getelementptr i32, ptr %1, i32 %add40
  %55 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx41, align 4
  %add43 = add nuw nsw i32 %idx.1114, 2
  %cmp27 = icmp ult i32 %idx.1114, 62
  br i1 %cmp27, label %for.body28.for.body28_crit_edge, label %for.end44

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28

for.end44:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size, align 4
  %58 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fragsize, align 4
  %div = udiv i32 %57, %59
  br label %if.end

if.end:                                           ; preds = %for.end44, %for.body.if.end_crit_edge
  %div.sink = phi i32 [ %div, %for.end44 ], [ 2, %for.body.if.end_crit_edge ]
  %frags47 = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 12
  %60 = ptrtoint ptr %frags47 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %div.sink, ptr %frags47, align 4
  %add48 = add i32 %3, 5
  %lvi = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 13
  %61 = ptrtoint ptr %lvi to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 31, ptr %lvi, align 4
  %62 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %63, i32 %add48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i109, i8 31) #9, !srcloc !545
  %civ = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 15
  %64 = ptrtoint ptr %civ to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %civ, align 4
  %add49 = add i32 %3, 4
  %65 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %66, i32 %add49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i111, i8 0) #9, !srcloc !545
  %frags50 = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 12
  %67 = ptrtoint ptr %frags50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %frags50, align 4
  %rem51 = srem i32 31, %68
  %lvi_frag = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 14
  %69 = ptrtoint ptr %lvi_frag to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %rem51, ptr %lvi_frag, align 4
  %position = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 9
  %70 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %position, align 4
  %roff_sr = getelementptr inbounds %struct.ichdev, ptr %ichdev, i32 0, i32 19
  %71 = ptrtoint ptr %roff_sr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %roff_sr, align 4
  %add52 = add i32 %72, %3
  %73 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %74, i32 %add52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i113, i8 28) #9, !srcloc !545
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ichd = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %substream2.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 8, i32 0, i32 4
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_intel8x0_stream, i32 64)
  %pcm.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 8, i32 0, i32 23
  %6 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm.i, align 4
  %rates.i = getelementptr inbounds %struct.ac97_pcm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rates.i, align 4
  %rates4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %10 = ptrtoint ptr %rates4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rates4.i, align 8
  %call.i.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i) #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 7
  %13 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %buffer_bytes_max.i, align 4
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %14 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65536, ptr %period_bytes_max.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge, label %if.end10.i

if.end.i.snd_intel8x0_pcm_open.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_pcm_open.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %private_data11.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %15 = ptrtoint ptr %private_data11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ichd, ptr %private_data11.i, align 8
  br label %snd_intel8x0_pcm_open.exit

snd_intel8x0_pcm_open.exit:                       ; preds = %if.end10.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ %call7.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_intel8x0_capture_close(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %substream1 = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 8, i32 0, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_mic_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 2
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %substream2.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 2, i32 4
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_intel8x0_stream, i32 64)
  %pcm.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 2, i32 23
  %6 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm.i, align 4
  %rates.i = getelementptr inbounds %struct.ac97_pcm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rates.i, align 4
  %rates4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %10 = ptrtoint ptr %rates4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rates4.i, align 8
  %call.i.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i) #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 7
  %13 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %buffer_bytes_max.i, align 4
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %14 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65536, ptr %period_bytes_max.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge, label %if.end10.i

if.end.i.snd_intel8x0_pcm_open.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_pcm_open.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %private_data11.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %15 = ptrtoint ptr %private_data11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %private_data11.i, align 8
  br label %snd_intel8x0_pcm_open.exit

snd_intel8x0_pcm_open.exit:                       ; preds = %if.end10.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ %call7.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_intel8x0_mic_close(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %substream1 = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 2, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_mic2_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 3
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %substream2.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 3, i32 4
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_intel8x0_stream, i32 64)
  %pcm.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 3, i32 23
  %6 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm.i, align 4
  %rates.i = getelementptr inbounds %struct.ac97_pcm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rates.i, align 4
  %rates4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %10 = ptrtoint ptr %rates4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rates4.i, align 8
  %call.i.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i) #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 7
  %13 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %buffer_bytes_max.i, align 4
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %14 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65536, ptr %period_bytes_max.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge, label %if.end10.i

if.end.i.snd_intel8x0_pcm_open.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_pcm_open.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %private_data11.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %15 = ptrtoint ptr %private_data11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %private_data11.i, align 8
  br label %snd_intel8x0_pcm_open.exit

snd_intel8x0_pcm_open.exit:                       ; preds = %if.end10.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ %call7.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_intel8x0_mic2_close(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %substream1 = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 3, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_capture2_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %substream2.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 4, i32 4
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_intel8x0_stream, i32 64)
  %pcm.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 4, i32 23
  %6 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm.i, align 4
  %rates.i = getelementptr inbounds %struct.ac97_pcm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rates.i, align 4
  %rates4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %10 = ptrtoint ptr %rates4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rates4.i, align 8
  %call.i.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i) #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 7
  %13 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %buffer_bytes_max.i, align 4
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %14 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65536, ptr %period_bytes_max.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge, label %if.end10.i

if.end.i.snd_intel8x0_pcm_open.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_pcm_open.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %private_data11.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %15 = ptrtoint ptr %private_data11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %private_data11.i, align 8
  br label %snd_intel8x0_pcm_open.exit

snd_intel8x0_pcm_open.exit:                       ; preds = %if.end10.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ %call7.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_intel8x0_capture2_close(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %substream1 = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 4, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_spdif_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  %cond = select i1 %cmp, i32 3, i32 5
  %arrayidx = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 %cond
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1.i, align 4
  %substream2.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 %cond, i32 4
  %6 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw.i, ptr @snd_intel8x0_stream, i32 64)
  %pcm.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 %cond, i32 23
  %8 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm.i, align 4
  %rates.i = getelementptr inbounds %struct.ac97_pcm, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rates.i, align 4
  %rates4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 2
  %12 = ptrtoint ptr %rates4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rates4.i, align 8
  %call.i.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i) #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp eq i32 %14, 2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 7
  %15 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65536, ptr %buffer_bytes_max.i, align 4
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 9
  %16 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65536, ptr %period_bytes_max.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %5, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge, label %if.end10.i

if.end.i.snd_intel8x0_pcm_open.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_pcm_open.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %private_data11.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %17 = ptrtoint ptr %private_data11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %private_data11.i, align 8
  br label %snd_intel8x0_pcm_open.exit

snd_intel8x0_pcm_open.exit:                       ; preds = %if.end10.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ %call7.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_intel8x0_spdif_close(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  %cond = select i1 %cmp, i32 3, i32 5
  %substream1 = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 %cond, i32 4
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_ali_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %reg_offset = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !535
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge107
    i32 5, label %sw.bb19
    i32 0, label %entry.sw.bb24_crit_edge
    i32 3, label %entry.sw.bb24_crit_edge108
  ]

entry.sw.bb24_crit_edge108:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

entry.sw.bb24_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

entry.sw.bb2_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %suspended = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 25
  %13 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %suspended, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %suspended, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge107
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %sw.bb2.if.end_crit_edge

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %ali_slot = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 22
  %16 = ptrtoint ptr %ali_slot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ali_slot, align 4
  %div81 = lshr i32 %17, 2
  %arrayidx = getelementptr [3 x i32], ptr @snd_intel8x0_ali_trigger.fiforeg, i32 0, i32 %div81
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %21, i32 %19
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #9, !srcloc !535
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %24 = ptrtoint ptr %ali_slot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ali_slot, align 4
  %rem = and i32 %25, 3
  %shl = shl nuw nsw i32 255, %rem
  %neg = xor i32 %shl, -1
  %and = and i32 %23, %neg
  %shl7 = shl nuw nsw i32 131, %rem
  %or = or i32 %and, %shl7
  %div982 = lshr i32 %25, 2
  %arrayidx10 = getelementptr [3 x i32], ptr @snd_intel8x0_ali_trigger.fiforeg, i32 0, i32 %div982
  %26 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx10, align 4
  %28 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %29, i32 %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %30) #9, !srcloc !540
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2.if.end_crit_edge
  %add = add i32 %7, 11
  %31 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %32, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i88, i8 16) #9, !srcloc !545
  %ali_slot11 = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 22
  %33 = ptrtoint ptr %ali_slot11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ali_slot11, align 4
  %add12 = add i32 %34, 16
  %shl13 = shl nuw i32 1, %add12
  %neg14 = xor i32 %shl13, -1
  %and15 = and i32 %11, %neg14
  %shl17 = shl nuw i32 1, %34
  %or18 = or i32 %and15, %shl17
  %35 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %or18) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %37) #9, !srcloc !540
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %suspended20 = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 25
  %38 = ptrtoint ptr %suspended20 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load21 = load i8, ptr %suspended20, align 4
  %bf.set23 = or i8 %bf.load21, 64
  store i8 %bf.set23, ptr %suspended20, align 4
  br label %sw.bb24

sw.bb24:                                          ; preds = %sw.bb19, %entry.sw.bb24_crit_edge, %entry.sw.bb24_crit_edge108
  %ali_slot25 = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 22
  %39 = ptrtoint ptr %ali_slot25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ali_slot25, align 4
  %add26 = add i32 %40, 16
  %shl27 = shl nuw i32 1, %add26
  %or28 = or i32 %shl27, %11
  %41 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %or28) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %43) #9, !srcloc !540
  %add29 = add i32 %7, 11
  %44 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %45, i32 %add29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i94, i8 0) #9, !srcloc !545
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %sw.bb24
  %46 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %47, i32 %add29
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i96) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %tobool.not = icmp eq i8 %48, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd)
  %cmp32 = icmp eq i32 %cmd, 3
  br i1 %cmp32, label %while.end.cleanup_crit_edge, label %if.end34

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %50, i32 %add29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i98, i8 2) #9, !srcloc !545
  %add36 = add i32 %7, 6
  %51 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %52, i32 %add36
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i100) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %54 = or i8 %53, 30
  %55 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %56, i32 %add36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i102, i8 %54) #9, !srcloc !545
  %57 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %58, i32 24
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #9, !srcloc !535
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %int_sta_mask = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 21
  %61 = ptrtoint ptr %int_sta_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %int_sta_mask, align 4
  %and42 = and i32 %62, %60
  %63 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %64, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %65 = tail call i32 @llvm.bswap.i32(i32 %and42) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %65) #9, !srcloc !540
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %while.end.cleanup_crit_edge, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %if.end34 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_ali_ac97spdifout_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %5 = or i32 %4, 8192
  %6 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %5) #9, !srcloc !540
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  %arrayidx = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime1.i, align 4
  %substream2.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 3, i32 4
  %12 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46
  %13 = call ptr @memcpy(ptr %hw.i, ptr @snd_intel8x0_stream, i32 64)
  %pcm.i = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 3, i32 23
  %14 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcm.i, align 4
  %rates.i = getelementptr inbounds %struct.ac97_pcm, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rates.i, align 4
  %rates4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46, i32 2
  %18 = ptrtoint ptr %rates4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rates4.i, align 8
  %call.i.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i) #9
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i = icmp eq i32 %20, 2
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46, i32 7
  %21 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65536, ptr %buffer_bytes_max.i, align 4
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 46, i32 9
  %22 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65536, ptr %period_bytes_max.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %11, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge, label %if.end10.i

if.end.i.snd_intel8x0_pcm_open.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_intel8x0_pcm_open.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %private_data11.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 44
  %23 = ptrtoint ptr %private_data11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx, ptr %private_data11.i, align 8
  br label %snd_intel8x0_pcm_open.exit

snd_intel8x0_pcm_open.exit:                       ; preds = %if.end10.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ %call7.i, %if.end.i.snd_intel8x0_pcm_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0_ali_ac97spdifout_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %substream1 = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 8, i32 3, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %substream1, align 4
  %reg_lock = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %6 = and i32 %5, -8193
  %7 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %6) #9, !srcloc !540
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_intel8x0_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.137) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !535
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %12 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %13, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #9, !srcloc !535
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.138, i32 noundef %15) #9
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.139, i32 noundef %9) #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp7 = icmp eq i32 %19, 1
  br i1 %cmp7, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %22 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %23, i32 128
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #9, !srcloc !535
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.140, i32 noundef %25) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.141) #9
  %codec_isr_bits = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 18
  %28 = ptrtoint ptr %codec_isr_bits to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %codec_isr_bits, align 4
  %and = and i32 %29, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end11
  %max_codecs = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %max_codecs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1466.not = icmp eq i32 %31, 0
  br i1 %cmp1466.not, label %for.cond.preheader.if.end22_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %codec_bit = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %32 = ptrtoint ptr %codec_bit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %codec_bit, align 4
  %arrayidx = getelementptr i32, ptr %33, i32 %i.067
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %and15 = and i32 %35, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %arrayidx19 = getelementptr [3 x ptr], ptr @snd_intel8x0_proc_read.codecs, i32 0, i32 %i.067
  %38 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.145, ptr noundef %39) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.067, 1
  %40 = ptrtoint ptr %max_codecs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_codecs, align 4
  %cmp14 = icmp ult i32 %inc, %41
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.if.end22_crit_edge

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.146) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else, %for.inc.if.end22_crit_edge, %for.cond.preheader.if.end22_crit_edge
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.147) #9
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 4
  %.off = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  %ac97_sdin = getelementptr inbounds %struct.intel8x0, ptr %1, i32 0, i32 14
  %50 = ptrtoint ptr %ac97_sdin to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ac97_sdin, align 4
  %arrayidx32 = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 14, i32 1
  %52 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx32, align 4
  %arrayidx34 = getelementptr %struct.intel8x0, ptr %1, i32 0, i32 14, i32 2
  %54 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx34, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.148, i32 noundef %51, i32 noundef %53, i32 noundef %55) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_power(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel8x0_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %ncodecs = getelementptr inbounds %struct.intel8x0, ptr %3, i32 0, i32 16
  %5 = ptrtoint ptr %ncodecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ncodecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp22.not = icmp eq i32 %6, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.intel8x0, ptr %3, i32 0, i32 13, i32 %i.023
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void @snd_ac97_suspend(ptr noundef %8) #9
  %inc = add nuw i32 %i.023, 1
  %9 = ptrtoint ptr %ncodecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ncodecs, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp1 = icmp eq i32 %12, 1
  br i1 %cmp1, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 128
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !541
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %conv = zext i8 %15 to i32
  %sdm_saved = getelementptr inbounds %struct.intel8x0, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %sdm_saved to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %sdm_saved, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %irq = getelementptr inbounds %struct.intel8x0, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp3 = icmp sgt i32 %18, -1
  br i1 %cmp3, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %3) #9
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %irq, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 33
  %20 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %sync_irq, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel8x0_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %call1 = tail call fastcc i32 @snd_intel8x0_chip_init(ptr noundef %3, i32 noundef 0)
  %irq = getelementptr i8, ptr %dev, i32 932
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @snd_intel8x0_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.175, i32 noundef %7) #13
  %call4 = tail call i32 @snd_card_disconnect(ptr noundef %1) #9
  br label %cleanup38

if.end:                                           ; preds = %entry
  %irq6 = getelementptr inbounds %struct.intel8x0, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %irq6, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %sync_irq, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, ptr @spdif_aclink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sdm_saved = getelementptr inbounds %struct.intel8x0, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %sdm_saved to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sdm_saved, align 4
  %conv = trunc i32 %14 to i8
  %bmaddr.i = getelementptr inbounds %struct.intel8x0, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #9, !srcloc !545
  %17 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %18, i32 44
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #9, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %20 = or i32 %19, 192
  %21 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %20) #9, !srcloc !540
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %ncodecs = getelementptr inbounds %struct.intel8x0, ptr %3, i32 0, i32 16
  %23 = ptrtoint ptr %ncodecs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ncodecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1294.not = icmp eq i32 %24, 0
  br i1 %cmp1294.not, label %if.end11.for.cond14.preheader_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.cond14.preheader_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body.for.cond14.preheader_crit_edge, %if.end11.for.cond14.preheader_crit_edge
  %bdbars_count = getelementptr inbounds %struct.intel8x0, ptr %3, i32 0, i32 21
  %25 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bdbars_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1596.not = icmp eq i32 %26, 0
  br i1 %cmp1596.not, label %for.cond14.preheader.for.end37_crit_edge, label %for.body17.lr.ph

for.cond14.preheader.for.end37_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %bmaddr.i86 = getelementptr inbounds %struct.intel8x0, ptr %3, i32 0, i32 3
  br label %for.body17

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end11.for.body_crit_edge
  %i.095 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.intel8x0, ptr %3, i32 0, i32 13, i32 %i.095
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  tail call void @snd_ac97_resume(ptr noundef %28) #9
  %inc = add nuw i32 %i.095, 1
  %29 = ptrtoint ptr %ncodecs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ncodecs, align 4
  %cmp12 = icmp ult i32 %inc, %30
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.for.cond14.preheader_crit_edge

for.body.for.cond14.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body17:                                       ; preds = %cleanup.for.body17_crit_edge, %for.body17.lr.ph
  %i.197 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc36, %cleanup.for.body17_crit_edge ]
  %arrayidx18 = getelementptr %struct.intel8x0, ptr %3, i32 0, i32 8, i32 %i.197
  %reg_offset = getelementptr %struct.intel8x0, ptr %3, i32 0, i32 8, i32 %i.197, i32 1
  %31 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_offset, align 4
  %substream = getelementptr %struct.intel8x0, ptr %3, i32 0, i32 8, i32 %i.197, i32 4
  %33 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %substream, align 4
  %tobool19.not = icmp eq ptr %34, null
  br i1 %tobool19.not, label %for.body17.cleanup_crit_edge, label %lor.lhs.false

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body17
  %suspended = getelementptr %struct.intel8x0, ptr %3, i32 0, i32 8, i32 %i.197, i32 25
  %35 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %suspended, align 4
  %36 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool20.not = icmp eq i8 %36, 0
  br i1 %tobool20.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end22

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp24 = icmp eq i32 %38, 1
  br i1 %cmp24, label %if.then26, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %34, i32 0, i32 11
  %39 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %runtime, align 4
  tail call fastcc void @snd_intel8x0_setup_pcm_out(ptr noundef %3, ptr noundef %40)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  %bdbar_addr = getelementptr %struct.intel8x0, ptr %3, i32 0, i32 8, i32 %i.197, i32 3
  %41 = ptrtoint ptr %bdbar_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bdbar_addr, align 4
  %43 = ptrtoint ptr %bmaddr.i86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bmaddr.i86, align 4
  %add.ptr.i87 = getelementptr i8, ptr %44, i32 %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %45) #9, !srcloc !540
  %add29 = add i32 %32, 5
  %lvi = getelementptr %struct.intel8x0, ptr %3, i32 0, i32 8, i32 %i.197, i32 13
  %46 = ptrtoint ptr %lvi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lvi, align 4
  %conv30 = trunc i32 %47 to i8
  %48 = ptrtoint ptr %bmaddr.i86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bmaddr.i86, align 4
  %add.ptr.i89 = getelementptr i8, ptr %49, i32 %add29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i89, i8 %conv30) #9, !srcloc !545
  %add31 = add i32 %32, 4
  %civ = getelementptr %struct.intel8x0, ptr %3, i32 0, i32 8, i32 %i.197, i32 15
  %50 = ptrtoint ptr %civ to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %civ, align 4
  %conv32 = trunc i32 %51 to i8
  %52 = ptrtoint ptr %bmaddr.i86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bmaddr.i86, align 4
  %add.ptr.i91 = getelementptr i8, ptr %53, i32 %add31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i91, i8 %conv32) #9, !srcloc !545
  %roff_sr = getelementptr %struct.intel8x0, ptr %3, i32 0, i32 8, i32 %i.197, i32 19
  %54 = ptrtoint ptr %roff_sr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %roff_sr, align 4
  %add33 = add i32 %55, %32
  %56 = ptrtoint ptr %bmaddr.i86 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bmaddr.i86, align 4
  %add.ptr.i93 = getelementptr i8, ptr %57, i32 %add33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i93, i8 28) #9, !srcloc !545
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %lor.lhs.false.cleanup_crit_edge, %for.body17.cleanup_crit_edge
  %inc36 = add nuw i32 %i.197, 1
  %58 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bdbars_count, align 4
  %cmp15 = icmp ult i32 %inc36, %59
  br i1 %cmp15, label %cleanup.for.body17_crit_edge, label %cleanup.for.end37_crit_edge

cleanup.for.end37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

cleanup.for.body17_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

for.end37:                                        ; preds = %cleanup.for.end37_crit_edge, %for.cond14.preheader.for.end37_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %60 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup38

cleanup38:                                        ; preds = %for.end37, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %for.end37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 235)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 235)
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
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !58, !60, !61, !63, !65, !67, !69, !71, !73, !74, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !180, !181, !182, !183, !184, !185, !187, !189, !191, !193, !195, !196, !197, !198, !199, !201, !203, !205, !206, !207, !208, !210, !211, !212, !213, !215, !217, !219, !220, !221, !222, !224, !225, !226, !227, !229, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !258, !259, !260, !261, !263, !264, !265, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !475, !476, !477, !479, !481, !483, !485, !487, !489, !490, !491, !492, !494, !495, !496, !498, !499, !500, !502, !503, !504, !506, !507, !508, !510, !511, !512, !514, !515, !516, !518, !520, !521, !522}
!llvm.module.flags = !{!523, !524, !525, !526, !527, !528, !529, !530}
!llvm.ident = !{!531}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/intel8x0.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/intel8x0.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/intel8x0.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/intel8x0.c", i32 41, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/intel8x0.c", i32 42, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/intel8x0.c", i32 43, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/intel8x0.c", i32 44, i32 1}
!17 = !{ptr @__param_ac97_clock, !18, !"__param_ac97_clock", i1 false, i1 false}
!18 = !{!"../sound/pci/intel8x0.c", i32 45, i32 1}
!19 = !{ptr @__UNIQUE_ID_ac97_clocktype250, !18, !"__UNIQUE_ID_ac97_clocktype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_ac97_clock251, !21, !"__UNIQUE_ID_ac97_clock251", i1 false, i1 false}
!21 = !{!"../sound/pci/intel8x0.c", i32 46, i32 1}
!22 = !{ptr @__param_ac97_quirk, !23, !"__param_ac97_quirk", i1 false, i1 false}
!23 = !{!"../sound/pci/intel8x0.c", i32 47, i32 1}
!24 = !{ptr @__UNIQUE_ID_ac97_quirktype252, !23, !"__UNIQUE_ID_ac97_quirktype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_ac97_quirk253, !26, !"__UNIQUE_ID_ac97_quirk253", i1 false, i1 false}
!26 = !{!"../sound/pci/intel8x0.c", i32 48, i32 1}
!27 = !{ptr @__param_buggy_semaphore, !28, !"__param_buggy_semaphore", i1 false, i1 false}
!28 = !{!"../sound/pci/intel8x0.c", i32 49, i32 1}
!29 = !{ptr @__UNIQUE_ID_buggy_semaphoretype254, !28, !"__UNIQUE_ID_buggy_semaphoretype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_buggy_semaphore255, !31, !"__UNIQUE_ID_buggy_semaphore255", i1 false, i1 false}
!31 = !{!"../sound/pci/intel8x0.c", i32 50, i32 1}
!32 = !{ptr @__param_buggy_irq, !33, !"__param_buggy_irq", i1 false, i1 false}
!33 = !{!"../sound/pci/intel8x0.c", i32 51, i32 1}
!34 = !{ptr @__UNIQUE_ID_buggy_irqtype256, !33, !"__UNIQUE_ID_buggy_irqtype256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_buggy_irq257, !36, !"__UNIQUE_ID_buggy_irq257", i1 false, i1 false}
!36 = !{!"../sound/pci/intel8x0.c", i32 52, i32 1}
!37 = !{ptr @__param_xbox, !38, !"__param_xbox", i1 false, i1 false}
!38 = !{!"../sound/pci/intel8x0.c", i32 53, i32 1}
!39 = !{ptr @__UNIQUE_ID_xboxtype258, !38, !"__UNIQUE_ID_xboxtype258", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_xbox259, !41, !"__UNIQUE_ID_xbox259", i1 false, i1 false}
!41 = !{!"../sound/pci/intel8x0.c", i32 54, i32 1}
!42 = !{ptr @__param_spdif_aclink, !43, !"__param_spdif_aclink", i1 false, i1 false}
!43 = !{!"../sound/pci/intel8x0.c", i32 55, i32 1}
!44 = !{ptr @__UNIQUE_ID_spdif_aclinktype260, !43, !"__UNIQUE_ID_spdif_aclinktype260", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_spdif_aclink261, !46, !"__UNIQUE_ID_spdif_aclink261", i1 false, i1 false}
!46 = !{!"../sound/pci/intel8x0.c", i32 56, i32 1}
!47 = !{ptr @__param_inside_vm, !48, !"__param_inside_vm", i1 false, i1 false}
!48 = !{!"../sound/pci/intel8x0.c", i32 57, i32 1}
!49 = !{ptr @__UNIQUE_ID_inside_vmtype262, !48, !"__UNIQUE_ID_inside_vmtype262", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_inside_vm263, !51, !"__UNIQUE_ID_inside_vm263", i1 false, i1 false}
!51 = !{!"../sound/pci/intel8x0.c", i32 58, i32 1}
!52 = !{ptr @__param_enable, !53, !"__param_enable", i1 false, i1 false}
!53 = !{!"../sound/pci/intel8x0.c", i32 62, i32 1}
!54 = !{ptr @__UNIQUE_ID_enabletype264, !53, !"__UNIQUE_ID_enabletype264", i1 false, i1 false}
!55 = !{ptr @__param_joystick, !56, !"__param_joystick", i1 false, i1 false}
!56 = !{!"../sound/pci/intel8x0.c", i32 64, i32 1}
!57 = !{ptr @__UNIQUE_ID_joysticktype265, !56, !"__UNIQUE_ID_joysticktype265", i1 false, i1 false}
!58 = !{ptr @__initcall__kmod_snd_intel8x0__268_3201_intel8x0_driver_init6, !59, !"__initcall__kmod_snd_intel8x0__268_3201_intel8x0_driver_init6", i1 false, i1 false}
!59 = !{!"../sound/pci/intel8x0.c", i32 3201, i32 1}
!60 = !{ptr @__exitcall_intel8x0_driver_exit, !59, !"__exitcall_intel8x0_driver_exit", i1 false, i1 false}
!61 = !{ptr @ac97_clock, !62, !"ac97_clock", i1 false, i1 false}
!62 = !{!"../sound/pci/intel8x0.c", i32 33, i32 12}
!63 = !{ptr @ac97_quirk, !64, !"ac97_quirk", i1 false, i1 false}
!64 = !{!"../sound/pci/intel8x0.c", i32 34, i32 14}
!65 = !{ptr @buggy_semaphore, !66, !"buggy_semaphore", i1 false, i1 false}
!66 = !{!"../sound/pci/intel8x0.c", i32 35, i32 13}
!67 = !{ptr @xbox, !68, !"xbox", i1 false, i1 false}
!68 = !{!"../sound/pci/intel8x0.c", i32 37, i32 13}
!69 = !{ptr @enable, !70, !"enable", i1 false, i1 false}
!70 = !{!"../sound/pci/intel8x0.c", i32 61, i32 13}
!71 = !{ptr @joystick, !72, !"joystick", i1 false, i1 false}
!72 = !{!"../sound/pci/intel8x0.c", i32 63, i32 12}
!73 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!74 = !{ptr @index, !75, !"index", i1 false, i1 false}
!75 = !{!"../sound/pci/intel8x0.c", i32 31, i32 12}
!76 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!77 = !{ptr @id, !78, !"id", i1 false, i1 false}
!78 = !{!"../sound/pci/intel8x0.c", i32 32, i32 14}
!79 = !{ptr @__param_str_ac97_clock, !18, !"__param_str_ac97_clock", i1 false, i1 false}
!80 = !{ptr @__param_str_ac97_quirk, !23, !"__param_str_ac97_quirk", i1 false, i1 false}
!81 = !{ptr @__param_str_buggy_semaphore, !28, !"__param_str_buggy_semaphore", i1 false, i1 false}
!82 = !{ptr @__param_str_buggy_irq, !33, !"__param_str_buggy_irq", i1 false, i1 false}
!83 = !{ptr @buggy_irq, !84, !"buggy_irq", i1 false, i1 false}
!84 = !{!"../sound/pci/intel8x0.c", i32 36, i32 12}
!85 = !{ptr @__param_str_xbox, !38, !"__param_str_xbox", i1 false, i1 false}
!86 = !{ptr @__param_str_spdif_aclink, !43, !"__param_str_spdif_aclink", i1 false, i1 false}
!87 = !{ptr @spdif_aclink, !88, !"spdif_aclink", i1 false, i1 false}
!88 = !{!"../sound/pci/intel8x0.c", i32 38, i32 12}
!89 = !{ptr @__param_str_inside_vm, !48, !"__param_str_inside_vm", i1 false, i1 false}
!90 = !{ptr @inside_vm, !91, !"inside_vm", i1 false, i1 false}
!91 = !{!"../sound/pci/intel8x0.c", i32 39, i32 12}
!92 = !{ptr @__param_str_enable, !53, !"__param_str_enable", i1 false, i1 false}
!93 = !{ptr @__param_str_joystick, !56, !"__param_str_joystick", i1 false, i1 false}
!94 = !{ptr @.str, !59, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @intel8x0_driver, !96, !"intel8x0_driver", i1 false, i1 false}
!96 = !{!"../sound/pci/intel8x0.c", i32 3192, i32 26}
!97 = !{ptr @snd_intel8x0_ids, !98, !"snd_intel8x0_ids", i1 false, i1 false}
!98 = !{!"../sound/pci/intel8x0.c", i32 386, i32 35}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/intel8x0.c", i32 3129, i32 23}
!101 = !{ptr @.str.2, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/intel8x0.c", i32 3133, i32 25}
!103 = !{ptr @.str.3, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/intel8x0.c", i32 3136, i32 25}
!105 = !{ptr @.str.4, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/intel8x0.c", i32 3140, i32 26}
!107 = !{ptr @.str.5, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/intel8x0.c", i32 3172, i32 4}
!109 = !{ptr @.str.6, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/pci/intel8x0.c", i32 3100, i32 4}
!111 = !{ptr @.str.7, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.8, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @check_default_spdif_aclink.__UNIQUE_ID_ddebug266, !110, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!114 = !{ptr @.str.9, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/intel8x0.c", i32 3104, i32 4}
!116 = !{ptr @check_default_spdif_aclink.__UNIQUE_ID_ddebug267, !115, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!117 = !{ptr @.str.10, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/intel8x0.c", i32 3088, i32 2}
!119 = !{ptr @spdif_aclink_defaults, !120, !"spdif_aclink_defaults", i1 false, i1 false}
!120 = !{!"../sound/pci/intel8x0.c", i32 3087, i32 35}
!121 = !{ptr @.str.11, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/intel8x0.c", i32 3062, i32 35}
!123 = !{ptr @.str.12, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/intel8x0.c", i32 3063, i32 35}
!125 = !{ptr @.str.13, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/intel8x0.c", i32 3064, i32 35}
!127 = !{ptr @.str.14, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/intel8x0.c", i32 3065, i32 31}
!129 = !{ptr @.str.15, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/intel8x0.c", i32 3066, i32 35}
!131 = !{ptr @.str.16, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/intel8x0.c", i32 3067, i32 35}
!133 = !{ptr @.str.17, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/intel8x0.c", i32 3068, i32 35}
!135 = !{ptr @.str.18, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/intel8x0.c", i32 3069, i32 31}
!137 = !{ptr @.str.19, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/intel8x0.c", i32 3070, i32 33}
!139 = !{ptr @.str.20, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/intel8x0.c", i32 3071, i32 33}
!141 = !{ptr @.str.21, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/intel8x0.c", i32 3072, i32 33}
!143 = !{ptr @.str.22, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/intel8x0.c", i32 3073, i32 27}
!145 = !{ptr @.str.23, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/pci/intel8x0.c", i32 3074, i32 37}
!147 = !{ptr @.str.24, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/intel8x0.c", i32 3075, i32 37}
!149 = !{ptr @.str.25, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/intel8x0.c", i32 3076, i32 37}
!151 = !{ptr @.str.26, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/intel8x0.c", i32 3077, i32 37}
!153 = !{ptr @.str.27, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/intel8x0.c", i32 3078, i32 38}
!155 = !{ptr @.str.28, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/intel8x0.c", i32 3079, i32 36}
!157 = !{ptr @.str.29, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/intel8x0.c", i32 3080, i32 12}
!159 = !{ptr @.str.30, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/intel8x0.c", i32 3081, i32 12}
!161 = !{ptr @.str.31, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/intel8x0.c", i32 3082, i32 12}
!163 = !{ptr @.str.32, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/intel8x0.c", i32 3083, i32 12}
!165 = !{ptr @shortnames, !166, !"shortnames", i1 false, i1 false}
!166 = !{!"../sound/pci/intel8x0.c", i32 3061, i32 3}
!167 = !{ptr @snd_intel8x0_init.bdbars, !168, !"bdbars", i1 false, i1 false}
!168 = !{!"../sound/pci/intel8x0.c", i32 2878, i32 28}
!169 = !{ptr @snd_intel8x0_init.intel_regs, !170, !"intel_regs", i1 false, i1 false}
!170 = !{!"../sound/pci/intel8x0.c", i32 2885, i32 35}
!171 = !{ptr @snd_intel8x0_init.nforce_regs, !172, !"nforce_regs", i1 false, i1 false}
!172 = !{!"../sound/pci/intel8x0.c", i32 2893, i32 35}
!173 = !{ptr @snd_intel8x0_init.ali_regs, !174, !"ali_regs", i1 false, i1 false}
!174 = !{!"../sound/pci/intel8x0.c", i32 2899, i32 35}
!175 = !{ptr @snd_intel8x0_init.__key, !176, !"__key", i1 false, i1 false}
!176 = !{!"../sound/pci/intel8x0.c", i32 2913, i32 2}
!177 = !{ptr @.str.33, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.34, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/intel8x0.c", i32 3047, i32 3}
!180 = !{ptr @.str.35, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.36, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.37, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @snd_intel8x0_init._entry, !179, !"_entry", i1 false, i1 false}
!184 = !{ptr @snd_intel8x0_init._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.38, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/intel8x0.c", i32 2844, i32 18}
!187 = !{ptr @.str.39, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/intel8x0.c", i32 2844, i32 41}
!189 = !{ptr @.str.40, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/intel8x0.c", i32 2853, i32 9}
!191 = !{ptr @.str.41, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/intel8x0.c", i32 2857, i32 9}
!193 = !{ptr @.str.42, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/intel8x0.c", i32 2863, i32 3}
!195 = !{ptr @.str.43, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.44, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @snd_intel8x0_inside_vm._entry, !194, !"_entry", i1 false, i1 false}
!198 = !{ptr @snd_intel8x0_inside_vm._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @ich_codec_bits, !200, !"ich_codec_bits", i1 false, i1 false}
!200 = !{!"../sound/pci/intel8x0.c", i32 2830, i32 27}
!201 = !{ptr @sis_codec_bits, !202, !"sis_codec_bits", i1 false, i1 false}
!202 = !{!"../sound/pci/intel8x0.c", i32 2833, i32 27}
!203 = !{ptr @.str.45, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/intel8x0.c", i32 2522, i32 4}
!205 = !{ptr @.str.46, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @snd_intel8x0_chip_init._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @snd_intel8x0_chip_init._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.47, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/intel8x0.c", i32 2411, i32 4}
!210 = !{ptr @.str.48, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @snd_intel8x0_ich_chip_init._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @snd_intel8x0_ich_chip_init._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.49, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/pci/intel8x0.c", i32 2321, i32 2}
!215 = !{ptr @ich_chip_reset_mode, !216, !"ich_chip_reset_mode", i1 false, i1 false}
!216 = !{!"../sound/pci/intel8x0.c", i32 2320, i32 35}
!217 = !{ptr @.str.50, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/pci/intel8x0.c", i32 2369, i32 2}
!219 = !{ptr @.str.51, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @snd_intel8x0_ich_chip_reset._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @snd_intel8x0_ich_chip_reset._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.52, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/intel8x0.c", i32 2476, i32 2}
!224 = !{ptr @.str.53, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @snd_intel8x0_ali_chip_init._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @snd_intel8x0_ali_chip_init._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @snd_intel8x0_mixer.standard_bus_ops, !228, !"standard_bus_ops", i1 false, i1 false}
!228 = !{!"../sound/pci/intel8x0.c", i32 2129, i32 39}
!229 = !{ptr @snd_intel8x0_mixer.ali_bus_ops, !230, !"ali_bus_ops", i1 false, i1 false}
!230 = !{!"../sound/pci/intel8x0.c", i32 2133, i32 39}
!231 = !{ptr @.str.54, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/intel8x0.c", i32 2216, i32 5}
!233 = !{ptr @.str.55, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @snd_intel8x0_mixer._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @snd_intel8x0_mixer._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.56, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/intel8x0.c", i32 519, i32 4}
!238 = !{ptr @.str.57, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @snd_intel8x0_codec_write._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @snd_intel8x0_codec_write._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.58, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/intel8x0.c", i32 503, i32 2}
!243 = !{ptr @.str.59, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @snd_intel8x0_codec_semaphore._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @snd_intel8x0_codec_semaphore._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.60, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/intel8x0.c", i32 535, i32 4}
!248 = !{ptr @.str.61, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @snd_intel8x0_codec_read._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @snd_intel8x0_codec_read._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.63, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/intel8x0.c", i32 547, i32 5}
!253 = !{ptr @snd_intel8x0_codec_read._entry.62, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @snd_intel8x0_codec_read._entry_ptr.64, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.65, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/pci/intel8x0.c", i32 596, i32 3}
!257 = !{ptr @.str.66, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.67, !256, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @snd_intel8x0_ali_codec_semaphore._entry, !256, !"_entry", i1 false, i1 false}
!260 = !{ptr @snd_intel8x0_ali_codec_semaphore._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.68, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/intel8x0.c", i32 584, i32 3}
!263 = !{ptr @.str.69, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @snd_intel8x0_ali_codec_ready._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @snd_intel8x0_ali_codec_ready._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.70, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/pci/intel8x0.c", i32 1717, i32 11}
!268 = !{ptr @.str.71, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/pci/intel8x0.c", i32 1723, i32 11}
!270 = !{ptr @.str.72, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/pci/intel8x0.c", i32 1729, i32 11}
!272 = !{ptr @.str.73, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/pci/intel8x0.c", i32 1735, i32 11}
!274 = !{ptr @.str.74, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/pci/intel8x0.c", i32 1741, i32 11}
!276 = !{ptr @.str.75, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/pci/intel8x0.c", i32 1747, i32 11}
!278 = !{ptr @.str.76, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/pci/intel8x0.c", i32 1753, i32 11}
!280 = !{ptr @.str.77, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/pci/intel8x0.c", i32 1759, i32 11}
!282 = !{ptr @.str.78, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/pci/intel8x0.c", i32 1765, i32 11}
!284 = !{ptr @.str.79, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/pci/intel8x0.c", i32 1771, i32 11}
!286 = !{ptr @.str.80, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/pci/intel8x0.c", i32 1777, i32 11}
!288 = !{ptr @.str.81, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/pci/intel8x0.c", i32 1783, i32 11}
!290 = !{ptr @.str.82, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/pci/intel8x0.c", i32 1789, i32 11}
!292 = !{ptr @.str.83, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/pci/intel8x0.c", i32 1795, i32 11}
!294 = !{ptr @.str.84, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/pci/intel8x0.c", i32 1807, i32 11}
!296 = !{ptr @.str.85, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/pci/intel8x0.c", i32 1813, i32 11}
!298 = !{ptr @.str.86, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/pci/intel8x0.c", i32 1819, i32 11}
!300 = !{ptr @.str.87, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/pci/intel8x0.c", i32 1825, i32 11}
!302 = !{ptr @.str.88, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/pci/intel8x0.c", i32 1831, i32 11}
!304 = !{ptr @.str.89, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/pci/intel8x0.c", i32 1837, i32 11}
!306 = !{ptr @.str.90, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/pci/intel8x0.c", i32 1843, i32 11}
!308 = !{ptr @.str.91, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/pci/intel8x0.c", i32 1849, i32 11}
!310 = !{ptr @.str.92, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/pci/intel8x0.c", i32 1861, i32 11}
!312 = !{ptr @.str.93, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/pci/intel8x0.c", i32 1867, i32 11}
!314 = !{ptr @.str.94, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/pci/intel8x0.c", i32 1873, i32 11}
!316 = !{ptr @.str.95, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/pci/intel8x0.c", i32 1879, i32 11}
!318 = !{ptr @.str.96, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/pci/intel8x0.c", i32 1885, i32 11}
!320 = !{ptr @.str.97, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/pci/intel8x0.c", i32 1891, i32 11}
!322 = !{ptr @.str.98, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/pci/intel8x0.c", i32 1897, i32 11}
!324 = !{ptr @.str.99, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/pci/intel8x0.c", i32 1903, i32 11}
!326 = !{ptr @.str.100, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/pci/intel8x0.c", i32 1909, i32 11}
!328 = !{ptr @.str.101, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/pci/intel8x0.c", i32 1915, i32 11}
!330 = !{ptr @.str.102, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/pci/intel8x0.c", i32 1921, i32 11}
!332 = !{ptr @.str.103, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/pci/intel8x0.c", i32 1927, i32 11}
!334 = !{ptr @.str.104, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/pci/intel8x0.c", i32 1933, i32 11}
!336 = !{ptr @.str.105, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/pci/intel8x0.c", i32 1939, i32 11}
!338 = !{ptr @.str.106, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/pci/intel8x0.c", i32 1945, i32 11}
!340 = !{ptr @.str.107, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/pci/intel8x0.c", i32 1951, i32 11}
!342 = !{ptr @.str.108, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/pci/intel8x0.c", i32 1957, i32 11}
!344 = !{ptr @.str.109, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/pci/intel8x0.c", i32 1963, i32 11}
!346 = !{ptr @.str.110, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/pci/intel8x0.c", i32 1969, i32 11}
!348 = !{ptr @.str.111, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/pci/intel8x0.c", i32 1975, i32 11}
!350 = !{ptr @.str.112, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/pci/intel8x0.c", i32 1981, i32 11}
!352 = !{ptr @.str.113, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/pci/intel8x0.c", i32 1987, i32 11}
!354 = !{ptr @.str.114, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/pci/intel8x0.c", i32 1993, i32 11}
!356 = !{ptr @.str.115, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/pci/intel8x0.c", i32 1999, i32 11}
!358 = !{ptr @.str.116, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/pci/intel8x0.c", i32 2005, i32 11}
!360 = !{ptr @.str.117, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/pci/intel8x0.c", i32 2011, i32 11}
!362 = !{ptr @.str.118, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/pci/intel8x0.c", i32 2017, i32 11}
!364 = !{ptr @.str.119, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/pci/intel8x0.c", i32 2023, i32 11}
!366 = !{ptr @.str.120, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/pci/intel8x0.c", i32 2029, i32 11}
!368 = !{ptr @.str.121, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/pci/intel8x0.c", i32 2035, i32 11}
!370 = !{ptr @.str.122, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/pci/intel8x0.c", i32 2041, i32 11}
!372 = !{ptr @.str.123, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/pci/intel8x0.c", i32 2047, i32 11}
!374 = !{ptr @.str.124, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/pci/intel8x0.c", i32 2053, i32 11}
!376 = !{ptr @.str.125, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/pci/intel8x0.c", i32 2059, i32 11}
!378 = !{ptr @.str.126, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/pci/intel8x0.c", i32 2066, i32 11}
!380 = !{ptr @.str.127, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/pci/intel8x0.c", i32 2079, i32 11}
!382 = !{ptr @.str.128, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/pci/intel8x0.c", i32 2085, i32 11}
!384 = !{ptr @.str.129, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/pci/intel8x0.c", i32 2091, i32 11}
!386 = !{ptr @ac97_quirks, !387, !"ac97_quirks", i1 false, i1 false}
!387 = !{!"../sound/pci/intel8x0.c", i32 1713, i32 32}
!388 = !{ptr @ac97_pcm_defs, !389, !"ac97_pcm_defs", i1 false, i1 false}
!389 = !{!"../sound/pci/intel8x0.c", i32 1643, i32 30}
!390 = !{ptr @.str.130, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/pci/intel8x0.c", i32 1496, i32 13}
!392 = !{ptr @.str.131, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/pci/intel8x0.c", i32 1503, i32 13}
!394 = !{ptr @.str.132, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/pci/intel8x0.c", i32 1510, i32 13}
!396 = !{ptr @.str.133, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/pci/intel8x0.c", i32 1517, i32 13}
!398 = !{ptr @intel_pcms, !399, !"intel_pcms", i1 false, i1 false}
!399 = !{!"../sound/pci/intel8x0.c", i32 1488, i32 35}
!400 = !{ptr @snd_intel8x0_playback_ops, !401, !"snd_intel8x0_playback_ops", i1 false, i1 false}
!401 = !{!"../sound/pci/intel8x0.c", i32 1298, i32 33}
!402 = !{ptr @snd_intel8x0_stream, !403, !"snd_intel8x0_stream", i1 false, i1 false}
!403 = !{!"../sound/pci/intel8x0.c", i32 1045, i32 38}
!404 = !{ptr @hw_constraints_channels8, !405, !"hw_constraints_channels8", i1 false, i1 false}
!405 = !{!"../sound/pci/intel8x0.c", i32 1090, i32 48}
!406 = !{ptr @channels8, !407, !"channels8", i1 false, i1 false}
!407 = !{!"../sound/pci/intel8x0.c", i32 1086, i32 27}
!408 = !{ptr @hw_constraints_channels6, !409, !"hw_constraints_channels6", i1 false, i1 false}
!409 = !{!"../sound/pci/intel8x0.c", i32 1080, i32 48}
!410 = !{ptr @channels6, !411, !"channels6", i1 false, i1 false}
!411 = !{!"../sound/pci/intel8x0.c", i32 1076, i32 27}
!412 = !{ptr @hw_constraints_channels4, !413, !"hw_constraints_channels4", i1 false, i1 false}
!413 = !{!"../sound/pci/intel8x0.c", i32 1070, i32 48}
!414 = !{ptr @channels4, !415, !"channels4", i1 false, i1 false}
!415 = !{!"../sound/pci/intel8x0.c", i32 1066, i32 27}
!416 = !{ptr @snd_intel8x0_capture_ops, !417, !"snd_intel8x0_capture_ops", i1 false, i1 false}
!417 = !{!"../sound/pci/intel8x0.c", i32 1308, i32 33}
!418 = !{ptr @snd_intel8x0_capture_mic_ops, !419, !"snd_intel8x0_capture_mic_ops", i1 false, i1 false}
!419 = !{!"../sound/pci/intel8x0.c", i32 1318, i32 33}
!420 = !{ptr @snd_intel8x0_capture_mic2_ops, !421, !"snd_intel8x0_capture_mic2_ops", i1 false, i1 false}
!421 = !{!"../sound/pci/intel8x0.c", i32 1328, i32 33}
!422 = !{ptr @snd_intel8x0_capture2_ops, !423, !"snd_intel8x0_capture2_ops", i1 false, i1 false}
!423 = !{!"../sound/pci/intel8x0.c", i32 1338, i32 33}
!424 = !{ptr @snd_intel8x0_spdif_ops, !425, !"snd_intel8x0_spdif_ops", i1 false, i1 false}
!425 = !{!"../sound/pci/intel8x0.c", i32 1348, i32 33}
!426 = !{ptr @nforce_pcms, !427, !"nforce_pcms", i1 false, i1 false}
!427 = !{!"../sound/pci/intel8x0.c", i32 1525, i32 35}
!428 = !{ptr @ali_pcms, !429, !"ali_pcms", i1 false, i1 false}
!429 = !{!"../sound/pci/intel8x0.c", i32 1548, i32 35}
!430 = !{ptr @snd_intel8x0_ali_playback_ops, !431, !"snd_intel8x0_ali_playback_ops", i1 false, i1 false}
!431 = !{!"../sound/pci/intel8x0.c", i32 1358, i32 33}
!432 = !{ptr @snd_intel8x0_ali_trigger.fiforeg, !433, !"fiforeg", i1 false, i1 false}
!433 = !{!"../sound/pci/intel8x0.c", i32 829, i32 19}
!434 = !{ptr @snd_intel8x0_ali_capture_ops, !435, !"snd_intel8x0_ali_capture_ops", i1 false, i1 false}
!435 = !{!"../sound/pci/intel8x0.c", i32 1368, i32 33}
!436 = !{ptr @snd_intel8x0_ali_capture_mic_ops, !437, !"snd_intel8x0_ali_capture_mic_ops", i1 false, i1 false}
!437 = !{!"../sound/pci/intel8x0.c", i32 1378, i32 33}
!438 = !{ptr @snd_intel8x0_ali_ac97spdifout_ops, !439, !"snd_intel8x0_ali_ac97spdifout_ops", i1 false, i1 false}
!439 = !{!"../sound/pci/intel8x0.c", i32 1388, i32 33}
!440 = !{ptr @.str.134, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/pci/intel8x0.c", i32 1440, i32 17}
!442 = !{ptr @.str.135, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/pci/intel8x0.c", i32 1457, i32 22}
!444 = !{ptr @.str.136, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/pci/intel8x0.c", i32 2821, i32 35}
!446 = !{ptr @.str.137, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/pci/intel8x0.c", i32 2791, i32 2}
!448 = !{ptr @.str.138, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/pci/intel8x0.c", i32 2795, i32 2}
!450 = !{ptr @.str.139, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/pci/intel8x0.c", i32 2796, i32 2}
!452 = !{ptr @.str.140, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/pci/intel8x0.c", i32 2798, i32 3}
!454 = !{ptr @.str.141, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/pci/intel8x0.c", i32 2799, i32 2}
!456 = !{ptr @.str.142, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/pci/intel8x0.c", i32 2803, i32 4}
!458 = !{ptr @.str.143, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/pci/intel8x0.c", i32 2803, i32 15}
!460 = !{ptr @.str.144, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/pci/intel8x0.c", i32 2803, i32 28}
!462 = !{ptr @snd_intel8x0_proc_read.codecs, !463, !"codecs", i1 false, i1 false}
!463 = !{!"../sound/pci/intel8x0.c", i32 2802, i32 22}
!464 = !{ptr @.str.145, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/pci/intel8x0.c", i32 2807, i32 5}
!466 = !{ptr @.str.146, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/pci/intel8x0.c", i32 2809, i32 3}
!468 = !{ptr @.str.147, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/pci/intel8x0.c", i32 2810, i32 2}
!470 = !{ptr @.str.148, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/pci/intel8x0.c", i32 2813, i32 3}
!472 = !{ptr @.str.149, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/pci/intel8x0.c", i32 2779, i32 2}
!474 = !{ptr @.str.150, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @intel8x0_in_clock_list._entry, !473, !"_entry", i1 false, i1 false}
!476 = !{ptr @intel8x0_in_clock_list._entry_ptr, !473, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.151, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/pci/intel8x0.c", i32 2762, i32 2}
!479 = !{ptr @.str.152, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/pci/intel8x0.c", i32 2763, i32 2}
!481 = !{ptr @.str.153, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/pci/intel8x0.c", i32 2765, i32 2}
!483 = !{ptr @.str.154, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/pci/intel8x0.c", i32 2767, i32 2}
!485 = !{ptr @intel8x0_clock_list, !486, !"intel8x0_clock_list", i1 false, i1 false}
!486 = !{!"../sound/pci/intel8x0.c", i32 2761, i32 35}
!487 = !{ptr @.str.155, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/pci/intel8x0.c", i32 2656, i32 3}
!489 = !{ptr @.str.156, !488, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @intel8x0_measure_ac97_clock._entry, !488, !"_entry", i1 false, i1 false}
!491 = !{ptr @intel8x0_measure_ac97_clock._entry_ptr, !488, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.158, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/pci/intel8x0.c", i32 2667, i32 3}
!494 = !{ptr @intel8x0_measure_ac97_clock._entry.157, !493, !"_entry", i1 false, i1 false}
!495 = !{ptr @intel8x0_measure_ac97_clock._entry_ptr.159, !493, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @.str.161, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/pci/intel8x0.c", i32 2722, i32 3}
!498 = !{ptr @intel8x0_measure_ac97_clock._entry.160, !497, !"_entry", i1 false, i1 false}
!499 = !{ptr @intel8x0_measure_ac97_clock._entry_ptr.162, !497, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.164, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/pci/intel8x0.c", i32 2735, i32 2}
!502 = !{ptr @intel8x0_measure_ac97_clock._entry.163, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @intel8x0_measure_ac97_clock._entry_ptr.165, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.167, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/pci/intel8x0.c", i32 2738, i32 3}
!506 = !{ptr @intel8x0_measure_ac97_clock._entry.166, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @intel8x0_measure_ac97_clock._entry_ptr.168, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.170, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/pci/intel8x0.c", i32 2745, i32 3}
!510 = !{ptr @intel8x0_measure_ac97_clock._entry.169, !509, !"_entry", i1 false, i1 false}
!511 = !{ptr @intel8x0_measure_ac97_clock._entry_ptr.171, !509, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.173, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/pci/intel8x0.c", i32 2757, i32 2}
!514 = !{ptr @intel8x0_measure_ac97_clock._entry.172, !513, !"_entry", i1 false, i1 false}
!515 = !{ptr @intel8x0_measure_ac97_clock._entry_ptr.174, !513, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @intel8x0_pm, !517, !"intel8x0_pm", i1 false, i1 false}
!517 = !{!"../sound/pci/intel8x0.c", i32 2631, i32 8}
!518 = !{ptr @.str.175, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/pci/intel8x0.c", i32 2592, i32 3}
!520 = !{ptr @.str.176, !519, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @intel8x0_resume._entry, !519, !"_entry", i1 false, i1 false}
!522 = !{ptr @intel8x0_resume._entry_ptr, !519, !"_entry_ptr", i1 false, i1 false}
!523 = !{i32 1, !"wchar_size", i32 2}
!524 = !{i32 1, !"min_enum_size", i32 4}
!525 = !{i32 8, !"branch-target-enforcement", i32 0}
!526 = !{i32 8, !"sign-return-address", i32 0}
!527 = !{i32 8, !"sign-return-address-all", i32 0}
!528 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!529 = !{i32 7, !"uwtable", i32 1}
!530 = !{i32 7, !"frame-pointer", i32 2}
!531 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!532 = !{!"auto-init"}
!533 = !{i64 2148239845, i64 2148239850, i64 2148239863, i64 2148239907, i64 2148239941, i64 2148239962}
!534 = !{i8 0, i8 2}
!535 = !{i64 773106}
!536 = !{i64 2148958279}
!537 = !{i64 772268}
!538 = !{i64 2148957667}
!539 = !{i64 2148959634}
!540 = !{i64 772688}
!541 = !{i64 772886}
!542 = !{i64 2148957055}
!543 = !{!"branch_weights", i32 1, i32 2000}
!544 = !{i64 2148958660}
!545 = !{i64 772491}
!546 = !{i64 1545176, i64 1545203, i64 1545225, i64 1545253}
!547 = !{i64 1545584, i64 1545611, i64 1545644, i64 1545665, i64 1545692, i64 1545718}
!548 = !{i64 2148959084}
!549 = !{i64 772068}
