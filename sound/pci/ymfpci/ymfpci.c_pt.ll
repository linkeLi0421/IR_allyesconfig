; ModuleID = '/llk/IR_all_yes/sound/pci/ymfpci/ymfpci.c_pt.bc'
source_filename = "../sound/pci/ymfpci/ymfpci.c"
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_ymfpci = type { i32, i32, i8, i32, ptr, i16, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.snd_dma_buffer, ptr, [64 x [2 x ptr]], [2 x [2 x ptr]], [5 x [2 x ptr]], i32, i32, [64 x %struct.snd_ymfpci_voice], i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [5 x ptr], ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, [32 x %struct.snd_ymfpci_pcm_mixer], %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, ptr, i32, i16, i16 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_ymfpci_voice = type { ptr, i32, i8, ptr, i32, ptr, ptr }
%struct.snd_ymfpci_pcm_mixer = type { i16, i16, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.84, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.84 = type { i32, [28 x i8] }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }

@__UNIQUE_ID_author242 = internal constant [51 x i8] c"snd_ymfpci.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [39 x i8] c"snd_ymfpci.description=Yamaha DS-1 PCI\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [44 x i8] c"snd_ymfpci.file=sound/pci/ymfpci/snd-ymfpci\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"snd_ymfpci.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_ymfpci.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [39 x i8] c"snd_ymfpci.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [69 x i8] c"snd_ymfpci.parm=index:Index value for the Yamaha DS-1 PCI soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_ymfpci.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [38 x i8] c"snd_ymfpci.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [64 x i8] c"snd_ymfpci.parm=id:ID string for the Yamaha DS-1 PCI soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_ymfpci.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [41 x i8] c"snd_ymfpci.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [53 x i8] c"snd_ymfpci.parm=enable:Enable Yamaha DS-1 soundcard.\00", section ".modinfo", align 1
@__param_str_mpu_port = internal constant [20 x i8] c"snd_ymfpci.mpu_port\00", align 1
@__param_arr_mpu_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_long, ptr @mpu_port }, align 4
@__param_mpu_port = internal constant %struct.kernel_param { ptr @__param_str_mpu_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @__param_arr_mpu_port } }, section "__param", align 4
@__UNIQUE_ID_mpu_porttype252 = internal constant [43 x i8] c"snd_ymfpci.parmtype=mpu_port:array of long\00", section ".modinfo", align 1
@__UNIQUE_ID_mpu_port253 = internal constant [39 x i8] c"snd_ymfpci.parm=mpu_port:MPU-401 Port.\00", section ".modinfo", align 1
@__param_str_fm_port = internal constant [19 x i8] c"snd_ymfpci.fm_port\00", align 1
@__param_arr_fm_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_long, ptr @fm_port }, align 4
@__param_fm_port = internal constant %struct.kernel_param { ptr @__param_str_fm_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @__param_arr_fm_port } }, section "__param", align 4
@__UNIQUE_ID_fm_porttype254 = internal constant [42 x i8] c"snd_ymfpci.parmtype=fm_port:array of long\00", section ".modinfo", align 1
@__UNIQUE_ID_fm_port255 = internal constant [39 x i8] c"snd_ymfpci.parm=fm_port:FM OPL-3 Port.\00", section ".modinfo", align 1
@__param_str_joystick_port = internal constant [25 x i8] c"snd_ymfpci.joystick_port\00", align 1
@__param_arr_joystick_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_long, ptr @joystick_port }, align 4
@__param_joystick_port = internal constant %struct.kernel_param { ptr @__param_str_joystick_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @__param_arr_joystick_port } }, section "__param", align 4
@__UNIQUE_ID_joystick_porttype256 = internal constant [48 x i8] c"snd_ymfpci.parmtype=joystick_port:array of long\00", section ".modinfo", align 1
@__UNIQUE_ID_joystick_port257 = internal constant [52 x i8] c"snd_ymfpci.parm=joystick_port:Joystick port address\00", section ".modinfo", align 1
@__param_str_rear_switch = internal constant [23 x i8] c"snd_ymfpci.rear_switch\00", align 1
@__param_arr_rear_switch = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @rear_switch }, align 4
@__param_rear_switch = internal constant %struct.kernel_param { ptr @__param_str_rear_switch, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_rear_switch } }, section "__param", align 4
@__UNIQUE_ID_rear_switchtype258 = internal constant [46 x i8] c"snd_ymfpci.parmtype=rear_switch:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_rear_switch259 = internal constant [62 x i8] c"snd_ymfpci.parm=rear_switch:Enable shared rear/line-in switch\00", section ".modinfo", align 1
@__initcall__kmod_snd_ymfpci__260_347_ymfpci_driver_init6 = internal global ptr @ymfpci_driver_init, section ".initcall6.init", align 4
@ymfpci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_ymfpci_ids, ptr @snd_card_ymfpci_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_ymfpci_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ymfpci_driver_exit = internal global ptr @ymfpci_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@mpu_port = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@fm_port = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@joystick_port = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@rear_switch = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_ymfpci\00", [21 x i8] zeroinitializer }, align 32
@snd_ymfpci_ids = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 4211, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4211, i32 13, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4211, i32 10, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4211, i32 12, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4211, i32 16, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4211, i32 18, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_ymfpci_pm = external dso_local constant %struct.dev_pm_ops, align 4
@snd_card_ymfpci_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YMF724\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DS-1\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"YMF724F\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YMF740\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DS-1L\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"YMF740C\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YMF744\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DS-1S\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YMF754\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DS-1E\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"YMFPCI OPL3\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"YMFPCI MPU401\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Yamaha %s (%s)\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %i\00", [44 x i8] zeroinitializer }, align 32
@snd_card_ymfpci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 300, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cannot initialize MPU401 at 0x%lx, skipping...\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_card_ymfpci_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/ymfpci/ymfpci.c\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_card_ymfpci_probe._entry_ptr = internal global ptr @snd_card_ymfpci_probe._entry, section ".printk_index", align 4
@snd_card_ymfpci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.18, i32 313, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cannot initialize FM OPL3 at 0x%lx, skipping...\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_card_ymfpci_probe._entry_ptr.23 = internal global ptr @snd_card_ymfpci_probe._entry.21, section ".printk_index", align 4
@snd_card_ymfpci_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.18, i32 319, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot create opl3 hwdep\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_card_ymfpci_probe._entry_ptr.27 = internal global ptr @snd_card_ymfpci_probe._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YMFPCI gameport\00", [16 x i8] zeroinitializer }, align 32
@snd_ymfpci_create_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.18, i32 91, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no gameport ports available\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_ymfpci_create_gameport\00", [37 x i8] zeroinitializer }, align 32
@snd_ymfpci_create_gameport._entry_ptr = internal global ptr @snd_ymfpci_create_gameport._entry, section ".printk_index", align 4
@snd_ymfpci_create_gameport._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.18, i32 102, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid joystick port %#x\00", [38 x i8] zeroinitializer }, align 32
@snd_ymfpci_create_gameport._entry_ptr.33 = internal global ptr @snd_ymfpci_create_gameport._entry.31, section ".printk_index", align 4
@snd_ymfpci_create_gameport._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.18, i32 112, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"joystick port %#x is in use.\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_ymfpci_create_gameport._entry_ptr.36 = internal global ptr @snd_ymfpci_create_gameport._entry.34, section ".printk_index", align 4
@snd_ymfpci_create_gameport._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.18, i32 120, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_ymfpci_create_gameport._entry_ptr.39 = internal global ptr @snd_ymfpci_create_gameport._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Yamaha YMF Gameport\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.snd_card_ymfpci_probe = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 2048, i16 2048, i16 2049, i16 2050, i16 2051], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 10, i64 12, i64 13, i64 16, i64 18]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 768, i64 816, i64 818, i64 820]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 513, i64 514, i64 516, i64 517]
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"ymfpci_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 336, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 21, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 22, i32 14 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 23, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant [9 x i8] c"mpu_port\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 25, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant [8 x i8] c"fm_port\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 24, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"joystick_port\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 27, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"rear_switch\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 29, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 347, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"snd_ymfpci_ids\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 48, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 156, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 180, i32 21 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 180, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 181, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 182, i32 21 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 182, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 183, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 184, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 184, i32 40 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 185, i32 21 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 185, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 186, i32 25 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 198, i32 13 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 209, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 261, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 262, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 298, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 311, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 319, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 85, i32 9 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 90, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 101, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 111, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 119, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 125, i32 24 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [29 x i8] c"../sound/pci/ymfpci/ymfpci.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 126, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant [35 x i8] c"switch.table.snd_card_ymfpci_probe\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_fm_port255, ptr @__UNIQUE_ID_fm_porttype254, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_joystick_port257, ptr @__UNIQUE_ID_joystick_porttype256, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_mpu_port253, ptr @__UNIQUE_ID_mpu_porttype252, ptr @__UNIQUE_ID_rear_switch259, ptr @__UNIQUE_ID_rear_switchtype258, ptr @__exitcall_ymfpci_driver_exit, ptr @__initcall__kmod_snd_ymfpci__260_347_ymfpci_driver_init6, ptr @__param_enable, ptr @__param_fm_port, ptr @__param_id, ptr @__param_index, ptr @__param_joystick_port, ptr @__param_mpu_port, ptr @__param_rear_switch, ptr @snd_card_ymfpci_probe._entry, ptr @snd_card_ymfpci_probe._entry.21, ptr @snd_card_ymfpci_probe._entry.24, ptr @snd_card_ymfpci_probe._entry_ptr, ptr @snd_card_ymfpci_probe._entry_ptr.23, ptr @snd_card_ymfpci_probe._entry_ptr.27, ptr @snd_ymfpci_create_gameport._entry, ptr @snd_ymfpci_create_gameport._entry.31, ptr @snd_ymfpci_create_gameport._entry.34, ptr @snd_ymfpci_create_gameport._entry.37, ptr @snd_ymfpci_create_gameport._entry_ptr, ptr @snd_ymfpci_create_gameport._entry_ptr.33, ptr @snd_ymfpci_create_gameport._entry_ptr.36, ptr @snd_ymfpci_create_gameport._entry_ptr.39, ptr @ymfpci_driver_exit, ptr @ymfpci_driver, ptr @index, ptr @id, ptr @enable, ptr @mpu_port, ptr @fm_port, ptr @joystick_port, ptr @rear_switch, ptr @.str, ptr @snd_ymfpci_ids, ptr @snd_card_ymfpci_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @switch.table.snd_card_ymfpci_probe], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ymfpci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joystick_port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rear_switch to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_ids to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_ymfpci_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_ymfpci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_ymfpci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_ymfpci_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_create_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_create_gameport._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_create_gameport._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ymfpci_create_gameport._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_card_ymfpci_probe to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ymfpci_free_gameport(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gameport = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gameport_unregister_port(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gameport, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ymfpci_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ymfpci_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ymfpci_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @ymfpci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_ymfpci_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #0 align 64 {
entry:
  %card = alloca ptr, align 4
  %opl3 = alloca ptr, align 4
  %old_legacy_ctrl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opl3) #10
  %1 = ptrtoint ptr %opl3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %opl3, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %old_legacy_ctrl) #10
  %2 = ptrtoint ptr %old_legacy_ctrl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %old_legacy_ctrl, align 2, !annotation !159
  %3 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp = icmp sgt i32 %3, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @snd_card_ymfpci_probe.dev, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx3 = getelementptr [32 x i32], ptr @index, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %call = call i32 @snd_card_new(ptr noundef %dev, i32 noundef %7, ptr noundef %9, ptr noundef null, i32 noundef 3016, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 8
  %device = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %sw.epilog [
    i32 4, label %if.end7.if.else_crit_edge
    i32 13, label %sw.bb8
    i32 10, label %sw.bb9
    i32 12, label %sw.bb10
    i32 16, label %if.end7.if.then15_crit_edge
    i32 18, label %sw.bb12
  ]

if.end7.if.then15_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sw.bb8:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sw.bb12:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

sw.epilog:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %15)
  %cmp14 = icmp ugt i32 %15, 15
  br i1 %cmp14, label %sw.epilog.if.then15_crit_edge, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sw.epilog.if.then15_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %sw.epilog.if.then15_crit_edge, %sw.bb12, %if.end7.if.then15_crit_edge
  %model.0360 = phi ptr [ @.str.11, %sw.epilog.if.then15_crit_edge ], [ @.str.10, %sw.bb12 ], [ @.str.8, %if.end7.if.then15_crit_edge ]
  %str.0359 = phi ptr [ @.str.11, %sw.epilog.if.then15_crit_edge ], [ @.str.9, %sw.bb12 ], [ @.str.7, %if.end7.if.then15_crit_edge ]
  %17 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx16 = getelementptr [32 x i32], ptr @fm_port, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp17 = icmp eq i32 %19, 1
  br i1 %cmp17, label %if.then18, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx19, align 8
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx16, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then15.if.end21_crit_edge
  %23 = phi i32 [ %21, %if.then18 ], [ %19, %if.then15.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp23 = icmp sgt i32 %23, 0
  br i1 %cmp23, label %if.end28, label %if.end21.if.end35_crit_edge

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end28:                                         ; preds = %if.end21
  %call27 = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %23, i32 noundef 4, ptr noundef nonnull @.str.12) #10
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end28.if.end35_crit_edge, label %if.then30

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %24 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx32 = getelementptr [32 x i32], ptr @fm_port, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx32, align 4
  %conv33 = trunc i32 %26 to i16
  %call34 = call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef 96, i16 noundef zeroext %conv33) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end28.if.end35_crit_edge, %if.end21.if.end35_crit_edge
  %fm_res.0363 = phi ptr [ %call27, %if.then30 ], [ null, %if.end28.if.end35_crit_edge ], [ null, %if.end21.if.end35_crit_edge ]
  %legacy_ctrl.0 = phi i16 [ 2, %if.then30 ], [ 0, %if.end28.if.end35_crit_edge ], [ 0, %if.end21.if.end35_crit_edge ]
  %27 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx36 = getelementptr [32 x i32], ptr @mpu_port, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp37 = icmp eq i32 %29, 1
  br i1 %cmp37, label %if.then39, label %if.end35.if.end44_crit_edge

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx41, align 8
  %add = add i32 %31, 32
  %32 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %arrayidx36, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end35.if.end44_crit_edge
  %33 = phi i32 [ %add, %if.then39 ], [ %29, %if.end35.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp46 = icmp sgt i32 %33, 0
  br i1 %cmp46, label %if.end52, label %if.end44.if.end139_crit_edge

if.end44.if.end139_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.end52:                                         ; preds = %if.end44
  %call51 = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %33, i32 noundef 2, ptr noundef nonnull @.str.13) #10
  %tobool53.not = icmp eq ptr %call51, null
  br i1 %tobool53.not, label %if.end52.if.end139_crit_edge, label %if.then54

