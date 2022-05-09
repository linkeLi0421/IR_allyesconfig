; ModuleID = '/llk/IR_all_yes/sound/pci/via82xx.c_pt.bc'
source_filename = "../sound/pci/via82xx.c"
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
%struct.via823x_info = type { i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ac97_quirk = type { i16, i16, i16, i32, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.88, i32 }
%union.anon.88 = type { ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.via82xx = type { i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, [4 x [2 x i8]], [2 x i8], i32, ptr, ptr, i32, i32, i32, i32, [7 x %struct.viadev], [2 x %struct.via_rate_lock], i8, [2 x ptr], ptr, [4 x ptr], ptr, ptr, i32, i32, %struct.spinlock, ptr, ptr }
%struct.viadev = type { i32, i32, i32, ptr, i32, i32, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.via_rate_lock = type { %struct.spinlock, i32, i32 }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.84, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.84 = type { i32, [28 x i8] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
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
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [52 x i8] c"snd_via82xx.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [41 x i8] c"snd_via82xx.description=VIA VT82xx audio\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [39 x i8] c"snd_via82xx.file=sound/pci/snd-via82xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [24 x i8] c"snd_via82xx.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_via82xx.index\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [31 x i8] c"snd_via82xx.parmtype=index:int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [56 x i8] c"snd_via82xx.parm=index:Index value for VIA 82xx bridge.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_via82xx.id\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [30 x i8] c"snd_via82xx.parmtype=id:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [51 x i8] c"snd_via82xx.parm=id:ID string for VIA 82xx bridge.\00", section ".modinfo", align 1
@__param_str_mpu_port = internal constant [21 x i8] c"snd_via82xx.mpu_port\00", align 1
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@mpu_port = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mpu_port = internal constant %struct.kernel_param { ptr @__param_str_mpu_port, ptr null, ptr @param_ops_long, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @mpu_port } }, section "__param", align 4
@__UNIQUE_ID_mpu_porttype250 = internal constant [35 x i8] c"snd_via82xx.parmtype=mpu_port:long\00", section ".modinfo", align 1
@__UNIQUE_ID_mpu_port251 = internal constant [57 x i8] c"snd_via82xx.parm=mpu_port:MPU-401 port. (VT82C686x only)\00", section ".modinfo", align 1
@__param_str_joystick = internal constant [21 x i8] c"snd_via82xx.joystick\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@joystick = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_joystick = internal constant %struct.kernel_param { ptr @__param_str_joystick, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @joystick } }, section "__param", align 4
@__UNIQUE_ID_joysticktype252 = internal constant [35 x i8] c"snd_via82xx.parmtype=joystick:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_joystick253 = internal constant [60 x i8] c"snd_via82xx.parm=joystick:Enable joystick. (VT82C686x only)\00", section ".modinfo", align 1
@__param_str_ac97_clock = internal constant [23 x i8] c"snd_via82xx.ac97_clock\00", align 1
@ac97_clock = internal global { i32, [28 x i8] } { i32 48000, [28 x i8] zeroinitializer }, align 32
@__param_ac97_clock = internal constant %struct.kernel_param { ptr @__param_str_ac97_clock, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_clock } }, section "__param", align 4
@__UNIQUE_ID_ac97_clocktype254 = internal constant [36 x i8] c"snd_via82xx.parmtype=ac97_clock:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_clock255 = internal constant [65 x i8] c"snd_via82xx.parm=ac97_clock:AC'97 codec clock (default 48000Hz).\00", section ".modinfo", align 1
@__param_str_ac97_quirk = internal constant [23 x i8] c"snd_via82xx.ac97_quirk\00", align 1
@ac97_quirk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_ac97_quirk = internal constant %struct.kernel_param { ptr @__param_str_ac97_quirk, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_quirk } }, section "__param", align 4
@__UNIQUE_ID_ac97_quirktype256 = internal constant [38 x i8] c"snd_via82xx.parmtype=ac97_quirk:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_quirk257 = internal constant [67 x i8] c"snd_via82xx.parm=ac97_quirk:AC'97 workaround for strange hardware.\00", section ".modinfo", align 1
@__param_str_dxs_support = internal constant [24 x i8] c"snd_via82xx.dxs_support\00", align 1
@dxs_support = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dxs_support = internal constant %struct.kernel_param { ptr @__param_str_dxs_support, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @dxs_support } }, section "__param", align 4
@__UNIQUE_ID_dxs_supporttype258 = internal constant [37 x i8] c"snd_via82xx.parmtype=dxs_support:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dxs_support259 = internal constant [144 x i8] c"snd_via82xx.parm=dxs_support:Support for DXS channels (0 = auto, 1 = enable, 2 = disable, 3 = 48k only, 4 = no VRA, 5 = enable any sample rate)\00", section ".modinfo", align 1
@__param_str_dxs_init_volume = internal constant [28 x i8] c"snd_via82xx.dxs_init_volume\00", align 1
@dxs_init_volume = internal global { i32, [28 x i8] } { i32 31, [28 x i8] zeroinitializer }, align 32
@__param_dxs_init_volume = internal constant %struct.kernel_param { ptr @__param_str_dxs_init_volume, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @dxs_init_volume } }, section "__param", align 4
@__UNIQUE_ID_dxs_init_volumetype260 = internal constant [41 x i8] c"snd_via82xx.parmtype=dxs_init_volume:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dxs_init_volume261 = internal constant [59 x i8] c"snd_via82xx.parm=dxs_init_volume:initial DXS volume (0-31)\00", section ".modinfo", align 1
@__param_str_nodelay = internal constant [20 x i8] c"snd_via82xx.nodelay\00", align 1
@nodelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nodelay = internal constant %struct.kernel_param { ptr @__param_str_nodelay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nodelay } }, section "__param", align 4
@__UNIQUE_ID_nodelaytype262 = internal constant [33 x i8] c"snd_via82xx.parmtype=nodelay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nodelay263 = internal constant [50 x i8] c"snd_via82xx.parm=nodelay:Disable 500ms init delay\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_via82xx.enable\00", align 1
@enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype264 = internal constant [33 x i8] c"snd_via82xx.parmtype=enable:bool\00", section ".modinfo", align 1
@__initcall__kmod_snd_via82xx__268_2581_via82xx_driver_init6 = internal global ptr @via82xx_driver_init, section ".initcall6.init", align 4
@via82xx_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_via82xx_ids, ptr @snd_via82xx_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_via82xx_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_via82xx_driver_exit = internal global ptr @via82xx_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_via82xx\00", [20 x i8] zeroinitializer }, align 32
@snd_via82xx_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 12376, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4358, i32 12377, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_via82xx_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_via82xx_suspend, ptr @snd_via82xx_resume, ptr @snd_via82xx_suspend, ptr @snd_via82xx_resume, ptr @snd_via82xx_suspend, ptr @snd_via82xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VIA 82C686A/B rev%x\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VIA 823x rev%x\00", [17 x i8] zeroinitializer }, align 32
@via823x_cards = internal constant { [7 x %struct.via823x_info], [44 x i8] } { [7 x %struct.via823x_info] [%struct.via823x_info { i32 16, ptr @.str.13, i32 1 }, %struct.via823x_info { i32 32, ptr @.str.14, i32 1 }, %struct.via823x_info { i32 48, ptr @.str.15, i32 1 }, %struct.via823x_info { i32 64, ptr @.str.16, i32 2 }, %struct.via823x_info { i32 80, ptr @.str.17, i32 1 }, %struct.via823x_info { i32 96, ptr @.str.18, i32 1 }, %struct.via823x_info { i32 112, ptr @.str.19, i32 1 }], [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VIA8233A\00", [23 x i8] zeroinitializer }, align 32
@snd_via82xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 2512, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid card type %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_via82xx_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sound/pci/via82xx.c\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_via82xx_probe._entry_ptr = internal global ptr @snd_via82xx_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s with %s at %#lx, irq %d\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIA 8233-Pre\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VIA 8233C\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VIA 8233\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VIA 8233A\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VIA 8235\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VIA 8237\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VIA 8251\00", [23 x i8] zeroinitializer }, align 32
@dxs_allowlist = internal constant { [41 x %struct.snd_pci_quirk], [176 x i8] } { [41 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4101, i16 18192, i16 -1, i32 1, ptr @.str.33 }, %struct.snd_pci_quirk { i16 4121, i16 2454, i16 -1, i32 3, ptr @.str.34 }, %struct.snd_pci_quirk { i16 4121, i16 2689, i16 -1, i32 4, ptr @.str.35 }, %struct.snd_pci_quirk { i16 4121, i16 2693, i16 -1, i32 4, ptr @.str.36 }, %struct.snd_pci_quirk { i16 4121, i16 0, i16 0, i32 5, ptr @.str.37 }, %struct.snd_pci_quirk { i16 4121, i16 -22015, i16 -1, i32 5, ptr @.str.38 }, %struct.snd_pci_quirk { i16 4133, i16 51, i16 -1, i32 4, ptr @.str.39 }, %struct.snd_pci_quirk { i16 4133, i16 70, i16 -1, i32 5, ptr @.str.40 }, %struct.snd_pci_quirk { i16 4163, i16 0, i16 0, i32 4, ptr @.str.41 }, %struct.snd_pci_quirk { i16 4209, i16 0, i16 0, i32 4, ptr @.str.42 }, %struct.snd_pci_quirk { i16 4303, i16 4494, i16 -1, i32 1, ptr @.str.43 }, %struct.snd_pci_quirk { i16 4358, i16 0, i16 0, i32 5, ptr @.str.44 }, %struct.snd_pci_quirk { i16 4759, i16 -24015, i16 -1, i32 5, ptr @.str.45 }, %struct.snd_pci_quirk { i16 4759, i16 -24014, i16 -1, i32 5, ptr @.str.46 }, %struct.snd_pci_quirk { i16 4759, i16 -16032, i16 -1, i32 5, ptr @.str.47 }, %struct.snd_pci_quirk { i16 5208, i16 -24574, i16 -1, i32 1, ptr @.str.48 }, %struct.snd_pci_quirk { i16 5218, i16 14336, i16 -1, i32 1, ptr @.str.49 }, %struct.snd_pci_quirk { i16 5218, i16 28960, i16 -1, i32 1, ptr @.str.50 }, %struct.snd_pci_quirk { i16 5218, i16 28994, i16 -1, i32 1, ptr @.str.51 }, %struct.snd_pci_quirk { i16 5218, i16 0, i16 0, i32 5, ptr @.str.52 }, %struct.snd_pci_quirk { i16 5243, i16 5121, i16 -1, i32 1, ptr @.str.53 }, %struct.snd_pci_quirk { i16 5243, i16 5137, i16 -1, i32 1, ptr @.str.54 }, %struct.snd_pci_quirk { i16 5243, i16 5139, i16 -1, i32 1, ptr @.str.55 }, %struct.snd_pci_quirk { i16 5243, i16 5141, i16 -1, i32 4, ptr @.str.56 }, %struct.snd_pci_quirk { i16 5375, i16 1027, i16 -1, i32 1, ptr @.str.57 }, %struct.snd_pci_quirk { i16 5375, i16 1032, i16 -1, i32 5, ptr @.str.58 }, %struct.snd_pci_quirk { i16 5464, i16 18177, i16 -1, i32 5, ptr @.str.59 }, %struct.snd_pci_quirk { i16 5508, i16 -32480, i16 -1, i32 1, ptr @.str.60 }, %struct.snd_pci_quirk { i16 5508, i16 -32477, i16 -1, i32 4, ptr @.str.61 }, %struct.snd_pci_quirk { i16 5663, i16 8235, i16 -1, i32 4, ptr @.str.62 }, %struct.snd_pci_quirk { i16 5663, i16 8242, i16 -1, i32 3, ptr @.str.63 }, %struct.snd_pci_quirk { i16 5681, i16 -8188, i16 -1, i32 1, ptr @.str.64 }, %struct.snd_pci_quirk { i16 5781, i16 12293, i16 -1, i32 1, ptr @.str.65 }, %struct.snd_pci_quirk { i16 5781, i16 0, i16 0, i32 5, ptr @.str.66 }, %struct.snd_pci_quirk { i16 5875, i16 0, i16 0, i32 5, ptr @.str.67 }, %struct.snd_pci_quirk { i16 5940, i16 0, i16 0, i32 5, ptr @.str.43 }, %struct.snd_pci_quirk { i16 6217, i16 12377, i16 -1, i32 4, ptr @.str.68 }, %struct.snd_pci_quirk { i16 6217, i16 0, i16 0, i32 5, ptr @.str.69 }, %struct.snd_pci_quirk { i16 6425, i16 8202, i16 -1, i32 4, ptr @.str.70 }, %struct.snd_pci_quirk { i16 16389, i16 18192, i16 -1, i32 5, ptr @.str.71 }, %struct.snd_pci_quirk zeroinitializer], [176 x i8] zeroinitializer }, align 32
@check_dxs_list.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.9, ptr @.str.21, i8 2, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"check_dxs_list\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DXS allow list for %s found\0A\00", [35 x i8] zeroinitializer }, align 32
@check_dxs_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.9, i32 2454, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Assuming DXS channels with 48k fixed sample rate.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@check_dxs_list._entry_ptr = internal global ptr @check_dxs_list._entry, section ".printk_index", align 4
@check_dxs_list._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.9, i32 2455, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"         Please try dxs_support=5 option\0A\00", [54 x i8] zeroinitializer }, align 32
@check_dxs_list._entry_ptr.26 = internal global ptr @check_dxs_list._entry.24, section ".printk_index", align 4
@check_dxs_list._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.9, i32 2456, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"         and report if it works on your machine.\0A\00", [46 x i8] zeroinitializer }, align 32
@check_dxs_list._entry_ptr.29 = internal global ptr @check_dxs_list._entry.27, section ".printk_index", align 4
@check_dxs_list._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.9, i32 2457, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"         For more details, read ALSA-Configuration.txt.\0A\00", [39 x i8] zeroinitializer }, align 32
@check_dxs_list._entry_ptr.32 = internal global ptr @check_dxs_list._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Avance Logic Mobo\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ESC Mobo\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ECS K7VTA3 v8.0\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ECS L7VMM2\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ESC K8\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ESC K8T890-A\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Acer Inspire 1353LM\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Acer Aspire 1524 WLMi\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASUS A7/A8\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Diverse Notebook\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FSC Laptop\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASRock\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Shuttle AK31v2\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Shuttle\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Shuttle Sk41G\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Gigabyte GA-7VAXP\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MSI KT266\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSI KT4V\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSI K8MM-V\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSI Mobo\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ABIT KD7(-RAID)\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ABIT VA-20\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ABIT KV8 Pro\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ABIT AV8\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Twinhead mobo\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Twinhead laptop\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Clevo D470\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Diverse Laptop\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Targa/Uniwill\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Amira Notebook\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"m680x machines\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PB EasyNote 3174\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EPoX EP-8K9A\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EPoX mobo\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Jetway K8\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASRock K7VM2\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ASRock mobo\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Soltek SL-K8\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MSI K7T266\00", [21 x i8] zeroinitializer }, align 32
@snd_via82xx_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_via82xx_create.__key.73 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&chip->rates[0].lock\00", [43 x i8] zeroinitializer }, align 32
@snd_via82xx_create.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&chip->rates[1].lock\00", [43 x i8] zeroinitializer }, align 32
@snd_via82xx_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.9, i32 2353, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_via82xx_create\00", [45 x i8] zeroinitializer }, align 32
@snd_via82xx_create._entry_ptr = internal global ptr @snd_via82xx_create._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_via82xx_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.9, i32 2182, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AC'97 codec is not ready [0x%x]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_via82xx_chip_init\00", [42 x i8] zeroinitializer }, align 32
@snd_via82xx_chip_init._entry_ptr = internal global ptr @snd_via82xx_chip_init._entry, section ".printk_index", align 4
@snd_via82xx_mixer_new.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_via82xx_codec_write, ptr @snd_via82xx_codec_read, ptr @snd_via82xx_codec_wait, ptr null }, [40 x i8] zeroinitializer }, align 32
@ac97_quirks = internal constant { [14 x %struct.ac97_quirk], [72 x i8] } { [14 x %struct.ac97_quirk] [%struct.ac97_quirk { i16 4358, i16 16737, i16 0, i32 1447641441, ptr @.str.85, i32 0 }, %struct.ac97_quirk { i16 4358, i16 16737, i16 0, i32 0, ptr @.str.86, i32 1 }, %struct.ac97_quirk { i16 4362, i16 121, i16 0, i32 0, ptr @.str.87, i32 1 }, %struct.ac97_quirk { i16 4121, i16 2689, i16 0, i32 0, ptr @.str.88, i32 1 }, %struct.ac97_quirk { i16 4121, i16 2693, i16 0, i32 0, ptr @.str.36, i32 1 }, %struct.ac97_quirk { i16 4121, i16 6209, i16 0, i32 0, ptr @.str.88, i32 1 }, %struct.ac97_quirk { i16 6217, i16 12377, i16 0, i32 0, ptr @.str.68, i32 1 }, %struct.ac97_quirk { i16 5325, i16 28674, i16 0, i32 0, ptr @.str.89, i32 5 }, %struct.ac97_quirk { i16 4209, i16 -31344, i16 0, i32 0, ptr @.str.90, i32 5 }, %struct.ac97_quirk { i16 5663, i16 8235, i16 0, i32 0, ptr @.str.91, i32 1 }, %struct.ac97_quirk { i16 5663, i16 8242, i16 0, i32 0, ptr @.str.92, i32 1 }, %struct.ac97_quirk { i16 5663, i16 8242, i16 0, i32 0, ptr @.str.93, i32 1 }, %struct.ac97_quirk { i16 4759, i16 -24014, i16 0, i32 0, ptr @.str.94, i32 1 }, %struct.ac97_quirk zeroinitializer], [72 x i8] zeroinitializer }, align 32
@snd_via82xx_codec_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.9, i32 523, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"codec_ready: codec %i is not ready [0x%x]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_via82xx_codec_ready\00", [40 x i8] zeroinitializer }, align 32
@snd_via82xx_codec_ready._entry_ptr = internal global ptr @snd_via82xx_codec_ready._entry, section ".printk_index", align 4
@snd_via82xx_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.9, i32 583, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"codec_read: codec %i is not valid [0x%x]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_via82xx_codec_read\00", [41 x i8] zeroinitializer }, align 32
@snd_via82xx_codec_read._entry_ptr = internal global ptr @snd_via82xx_codec_read._entry, section ".printk_index", align 4
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Soltek SL-75DRV5\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASRock K7VT2\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fujitsu Siemens D1289\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ECS K7VTA3\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mitac Mobo\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Arima Notebook\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Targa Traveller 811\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"m680x\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Shuttle AK32VN\00", [17 x i8] zeroinitializer }, align 32
@snd_via686_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_via686_playback_open, ptr @snd_via82xx_pcm_close, ptr null, ptr @snd_via82xx_hw_params, ptr @snd_via82xx_hw_free, ptr @snd_via686_playback_prepare, ptr @snd_via82xx_pcm_trigger, ptr null, ptr @snd_via686_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_via686_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_via82xx_capture_open, ptr @snd_via82xx_pcm_close, ptr null, ptr @snd_via82xx_hw_params, ptr @snd_via82xx_hw_free, ptr @snd_via686_capture_prepare, ptr @snd_via82xx_pcm_trigger, ptr null, ptr @snd_via686_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_via82xx_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 6, i32 128, i32 48000, i32 48000, i32 1, i32 2, i32 16777216, i32 32, i32 8388608, i32 2, i32 127, i32 0 }, [32 x i8] zeroinitializer }, align 32
@build_via_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.9, i32 451, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"too much table size!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"build_via_table\00", [16 x i8] zeroinitializer }, align 32
@build_via_table._entry_ptr = internal global ptr @build_via_table._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@calc_linear_pos.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.9, ptr @.str.98, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"calc_linear_pos\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid via82xx_cur_ptr (size = %d, count = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@calc_linear_pos.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.9, ptr @.str.99, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid via82xx_cur_ptr (2), using last valid pointer\0A\00", [41 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VIA82xx MPU401\00", [17 x i8] zeroinitializer }, align 32
@snd_via686_init_misc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.9, i32 2082, ptr @.str.103, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"unable to initialize MPU-401 at 0x%lx, skipping\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_via686_init_misc\00", [43 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_via686_init_misc._entry_ptr = internal global ptr @snd_via686_init_misc._entry, section ".printk_index", align 4
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VIA686 gameport\00", [16 x i8] zeroinitializer }, align 32
@snd_via686_create_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.9, i32 1921, ptr @.str.103, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot reserve joystick port %#x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_via686_create_gameport\00", [37 x i8] zeroinitializer }, align 32
@snd_via686_create_gameport._entry_ptr = internal global ptr @snd_via686_create_gameport._entry, section ".printk_index", align 4
@snd_via686_create_gameport._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.9, i32 1928, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_via686_create_gameport._entry_ptr.109 = internal global ptr @snd_via686_create_gameport._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VIA686 Gameport\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@snd_via8233_multi_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_via8233_multi_open, ptr @snd_via82xx_pcm_close, ptr null, ptr @snd_via82xx_hw_params, ptr @snd_via82xx_hw_free, ptr @snd_via8233_multi_prepare, ptr @snd_via82xx_pcm_trigger, ptr null, ptr @snd_via8233_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_via8233_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_via82xx_capture_open, ptr @snd_via82xx_pcm_close, ptr null, ptr @snd_via82xx_hw_params, ptr @snd_via82xx_hw_free, ptr @snd_via8233_capture_prepare, ptr @snd_via82xx_pcm_trigger, ptr null, ptr @snd_via8233_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_pcm_alt_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@snd_via8233_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_via8233_playback_open, ptr @snd_via8233_playback_close, ptr null, ptr @snd_via82xx_hw_params, ptr @snd_via82xx_hw_free, ptr @snd_via8233_playback_prepare, ptr @snd_via82xx_pcm_trigger, ptr null, ptr @snd_via8233_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_via8233_multi_open.channels = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 6], [16 x i8] zeroinitializer }, align 32
@snd_via8233_multi_open.hw_constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @snd_via8233_multi_open.channels, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@snd_pcm_std_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@snd_via8233_capture_source = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_via8233_capture_source_info, ptr @snd_via8233_capture_source_get, ptr @snd_via8233_capture_source_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_via8233_dxs3_spdif_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_via8233_dxs3_spdif_get, ptr @snd_via8233_dxs3_spdif_put, %union.anon.88 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@snd_via8233_init_misc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.9, i32 1993, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Using DXS as PCM Playback\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_via8233_init_misc\00", [42 x i8] zeroinitializer }, align 32
@snd_via8233_init_misc._entry_ptr = internal global ptr @snd_via8233_init_misc._entry, section ".printk_index", align 4
@snd_via8233_pcmdxs_volume_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 19, i32 0, ptr @snd_via8233_dxs_volume_info, ptr @snd_via8233_pcmdxs_volume_get, ptr @snd_via8233_pcmdxs_volume_put, %union.anon.88 { ptr @db_scale_dxs }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_via8233_dxs_volume_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.112, i32 0, i32 275, i32 0, ptr @snd_via8233_dxs_volume_info, ptr @snd_via8233_dxs_volume_get, ptr @snd_via8233_dxs_volume_put, %union.anon.88 { ptr @db_scale_dxs }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Input Source Select\00", [44 x i8] zeroinitializer }, align 32
@snd_via8233_capture_source_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.116, ptr @.str.117], [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Input1\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Input2\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Output Switch\00", [43 x i8] zeroinitializer }, align 32
@db_scale_dxs = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4650, i32 65686], [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"via82xx\00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s\0A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x: %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@switch.table.snd_via8233_multi_prepare = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 -16777199, i32 -16777183, i32 -16775903, i32 -16760031, i32 -16432351, i32 -10140895], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.124 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 64, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 65, i32 14 }
@___asan_gen_.131 = private unnamed_addr constant [9 x i8] c"mpu_port\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 66, i32 13 }
@___asan_gen_.134 = private unnamed_addr constant [9 x i8] c"joystick\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 68, i32 13 }
@___asan_gen_.137 = private unnamed_addr constant [11 x i8] c"ac97_clock\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 70, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"ac97_quirk\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 71, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"dxs_support\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 72, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant [16 x i8] c"dxs_init_volume\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 73, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant [8 x i8] c"nodelay\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 74, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 98, i32 13 }
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"via82xx_driver\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2572, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2581, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"snd_via82xx_ids\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 392, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"snd_via82xx_pm\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2294, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2480, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2485, i32 28 }
@___asan_gen_.173 = private unnamed_addr constant [14 x i8] c"via823x_cards\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2378, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2505, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2512, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2560, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2379, i32 22 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2380, i32 19 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2381, i32 18 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2382, i32 19 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2383, i32 18 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2384, i32 18 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2385, i32 18 }
@___asan_gen_.221 = private unnamed_addr constant [14 x i8] c"dxs_allowlist\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2392, i32 35 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2442, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2454, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2455, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2456, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2457, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2393, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2394, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2395, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2396, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2397, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2398, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2399, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2400, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2401, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2402, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2403, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2404, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2405, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2406, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2407, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2408, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2409, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2410, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2411, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2412, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2413, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2414, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2415, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2416, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2417, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2418, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2419, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2420, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2421, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2422, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2423, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2424, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2425, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2426, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2427, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2429, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2430, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2431, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2432, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2332, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2333, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2334, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2353, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2181, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1878, i32 39 }
@___asan_gen_.413 = private unnamed_addr constant [12 x i8] c"ac97_quirks\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1791, i32 32 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 522, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 581, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1796, i32 11 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1802, i32 11 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1808, i32 11 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1814, i32 11 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1838, i32 11 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1844, i32 11 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1850, i32 11 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1856, i32 11 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1862, i32 11 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1868, i32 11 }
@___asan_gen_.464 = private unnamed_addr constant [24 x i8] c"snd_via686_playback_ops\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1355, i32 33 }
@___asan_gen_.467 = private unnamed_addr constant [23 x i8] c"snd_via686_capture_ops\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1366, i32 33 }
@___asan_gen_.470 = private unnamed_addr constant [15 x i8] c"snd_via82xx_hw\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1135, i32 38 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 451, i32 5 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 787, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 815, i32 5 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2060, i32 19 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2080, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1918, i32 7 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1920, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1927, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1932, i32 24 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1933, i32 24 }
@___asan_gen_.530 = private unnamed_addr constant [22 x i8] c"snd_via8233_multi_ops\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1388, i32 33 }
@___asan_gen_.533 = private unnamed_addr constant [24 x i8] c"snd_via8233_capture_ops\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1399, i32 33 }
@___asan_gen_.536 = private unnamed_addr constant [25 x i8] c"snd_via8233_playback_ops\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1377, i32 33 }
@___asan_gen_.539 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1274, i32 28 }
@___asan_gen_.542 = private unnamed_addr constant [24 x i8] c"hw_constraints_channels\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1277, i32 49 }
@___asan_gen_.545 = private unnamed_addr constant [27 x i8] c"snd_via8233_capture_source\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1622, i32 32 }
@___asan_gen_.548 = private unnamed_addr constant [31 x i8] c"snd_via8233_dxs3_spdif_control\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1662, i32 38 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1989, i32 20 }
@___asan_gen_.554 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1992, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant [34 x i8] c"snd_via8233_pcmdxs_volume_control\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1751, i32 38 }
@___asan_gen_.566 = private unnamed_addr constant [31 x i8] c"snd_via8233_dxs_volume_control\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1762, i32 38 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1623, i32 10 }
@___asan_gen_.572 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1589, i32 28 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1590, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1590, i32 13 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1663, i32 10 }
@___asan_gen_.584 = private unnamed_addr constant [13 x i8] c"db_scale_dxs\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 1749, i32 14 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2118, i32 35 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2110, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.594 = private constant [23 x i8] c"../sound/pci/via82xx.c\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.594, i32 2112, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant [39 x i8] c"switch.table.snd_via8233_multi_prepare\00", align 1
@llvm.compiler.used = appending global [208 x ptr] [ptr @__UNIQUE_ID_ac97_clock255, ptr @__UNIQUE_ID_ac97_clocktype254, ptr @__UNIQUE_ID_ac97_quirk257, ptr @__UNIQUE_ID_ac97_quirktype256, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_dxs_init_volume261, ptr @__UNIQUE_ID_dxs_init_volumetype260, ptr @__UNIQUE_ID_dxs_support259, ptr @__UNIQUE_ID_dxs_supporttype258, ptr @__UNIQUE_ID_enabletype264, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_joystick253, ptr @__UNIQUE_ID_joysticktype252, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_mpu_port251, ptr @__UNIQUE_ID_mpu_porttype250, ptr @__UNIQUE_ID_nodelay263, ptr @__UNIQUE_ID_nodelaytype262, ptr @__exitcall_via82xx_driver_exit, ptr @__initcall__kmod_snd_via82xx__268_2581_via82xx_driver_init6, ptr @__param_ac97_clock, ptr @__param_ac97_quirk, ptr @__param_dxs_init_volume, ptr @__param_dxs_support, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_joystick, ptr @__param_mpu_port, ptr @__param_nodelay, ptr @build_via_table._entry, ptr @build_via_table._entry_ptr, ptr @check_dxs_list._entry, ptr @check_dxs_list._entry.24, ptr @check_dxs_list._entry.27, ptr @check_dxs_list._entry.30, ptr @check_dxs_list._entry_ptr, ptr @check_dxs_list._entry_ptr.26, ptr @check_dxs_list._entry_ptr.29, ptr @check_dxs_list._entry_ptr.32, ptr @snd_via686_create_gameport._entry, ptr @snd_via686_create_gameport._entry.107, ptr @snd_via686_create_gameport._entry_ptr, ptr @snd_via686_create_gameport._entry_ptr.109, ptr @snd_via686_init_misc._entry, ptr @snd_via686_init_misc._entry_ptr, ptr @snd_via8233_init_misc._entry, ptr @snd_via8233_init_misc._entry_ptr, ptr @snd_via82xx_chip_init._entry, ptr @snd_via82xx_chip_init._entry_ptr, ptr @snd_via82xx_codec_read._entry, ptr @snd_via82xx_codec_read._entry_ptr, ptr @snd_via82xx_codec_ready._entry, ptr @snd_via82xx_codec_ready._entry_ptr, ptr @snd_via82xx_create._entry, ptr @snd_via82xx_create._entry_ptr, ptr @snd_via82xx_probe._entry, ptr @snd_via82xx_probe._entry_ptr, ptr @via82xx_driver_exit, ptr @index, ptr @id, ptr @mpu_port, ptr @joystick, ptr @ac97_clock, ptr @ac97_quirk, ptr @dxs_support, ptr @dxs_init_volume, ptr @nodelay, ptr @enable, ptr @via82xx_driver, ptr @.str, ptr @snd_via82xx_ids, ptr @snd_via82xx_pm, ptr @.str.2, ptr @.str.3, ptr @via823x_cards, ptr @.str.4, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @dxs_allowlist, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @snd_via82xx_create.__key, ptr @.str.72, ptr @snd_via82xx_create.__key.73, ptr @.str.74, ptr @snd_via82xx_create.__key.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @snd_via82xx_mixer_new.ops, ptr @ac97_quirks, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @snd_via686_playback_ops, ptr @snd_via686_capture_ops, ptr @snd_via82xx_hw, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @snd_via8233_multi_ops, ptr @snd_via8233_capture_ops, ptr @snd_via8233_playback_ops, ptr @snd_via8233_multi_open.channels, ptr @snd_via8233_multi_open.hw_constraints_channels, ptr @snd_via8233_capture_source, ptr @snd_via8233_dxs3_spdif_control, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @snd_via8233_pcmdxs_volume_control, ptr @snd_via8233_dxs_volume_control, ptr @.str.115, ptr @snd_via8233_capture_source_info.texts, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @db_scale_dxs, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @switch.table.snd_via8233_multi_prepare], section "llvm.metadata"
@0 = internal global [158 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joystick to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_clock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_quirk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dxs_support to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dxs_init_volume to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via82xx_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via823x_cards to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dxs_allowlist to i32), i32 656, i32 832, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_dxs_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_dxs_list._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_dxs_list._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_dxs_list._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_create.__key.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_create.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_mixer_new.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_quirks to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_codec_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via686_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via686_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via82xx_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_via_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via686_init_misc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via686_create_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via686_create_gameport._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_multi_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_multi_open.channels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_multi_open.hw_constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_capture_source to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_dxs3_spdif_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_init_misc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_pcmdxs_volume_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_dxs_volume_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_via8233_capture_source_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_dxs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_via8233_multi_prepare to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @via82xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @via82xx_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @via82xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @via82xx_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  %sid.i = alloca %struct.snd_ctl_elem_id, align 4
  %pcm.i261 = alloca ptr, align 4
  %chmap.i262 = alloca ptr, align 4
  %pcm.i232 = alloca ptr, align 4
  %chmap.i = alloca ptr, align 4
  %pcm.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #12
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !380
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %1 = load i32, ptr @index, align 4
  %2 = load ptr, ptr @id, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 888, ptr noundef nonnull %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %driver = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 6217572461688799488, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 3
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %11 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %revision, align 4
  %conv = zext i8 %12 to i32
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname, ptr noundef nonnull @.str.2, i32 noundef %conv)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %shortname5 = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 3
  %revision7 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %13 = ptrtoint ptr %revision7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %revision7, align 4
  %conv8 = zext i8 %14 to i32
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname5, ptr noundef nonnull @.str.3, i32 noundef %conv8)
  %15 = ptrtoint ptr %revision7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %revision7, align 4
  %17 = add i8 %16, -16
  %18 = call i8 @llvm.fshl.i8(i8 %17, i8 %17, i8 4)
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %18, label %sw.bb4.if.then26_crit_edge [
    i8 0, label %if.then26.critedge
    i8 1, label %if.then26.critedge346
    i8 2, label %if.then26.critedge349
    i8 3, label %for.end.fold.split342
    i8 4, label %sw.bb4.for.end_crit_edge
    i8 5, label %for.end.fold.split344
    i8 6, label %for.end.fold.split345
  ]

