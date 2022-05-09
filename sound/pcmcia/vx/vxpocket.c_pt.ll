; ModuleID = '/llk/IR_all_yes/sound/pcmcia/vx/vxpocket.c_pt.bc'
source_filename = "../sound/pcmcia/vx/vxpocket.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.snd_vx_hardware = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.snd_vx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vx_core = type { ptr, [2 x ptr], i32, i32, ptr, ptr, %struct.mutex, i32, i32, ptr, ptr, %struct.vx_rmh, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vx_ibl_info, [2 x [2 x i32]], [2 x [4 x i32]], [4 x i8], [4 x i32], [4 x i8], %struct.mutex, [4 x ptr] }
%struct.vx_rmh = type { i16, i16, [16 x i32], [16 x i32], i16 }
%struct.vx_ibl_info = type { i32, i32, i32, i32 }
%struct.snd_vxpocket = type { %struct.vx_core, i32, i32, i32, i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@__UNIQUE_ID_author238 = internal constant [49 x i8] c"snd_vxpocket.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [43 x i8] c"snd_vxpocket.description=Digigram VXPocket\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [47 x i8] c"snd_vxpocket.file=sound/pcmcia/vx/snd-vxpocket\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [25 x i8] c"snd_vxpocket.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [19 x i8] c"snd_vxpocket.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype242 = internal constant [41 x i8] c"snd_vxpocket.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index243 = internal constant [60 x i8] c"snd_vxpocket.parm=index:Index value for VXPocket soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [16 x i8] c"snd_vxpocket.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype244 = internal constant [40 x i8] c"snd_vxpocket.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id245 = internal constant [55 x i8] c"snd_vxpocket.parm=id:ID string for VXPocket soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [20 x i8] c"snd_vxpocket.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype246 = internal constant [43 x i8] c"snd_vxpocket.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable247 = internal constant [52 x i8] c"snd_vxpocket.parm=enable:Enable VXPocket soundcard.\00", section ".modinfo", align 1
@__param_str_ibl = internal constant [17 x i8] c"snd_vxpocket.ibl\00", align 1
@__param_arr_ibl = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @ibl }, align 4
@__param_ibl = internal constant %struct.kernel_param { ptr @__param_str_ibl, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_ibl } }, section "__param", align 4
@__UNIQUE_ID_ibltype248 = internal constant [39 x i8] c"snd_vxpocket.parmtype=ibl:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_ibl249 = internal constant [63 x i8] c"snd_vxpocket.parm=ibl:Capture IBL size for VXPocket soundcard.\00", section ".modinfo", align 1
@__initcall__kmod_snd_vxpocket__250_340_vxp_cs_driver_init6 = internal global ptr @vxp_cs_driver_init, section ".initcall6.init", align 4
@vxp_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @vxpocket_probe, ptr @vxpocket_detach, ptr @vxp_suspend, ptr @vxp_resume, ptr null, ptr @vxp_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_vxp_cs_driver_exit = internal global ptr @vxp_cs_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@ibl = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd-vxpocket\00", [19 x i8] zeroinitializer }, align 32
@vxp_ids = internal constant { [2 x %struct.pcmcia_device_id], [56 x i8] } { [2 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 497, i16 256, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@card_alloc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pcmcia/vx/vxpocket.c\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013vxpocket: too many cards found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013vxpocket: cannot create a card instance\0A\00", [53 x i8] zeroinitializer }, align 32
@vxpocket_hw = internal constant { %struct.snd_vx_hardware, [36 x i8] } { %struct.snd_vx_hardware { ptr @.str.4, i32 3, i32 1, i32 1, i32 1, i32 227, ptr @db_scale_old_vol }, [36 x i8] zeroinitializer }, align 32
@snd_vxpocket_ops = external dso_local constant %struct.snd_vx_ops, align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VXPocket\00", [23 x i8] zeroinitializer }, align 32
@db_scale_old_vol = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -11350, i32 50], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017vxpocket_config called\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VX-POCKET\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VX-pocket is detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VX-pocket 440 is detected\0A\00", [37 x i8] zeroinitializer }, align 32
@vxp440_hw = internal constant { %struct.snd_vx_hardware, [36 x i8] } { %struct.snd_vx_hardware { ptr @.str.9, i32 4, i32 2, i32 2, i32 2, i32 227, ptr @db_scale_old_vol }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VXPocket440\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017vxpocket assign resources: port = 0x%x, irq = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Digigram %s\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%x, irq %i\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017SUSPEND\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017snd_vx_suspend calling\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017RESUME\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017calling snd_vx_resume\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017resume done!\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"vxp_cs_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 329, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 24, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 25, i32 14 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 26, i32 13 }
@___asan_gen_.30 = private unnamed_addr constant [4 x i8] c"ibl\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 27, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 331, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [8 x i8] c"vxp_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 323, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"card_alloc\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 42, i32 21 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 272, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 282, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"vxpocket_hw\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 68, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 69, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"db_scale_old_vol\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 66, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 181, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 184, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 185, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 187, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"vxp440_hw\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 90, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 91, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 154, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 157, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 158, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 229, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 231, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 242, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 246, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [30 x i8] c"../sound/pcmcia/vx/vxpocket.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 250, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_enable247, ptr @__UNIQUE_ID_enabletype246, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_ibl249, ptr @__UNIQUE_ID_ibltype248, ptr @__UNIQUE_ID_id245, ptr @__UNIQUE_ID_idtype244, ptr @__UNIQUE_ID_index243, ptr @__UNIQUE_ID_indextype242, ptr @__UNIQUE_ID_license241, ptr @__exitcall_vxp_cs_driver_exit, ptr @__initcall__kmod_snd_vxpocket__250_340_vxp_cs_driver_init6, ptr @__param_enable, ptr @__param_ibl, ptr @__param_id, ptr @__param_index, ptr @vxp_cs_driver_exit, ptr @vxp_cs_driver, ptr @index, ptr @id, ptr @enable, ptr @ibl, ptr @.str, ptr @vxp_ids, ptr @card_alloc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vxpocket_hw, ptr @.str.4, ptr @db_scale_old_vol, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @vxp440_hw, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxp_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxp_ids to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_alloc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxpocket_hw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_old_vol to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxp440_hw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vxp_cs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @vxp_cs_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vxp_cs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @vxp_cs_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxpocket_probe(ptr noundef %p_dev) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !102
  %1 = load i32, ptr @card_alloc, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.052 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.052
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.then2, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then2:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 272, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %i.052
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 21
  %arrayidx7 = getelementptr [32 x i32], ptr @index, i32 0, i32 %i.052
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %i.052
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %call = call i32 @snd_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 282, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %arrayidx12 = getelementptr [32 x i32], ptr @ibl, i32 0, i32 %i.052
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %call.i = call ptr @snd_vx_create(ptr noundef %9, ptr noundef nonnull @vxpocket_hw, ptr noundef nonnull @snd_vxpocket_ops, i32 noundef 24) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %call16 = call i32 @snd_card_free(ptr noundef %13) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %ibl1.i = getelementptr inbounds %struct.vx_core, ptr %call.i, i32 0, i32 25
  %14 = ptrtoint ptr %ibl1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %ibl1.i, align 4
  %p_dev.i = getelementptr inbounds %struct.snd_vxpocket, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %p_dev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %p_dev, ptr %p_dev.i, align 4
  %priv.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 22
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %priv.i, align 8
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %17 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource.i, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %20, 16
  store i32 %or.i, ptr %flags.i, align 4
  %21 = load ptr, ptr %resource.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %end.i, align 4
  %config_flags.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 10
  %23 = ptrtoint ptr %config_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %config_flags.i, align 4
  %or4.i = or i32 %24, 1
  store i32 %or4.i, ptr %config_flags.i, align 4
  %config_index.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 12
  %25 = ptrtoint ptr %config_index.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %config_index.i, align 4
  %config_regs.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 13
  %26 = ptrtoint ptr %config_regs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %config_regs.i, align 8
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %private_data, align 8
  %index = getelementptr inbounds %struct.snd_vxpocket, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.052, ptr %index, align 4
  %31 = load i32, ptr @card_alloc, align 4
  %or = or i32 %31, %shl
  store i32 %or, ptr @card_alloc, align 4
  store ptr %p_dev, ptr %p_dev.i, align 4
  %32 = load ptr, ptr %priv.i, align 8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 181, ptr noundef nonnull @.str.5) #6
  %arrayidx.i = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 19, i32 1
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %call.i40 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(10) @.str.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 185, ptr noundef nonnull @.str.7) #6
  br label %if.end.i42