if.end52.if.end139_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %34 = or i16 %legacy_ctrl.0, 8
  %35 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx58 = getelementptr [32 x i32], ptr @mpu_port, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx58, align 4
  %conv59 = trunc i32 %37 to i16
  %call60 = call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef 100, i16 noundef zeroext %conv59) #10
  br label %if.end139

if.else:                                          ; preds = %sw.epilog.if.else_crit_edge, %sw.bb10, %sw.bb9, %sw.bb8, %if.end7.if.else_crit_edge
  %model.0351 = phi ptr [ @.str.11, %sw.epilog.if.else_crit_edge ], [ @.str.2, %if.end7.if.else_crit_edge ], [ @.str.2, %sw.bb8 ], [ @.str.5, %sw.bb9 ], [ @.str.5, %sw.bb10 ]
  %str.0349 = phi ptr [ @.str.11, %sw.epilog.if.else_crit_edge ], [ @.str.1, %if.end7.if.else_crit_edge ], [ @.str.3, %sw.bb8 ], [ @.str.4, %sw.bb9 ], [ @.str.6, %sw.bb10 ]
  %38 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx62 = getelementptr [32 x i32], ptr @fm_port, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx62, align 4
  %41 = add i32 %40, -904
  %42 = call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %42)
  %43 = icmp ult i32 %42, 5
  br i1 %43, label %switch.hole_check, label %if.else.sw.epilog81.thread_crit_edge