sw.bb4.for.end_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

sw.bb4.if.then26_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

for.end.fold.split342:                            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %shortname19.c352 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %shortname19.c352, ptr @.str.16, i32 10)
  br label %if.then41

for.end.fold.split344:                            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end.fold.split345:                            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split345, %for.end.fold.split344, %sw.bb4.for.end_crit_edge
  %i.0335.lcssa = phi i32 [ 5, %for.end.fold.split344 ], [ 6, %for.end.fold.split345 ], [ 4, %sw.bb4.for.end_crit_edge ]
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %shortname19 = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 3
  %name = getelementptr [7 x %struct.via823x_info], ptr @via823x_cards, i32 0, i32 %i.0335.lcssa, i32 1
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  %call22 = call ptr @strcpy(ptr noundef %shortname19, ptr noundef %26) #15
  br label %if.then26

if.then26.critedge:                               ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %shortname19.c = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 3
  %29 = call ptr @memcpy(ptr %shortname19.c, ptr @.str.13, i32 13)
  br label %if.then26

if.then26.critedge346:                            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 4
  %shortname19.c347 = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 3
  %32 = call ptr @memcpy(ptr %shortname19.c347, ptr @.str.14, i32 10)
  br label %if.then26

if.then26.critedge349:                            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 4
  %shortname19.c350 = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 3
  %35 = call ptr @memcpy(ptr %shortname19.c350, ptr @.str.15, i32 9)
  br label %if.then26

if.then26:                                        ; preds = %if.then26.critedge349, %if.then26.critedge346, %if.then26.critedge, %for.end, %sw.bb4.if.then26_crit_edge
  %36 = load i32, ptr @dxs_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp27 = icmp eq i32 %36, 0
  br i1 %cmp27, label %if.then29, label %if.then26.if.end33_crit_edge

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %revision7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %revision7, align 4
  %conv31 = zext i8 %38 to i32
  %call32 = call fastcc i32 @check_dxs_list(ptr noundef %pci, i32 noundef %conv31)
  store i32 %call32, ptr @dxs_support, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then26.if.end33_crit_edge
  %39 = phi i32 [ %call32, %if.then29 ], [ %36, %if.then26.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp34 = icmp eq i32 %39, 2
  br i1 %cmp34, label %if.end33.if.then41_crit_edge, label %if.else45

if.end33.if.then41_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.then41:                                        ; preds = %if.end33.if.then41_crit_edge, %for.end.fold.split342
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %driver42 = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 2
  %42 = call ptr @memcpy(ptr %driver42, ptr @.str.4, i32 9)
  br label %sw.epilog

if.else45:                                        ; preds = %if.end33
  %43 = ptrtoint ptr %revision7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %revision7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %44)
  %cmp48 = icmp ugt i8 %44, 95
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 4
  %driver51 = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 2
  br i1 %cmp48, label %if.then50, label %if.else54

if.then50:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %driver51 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 6217572470177871616, ptr %driver51, align 1
  br label %sw.epilog

if.else54:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %driver51 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 6217572470177870592, ptr %driver51, align 1
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev60 = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %49 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.7, i32 noundef %8) #16
  br label %cleanup

sw.epilog:                                        ; preds = %if.else54, %if.then50, %if.then41, %sw.bb
  %cmp73 = phi i1 [ false, %if.then41 ], [ false, %if.else54 ], [ false, %if.then50 ], [ true, %sw.bb ]
  %cmp87 = phi i1 [ true, %if.then41 ], [ false, %if.else54 ], [ false, %if.then50 ], [ false, %sw.bb ]
  %cmp31.i = phi ptr [ @snd_via686_interrupt, %if.then41 ], [ @snd_via8233_interrupt, %if.else54 ], [ @snd_via8233_interrupt, %if.then50 ], [ @snd_via686_interrupt, %sw.bb ]
  %chip_type.2 = phi i32 [ 2, %if.then41 ], [ 1, %if.else54 ], [ 1, %if.then50 ], [ 0, %sw.bb ]
  %51 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card, align 4
  %revision61 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %53 = ptrtoint ptr %revision61 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %revision61, align 4
  %55 = load i32, ptr @ac97_clock, align 4
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %52, i32 0, i32 9
  %56 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %private_data.i, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %chip_type1.i = getelementptr inbounds %struct.via82xx, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %chip_type1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %chip_type.2, ptr %chip_type1.i, align 4
  %revision2.i = getelementptr inbounds %struct.via82xx, ptr %57, i32 0, i32 4
  %59 = ptrtoint ptr %revision2.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %54, ptr %revision2.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.via82xx, ptr %57, i32 0, i32 31
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @snd_via82xx_create.__key, i16 noundef signext 3) #12
  %rates.i = getelementptr inbounds %struct.via82xx, ptr %57, i32 0, i32 22
  call void @__raw_spin_lock_init(ptr noundef %rates.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @snd_via82xx_create.__key.73, i16 noundef signext 3) #12
  %arrayidx10.i = getelementptr %struct.via82xx, ptr %57, i32 0, i32 22, i32 1
  call void @__raw_spin_lock_init(ptr noundef %arrayidx10.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @snd_via82xx_create.__key.75, i16 noundef signext 3) #12
  %card15.i = getelementptr inbounds %struct.via82xx, ptr %57, i32 0, i32 16
  %60 = ptrtoint ptr %card15.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %52, ptr %card15.i, align 4
  %pci16.i = getelementptr inbounds %struct.via82xx, ptr %57, i32 0, i32 15
  %61 = ptrtoint ptr %pci16.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %pci, ptr %pci16.i, align 4
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %57, align 4
  %old_legacy.i = getelementptr inbounds %struct.via82xx, ptr %57, i32 0, i32 5
  %call17.i = call i32 @pci_read_config_byte(ptr noundef %pci, i32 noundef 66, ptr noundef %old_legacy.i) #12
  %old_legacy_cfg.i = getelementptr inbounds %struct.via82xx, ptr %57, i32 0, i32 6
  %call18.i = call i32 @pci_read_config_byte(ptr noundef %pci, i32 noundef 67, ptr noundef %old_legacy_cfg.i) #12
  %63 = ptrtoint ptr %pci16.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci16.i, align 4
  %65 = ptrtoint ptr %old_legacy.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %old_legacy.i, align 1
  %67 = and i8 %66, -6
  %call23.i = call i32 @pci_write_config_byte(ptr noundef %64, i32 noundef 66, i8 noundef zeroext %67) #12
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %52, i32 0, i32 2
  %call24.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef %driver.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end.i.cleanup_crit_edge, label %if.end28.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28.i:                                       ; preds = %if.end.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %68 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.via82xx, ptr %57, i32 0, i32 1
  %70 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %port.i, align 4
  %irq30.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %71 = ptrtoint ptr %irq30.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq30.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %72, ptr noundef nonnull %cmp31.i, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %57) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end40.i, label %do.end37.i

do.end37.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev38.i = getelementptr inbounds %struct.snd_card, ptr %52, i32 0, i32 27
  %73 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev38.i, align 8
  %75 = ptrtoint ptr %irq30.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq30.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.77, i32 noundef %76) #16
  br label %cleanup

if.end40.i:                                       ; preds = %if.end28.i
  %77 = ptrtoint ptr %irq30.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq30.i, align 4
  %79 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %57, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %52, i32 0, i32 33
  %80 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %78, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %52, i32 0, i32 10
  %81 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @snd_via82xx_free, ptr %private_free.i, align 4
  %82 = add i32 %55, -8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %82)
  %83 = icmp ult i32 %82, 40001
  br i1 %83, label %if.then48.i, label %if.end40.i.if.end67_crit_edge

if.end40.i.if.end67_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then48.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %ac97_clock49.i = getelementptr inbounds %struct.via82xx, ptr %57, i32 0, i32 29
  %84 = ptrtoint ptr %ac97_clock49.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %55, ptr %ac97_clock49.i, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then48.i, %if.end40.i.if.end67_crit_edge
  call fastcc void @snd_via82xx_chip_init(ptr noundef %57) #12
  call void @pci_set_master(ptr noundef %pci) #12
  %85 = load ptr, ptr @ac97_quirk, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #12
  %card.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 16
  %86 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %card.i, align 4
  %ac97_bus.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 27
  %call.i209 = call i32 @snd_ac97_bus(ptr noundef %87, i32 noundef 0, ptr noundef nonnull @snd_via82xx_mixer_new.ops, ptr noundef %6, ptr noundef %ac97_bus.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %cmp.i210 = icmp slt i32 %call.i209, 0
  br i1 %cmp.i210, label %if.end67.snd_via82xx_mixer_new.exit.thread_crit_edge, label %if.end.i212

if.end67.snd_via82xx_mixer_new.exit.thread_crit_edge: ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via82xx_mixer_new.exit.thread

if.end.i212:                                      ; preds = %if.end67
  %88 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  %89 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 2
  %90 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 1
  %91 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ac97_bus.i, align 4
  %private_free.i211 = getelementptr inbounds %struct.snd_ac97_bus, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %private_free.i211 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @snd_via82xx_mixer_free_ac97_bus, ptr %private_free.i211, align 4
  %ac97_clock.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 29
  %94 = ptrtoint ptr %ac97_clock.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ac97_clock.i, align 4
  %96 = load ptr, ptr %ac97_bus.i, align 4
  %clock.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %95, ptr %clock.i, align 4
  %98 = getelementptr inbounds i8, ptr %ac97.i, i32 12
  %99 = call ptr @memset(ptr %98, i32 0, i32 12)
  %100 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %6, ptr %ac97.i, align 4
  %101 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @snd_via82xx_mixer_free_ac97, ptr %90, align 4
  %pci.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 15
  %102 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pci.i, align 4
  %104 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %89, align 4
  %105 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2080, ptr %88, align 4
  %106 = load ptr, ptr %ac97_bus.i, align 4
  %ac976.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 28
  %call7.i = call i32 @snd_ac97_mixer(ptr noundef %106, ptr noundef nonnull %ac97.i, ptr noundef %ac976.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i212.snd_via82xx_mixer_new.exit.thread_crit_edge, label %if.end10.i

if.end.i212.snd_via82xx_mixer_new.exit.thread_crit_edge: ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via82xx_mixer_new.exit.thread

if.end10.i:                                       ; preds = %if.end.i212
  %107 = ptrtoint ptr %ac976.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ac976.i, align 4
  %call12.i = call i32 @snd_ac97_tune_hardware(ptr noundef %108, ptr noundef nonnull @ac97_quirks, ptr noundef %85) #12
  %chip_type.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 3
  %109 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %chip_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp13.not.i = icmp eq i32 %110, 0
  br i1 %cmp13.not.i, label %if.end10.i.if.end72_crit_edge, label %if.then14.i

if.end10.i.if.end72_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %ac976.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ac976.i, align 4
  %call16.i = call i32 @snd_ac97_update_bits(ptr noundef %112, i16 noundef zeroext 42, i16 noundef zeroext 48, i16 noundef zeroext 48) #12
  br label %if.end72

snd_via82xx_mixer_new.exit.thread:                ; preds = %if.end.i212.snd_via82xx_mixer_new.exit.thread_crit_edge, %if.end67.snd_via82xx_mixer_new.exit.thread_crit_edge
  %retval.0.i213.ph = phi i32 [ %call7.i, %if.end.i212.snd_via82xx_mixer_new.exit.thread_crit_edge ], [ %call.i209, %if.end67.snd_via82xx_mixer_new.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #12
  br label %cleanup

if.end72:                                         ; preds = %if.then14.i, %if.end10.i.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #12
  br i1 %cmp73, label %if.then75, label %if.else86

if.then75:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #12
  %113 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !380
  %playback_devno.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 18
  %114 = ptrtoint ptr %playback_devno.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %playback_devno.i, align 4
  %capture_devno.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 20
  %115 = ptrtoint ptr %capture_devno.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %capture_devno.i, align 4
  %num_devs.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 17
  %116 = ptrtoint ptr %num_devs.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 2, ptr %num_devs.i, align 4
  %intr_mask.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 14
  %117 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 119, ptr %intr_mask.i, align 4
  %118 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %card.i, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %119, i32 0, i32 3
  %call.i215 = call i32 @snd_pcm_new(ptr noundef %119, ptr noundef %shortname.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %cmp.i216 = icmp slt i32 %call.i215, 0
  br i1 %cmp.i216, label %snd_via686_pcm_new.exit.thread, label %if.end80

snd_via686_pcm_new.exit.thread:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #12
  br label %cleanup

if.end80:                                         ; preds = %if.then75
  %120 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %121, i32 noundef 0, ptr noundef nonnull @snd_via686_playback_ops) #12
  %122 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %123, i32 noundef 1, ptr noundef nonnull @snd_via686_capture_ops) #12
  %124 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pcm.i, align 4
  %private_data.i217 = getelementptr inbounds %struct.snd_pcm, ptr %125, i32 0, i32 11
  %126 = ptrtoint ptr %private_data.i217 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %6, ptr %private_data.i217, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %125, i32 0, i32 7
  %127 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %card.i, align 4
  %shortname4.i = getelementptr inbounds %struct.snd_card, ptr %128, i32 0, i32 3
  %call6.i = call ptr @strcpy(ptr noundef %name.i, ptr noundef %shortname4.i) #17
  %pcms.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 24
  %129 = ptrtoint ptr %pcms.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %125, ptr %pcms.i, align 4
  %arrayidx.i.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 0
  %130 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %arrayidx.i.i, align 4
  %shadow_shift.i.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 0, i32 14
  %131 = ptrtoint ptr %shadow_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %shadow_shift.i.i, align 4
  %direction6.i.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 0, i32 2
  %132 = ptrtoint ptr %direction6.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %direction6.i.i, align 4
  %port.i.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 1
  %133 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %port.i.i, align 4
  %port9.i.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 0, i32 1
  %135 = ptrtoint ptr %port9.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %port9.i.i, align 4
  %arrayidx.i21.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 1
  %136 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 16, ptr %arrayidx.i21.i, align 4
  %shadow_shift.i22.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 1, i32 14
  %137 = ptrtoint ptr %shadow_shift.i22.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %shadow_shift.i22.i, align 4
  %direction6.i23.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 1, i32 2
  %138 = ptrtoint ptr %direction6.i23.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %direction6.i23.i, align 4
  %add.i.i = add i32 %134, 16
  %port9.i25.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 1, i32 1
  %139 = ptrtoint ptr %port9.i25.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %add.i.i, ptr %port9.i25.i, align 4
  %140 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pci.i, align 4
  %dev.i219 = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 44
  %call7.i220 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %125, i32 noundef 2, ptr noundef %dev.i219, i32 noundef 65536, i32 noundef 16777216) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #12
  %old_legacy.i223 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 5
  %142 = ptrtoint ptr %old_legacy.i223 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %old_legacy.i223, align 1
  %old_legacy_cfg.i224 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 6
  %144 = ptrtoint ptr %old_legacy_cfg.i224 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %old_legacy_cfg.i224, align 2
  %146 = and i8 %143, -73
  %147 = or i8 %146, 64
  %revision.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 4
  %148 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %149)
  %cmp.i225 = icmp ugt i8 %149, 31
  %150 = load i32, ptr @mpu_port, align 4
  br i1 %cmp.i225, label %if.then.i, label %if.else12.i

if.then.i:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %150)
  %cmp6.i = icmp sgt i32 %150, 511
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %and9.i = and i32 %150, 65532
  store i32 %and9.i, ptr @mpu_port, align 4
  %151 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pci.i, align 4
  %or10.i = or i32 %and9.i, 1
  %call.i227 = call i32 @pci_write_config_dword(ptr noundef %152, i32 noundef 24, i32 noundef %or10.i) #12
  %153 = load i32, ptr @mpu_port, align 4
  %mpu_port_saved.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 11
  %154 = ptrtoint ptr %mpu_port_saved.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %mpu_port_saved.i, align 4
  br label %if.end26.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %155 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pci.i, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %156, i32 0, i32 47, i32 2
  %157 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i, align 8
  store i32 %158, ptr @mpu_port, align 4
  br label %if.end26.i

if.else12.i:                                      ; preds = %if.end80
  %159 = add i32 %150, -768
  %160 = call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %160)
  %switch.i = icmp ult i32 %160, 4
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #14
  %161 = and i8 %145, -13
  %162 = trunc i32 %150 to i8
  %163 = lshr i8 %162, 2
  %164 = and i8 %163, 12
  %conv19.i = or i8 %164, %161
  br label %if.end26.i

sw.default.i:                                     ; preds = %if.else12.i
  %165 = and i8 %143, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i228 = icmp eq i8 %165, 0
  br i1 %tobool.not.i228, label %sw.default.i.if.end26.i_crit_edge, label %if.then22.i

sw.default.i.if.end26.i_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then22.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  %166 = shl i8 %145, 2
  %167 = and i8 %166, 48
  %shl.i = zext i8 %167 to i32
  %add.i = or i32 %shl.i, 768
  store i32 %add.i, ptr @mpu_port, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %sw.default.i.if.end26.i_crit_edge, %sw.bb.i, %if.else.i, %if.then8.i
  %168 = phi i32 [ %add.i, %if.then22.i ], [ %153, %if.then8.i ], [ %158, %if.else.i ], [ %150, %sw.default.i.if.end26.i_crit_edge ], [ %150, %sw.bb.i ]
  %legacy_cfg.0.i = phi i8 [ %145, %if.then22.i ], [ %145, %if.then8.i ], [ %145, %if.else.i ], [ %145, %sw.default.i.if.end26.i_crit_edge ], [ %conv19.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %168)
  %cmp27.i = icmp sgt i32 %168, 511
  br i1 %cmp27.i, label %if.then29.i, label %if.end26.i.if.end32.i_crit_edge

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pci.i, align 4
  %dev.i229 = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  %call31.i = call ptr @__devm_request_region(ptr noundef %dev.i229, ptr noundef nonnull @ioport_resource, i32 noundef %168, i32 noundef 2, ptr noundef nonnull @.str.100) #12
  %mpu_res.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 2
  %171 = ptrtoint ptr %mpu_res.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call31.i, ptr %mpu_res.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end32.i_crit_edge
  %mpu_res33.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 2
  %172 = ptrtoint ptr %mpu_res33.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mpu_res33.i, align 4
  %tobool34.not.i = icmp eq ptr %173, null
  br i1 %tobool34.not.i, label %if.else45.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %174 = or i8 %146, -64
  %spec.select.i = select i1 %cmp.i225, i8 %174, i8 %147
  %175 = or i8 %spec.select.i, 2
  br label %if.end55.i

if.else45.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %176 = and i8 %147, 117
  %spec.select9.i = select i1 %cmp.i225, i8 %176, i8 %147
  %177 = and i8 %spec.select9.i, -11
  store i32 0, ptr @mpu_port, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else45.i, %if.then35.i
  %legacy.2.i = phi i8 [ %177, %if.else45.i ], [ %175, %if.then35.i ]
  %178 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pci.i, align 4
  %call57.i = call i32 @pci_write_config_byte(ptr noundef %179, i32 noundef 66, i8 noundef zeroext %legacy.2.i) #12
  %180 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pci.i, align 4
  %call59.i = call i32 @pci_write_config_byte(ptr noundef %181, i32 noundef 67, i8 noundef zeroext %legacy_cfg.0.i) #12
  %182 = ptrtoint ptr %mpu_res33.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mpu_res33.i, align 4
  %tobool61.not.i = icmp eq ptr %183, null
  br i1 %tobool61.not.i, label %if.end55.i.if.end79.i_crit_edge, label %if.then62.i

if.end55.i.if.end79.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

