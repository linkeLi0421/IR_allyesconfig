; ModuleID = '/llk/IR_all_yes/sound/usb/6fire/chip.c_pt.bc'
source_filename = "../sound/usb/6fire/chip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sfire_chip = type { ptr, ptr, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }

@__UNIQUE_ID_author239 = internal constant [62 x i8] c"snd_usb_6fire.author=Torsten Schenk <torsten.schenk@zoho.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [62 x i8] c"snd_usb_6fire.description=TerraTec DMX 6Fire USB audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [49 x i8] c"snd_usb_6fire.file=sound/usb/6fire/snd-usb-6fire\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [29 x i8] c"snd_usb_6fire.license=GPL v2\00", section ".modinfo", align 1
@__param_str_index = internal constant [20 x i8] c"snd_usb_6fire.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype243 = internal constant [42 x i8] c"snd_usb_6fire.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index244 = internal constant [64 x i8] c"snd_usb_6fire.parm=index:Index value for the 6fire sound device\00", section ".modinfo", align 1
@__param_str_id = internal constant [17 x i8] c"snd_usb_6fire.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype245 = internal constant [41 x i8] c"snd_usb_6fire.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id246 = internal constant [60 x i8] c"snd_usb_6fire.parm=id:ID string for the 6fire sound device.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [21 x i8] c"snd_usb_6fire.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype247 = internal constant [44 x i8] c"snd_usb_6fire.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable248 = internal constant [57 x i8] c"snd_usb_6fire.parm=enable:Enable the 6fire sound device.\00", section ".modinfo", align 1
@__initcall__kmod_snd_usb_6fire__249_207_usb_driver_init6 = internal global ptr @usb_driver_init, section ".initcall6.init", align 4
@usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @usb6fire_chip_probe, ptr @usb6fire_chip_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_driver_exit = internal global ptr @usb_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_6fire\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-usb-6fire\00", [18 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3277, i16 128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@register_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 52), ptr getelementptr (i8, ptr @register_mutex, i64 52) }, ptr @register_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@devices = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@chips = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@usb6fire_chip_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"too many cards registered.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb6fire_chip_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/usb/6fire/chip.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb6fire_chip_probe._entry_ptr = internal global ptr @usb6fire_chip_probe._entry, section ".printk_index", align 4
@usb6fire_chip_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 119, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't set first interface.\0A\00", [36 x i8] zeroinitializer }, align 32
@usb6fire_chip_probe._entry_ptr.9 = internal global ptr @usb6fire_chip_probe._entry.7, section ".printk_index", align 4
@usb6fire_chip_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot create alsa card.\0A\00", [38 x i8] zeroinitializer }, align 32
@usb6fire_chip_probe._entry_ptr.12 = internal global ptr @usb6fire_chip_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"6FireUSB\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TerraTec DMX6FireUSB\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s at %d:%d\00", [20 x i8] zeroinitializer }, align 32
@usb6fire_chip_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot register card.\00", [42 x i8] zeroinitializer }, align 32
@usb6fire_chip_probe._entry_ptr.18 = internal global ptr @usb6fire_chip_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register_mutex\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"usb_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 200, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 30, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 31, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 32, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 207, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 201, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 189, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"register_mutex\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 34, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"chips\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 33, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 104, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 119, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 125, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 128, i32 23 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 129, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 130, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 158, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [26 x i8] c"../sound/usb/6fire/chip.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 43, i32 8 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_enable248, ptr @__UNIQUE_ID_enabletype247, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_id246, ptr @__UNIQUE_ID_idtype245, ptr @__UNIQUE_ID_index244, ptr @__UNIQUE_ID_indextype243, ptr @__UNIQUE_ID_license242, ptr @__exitcall_usb_driver_exit, ptr @__initcall__kmod_snd_usb_6fire__249_207_usb_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @usb6fire_chip_probe._entry, ptr @usb6fire_chip_probe._entry.10, ptr @usb6fire_chip_probe._entry.16, ptr @usb6fire_chip_probe._entry.7, ptr @usb6fire_chip_probe._entry_ptr, ptr @usb6fire_chip_probe._entry_ptr.12, ptr @usb6fire_chip_probe._entry_ptr.18, ptr @usb6fire_chip_probe._entry_ptr.9, ptr @usb_driver_exit, ptr @usb_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @.str.1, ptr @device_table, ptr @register_mutex, ptr @devices, ptr @chips, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chips to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_chip_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_chip_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_chip_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_chip_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_chip_probe(ptr noundef %intf, ptr nocapture noundef readnone %usb_id) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %2 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %card, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #6
  br label %for.body