if.else.sw.epilog81.thread_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog81.thread

sw.epilog81.thread:                               ; preds = %switch.hole_check.sw.epilog81.thread_crit_edge, %if.else.sw.epilog81.thread_crit_edge
  %44 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx62, align 4
  br label %if.else95

switch.hole_check:                                ; preds = %if.else
  %switch.maskindex = trunc i32 %42 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %45 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %switch.lobit.not = icmp eq i8 %45, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog81.thread_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog81.thread_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog81.thread

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp83 = icmp sgt i32 %40, 0
  br i1 %cmp83, label %if.end89, label %switch.lookup.if.else95_crit_edge

switch.lookup.if.else95_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else95

if.end89:                                         ; preds = %switch.lookup
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.snd_card_ymfpci_probe, i32 0, i32 %42
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %46)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call88 = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %40, i32 noundef 4, ptr noundef nonnull @.str.12) #10
  %tobool90.not = icmp eq ptr %call88, null
  br i1 %tobool90.not, label %if.end89.if.else95_crit_edge, label %if.end89.if.end99_crit_edge

if.end89.if.end99_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.end89.if.else95_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else95

if.else95:                                        ; preds = %if.end89.if.else95_crit_edge, %switch.lookup.if.else95_crit_edge, %sw.epilog81.thread
  %47 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx98 = getelementptr [32 x i32], ptr @fm_port, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx98, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else95, %if.end89.if.end99_crit_edge
  %fm_res.1372 = phi ptr [ null, %if.else95 ], [ %call88, %if.end89.if.end99_crit_edge ]
  %legacy_ctrl.1 = phi i16 [ 0, %if.else95 ], [ 2, %if.end89.if.end99_crit_edge ]
  %legacy_ctrl2.1 = phi i16 [ 2048, %if.else95 ], [ %switch.load, %if.end89.if.end99_crit_edge ]
  %49 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx100 = getelementptr [32 x i32], ptr @mpu_port, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx100, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %51, label %if.end127.thread [
    i32 816, label %if.end99.if.end127_crit_edge
    i32 768, label %sw.bb105
    i32 818, label %sw.bb109
    i32 820, label %sw.bb113
  ]