if.then62.i:                                      ; preds = %if.end55.i
  %184 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %card.i, align 4
  %186 = load i32, ptr @mpu_port, align 4
  %rmidi.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 25
  %call63.i = call i32 @snd_mpu401_uart_new(ptr noundef %185, i32 noundef 0, i16 noundef zeroext 13, i32 noundef %186, i32 noundef 36, i32 noundef -1, ptr noundef %rmidi.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %cmp64.i = icmp slt i32 %call63.i, 0
  br i1 %cmp64.i, label %do.end.i, label %if.then62.i.if.end76.i_crit_edge

if.then62.i.if.end76.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

do.end.i:                                         ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #14
  %187 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %card.i, align 4
  %dev68.i = getelementptr inbounds %struct.snd_card, ptr %188, i32 0, i32 27
  %189 = ptrtoint ptr %dev68.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev68.i, align 8
  %191 = load i32, ptr @mpu_port, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %190, ptr noundef nonnull @.str.101, i32 noundef %191) #16
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end.i, %if.then62.i.if.end76.i_crit_edge
  %.sink.i = phi i8 [ -3, %do.end.i ], [ -65, %if.then62.i.if.end76.i_crit_edge ]
  %192 = and i8 %.sink.i, %legacy.2.i
  %193 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pci.i, align 4
  %call78.i = call i32 @pci_write_config_byte(ptr noundef %194, i32 noundef 66, i8 noundef zeroext %192) #12
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.end76.i, %if.end55.i.if.end79.i_crit_edge
  %legacy.3.i = phi i8 [ %legacy.2.i, %if.end55.i.if.end79.i_crit_edge ], [ %192, %if.end76.i ]
  %195 = load i8, ptr @joystick, align 1, !range !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not.i.i = icmp eq i8 %195, 0
  br i1 %tobool.not.i.i, label %if.end79.i.snd_via686_init_misc.exit_crit_edge, label %if.end.i.i

if.end79.i.snd_via686_init_misc.exit_crit_edge:   ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via686_init_misc.exit

if.end.i.i:                                       ; preds = %if.end79.i
  %196 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %card.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %197, i32 0, i32 27
  %198 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev.i.i, align 8
  %call.i.i231 = call ptr @__devm_request_region(ptr noundef %199, ptr noundef nonnull @ioport_resource, i32 noundef 512, i32 noundef 8, ptr noundef nonnull @.str.104) #12
  %tobool1.not.i.i = icmp eq ptr %call.i.i231, null
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %if.end5.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %200 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %card.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.snd_card, ptr %201, i32 0, i32 27
  %202 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev4.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %203, ptr noundef nonnull @.str.105, i32 noundef 512) #16
  br label %snd_via686_init_misc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %204 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %204, i32 noundef 3520, i32 noundef 1248) #18
  %gameport.i.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 33
  %205 = ptrtoint ptr %gameport.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call7.i.i.i.i.i, ptr %gameport.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool7.not.i.i, label %do.end11.i.i, label %if.end14.i.i

do.end11.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %206 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %card.i, align 4
  %dev13.i.i = getelementptr inbounds %struct.snd_card, ptr %207, i32 0, i32 27
  %208 = ptrtoint ptr %dev13.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev13.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.108) #16
  br label %snd_via686_init_misc.exit

if.end14.i.i:                                     ; preds = %if.end5.i.i
  %name1.i.i.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %call.i.i.i = call i32 @strlcpy(ptr noundef %name1.i.i.i, ptr noundef nonnull @.str.110, i32 noundef 32) #12
  %210 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pci.i, align 4
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %211, i32 0, i32 44, i32 3
  %212 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %213, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end14.i.i.pci_name.exit.i.i_crit_edge

if.end14.i.i.pci_name.exit.i.i_crit_edge:         ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %211, i32 0, i32 44
  %214 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev.i.i.i, align 4
  br label %pci_name.exit.i.i

pci_name.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end14.i.i.pci_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %215, %if.end.i.i.i.i ], [ %213, %if.end14.i.i.pci_name.exit.i.i_crit_edge ]
  call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull @.str.111, ptr noundef %retval.0.i.i.i.i) #12
  %216 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pci.i, align 4
  %dev17.i.i = getelementptr inbounds %struct.pci_dev, ptr %217, i32 0, i32 44
  %parent.i.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i.i.i, i32 0, i32 21, i32 1
  %218 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %dev17.i.i, ptr %parent.i.i, align 8
  %io.i.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %219 = ptrtoint ptr %io.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 512, ptr %io.i.i, align 4
  %220 = or i8 %legacy.3.i, 8
  %call21.i.i = call i32 @pci_write_config_byte(ptr noundef %217, i32 noundef 66, i8 noundef zeroext %220) #12
  %221 = ptrtoint ptr %gameport.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %gameport.i.i, align 4
  call void @__gameport_register_port(ptr noundef %222, ptr noundef null) #12
  br label %snd_via686_init_misc.exit

snd_via686_init_misc.exit:                        ; preds = %pci_name.exit.i.i, %do.end11.i.i, %do.end.i.i, %if.end79.i.snd_via686_init_misc.exit_crit_edge
  %legacy.4.i = phi i8 [ %legacy.3.i, %if.end79.i.snd_via686_init_misc.exit_crit_edge ], [ %legacy.3.i, %do.end.i.i ], [ %legacy.3.i, %do.end11.i.i ], [ %220, %pci_name.exit.i.i ]
  %legacy_saved.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 7
  %223 = ptrtoint ptr %legacy_saved.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %legacy.4.i, ptr %legacy_saved.i, align 1
  %legacy_cfg_saved.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 8
  %224 = ptrtoint ptr %legacy_cfg_saved.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %legacy_cfg.0.i, ptr %legacy_cfg_saved.i, align 4
  br label %if.end131

if.else86:                                        ; preds = %if.end72
  br i1 %cmp87, label %if.then89, label %if.else95

if.then89:                                        ; preds = %if.else86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i232) #12
  %225 = ptrtoint ptr %pcm.i232 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i232, align 4, !annotation !380
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chmap.i) #12
  %226 = ptrtoint ptr %chmap.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr inttoptr (i32 -1 to ptr), ptr %chmap.i, align 4, !annotation !380
  %multi_devno.i = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 19
  %227 = ptrtoint ptr %multi_devno.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %multi_devno.i, align 4
  %playback_devno.i233 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 18
  %228 = ptrtoint ptr %playback_devno.i233 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 1, ptr %playback_devno.i233, align 4
  %capture_devno.i234 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 20
  %229 = ptrtoint ptr %capture_devno.i234 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 2, ptr %capture_devno.i234, align 4
  %num_devs.i235 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 17
  %230 = ptrtoint ptr %num_devs.i235 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 3, ptr %num_devs.i235, align 4
  %intr_mask.i236 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 14
  %231 = ptrtoint ptr %intr_mask.i236 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 50540544, ptr %intr_mask.i236, align 4
  %232 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %card.i, align 4
  %shortname.i238 = getelementptr inbounds %struct.snd_card, ptr %233, i32 0, i32 3
  %call.i239 = call i32 @snd_pcm_new(ptr noundef %233, ptr noundef %shortname.i238, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i232) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %cmp.i240 = icmp slt i32 %call.i239, 0
  br i1 %cmp.i240, label %if.then89.snd_via8233a_pcm_new.exit.thread_crit_edge, label %if.end.i254

if.then89.snd_via8233a_pcm_new.exit.thread_crit_edge: ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233a_pcm_new.exit.thread

if.end.i254:                                      ; preds = %if.then89
  %234 = ptrtoint ptr %pcm.i232 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pcm.i232, align 4
  call void @snd_pcm_set_ops(ptr noundef %235, i32 noundef 0, ptr noundef nonnull @snd_via8233_multi_ops) #12
  %236 = ptrtoint ptr %pcm.i232 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pcm.i232, align 4
  call void @snd_pcm_set_ops(ptr noundef %237, i32 noundef 1, ptr noundef nonnull @snd_via8233_capture_ops) #12
  %238 = ptrtoint ptr %pcm.i232 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %pcm.i232, align 4
  %private_data.i241 = getelementptr inbounds %struct.snd_pcm, ptr %239, i32 0, i32 11
  %240 = ptrtoint ptr %private_data.i241 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %6, ptr %private_data.i241, align 8
  %name.i242 = getelementptr inbounds %struct.snd_pcm, ptr %239, i32 0, i32 7
  %241 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %card.i, align 4
  %shortname4.i243 = getelementptr inbounds %struct.snd_card, ptr %242, i32 0, i32 3
  %call6.i244 = call ptr @strcpy(ptr noundef %name.i242, ptr noundef %shortname4.i243) #17
  %pcms.i245 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 24
  %243 = ptrtoint ptr %pcms.i245 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %239, ptr %pcms.i245, align 4
  %244 = ptrtoint ptr %multi_devno.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %multi_devno.i, align 4
  %arrayidx.i.i246 = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %245
  %246 = ptrtoint ptr %arrayidx.i.i246 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 64, ptr %arrayidx.i.i246, align 4
  %shadow_shift.i.i247 = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %245, i32 14
  %247 = ptrtoint ptr %shadow_shift.i.i247 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 16, ptr %shadow_shift.i.i247, align 4
  %direction6.i.i248 = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %245, i32 2
  %248 = ptrtoint ptr %direction6.i.i248 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %direction6.i.i248, align 4
  %port.i.i249 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 1
  %249 = ptrtoint ptr %port.i.i249 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %port.i.i249, align 4
  %add.i.i250 = add i32 %250, 64
  %port9.i.i251 = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %245, i32 1
  %251 = ptrtoint ptr %port9.i.i251 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %add.i.i250, ptr %port9.i.i251, align 4
  %252 = ptrtoint ptr %capture_devno.i234 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %capture_devno.i234, align 4
  %arrayidx.i71.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %253
  %254 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 96, ptr %arrayidx.i71.i, align 4
  %shadow_shift.i72.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %253, i32 14
  %255 = ptrtoint ptr %shadow_shift.i72.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 24, ptr %shadow_shift.i72.i, align 4
  %direction6.i73.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %253, i32 2
  %256 = ptrtoint ptr %direction6.i73.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 1, ptr %direction6.i73.i, align 4
  %257 = load i32, ptr %port.i.i249, align 4
  %add.i75.i = add i32 %257, 96
  %port9.i76.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %253, i32 1
  %258 = ptrtoint ptr %port9.i76.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %add.i75.i, ptr %port9.i76.i, align 4
  %259 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %pci.i, align 4
  %dev.i253 = getelementptr inbounds %struct.pci_dev, ptr %260, i32 0, i32 44
  %call9.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %239, i32 noundef 2, ptr noundef %dev.i253, i32 noundef 65536, i32 noundef 16777216) #12
  %261 = ptrtoint ptr %pcm.i232 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pcm.i232, align 4
  %call10.i = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %262, i32 noundef 0, ptr noundef nonnull @snd_pcm_alt_chmaps, i32 noundef 6, i32 noundef 0, ptr noundef nonnull %chmap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end.i254.snd_via8233a_pcm_new.exit.thread_crit_edge, label %if.end13.i

if.end.i254.snd_via8233a_pcm_new.exit.thread_crit_edge: ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233a_pcm_new.exit.thread

if.end13.i:                                       ; preds = %if.end.i254
  %263 = ptrtoint ptr %chmap.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %chmap.i, align 4
  %265 = ptrtoint ptr %ac976.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ac976.i, align 4
  %chmaps.i = getelementptr inbounds %struct.snd_ac97, ptr %266, i32 0, i32 31
  %267 = ptrtoint ptr %chmaps.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %264, ptr %chmaps.i, align 4
  %268 = load ptr, ptr %ac976.i, align 4
  %ext_id.i.i = getelementptr inbounds %struct.snd_ac97, ptr %268, i32 0, i32 15
  %269 = ptrtoint ptr %ext_id.i.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %ext_id.i.i, align 2
  %271 = and i16 %270, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %271)
  %tobool.not.i256 = icmp eq i16 %271, 0
  br i1 %tobool.not.i256, label %if.end13.i.snd_via8233a_pcm_new.exit_crit_edge, label %if.end18.i

if.end13.i.snd_via8233a_pcm_new.exit_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233a_pcm_new.exit

if.end18.i:                                       ; preds = %if.end13.i
  %272 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %card.i, align 4
  %shortname21.i = getelementptr inbounds %struct.snd_card, ptr %273, i32 0, i32 3
  %call23.i257 = call i32 @snd_pcm_new(ptr noundef %273, ptr noundef %shortname21.i, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm.i232) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i257)
  %cmp24.i = icmp slt i32 %call23.i257, 0
  br i1 %cmp24.i, label %if.end18.i.snd_via8233a_pcm_new.exit.thread_crit_edge, label %if.end26.i259

if.end18.i.snd_via8233a_pcm_new.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233a_pcm_new.exit.thread

if.end26.i259:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %274 = ptrtoint ptr %pcm.i232 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pcm.i232, align 4
  call void @snd_pcm_set_ops(ptr noundef %275, i32 noundef 0, ptr noundef nonnull @snd_via8233_playback_ops) #12
  %276 = ptrtoint ptr %pcm.i232 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %pcm.i232, align 4
  %private_data27.i = getelementptr inbounds %struct.snd_pcm, ptr %277, i32 0, i32 11
  %278 = ptrtoint ptr %private_data27.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %6, ptr %private_data27.i, align 8
  %name28.i = getelementptr inbounds %struct.snd_pcm, ptr %277, i32 0, i32 7
  %279 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %card.i, align 4
  %shortname31.i = getelementptr inbounds %struct.snd_card, ptr %280, i32 0, i32 3
  %call33.i = call ptr @strcpy(ptr noundef %name28.i, ptr noundef %shortname31.i) #17
  %arrayidx35.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 24, i32 1
  %281 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %277, ptr %arrayidx35.i, align 4
  %282 = ptrtoint ptr %playback_devno.i233 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %playback_devno.i233, align 4
  %arrayidx.i77.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %283
  %284 = ptrtoint ptr %arrayidx.i77.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 48, ptr %arrayidx.i77.i, align 4
  %shadow_shift.i78.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %283, i32 14
  %285 = ptrtoint ptr %shadow_shift.i78.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 12, ptr %shadow_shift.i78.i, align 4
  %direction6.i79.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %283, i32 2
  %286 = ptrtoint ptr %direction6.i79.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %direction6.i79.i, align 4
  %287 = ptrtoint ptr %port.i.i249 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %port.i.i249, align 4
  %add.i81.i = add i32 %288, 48
  %port9.i82.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %283, i32 1
  %289 = ptrtoint ptr %port9.i82.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %add.i81.i, ptr %port9.i82.i, align 4
  %290 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %pci.i, align 4
  %dev38.i258 = getelementptr inbounds %struct.pci_dev, ptr %291, i32 0, i32 44
  %call39.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %277, i32 noundef 2, ptr noundef %dev38.i258, i32 noundef 65536, i32 noundef 16777216) #12
  br label %snd_via8233a_pcm_new.exit

snd_via8233a_pcm_new.exit.thread:                 ; preds = %if.end18.i.snd_via8233a_pcm_new.exit.thread_crit_edge, %if.end.i254.snd_via8233a_pcm_new.exit.thread_crit_edge, %if.then89.snd_via8233a_pcm_new.exit.thread_crit_edge
  %retval.0.i260.ph = phi i32 [ %call23.i257, %if.end18.i.snd_via8233a_pcm_new.exit.thread_crit_edge ], [ %call10.i, %if.end.i254.snd_via8233a_pcm_new.exit.thread_crit_edge ], [ %call.i239, %if.then89.snd_via8233a_pcm_new.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i232) #12
  br label %cleanup

snd_via8233a_pcm_new.exit:                        ; preds = %if.end26.i259, %if.end13.i.snd_via8233a_pcm_new.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i232) #12
  br label %if.end125

if.else95:                                        ; preds = %if.else86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i261) #12
  %292 = ptrtoint ptr %pcm.i261 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i261, align 4, !annotation !380
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chmap.i262) #12
  %293 = ptrtoint ptr %chmap.i262 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr inttoptr (i32 -1 to ptr), ptr %chmap.i262, align 4, !annotation !380
  %playback_devno.i263 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 18
  %294 = ptrtoint ptr %playback_devno.i263 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 0, ptr %playback_devno.i263, align 4
  %multi_devno.i264 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 19
  %295 = ptrtoint ptr %multi_devno.i264 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 4, ptr %multi_devno.i264, align 4
  %capture_devno.i265 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 20
  %296 = ptrtoint ptr %capture_devno.i265 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 5, ptr %capture_devno.i265, align 4
  %num_devs.i266 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 17
  %297 = ptrtoint ptr %num_devs.i266 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 7, ptr %num_devs.i266, align 4
  %intr_mask.i267 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 14
  %298 = ptrtoint ptr %intr_mask.i267 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 855847731, ptr %intr_mask.i267, align 4
  %299 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %card.i, align 4
  %shortname.i269 = getelementptr inbounds %struct.snd_card, ptr %300, i32 0, i32 3
  %call.i270 = call i32 @snd_pcm_new(ptr noundef %300, ptr noundef %shortname.i269, i32 noundef 0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %pcm.i261) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %cmp.i271 = icmp slt i32 %call.i270, 0
  br i1 %cmp.i271, label %if.else95.snd_via8233_pcm_new.exit.thread_crit_edge, label %if.end.i287

if.else95.snd_via8233_pcm_new.exit.thread_crit_edge: ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233_pcm_new.exit.thread

if.end.i287:                                      ; preds = %if.else95
  %301 = ptrtoint ptr %pcm.i261 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %pcm.i261, align 4
  call void @snd_pcm_set_ops(ptr noundef %302, i32 noundef 0, ptr noundef nonnull @snd_via8233_playback_ops) #12
  %303 = ptrtoint ptr %pcm.i261 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %pcm.i261, align 4
  call void @snd_pcm_set_ops(ptr noundef %304, i32 noundef 1, ptr noundef nonnull @snd_via8233_capture_ops) #12
  %305 = ptrtoint ptr %pcm.i261 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %pcm.i261, align 4
  %private_data.i272 = getelementptr inbounds %struct.snd_pcm, ptr %306, i32 0, i32 11
  %307 = ptrtoint ptr %private_data.i272 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %6, ptr %private_data.i272, align 8
  %name.i273 = getelementptr inbounds %struct.snd_pcm, ptr %306, i32 0, i32 7
  %308 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %card.i, align 4
  %shortname4.i274 = getelementptr inbounds %struct.snd_card, ptr %309, i32 0, i32 3
  %call6.i275 = call ptr @strcpy(ptr noundef %name.i273, ptr noundef %shortname4.i274) #17
  %pcms.i276 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 24
  %310 = ptrtoint ptr %pcms.i276 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %306, ptr %pcms.i276, align 4
  %port.i.i277 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 1
  %arrayidx.i.i278 = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 0
  %311 = ptrtoint ptr %arrayidx.i.i278 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 0, ptr %arrayidx.i.i278, align 4
  %shadow_shift.i.i279 = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 0, i32 14
  %312 = ptrtoint ptr %shadow_shift.i.i279 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %shadow_shift.i.i279, align 4
  %direction6.i.i280 = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 0, i32 2
  %313 = ptrtoint ptr %direction6.i.i280 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 0, ptr %direction6.i.i280, align 4
  %314 = ptrtoint ptr %port.i.i277 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %port.i.i277, align 4
  %port9.i.i281 = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 0, i32 1
  %316 = ptrtoint ptr %port9.i.i281 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %315, ptr %port9.i.i281, align 4
  %arrayidx.i.1.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 1
  %317 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 16, ptr %arrayidx.i.1.i, align 4
  %shadow_shift.i.1.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 1, i32 14
  %318 = ptrtoint ptr %shadow_shift.i.1.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 4, ptr %shadow_shift.i.1.i, align 4
  %direction6.i.1.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 1, i32 2
  %319 = ptrtoint ptr %direction6.i.1.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 0, ptr %direction6.i.1.i, align 4
  %add.i.1.i = add i32 %315, 16
  %port9.i.1.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 1, i32 1
  %320 = ptrtoint ptr %port9.i.1.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %add.i.1.i, ptr %port9.i.1.i, align 4
  %arrayidx.i.2.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 2
  %321 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 32, ptr %arrayidx.i.2.i, align 4
  %shadow_shift.i.2.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 2, i32 14
  %322 = ptrtoint ptr %shadow_shift.i.2.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 8, ptr %shadow_shift.i.2.i, align 4
  %direction6.i.2.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 2, i32 2
  %323 = ptrtoint ptr %direction6.i.2.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 0, ptr %direction6.i.2.i, align 4
  %add.i.2.i = add i32 %315, 32
  %port9.i.2.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 2, i32 1
  %324 = ptrtoint ptr %port9.i.2.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %add.i.2.i, ptr %port9.i.2.i, align 4
  %arrayidx.i.3.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 3
  %325 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 48, ptr %arrayidx.i.3.i, align 4
  %shadow_shift.i.3.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 3, i32 14
  %326 = ptrtoint ptr %shadow_shift.i.3.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 12, ptr %shadow_shift.i.3.i, align 4
  %direction6.i.3.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 3, i32 2
  %327 = ptrtoint ptr %direction6.i.3.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 0, ptr %direction6.i.3.i, align 4
  %add.i.3.i = add i32 %315, 48
  %port9.i.3.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 3, i32 1
  %328 = ptrtoint ptr %port9.i.3.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %add.i.3.i, ptr %port9.i.3.i, align 4
  %329 = ptrtoint ptr %capture_devno.i265 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %capture_devno.i265, align 4
  %arrayidx.i79.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %330
  %331 = ptrtoint ptr %arrayidx.i79.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 96, ptr %arrayidx.i79.i, align 4
  %shadow_shift.i80.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %330, i32 14
  %332 = ptrtoint ptr %shadow_shift.i80.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 24, ptr %shadow_shift.i80.i, align 4
  %direction6.i81.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %330, i32 2
  %333 = ptrtoint ptr %direction6.i81.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 1, ptr %direction6.i81.i, align 4
  %334 = load i32, ptr %port.i.i277, align 4
  %add.i83.i = add i32 %334, 96
  %port9.i84.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %330, i32 1
  %335 = ptrtoint ptr %port9.i84.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %add.i83.i, ptr %port9.i84.i, align 4
  %336 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %pci.i, align 4
  %dev.i283 = getelementptr inbounds %struct.pci_dev, ptr %337, i32 0, i32 44
  %call9.i284 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %306, i32 noundef 2, ptr noundef %dev.i283, i32 noundef 65536, i32 noundef 16777216) #12
  %338 = ptrtoint ptr %pcm.i261 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %pcm.i261, align 4
  %call10.i285 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %339, i32 noundef 0, ptr noundef nonnull @snd_pcm_std_chmaps, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %chmap.i262) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i285)
  %cmp11.i286 = icmp slt i32 %call10.i285, 0
  br i1 %cmp11.i286, label %if.end.i287.snd_via8233_pcm_new.exit.thread_crit_edge, label %if.end13.i289

if.end.i287.snd_via8233_pcm_new.exit.thread_crit_edge: ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233_pcm_new.exit.thread

if.end13.i289:                                    ; preds = %if.end.i287
  %340 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %card.i, align 4
  %shortname16.i = getelementptr inbounds %struct.snd_card, ptr %341, i32 0, i32 3
  %call18.i288 = call i32 @snd_pcm_new(ptr noundef %341, ptr noundef %shortname16.i, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i261) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i288)
  %cmp19.i = icmp slt i32 %call18.i288, 0
  br i1 %cmp19.i, label %if.end13.i289.snd_via8233_pcm_new.exit.thread_crit_edge, label %if.end21.i

if.end13.i289.snd_via8233_pcm_new.exit.thread_crit_edge: ; preds = %if.end13.i289
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233_pcm_new.exit.thread

if.end21.i:                                       ; preds = %if.end13.i289
  %342 = ptrtoint ptr %pcm.i261 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %pcm.i261, align 4
  call void @snd_pcm_set_ops(ptr noundef %343, i32 noundef 0, ptr noundef nonnull @snd_via8233_multi_ops) #12
  %344 = ptrtoint ptr %pcm.i261 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %pcm.i261, align 4
  call void @snd_pcm_set_ops(ptr noundef %345, i32 noundef 1, ptr noundef nonnull @snd_via8233_capture_ops) #12
  %346 = ptrtoint ptr %pcm.i261 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %pcm.i261, align 4
  %private_data22.i = getelementptr inbounds %struct.snd_pcm, ptr %347, i32 0, i32 11
  %348 = ptrtoint ptr %private_data22.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr %6, ptr %private_data22.i, align 8
  %name23.i = getelementptr inbounds %struct.snd_pcm, ptr %347, i32 0, i32 7
  %349 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %card.i, align 4
  %shortname26.i = getelementptr inbounds %struct.snd_card, ptr %350, i32 0, i32 3
  %call28.i = call ptr @strcpy(ptr noundef %name23.i, ptr noundef %shortname26.i) #17
  %arrayidx30.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 24, i32 1
  %351 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %347, ptr %arrayidx30.i, align 4
  %352 = ptrtoint ptr %multi_devno.i264 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %multi_devno.i264, align 4
  %arrayidx.i85.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %353
  %354 = ptrtoint ptr %arrayidx.i85.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 64, ptr %arrayidx.i85.i, align 4
  %shadow_shift.i86.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %353, i32 14
  %355 = ptrtoint ptr %shadow_shift.i86.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 16, ptr %shadow_shift.i86.i, align 4
  %direction6.i87.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %353, i32 2
  %356 = ptrtoint ptr %direction6.i87.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 0, ptr %direction6.i87.i, align 4
  %357 = ptrtoint ptr %port.i.i277 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %port.i.i277, align 4
  %add.i89.i = add i32 %358, 64
  %port9.i90.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %353, i32 1
  %359 = ptrtoint ptr %port9.i90.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %add.i89.i, ptr %port9.i90.i, align 4
  %360 = ptrtoint ptr %capture_devno.i265 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %capture_devno.i265, align 4
  %add.i290 = add i32 %361, 1
  %arrayidx.i91.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %add.i290
  %362 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 112, ptr %arrayidx.i91.i, align 4
  %shadow_shift.i92.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %add.i290, i32 14
  %363 = ptrtoint ptr %shadow_shift.i92.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 28, ptr %shadow_shift.i92.i, align 4
  %direction6.i93.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %add.i290, i32 2
  %364 = ptrtoint ptr %direction6.i93.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 1, ptr %direction6.i93.i, align 4
  %365 = load i32, ptr %port.i.i277, align 4
  %add.i95.i = add i32 %365, 112
  %port9.i96.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %add.i290, i32 1
  %366 = ptrtoint ptr %port9.i96.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %add.i95.i, ptr %port9.i96.i, align 4
  %367 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %pci.i, align 4
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %368, i32 0, i32 44
  %call35.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %347, i32 noundef 2, ptr noundef %dev34.i, i32 noundef 65536, i32 noundef 16777216) #12
  %369 = ptrtoint ptr %pcm.i261 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %pcm.i261, align 4
  %call36.i = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %370, i32 noundef 0, ptr noundef nonnull @snd_pcm_alt_chmaps, i32 noundef 6, i32 noundef 0, ptr noundef nonnull %chmap.i262) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end21.i.snd_via8233_pcm_new.exit.thread_crit_edge, label %if.end100