for.body:                                         ; preds = %if.else.for.body_crit_edge, %entry
  %regidx.0136 = phi i32 [ -1, %entry ], [ %regidx.1, %if.else.for.body_crit_edge ]
  %i.0135 = phi i32 [ 0, %entry ], [ %inc12, %if.else.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %i.0135
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %4, %add.ptr.i
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr [32 x ptr], ptr @chips, i32 0, i32 %i.0135
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %intf_count = getelementptr inbounds %struct.sfire_chip, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %intf_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intf_count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %intf_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %driver_data.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #6
  br label %cleanup

if.else:                                          ; preds = %for.body
  %tobool7.not = icmp eq ptr %4, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regidx.0136)
  %cmp8 = icmp slt i32 %regidx.0136, 0
  %or.cond = select i1 %tobool7.not, i1 %cmp8, i1 false
  %regidx.1 = select i1 %or.cond, i32 %i.0135, i32 %regidx.0136
  %inc12 = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc12, 32
  br i1 %exitcond.not, label %for.end, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regidx.1)
  %cmp13 = icmp slt i32 %regidx.1, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #6
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %arrayidx16 = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %regidx.1
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %arrayidx16, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #6
  %call17 = tail call i32 @usb6fire_fw_init(ptr noundef %intf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.else20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp21 = icmp eq i32 %call17, 1
  br i1 %cmp21, label %if.else20.cleanup_crit_edge, label %if.end24

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.else20
  %call25 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  %dev33 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  br i1 %cmp26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %arrayidx34 = getelementptr [32 x i32], ptr @index, i32 0, i32 %regidx.1
  %11 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx34, align 4
  %arrayidx35 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %regidx.1
  %13 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx35, align 4
  %call36 = call i32 @snd_card_new(ptr noundef %dev33, i32 noundef %12, ptr noundef %14, ptr noundef null, i32 noundef 36, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end43

do.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %driver, ptr @.str.13, i32 9)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 3
  %18 = call ptr @memcpy(ptr %shortname, ptr @.str.14, i32 21)
  %longname = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 4
  %bus = getelementptr i8, ptr %1, i32 -64
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %busnum, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 8
  %call50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.15, ptr noundef %shortname, i32 noundef %22, i32 noundef %24)
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data, align 8
  %arrayidx51 = getelementptr [32 x ptr], ptr @chips, i32 0, i32 %regidx.1
  %29 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %arrayidx51, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %28, align 4
  %regidx53 = getelementptr inbounds %struct.sfire_chip, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %regidx53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %regidx.1, ptr %regidx53, align 4
  %intf_count54 = getelementptr inbounds %struct.sfire_chip, ptr %28, i32 0, i32 2
  %32 = ptrtoint ptr %intf_count54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %intf_count54, align 4
  %33 = load ptr, ptr %card, align 4
  %card55 = getelementptr inbounds %struct.sfire_chip, ptr %28, i32 0, i32 1
  %34 = ptrtoint ptr %card55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %card55, align 4
  %call56 = call i32 @usb6fire_comm_init(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end43.destroy_chip_crit_edge, label %if.end59

if.end43.destroy_chip_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_chip

if.end59:                                         ; preds = %if.end43
  %call60 = call i32 @usb6fire_midi_init(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end59.destroy_chip_crit_edge, label %if.end63

if.end59.destroy_chip_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_chip

if.end63:                                         ; preds = %if.end59
  %call64 = call i32 @usb6fire_pcm_init(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end63.destroy_chip_crit_edge, label %if.end67

if.end63.destroy_chip_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_chip

if.end67:                                         ; preds = %if.end63
  %call68 = call i32 @usb6fire_control_init(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end67.destroy_chip_crit_edge, label %if.end71

if.end67.destroy_chip_crit_edge:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_chip

if.end71:                                         ; preds = %if.end67
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %call72 = call i32 @snd_card_register(ptr noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end77, label %if.end79

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.17) #9
  br label %destroy_chip

if.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i132 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %37 = ptrtoint ptr %driver_data.i.i132 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %28, ptr %driver_data.i.i132, align 4
  br label %cleanup

destroy_chip:                                     ; preds = %do.end77, %if.end67.destroy_chip_crit_edge, %if.end63.destroy_chip_crit_edge, %if.end59.destroy_chip_crit_edge, %if.end43.destroy_chip_crit_edge
  %ret.0 = phi i32 [ %call56, %if.end43.destroy_chip_crit_edge ], [ %call60, %if.end59.destroy_chip_crit_edge ], [ %call64, %if.end63.destroy_chip_crit_edge ], [ %call68, %if.end67.destroy_chip_crit_edge ], [ %call72, %do.end77 ]
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %destroy_chip.cleanup_crit_edge, label %if.then.i

destroy_chip.cleanup_crit_edge:                   ; preds = %destroy_chip
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %destroy_chip
  %pcm.i = getelementptr inbounds %struct.sfire_chip, ptr %28, i32 0, i32 6
  %38 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcm.i, align 4
  %tobool1.not.i = icmp eq ptr %39, null
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usb6fire_pcm_destroy(ptr noundef nonnull %28) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %midi.i = getelementptr inbounds %struct.sfire_chip, ptr %28, i32 0, i32 5
  %40 = ptrtoint ptr %midi.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %midi.i, align 4
  %tobool3.not.i = icmp eq ptr %41, null
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usb6fire_midi_destroy(ptr noundef nonnull %28) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %comm.i = getelementptr inbounds %struct.sfire_chip, ptr %28, i32 0, i32 8
  %42 = ptrtoint ptr %comm.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %comm.i, align 4
  %tobool6.not.i = icmp eq ptr %43, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end8.i_crit_edge, label %if.then7.i

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usb6fire_comm_destroy(ptr noundef nonnull %28) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end8.i_crit_edge
  %control.i = getelementptr inbounds %struct.sfire_chip, ptr %28, i32 0, i32 7
  %44 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %control.i, align 4
  %tobool9.not.i = icmp eq ptr %45, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end11.i_crit_edge, label %if.then10.i

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usb6fire_control_destroy(ptr noundef nonnull %28) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end11.i_crit_edge
  %46 = ptrtoint ptr %card55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card55, align 4
  %tobool12.not.i = icmp eq ptr %47, null
  br i1 %tobool12.not.i, label %if.end11.i.cleanup_crit_edge, label %if.then13.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @snd_card_free(ptr noundef nonnull %47) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i, %if.end11.i.cleanup_crit_edge, %destroy_chip.cleanup_crit_edge, %if.end79, %do.end41, %do.end30, %if.else20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then14, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %if.then14 ], [ -5, %do.end30 ], [ %call36, %do.end41 ], [ 0, %if.end79 ], [ %call17, %if.end15.cleanup_crit_edge ], [ 0, %if.else20.cleanup_crit_edge ], [ %ret.0, %destroy_chip.cleanup_crit_edge ], [ %ret.0, %if.end11.i.cleanup_crit_edge ], [ %ret.0, %if.then13.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb6fire_chip_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %intf_count = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intf_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %intf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.then.i, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #6
  %regidx = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regidx, align 4
  %arrayidx = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr [32 x ptr], ptr @chips, i32 0, i32 %5
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #6
  %shutdown = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %shutdown, align 4
  %pcm.i = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb6fire_pcm_abort(ptr noundef nonnull %1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %midi.i = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %midi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %midi.i, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb6fire_midi_abort(ptr noundef nonnull %1) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %comm.i = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %comm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %comm.i, align 4
  %tobool6.not.i = icmp eq ptr %14, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end8.i_crit_edge, label %if.then7.i

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb6fire_comm_abort(ptr noundef nonnull %1) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end8.i_crit_edge
  %control.i = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %control.i, align 4
  %tobool9.not.i = icmp eq ptr %16, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end11.i_crit_edge, label %if.then10.i

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb6fire_control_abort(ptr noundef nonnull %1) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end11.i_crit_edge
  %card.i = getelementptr inbounds %struct.sfire_chip, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %tobool12.not.i = icmp eq ptr %18, null
  br i1 %tobool12.not.i, label %if.end11.i.if.then.i17_crit_edge, label %if.then13.i

if.end11.i.if.then.i17_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i17

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @snd_card_disconnect(ptr noundef nonnull %18) #6
  %19 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i, align 4
  %call16.i = tail call i32 @snd_card_free_when_closed(ptr noundef %20) #6
  %21 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %card.i, align 4
  br label %if.then.i17

if.then.i17:                                      ; preds = %if.then13.i, %if.end11.i.if.then.i17_crit_edge
  %22 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcm.i, align 4
  %tobool1.not.i16 = icmp eq ptr %23, null
  br i1 %tobool1.not.i16, label %if.then.i17.if.end.i21_crit_edge, label %if.then2.i18

if.then.i17.if.end.i21_crit_edge:                 ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i21

if.then2.i18:                                     ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb6fire_pcm_destroy(ptr noundef nonnull %1) #6
  br label %if.end.i21

if.end.i21:                                       ; preds = %if.then2.i18, %if.then.i17.if.end.i21_crit_edge
  %24 = ptrtoint ptr %midi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %midi.i, align 4
  %tobool3.not.i20 = icmp eq ptr %25, null
  br i1 %tobool3.not.i20, label %if.end.i21.if.end5.i25_crit_edge, label %if.then4.i22

if.end.i21.if.end5.i25_crit_edge:                 ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i25

if.then4.i22:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb6fire_midi_destroy(ptr noundef nonnull %1) #6
  br label %if.end5.i25

if.end5.i25:                                      ; preds = %if.then4.i22, %if.end.i21.if.end5.i25_crit_edge
  %26 = ptrtoint ptr %comm.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %comm.i, align 4
  %tobool6.not.i24 = icmp eq ptr %27, null
  br i1 %tobool6.not.i24, label %if.end5.i25.if.end8.i29_crit_edge, label %if.then7.i26

if.end5.i25.if.end8.i29_crit_edge:                ; preds = %if.end5.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i29

if.then7.i26:                                     ; preds = %if.end5.i25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb6fire_comm_destroy(ptr noundef nonnull %1) #6
  br label %if.end8.i29

if.end8.i29:                                      ; preds = %if.then7.i26, %if.end5.i25.if.end8.i29_crit_edge
  %28 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %control.i, align 4
  %tobool9.not.i28 = icmp eq ptr %29, null
  br i1 %tobool9.not.i28, label %if.end8.i29.if.end11.i33_crit_edge, label %if.then10.i30

if.end8.i29.if.end11.i33_crit_edge:               ; preds = %if.end8.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i33

if.then10.i30:                                    ; preds = %if.end8.i29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb6fire_control_destroy(ptr noundef nonnull %1) #6
  br label %if.end11.i33

if.end11.i33:                                     ; preds = %if.then10.i30, %if.end8.i29.if.end11.i33_crit_edge
  %30 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card.i, align 4
  %tobool12.not.i32 = icmp eq ptr %31, null
  br i1 %tobool12.not.i32, label %if.end11.i33.if.end6_crit_edge, label %if.then13.i35

if.end11.i33.if.end6_crit_edge:                   ; preds = %if.end11.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then13.i35:                                    ; preds = %if.end11.i33
  call void @__sanitizer_cov_trace_pc() #8
  %call.i34 = tail call i32 @snd_card_free(ptr noundef nonnull %31) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then13.i35, %if.end11.i33.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb6fire_fw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb6fire_comm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb6fire_midi_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb6fire_pcm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb6fire_control_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb6fire_pcm_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb6fire_midi_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb6fire_comm_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb6fire_control_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb6fire_pcm_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb6fire_midi_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb6fire_comm_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb6fire_control_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__UNIQUE_ID_author239, !1, !"__UNIQUE_ID_author239", i1 false, i1 false}
!1 = !{!"../sound/usb/6fire/chip.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description240, !3, !"__UNIQUE_ID_description240", i1 false, i1 false}
!3 = !{!"../sound/usb/6fire/chip.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file241, !5, !"__UNIQUE_ID_file241", i1 false, i1 false}
!5 = !{!"../sound/usb/6fire/chip.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license242, !5, !"__UNIQUE_ID_license242", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/usb/6fire/chip.c", i32 36, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype243, !8, !"__UNIQUE_ID_indextype243", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index244, !11, !"__UNIQUE_ID_index244", i1 false, i1 false}
!11 = !{!"../sound/usb/6fire/chip.c", i32 37, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/usb/6fire/chip.c", i32 38, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype245, !13, !"__UNIQUE_ID_idtype245", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id246, !16, !"__UNIQUE_ID_id246", i1 false, i1 false}
!16 = !{!"../sound/usb/6fire/chip.c", i32 39, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/usb/6fire/chip.c", i32 40, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype247, !18, !"__UNIQUE_ID_enabletype247", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable248, !21, !"__UNIQUE_ID_enable248", i1 false, i1 false}
!21 = !{!"../sound/usb/6fire/chip.c", i32 41, i32 1}
!22 = !{ptr @__initcall__kmod_snd_usb_6fire__249_207_usb_driver_init6, !23, !"__initcall__kmod_snd_usb_6fire__249_207_usb_driver_init6", i1 false, i1 false}
!23 = !{!"../sound/usb/6fire/chip.c", i32 207, i32 1}
!24 = !{ptr @__exitcall_usb_driver_exit, !23, !"__exitcall_usb_driver_exit", i1 false, i1 false}
!25 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!26 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!27 = !{ptr @index, !28, !"index", i1 false, i1 false}
!28 = !{!"../sound/usb/6fire/chip.c", i32 30, i32 12}
!29 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!30 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!31 = !{ptr @id, !32, !"id", i1 false, i1 false}
!32 = !{!"../sound/usb/6fire/chip.c", i32 31, i32 14}
!33 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!34 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!35 = !{ptr @enable, !36, !"enable", i1 false, i1 false}
!36 = !{!"../sound/usb/6fire/chip.c", i32 32, i32 13}
!37 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/usb/6fire/chip.c", i32 201, i32 10}
!40 = !{ptr @usb_driver, !41, !"usb_driver", i1 false, i1 false}
!41 = !{!"../sound/usb/6fire/chip.c", i32 200, i32 26}
!42 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/usb/6fire/chip.c", i32 104, i32 3}
!44 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @usb6fire_chip_probe._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @usb6fire_chip_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/usb/6fire/chip.c", i32 119, i32 3}
!52 = !{ptr @usb6fire_chip_probe._entry.7, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @usb6fire_chip_probe._entry_ptr.9, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/usb/6fire/chip.c", i32 125, i32 3}
!56 = !{ptr @usb6fire_chip_probe._entry.10, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @usb6fire_chip_probe._entry_ptr.12, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/usb/6fire/chip.c", i32 128, i32 23}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/usb/6fire/chip.c", i32 129, i32 26}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/usb/6fire/chip.c", i32 130, i32 26}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/usb/6fire/chip.c", i32 158, i32 3}
!66 = !{ptr @usb6fire_chip_probe._entry.16, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @usb6fire_chip_probe._entry_ptr.18, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/usb/6fire/chip.c", i32 43, i32 8}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @register_mutex, !69, !"register_mutex", i1 false, i1 false}
!72 = !{ptr @devices, !73, !"devices", i1 false, i1 false}
!73 = !{!"../sound/usb/6fire/chip.c", i32 34, i32 27}
!74 = !{ptr @chips, !75, !"chips", i1 false, i1 false}
!75 = !{!"../sound/usb/6fire/chip.c", i32 33, i32 27}
!76 = !{ptr @device_table, !77, !"device_table", i1 false, i1 false}
!77 = !{!"../sound/usb/6fire/chip.c", i32 189, i32 35}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