if.end99.if.end127_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

sw.bb105:                                         ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %53 = or i16 %legacy_ctrl2.1, 16
  br label %if.end127

sw.bb109:                                         ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %54 = or i16 %legacy_ctrl2.1, 32
  br label %if.end127

sw.bb113:                                         ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %55 = or i16 %legacy_ctrl2.1, 48
  br label %if.end127

if.end127.thread:                                 ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx100, align 4
  br label %if.else133

if.end127:                                        ; preds = %sw.bb113, %sw.bb109, %sw.bb105, %if.end99.if.end127_crit_edge
  %legacy_ctrl2.2.ph = phi i16 [ %legacy_ctrl2.1, %if.end99.if.end127_crit_edge ], [ %53, %sw.bb105 ], [ %54, %sw.bb109 ], [ %55, %sw.bb113 ]
  %call126 = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %51, i32 noundef 2, ptr noundef nonnull @.str.13) #10
  %tobool128.not = icmp eq ptr %call126, null
  br i1 %tobool128.not, label %if.end127.if.else133_crit_edge, label %if.then129

if.end127.if.else133_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else133

if.then129:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %57 = or i16 %legacy_ctrl.1, 8
  br label %if.end139

if.else133:                                       ; preds = %if.end127.if.else133_crit_edge, %if.end127.thread
  %legacy_ctrl2.2376381 = phi i16 [ %legacy_ctrl2.1, %if.end127.thread ], [ %legacy_ctrl2.2.ph, %if.end127.if.else133_crit_edge ]
  %58 = and i16 %legacy_ctrl2.2376381, -49
  %59 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx137 = getelementptr [32 x i32], ptr @mpu_port, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx137, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.else133, %if.then129, %if.then54, %if.end52.if.end139_crit_edge, %if.end44.if.end139_crit_edge
  %model.0350 = phi ptr [ %model.0360, %if.then54 ], [ %model.0360, %if.end52.if.end139_crit_edge ], [ %model.0351, %if.then129 ], [ %model.0351, %if.else133 ], [ %model.0360, %if.end44.if.end139_crit_edge ]
  %str.0348 = phi ptr [ %str.0359, %if.then54 ], [ %str.0359, %if.end52.if.end139_crit_edge ], [ %str.0349, %if.then129 ], [ %str.0349, %if.else133 ], [ %str.0359, %if.end44.if.end139_crit_edge ]
  %fm_res.2 = phi ptr [ %fm_res.0363, %if.then54 ], [ %fm_res.0363, %if.end52.if.end139_crit_edge ], [ %fm_res.1372, %if.then129 ], [ %fm_res.1372, %if.else133 ], [ %fm_res.0363, %if.end44.if.end139_crit_edge ]
  %mpu_res.2 = phi ptr [ %call51, %if.then54 ], [ null, %if.end52.if.end139_crit_edge ], [ %call126, %if.then129 ], [ null, %if.else133 ], [ null, %if.end44.if.end139_crit_edge ]
  %legacy_ctrl.2 = phi i16 [ %34, %if.then54 ], [ %legacy_ctrl.0, %if.end52.if.end139_crit_edge ], [ %57, %if.then129 ], [ %legacy_ctrl.1, %if.else133 ], [ %legacy_ctrl.0, %if.end44.if.end139_crit_edge ]
  %legacy_ctrl2.3 = phi i16 [ 2048, %if.then54 ], [ 2048, %if.end52.if.end139_crit_edge ], [ %legacy_ctrl2.2.ph, %if.then129 ], [ %58, %if.else133 ], [ 2048, %if.end44.if.end139_crit_edge ]
  %tobool140.not = icmp eq ptr %mpu_res.2, null
  %61 = or i16 %legacy_ctrl.2, 16
  %62 = or i16 %legacy_ctrl2.3, -32768
  %legacy_ctrl.3 = select i1 %tobool140.not, i16 %legacy_ctrl.2, i16 %61
  %legacy_ctrl2.4 = select i1 %tobool140.not, i16 %legacy_ctrl2.3, i16 %62
  %call149 = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef 64, ptr noundef nonnull %old_legacy_ctrl) #10
  %call150 = call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef 64, i16 noundef zeroext %legacy_ctrl.3) #10
  %call151 = call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef 66, i16 noundef zeroext %legacy_ctrl2.4) #10
  %63 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card, align 4
  %65 = ptrtoint ptr %old_legacy_ctrl to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %old_legacy_ctrl, align 2
  %call152 = call i32 @snd_ymfpci_create(ptr noundef %64, ptr noundef %pci, i16 noundef zeroext %66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %if.end139.cleanup_crit_edge, label %if.end156

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end156:                                        ; preds = %if.end139
  %67 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %68, i32 0, i32 2
  %call157 = call ptr @strcpy(ptr noundef %driver, ptr noundef nonnull %str.0348) #13
  %shortname = getelementptr inbounds %struct.snd_card, ptr %68, i32 0, i32 3
  %call159 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname, ptr noundef nonnull @.str.14, ptr noundef nonnull %model.0350, ptr noundef nonnull %str.0348)
  %69 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %70, i32 0, i32 4
  %shortname161 = getelementptr inbounds %struct.snd_card, ptr %70, i32 0, i32 3
  %reg_area_phys = getelementptr inbounds %struct.snd_ymfpci, ptr %13, i32 0, i32 3
  %71 = ptrtoint ptr %reg_area_phys to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg_area_phys, align 4
  %73 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %13, align 4
  %call163 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.15, ptr noundef %shortname161, i32 noundef %72, i32 noundef %74)
  %call164 = call i32 @snd_ymfpci_pcm(ptr noundef %13, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.end156.cleanup_crit_edge, label %if.end168

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end168:                                        ; preds = %if.end156
  %call169 = call i32 @snd_ymfpci_pcm_spdif(ptr noundef %13, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %if.end168.cleanup_crit_edge, label %if.end173

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end173:                                        ; preds = %if.end168
  %75 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx174 = getelementptr [32 x i8], ptr @rear_switch, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx174, align 1, !range !160
  %78 = zext i8 %77 to i32
  %call177 = call i32 @snd_ymfpci_mixer(ptr noundef %13, i32 noundef %78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %if.end173.cleanup_crit_edge, label %if.end181

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end181:                                        ; preds = %if.end173
  %ac97 = getelementptr inbounds %struct.snd_ymfpci, ptr %13, i32 0, i32 30
  %79 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ac97, align 4
  %ext_id = getelementptr inbounds %struct.snd_ac97, ptr %80, i32 0, i32 15
  %81 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %ext_id, align 2
  %83 = and i16 %82, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool184.not = icmp eq i16 %83, 0
  br i1 %tobool184.not, label %if.end181.if.end196_crit_edge, label %if.then185

if.end181.if.end196_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196

if.then185:                                       ; preds = %if.end181
  %call186 = call i32 @snd_ymfpci_pcm_4ch(ptr noundef %13, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.then185.cleanup_crit_edge, label %if.end190

if.then185.cleanup_crit_edge:                     ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end190:                                        ; preds = %if.then185
  %call191 = call i32 @snd_ymfpci_pcm2(ptr noundef %13, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp192 = icmp slt i32 %call191, 0
  br i1 %cmp192, label %if.end190.cleanup_crit_edge, label %if.end190.if.end196_crit_edge

if.end190.if.end196_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196

if.end190.cleanup_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end196:                                        ; preds = %if.end190.if.end196_crit_edge, %if.end181.if.end196_crit_edge
  %call197 = call i32 @snd_ymfpci_timer(ptr noundef %13, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %if.end196.cleanup_crit_edge, label %if.end201

if.end196.cleanup_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end201:                                        ; preds = %if.end196
  br i1 %tobool140.not, label %if.end201.if.end216_crit_edge, label %if.then203

if.end201.if.end216_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end216

if.then203:                                       ; preds = %if.end201
  %84 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %card, align 4
  %86 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx204 = getelementptr [32 x i32], ptr @mpu_port, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx204, align 4
  %rawmidi = getelementptr inbounds %struct.snd_ymfpci, ptr %13, i32 0, i32 31
  %call205 = call i32 @snd_mpu401_uart_new(ptr noundef %85, i32 noundef 0, i16 noundef zeroext 14, i32 noundef %88, i32 noundef 36, i32 noundef -1, ptr noundef %rawmidi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %do.end, label %if.then203.if.end216_crit_edge

if.then203.if.end216_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end216

do.end:                                           ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %card, align 4
  %dev209 = getelementptr inbounds %struct.snd_card, ptr %90, i32 0, i32 27
  %91 = ptrtoint ptr %dev209 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev209, align 8
  %93 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx210 = getelementptr [32 x i32], ptr @mpu_port, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx210, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.16, i32 noundef %95) #14
  %96 = and i16 %legacy_ctrl.3, -17
  %call214 = call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef 64, i16 noundef zeroext %96) #10
  br label %if.end216

if.end216:                                        ; preds = %do.end, %if.then203.if.end216_crit_edge, %if.end201.if.end216_crit_edge
  %legacy_ctrl.4 = phi i16 [ %96, %do.end ], [ %61, %if.then203.if.end216_crit_edge ], [ %legacy_ctrl.2, %if.end201.if.end216_crit_edge ]
  %tobool217.not = icmp eq ptr %fm_res.2, null
  br i1 %tobool217.not, label %if.end216.if.end246_crit_edge, label %if.then218

if.end216.if.end246_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end246

if.then218:                                       ; preds = %if.end216
  %97 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %card, align 4
  %99 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx219 = getelementptr [32 x i32], ptr @fm_port, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx219, align 4
  %add221 = add i32 %101, 2
  %call222 = call i32 @snd_opl3_create(ptr noundef %98, i32 noundef %101, i32 noundef %add221, i16 noundef zeroext 768, i32 noundef 1, ptr noundef nonnull %opl3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %do.end228, label %if.else235

do.end228:                                        ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %card, align 4
  %dev229 = getelementptr inbounds %struct.snd_card, ptr %103, i32 0, i32 27
  %104 = ptrtoint ptr %dev229 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev229, align 8
  %106 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %arrayidx230 = getelementptr [32 x i32], ptr @fm_port, i32 0, i32 %106
  %107 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx230, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %105, ptr noundef nonnull @.str.22, i32 noundef %108) #14
  %109 = and i16 %legacy_ctrl.4, -3
  %call234 = call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef 64, i16 noundef zeroext %109) #10
  br label %if.end246

if.else235:                                       ; preds = %if.then218
  %110 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %opl3, align 4
  %call236 = call i32 @snd_opl3_hwdep_new(ptr noundef %111, i32 noundef 0, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %do.end242, label %if.else235.if.end246_crit_edge

if.else235.if.end246_crit_edge:                   ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end246

do.end242:                                        ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %card, align 4
  %dev243 = getelementptr inbounds %struct.snd_card, ptr %113, i32 0, i32 27
  %114 = ptrtoint ptr %dev243 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev243, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.25) #14
  br label %cleanup

if.end246:                                        ; preds = %if.else235.if.end246_crit_edge, %do.end228, %if.end216.if.end246_crit_edge
  %legacy_ctrl.5 = phi i16 [ %109, %do.end228 ], [ %legacy_ctrl.4, %if.else235.if.end246_crit_edge ], [ %legacy_ctrl.4, %if.end216.if.end246_crit_edge ]
  %116 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %conv247 = zext i16 %legacy_ctrl.5 to i32
  %conv248 = zext i16 %legacy_ctrl2.4 to i32
  call fastcc void @snd_ymfpci_create_gameport(ptr noundef %13, i32 noundef %116, i32 noundef %conv247, i32 noundef %conv248)
  %117 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %card, align 4
  %call250 = call i32 @snd_card_register(ptr noundef %118) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %cmp251 = icmp slt i32 %call250, 0
  br i1 %cmp251, label %if.end246.cleanup_crit_edge, label %if.end254

if.end246.cleanup_crit_edge:                      ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end254:                                        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %121 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %driver_data.i.i, align 4
  %122 = load i32, ptr @snd_card_ymfpci_probe.dev, align 4
  %inc255 = add i32 %122, 1
  store i32 %inc255, ptr @snd_card_ymfpci_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end254, %if.end246.cleanup_crit_edge, %do.end242, %if.end196.cleanup_crit_edge, %if.end190.cleanup_crit_edge, %if.then185.cleanup_crit_edge, %if.end173.cleanup_crit_edge, %if.end168.cleanup_crit_edge, %if.end156.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end254 ], [ %call236, %do.end242 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call152, %if.end139.cleanup_crit_edge ], [ %call164, %if.end156.cleanup_crit_edge ], [ %call169, %if.end168.cleanup_crit_edge ], [ %call177, %if.end173.cleanup_crit_edge ], [ %call186, %if.then185.cleanup_crit_edge ], [ %call191, %if.end190.cleanup_crit_edge ], [ %call197, %if.end196.cleanup_crit_edge ], [ %call250, %if.end246.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %old_legacy_ctrl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opl3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ymfpci_create(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ymfpci_pcm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ymfpci_pcm_spdif(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ymfpci_mixer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ymfpci_pcm_4ch(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ymfpci_pcm2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ymfpci_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_create(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_hwdep_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ymfpci_create_gameport(ptr nocapture noundef %chip, i32 noundef %dev, i32 noundef %legacy_ctrl, i32 noundef %legacy_ctrl2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [32 x i32], ptr @joystick_port, i32 0, i32 %dev
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 34
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %5)
  %cmp = icmp ugt i16 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %cmp3, label %if.then5, label %if.then2.if.then42_crit_edge

if.then2.if.then42_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.then5:                                         ; preds = %if.then2
  %arrayidx7 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 2
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.then42_crit_edge

if.then5.if.then42_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %cmp3, label %if.end20, label %if.end28

if.end20:                                         ; preds = %if.else
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 513, i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef 0) #10
  %tobool21.not = icmp eq ptr %call, null
  br i1 %tobool21.not, label %if.end20.1, label %if.end20.if.end54_crit_edge

if.end20.if.end54_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end20.1:                                       ; preds = %if.end20
  %call.1 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 514, i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef 0) #10
  %tobool21.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool21.not.1, label %if.end20.3, label %if.end20.1.if.end40_crit_edge

if.end20.1.if.end40_crit_edge:                    ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end20.3:                                       ; preds = %if.end20.1
  %call.3 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 516, i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef 0) #10
  %tobool21.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool21.not.3, label %if.end20.4, label %if.end20.3.sw.bb31_crit_edge

if.end20.3.sw.bb31_crit_edge:                     ; preds = %if.end20.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31

if.end20.4:                                       ; preds = %if.end20.3
  %call.4 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 517, i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef 0) #10
  %tobool21.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool21.not.4, label %for.inc.4, label %if.end20.4.sw.bb33_crit_edge

if.end20.4.sw.bb33_crit_edge:                     ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

for.inc.4:                                        ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 35
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev26 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.29) #14
  br label %cleanup

if.end28:                                         ; preds = %if.else
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %1, label %do.end37 [
    i32 513, label %if.end28.if.then42_crit_edge
    i32 514, label %if.end28.if.end40_crit_edge
    i32 516, label %if.end28.sw.bb31_crit_edge
    i32 517, label %if.end28.sw.bb33_crit_edge
  ]

if.end28.sw.bb33_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33

if.end28.sw.bb31_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb31

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end28.if.then42_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

sw.bb31:                                          ; preds = %if.end28.sw.bb31_crit_edge, %if.end20.3.sw.bb31_crit_edge
  %r.327 = phi ptr [ null, %if.end28.sw.bb31_crit_edge ], [ %call.3, %if.end20.3.sw.bb31_crit_edge ]
  br label %if.end40

sw.bb33:                                          ; preds = %if.end28.sw.bb33_crit_edge, %if.end20.4.sw.bb33_crit_edge
  %r.332 = phi ptr [ null, %if.end28.sw.bb33_crit_edge ], [ %call.4, %if.end20.4.sw.bb33_crit_edge ]
  br label %if.end40

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %card38 = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 35
  %13 = ptrtoint ptr %card38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card38, align 4
  %dev39 = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev39, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.32, i32 noundef %1) #14
  br label %cleanup

if.end40:                                         ; preds = %sw.bb33, %sw.bb31, %if.end28.if.end40_crit_edge, %if.end20.1.if.end40_crit_edge
  %.sink = phi i32 [ 128, %sw.bb31 ], [ 192, %sw.bb33 ], [ 64, %if.end20.1.if.end40_crit_edge ], [ 64, %if.end28.if.end40_crit_edge ]
  %io_port.118 = phi i32 [ 516, %sw.bb31 ], [ 517, %sw.bb33 ], [ 514, %if.end20.1.if.end40_crit_edge ], [ %1, %if.end28.if.end40_crit_edge ]
  %r.317 = phi ptr [ %r.327, %sw.bb31 ], [ %r.332, %sw.bb33 ], [ %call.1, %if.end20.1.if.end40_crit_edge ], [ null, %if.end28.if.end40_crit_edge ]
  %or30 = or i32 %.sink, %legacy_ctrl2
  %tobool41.not = icmp eq ptr %r.317, null
  br i1 %tobool41.not, label %if.end40.if.then42_crit_edge, label %if.end40.if.end54_crit_edge

if.end40.if.end54_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end40.if.then42_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.then42:                                        ; preds = %if.end40.if.then42_crit_edge, %if.end28.if.then42_crit_edge, %if.then5.if.then42_crit_edge, %if.then2.if.then42_crit_edge
  %io_port.210 = phi i32 [ %io_port.118, %if.end40.if.then42_crit_edge ], [ %1, %if.then2.if.then42_crit_edge ], [ %7, %if.then5.if.then42_crit_edge ], [ %1, %if.end28.if.then42_crit_edge ]
  %legacy_ctrl2.addr.08 = phi i32 [ %or30, %if.end40.if.then42_crit_edge ], [ %legacy_ctrl2, %if.then2.if.then42_crit_edge ], [ %legacy_ctrl2, %if.then5.if.then42_crit_edge ], [ %legacy_ctrl2, %if.end28.if.then42_crit_edge ]
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %call45 = tail call ptr @__devm_request_region(ptr noundef %dev44, ptr noundef nonnull @ioport_resource, i32 noundef %io_port.210, i32 noundef 1, ptr noundef nonnull @.str.28) #10
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %do.end50, label %if.then42.if.end54_crit_edge

if.then42.if.end54_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end50:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  %card51 = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 35
  %19 = ptrtoint ptr %card51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card51, align 4
  %dev52 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev52, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.35, i32 noundef %io_port.210) #14
  br label %cleanup

if.end54:                                         ; preds = %if.then42.if.end54_crit_edge, %if.end40.if.end54_crit_edge, %if.end20.if.end54_crit_edge
  %io_port.29 = phi i32 [ %io_port.210, %if.then42.if.end54_crit_edge ], [ %io_port.118, %if.end40.if.end54_crit_edge ], [ 513, %if.end20.if.end54_crit_edge ]
  %legacy_ctrl2.addr.07 = phi i32 [ %legacy_ctrl2.addr.08, %if.then42.if.end54_crit_edge ], [ %or30, %if.end40.if.end54_crit_edge ], [ %legacy_ctrl2, %if.end20.if.end54_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 1248) #15
  %gameport = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 6
  %24 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %gameport, align 4
  %tobool56.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool56.not, label %do.end60, label %if.end63

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %card61 = getelementptr inbounds %struct.snd_ymfpci, ptr %chip, i32 0, i32 35
  %25 = ptrtoint ptr %card61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card61, align 4
  %dev62 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev62, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.38) #14
  br label %cleanup