if.end21.i.snd_via8233_pcm_new.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233_pcm_new.exit.thread

snd_via8233_pcm_new.exit.thread:                  ; preds = %if.end21.i.snd_via8233_pcm_new.exit.thread_crit_edge, %if.end13.i289.snd_via8233_pcm_new.exit.thread_crit_edge, %if.end.i287.snd_via8233_pcm_new.exit.thread_crit_edge, %if.else95.snd_via8233_pcm_new.exit.thread_crit_edge
  %retval.0.i293.ph = phi i32 [ %call36.i, %if.end21.i.snd_via8233_pcm_new.exit.thread_crit_edge ], [ %call18.i288, %if.end13.i289.snd_via8233_pcm_new.exit.thread_crit_edge ], [ %call10.i285, %if.end.i287.snd_via8233_pcm_new.exit.thread_crit_edge ], [ %call.i270, %if.else95.snd_via8233_pcm_new.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap.i262) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i261) #12
  br label %cleanup

if.end100:                                        ; preds = %if.end21.i
  %371 = ptrtoint ptr %chmap.i262 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %chmap.i262, align 4
  %373 = ptrtoint ptr %ac976.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %ac976.i, align 4
  %chmaps.i292 = getelementptr inbounds %struct.snd_ac97, ptr %374, i32 0, i32 31
  %375 = ptrtoint ptr %chmaps.i292 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %372, ptr %chmaps.i292, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap.i262) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i261) #12
  %376 = load i32, ptr @dxs_support, align 4
  %377 = zext i32 %376 to i64
  call void @__sanitizer_cov_trace_switch(i64 %377, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %376, label %if.end100.if.end125_crit_edge [
    i32 3, label %if.then103
    i32 4, label %if.then107
    i32 5, label %if.then114
  ]

if.end100.if.end125_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %dxs_fixed = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 23
  %378 = ptrtoint ptr %dxs_fixed to i32
  call void @__asan_load1_noabort(i32 %378)
  %bf.load = load i8, ptr %dxs_fixed, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %dxs_fixed, align 4
  br label %if.end125

if.then107:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %no_vra = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 23
  %379 = ptrtoint ptr %no_vra to i32
  call void @__asan_load1_noabort(i32 %379)
  %bf.load108 = load i8, ptr %no_vra, align 4
  %bf.set110 = or i8 %bf.load108, 64
  store i8 %bf.set110, ptr %no_vra, align 4
  br label %if.end125

if.then114:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %no_vra115 = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 23
  %380 = ptrtoint ptr %no_vra115 to i32
  call void @__asan_load1_noabort(i32 %380)
  %bf.load116 = load i8, ptr %no_vra115, align 4
  %bf.set121 = or i8 %bf.load116, 96
  store i8 %bf.set121, ptr %no_vra115, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then114, %if.then107, %if.then103, %if.end100.if.end125_crit_edge, %snd_via8233a_pcm_new.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #12
  %381 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 -1, ptr %val.i, align 1, !annotation !380
  %382 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %chip_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %383)
  %cmp.i295 = icmp eq i32 %383, 2
  %cond.i296 = select i1 %cmp.i295, i32 1, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i296
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end125
  %i.097.i = phi i32 [ 0, %if.end125 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  store i32 %i.097.i, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @snd_via8233_capture_source, i32 0, i32 4), align 4
  %384 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %card.i, align 4
  %call.i298 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_via8233_capture_source, ptr noundef %6) #12
  %call2.i = call i32 @snd_ctl_add(ptr noundef %385, ptr noundef %call.i298) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %for.body.i.snd_via8233_init_misc.exit.thread_crit_edge, label %for.cond.i

for.body.i.snd_via8233_init_misc.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233_init_misc.exit.thread

for.end.i:                                        ; preds = %for.cond.i
  %386 = ptrtoint ptr %ac976.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %ac976.i, align 4
  %ext_id.i.i300 = getelementptr inbounds %struct.snd_ac97, ptr %387, i32 0, i32 15
  %388 = ptrtoint ptr %ext_id.i.i300 to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %ext_id.i.i300, align 2
  %390 = and i16 %389, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %390)
  %tobool.not.i301 = icmp eq i16 %390, 0
  br i1 %tobool.not.i301, label %for.end.i.if.end12.i_crit_edge, label %if.then5.i

for.end.i.if.end12.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then5.i:                                       ; preds = %for.end.i
  %391 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %card.i, align 4
  %call7.i302 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_via8233_dxs3_spdif_control, ptr noundef %6) #12
  %call8.i = call i32 @snd_ctl_add(ptr noundef %392, ptr noundef %call7.i302) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then5.i.snd_via8233_init_misc.exit.thread_crit_edge, label %if.then5.i.if.end12.i_crit_edge

if.then5.i.if.end12.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then5.i.snd_via8233_init_misc.exit.thread_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233_init_misc.exit.thread

if.end12.i:                                       ; preds = %if.then5.i.if.end12.i_crit_edge, %for.end.i.if.end12.i_crit_edge
  %393 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %chip_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %394)
  %cmp14.not.i = icmp eq i32 %394, 2
  br i1 %cmp14.not.i, label %if.end12.i.snd_via8233_init_misc.exit_crit_edge, label %if.then15.i

if.end12.i.snd_via8233_init_misc.exit_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via8233_init_misc.exit

if.then15.i:                                      ; preds = %if.end12.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sid.i) #12
  %395 = call ptr @memset(ptr %sid.i, i32 0, i32 64)
  %name.i303 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i, i32 0, i32 4
  %396 = call ptr @memcpy(ptr %name.i303, ptr @.str.112, i32 20)
  %iface.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %sid.i, i32 0, i32 1
  %397 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 2, ptr %iface.i, align 4
  %398 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %card.i, align 4
  %call18.i304 = call ptr @snd_ctl_find_id(ptr noundef %399, ptr noundef nonnull %sid.i) #12
  %tobool19.not.i = icmp eq ptr %call18.i304, null
  br i1 %tobool19.not.i, label %do.end.i310, label %for.body30.preheader.i

for.body30.preheader.i:                           ; preds = %if.then15.i
  %call31.i305 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_via8233_dxs_volume_control, ptr noundef %6) #12
  %tobool32.not.i = icmp eq ptr %call31.i305, null
  br i1 %tobool32.not.i, label %for.body30.preheader.i.cleanup44.thread.i_crit_edge, label %if.end34.i

for.body30.preheader.i.cleanup44.thread.i_crit_edge: ; preds = %for.body30.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44.thread.i

do.end.i310:                                      ; preds = %if.then15.i
  %400 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %card.i, align 4
  %dev.i306 = getelementptr inbounds %struct.snd_card, ptr %401, i32 0, i32 27
  %402 = ptrtoint ptr %dev.i306 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %dev.i306, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %403, ptr noundef nonnull @.str.113) #16
  %404 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %card.i, align 4
  %call23.i307 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_via8233_pcmdxs_volume_control, ptr noundef %6) #12
  %call24.i308 = call i32 @snd_ctl_add(ptr noundef %405, ptr noundef %call23.i307) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i308)
  %cmp25.i309 = icmp slt i32 %call24.i308, 0
  br i1 %cmp25.i309, label %do.end.i310.cleanup44.thread.i_crit_edge, label %do.end.i310.cleanup44.i_crit_edge

do.end.i310.cleanup44.i_crit_edge:                ; preds = %do.end.i310
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44.i

do.end.i310.cleanup44.thread.i_crit_edge:         ; preds = %do.end.i310
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44.thread.i

if.end34.i:                                       ; preds = %for.body30.preheader.i
  %subdevice.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call31.i305, i32 0, i32 1, i32 3
  %406 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 0, ptr %subdevice.i, align 4
  %407 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %card.i, align 4
  %call36.i311 = call i32 @snd_ctl_add(ptr noundef %408, ptr noundef nonnull %call31.i305) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i311)
  %cmp37.i312 = icmp slt i32 %call36.i311, 0
  br i1 %cmp37.i312, label %if.end34.i.cleanup44.thread.i_crit_edge, label %for.inc40.i

if.end34.i.cleanup44.thread.i_crit_edge:          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44.thread.i

for.inc40.i:                                      ; preds = %if.end34.i
  %arrayidx.i313 = getelementptr %struct.via82xx, ptr %6, i32 0, i32 26, i32 0
  %409 = ptrtoint ptr %arrayidx.i313 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %call31.i305, ptr %arrayidx.i313, align 4
  %call31.1.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_via8233_dxs_volume_control, ptr noundef %6) #12
  %tobool32.not.1.i = icmp eq ptr %call31.1.i, null
  br i1 %tobool32.not.1.i, label %for.inc40.i.cleanup44.thread.i_crit_edge, label %if.end34.1.i

for.inc40.i.cleanup44.thread.i_crit_edge:         ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44.thread.i

if.end34.1.i:                                     ; preds = %for.inc40.i
  %subdevice.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call31.1.i, i32 0, i32 1, i32 3
  %410 = ptrtoint ptr %subdevice.1.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 1, ptr %subdevice.1.i, align 4
  %411 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %card.i, align 4
  %call36.1.i = call i32 @snd_ctl_add(ptr noundef %412, ptr noundef nonnull %call31.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.1.i)
  %cmp37.1.i = icmp slt i32 %call36.1.i, 0
  br i1 %cmp37.1.i, label %if.end34.1.i.cleanup44.thread.i_crit_edge, label %for.inc40.1.i

if.end34.1.i.cleanup44.thread.i_crit_edge:        ; preds = %if.end34.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44.thread.i

for.inc40.1.i:                                    ; preds = %if.end34.1.i
  %arrayidx.1.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 26, i32 1
  %413 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %call31.1.i, ptr %arrayidx.1.i, align 4
  %call31.2.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_via8233_dxs_volume_control, ptr noundef %6) #12
  %tobool32.not.2.i = icmp eq ptr %call31.2.i, null
  br i1 %tobool32.not.2.i, label %for.inc40.1.i.cleanup44.thread.i_crit_edge, label %if.end34.2.i

for.inc40.1.i.cleanup44.thread.i_crit_edge:       ; preds = %for.inc40.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44.thread.i

if.end34.2.i:                                     ; preds = %for.inc40.1.i
  %subdevice.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call31.2.i, i32 0, i32 1, i32 3
  %414 = ptrtoint ptr %subdevice.2.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 2, ptr %subdevice.2.i, align 4
  %415 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %card.i, align 4
  %call36.2.i = call i32 @snd_ctl_add(ptr noundef %416, ptr noundef nonnull %call31.2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.2.i)
  %cmp37.2.i = icmp slt i32 %call36.2.i, 0
  br i1 %cmp37.2.i, label %if.end34.2.i.cleanup44.thread.i_crit_edge, label %for.inc40.2.i

if.end34.2.i.cleanup44.thread.i_crit_edge:        ; preds = %if.end34.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44.thread.i

for.inc40.2.i:                                    ; preds = %if.end34.2.i
  %arrayidx.2.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 26, i32 2
  %417 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %call31.2.i, ptr %arrayidx.2.i, align 4
  %call31.3.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_via8233_dxs_volume_control, ptr noundef %6) #12
  %tobool32.not.3.i = icmp eq ptr %call31.3.i, null
  br i1 %tobool32.not.3.i, label %for.inc40.2.i.cleanup44.thread.i_crit_edge, label %if.end34.3.i

for.inc40.2.i.cleanup44.thread.i_crit_edge:       ; preds = %for.inc40.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44.thread.i

if.end34.3.i:                                     ; preds = %for.inc40.2.i
  %subdevice.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call31.3.i, i32 0, i32 1, i32 3
  %418 = ptrtoint ptr %subdevice.3.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 3, ptr %subdevice.3.i, align 4
  %419 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %card.i, align 4
  %call36.3.i = call i32 @snd_ctl_add(ptr noundef %420, ptr noundef nonnull %call31.3.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.3.i)
  %cmp37.3.i = icmp slt i32 %call36.3.i, 0
  br i1 %cmp37.3.i, label %if.end34.3.i.cleanup44.thread.i_crit_edge, label %for.inc40.3.i

if.end34.3.i.cleanup44.thread.i_crit_edge:        ; preds = %if.end34.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44.thread.i

for.inc40.3.i:                                    ; preds = %if.end34.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.3.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 26, i32 3
  %421 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %call31.3.i, ptr %arrayidx.3.i, align 4
  br label %cleanup44.i

cleanup44.thread.i:                               ; preds = %if.end34.3.i.cleanup44.thread.i_crit_edge, %for.inc40.2.i.cleanup44.thread.i_crit_edge, %if.end34.2.i.cleanup44.thread.i_crit_edge, %for.inc40.1.i.cleanup44.thread.i_crit_edge, %if.end34.1.i.cleanup44.thread.i_crit_edge, %for.inc40.i.cleanup44.thread.i_crit_edge, %if.end34.i.cleanup44.thread.i_crit_edge, %do.end.i310.cleanup44.thread.i_crit_edge, %for.body30.preheader.i.cleanup44.thread.i_crit_edge
  %retval.3.ph.i = phi i32 [ %call24.i308, %do.end.i310.cleanup44.thread.i_crit_edge ], [ %call36.i311, %if.end34.i.cleanup44.thread.i_crit_edge ], [ -12, %for.body30.preheader.i.cleanup44.thread.i_crit_edge ], [ -12, %for.inc40.i.cleanup44.thread.i_crit_edge ], [ %call36.1.i, %if.end34.1.i.cleanup44.thread.i_crit_edge ], [ -12, %for.inc40.1.i.cleanup44.thread.i_crit_edge ], [ %call36.2.i, %if.end34.2.i.cleanup44.thread.i_crit_edge ], [ -12, %for.inc40.2.i.cleanup44.thread.i_crit_edge ], [ %call36.3.i, %if.end34.3.i.cleanup44.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i) #12
  br label %snd_via8233_init_misc.exit.thread

cleanup44.i:                                      ; preds = %for.inc40.3.i, %do.end.i310.cleanup44.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sid.i) #12
  br label %snd_via8233_init_misc.exit

snd_via8233_init_misc.exit.thread:                ; preds = %cleanup44.thread.i, %if.then5.i.snd_via8233_init_misc.exit.thread_crit_edge, %for.body.i.snd_via8233_init_misc.exit.thread_crit_edge
  %retval.4.i.ph = phi i32 [ %retval.3.ph.i, %cleanup44.thread.i ], [ %call8.i, %if.then5.i.snd_via8233_init_misc.exit.thread_crit_edge ], [ %call2.i, %for.body.i.snd_via8233_init_misc.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #12
  br label %cleanup

snd_via8233_init_misc.exit:                       ; preds = %cleanup44.i, %if.end12.i.snd_via8233_init_misc.exit_crit_edge
  %422 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %pci.i, align 4
  %call48.i = call i32 @pci_read_config_byte(ptr noundef %423, i32 noundef 73, ptr noundef nonnull %val.i) #12
  %424 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %val.i, align 1
  %426 = and i8 %425, -12
  store i8 %426, ptr %val.i, align 1
  %427 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %pci.i, align 4
  %call54.i = call i32 @pci_write_config_byte(ptr noundef %428, i32 noundef 73, i8 noundef zeroext %426) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #12
  br label %if.end131

if.end131:                                        ; preds = %snd_via8233_init_misc.exit, %snd_via686_init_misc.exit
  %num_devs = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 17
  %429 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %cmp133336.not = icmp eq i32 %430, 0
  br i1 %cmp133336.not, label %if.end131.for.end139_crit_edge, label %if.end131.for.body135_crit_edge

if.end131.for.body135_crit_edge:                  ; preds = %if.end131
  br label %for.body135

if.end131.for.end139_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end139

for.body135:                                      ; preds = %for.body135.for.body135_crit_edge, %if.end131.for.body135_crit_edge
  %i.1337 = phi i32 [ %inc138, %for.body135.for.body135_crit_edge ], [ 0, %if.end131.for.body135_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %port.i315 = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %i.1337, i32 1
  %431 = ptrtoint ptr %port.i315 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %port.i315, align 4
  %add.i316 = add i32 %432, 1
  %and.i = and i32 %add.i316, 1048575
  %add1.i = or i32 %and.i, -18874368
  %433 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %433, i8 73) #12, !srcloc !383
  %434 = ptrtoint ptr %port.i315 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %port.i315, align 4
  %add3.i = add i32 %435, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %436 = inttoptr i32 %add5.i to ptr
  %437 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %436) #12, !srcloc !384
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %438 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %438(i32 noundef 10737400) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  call void @arm_heavy_mb() #12
  %439 = ptrtoint ptr %port.i315 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %port.i315, align 4
  %add11.i = add i32 %440, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %441 = inttoptr i32 %add13.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %441, i8 0) #12, !srcloc !383
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  call void @arm_heavy_mb() #12
  %442 = ptrtoint ptr %port.i315 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %port.i315, align 4
  %and19.i = and i32 %443, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %444 = inttoptr i32 %add20.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %444, i8 3) #12, !srcloc !383
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  call void @arm_heavy_mb() #12
  %445 = ptrtoint ptr %port.i315 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %port.i315, align 4
  %add25.i = add i32 %446, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %447 = inttoptr i32 %add27.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %447, i8 0) #12, !srcloc !383
  %lastpos.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %i.1337, i32 8
  %448 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 0, ptr %lastpos.i, align 4
  %hwptr_done.i = getelementptr %struct.via82xx, ptr %6, i32 0, i32 21, i32 %i.1337, i32 12
  %449 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 0, ptr %hwptr_done.i, align 4
  %inc138 = add nuw i32 %i.1337, 1
  %450 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %num_devs, align 4
  %cmp133 = icmp ult i32 %inc138, %451
  br i1 %cmp133, label %for.body135.for.body135_crit_edge, label %for.body135.for.end139_crit_edge

for.body135.for.end139_crit_edge:                 ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end139

for.body135.for.body135_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body135

for.end139:                                       ; preds = %for.body135.for.end139_crit_edge, %if.end131.for.end139_crit_edge
  %452 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %453, i32 0, i32 4
  %shortname141 = getelementptr inbounds %struct.snd_card, ptr %453, i32 0, i32 3
  %454 = ptrtoint ptr %ac976.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %ac976.i, align 4
  %call143 = call ptr @snd_ac97_get_short_name(ptr noundef %455) #12
  %port = getelementptr inbounds %struct.via82xx, ptr %6, i32 0, i32 1
  %456 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %port, align 4
  %458 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %6, align 4
  %call144 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.12, ptr noundef %shortname141, ptr noundef %call143, i32 noundef %457, i32 noundef %459)
  %460 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %card.i, align 4
  %call.i.i318 = call i32 @snd_card_rw_proc_new(ptr noundef %461, ptr noundef nonnull @.str.119, ptr noundef %6, ptr noundef nonnull @snd_via82xx_proc_read, ptr noundef null) #12
  %462 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %card, align 4
  %call145 = call i32 @snd_card_register(ptr noundef %463) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %for.end139.cleanup_crit_edge, label %if.end149

for.end139.cleanup_crit_edge:                     ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end149:                                        ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #14
  %464 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %466 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store ptr %465, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end149, %for.end139.cleanup_crit_edge, %snd_via8233_init_misc.exit.thread, %snd_via8233_pcm_new.exit.thread, %snd_via8233a_pcm_new.exit.thread, %snd_via686_pcm_new.exit.thread, %snd_via82xx_mixer_new.exit.thread, %do.end37.i, %if.end.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end149 ], [ %call, %entry.cleanup_crit_edge ], [ %call145, %for.end139.cleanup_crit_edge ], [ %retval.0.i213.ph, %snd_via82xx_mixer_new.exit.thread ], [ %call.i215, %snd_via686_pcm_new.exit.thread ], [ %retval.0.i260.ph, %snd_via8233a_pcm_new.exit.thread ], [ %retval.0.i293.ph, %snd_via8233_pcm_new.exit.thread ], [ %retval.4.i.ph, %snd_via8233_init_misc.exit.thread ], [ %call24.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ -16, %do.end37.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_dxs_list(ptr noundef %pci, i32 noundef %revision) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_pci_quirk_lookup(ptr noundef %pci, ptr noundef nonnull @dxs_allowlist) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_dxs_list.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_dxs_list, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !389

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %name = getelementptr inbounds %struct.snd_pci_quirk, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_dxs_list.__UNIQUE_ID_ddebug267, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %1) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %value = getelementptr inbounds %struct.snd_pci_quirk, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %revision)
  %cmp = icmp sgt i32 %revision, 79
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %do.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.22) #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.25) #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.28) #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.31) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %3, %do.end ], [ 3, %do.end11 ], [ 5, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ac97_get_short_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.via82xx, ptr %dev_id, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %port = getelementptr inbounds %struct.via82xx, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 132
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #12, !srcloc !390
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !391
  %num_devs = getelementptr inbounds %struct.via82xx, ptr %dev_id, i32 0, i32 17
  %5 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp65.not = icmp eq i32 %6, 0
  br i1 %cmp65.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %irqreturn.070 = phi i32 [ %irqreturn.1, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.066 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %shadow_shift = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.066, i32 14
  %7 = ptrtoint ptr %shadow_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shadow_shift, align 4
  %shr = lshr i32 %4, %8
  %9 = trunc i32 %shr to i8
  %conv6 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6)
  %tobool.not = icmp eq i8 %conv6, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %substream7 = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.066, i32 3
  %10 = ptrtoint ptr %substream7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream7, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %running = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.066, i32 4
  %12 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %land.lhs.true.do.body_crit_edge, label %if.then10

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then10:                                        ; preds = %land.lhs.true
  %conv11 = zext i8 %conv6 to i32
  %and12 = and i32 %conv11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %hwptr_done = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.066, i32 12
  %14 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hwptr_done, align 4
  br label %if.end17

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %fragsize = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.066, i32 9
  %15 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fragsize, align 4
  %hwptr_done15 = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.066, i32 12
  %17 = ptrtoint ptr %hwptr_done15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwptr_done15, align 4
  %add16 = add i32 %18, %16
  store i32 %add16, ptr %hwptr_done15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %in_interrupt = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.066, i32 13
  %and20 = shl i32 %shr, 4
  %19 = and i32 %and20, 128
  %20 = or i32 %19, %conv11
  %21 = ptrtoint ptr %in_interrupt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %in_interrupt, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %11) #12
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %22 = ptrtoint ptr %in_interrupt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %in_interrupt, align 4
  br label %do.body

do.body:                                          ; preds = %if.end17, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !392
  tail call void @arm_heavy_mb() #12
  %port29 = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.066, i32 1
  %23 = ptrtoint ptr %port29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port29, align 4
  %and31 = and i32 %24, 1048575
  %add32 = or i32 %and31, -18874368
  %25 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv6) #12, !srcloc !383
  br label %cleanup

cleanup:                                          ; preds = %do.body, %for.body.cleanup_crit_edge
  %irqreturn.1 = phi i32 [ 1, %do.body ], [ %irqreturn.070, %for.body.cleanup_crit_edge ]
  %inc = add nuw i32 %i.066, 1
  %26 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_devs, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %irqreturn.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %irqreturn.1, %cleanup.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irqreturn.0.lcssa)
  %tobool38.not = icmp ne i32 %irqreturn.0.lcssa, 0
  %cond = zext i1 %tobool38.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via686_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.via82xx, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 132
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #12, !srcloc !390
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !393
  %intr_mask = getelementptr inbounds %struct.via82xx, ptr %dev_id, i32 0, i32 14
  %5 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %intr_mask, align 4
  %and3 = and i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %rmidi = getelementptr inbounds %struct.via82xx, ptr %dev_id, i32 0, i32 25
  %7 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmidi, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.then.cleanup44_crit_edge, label %if.then5

if.then.cleanup44_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 4
  %call7 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %10) #12
  br label %cleanup44

if.end8:                                          ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.via82xx, ptr %dev_id, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %num_devs = getelementptr inbounds %struct.via82xx, ptr %dev_id, i32 0, i32 17
  %11 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp70.not = icmp eq i32 %12, 0
  br i1 %cmp70.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %port10 = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.071, i32 1
  %13 = ptrtoint ptr %port10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port10, align 4
  %and12 = and i32 %14, 1048575
  %add13 = or i32 %and12, -18874368
  %15 = inttoptr i32 %add13 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %conv = zext i8 %16 to i32
  %and17 = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %for.body.cleanup_crit_edge, label %if.end20

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %substream = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.071, i32 3
  %17 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %substream, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.end20.do.body_crit_edge, label %land.lhs.true

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true:                                    ; preds = %if.end20
  %running = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.071, i32 4
  %19 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not = icmp eq i32 %20, 0
  br i1 %tobool22.not, label %land.lhs.true.do.body_crit_edge, label %if.then23

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then23:                                        ; preds = %land.lhs.true
  %and25 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %hwptr_done = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.071, i32 12
  %21 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %hwptr_done, align 4
  br label %if.end30

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %fragsize = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.071, i32 9
  %22 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fragsize, align 4
  %hwptr_done28 = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.071, i32 12
  %24 = ptrtoint ptr %hwptr_done28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwptr_done28, align 4
  %add29 = add i32 %25, %23
  store i32 %add29, ptr %hwptr_done28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then27
  %in_interrupt = getelementptr %struct.via82xx, ptr %dev_id, i32 0, i32 21, i32 %i.071, i32 13
  %26 = ptrtoint ptr %in_interrupt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %in_interrupt, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  %27 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %28) #12
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %29 = ptrtoint ptr %in_interrupt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %in_interrupt, align 4
  br label %do.body

do.body:                                          ; preds = %if.end30, %land.lhs.true.do.body_crit_edge, %if.end20.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %port10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port10, align 4
  %and39 = and i32 %31, 1048575
  %add40 = or i32 %and39, -18874368
  %32 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %16) #12, !srcloc !383
  br label %cleanup

cleanup:                                          ; preds = %do.body, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.071, 1
  %33 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_devs, align 4
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end8.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  br label %cleanup44

cleanup44:                                        ; preds = %for.end, %if.then5, %if.then.cleanup44_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ %call7, %if.then5 ], [ 0, %if.then.cleanup44_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_via82xx_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %num_devs = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  tail call void @arm_heavy_mb() #12
  %port.i = getelementptr %struct.via82xx, ptr %1, i32 0, i32 21, i32 %i.015, i32 1
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 4
  %add.i = add i32 %5, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 73) #12, !srcloc !383
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %8, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %13, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %14 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %16, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %17 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 3) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %19, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %20 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #12, !srcloc !383
  %lastpos.i = getelementptr %struct.via82xx, ptr %1, i32 0, i32 21, i32 %i.015, i32 8
  %21 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %lastpos.i, align 4
  %hwptr_done.i = getelementptr %struct.via82xx, ptr %1, i32 0, i32 21, i32 %i.015, i32 12
  %22 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %hwptr_done.i, align 4
  %inc = add nuw i32 %i.015, 1
  %23 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_devs, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %chip_type = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1 = icmp eq i32 %26, 0
  br i1 %cmp1, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end
  %gameport.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 33
  %27 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then.snd_via686_free_gameport.exit_crit_edge, label %if.then.i