if.else.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 187, ptr noundef nonnull @.str.8) #6
  %hw.i = getelementptr inbounds %struct.vx_core, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @vxp440_hw, ptr %hw.i, align 4
  %type.i = getelementptr inbounds %struct.vx_core, ptr %32, i32 0, i32 2
  %36 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %type.i, align 4
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %32, align 4
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %driver.i, ptr @.str.9, i32 12)
  br label %if.end.i42

if.end.i42:                                       ; preds = %if.else.i, %if.then.i
  %call2.i = call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i42.failed_preirq.i_crit_edge

if.end.i42.failed_preirq.i_crit_edge:             ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed_preirq.i

if.end5.i:                                        ; preds = %if.end.i42
  %irq.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 6
  %40 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq.i, align 8
  %devname.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 1
  %42 = ptrtoint ptr %devname.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %devname.i, align 4
  %44 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv.i, align 8
  %call7.i = call i32 @request_threaded_irq(i32 noundef %41, ptr noundef nonnull @snd_vx_irq_handler, ptr noundef nonnull @snd_vx_threaded_irq_handler, i32 noundef 128, ptr noundef %43, ptr noundef %45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.failed_preirq.i_crit_edge

if.end5.i.failed_preirq.i_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed_preirq.i

if.end10.i:                                       ; preds = %if.end5.i
  %call11.i = call i32 @pcmcia_enable_device(ptr noundef %p_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.failed.i_crit_edge

if.end10.i.failed.i_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed.i

if.end14.i:                                       ; preds = %if.end10.i
  %dev15.i = getelementptr inbounds %struct.vx_core, ptr %32, i32 0, i32 9
  %46 = ptrtoint ptr %dev15.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev, ptr %dev15.i, align 4
  %47 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resource.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %51 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq.i, align 8
  %53 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %32, align 4
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 154, ptr noundef nonnull @.str.10, i32 noundef %50, i32 noundef %52) #6
  %port2.i.i = getelementptr inbounds %struct.snd_vxpocket, ptr %32, i32 0, i32 1
  %55 = ptrtoint ptr %port2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %50, ptr %port2.i.i, align 4
  %shortname.i.i = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 3
  %driver.i.i = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 2
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname.i.i, ptr noundef nonnull @.str.11, ptr noundef %driver.i.i) #6
  %longname.i.i = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 4
  %call7.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname.i.i, ptr noundef nonnull @.str.12, ptr noundef %shortname.i.i, i32 noundef %50, i32 noundef %52) #6
  %irq8.i.i = getelementptr inbounds %struct.vx_core, ptr %32, i32 0, i32 3
  %56 = ptrtoint ptr %irq8.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %52, ptr %irq8.i.i, align 4
  %sync_irq.i.i = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 33
  %57 = ptrtoint ptr %sync_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %52, ptr %sync_irq.i.i, align 4
  %call10.i.i = call i32 @snd_vx_setup_firmware(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp.i, label %if.end14.i.failed.i_crit_edge, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.i.failed.i_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed.i

failed.i:                                         ; preds = %if.end14.i.failed.i_crit_edge, %if.end10.i.failed.i_crit_edge
  %58 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq.i, align 8
  %60 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv.i, align 8
  %call23.i = call ptr @free_irq(i32 noundef %59, ptr noundef %61) #6
  br label %failed_preirq.i

failed_preirq.i:                                  ; preds = %failed.i, %if.end5.i.failed_preirq.i_crit_edge, %if.end.i42.failed_preirq.i_crit_edge
  call void @pcmcia_disable_device(ptr noundef %p_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %failed_preirq.i, %if.end14.i.cleanup_crit_edge, %if.then15, %if.then10, %if.end3.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ -22, %if.then2 ], [ %call, %if.then10 ], [ -12, %if.then15 ], [ -19, %if.end3.cleanup_crit_edge ], [ -19, %failed_preirq.i ], [ 0, %if.end14.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vxpocket_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %link, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %index = getelementptr inbounds %struct.snd_vxpocket, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %4 = load i32, ptr @card_alloc, align 4
  %and = and i32 %4, %neg
  store i32 %and, ptr @card_alloc, align 4
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_status, align 4
  %or = or i32 %6, 32768
  store i32 %or, ptr %chip_status, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call = tail call i32 @snd_card_disconnect(ptr noundef %8) #6
  %irq.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 8
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %call.i = tail call ptr @free_irq(i32 noundef %10, ptr noundef %12) #6
  tail call void @pcmcia_disable_device(ptr noundef nonnull %link) #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @snd_card_free_when_closed(ptr noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxp_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 229, ptr noundef nonnull @.str.13) #6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 231, ptr noundef nonnull @.str.14) #6
  %call = tail call i32 @snd_vx_suspend(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxp_resume(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 242, ptr noundef nonnull @.str.15) #6
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %link) #6
  %tobool.not = icmp eq ptr %call, null
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.if.end4_crit_edge, label %if.then2

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 246, ptr noundef nonnull @.str.16) #6
  %call3 = tail call i32 @snd_vx_resume(ptr noundef nonnull %1) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 250, ptr noundef nonnull @.str.17) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_vx_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_irq_handler(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_threaded_irq_handler(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_setup_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

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

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 29, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype242, !8, !"__UNIQUE_ID_indextype242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index243, !11, !"__UNIQUE_ID_index243", i1 false, i1 false}
!11 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 30, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 31, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype244, !13, !"__UNIQUE_ID_idtype244", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id245, !16, !"__UNIQUE_ID_id245", i1 false, i1 false}
!16 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 32, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 33, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype246, !18, !"__UNIQUE_ID_enabletype246", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable247, !21, !"__UNIQUE_ID_enable247", i1 false, i1 false}
!21 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 34, i32 1}
!22 = !{ptr @__param_ibl, !23, !"__param_ibl", i1 false, i1 false}
!23 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 35, i32 1}
!24 = !{ptr @__UNIQUE_ID_ibltype248, !23, !"__UNIQUE_ID_ibltype248", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_ibl249, !26, !"__UNIQUE_ID_ibl249", i1 false, i1 false}
!26 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 36, i32 1}
!27 = !{ptr @__initcall__kmod_snd_vxpocket__250_340_vxp_cs_driver_init6, !28, !"__initcall__kmod_snd_vxpocket__250_340_vxp_cs_driver_init6", i1 false, i1 false}
!28 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 340, i32 1}
!29 = !{ptr @__exitcall_vxp_cs_driver_exit, !28, !"__exitcall_vxp_cs_driver_exit", i1 false, i1 false}
!30 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!31 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!32 = !{ptr @index, !33, !"index", i1 false, i1 false}
!33 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 24, i32 12}
!34 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!35 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!36 = !{ptr @id, !37, !"id", i1 false, i1 false}
!37 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 25, i32 14}
!38 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!39 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!40 = !{ptr @enable, !41, !"enable", i1 false, i1 false}
!41 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 26, i32 13}
!42 = !{ptr @__param_str_ibl, !23, !"__param_str_ibl", i1 false, i1 false}
!43 = !{ptr @__param_arr_ibl, !23, !"__param_arr_ibl", i1 false, i1 false}
!44 = !{ptr @ibl, !45, !"ibl", i1 false, i1 false}
!45 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 27, i32 12}
!46 = !{ptr @.str, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 331, i32 11}
!48 = !{ptr @vxp_cs_driver, !49, !"vxp_cs_driver", i1 false, i1 false}
!49 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 329, i32 29}
!50 = !{ptr @.str.1, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 272, i32 3}
!52 = !{ptr @.str.2, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 282, i32 3}
!55 = !{ptr @card_alloc, !56, !"card_alloc", i1 false, i1 false}
!56 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 42, i32 21}
!57 = !{ptr @.str.4, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 69, i32 10}
!59 = !{ptr @vxpocket_hw, !60, !"vxpocket_hw", i1 false, i1 false}
!60 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 68, i32 37}
!61 = !{ptr @db_scale_old_vol, !62, !"db_scale_old_vol", i1 false, i1 false}
!62 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 66, i32 14}
!63 = !{ptr @.str.5, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 181, i32 2}
!65 = !{ptr @.str.6, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 184, i32 32}
!67 = !{ptr @.str.7, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 185, i32 3}
!69 = !{ptr @.str.8, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 187, i32 3}
!71 = !{ptr @.str.9, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 91, i32 10}
!73 = !{ptr @vxp440_hw, !74, !"vxp440_hw", i1 false, i1 false}
!74 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 90, i32 37}
!75 = !{ptr @.str.10, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 154, i32 2}
!77 = !{ptr @.str.11, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 157, i32 27}
!79 = !{ptr @.str.12, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 158, i32 26}
!81 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 229, i32 2}
!83 = !{ptr @.str.14, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 231, i32 3}
!85 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 242, i32 2}
!87 = !{ptr @.str.16, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 246, i32 4}
!89 = !{ptr @.str.17, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 250, i32 2}
!91 = !{ptr @vxp_ids, !92, !"vxp_ids", i1 false, i1 false}
!92 = !{!"../sound/pcmcia/vx/vxpocket.c", i32 323, i32 38}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{i8 0, i8 2}