if.end63:                                         ; preds = %if.end54
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.40, i32 noundef 32) #10
  %29 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end63.pci_name.exit_crit_edge

if.end63.pci_name.exit_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end63.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end63.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i.i) #10
  %35 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci, align 4
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %parent = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev67, ptr %parent, align 8
  %io = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %io_port.29, ptr %io, align 4
  %device70 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 8
  %39 = ptrtoint ptr %device70 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device70, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %40)
  %cmp72 = icmp ugt i16 %40, 15
  br i1 %cmp72, label %if.then74, label %pci_name.exit.if.end78_crit_edge

pci_name.exit.if.end78_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then74:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv76 = trunc i32 %io_port.29 to i16
  %call77 = tail call i32 @pci_write_config_word(ptr noundef %36, i32 noundef 102, i16 noundef zeroext %conv76) #10
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %pci_name.exit.if.end78_crit_edge
  %41 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci, align 4
  %43 = trunc i32 %legacy_ctrl to i16
  %conv81 = or i16 %43, 4
  %call82 = tail call i32 @pci_write_config_word(ptr noundef %42, i32 noundef 64, i16 noundef zeroext %conv81) #10
  %44 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci, align 4
  %conv84 = trunc i32 %legacy_ctrl2.addr.07 to i16
  %call85 = tail call i32 @pci_write_config_word(ptr noundef %45, i32 noundef 66, i16 noundef zeroext %conv84) #10
  %46 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gameport, align 4
  tail call void @__gameport_register_port(ptr noundef %47, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %do.end60, %do.end50, %do.end37, %for.inc.4, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 31, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 32, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 33, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 34, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 35, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 36, i32 1}