if.then.snd_via686_free_gameport.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via686_free_gameport.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gameport_unregister_port(ptr noundef nonnull %28) #12
  %29 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %gameport.i, align 4
  br label %snd_via686_free_gameport.exit

snd_via686_free_gameport.exit:                    ; preds = %if.then.i, %if.then.snd_via686_free_gameport.exit_crit_edge
  %pci = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci, align 4
  %old_legacy = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %old_legacy to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %old_legacy, align 1
  %call = tail call i32 @pci_write_config_byte(ptr noundef %31, i32 noundef 66, i8 noundef zeroext %33) #12
  %34 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci, align 4
  %old_legacy_cfg = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %old_legacy_cfg to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %old_legacy_cfg, align 2
  %call3 = tail call i32 @pci_write_config_byte(ptr noundef %35, i32 noundef 67, i8 noundef zeroext %37) #12
  br label %if.end

if.end:                                           ; preds = %snd_via686_free_gameport.exit, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_via82xx_chip_init(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  %pval = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pval) #12
  %0 = ptrtoint ptr %pval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pval, align 1, !annotation !380
  %pci = getelementptr inbounds %struct.via82xx, ptr %chip, i32 0, i32 15
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %call = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef 64, ptr noundef nonnull %pval) #12
  %3 = ptrtoint ptr %pval to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pval, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %call2 = call i32 @pci_write_config_byte(ptr noundef %7, i32 noundef 65, i8 noundef zeroext -32) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 21474800) #12
  %9 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci, align 4
  %call4 = call i32 @pci_write_config_byte(ptr noundef %10, i32 noundef 65, i8 noundef zeroext 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 21474800) #12
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %call6 = call i32 @pci_write_config_byte(ptr noundef %13, i32 noundef 65, i8 noundef zeroext -52) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 21474800) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 4
  %call8 = call i32 @pci_read_config_byte(ptr noundef %16, i32 noundef 65, ptr noundef nonnull %pval) #12
  %17 = ptrtoint ptr %pval to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pval, align 1
  %19 = and i8 %18, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %19)
  %cmp.not = icmp eq i8 %19, -52
  br i1 %cmp.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci, align 4
  %call14 = call i32 @pci_write_config_byte(ptr noundef %21, i32 noundef 65, i8 noundef zeroext -52) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 21474800) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -75, %23
  br label %do.body

do.body:                                          ; preds = %if.end23.do.body_crit_edge, %if.end15
  %24 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci, align 4
  %call18 = call i32 @pci_read_config_byte(ptr noundef %25, i32 noundef 64, ptr noundef nonnull %pval) #12
  %26 = ptrtoint ptr %pval to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pval, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool21.not = icmp eq i8 %28, 0
  br i1 %tobool21.not, label %if.end23, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end23:                                         ; preds = %do.body
  %call24 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %29
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %if.end23.do.body_crit_edge, label %if.end23.do.end_crit_edge

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %if.end23.do.end_crit_edge, %do.body.do.end_crit_edge
  %port.i = getelementptr inbounds %struct.via82xx, ptr %chip, i32 0, i32 1
  %30 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port.i, align 4
  %add.i = add i32 %31, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %32 = inttoptr i32 %add1.i to ptr
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %32) #12, !srcloc !390
  %34 = call i32 @llvm.bswap.i32(i32 %33) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %and28 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.end.if.end34_crit_edge, label %do.end33

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

do.end33:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.via82xx, ptr %chip, i32 0, i32 16
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.79, i32 noundef %34) #16
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end.if.end34_crit_edge
  %chip_type = getelementptr inbounds %struct.via82xx, ptr %chip, i32 0, i32 3
  %39 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp35 = icmp eq i32 %40, 0
  br i1 %cmp35, label %if.end47, label %if.end34.if.then51_crit_edge

if.end34.if.then51_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.end47:                                         ; preds = %if.end34
  %41 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci, align 4
  %call39 = call i32 @pci_write_config_byte(ptr noundef %42, i32 noundef 72, i8 noundef zeroext 0) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  call void @arm_heavy_mb() #12
  %43 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.i, align 4
  %add43 = add i32 %44, 140
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %45 = inttoptr i32 %add45 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 0) #12, !srcloc !398
  %46 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp49.not = icmp eq i32 %.pr, 0
  br i1 %cmp49.not, label %if.end47.for.cond.preheader_crit_edge, label %if.end47.if.then51_crit_edge

if.end47.if.then51_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.end47.for.cond.preheader_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

if.then51:                                        ; preds = %if.end47.if.then51_crit_edge, %if.end34.if.then51_crit_edge
  %call53 = call ptr @pci_get_device(i32 noundef 4358, i32 noundef 12392, ptr noundef null) #12
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.then51.if.end61thread-pre-split_crit_edge, label %if.then55

if.then51.if.end61thread-pre-split_crit_edge:     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61thread-pre-split

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #12
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %data, align 1, !annotation !380
  %call56 = call i32 @pci_read_config_byte(ptr noundef nonnull %call53, i32 noundef 68, ptr noundef nonnull %data) #12
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %data, align 1
  %50 = or i8 %49, 64
  %call59 = call i32 @pci_write_config_byte(ptr noundef nonnull %call53, i32 noundef 68, i8 noundef zeroext %50) #12
  call void @pci_dev_put(ptr noundef nonnull %call53) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #12
  br label %if.end61thread-pre-split

if.end61thread-pre-split:                         ; preds = %if.then55, %if.then51.if.end61thread-pre-split_crit_edge
  %51 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr2 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr2)
  %phi.cmp = icmp eq i32 %.pr2, 2
  br i1 %phi.cmp, label %if.end61thread-pre-split.if.end90_crit_edge, label %if.end61thread-pre-split.for.cond.preheader_crit_edge

if.end61thread-pre-split.for.cond.preheader_crit_edge: ; preds = %if.end61thread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

if.end61thread-pre-split.if.end90_crit_edge:      ; preds = %if.end61thread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

for.cond.preheader:                               ; preds = %if.end61thread-pre-split.for.cond.preheader_crit_edge, %if.end47.for.cond.preheader_crit_edge
  %arrayidx = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 13, i32 0
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port.i, align 4
  %add82 = add i32 %53, 2
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx, align 1
  %arrayidx76 = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 12, i32 0, i32 0
  %56 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx76, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx, align 1
  %and84 = and i32 %add82, 1048575
  %add85 = or i32 %and84, -18874368
  %59 = inttoptr i32 %add85 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %58) #12, !srcloc !383
  %arrayidx.1 = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 13, i32 1
  %60 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.1, align 1
  %arrayidx76.1 = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 12, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx76.1 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx76.1, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %63 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.1, align 1
  %add83.1 = add i32 %53, 3
  %and84.1 = and i32 %add83.1, 1048575
  %add85.1 = or i32 %and84.1, -18874368
  %65 = inttoptr i32 %add85.1 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 %64) #12, !srcloc !383
  %66 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port.i, align 4
  %add82.1 = add i32 %67, 18
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx, align 1
  %arrayidx76.15 = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 12, i32 1, i32 0
  %70 = ptrtoint ptr %arrayidx76.15 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx76.15, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx, align 1
  %and84.16 = and i32 %add82.1, 1048575
  %add85.17 = or i32 %and84.16, -18874368
  %73 = inttoptr i32 %add85.17 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 %72) #12, !srcloc !383
  %74 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.1, align 1
  %arrayidx76.1.1 = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 12, i32 1, i32 1
  %76 = ptrtoint ptr %arrayidx76.1.1 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx76.1.1, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %77 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.1, align 1
  %add83.1.1 = add i32 %67, 19
  %and84.1.1 = and i32 %add83.1.1, 1048575
  %add85.1.1 = or i32 %and84.1.1, -18874368
  %79 = inttoptr i32 %add85.1.1 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %78) #12, !srcloc !383
  %80 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port.i, align 4
  %add82.2 = add i32 %81, 34
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx, align 1
  %arrayidx76.2 = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 12, i32 2, i32 0
  %84 = ptrtoint ptr %arrayidx76.2 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx76.2, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx, align 1
  %and84.2 = and i32 %add82.2, 1048575
  %add85.2 = or i32 %and84.2, -18874368
  %87 = inttoptr i32 %add85.2 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 %86) #12, !srcloc !383
  %88 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.1, align 1
  %arrayidx76.1.2 = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 12, i32 2, i32 1
  %90 = ptrtoint ptr %arrayidx76.1.2 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx76.1.2, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %91 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.1, align 1
  %add83.1.2 = add i32 %81, 35
  %and84.1.2 = and i32 %add83.1.2, 1048575
  %add85.1.2 = or i32 %and84.1.2, -18874368
  %93 = inttoptr i32 %add85.1.2 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 %92) #12, !srcloc !383
  %94 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port.i, align 4
  %add82.3 = add i32 %95, 50
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx, align 1
  %arrayidx76.3 = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 12, i32 3, i32 0
  %98 = ptrtoint ptr %arrayidx76.3 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx76.3, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx, align 1
  %and84.3 = and i32 %add82.3, 1048575
  %add85.3 = or i32 %and84.3, -18874368
  %101 = inttoptr i32 %add85.3 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 %100) #12, !srcloc !383
  %102 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.1, align 1
  %arrayidx76.1.3 = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 12, i32 3, i32 1
  %104 = ptrtoint ptr %arrayidx76.1.3 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx76.1.3, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %105 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.1, align 1
  %add83.1.3 = add i32 %95, 51
  %and84.1.3 = and i32 %add83.1.3, 1048575
  %add85.1.3 = or i32 %and84.1.3, -18874368
  %107 = inttoptr i32 %add85.1.3 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 %106) #12, !srcloc !383
  br label %if.end90

if.end90:                                         ; preds = %for.cond.preheader, %if.end61thread-pre-split.if.end90_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pval) #12
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
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_via82xx_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.not = icmp eq i16 %3, 0
  %shl = select i1 %tobool.not.not, i32 0, i32 1073741824
  %conv = zext i16 %reg to i32
  %shl1 = shl nuw i32 %conv, 16
  %conv2 = zext i16 %val to i32
  %or = or i32 %shl1, %conv2
  %or4 = or i32 %or, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %or4) #12
  %port.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add.i = add i32 %6, 128
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #12, !srcloc !398
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num, align 8
  %conv6 = zext i16 %9 to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1000, %entry ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #12
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add.i.i = add i32 %12, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %13 = inttoptr i32 %add1.i.i to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #12, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %15 = and i32 %14, 1
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %while.body.i.snd_via82xx_codec_ready.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.snd_via82xx_codec_ready.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via82xx_codec_ready.exit

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %card.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add.i2.i = add i32 %21, 128
  %and.i3.i = and i32 %add.i2.i, 1048575
  %add1.i4.i = or i32 %and.i3.i, -18874368
  %22 = inttoptr i32 %add1.i4.i to ptr
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #12, !srcloc !390
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.81, i32 noundef %conv6, i32 noundef %24) #16
  br label %snd_via82xx_codec_ready.exit

snd_via82xx_codec_ready.exit:                     ; preds = %do.end.i, %while.body.i.snd_via82xx_codec_ready.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_via82xx_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %5 = tail call i32 @llvm.bswap.i32(i32 %or6) #12
  %port.i34 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i34, align 4
  %add.i35 = add i32 %7, 128
  %and.i36 = and i32 %add.i35, 1048575
  %add1.i37 = or i32 %and.i36, -18874368
  %8 = inttoptr i32 %add1.i37 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #12, !srcloc !398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 4294960) #12
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  %cond.i = select i1 %tobool.not.i, i32 33554432, i32 134217728
  %or.i = or i32 %cond.i, 16777216
  br label %while.body.i

while.cond.loopexit:                              ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i34, align 4
  %add.i35.1 = add i32 %13, 128
  %and.i36.1 = and i32 %add.i35.1, 1048575
  %add1.i37.1 = or i32 %and.i36.1, -18874368
  %14 = inttoptr i32 %add1.i37.1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %5) #12, !srcloc !398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 4294960) #12
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
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #12, !srcloc !390
  %22 = shl i32 %21, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %and.i38.1 = and i32 %22, %or.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i38.1, i32 %cond.i.1)
  %cmp1.i.1 = icmp eq i32 %and.i38.1, %cond.i.1
  br i1 %cmp1.i.1, label %while.body.i.1.if.then15_crit_edge, label %if.end.i.1

while.body.i.1.if.then15_crit_edge:               ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.i.1:                                       ; preds = %while.body.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #12
  %dec.i.1 = add nsw i32 %dec8.i.1, -1
  %cmp.not.i.1 = icmp eq i32 %dec8.i.1, 0
  br i1 %cmp.not.i.1, label %while.cond.loopexit.1, label %if.end.i.1.while.body.i.1_crit_edge

if.end.i.1.while.body.i.1_crit_edge:              ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.1

while.cond.loopexit.1:                            ; preds = %if.end.i.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i34, align 4
  %add.i35.2 = add i32 %25, 128
  %and.i36.2 = and i32 %add.i35.2, 1048575
  %add1.i37.2 = or i32 %and.i36.2, -18874368
  %26 = inttoptr i32 %add1.i37.2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %5) #12, !srcloc !398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 4294960) #12
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
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %32) #12, !srcloc !390
  %34 = shl i32 %33, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %and.i38.2 = and i32 %34, %or.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i38.2, i32 %cond.i.2)
  %cmp1.i.2 = icmp eq i32 %and.i38.2, %cond.i.2
  br i1 %cmp1.i.2, label %while.body.i.2.if.then15_crit_edge, label %if.end.i.2

while.body.i.2.if.then15_crit_edge:               ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.i.2:                                       ; preds = %while.body.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #12
  %dec.i.2 = add nsw i32 %dec8.i.2, -1
  %cmp.not.i.2 = icmp eq i32 %dec8.i.2, 0
  br i1 %cmp.not.i.2, label %while.cond.loopexit.2, label %if.end.i.2.while.body.i.2_crit_edge

if.end.i.2.while.body.i.2_crit_edge:              ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.2

while.cond.loopexit.2:                            ; preds = %if.end.i.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i34, align 4
  %add.i35.3 = add i32 %37, 128
  %and.i36.3 = and i32 %add.i35.3, 1048575
  %add1.i37.3 = or i32 %and.i36.3, -18874368
  %38 = inttoptr i32 %add1.i37.3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %5) #12, !srcloc !398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 4294960) #12
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
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %44) #12, !srcloc !390
  %46 = shl i32 %45, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %and.i38.3 = and i32 %46, %or.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i38.3, i32 %cond.i.3)
  %cmp1.i.3 = icmp eq i32 %and.i38.3, %cond.i.3
  br i1 %cmp1.i.3, label %while.body.i.3.if.then15_crit_edge, label %if.end.i.3

while.body.i.3.if.then15_crit_edge:               ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.i.3:                                       ; preds = %while.body.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #12
  %dec.i.3 = add nsw i32 %dec8.i.3, -1
  %cmp.not.i.3 = icmp eq i32 %dec8.i.3, 0
  br i1 %cmp.not.i.3, label %while.cond.loopexit.3, label %if.end.i.3.while.body.i.3_crit_edge

if.end.i.3.while.body.i.3_crit_edge:              ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.3

while.cond.loopexit.3:                            ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
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
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %56) #12, !srcloc !390
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.83, i32 noundef %conv9, i32 noundef %58) #16
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
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %61) #12, !srcloc !390
  %63 = shl i32 %62, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %and.i38 = and i32 %63, %or.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i38, i32 %cond.i)
  %cmp1.i = icmp eq i32 %and.i38, %cond.i
  br i1 %cmp1.i, label %while.body.i.if.then15_crit_edge, label %if.end.i

while.body.i.if.then15_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #12
  %dec.i = add nsw i32 %dec8.i, -1
  %cmp.not.i = icmp eq i32 %dec8.i, 0
  br i1 %cmp.not.i, label %while.cond.loopexit, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.then15:                                        ; preds = %while.body.i.if.then15_crit_edge, %while.body.i.3.if.then15_crit_edge, %while.body.i.2.if.then15_crit_edge, %while.body.i.1.if.then15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 5368700) #12
  %66 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port.i34, align 4
  %add.i40 = add i32 %67, 128
  %and.i41 = and i32 %add.i40, 1048575
  %add1.i42 = or i32 %and.i41, -18874368
  %68 = inttoptr i32 %add1.i42 to ptr
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %68) #12, !srcloc !390
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %conv19 = trunc i32 %70 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %while.cond.loopexit.3
  %retval.0 = phi i16 [ -1, %while.cond.loopexit.3 ], [ %conv19, %if.then15 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_via82xx_codec_wait(ptr nocapture noundef readonly %ac97) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %port.i.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
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
  tail call void %4(i32 noundef 214748) #12
  %5 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %6, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add1.i.i to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #12, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %9 = and i32 %8, 1
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %while.body.i.snd_via82xx_codec_ready.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.snd_via82xx_codec_ready.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via82xx_codec_ready.exit

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %card.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
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
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #12, !srcloc !390
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.81, i32 noundef %conv, i32 noundef %18) #16
  br label %snd_via82xx_codec_ready.exit

snd_via82xx_codec_ready.exit:                     ; preds = %do.end.i, %while.body.i.snd_via82xx_codec_ready.exit_crit_edge
  %19 = load i32, ptr @nodelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.then, label %snd_via82xx_codec_ready.exit.if.end_crit_edge

snd_via82xx_codec_ready.exit.if.end_crit_edge:    ; preds = %snd_via82xx_codec_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %snd_via82xx_codec_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 500) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %snd_via82xx_codec_ready.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_via82xx_mixer_free_ac97_bus(ptr nocapture noundef readonly %bus) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97_bus = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac97_bus, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_via82xx_mixer_free_ac97(ptr nocapture noundef readonly %ac97) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac971 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %ac971 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac971, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_tune_hardware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via686_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback_devno = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %playback_devno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %playback_devno, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %add = add i32 %5, %3
  %arrayidx = getelementptr %struct.via82xx, ptr %1, i32 0, i32 21, i32 %add
  %call = tail call fastcc i32 @snd_via82xx_pcm_open(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %substream)
  %6 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %direction = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  %arrayidx = getelementptr %struct.via82xx, ptr %1, i32 0, i32 22, i32 %7
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx) #12
  %used = getelementptr %struct.via82xx, ptr %1, i32 0, i32 22, i32 %7, i32 2
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rate = getelementptr %struct.via82xx, ptr %1, i32 0, i32 22, i32 %7, i32 1
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx) #12
  %rate4 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 22, i32 %7, i32 1
  %11 = ptrtoint ptr %rate4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then6:                                         ; preds = %if.end
  %13 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  %ac97 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ac97, align 4
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @snd_ac97_update_power(ptr noundef %16, i32 noundef 44, i32 noundef 0) #12
  %17 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ac97, align 4
  %call11 = tail call i32 @snd_ac97_update_power(ptr noundef %18, i32 noundef 46, i32 noundef 0) #12
  %19 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ac97, align 4
  %call13 = tail call i32 @snd_ac97_update_power(ptr noundef %20, i32 noundef 48, i32 noundef 0) #12
  br label %if.end17

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call i32 @snd_ac97_update_power(ptr noundef %16, i32 noundef 50, i32 noundef 0) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then9, %if.end.if.end17_crit_edge
  %substream18 = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %substream18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %substream18, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %pci = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i7 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i7, align 4
  %area.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %area.i, align 4
  %cmp.i = icmp eq ptr %13, null
  br i1 %cmp.i, label %if.then.i, label %entry.if.end6.i_crit_edge

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %table.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 6
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call.i.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev2.i, i32 noundef 0, i32 noundef 4096, ptr noundef %table.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.then.i.build_via_table.exit_crit_edge, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i.build_via_table.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_via_table.exit

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %idx_table.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %idx_table.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then7.i, label %if.end6.i.if.end14.i_crit_edge

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 2040) #18
  %17 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %idx_table.i, align 4
  %tobool11.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i, label %if.then7.i.build_via_table.exit_crit_edge, label %if.then7.i.if.end14.i_crit_edge

if.then7.i.if.end14.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then7.i.build_via_table.exit_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_via_table.exit

if.end14.i:                                       ; preds = %if.then7.i.if.end14.i_crit_edge, %if.end6.i.if.end14.i_crit_edge
  %18 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %area.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1799.not.i = icmp eq i32 %9, 0
  br i1 %cmp1799.not.i, label %if.end14.i.for.end.i_crit_edge, label %do.body.preheader.lr.ph.i

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

do.body.preheader.lr.ph.i:                        ; preds = %if.end14.i
  %sub27.i = add i32 %9, -1
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %for.inc.i.do.body.preheader.i_crit_edge, %do.body.preheader.lr.ph.i
  %ofs.0102.i = phi i32 [ 0, %do.body.preheader.lr.ph.i ], [ %add39.i, %for.inc.i.do.body.preheader.i_crit_edge ]
  %idx.0101.i = phi i32 [ 0, %do.body.preheader.lr.ph.i ], [ %inc.i, %for.inc.i.do.body.preheader.i_crit_edge ]
  %i.0100.i = phi i32 [ 0, %do.body.preheader.lr.ph.i ], [ %inc45.i, %for.inc.i.do.body.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0100.i, i32 %sub27.i)
  %cmp28.i = icmp eq i32 %i.0100.i, %sub27.i
  %..i = select i1 %cmp28.i, i32 -2147483648, i32 1073741824
  %umax.i = tail call i32 @llvm.umax.i32(i32 %idx.0101.i, i32 255) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond42.i.do.body.i_crit_edge, %do.body.preheader.i
  %idx.1.i = phi i32 [ %inc.i, %do.cond42.i.do.body.i_crit_edge ], [ %idx.0101.i, %do.body.preheader.i ]
  %ofs.1.i = phi i32 [ %add39.i, %do.cond42.i.do.body.i_crit_edge ], [ %ofs.0102.i, %do.body.preheader.i ]
  %rest.0.i = phi i32 [ %sub.i, %do.cond42.i.do.body.i_crit_edge ], [ %11, %do.body.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1.i, i32 %umax.i)
  %exitcond.i = icmp eq i32 %idx.1.i, %umax.i
  br i1 %exitcond.i, label %cleanup.thread.i, label %do.cond42.i

cleanup.thread.i:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.95) #16
  br label %build_via_table.exit

do.cond42.i:                                      ; preds = %do.body.i
  %20 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime, align 4
  %dma_buffer_p.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %dma_buffer_p.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_buffer_p.i.i, align 8
  %call.i91.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %23, i32 noundef %ofs.1.i) #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %call.i91.i) #12
  %shl.i = shl nuw nsw i32 %idx.1.i, 1
  %arrayidx.i = getelementptr i32, ptr %19, i32 %shl.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %runtime, align 4
  %dma_buffer_p.i93.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 53
  %28 = ptrtoint ptr %dma_buffer_p.i93.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_buffer_p.i93.i, align 8
  %call.i94.i = tail call i32 @snd_sgbuf_get_chunk_size(ptr noundef %29, i32 noundef %ofs.1.i, i32 noundef %rest.0.i) #12
  %sub.i = sub i32 %rest.0.i, %call.i94.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool25.not.i = icmp eq i32 %sub.i, 0
  %flag.0.i = select i1 %tobool25.not.i, i32 %..i, i32 0
  %or.i = or i32 %flag.0.i, %call.i94.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %add.i = or i32 %shl.i, 1
  %arrayidx34.i = getelementptr i32, ptr %19, i32 %add.i
  %31 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx34.i, align 4
  %32 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %idx_table.i, align 4
  %arrayidx36.i = getelementptr %struct.snd_via_sg_table, ptr %33, i32 %idx.1.i
  %34 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %ofs.1.i, ptr %arrayidx36.i, align 4
  %35 = load ptr, ptr %idx_table.i, align 4
  %size.i = getelementptr %struct.snd_via_sg_table, ptr %35, i32 %idx.1.i, i32 1
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i94.i, ptr %size.i, align 4
  %add39.i = add i32 %call.i94.i, %ofs.1.i
  %inc.i = add i32 %idx.1.i, 1
  br i1 %tobool25.not.i, label %for.inc.i, label %do.cond42.i.do.body.i_crit_edge

do.cond42.i.do.body.i_crit_edge:                  ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

for.inc.i:                                        ; preds = %do.cond42.i
  %inc45.i = add nuw i32 %i.0100.i, 1
  %exitcond103.not.i = icmp eq i32 %inc45.i, %9
  br i1 %exitcond103.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.do.body.preheader.i_crit_edge

for.inc.i.do.body.preheader.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ 0, %if.end14.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %tbl_entries.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 5
  %37 = ptrtoint ptr %tbl_entries.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %idx.0.lcssa.i, ptr %tbl_entries.i, align 4
  %mul.i = mul i32 %11, %9
  %bufsize.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 10
  %38 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul.i, ptr %bufsize.i, align 4
  %div90.i = lshr i32 %mul.i, 1
  %bufsize2.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 11
  %39 = ptrtoint ptr %bufsize2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div90.i, ptr %bufsize2.i, align 4
  %fragsize47.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 9
  %40 = ptrtoint ptr %fragsize47.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %11, ptr %fragsize47.i, align 4
  br label %build_via_table.exit

build_via_table.exit:                             ; preds = %for.end.i, %cleanup.thread.i, %if.then7.i.build_via_table.exit_crit_edge, %if.then.i.build_via_table.exit_crit_edge
  %retval.3.i = phi i32 [ 0, %for.end.i ], [ -12, %if.then.i.build_via_table.exit_crit_edge ], [ -12, %if.then7.i.build_via_table.exit_crit_edge ], [ -22, %cleanup.thread.i ]
  ret i32 %retval.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %clean_via_table.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %table.i = getelementptr inbounds %struct.viadev, ptr %3, i32 0, i32 6
  tail call void @snd_dma_free_pages(ptr noundef %table.i) #12
  %6 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %area.i, align 4
  br label %clean_via_table.exit

clean_via_table.exit:                             ; preds = %if.then.i, %entry.clean_via_table.exit_crit_edge
  %idx_table.i = getelementptr inbounds %struct.viadev, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idx_table.i, align 4
  tail call void @kfree(ptr noundef %8) #12
  %9 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %idx_table.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via686_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %ac97 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac97, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %call = tail call i32 @snd_ac97_set_rate(ptr noundef %7, i32 noundef 44, i32 noundef %9) #12
  %10 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ac97, align 4
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 4
  %call6 = tail call i32 @snd_ac97_set_rate(ptr noundef %11, i32 noundef 58, i32 noundef %13) #12
  tail call fastcc void @via686_setup_format(ptr noundef %1, ptr noundef %5, ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %chip_type = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  %. = select i1 %cmp.not, i8 0, i8 35
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge29
    i32 0, label %entry.do.body_crit_edge
    i32 5, label %entry.do.body_crit_edge30
    i32 3, label %sw.bb5
    i32 4, label %sw.bb10
  ]

