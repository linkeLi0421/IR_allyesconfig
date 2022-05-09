; ModuleID = '/llk/IR_all_yes/sound/pci/vx222/vx222.c_pt.bc'
source_filename = "../sound/pci/vx222/vx222.c"
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
%struct.snd_vx_hardware = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_vx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_vx222 = type { %struct.vx_core, ptr, [2 x i32], i32, i32, i32, [2 x i32], i32 }
%struct.vx_core = type { ptr, [2 x ptr], i32, i32, ptr, ptr, %struct.mutex, i32, i32, ptr, ptr, %struct.vx_rmh, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vx_ibl_info, [2 x [2 x i32]], [2 x [4 x i32]], [4 x i8], [4 x i32], [4 x i8], %struct.mutex, [4 x ptr] }
%struct.vx_rmh = type { i16, i16, [16 x i32], [16 x i32], i16 }
%struct.vx_ibl_info = type { i32, i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@__UNIQUE_ID_author238 = internal constant [46 x i8] c"snd_vx222.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [44 x i8] c"snd_vx222.description=Digigram VX222 V2/Mic\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [41 x i8] c"snd_vx222.file=sound/pci/vx222/snd-vx222\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [22 x i8] c"snd_vx222.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_vx222.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype242 = internal constant [38 x i8] c"snd_vx222.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index243 = internal constant [63 x i8] c"snd_vx222.parm=index:Index value for Digigram VX222 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_vx222.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype244 = internal constant [37 x i8] c"snd_vx222.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id245 = internal constant [58 x i8] c"snd_vx222.parm=id:ID string for Digigram VX222 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_vx222.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype246 = internal constant [40 x i8] c"snd_vx222.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable247 = internal constant [55 x i8] c"snd_vx222.parm=enable:Enable Digigram VX222 soundcard.\00", section ".modinfo", align 1
@__param_str_mic = internal constant [14 x i8] c"snd_vx222.mic\00", align 1
@__param_arr_mic = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @mic }, align 4
@__param_mic = internal constant %struct.kernel_param { ptr @__param_str_mic, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_mic } }, section "__param", align 4
@__UNIQUE_ID_mictype248 = internal constant [37 x i8] c"snd_vx222.parmtype=mic:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_mic249 = internal constant [38 x i8] c"snd_vx222.parm=mic:Enable Microphone.\00", section ".modinfo", align 1
@__param_str_ibl = internal constant [14 x i8] c"snd_vx222.ibl\00", align 1
@__param_arr_ibl = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @ibl }, align 4
@__param_ibl = internal constant %struct.kernel_param { ptr @__param_str_ibl, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_ibl } }, section "__param", align 4
@__UNIQUE_ID_ibltype250 = internal constant [36 x i8] c"snd_vx222.parmtype=ibl:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_ibl251 = internal constant [37 x i8] c"snd_vx222.parm=ibl:Capture IBL size.\00", section ".modinfo", align 1
@__initcall__kmod_snd_vx222__253_239_vx222_driver_init6 = internal global ptr @vx222_driver_init, section ".initcall6.init", align 4
@vx222_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_vx222_ids, ptr @snd_vx222_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_vx222_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_vx222_driver_exit = internal global ptr @vx222_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@mic = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@ibl = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_vx222\00", [22 x i8] zeroinitializer }, align 32
@snd_vx222_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36944, i32 4969, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 4969, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_vx222_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_vx222_suspend, ptr @snd_vx222_resume, ptr @snd_vx222_suspend, ptr @snd_vx222_resume, ptr @snd_vx222_suspend, ptr @snd_vx222_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_vx222_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vx222_old_hw = internal constant { %struct.snd_vx_hardware, [36 x i8] } { %struct.snd_vx_hardware { ptr @.str.5, i32 0, i32 1, i32 1, i32 1, i32 227, ptr @db_scale_old_vol }, [36 x i8] zeroinitializer }, align 32
@vx222_mic_hw = internal constant { %struct.snd_vx_hardware, [36 x i8] } { %struct.snd_vx_hardware { ptr @.str.6, i32 2, i32 1, i32 1, i32 1, i32 147, ptr @db_scale_akm }, [36 x i8] zeroinitializer }, align 32
@vx222_v2_hw = internal constant { %struct.snd_vx_hardware, [36 x i8] } { %struct.snd_vx_hardware { ptr @.str.7, i32 1, i32 1, i32 1, i32 1, i32 147, ptr @db_scale_akm }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s at 0x%lx & 0x%lx, irq %i\00", [36 x i8] zeroinitializer }, align 32
@snd_vx222_probe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_vx222_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/pci/vx222/vx222.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s at 0x%lx & 0x%lx, irq %i\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VX222/Old\00", [22 x i8] zeroinitializer }, align 32
@db_scale_old_vol = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -11350, i32 50], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VX222/Mic\00", [22 x i8] zeroinitializer }, align 32
@db_scale_akm = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7350, i32 50], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VX222/v2\00", [23 x i8] zeroinitializer }, align 32
@vx222_old_ops = external dso_local constant %struct.snd_vx_ops, align 4
@vx222_ops = external dso_local constant %struct.snd_vx_ops, align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VX222\00", [26 x i8] zeroinitializer }, align 32
@snd_vx222_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 135, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_vx222_create\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_vx222_create._entry_ptr = internal global ptr @snd_vx222_create._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"vx222_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 230, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 24, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 25, i32 14 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 26, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [4 x i8] c"mic\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 27, i32 13 }
@___asan_gen_.28 = private unnamed_addr constant [4 x i8] c"ibl\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 28, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 239, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"snd_vx222_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 49, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"snd_vx222_pm\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 224, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 149, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"vx222_old_hw\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 64, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"vx222_mic_hw\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 88, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"vx222_v2_hw\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 76, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 185, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 187, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 66, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"db_scale_old_vol\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 61, i32 14 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 90, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"db_scale_akm\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 62, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 78, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 126, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [27 x i8] c"../sound/pci/vx222/vx222.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 135, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_enable247, ptr @__UNIQUE_ID_enabletype246, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_ibl251, ptr @__UNIQUE_ID_ibltype250, ptr @__UNIQUE_ID_id245, ptr @__UNIQUE_ID_idtype244, ptr @__UNIQUE_ID_index243, ptr @__UNIQUE_ID_indextype242, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_mic249, ptr @__UNIQUE_ID_mictype248, ptr @__exitcall_vx222_driver_exit, ptr @__initcall__kmod_snd_vx222__253_239_vx222_driver_init6, ptr @__param_enable, ptr @__param_ibl, ptr @__param_id, ptr @__param_index, ptr @__param_mic, ptr @snd_vx222_create._entry, ptr @snd_vx222_create._entry_ptr, ptr @vx222_driver_exit, ptr @vx222_driver, ptr @index, ptr @id, ptr @enable, ptr @mic, ptr @ibl, ptr @.str, ptr @snd_vx222_ids, ptr @snd_vx222_pm, ptr @snd_vx222_probe.dev, ptr @vx222_old_hw, ptr @vx222_mic_hw, ptr @vx222_v2_hw, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @db_scale_old_vol, ptr @.str.6, ptr @db_scale_akm, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx222_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vx222_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vx222_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vx222_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx222_old_hw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx222_mic_hw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx222_v2_hw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_old_vol to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_akm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vx222_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vx222_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @vx222_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vx222_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @vx222_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vx222_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !105
  %1 = load i32, ptr @snd_vx222_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_vx222_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cond = icmp eq i32 %9, 0
  br i1 %cond, label %if.end7.sw.epilog_crit_edge, label %sw.default

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %10 = load i32, ptr @snd_vx222_probe.dev, align 4
  %arrayidx9 = getelementptr [32 x i8], ptr @mic, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  %vx222_v2_hw.vx222_mic_hw = select i1 %tobool10.not, ptr @vx222_v2_hw, ptr @vx222_mic_hw
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end7.sw.epilog_crit_edge
  %hw.0 = phi ptr [ @vx222_old_hw, %if.end7.sw.epilog_crit_edge ], [ %vx222_v2_hw.vx222_mic_hw, %sw.default ]
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  call void @pci_set_master(ptr noundef %pci) #6
  %type.i = getelementptr inbounds %struct.snd_vx_hardware, ptr %hw.0, i32 0, i32 1
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1.i = icmp eq i32 %16, 0
  %cond.i = select i1 %cmp1.i, ptr @vx222_old_ops, ptr @vx222_ops
  %call2.i = call ptr @snd_vx_create(ptr noundef %14, ptr noundef nonnull %hw.0, ptr noundef nonnull %cond.i, i32 noundef 36) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %pci5.i = getelementptr inbounds %struct.snd_vx222, ptr %call2.i, i32 0, i32 1
  %17 = ptrtoint ptr %pci5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pci, ptr %pci5.i, align 4
  %call6.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end4.i.cleanup_crit_edge, label %for.body.preheader.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end4.i
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 8
  %arrayidx11.i = getelementptr %struct.snd_vx222, ptr %call2.i, i32 0, i32 2, i32 0
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx11.i, align 4
  %arrayidx.1.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2
  %21 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.1.i, align 8
  %arrayidx11.1.i = getelementptr %struct.snd_vx222, ptr %call2.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx11.1.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 4
  %call12.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %25, ptr noundef nonnull @snd_vx_irq_handler, ptr noundef nonnull @snd_vx_threaded_irq_handler, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end16, label %do.end.i