!22 = !{ptr @__param_mpu_port, !23, !"__param_mpu_port", i1 false, i1 false}
!23 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 37, i32 1}
!24 = !{ptr @__UNIQUE_ID_mpu_porttype252, !23, !"__UNIQUE_ID_mpu_porttype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_mpu_port253, !26, !"__UNIQUE_ID_mpu_port253", i1 false, i1 false}
!26 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 38, i32 1}
!27 = !{ptr @__param_fm_port, !28, !"__param_fm_port", i1 false, i1 false}
!28 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 39, i32 1}
!29 = !{ptr @__UNIQUE_ID_fm_porttype254, !28, !"__UNIQUE_ID_fm_porttype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_fm_port255, !31, !"__UNIQUE_ID_fm_port255", i1 false, i1 false}
!31 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 40, i32 1}
!32 = !{ptr @__param_joystick_port, !33, !"__param_joystick_port", i1 false, i1 false}
!33 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 42, i32 1}
!34 = !{ptr @__UNIQUE_ID_joystick_porttype256, !33, !"__UNIQUE_ID_joystick_porttype256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_joystick_port257, !36, !"__UNIQUE_ID_joystick_port257", i1 false, i1 false}
!36 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 43, i32 1}
!37 = !{ptr @__param_rear_switch, !38, !"__param_rear_switch", i1 false, i1 false}
!38 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 45, i32 1}
!39 = !{ptr @__UNIQUE_ID_rear_switchtype258, !38, !"__UNIQUE_ID_rear_switchtype258", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_rear_switch259, !41, !"__UNIQUE_ID_rear_switch259", i1 false, i1 false}
!41 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 46, i32 1}
!42 = !{ptr @__initcall__kmod_snd_ymfpci__260_347_ymfpci_driver_init6, !43, !"__initcall__kmod_snd_ymfpci__260_347_ymfpci_driver_init6", i1 false, i1 false}
!43 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 347, i32 1}
!44 = !{ptr @__exitcall_ymfpci_driver_exit, !43, !"__exitcall_ymfpci_driver_exit", i1 false, i1 false}
!45 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!46 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!47 = !{ptr @index, !48, !"index", i1 false, i1 false}
!48 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 21, i32 12}
!49 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!50 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!51 = !{ptr @id, !52, !"id", i1 false, i1 false}
!52 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 22, i32 14}
!53 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!54 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!55 = !{ptr @enable, !56, !"enable", i1 false, i1 false}
!56 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 23, i32 13}
!57 = !{ptr @__param_str_mpu_port, !23, !"__param_str_mpu_port", i1 false, i1 false}
!58 = !{ptr @__param_arr_mpu_port, !23, !"__param_arr_mpu_port", i1 false, i1 false}
!59 = !{ptr @mpu_port, !60, !"mpu_port", i1 false, i1 false}
!60 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 25, i32 13}
!61 = !{ptr @__param_str_fm_port, !28, !"__param_str_fm_port", i1 false, i1 false}
!62 = !{ptr @__param_arr_fm_port, !28, !"__param_arr_fm_port", i1 false, i1 false}
!63 = !{ptr @fm_port, !64, !"fm_port", i1 false, i1 false}
!64 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 24, i32 13}
!65 = !{ptr @__param_str_joystick_port, !33, !"__param_str_joystick_port", i1 false, i1 false}
!66 = !{ptr @__param_arr_joystick_port, !33, !"__param_arr_joystick_port", i1 false, i1 false}
!67 = !{ptr @joystick_port, !68, !"joystick_port", i1 false, i1 false}
!68 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 27, i32 13}
!69 = !{ptr @__param_str_rear_switch, !38, !"__param_str_rear_switch", i1 false, i1 false}
!70 = !{ptr @__param_arr_rear_switch, !38, !"__param_arr_rear_switch", i1 false, i1 false}
!71 = !{ptr @rear_switch, !72, !"rear_switch", i1 false, i1 false}
!72 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 29, i32 13}
!73 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ymfpci_driver, !75, !"ymfpci_driver", i1 false, i1 false}
!75 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 336, i32 26}
!76 = !{ptr @snd_ymfpci_ids, !77, !"snd_ymfpci_ids", i1 false, i1 false}
!77 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 48, i32 35}
!78 = !{ptr @snd_card_ymfpci_probe.dev, !79, !"dev", i1 false, i1 false}
!79 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 156, i32 13}
!80 = !{ptr @.str.1, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 180, i32 21}
!82 = !{ptr @.str.2, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 180, i32 40}
!84 = !{ptr @.str.3, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 181, i32 21}
!86 = !{ptr @.str.4, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 182, i32 21}
!88 = !{ptr @.str.5, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 182, i32 40}
!90 = !{ptr @.str.6, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 183, i32 21}
!92 = !{ptr @.str.7, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 184, i32 21}
!94 = !{ptr @.str.8, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 184, i32 40}
!96 = !{ptr @.str.9, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 185, i32 21}
!98 = !{ptr @.str.10, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 185, i32 40}
!100 = !{ptr @.str.11, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 186, i32 25}
!102 = !{ptr @.str.12, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 198, i32 13}
!104 = !{ptr @.str.13, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 209, i32 14}
!106 = !{ptr @.str.14, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 261, i32 27}
!108 = !{ptr @.str.15, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 262, i32 26}
!110 = !{ptr @.str.16, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 298, i32 4}
!112 = !{ptr @.str.17, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.18, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.19, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.20, !111, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @snd_card_ymfpci_probe._entry, !111, !"_entry", i1 false, i1 false}
!117 = !{ptr @snd_card_ymfpci_probe._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.22, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 311, i32 4}
!120 = !{ptr @snd_card_ymfpci_probe._entry.21, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @snd_card_ymfpci_probe._entry_ptr.23, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.25, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 319, i32 5}
!124 = !{ptr @.str.26, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @snd_card_ymfpci_probe._entry.24, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @snd_card_ymfpci_probe._entry_ptr.27, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.28, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 85, i32 9}
!129 = !{ptr @.str.29, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 90, i32 5}
!131 = !{ptr @.str.30, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @snd_ymfpci_create_gameport._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @snd_ymfpci_create_gameport._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.32, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 101, i32 4}
!136 = !{ptr @snd_ymfpci_create_gameport._entry.31, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @snd_ymfpci_create_gameport._entry_ptr.33, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.35, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 111, i32 4}
!140 = !{ptr @snd_ymfpci_create_gameport._entry.34, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @snd_ymfpci_create_gameport._entry_ptr.36, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.38, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 119, i32 3}
!144 = !{ptr @snd_ymfpci_create_gameport._entry.37, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @snd_ymfpci_create_gameport._entry_ptr.39, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.40, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 125, i32 24}
!148 = !{ptr @.str.41, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/ymfpci/ymfpci.c", i32 126, i32 24}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{!"auto-init"}
!160 = !{i8 0, i8 2}