entry.do.body_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge29
  %9 = or i8 %., -128
  br label %do.body

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = or i8 %., 8
  br label %do.body

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %sw.bb10, %sw.bb5, %sw.bb, %entry.do.body_crit_edge, %entry.do.body_crit_edge30
  %.sink = phi i32 [ 1, %sw.bb ], [ 0, %sw.bb5 ], [ 1, %sw.bb10 ], [ 0, %entry.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge30 ]
  %val.1 = phi i8 [ %9, %sw.bb ], [ %10, %sw.bb5 ], [ %., %sw.bb10 ], [ 64, %entry.do.body_crit_edge ], [ 64, %entry.do.body_crit_edge30 ]
  %running = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %running, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  tail call void @arm_heavy_mb() #12
  %port = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add = add i32 %13, 1
  %and = and i32 %add, 1048575
  %add12 = or i32 %and, -18874368
  %14 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %val.1) #12, !srcloc !383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp13 = icmp eq i32 %cmd, 0
  br i1 %cmp13, label %if.then15, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add.i = add i32 %16, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 73) #12, !srcloc !383
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add3.i = add i32 %19, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %20 = inttoptr i32 %add5.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add11.i = add i32 %24, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %25 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 0) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %and19.i = and i32 %27, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %28 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 3) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add25.i = add i32 %30, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %31 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 0) #12, !srcloc !383
  %lastpos.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %32 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %lastpos.i, align 4
  %hwptr_done.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 12
  %33 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %hwptr_done.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via686_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !402

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 833, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end24:                                         ; preds = %entry
  %port = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %and = and i32 %9, 1048575
  %add25 = or i32 %and, -18874368
  %10 = inttoptr i32 %add25 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !403
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool29.not = icmp sgt i8 %11, -1
  br i1 %tobool29.not, label %if.end24.cleanup_crit_edge, label %if.end31

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %reg_lock = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add34 = add i32 %13, 12
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %14 = inttoptr i32 %add36 to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #12, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  %16 = and i32 %15, -256
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add43 = add i32 %19, 4
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %20 = inttoptr i32 %add45 to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #12, !srcloc !390
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  %addr = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not = icmp ugt i32 %22, %24
  br i1 %cmp.not, label %if.else, label %if.end31.if.end55_crit_edge

if.end31.if.end55_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %22, %24
  %div81 = lshr i32 %sub, 3
  %sub53 = add nsw i32 %div81, -1
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
  %bufsize.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 10
  %33 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bufsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %34)
  %cmp.not.i = icmp ult i32 %sub.i, %34
  %sub5.i = select i1 %cmp.not.i, i32 0, i32 %34
  %spec.select.i = sub i32 %sub.i, %sub5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %17)
  %cmp6.i = icmp ult i32 %30, %17
  br i1 %cmp6.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_linear_pos.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_via686_pcm_pointer, %if.then10.i)) #12
          to label %do.end.i [label %if.then10.i], !srcloc !389

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %card.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %35 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_linear_pos.__UNIQUE_ID_ddebug265, ptr noundef %38, ptr noundef nonnull @.str.98, i32 noundef %30, i32 noundef %17) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  %lastpos.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  br label %if.end64.sink.split.i

if.else.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not.i = icmp eq i32 %16, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.else.i.if.end24.i_crit_edge

if.else.i.if.end24.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %lastpos14.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %39 = ptrtoint ptr %lastpos14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lastpos14.i, align 4
  %sub15.i = sub i32 %spec.select.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.i)
  %cmp16.i = icmp slt i32 %sub15.i, 0
  %add19.i = select i1 %cmp16.i, i32 %34, i32 0
  %spec.select112.i = add i32 %add19.i, %sub15.i
  %fragsize.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 9
  %41 = ptrtoint ptr %fragsize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fragsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select112.i, i32 %42)
  %cmp21.i = icmp ugt i32 %spec.select112.i, %42
  %spec.select105.i = select i1 %cmp21.i, i32 %32, i32 %spec.select.i
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then13.i, %if.else.i.if.end24.i_crit_edge
  %res.2.i = phi i32 [ %spec.select.i, %if.else.i.if.end24.i_crit_edge ], [ %spec.select105.i, %if.then13.i ]
  %lastpos25.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %43 = ptrtoint ptr %lastpos25.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lastpos25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %res.2.i, i32 %44)
  %cmp26.i = icmp ult i32 %res.2.i, %44
  br i1 %cmp26.i, label %land.lhs.true.i, label %if.end24.i.calc_linear_pos.exit_crit_edge

if.end24.i.calc_linear_pos.exit_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %calc_linear_pos.exit

land.lhs.true.i:                                  ; preds = %if.end24.i
  %bufsize2.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 11
  %45 = ptrtoint ptr %bufsize2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bufsize2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %res.2.i, i32 %46)
  %cmp27.not.i = icmp uge i32 %res.2.i, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp30.i = icmp ult i32 %44, %46
  %or.cond.i = select i1 %cmp27.not.i, i1 true, i1 %cmp30.i
  br i1 %or.cond.i, label %if.then31.i, label %land.lhs.true.i.calc_linear_pos.exit_crit_edge

land.lhs.true.i.calc_linear_pos.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %calc_linear_pos.exit

if.then31.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %44)
  %cmp34.i = icmp ult i32 %add.i, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %46)
  %cmp37.not.i = icmp uge i32 %add.i, %46
  %or.cond106.i = select i1 %cmp37.not.i, i1 true, i1 %cmp30.i
  %or.cond113.i = select i1 %cmp34.i, i1 %or.cond106.i, i1 false
  br i1 %or.cond113.i, label %do.body43.i, label %if.then31.i.calc_linear_pos.exit_crit_edge

if.then31.i.calc_linear_pos.exit_crit_edge:       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %calc_linear_pos.exit

do.body43.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_linear_pos.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_via686_pcm_pointer, %if.then55.i)) #12
          to label %if.end64.sink.split.i [label %if.then55.i], !srcloc !389

if.then55.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #14
  %card56.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %47 = ptrtoint ptr %card56.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card56.i, align 4
  %dev57.i = getelementptr inbounds %struct.snd_card, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %dev57.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev57.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_linear_pos.__UNIQUE_ID_ddebug266, ptr noundef %50, ptr noundef nonnull @.str.99) #12
  br label %if.end64.sink.split.i

if.end64.sink.split.i:                            ; preds = %if.then55.i, %do.body43.i, %do.end.i
  %lastpos25.sink.i = phi ptr [ %lastpos.i, %do.end.i ], [ %lastpos25.i, %do.body43.i ], [ %lastpos25.i, %if.then55.i ]
  %51 = ptrtoint ptr %lastpos25.sink.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lastpos25.sink.i, align 4
  br label %calc_linear_pos.exit

calc_linear_pos.exit:                             ; preds = %if.end64.sink.split.i, %if.then31.i.calc_linear_pos.exit_crit_edge, %land.lhs.true.i.calc_linear_pos.exit_crit_edge, %if.end24.i.calc_linear_pos.exit_crit_edge
  %res.3.i = phi i32 [ %add.i, %if.then31.i.calc_linear_pos.exit_crit_edge ], [ %res.2.i, %if.end24.i.calc_linear_pos.exit_crit_edge ], [ %res.2.i, %land.lhs.true.i.calc_linear_pos.exit_crit_edge ], [ %52, %if.end64.sink.split.i ]
  %lastpos = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %53 = ptrtoint ptr %lastpos to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %res.3.i, ptr %lastpos, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  %54 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %res.3.i, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %55, i32 0, i32 21
  %56 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %57
  br label %cleanup

cleanup:                                          ; preds = %calc_linear_pos.exit, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %div.i, %calc_linear_pos.exit ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_via82xx_pcm_open(ptr noundef %chip, ptr noundef %viadev, ptr noundef %substream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %2 = call ptr @memcpy(ptr %hw, ptr @snd_via82xx_hw, i32 64)
  %direction = getelementptr inbounds %struct.viadev, ptr %viadev, i32 0, i32 2
  %3 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %direction, align 4
  %arrayidx = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 22, i32 %4
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx) #12
  %used = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 22, i32 %4, i32 2
  %5 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %used, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %used, align 4
  %spdif_on = getelementptr inbounds %struct.via82xx, ptr %chip, i32 0, i32 23
  %7 = ptrtoint ptr %spdif_on to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %spdif_on, align 4
  %8 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = ptrtoint ptr %viadev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %viadev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %10)
  %cmp = icmp eq i32 %10, 48
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %ac97 = getelementptr inbounds %struct.via82xx, ptr %chip, i32 0, i32 28
  %11 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ac97, align 4
  %arrayidx3 = getelementptr %struct.snd_ac97, ptr %12, i32 0, i32 20, i32 5
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  %rates5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 2
  %15 = ptrtoint ptr %rates5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rates5, align 8
  %call.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw) #12
  br label %if.end55

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool9.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool9.not, label %if.else.if.else18_crit_edge, label %land.lhs.true10

if.else.if.else18_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18

land.lhs.true10:                                  ; preds = %if.else
  %16 = ptrtoint ptr %viadev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %viadev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %17)
  %cmp12 = icmp ult i32 %17, 64
  br i1 %cmp12, label %if.then13, label %land.lhs.true10.if.else18_crit_edge

land.lhs.true10.if.else18_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  %rates15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 2
  %18 = ptrtoint ptr %rates15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 128, ptr %rates15, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 4
  %19 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 48000, ptr %rate_max, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 3
  %20 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 48000, ptr %rate_min, align 4
  br label %if.end55

if.else18:                                        ; preds = %land.lhs.true10.if.else18_crit_edge, %if.else.if.else18_crit_edge
  %21 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not = icmp eq i8 %21, 0
  br i1 %tobool23.not, label %if.else18.if.else34_crit_edge, label %land.lhs.true24

if.else18.if.else34_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else34

land.lhs.true24:                                  ; preds = %if.else18
  %22 = ptrtoint ptr %viadev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %viadev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %23)
  %cmp26 = icmp ult i32 %23, 64
  br i1 %cmp26, label %if.then27, label %land.lhs.true24.if.else34_crit_edge

land.lhs.true24.if.else34_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else34

if.then27:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  %rates29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 2
  %24 = ptrtoint ptr %rates29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1073742078, ptr %rates29, align 8
  %rate_min31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 3
  %25 = ptrtoint ptr %rate_min31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8000, ptr %rate_min31, align 4
  %rate_max33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 4
  %26 = ptrtoint ptr %rate_max33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 48000, ptr %rate_max33, align 8
  br label %if.end55

if.else34:                                        ; preds = %land.lhs.true24.if.else34_crit_edge, %if.else18.if.else34_crit_edge
  %rate = getelementptr %struct.via82xx, ptr %chip, i32 0, i32 22, i32 %4, i32 1
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool35.not = icmp eq i32 %28, 0
  br i1 %tobool35.not, label %if.then36, label %if.else45

if.then36:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool38.not = icmp eq i32 %30, 0
  %cond = select i1 %tobool38.not, i32 0, i32 3
  %ac9739 = getelementptr inbounds %struct.via82xx, ptr %chip, i32 0, i32 28
  %31 = ptrtoint ptr %ac9739 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ac9739, align 4
  %arrayidx41 = getelementptr %struct.snd_ac97, ptr %32, i32 0, i32 20, i32 %cond
  %33 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx41, align 4
  %rates43 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 2
  %35 = ptrtoint ptr %rates43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rates43, align 8
  %call.i108 = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw) #12
  br label %if.end55

if.else45:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  %rates47 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 2
  %36 = ptrtoint ptr %rates47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -2147483648, ptr %rates47, align 8
  %37 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rate, align 4
  %rate_min50 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 3
  %39 = ptrtoint ptr %rate_min50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rate_min50, align 4
  %rate_max52 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 4
  %40 = ptrtoint ptr %rate_max52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %rate_max52, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else45, %if.then36, %if.then27, %if.then13, %if.then
  %use_src.0.off0 = phi i1 [ false, %if.then ], [ false, %if.then13 ], [ true, %if.then27 ], [ false, %if.else45 ], [ false, %if.then36 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx) #12
  %call57 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end55.cleanup_crit_edge, label %if.end60

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  br i1 %use_src.0.off0, label %if.then62, label %if.end60.if.end67_crit_edge

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then62:                                        ; preds = %if.end60
  %call63 = tail call i32 @snd_pcm_hw_rule_noresample(ptr noundef %1, i32 noundef 48000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then62.cleanup_crit_edge, label %if.then62.if.end67_crit_edge

if.then62.if.end67_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end67:                                         ; preds = %if.then62.if.end67_crit_edge, %if.end60.if.end67_crit_edge
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %41 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %viadev, ptr %private_data, align 8
  %substream68 = getelementptr inbounds %struct.viadev, ptr %viadev, i32 0, i32 3
  %42 = ptrtoint ptr %substream68 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %substream, ptr %substream68, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then62.cleanup_crit_edge, %if.end55.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end67 ], [ %call57, %if.end55.cleanup_crit_edge ], [ %call63, %if.then62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_noresample(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_power(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_chunk_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_set_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via686_setup_format(ptr nocapture noundef readonly %chip, ptr nocapture noundef %viadev, ptr nocapture noundef readonly %runtime) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  tail call void @arm_heavy_mb() #12
  %port.i = getelementptr inbounds %struct.viadev, ptr %viadev, i32 0, i32 1
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 73) #12, !srcloc !383
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %4, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %5 = inttoptr i32 %add5.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %9, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %10 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %12, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %13 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 3) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %15, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %16 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #12, !srcloc !383
  %lastpos.i = getelementptr inbounds %struct.viadev, ptr %viadev, i32 0, i32 8
  %17 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %lastpos.i, align 4
  %hwptr_done.i = getelementptr inbounds %struct.viadev, ptr %viadev, i32 0, i32 12
  %18 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %hwptr_done.i, align 4
  tail call fastcc void @snd_via82xx_set_table_ptr(ptr noundef %chip, ptr noundef %viadev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @arm_heavy_mb() #12
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 12
  %19 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  %or = select i1 %cmp, i32 160, i32 128
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 15
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp1 = icmp ugt i32 %22, 1
  %23 = ptrtoint ptr %viadev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %viadev, align 4
  %and = lshr i32 %24, 2
  %25 = and i32 %and, 4
  %cond2.masked = select i1 %cmp1, i32 16, i32 0
  %or3.masked = or i32 %cond2.masked, %or
  %26 = or i32 %or3.masked, %25
  %27 = trunc i32 %26 to i8
  %conv = xor i8 %27, 7
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i, align 4
  %add = add i32 %29, 2
  %and9 = and i32 %add, 1048575
  %add10 = or i32 %and9, -18874368
  %30 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv) #12, !srcloc !383
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_via82xx_set_table_ptr(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %viadev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i.i = getelementptr inbounds %struct.via82xx, ptr %chip, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1000, %entry ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #12
  %1 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %2, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %3 = inttoptr i32 %add1.i.i to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #12, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %5 = and i32 %4, 1
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %while.body.i.snd_via82xx_codec_ready.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.snd_via82xx_codec_ready.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via82xx_codec_ready.exit

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %card.i = getelementptr inbounds %struct.via82xx, ptr %chip, i32 0, i32 16
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i.i, align 4
  %add.i2.i = add i32 %11, 128
  %and.i3.i = and i32 %add.i2.i, 1048575
  %add1.i4.i = or i32 %and.i3.i, -18874368
  %12 = inttoptr i32 %add1.i4.i to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #12, !srcloc !390
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.81, i32 noundef 0, i32 noundef %14) #16
  br label %snd_via82xx_codec_ready.exit

snd_via82xx_codec_ready.exit:                     ; preds = %do.end.i, %while.body.i.snd_via82xx_codec_ready.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  tail call void @arm_heavy_mb() #12
  %addr = getelementptr inbounds %struct.viadev, ptr %viadev, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %port = getelementptr inbounds %struct.viadev, ptr %viadev, i32 0, i32 1
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add = add i32 %19, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %20 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #12, !srcloc !398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 4294960) #12
  br label %while.cond.i9

while.cond.i9:                                    ; preds = %while.body.i15.while.cond.i9_crit_edge, %snd_via82xx_codec_ready.exit
  %timeout.0.i7 = phi i32 [ 1000, %snd_via82xx_codec_ready.exit ], [ %dec.i10, %while.body.i15.while.cond.i9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i7)
  %cmp.not.i8 = icmp eq i32 %timeout.0.i7, 0
  br i1 %cmp.not.i8, label %do.end.i21, label %while.body.i15

while.body.i15:                                   ; preds = %while.cond.i9
  %dec.i10 = add nsw i32 %timeout.0.i7, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #12
  %23 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i.i, align 4
  %add.i.i11 = add i32 %24, 128
  %and.i.i12 = and i32 %add.i.i11, 1048575
  %add1.i.i13 = or i32 %and.i.i12, -18874368
  %25 = inttoptr i32 %add1.i.i13 to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #12, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %27 = and i32 %26, 1
  %tobool.not.i14 = icmp eq i32 %27, 0
  br i1 %tobool.not.i14, label %while.body.i15.snd_via82xx_codec_ready.exit22_crit_edge, label %while.body.i15.while.cond.i9_crit_edge

while.body.i15.while.cond.i9_crit_edge:           ; preds = %while.body.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i9

while.body.i15.snd_via82xx_codec_ready.exit22_crit_edge: ; preds = %while.body.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_via82xx_codec_ready.exit22

do.end.i21:                                       ; preds = %while.cond.i9
  call void @__sanitizer_cov_trace_pc() #14
  %card.i16 = getelementptr inbounds %struct.via82xx, ptr %chip, i32 0, i32 16
  %28 = ptrtoint ptr %card.i16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card.i16, align 4
  %dev.i17 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev.i17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i17, align 8
  %32 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i.i, align 4
  %add.i2.i18 = add i32 %33, 128
  %and.i3.i19 = and i32 %add.i2.i18, 1048575
  %add1.i4.i20 = or i32 %and.i3.i19, -18874368
  %34 = inttoptr i32 %add1.i4.i20 to ptr
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %34) #12, !srcloc !390
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.81, i32 noundef 0, i32 noundef %36) #16
  br label %snd_via82xx_codec_ready.exit22

snd_via82xx_codec_ready.exit22:                   ; preds = %do.end.i21, %while.body.i15.snd_via82xx_codec_ready.exit22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_devno = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 20
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
  %arrayidx = getelementptr %struct.via82xx, ptr %1, i32 0, i32 21, i32 %add
  %call = tail call fastcc i32 @snd_via82xx_pcm_open(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %substream)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via686_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %ac97 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac97, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %call = tail call i32 @snd_ac97_set_rate(ptr noundef %7, i32 noundef 50, i32 noundef %9) #12
  tail call fastcc void @via686_setup_format(ptr noundef %1, ptr noundef %5, ptr noundef %3)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_multi_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %multi_devno = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %multi_devno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %multi_devno, align 4
  %arrayidx = getelementptr %struct.via82xx, ptr %1, i32 0, i32 21, i32 %3
  %call = tail call fastcc i32 @snd_via82xx_pcm_open(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %substream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 6
  %6 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %channels_max, align 8
  %revision = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %8)
  %cmp1 = icmp eq i8 %8, 64
  br i1 %cmp1, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime, align 4
  %call5 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %10, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @snd_via8233_multi_open.hw_constraints_channels) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_multi_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %rates = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 22
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %rates) #12
  %rate1.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 22, i32 0, i32 1
  %8 = ptrtoint ptr %rate1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i = icmp eq i32 %9, %7
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %used.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 22, i32 0, i32 2
  %10 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp3.i = icmp sgt i32 %11, 1
  br i1 %cmp3.i, label %via_lock_rate.exit, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %12 = ptrtoint ptr %rate1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %rate1.i, align 4
  br label %if.end

via_lock_rate.exit:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %rates) #12
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %rates) #12
  %ac97 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 28
  %13 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ac97, align 4
  %15 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate, align 4
  %call5 = tail call i32 @snd_ac97_set_rate(ptr noundef %14, i32 noundef 44, i32 noundef %16) #12
  %17 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ac97, align 4
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate, align 4
  %call8 = tail call i32 @snd_ac97_set_rate(ptr noundef %18, i32 noundef 46, i32 noundef %20) #12
  %21 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ac97, align 4
  %23 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate, align 4
  %call11 = tail call i32 @snd_ac97_set_rate(ptr noundef %22, i32 noundef 48, i32 noundef %24) #12
  %25 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ac97, align 4
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate, align 4
  %call14 = tail call i32 @snd_ac97_set_rate(ptr noundef %26, i32 noundef 58, i32 noundef %28) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  tail call void @arm_heavy_mb() #12
  %port.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port.i, align 4
  %add.i = add i32 %30, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %31 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 73) #12, !srcloc !383
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %33, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %34 = inttoptr i32 %add5.i to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %38, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %39 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 0) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %41, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %42 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 3) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  tail call void @arm_heavy_mb() #12
  %43 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %44, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %45 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 0) #12, !srcloc !383
  %lastpos.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %46 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %lastpos.i, align 4
  %hwptr_done.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 12
  %47 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %hwptr_done.i, align 4
  tail call fastcc void @snd_via82xx_set_table_ptr(ptr noundef %1, ptr noundef %5)
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %48 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp15 = icmp eq i32 %49, 2
  %cond = select i1 %cmp15, i32 128, i32 0
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %50 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channels, align 8
  %shl = shl i32 %51, 4
  %or = or i32 %cond, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %or to i8
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port.i, align 4
  %add = add i32 %53, 2
  %and = and i32 %add, 1048575
  %add16 = or i32 %and, -18874368
  %54 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv) #12, !srcloc !383
  %55 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channels, align 8
  %switch.tableidx = add i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %57 = icmp ult i32 %switch.tableidx, 6
  br i1 %57, label %switch.lookup, label %if.end.do.body24_crit_edge

if.end.do.body24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.snd_via8233_multi_prepare, i32 0, i32 %switch.tableidx
  %58 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body24

do.body24:                                        ; preds = %switch.lookup, %if.end.do.body24_crit_edge
  %slots.0 = phi i32 [ %switch.load, %switch.lookup ], [ -16777216, %if.end.do.body24_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  tail call void @arm_heavy_mb() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %slots.0)
  %60 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port.i, align 4
  %add29 = add i32 %61, 8
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %62 = inttoptr i32 %add31 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %62, i32 %59) #12, !srcloc !398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 4294960) #12
  %port.i.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.body24
  %timeout.0.i = phi i32 [ 1000, %do.body24 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i58 = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i58, label %do.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #12
  %65 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %66, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %67 = inttoptr i32 %add1.i.i to ptr
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %67) #12, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %69 = and i32 %68, 1
  %tobool.not.i59 = icmp eq i32 %69, 0
  br i1 %tobool.not.i59, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %card.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %70 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 27
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 8
  %74 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port.i.i, align 4
  %add.i2.i = add i32 %75, 128
  %and.i3.i = and i32 %add.i2.i, 1048575
  %add1.i4.i = or i32 %and.i3.i, -18874368
  %76 = inttoptr i32 %add1.i4.i to ptr
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %76) #12, !srcloc !390
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.81, i32 noundef 0, i32 noundef %78) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %while.body.i.cleanup_crit_edge, %via_lock_rate.exit
  %retval.0 = phi i32 [ -22, %via_lock_rate.exit ], [ 0, %do.end.i ], [ 0, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !402

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 865, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end24:                                         ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %port = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add = add i32 %9, 12
  %and = and i32 %add, 1048575
  %add25 = or i32 %and, -18874368
  %10 = inttoptr i32 %add25 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #12, !srcloc !390
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !410
  %in_interrupt = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 13
  %13 = ptrtoint ptr %in_interrupt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool28.not = icmp eq i32 %14, 0
  br i1 %tobool28.not, label %if.then29, label %if.end24.if.end38_crit_edge

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %and33 = and i32 %16, 1048575
  %add34 = or i32 %and33, -18874368
  %17 = inttoptr i32 %add34 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  %conv = zext i8 %18 to i32
  br label %if.end38

if.end38:                                         ; preds = %if.then29, %if.end24.if.end38_crit_edge
  %status.0 = phi i32 [ %14, %if.end24.if.end38_crit_edge ], [ %conv, %if.then29 ]
  %revision = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %20)
  %cmp = icmp ne i8 %20, 112
  %and41 = and i32 %status.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool42.not
  br i1 %or.cond, label %if.end38.if.end45_crit_edge, label %if.then43

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data, align 4
  %23 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime, align 4
  %private_data1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data1.i, align 8
  %chip_type.i = getelementptr inbounds %struct.via82xx, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chip_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 0
  %29 = select i1 %cmp.not.i, i8 -128, i8 -93
  %running.i = getelementptr inbounds %struct.viadev, ptr %26, i32 0, i32 4
  %30 = ptrtoint ptr %running.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %running.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  tail call void @arm_heavy_mb() #12
  %port.i = getelementptr inbounds %struct.viadev, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i, align 4
  %add.i = add i32 %32, 1
  %and.i = and i32 %add.i, 1048575
  %add12.i = or i32 %and.i, -18874368
  %33 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %29) #12, !srcloc !383
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end38.if.end45_crit_edge
  %and46 = and i32 %status.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.unlock_crit_edge, label %if.end49

if.end45.unlock_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end49:                                         ; preds = %if.end45
  %and50 = and i32 %12, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else60, label %if.then52

if.then52:                                        ; preds = %if.end49
  %shr = lshr i32 %12, 24
  %34 = ptrtoint ptr %tbl_entries to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tbl_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %35)
  %cmp54.not = icmp ult i32 %shr, %35
  br i1 %cmp54.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  %lastpos = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %36 = ptrtoint ptr %lastpos to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lastpos, align 4
  br label %unlock

if.else:                                          ; preds = %if.then52
  %idx_table.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 7
  %38 = ptrtoint ptr %idx_table.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %idx_table.i, align 4
  %arrayidx.i = getelementptr %struct.snd_via_sg_table, ptr %39, i32 %shr
  %size1.i = getelementptr %struct.snd_via_sg_table, ptr %39, i32 %shr, i32 1
  %40 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size1.i, align 4
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %add.i112 = add i32 %43, %41
  %sub.i = sub i32 %add.i112, %and50
  %bufsize.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 10
  %44 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bufsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %45)
  %cmp.not.i113 = icmp ult i32 %sub.i, %45
  %sub5.i = select i1 %cmp.not.i113, i32 0, i32 %45
  %spec.select.i = sub i32 %sub.i, %sub5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %and50)
  %cmp6.i = icmp ult i32 %41, %and50
  br i1 %cmp6.i, label %do.body.i, label %if.end24.i

do.body.i:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_linear_pos.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_via8233_pcm_pointer, %if.then10.i)) #12
          to label %do.end.i [label %if.then10.i], !srcloc !389

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %card.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %46 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_linear_pos.__UNIQUE_ID_ddebug265, ptr noundef %49, ptr noundef nonnull @.str.98, i32 noundef %41, i32 noundef %and50) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  %lastpos.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  br label %if.end64.sink.split.i

if.end24.i:                                       ; preds = %if.else
  %lastpos25.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %50 = ptrtoint ptr %lastpos25.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lastpos25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %51)
  %cmp26.i = icmp ult i32 %spec.select.i, %51
  br i1 %cmp26.i, label %land.lhs.true.i, label %if.end24.i.unlock_crit_edge