do.end.i:                                         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev15.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %26 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev15.i, align 8
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef %29) #9
  br label %cleanup

if.end16:                                         ; preds = %for.body.preheader.i
  %30 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq.i, align 4
  %irq19.i = getelementptr inbounds %struct.vx_core, ptr %call2.i, i32 0, i32 3
  %32 = ptrtoint ptr %irq19.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %irq19.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 33
  %33 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %sync_irq.i, align 4
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call2.i, ptr %private_data, align 8
  %37 = load i32, ptr @snd_vx222_probe.dev, align 4
  %arrayidx17 = getelementptr [32 x i32], ptr @ibl, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx17, align 4
  %ibl = getelementptr inbounds %struct.vx_core, ptr %call2.i, i32 0, i32 25
  %40 = ptrtoint ptr %ibl to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ibl, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx11.i, align 4
  %43 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx11.1.i, align 4
  %45 = load i32, ptr %irq19.i, align 4
  %call23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.1, ptr noundef %shortname, i32 noundef %42, i32 noundef %44, i32 noundef %45)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_vx222_probe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_vx222_probe, %if.then28)) #6
          to label %do.end [label %if.then28], !srcloc !107

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card, align 4
  %dev29 = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev29, align 8
  %shortname30 = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx11.i, align 4
  %52 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx11.1.i, align 4
  %54 = ptrtoint ptr %irq19.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq19.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_vx222_probe.__UNIQUE_ID_ddebug252, ptr noundef %49, ptr noundef nonnull @.str.4, ptr noundef %shortname30, i32 noundef %51, i32 noundef %53, i32 noundef %55) #6
  br label %do.end