if.end24.i.unlock_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

land.lhs.true.i:                                  ; preds = %if.end24.i
  %bufsize2.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 11
  %52 = ptrtoint ptr %bufsize2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bufsize2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %53)
  %cmp27.not.i = icmp uge i32 %spec.select.i, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp30.i = icmp ult i32 %51, %53
  %or.cond.i = select i1 %cmp27.not.i, i1 true, i1 %cmp30.i
  br i1 %or.cond.i, label %if.then31.i, label %land.lhs.true.i.unlock_crit_edge

land.lhs.true.i.unlock_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then31.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i112, i32 %51)
  %cmp34.i = icmp ult i32 %add.i112, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i112, i32 %53)
  %cmp37.not.i = icmp uge i32 %add.i112, %53
  %or.cond106.i = select i1 %cmp37.not.i, i1 true, i1 %cmp30.i
  %or.cond113.i = select i1 %cmp34.i, i1 %or.cond106.i, i1 false
  br i1 %or.cond113.i, label %do.body43.i, label %if.then31.i.unlock_crit_edge

if.then31.i.unlock_crit_edge:                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.body43.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calc_linear_pos.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_via8233_pcm_pointer, %if.then55.i)) #12
          to label %if.end64.sink.split.i [label %if.then55.i], !srcloc !389

if.then55.i:                                      ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #14
  %card56.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %54 = ptrtoint ptr %card56.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card56.i, align 4
  %dev57.i = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev57.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev57.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calc_linear_pos.__UNIQUE_ID_ddebug266, ptr noundef %57, ptr noundef nonnull @.str.99) #12
  br label %if.end64.sink.split.i

if.end64.sink.split.i:                            ; preds = %if.then55.i, %do.body43.i, %do.end.i
  %lastpos25.sink.i = phi ptr [ %lastpos.i, %do.end.i ], [ %lastpos25.i, %do.body43.i ], [ %lastpos25.i, %if.then55.i ]
  %58 = ptrtoint ptr %lastpos25.sink.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lastpos25.sink.i, align 4
  br label %unlock

if.else60:                                        ; preds = %if.end49
  %hwptr_done = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 12
  %60 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hwptr_done, align 4
  %62 = ptrtoint ptr %in_interrupt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %in_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool62.not = icmp ne i32 %63, 0
  %tobool42.not.not = xor i1 %tobool42.not, true
  %brmerge = select i1 %tobool62.not, i1 true, i1 %tobool42.not.not
  %.mux = select i1 %tobool62.not, i32 %61, i32 0
  br i1 %brmerge, label %if.else60.unlock_crit_edge, label %if.else67

if.else60.unlock_crit_edge:                       ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.else67:                                        ; preds = %if.else60
  %and68 = and i32 %status.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else67.unlock_crit_edge, label %if.then70

if.else67.unlock_crit_edge:                       ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then70:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #14
  %fragsize = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 9
  %64 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fragsize, align 4
  %add71 = add i32 %65, %61
  br label %unlock

unlock:                                           ; preds = %if.then70, %if.else67.unlock_crit_edge, %if.else60.unlock_crit_edge, %if.end64.sink.split.i, %if.then31.i.unlock_crit_edge, %land.lhs.true.i.unlock_crit_edge, %if.end24.i.unlock_crit_edge, %if.then56, %if.end45.unlock_crit_edge
  %res.0 = phi i32 [ %37, %if.then56 ], [ %.mux, %if.else60.unlock_crit_edge ], [ %add71, %if.then70 ], [ %61, %if.else67.unlock_crit_edge ], [ 0, %if.end45.unlock_crit_edge ], [ %add.i112, %if.then31.i.unlock_crit_edge ], [ %spec.select.i, %if.end24.i.unlock_crit_edge ], [ %spec.select.i, %land.lhs.true.i.unlock_crit_edge ], [ %59, %if.end64.sink.split.i ]
  %lastpos76 = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %66 = ptrtoint ptr %lastpos76 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %res.0, ptr %lastpos76, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  %67 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %res.0, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %68, i32 0, i32 21
  %69 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %70
  br label %cleanup

cleanup:                                          ; preds = %unlock, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %div.i, %unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %arrayidx = getelementptr %struct.via82xx, ptr %1, i32 0, i32 22, i32 1
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx) #12
  %rate1.i = getelementptr %struct.via82xx, ptr %1, i32 0, i32 22, i32 1, i32 1
  %8 = ptrtoint ptr %rate1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i = icmp eq i32 %9, %7
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %used.i = getelementptr %struct.via82xx, ptr %1, i32 0, i32 22, i32 1, i32 2
  %10 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp3.i = icmp sgt i32 %11, 1
  br i1 %cmp3.i, label %via_lock_rate.exit, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %12 = ptrtoint ptr %rate1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %rate1.i, align 4
  br label %if.end

via_lock_rate.exit:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx) #12
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx) #12
  %ac97 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 28
  %13 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ac97, align 4
  %15 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate, align 4
  %call5 = tail call i32 @snd_ac97_set_rate(ptr noundef %14, i32 noundef 50, i32 noundef %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  tail call void @arm_heavy_mb() #12
  %port.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %add.i = add i32 %18, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %19 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 73) #12, !srcloc !383
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %21, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %22 = inttoptr i32 %add5.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %26, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %27 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %29, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %30 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 3) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %32, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %33 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #12, !srcloc !383
  %lastpos.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %34 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %lastpos.i, align 4
  %hwptr_done.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 12
  %35 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %hwptr_done.i, align 4
  tail call fastcc void @snd_via82xx_set_table_ptr(ptr noundef %1, ptr noundef %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !412
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i, align 4
  %add = add i32 %37, 2
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %38 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 64) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !413
  tail call void @arm_heavy_mb() #12
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %39 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp11 = icmp eq i32 %40, 2
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %41 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp12 = icmp ugt i32 %42, 1
  %cond13 = select i1 %cmp12, i32 1048576, i32 0
  %or = select i1 %cmp11, i32 -14680064, i32 -16777216
  %or14 = or i32 %or, %cond13
  %43 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %44 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port.i, align 4
  %add16 = add i32 %45, 8
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %46 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %43) #12, !srcloc !398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 4294960) #12
  %port.i.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %timeout.0.i = phi i32 [ 1000, %if.end ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i35 = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i35, label %do.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #12
  %49 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %50, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %51 = inttoptr i32 %add1.i.i to ptr
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #12, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %53 = and i32 %52, 1
  %tobool.not.i36 = icmp eq i32 %53, 0
  br i1 %tobool.not.i36, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %card.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %54 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  %58 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port.i.i, align 4
  %add.i2.i = add i32 %59, 128
  %and.i3.i = and i32 %add.i2.i, 1048575
  %add1.i4.i = or i32 %and.i3.i, -18874368
  %60 = inttoptr i32 %add1.i4.i to ptr
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %60) #12, !srcloc !390
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.81, i32 noundef 0, i32 noundef %62) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %while.body.i.cleanup_crit_edge, %via_lock_rate.exit
  %retval.0 = phi i32 [ -22, %via_lock_rate.exit ], [ 0, %do.end.i ], [ 0, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback_devno = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %playback_devno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %playback_devno, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %add = add i32 %5, %3
  %arrayidx = getelementptr %struct.via82xx, ptr %1, i32 0, i32 21, i32 %add
  %call = tail call fastcc i32 @snd_via82xx_pcm_open(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %substream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %div37 = lshr i32 %7, 4
  %arrayidx1 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 26, i32 %div37
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = load i32, ptr @dxs_init_volume, align 4
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 31
  %conv = xor i8 %12, 31
  %arrayidx3 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 %div37
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx3, align 2
  %14 = load i32, ptr @dxs_init_volume, align 4
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 31
  %conv7 = xor i8 %16, 31
  %arrayidx10 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 %div37, i32 1
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %arrayidx10, align 1
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %9, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %access, align 4
  %and14 = and i32 %19, -257
  store i32 %and14, ptr %access, align 4
  %card = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %22 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx1, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %21, i32 noundef 3, ptr noundef %id) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %7 = load i32, ptr %5, align 4
  %div14 = lshr i32 %7, 4
  %arrayidx = getelementptr %struct.via82xx, ptr %1, i32 0, i32 26, i32 %div14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %9, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %access, align 4
  %or = or i32 %11, 256
  store i32 %or, ptr %access, align 4
  %card = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %13, i32 noundef 2, ptr noundef %id) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @snd_via82xx_pcm_close(ptr noundef %substream)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %dxs_src = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %dxs_src to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %dxs_src, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.false ], [ 48000, %entry.cond.end_crit_edge ]
  %rates = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 22
  tail call void @_raw_spin_lock_irq(ptr noundef %rates) #12
  %rate1.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 22, i32 0, i32 1
  %10 = ptrtoint ptr %rate1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cond)
  %cmp.not.i = icmp eq i32 %11, %cond
  br i1 %cmp.not.i, label %if.end.thread, label %if.then.i

if.end.thread:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %rates) #12
  br label %if.end17

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then.i.if.then5_crit_edge, label %land.lhs.true.i

if.then.i.if.then5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

land.lhs.true.i:                                  ; preds = %if.then.i
  %used.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 22, i32 0, i32 2
  %12 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp3.i = icmp sgt i32 %13, 1
  br i1 %cmp3.i, label %via_lock_rate.exit, label %land.lhs.true.i.if.then5_crit_edge

land.lhs.true.i.if.then5_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

via_lock_rate.exit:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %rates) #12
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true.i.if.then5_crit_edge, %if.then.i.if.then5_crit_edge
  %14 = ptrtoint ptr %rate1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %rate1.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %rates) #12
  %ac97 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ac97, align 4
  %17 = ptrtoint ptr %dxs_src to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load6 = load i8, ptr %dxs_src, align 4
  %18 = and i8 %bf.load6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not = icmp eq i8 %18, 0
  br i1 %tobool10.not, label %cond.false12, label %if.then5.cond.end14_crit_edge

if.then5.cond.end14_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end14

cond.false12:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %rate13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %19 = ptrtoint ptr %rate13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate13, align 4
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false12, %if.then5.cond.end14_crit_edge
  %cond15 = phi i32 [ %20, %cond.false12 ], [ 48000, %if.then5.cond.end14_crit_edge ]
  %call16 = tail call i32 @snd_ac97_set_rate(ptr noundef %16, i32 noundef 44, i32 noundef %cond15) #12
  br label %if.end17

if.end17:                                         ; preds = %cond.end14, %if.end.thread
  %21 = ptrtoint ptr %dxs_src to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load18 = load i8, ptr %dxs_src, align 4
  %22 = and i8 %bf.load18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool22.not = icmp eq i8 %22, 0
  br i1 %tobool22.not, label %if.end17.if.end28_crit_edge, label %land.lhs.true

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end17
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %24)
  %cmp23 = icmp eq i32 %24, 48
  br i1 %cmp23, label %if.then24, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %ac9725 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 28
  %25 = ptrtoint ptr %ac9725 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ac9725, align 4
  %rate26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %27 = ptrtoint ptr %rate26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate26, align 4
  %call27 = tail call i32 @snd_ac97_set_rate(ptr noundef %26, i32 noundef 58, i32 noundef %28) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %land.lhs.true.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  %rate29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %29 = ptrtoint ptr %rate29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rate29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %30)
  %cmp30 = icmp eq i32 %30, 48000
  %mul = mul i32 %30, 21
  %mul34 = mul i32 %30, 40576
  %div = udiv i32 %mul34, 48000
  %add = add i32 %div, %mul
  %rbits.0 = select i1 %cmp30, i32 1048575, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %rbits.0)
  %tobool36.not = icmp ult i32 %rbits.0, 1048576
  br i1 %tobool36.not, label %if.end28.if.end51_crit_edge, label %do.end, !prof !414

if.end28.if.end51_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1041, i32 noundef 9, ptr noundef null) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end, %if.end28.if.end51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  tail call void @arm_heavy_mb() #12
  %port.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 1
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i, align 4
  %add.i = add i32 %32, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %33 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 73) #12, !srcloc !383
  %34 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %35, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %36 = inttoptr i32 %add5.i to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %40, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %41 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  %42 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %43, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %44 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 3) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  tail call void @arm_heavy_mb() #12
  %45 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %46, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %47 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 0) #12, !srcloc !383
  %lastpos.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 8
  %48 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %lastpos.i, align 4
  %hwptr_done.i = getelementptr inbounds %struct.viadev, ptr %5, i32 0, i32 12
  %49 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %hwptr_done.i, align 4
  tail call fastcc void @snd_via82xx_set_table_ptr(ptr noundef %1, ptr noundef %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %5, align 4
  %div62132 = lshr i32 %51, 4
  %arrayidx63 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 %div62132
  %52 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx63, align 2
  %54 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port.i, align 4
  %add65 = add i32 %55, 2
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %56 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %53) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  tail call void @arm_heavy_mb() #12
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %5, align 4
  %div74133 = lshr i32 %58, 4
  %arrayidx76 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 %div74133, i32 1
  %59 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx76, align 1
  %61 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port.i, align 4
  %add78 = add i32 %62, 3
  %and79 = and i32 %add78, 1048575
  %add80 = or i32 %and79, -18874368
  %63 = inttoptr i32 %add80 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %60) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !417
  tail call void @arm_heavy_mb() #12
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %64 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp85 = icmp eq i32 %65, 2
  %cond86 = select i1 %cmp85, i32 2097152, i32 0
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %66 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp87 = icmp ugt i32 %67, 1
  %cond88 = select i1 %cmp87, i32 1048576, i32 0
  %or = or i32 %rbits.0, %cond86
  %or89 = or i32 %or, %cond88
  %or90 = or i32 %or89, -16777216
  %68 = tail call i32 @llvm.bswap.i32(i32 %or90)
  %69 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port.i, align 4
  %add92 = add i32 %70, 8
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %71 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %71, i32 %68) #12, !srcloc !398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 4294960) #12
  %port.i.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end51
  %timeout.0.i = phi i32 [ 1000, %if.end51 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i134 = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i134, label %do.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748) #12
  %74 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %75, 128
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %76 = inttoptr i32 %add1.i.i to ptr
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %76) #12, !srcloc !390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  %78 = and i32 %77, 1
  %tobool.not.i135 = icmp eq i32 %78, 0
  br i1 %tobool.not.i135, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %card.i = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %79 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %80, i32 0, i32 27
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 8
  %83 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port.i.i, align 4
  %add.i2.i = add i32 %84, 128
  %and.i3.i = and i32 %add.i2.i, 1048575
  %add1.i4.i = or i32 %and.i3.i, -18874368
  %85 = inttoptr i32 %add1.i4.i to ptr
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %85) #12, !srcloc !390
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.81, i32 noundef 0, i32 noundef %87) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %while.body.i.cleanup_crit_edge, %via_lock_rate.exit
  %retval.0 = phi i32 [ -22, %via_lock_rate.exit ], [ 0, %do.end.i ], [ 0, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_capture_source_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_via8233_capture_source_info.texts) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_capture_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port1, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 99, i32 115
  %add = add i32 %cond, %3
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !418
  %8 = lshr i8 %7, 2
  %.lobit = and i8 %8, 1
  %9 = zext i8 %.lobit to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_capture_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port1, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 99, i32 115
  %add = add i32 %cond, %3
  %reg_lock = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 31
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !419
  %and4 = and i8 %7, -5
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  %masksel = select i1 %tobool6.not, i8 0, i8 4
  %spec.select = or i8 %masksel, %and4
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select, i8 %7)
  %cmp = icmp ne i8 %spec.select, %7
  br i1 %cmp, label %do.body, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %spec.select) #12, !srcloc !383
  br label %if.end16

if.end16:                                         ; preds = %do.body, %entry.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  %conv21 = zext i1 %cmp to i32
  ret i32 %conv21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_dxs3_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !380
  %pci = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci, align 4
  %call = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef 73, ptr noundef nonnull %val) #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = lshr i8 %6, 3
  %.lobit = and i8 %7, 1
  %8 = zext i8 %.lobit to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_dxs3_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %oval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %oval) #12
  %2 = ptrtoint ptr %oval to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %oval, align 1, !annotation !380
  %pci = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci, align 4
  %call = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef 73, ptr noundef nonnull %oval) #12
  %5 = ptrtoint ptr %oval to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %oval, align 1
  %7 = and i8 %6, -9
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %masksel = select i1 %tobool.not, i8 0, i8 8
  %spec.select = or i8 %masksel, %7
  %spdif_on = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %spdif_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %spdif_on, align 4
  %bf.shl = select i1 %tobool.not, i8 0, i8 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %spdif_on, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select, i8 %6)
  %cmp.not = icmp eq i8 %spec.select, %6
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %call12 = call i32 @pci_write_config_byte(ptr noundef %12, i32 noundef 73, i8 noundef zeroext %spec.select) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then10 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oval) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_via8233_dxs_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  store i32 31, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_via8233_pcmdxs_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback_volume_c = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %playback_volume_c to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %playback_volume_c, align 4
  %conv = zext i8 %3 to i32
  %sub = sub nsw i32 31, %conv
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %sub5 = sub nsw i32 31, %conv4
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub5, ptr %arrayidx7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_pcmdxs_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %port18 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %conv1 = and i32 %3, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp2.not = icmp eq i32 %conv1, 0
  %4 = trunc i32 %3 to i8
  %5 = sub i8 31, %4
  %conv5 = select i1 %cmp2.not, i8 %5, i8 0
  %arrayidx7 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 13, i32 0
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv5, i8 %7)
  %cmp9.not = icmp eq i8 %conv5, %7
  br i1 %cmp9.not, label %entry.for.inc25_crit_edge, label %if.then11

entry.for.inc25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc25

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5, ptr %arrayidx7, align 1
  %9 = ptrtoint ptr %port18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port18, align 4
  %arrayidx20 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 0, i32 0
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %arrayidx20, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %add22 = add i32 %10, 2
  %and = and i32 %add22, 1048575
  %add23 = or i32 %and, -18874368
  %12 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv5) #12, !srcloc !383
  %13 = ptrtoint ptr %port18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port18, align 4
  %arrayidx20.1 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv5, ptr %arrayidx20.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %add22.1 = add i32 %14, 18
  %and.1 = and i32 %add22.1, 1048575
  %add23.1 = or i32 %and.1, -18874368
  %16 = inttoptr i32 %add23.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv5) #12, !srcloc !383
  %17 = ptrtoint ptr %port18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port18, align 4
  %arrayidx20.2 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 2, i32 0
  %19 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5, ptr %arrayidx20.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %add22.2 = add i32 %18, 34
  %and.2 = and i32 %add22.2, 1048575
  %add23.2 = or i32 %and.2, -18874368
  %20 = inttoptr i32 %add23.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv5) #12, !srcloc !383
  %21 = ptrtoint ptr %port18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port18, align 4
  %arrayidx20.3 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 3, i32 0
  %23 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv5, ptr %arrayidx20.3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %add22.3 = add i32 %22, 50
  %and.3 = and i32 %add22.3, 1048575
  %add23.3 = or i32 %and.3, -18874368
  %24 = inttoptr i32 %add23.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv5) #12, !srcloc !383
  br label %for.inc25

for.inc25:                                        ; preds = %if.then11, %entry.for.inc25_crit_edge
  %change.1 = phi i32 [ 0, %entry.for.inc25_crit_edge ], [ 1, %if.then11 ]
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1, align 4
  %conv1.1 = and i32 %26, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.1)
  %cmp2.not.1 = icmp eq i32 %conv1.1, 0
  %27 = trunc i32 %26 to i8
  %28 = sub i8 31, %27
  %conv5.1 = select i1 %cmp2.not.1, i8 %28, i8 0
  %arrayidx7.1 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 13, i32 1
  %29 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx7.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv5.1, i8 %30)
  %cmp9.not.1 = icmp eq i8 %conv5.1, %30
  br i1 %cmp9.not.1, label %for.inc25.for.inc25.1_crit_edge, label %if.then11.1

for.inc25.for.inc25.1_crit_edge:                  ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc25.1

if.then11.1:                                      ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv5.1, ptr %arrayidx7.1, align 1
  %32 = ptrtoint ptr %port18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port18, align 4
  %arrayidx20.149 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx20.149 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv5.1, ptr %arrayidx20.149, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %add22.150 = add i32 %33, 3
  %and.151 = and i32 %add22.150, 1048575
  %add23.152 = or i32 %and.151, -18874368
  %35 = inttoptr i32 %add23.152 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv5.1) #12, !srcloc !383
  %36 = ptrtoint ptr %port18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port18, align 4
  %arrayidx20.1.1 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx20.1.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv5.1, ptr %arrayidx20.1.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %add22.1.1 = add i32 %37, 19
  %and.1.1 = and i32 %add22.1.1, 1048575
  %add23.1.1 = or i32 %and.1.1, -18874368
  %39 = inttoptr i32 %add23.1.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %conv5.1) #12, !srcloc !383
  %40 = ptrtoint ptr %port18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port18, align 4
  %arrayidx20.2.1 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 2, i32 1
  %42 = ptrtoint ptr %arrayidx20.2.1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv5.1, ptr %arrayidx20.2.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %add22.2.1 = add i32 %41, 35
  %and.2.1 = and i32 %add22.2.1, 1048575
  %add23.2.1 = or i32 %and.2.1, -18874368
  %43 = inttoptr i32 %add23.2.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv5.1) #12, !srcloc !383
  %44 = ptrtoint ptr %port18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port18, align 4
  %arrayidx20.3.1 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 3, i32 1
  %46 = ptrtoint ptr %arrayidx20.3.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv5.1, ptr %arrayidx20.3.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %add22.3.1 = add i32 %45, 51
  %and.3.1 = and i32 %add22.3.1, 1048575
  %add23.3.1 = or i32 %and.3.1, -18874368
  %47 = inttoptr i32 %add23.3.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv5.1) #12, !srcloc !383
  br label %for.inc25.1

for.inc25.1:                                      ; preds = %if.then11.1, %for.inc25.for.inc25.1_crit_edge
  %change.1.1 = phi i32 [ %change.1, %for.inc25.for.inc25.1_crit_edge ], [ 1, %if.then11.1 ]
  ret i32 %change.1.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_via8233_dxs_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %arrayidx = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %5 to i32
  %sub = sub nsw i32 31, %conv
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %value, align 8
  %arrayidx5 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 %3, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %sub7 = sub nsw i32 31, %conv6
  %arrayidx9 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub7, ptr %arrayidx9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via8233_dxs_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdevice, align 4
  %port1 = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port1, align 4
  %mul = shl i32 %3, 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %add = or i32 %mul, 2
  %add17 = add i32 %add, %5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %conv2 = and i32 %7, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp3.not = icmp eq i32 %conv2, 0
  %8 = trunc i32 %7 to i8
  %9 = sub i8 31, %8
  %conv6 = select i1 %cmp3.not, i8 %9, i8 0
  %arrayidx9 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 %3, i32 0
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv6, i8 %11)
  %cmp11 = icmp ne i8 %conv6, %11
  br i1 %cmp11, label %if.then13, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %arrayidx9, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @arm_heavy_mb() #12
  %and = and i32 %add17, 1048575
  %add19 = or i32 %and, -18874368
  %13 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv6) #12, !srcloc !383
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  %conv2.1 = and i32 %15, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.1)
  %cmp3.not.1 = icmp eq i32 %conv2.1, 0
  %16 = trunc i32 %15 to i8
  %17 = sub i8 31, %16
  %conv6.1 = select i1 %cmp3.not.1, i8 %17, i8 0
  %arrayidx9.1 = getelementptr %struct.via82xx, ptr %1, i32 0, i32 12, i32 %3, i32 1
  %18 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx9.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv6.1, i8 %19)
  %cmp11.1 = icmp ne i8 %conv6.1, %19
  %or.140 = or i1 %cmp11, %cmp11.1
  br i1 %or.140, label %if.then13.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then13.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv6.1, ptr %arrayidx9.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @arm_heavy_mb() #12
  %add18.1 = add i32 %add17, 1
  %and.1 = and i32 %add18.1, 1048575
  %add19.1 = or i32 %and.1, -18874368
  %21 = inttoptr i32 %add19.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv6.1) #12, !srcloc !383
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then13.1, %for.inc.for.inc.1_crit_edge
  %or.1 = zext i1 %or.140 to i32
  ret i32 %or.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_via82xx_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %card = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.120, ptr noundef %longname) #12
  %port = getelementptr inbounds %struct.via82xx, ptr %1, i32 0, i32 1
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
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #12, !srcloc !390
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !423
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.121, i32 noundef %i.012, i32 noundef %12) #12
  %add6 = add nuw nsw i32 %i.012, 4
  %cmp = icmp ult i32 %i.012, 156
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %num_devs = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 17
  %5 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp31.not = icmp eq i32 %6, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  tail call void @arm_heavy_mb() #12
  %port.i = getelementptr %struct.via82xx, ptr %3, i32 0, i32 21, i32 %i.032, i32 1
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add.i = add i32 %8, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 73) #12, !srcloc !383
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %11, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %12 = inttoptr i32 %add5.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %16, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %17 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %19, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %20 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 3) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %22, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %23 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 0) #12, !srcloc !383
  %lastpos.i = getelementptr %struct.via82xx, ptr %3, i32 0, i32 21, i32 %i.032, i32 8
  %24 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lastpos.i, align 4
  %hwptr_done.i = getelementptr %struct.via82xx, ptr %3, i32 0, i32 21, i32 %i.032, i32 12
  %25 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %hwptr_done.i, align 4
  %inc = add nuw i32 %i.032, 1
  %26 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_devs, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ac97 = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 28
  %28 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %29) #12
  %chip_type = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1.not = icmp eq i32 %31, 0
  br i1 %cmp1.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %pci = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 15
  %32 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci, align 4
  %spdif_ctrl_saved = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 9
  %call2 = tail call i32 @pci_read_config_byte(ptr noundef %33, i32 noundef 73, ptr noundef %spdif_ctrl_saved) #12
  %port = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %add = add i32 %35, 99
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %36 = inttoptr i32 %add3 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !424
  %capture_src_saved = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 10
  %38 = ptrtoint ptr %capture_src_saved to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %capture_src_saved, align 2
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add10 = add i32 %40, 115
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %41 = inttoptr i32 %add12 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !425
  %arrayidx17 = getelementptr %struct.via82xx, ptr %3, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx17, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_via82xx_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %chip_type = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mpu_port_saved = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %mpu_port_saved to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpu_port_saved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %pci = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %or = or i32 %7, 1
  %call4 = tail call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef 24, i32 noundef %or) #12
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %pci5 = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %pci5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci5, align 4
  %legacy_saved = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %legacy_saved to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %legacy_saved, align 1
  %call6 = tail call i32 @pci_write_config_byte(ptr noundef %11, i32 noundef 66, i8 noundef zeroext %13) #12
  %14 = ptrtoint ptr %pci5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci5, align 4
  %legacy_cfg_saved = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %legacy_cfg_saved to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %legacy_cfg_saved, align 4
  %call8 = tail call i32 @pci_write_config_byte(ptr noundef %15, i32 noundef 67, i8 noundef zeroext %17) #12
  br label %if.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pci9 = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 15
  %18 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci9, align 4
  %spdif_ctrl_saved = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %spdif_ctrl_saved to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %spdif_ctrl_saved, align 1
  %call10 = tail call i32 @pci_write_config_byte(ptr noundef %19, i32 noundef 73, i8 noundef zeroext %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !426
  tail call void @arm_heavy_mb() #12
  %capture_src_saved = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 10
  %22 = ptrtoint ptr %capture_src_saved to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %capture_src_saved, align 2
  %port = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add = add i32 %25, 99
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %26 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %23) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  %arrayidx17 = getelementptr %struct.via82xx, ptr %3, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx17, align 1
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add20 = add i32 %30, 115
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %31 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %28) #12, !srcloc !383
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end
  %ac97 = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 28
  %32 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %33) #12
  %num_devs = getelementptr inbounds %struct.via82xx, ptr %3, i32 0, i32 17
  %34 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp2548.not = icmp eq i32 %35, 0
  br i1 %cmp2548.not, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end24.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end24.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  tail call void @arm_heavy_mb() #12
  %port.i = getelementptr %struct.via82xx, ptr %3, i32 0, i32 21, i32 %i.049, i32 1
  %36 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i, align 4
  %add.i = add i32 %37, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %38 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 73) #12, !srcloc !383
  %39 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %40, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %41 = inttoptr i32 %add5.i to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #12, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 10737400) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void @arm_heavy_mb() #12
  %44 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %45, 1
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %46 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 0) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  %47 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port.i, align 4
  %and19.i = and i32 %48, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %49 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 3) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port.i, align 4
  %add25.i = add i32 %51, 2
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %52 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 0) #12, !srcloc !383
  %lastpos.i = getelementptr %struct.via82xx, ptr %3, i32 0, i32 21, i32 %i.049, i32 8
  %53 = ptrtoint ptr %lastpos.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %lastpos.i, align 4
  %hwptr_done.i = getelementptr %struct.via82xx, ptr %3, i32 0, i32 21, i32 %i.049, i32 12
  %54 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %hwptr_done.i, align 4
  %inc = add nuw i32 %i.049, 1
  %55 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_devs, align 4
  %cmp25 = icmp ult i32 %inc, %56
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end24.for.end_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %57 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
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
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !58, !60, !62, !64, !66, !68, !70, !71, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !110, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !237, !238, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !255, !256, !257, !258, !260, !261, !262, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !303, !305, !307, !308, !309, !310, !311, !313, !315, !316, !317, !318, !320, !321, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !341, !342, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369}
!llvm.module.flags = !{!371, !372, !373, !374, !375, !376, !377, !378}
!llvm.ident = !{!379}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/via82xx.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/via82xx.c", i32 57, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/via82xx.c", i32 58, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/via82xx.c", i32 76, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/via82xx.c", i32 77, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/via82xx.c", i32 78, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/via82xx.c", i32 79, i32 1}
!17 = !{ptr @__param_mpu_port, !18, !"__param_mpu_port", i1 false, i1 false}
!18 = !{!"../sound/pci/via82xx.c", i32 80, i32 1}
!19 = !{ptr @__UNIQUE_ID_mpu_porttype250, !18, !"__UNIQUE_ID_mpu_porttype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_mpu_port251, !21, !"__UNIQUE_ID_mpu_port251", i1 false, i1 false}
!21 = !{!"../sound/pci/via82xx.c", i32 81, i32 1}
!22 = !{ptr @__param_joystick, !23, !"__param_joystick", i1 false, i1 false}
!23 = !{!"../sound/pci/via82xx.c", i32 83, i32 1}
!24 = !{ptr @__UNIQUE_ID_joysticktype252, !23, !"__UNIQUE_ID_joysticktype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_joystick253, !26, !"__UNIQUE_ID_joystick253", i1 false, i1 false}
!26 = !{!"../sound/pci/via82xx.c", i32 84, i32 1}
!27 = !{ptr @__param_ac97_clock, !28, !"__param_ac97_clock", i1 false, i1 false}
!28 = !{!"../sound/pci/via82xx.c", i32 86, i32 1}
!29 = !{ptr @__UNIQUE_ID_ac97_clocktype254, !28, !"__UNIQUE_ID_ac97_clocktype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_ac97_clock255, !31, !"__UNIQUE_ID_ac97_clock255", i1 false, i1 false}
!31 = !{!"../sound/pci/via82xx.c", i32 87, i32 1}
!32 = !{ptr @__param_ac97_quirk, !33, !"__param_ac97_quirk", i1 false, i1 false}
!33 = !{!"../sound/pci/via82xx.c", i32 88, i32 1}
!34 = !{ptr @__UNIQUE_ID_ac97_quirktype256, !33, !"__UNIQUE_ID_ac97_quirktype256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_ac97_quirk257, !36, !"__UNIQUE_ID_ac97_quirk257", i1 false, i1 false}
!36 = !{!"../sound/pci/via82xx.c", i32 89, i32 1}
!37 = !{ptr @__param_dxs_support, !38, !"__param_dxs_support", i1 false, i1 false}
!38 = !{!"../sound/pci/via82xx.c", i32 90, i32 1}
!39 = !{ptr @__UNIQUE_ID_dxs_supporttype258, !38, !"__UNIQUE_ID_dxs_supporttype258", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_dxs_support259, !41, !"__UNIQUE_ID_dxs_support259", i1 false, i1 false}
!41 = !{!"../sound/pci/via82xx.c", i32 91, i32 1}
!42 = !{ptr @__param_dxs_init_volume, !43, !"__param_dxs_init_volume", i1 false, i1 false}
!43 = !{!"../sound/pci/via82xx.c", i32 92, i32 1}
!44 = !{ptr @__UNIQUE_ID_dxs_init_volumetype260, !43, !"__UNIQUE_ID_dxs_init_volumetype260", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_dxs_init_volume261, !46, !"__UNIQUE_ID_dxs_init_volume261", i1 false, i1 false}
!46 = !{!"../sound/pci/via82xx.c", i32 93, i32 1}
!47 = !{ptr @__param_nodelay, !48, !"__param_nodelay", i1 false, i1 false}
!48 = !{!"../sound/pci/via82xx.c", i32 94, i32 1}
!49 = !{ptr @__UNIQUE_ID_nodelaytype262, !48, !"__UNIQUE_ID_nodelaytype262", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_nodelay263, !51, !"__UNIQUE_ID_nodelay263", i1 false, i1 false}
!51 = !{!"../sound/pci/via82xx.c", i32 95, i32 1}
!52 = !{ptr @__param_enable, !53, !"__param_enable", i1 false, i1 false}
!53 = !{!"../sound/pci/via82xx.c", i32 99, i32 1}
!54 = !{ptr @__UNIQUE_ID_enabletype264, !53, !"__UNIQUE_ID_enabletype264", i1 false, i1 false}
!55 = !{ptr @__initcall__kmod_snd_via82xx__268_2581_via82xx_driver_init6, !56, !"__initcall__kmod_snd_via82xx__268_2581_via82xx_driver_init6", i1 false, i1 false}
!56 = !{!"../sound/pci/via82xx.c", i32 2581, i32 1}
!57 = !{ptr @__exitcall_via82xx_driver_exit, !56, !"__exitcall_via82xx_driver_exit", i1 false, i1 false}
!58 = !{ptr @mpu_port, !59, !"mpu_port", i1 false, i1 false}
!59 = !{!"../sound/pci/via82xx.c", i32 66, i32 13}
!60 = !{ptr @joystick, !61, !"joystick", i1 false, i1 false}
!61 = !{!"../sound/pci/via82xx.c", i32 68, i32 13}
!62 = !{ptr @ac97_quirk, !63, !"ac97_quirk", i1 false, i1 false}
!63 = !{!"../sound/pci/via82xx.c", i32 71, i32 14}
!64 = !{ptr @dxs_support, !65, !"dxs_support", i1 false, i1 false}
!65 = !{!"../sound/pci/via82xx.c", i32 72, i32 12}
!66 = !{ptr @nodelay, !67, !"nodelay", i1 false, i1 false}
!67 = !{!"../sound/pci/via82xx.c", i32 74, i32 12}
!68 = !{ptr @enable, !69, !"enable", i1 false, i1 false}
!69 = !{!"../sound/pci/via82xx.c", i32 98, i32 13}
!70 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!71 = !{ptr @index, !72, !"index", i1 false, i1 false}
!72 = !{!"../sound/pci/via82xx.c", i32 64, i32 12}
!73 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!74 = !{ptr @id, !75, !"id", i1 false, i1 false}
!75 = !{!"../sound/pci/via82xx.c", i32 65, i32 14}
!76 = !{ptr @__param_str_mpu_port, !18, !"__param_str_mpu_port", i1 false, i1 false}
!77 = !{ptr @__param_str_joystick, !23, !"__param_str_joystick", i1 false, i1 false}
!78 = !{ptr @__param_str_ac97_clock, !28, !"__param_str_ac97_clock", i1 false, i1 false}
!79 = !{ptr @ac97_clock, !80, !"ac97_clock", i1 false, i1 false}
!80 = !{!"../sound/pci/via82xx.c", i32 70, i32 12}
!81 = !{ptr @__param_str_ac97_quirk, !33, !"__param_str_ac97_quirk", i1 false, i1 false}
!82 = !{ptr @__param_str_dxs_support, !38, !"__param_str_dxs_support", i1 false, i1 false}
!83 = !{ptr @__param_str_dxs_init_volume, !43, !"__param_str_dxs_init_volume", i1 false, i1 false}
!84 = !{ptr @dxs_init_volume, !85, !"dxs_init_volume", i1 false, i1 false}
!85 = !{!"../sound/pci/via82xx.c", i32 73, i32 12}
!86 = !{ptr @__param_str_nodelay, !48, !"__param_str_nodelay", i1 false, i1 false}
!87 = !{ptr @__param_str_enable, !53, !"__param_str_enable", i1 false, i1 false}
!88 = !{ptr @.str, !56, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @via82xx_driver, !90, !"via82xx_driver", i1 false, i1 false}
!90 = !{!"../sound/pci/via82xx.c", i32 2572, i32 26}
!91 = !{ptr @snd_via82xx_ids, !92, !"snd_via82xx_ids", i1 false, i1 false}
!92 = !{!"../sound/pci/via82xx.c", i32 392, i32 35}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/via82xx.c", i32 2479, i32 24}
!95 = !{ptr @.str.2, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/via82xx.c", i32 2480, i32 28}
!97 = !{ptr @.str.3, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/via82xx.c", i32 2485, i32 28}
!99 = !{ptr @.str.4, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/via82xx.c", i32 2505, i32 25}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/via82xx.c", i32 2507, i32 25}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/via82xx.c", i32 2509, i32 25}
!105 = !{ptr @.str.7, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/via82xx.c", i32 2512, i32 3}
!107 = !{ptr @.str.8, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.9, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.10, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.11, !106, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @snd_via82xx_probe._entry, !106, !"_entry", i1 false, i1 false}
!112 = !{ptr @snd_via82xx_probe._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.12, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/via82xx.c", i32 2560, i32 4}
!115 = !{ptr @.str.13, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/pci/via82xx.c", i32 2379, i32 22}
!117 = !{ptr @.str.14, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/via82xx.c", i32 2380, i32 19}
!119 = !{ptr @.str.15, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/via82xx.c", i32 2381, i32 18}
!121 = !{ptr @.str.16, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/via82xx.c", i32 2382, i32 19}
!123 = !{ptr @.str.17, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/via82xx.c", i32 2383, i32 18}
!125 = !{ptr @.str.18, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/via82xx.c", i32 2384, i32 18}
!127 = !{ptr @.str.19, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/via82xx.c", i32 2385, i32 18}
!129 = !{ptr @via823x_cards, !130, !"via823x_cards", i1 false, i1 false}
!130 = !{!"../sound/pci/via82xx.c", i32 2378, i32 34}
!131 = !{ptr @.str.20, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/via82xx.c", i32 2442, i32 3}
!133 = !{ptr @.str.21, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @check_dxs_list.__UNIQUE_ID_ddebug267, !132, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!135 = !{ptr @.str.22, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/via82xx.c", i32 2454, i32 2}
!137 = !{ptr @.str.23, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @check_dxs_list._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @check_dxs_list._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.25, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/via82xx.c", i32 2455, i32 2}
!142 = !{ptr @check_dxs_list._entry.24, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @check_dxs_list._entry_ptr.26, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.28, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/via82xx.c", i32 2456, i32 2}
!146 = !{ptr @check_dxs_list._entry.27, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @check_dxs_list._entry_ptr.29, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.31, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/via82xx.c", i32 2457, i32 2}
!150 = !{ptr @check_dxs_list._entry.30, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @check_dxs_list._entry_ptr.32, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.33, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/via82xx.c", i32 2393, i32 2}
!154 = !{ptr @.str.34, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/via82xx.c", i32 2394, i32 2}
!156 = !{ptr @.str.35, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/via82xx.c", i32 2395, i32 2}
!158 = !{ptr @.str.36, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/via82xx.c", i32 2396, i32 2}
!160 = !{ptr @.str.37, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/via82xx.c", i32 2397, i32 2}
!162 = !{ptr @.str.38, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/via82xx.c", i32 2398, i32 2}
!164 = !{ptr @.str.39, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/via82xx.c", i32 2399, i32 2}
!166 = !{ptr @.str.40, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/via82xx.c", i32 2400, i32 2}
!168 = !{ptr @.str.41, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/via82xx.c", i32 2401, i32 2}
!170 = !{ptr @.str.42, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/via82xx.c", i32 2402, i32 2}
!172 = !{ptr @.str.43, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/via82xx.c", i32 2403, i32 2}
!174 = !{ptr @.str.44, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/via82xx.c", i32 2404, i32 2}
!176 = !{ptr @.str.45, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/via82xx.c", i32 2405, i32 2}
!178 = !{ptr @.str.46, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/via82xx.c", i32 2406, i32 2}
!180 = !{ptr @.str.47, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/via82xx.c", i32 2407, i32 2}
!182 = !{ptr @.str.48, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/via82xx.c", i32 2408, i32 2}
!184 = !{ptr @.str.49, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/via82xx.c", i32 2409, i32 2}
!186 = !{ptr @.str.50, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/via82xx.c", i32 2410, i32 2}
!188 = !{ptr @.str.51, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/via82xx.c", i32 2411, i32 2}
!190 = !{ptr @.str.52, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/via82xx.c", i32 2412, i32 2}
!192 = !{ptr @.str.53, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/via82xx.c", i32 2413, i32 2}
!194 = !{ptr @.str.54, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/via82xx.c", i32 2414, i32 2}
!196 = !{ptr @.str.55, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/via82xx.c", i32 2415, i32 2}
!198 = !{ptr @.str.56, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/via82xx.c", i32 2416, i32 2}
!200 = !{ptr @.str.57, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/via82xx.c", i32 2417, i32 2}
!202 = !{ptr @.str.58, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/via82xx.c", i32 2418, i32 2}
!204 = !{ptr @.str.59, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/via82xx.c", i32 2419, i32 2}
!206 = !{ptr @.str.60, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/via82xx.c", i32 2420, i32 2}
!208 = !{ptr @.str.61, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/via82xx.c", i32 2421, i32 2}
!210 = !{ptr @.str.62, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/via82xx.c", i32 2422, i32 2}
!212 = !{ptr @.str.63, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/via82xx.c", i32 2423, i32 2}
!214 = !{ptr @.str.64, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/via82xx.c", i32 2424, i32 2}
!216 = !{ptr @.str.65, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/via82xx.c", i32 2425, i32 2}
!218 = !{ptr @.str.66, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/via82xx.c", i32 2426, i32 2}
!220 = !{ptr @.str.67, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/via82xx.c", i32 2427, i32 2}
!222 = !{ptr @.str.68, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/via82xx.c", i32 2429, i32 2}
!224 = !{ptr @.str.69, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/via82xx.c", i32 2430, i32 2}
!226 = !{ptr @.str.70, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/pci/via82xx.c", i32 2431, i32 2}
!228 = !{ptr @.str.71, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/via82xx.c", i32 2432, i32 2}
!230 = !{ptr @dxs_allowlist, !231, !"dxs_allowlist", i1 false, i1 false}
!231 = !{!"../sound/pci/via82xx.c", i32 2392, i32 35}
!232 = !{ptr @snd_via82xx_create.__key, !233, !"__key", i1 false, i1 false}
!233 = !{!"../sound/pci/via82xx.c", i32 2332, i32 2}
!234 = !{ptr @.str.72, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @snd_via82xx_create.__key.73, !236, !"__key", i1 false, i1 false}
!236 = !{!"../sound/pci/via82xx.c", i32 2333, i32 2}
!237 = !{ptr @.str.74, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @snd_via82xx_create.__key.75, !239, !"__key", i1 false, i1 false}
!239 = !{!"../sound/pci/via82xx.c", i32 2334, i32 2}
!240 = !{ptr @.str.76, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.77, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/via82xx.c", i32 2353, i32 3}
!243 = !{ptr @.str.78, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @snd_via82xx_create._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @snd_via82xx_create._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.79, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/via82xx.c", i32 2181, i32 3}
!248 = !{ptr @.str.80, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @snd_via82xx_chip_init._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @snd_via82xx_chip_init._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @snd_via82xx_mixer_new.ops, !252, !"ops", i1 false, i1 false}
!252 = !{!"../sound/pci/via82xx.c", i32 1878, i32 39}
!253 = !{ptr @.str.81, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/via82xx.c", i32 522, i32 2}
!255 = !{ptr @.str.82, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @snd_via82xx_codec_ready._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @snd_via82xx_codec_ready._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.83, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/pci/via82xx.c", i32 581, i32 4}
!260 = !{ptr @.str.84, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @snd_via82xx_codec_read._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @snd_via82xx_codec_read._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.85, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/pci/via82xx.c", i32 1796, i32 11}
!265 = !{ptr @.str.86, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/pci/via82xx.c", i32 1802, i32 11}
!267 = !{ptr @.str.87, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/pci/via82xx.c", i32 1808, i32 11}
!269 = !{ptr @.str.88, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/pci/via82xx.c", i32 1814, i32 11}
!271 = !{ptr @.str.89, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/pci/via82xx.c", i32 1838, i32 11}
!273 = !{ptr @.str.90, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/pci/via82xx.c", i32 1844, i32 11}
!275 = !{ptr @.str.91, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/pci/via82xx.c", i32 1850, i32 11}
!277 = !{ptr @.str.92, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/pci/via82xx.c", i32 1856, i32 11}
!279 = !{ptr @.str.93, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/pci/via82xx.c", i32 1862, i32 11}
!281 = !{ptr @.str.94, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/pci/via82xx.c", i32 1868, i32 11}
!283 = !{ptr @ac97_quirks, !284, !"ac97_quirks", i1 false, i1 false}
!284 = !{!"../sound/pci/via82xx.c", i32 1791, i32 32}
!285 = !{ptr @snd_via686_playback_ops, !286, !"snd_via686_playback_ops", i1 false, i1 false}
!286 = !{!"../sound/pci/via82xx.c", i32 1355, i32 33}
!287 = !{ptr @snd_via82xx_hw, !288, !"snd_via82xx_hw", i1 false, i1 false}
!288 = !{!"../sound/pci/via82xx.c", i32 1135, i32 38}
!289 = !{ptr @.str.95, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/pci/via82xx.c", i32 451, i32 5}
!291 = !{ptr @.str.96, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @build_via_table._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @build_via_table._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.97, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/pci/via82xx.c", i32 787, i32 3}
!296 = !{ptr @.str.98, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @calc_linear_pos.__UNIQUE_ID_ddebug265, !295, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!298 = !{ptr @.str.99, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/pci/via82xx.c", i32 815, i32 5}
!300 = !{ptr @calc_linear_pos.__UNIQUE_ID_ddebug266, !299, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!301 = !{ptr @snd_via686_capture_ops, !302, !"snd_via686_capture_ops", i1 false, i1 false}
!302 = !{!"../sound/pci/via82xx.c", i32 1366, i32 33}
!303 = !{ptr @.str.100, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/pci/via82xx.c", i32 2060, i32 19}
!305 = !{ptr @.str.101, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/pci/via82xx.c", i32 2080, i32 4}
!307 = !{ptr @.str.102, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.103, !306, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @snd_via686_init_misc._entry, !306, !"_entry", i1 false, i1 false}
!310 = !{ptr @snd_via686_init_misc._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.104, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/pci/via82xx.c", i32 1918, i32 7}
!313 = !{ptr @.str.105, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/pci/via82xx.c", i32 1920, i32 3}
!315 = !{ptr @.str.106, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @snd_via686_create_gameport._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @snd_via686_create_gameport._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.108, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/pci/via82xx.c", i32 1927, i32 3}
!320 = !{ptr @snd_via686_create_gameport._entry.107, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @snd_via686_create_gameport._entry_ptr.109, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.110, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/pci/via82xx.c", i32 1932, i32 24}
!324 = !{ptr @.str.111, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/pci/via82xx.c", i32 1933, i32 24}
!326 = !{ptr @snd_via8233_multi_ops, !327, !"snd_via8233_multi_ops", i1 false, i1 false}
!327 = !{!"../sound/pci/via82xx.c", i32 1388, i32 33}
!328 = !{ptr @snd_via8233_multi_open.channels, !329, !"channels", i1 false, i1 false}
!329 = !{!"../sound/pci/via82xx.c", i32 1274, i32 28}
!330 = !{ptr @snd_via8233_multi_open.hw_constraints_channels, !331, !"hw_constraints_channels", i1 false, i1 false}
!331 = !{!"../sound/pci/via82xx.c", i32 1277, i32 49}
!332 = !{ptr @snd_via8233_capture_ops, !333, !"snd_via8233_capture_ops", i1 false, i1 false}
!333 = !{!"../sound/pci/via82xx.c", i32 1399, i32 33}
!334 = !{ptr @snd_via8233_playback_ops, !335, !"snd_via8233_playback_ops", i1 false, i1 false}
!335 = !{!"../sound/pci/via82xx.c", i32 1377, i32 33}
!336 = !{ptr @.str.112, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/pci/via82xx.c", i32 1989, i32 20}
!338 = !{ptr @.str.113, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/pci/via82xx.c", i32 1992, i32 4}
!340 = !{ptr @.str.114, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @snd_via8233_init_misc._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @snd_via8233_init_misc._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.115, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/pci/via82xx.c", i32 1623, i32 10}
!345 = !{ptr @snd_via8233_capture_source, !346, !"snd_via8233_capture_source", i1 false, i1 false}
!346 = !{!"../sound/pci/via82xx.c", i32 1622, i32 32}
!347 = !{ptr @.str.116, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/pci/via82xx.c", i32 1590, i32 3}
!349 = !{ptr @.str.117, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/pci/via82xx.c", i32 1590, i32 13}
!351 = !{ptr @snd_via8233_capture_source_info.texts, !352, !"texts", i1 false, i1 false}
!352 = !{!"../sound/pci/via82xx.c", i32 1589, i32 28}
!353 = !{ptr @.str.118, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/pci/via82xx.c", i32 1663, i32 10}
!355 = !{ptr @snd_via8233_dxs3_spdif_control, !356, !"snd_via8233_dxs3_spdif_control", i1 false, i1 false}
!356 = !{!"../sound/pci/via82xx.c", i32 1662, i32 38}
!357 = !{ptr @snd_via8233_pcmdxs_volume_control, !358, !"snd_via8233_pcmdxs_volume_control", i1 false, i1 false}
!358 = !{!"../sound/pci/via82xx.c", i32 1751, i32 38}
!359 = !{ptr @db_scale_dxs, !360, !"db_scale_dxs", i1 false, i1 false}
!360 = !{!"../sound/pci/via82xx.c", i32 1749, i32 14}
!361 = !{ptr @snd_via8233_dxs_volume_control, !362, !"snd_via8233_dxs_volume_control", i1 false, i1 false}
!362 = !{!"../sound/pci/via82xx.c", i32 1762, i32 38}
!363 = !{ptr @.str.119, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/pci/via82xx.c", i32 2118, i32 35}
!365 = !{ptr @.str.120, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/pci/via82xx.c", i32 2110, i32 2}
!367 = !{ptr @.str.121, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/pci/via82xx.c", i32 2112, i32 3}
!369 = !{ptr @snd_via82xx_pm, !370, !"snd_via82xx_pm", i1 false, i1 false}
!370 = !{!"../sound/pci/via82xx.c", i32 2294, i32 8}
!371 = !{i32 1, !"wchar_size", i32 2}
!372 = !{i32 1, !"min_enum_size", i32 4}
!373 = !{i32 8, !"branch-target-enforcement", i32 0}
!374 = !{i32 8, !"sign-return-address", i32 0}
!375 = !{i32 8, !"sign-return-address-all", i32 0}
!376 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!377 = !{i32 7, !"uwtable", i32 1}
!378 = !{i32 7, !"frame-pointer", i32 2}
!379 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!380 = !{!"auto-init"}
!381 = !{i8 0, i8 2}
!382 = !{i64 2154877272}
!383 = !{i64 759429}
!384 = !{i64 759824}
!385 = !{i64 2154877801}
!386 = !{i64 2154878652}
!387 = !{i64 2154879094}
!388 = !{i64 2154879532}
!389 = !{i64 2148226783, i64 2148226788, i64 2148226801, i64 2148226845, i64 2148226879, i64 2148226900}
!390 = !{i64 760044}
!391 = !{i64 2154882073}
!392 = !{i64 2154882424}
!393 = !{i64 2154880441}
!394 = !{i64 2154880833}
!395 = !{i64 2154881164}
!396 = !{i64 2154870261}
!397 = !{i64 2154920419}
!398 = !{i64 759626}
!399 = !{i64 2154920899}
!400 = !{i64 2154870747}
!401 = !{i64 2154883063}
!402 = !{!"branch_weights", i32 1, i32 2000}
!403 = !{i64 2154889761}
!404 = !{i64 2154890567}
!405 = !{i64 2154891364}
!406 = !{i64 2154894968}
!407 = !{i64 2154893610}
!408 = !{i64 2154898935}
!409 = !{i64 2154899431}
!410 = !{i64 2154892747}
!411 = !{i64 2154893139}
!412 = !{i64 2154900597}
!413 = !{i64 2154901264}
!414 = !{!"branch_weights", i32 2000, i32 1}
!415 = !{i64 2154896152}
!416 = !{i64 2154896657}
!417 = !{i64 2154897375}
!418 = !{i64 2154904032}
!419 = !{i64 2154904351}
!420 = !{i64 2154904564}
!421 = !{i64 2154905806}
!422 = !{i64 2154905416}
!423 = !{i64 2154915250}
!424 = !{i64 2154921363}
!425 = !{i64 2154921677}
!426 = !{i64 2154921938}
!427 = !{i64 2154922317}