do.end:                                           ; preds = %if.then28, %if.end16
  %call40 = call i32 @snd_vx_setup_firmware(ptr noundef nonnull %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end.cleanup_crit_edge, label %if.end43

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %do.end
  %56 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card, align 4
  %call44 = call i32 @snd_card_register(ptr noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end43.cleanup_crit_edge, label %if.end47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %driver_data.i.i, align 4
  %61 = load i32, ptr @snd_vx222_probe.dev, align 4
  %inc48 = add i32 %61, 1
  store i32 %inc48, ptr @snd_vx222_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end43.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.end.i, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call40, %do.end.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ], [ %call6.i, %if.end4.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ -16, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_setup_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_vx_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_irq_handler(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_threaded_irq_handler(i32 noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vx222_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %call1 = tail call i32 @snd_vx_suspend(ptr noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_vx222_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %call1 = tail call i32 @snd_vx_resume(ptr noundef %3) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !93, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../sound/pci/vx222/vx222.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../sound/pci/vx222/vx222.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../sound/pci/vx222/vx222.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/vx222/vx222.c", i32 30, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype242, !8, !"__UNIQUE_ID_indextype242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index243, !11, !"__UNIQUE_ID_index243", i1 false, i1 false}
!11 = !{!"../sound/pci/vx222/vx222.c", i32 31, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/vx222/vx222.c", i32 32, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype244, !13, !"__UNIQUE_ID_idtype244", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id245, !16, !"__UNIQUE_ID_id245", i1 false, i1 false}
!16 = !{!"../sound/pci/vx222/vx222.c", i32 33, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/vx222/vx222.c", i32 34, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype246, !18, !"__UNIQUE_ID_enabletype246", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable247, !21, !"__UNIQUE_ID_enable247", i1 false, i1 false}
!21 = !{!"../sound/pci/vx222/vx222.c", i32 35, i32 1}
!22 = !{ptr @__param_mic, !23, !"__param_mic", i1 false, i1 false}
!23 = !{!"../sound/pci/vx222/vx222.c", i32 36, i32 1}
!24 = !{ptr @__UNIQUE_ID_mictype248, !23, !"__UNIQUE_ID_mictype248", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_mic249, !26, !"__UNIQUE_ID_mic249", i1 false, i1 false}
!26 = !{!"../sound/pci/vx222/vx222.c", i32 37, i32 1}
!27 = !{ptr @__param_ibl, !28, !"__param_ibl", i1 false, i1 false}
!28 = !{!"../sound/pci/vx222/vx222.c", i32 38, i32 1}
!29 = !{ptr @__UNIQUE_ID_ibltype250, !28, !"__UNIQUE_ID_ibltype250", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_ibl251, !31, !"__UNIQUE_ID_ibl251", i1 false, i1 false}
!31 = !{!"../sound/pci/vx222/vx222.c", i32 39, i32 1}
!32 = !{ptr @__initcall__kmod_snd_vx222__253_239_vx222_driver_init6, !33, !"__initcall__kmod_snd_vx222__253_239_vx222_driver_init6", i1 false, i1 false}
!33 = !{!"../sound/pci/vx222/vx222.c", i32 239, i32 1}
!34 = !{ptr @__exitcall_vx222_driver_exit, !33, !"__exitcall_vx222_driver_exit", i1 false, i1 false}
!35 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!36 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!37 = !{ptr @index, !38, !"index", i1 false, i1 false}
!38 = !{!"../sound/pci/vx222/vx222.c", i32 24, i32 12}
!39 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!40 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!41 = !{ptr @id, !42, !"id", i1 false, i1 false}
!42 = !{!"../sound/pci/vx222/vx222.c", i32 25, i32 14}
!43 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!44 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!45 = !{ptr @enable, !46, !"enable", i1 false, i1 false}
!46 = !{!"../sound/pci/vx222/vx222.c", i32 26, i32 13}
!47 = !{ptr @__param_str_mic, !23, !"__param_str_mic", i1 false, i1 false}
!48 = !{ptr @__param_arr_mic, !23, !"__param_arr_mic", i1 false, i1 false}
!49 = !{ptr @mic, !50, !"mic", i1 false, i1 false}
!50 = !{!"../sound/pci/vx222/vx222.c", i32 27, i32 13}
!51 = !{ptr @__param_str_ibl, !28, !"__param_str_ibl", i1 false, i1 false}
!52 = !{ptr @__param_arr_ibl, !28, !"__param_arr_ibl", i1 false, i1 false}
!53 = !{ptr @ibl, !54, !"ibl", i1 false, i1 false}
!54 = !{!"../sound/pci/vx222/vx222.c", i32 28, i32 12}
!55 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vx222_driver, !57, !"vx222_driver", i1 false, i1 false}
!57 = !{!"../sound/pci/vx222/vx222.c", i32 230, i32 26}
!58 = !{ptr @snd_vx222_ids, !59, !"snd_vx222_ids", i1 false, i1 false}
!59 = !{!"../sound/pci/vx222/vx222.c", i32 49, i32 35}
!60 = !{ptr @snd_vx222_probe.dev, !61, !"dev", i1 false, i1 false}
!61 = !{!"../sound/pci/vx222/vx222.c", i32 149, i32 13}
!62 = !{ptr @.str.1, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/vx222/vx222.c", i32 185, i32 26}
!64 = !{ptr @.str.2, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/vx222/vx222.c", i32 187, i32 2}
!66 = !{ptr @.str.3, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.4, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @snd_vx222_probe.__UNIQUE_ID_ddebug252, !65, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!69 = !{ptr @.str.5, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/vx222/vx222.c", i32 66, i32 10}
!71 = !{ptr @vx222_old_hw, !72, !"vx222_old_hw", i1 false, i1 false}
!72 = !{!"../sound/pci/vx222/vx222.c", i32 64, i32 37}
!73 = !{ptr @db_scale_old_vol, !74, !"db_scale_old_vol", i1 false, i1 false}
!74 = !{!"../sound/pci/vx222/vx222.c", i32 61, i32 14}
!75 = !{ptr @.str.6, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/vx222/vx222.c", i32 90, i32 10}
!77 = !{ptr @vx222_mic_hw, !78, !"vx222_mic_hw", i1 false, i1 false}
!78 = !{!"../sound/pci/vx222/vx222.c", i32 88, i32 37}
!79 = !{ptr @db_scale_akm, !80, !"db_scale_akm", i1 false, i1 false}
!80 = !{!"../sound/pci/vx222/vx222.c", i32 62, i32 14}
!81 = !{ptr @.str.7, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/vx222/vx222.c", i32 78, i32 10}
!83 = !{ptr @vx222_v2_hw, !84, !"vx222_v2_hw", i1 false, i1 false}
!84 = !{!"../sound/pci/vx222/vx222.c", i32 76, i32 37}
!85 = !{ptr @.str.8, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/vx222/vx222.c", i32 126, i32 33}
!87 = !{ptr @.str.9, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/vx222/vx222.c", i32 135, i32 3}
!89 = !{ptr @.str.10, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.11, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.12, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @snd_vx222_create._entry, !88, !"_entry", i1 false, i1 false}
!93 = !{ptr @snd_vx222_create._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @snd_vx222_pm, !95, !"snd_vx222_pm", i1 false, i1 false}
!95 = !{!"../sound/pci/vx222/vx222.c", i32 224, i32 8}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"auto-init"}
!106 = !{i8 0, i8 2}
!107 = !{i64 2148720889, i64 2148720894, i64 2148720907, i64 2148720951, i64 2148720985, i64 2148721006}
