; ModuleID = '/llk/IR_all_yes/sound/usb/caiaq/device.c_pt.bc'
source_filename = "../sound/usb/caiaq/device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.atomic_t = type { i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_usb_caiaqdev = type { %struct.snd_usb_audio, %struct.urb, %struct.urb, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], %struct.caiaq_device_spec, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, ptr, ptr, i32, i32, i32, [32 x ptr], [32 x ptr], [256 x i8], [2 x i8], ptr, [64 x i8], [128 x i16], ptr, [512 x i8], ptr, %struct.snd_pcm_hardware, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.caiaq_device_spec = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }

@__UNIQUE_ID_author239 = internal constant [51 x i8] c"snd_usb_caiaq.author=Daniel Mack <daniel@caiaq.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [42 x i8] c"snd_usb_caiaq.description=caiaq USB audio\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [49 x i8] c"snd_usb_caiaq.file=sound/usb/caiaq/snd-usb-caiaq\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [26 x i8] c"snd_usb_caiaq.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [20 x i8] c"snd_usb_caiaq.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype243 = internal constant [42 x i8] c"snd_usb_caiaq.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index244 = internal constant [64 x i8] c"snd_usb_caiaq.parm=index:Index value for the caiaq sound device\00", section ".modinfo", align 1
@__param_str_id = internal constant [17 x i8] c"snd_usb_caiaq.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype245 = internal constant [41 x i8] c"snd_usb_caiaq.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id246 = internal constant [57 x i8] c"snd_usb_caiaq.parm=id:ID string for the caiaq soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [21 x i8] c"snd_usb_caiaq.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype247 = internal constant [44 x i8] c"snd_usb_caiaq.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable248 = internal constant [54 x i8] c"snd_usb_caiaq.parm=enable:Enable the caiaq soundcard.\00", section ".modinfo", align 1
@snd_usb_caiaq_set_audio_params.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_caiaq\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_usb_caiaq_set_audio_params\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/usb/caiaq/device.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"setting audio params: %d Hz, %d bits, %d bpp\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_set_audio_params.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to set the device's audio params\0A\00", [55 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_usb_caiaq__253_557_snd_usb_driver_init6 = internal global ptr @snd_usb_driver_init, section ".initcall6.init", align 4
@snd_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.5, ptr @snd_probe, ptr @snd_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_usb_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_snd_usb_driver_exit = internal global ptr @snd_usb_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-usb-caiaq\00", [18 x i8] zeroinitializer }, align 32
@snd_usb_id_table = internal constant { [15 x %struct.usb_device_id], [88 x i8] } { [15 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6092, i16 6505, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 6464, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 18193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 18194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 2069, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 6520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 6421, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 3469, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 2105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 1052, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 8965, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 -17665, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 1053, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 2056, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@snd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 514, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to init card! (ret=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_probe._entry_ptr = internal global ptr @snd_probe._entry, section ".printk_index", align 4
@create_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cdev->spinlock\00", [16 x i8] zeroinitializer }, align 32
@init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 421, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't set alt interface.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_card\00", [22 x i8] zeroinitializer }, align 32
@init_card._entry_ptr = internal global ptr @init_card._entry, section ".printk_index", align 4
@init_card._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 441, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"invalid EPs\0A\00", [19 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.15 = internal global ptr @init_card._entry.13, section ".printk_index", align 4
@init_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&cdev->ep1_wait_queue\00", [42 x i8] zeroinitializer }, align 32
@init_card.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&cdev->prepare_wait_queue\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %s (%s)\00", [21 x i8] zeroinitializer }, align 32
@usb_ep1_command_reply_dispatch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 139, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"received EP1 urb->status = %i\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"usb_ep1_command_reply_dispatch\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usb_ep1_command_reply_dispatch._entry_ptr = internal global ptr @usb_ep1_command_reply_dispatch._entry, section ".printk_index", align 4
@usb_ep1_command_reply_dispatch.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"device spec (firmware %d): audio: %d in, %d out, MIDI: %d in, %d out, data alignment %d\0A\00", [39 x i8] zeroinitializer }, align 32
@usb_ep1_command_reply_dispatch._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.2, i32 187, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to submit urb. OOM!?\0A\00", [35 x i8] zeroinitializer }, align 32
@usb_ep1_command_reply_dispatch._entry_ptr.26 = internal global ptr @usb_ep1_command_reply_dispatch._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@setup_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 351, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to set up audio system (ret=%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setup_card\00", [21 x i8] zeroinitializer }, align 32
@setup_card._entry_ptr = internal global ptr @setup_card._entry, section ".printk_index", align 4
@setup_card._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 358, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to set up MIDI system (ret=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@setup_card._entry_ptr.32 = internal global ptr @setup_card._entry.30, section ".printk_index", align 4
@setup_card._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 364, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to set up input system (ret=%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@setup_card._entry_ptr.35 = internal global ptr @setup_card._entry.33, section ".printk_index", align 4
@setup_card._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 370, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_card_register() returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@setup_card._entry_ptr.38 = internal global ptr @setup_card._entry.36, section ".printk_index", align 4
@setup_card._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 376, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to set up control system (ret=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@setup_card._entry_ptr.41 = internal global ptr @setup_card._entry.39, section ".printk_index", align 4
@snd_disconnect.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_disconnect\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%p)\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 44100, i64 48000, i64 88200, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 399247381, i64 399251776, i64 399251817, i64 399251832]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 6, i64 9]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 263, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 278, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"snd_usb_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 550, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 30, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 31, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 32, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 551, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"snd_usb_id_table\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 57, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 514, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 406, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 421, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 441, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 445, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 446, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 488, i32 51 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 139, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 147, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 187, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 912, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 351, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 358, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 364, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 370, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 376, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [28 x i8] c"../sound/usb/caiaq/device.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 532, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_enable248, ptr @__UNIQUE_ID_enabletype247, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_id246, ptr @__UNIQUE_ID_idtype245, ptr @__UNIQUE_ID_index244, ptr @__UNIQUE_ID_indextype243, ptr @__UNIQUE_ID_license242, ptr @__exitcall_snd_usb_driver_exit, ptr @__initcall__kmod_snd_usb_caiaq__253_557_snd_usb_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @init_card._entry, ptr @init_card._entry.13, ptr @init_card._entry_ptr, ptr @init_card._entry_ptr.15, ptr @setup_card._entry, ptr @setup_card._entry.30, ptr @setup_card._entry.33, ptr @setup_card._entry.36, ptr @setup_card._entry.39, ptr @setup_card._entry_ptr, ptr @setup_card._entry_ptr.32, ptr @setup_card._entry_ptr.35, ptr @setup_card._entry_ptr.38, ptr @setup_card._entry_ptr.41, ptr @snd_probe._entry, ptr @snd_probe._entry_ptr, ptr @snd_usb_driver_exit, ptr @usb_ep1_command_reply_dispatch._entry, ptr @usb_ep1_command_reply_dispatch._entry.24, ptr @usb_ep1_command_reply_dispatch._entry_ptr, ptr @usb_ep1_command_reply_dispatch._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @snd_usb_driver, ptr @index, ptr @id, ptr @enable, ptr @.str.5, ptr @snd_usb_id_table, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @create_card.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @init_card.__key, ptr @.str.16, ptr @init_card.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_id_table to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ep1_command_reply_dispatch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ep1_command_reply_dispatch._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_card._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_card._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_card._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_card._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_caiaq_send_command(ptr noundef %cdev, i8 noundef zeroext %command, ptr noundef readonly %buffer, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #7
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !128
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.smin.i32(i32 %len, i32 63)
  %tobool3.not = icmp ne ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4 = icmp sgt i32 %len, 0
  %or.cond = and i1 %tobool3.not, %cmp4
  br i1 %or.cond, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 1
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %buffer, i32 %3)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %ep1_out_buf7 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7
  %5 = ptrtoint ptr %ep1_out_buf7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %command, ptr %ep1_out_buf7, align 8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -1073709056
  %add = add nsw i32 %3, 1
  %call10 = call i32 @usb_bulk_msg(ptr noundef nonnull %2, i32 noundef %or, ptr noundef %ep1_out_buf7, i32 noundef %add, ptr noundef nonnull %actual_len, i32 noundef 200) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end6 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_caiaq_send_command_bank(ptr noundef %cdev, i8 noundef zeroext %command, i8 noundef zeroext %bank, ptr noundef readonly %buffer, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #7
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !128
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.smin.i32(i32 %len, i32 62)
  %tobool3.not = icmp ne ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4 = icmp sgt i32 %len, 0
  %or.cond = and i1 %tobool3.not, %cmp4
  br i1 %or.cond, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 2
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %buffer, i32 %3)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %ep1_out_buf7 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7
  %5 = ptrtoint ptr %ep1_out_buf7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %command, ptr %ep1_out_buf7, align 8
  %arrayidx9 = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bank, ptr %arrayidx9, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 8
  %shl.i = shl i32 %8, 8
  %or = or i32 %shl.i, -1073709056
  %add = add nsw i32 %3, 2
  %call12 = call i32 @usb_bulk_msg(ptr noundef nonnull %2, i32 noundef %or, ptr noundef %ep1_out_buf7, i32 noundef %add, ptr noundef nonnull %actual_len, i32 noundef 200) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end6 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_caiaq_set_audio_params(ptr noundef %cdev, i32 noundef %rate, i32 noundef %depth, i32 noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  %actual_len.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %dev1 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %4 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %entry.cleanup107_crit_edge [
    i32 44100, label %entry.sw.epilog_crit_edge
    i32 48000, label %sw.bb2
    i32 88200, label %sw.bb4
    i32 96000, label %sw.bb6
    i32 192000, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup107_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup107

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %entry.sw.epilog_crit_edge
  %tmp.sroa.0.0 = phi i8 [ 3, %sw.bb8 ], [ 2, %sw.bb6 ], [ 4, %sw.bb4 ], [ 1, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %5 = zext i32 %depth to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %depth, label %sw.epilog.cleanup107_crit_edge [
    i32 16, label %sw.epilog.sw.epilog15_crit_edge
    i32 24, label %sw.bb12
  ]

sw.epilog.sw.epilog15_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15

sw.epilog.cleanup107_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup107

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15

sw.epilog15:                                      ; preds = %sw.bb12, %sw.epilog.sw.epilog15_crit_edge
  %storemerge = phi i8 [ 2, %sw.bb12 ], [ 1, %sw.epilog.sw.epilog15_crit_edge ]
  %conv = trunc i32 %bpp to i8
  %6 = lshr i32 %bpp, 8
  %conv17 = trunc i32 %6 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_set_audio_params.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_set_audio_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_set_audio_params.__UNIQUE_ID_ddebug250, ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %rate, i32 noundef %depth, i32 noundef %bpp) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.epilog15
  %audio_parm_answer = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 14
  %7 = ptrtoint ptr %audio_parm_answer to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %audio_parm_answer, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i) #7
  %8 = ptrtoint ptr %actual_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %actual_len.i, align 4, !annotation !128
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %snd_usb_caiaq_send_command.exit.thread, label %snd_usb_caiaq_send_command.exit

snd_usb_caiaq_send_command.exit.thread:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i) #7
  br label %cleanup107

snd_usb_caiaq_send_command.exit:                  ; preds = %do.end
  %add.ptr.i = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %tmp.sroa.0.0, ptr %add.ptr.i, align 1
  %tmp.sroa.9.0.add.ptr.i.sroa_idx = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %tmp.sroa.9.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %storemerge, ptr %tmp.sroa.9.0.add.ptr.i.sroa_idx, align 1
  %tmp.sroa.11.0.add.ptr.i.sroa_idx = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %tmp.sroa.11.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %tmp.sroa.11.0.add.ptr.i.sroa_idx, align 1
  %tmp.sroa.13.0.add.ptr.i.sroa_idx = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 4
  %14 = ptrtoint ptr %tmp.sroa.13.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv17, ptr %tmp.sroa.13.0.add.ptr.i.sroa_idx, align 1
  %tmp.sroa.15.0.add.ptr.i.sroa_idx = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 5
  %15 = ptrtoint ptr %tmp.sroa.15.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %tmp.sroa.15.0.add.ptr.i.sroa_idx, align 1
  %ep1_out_buf7.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7
  %16 = ptrtoint ptr %ep1_out_buf7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 9, ptr %ep1_out_buf7.i, align 8
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %18, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %call10.i = call i32 @usb_bulk_msg(ptr noundef nonnull %10, i32 noundef %or.i, ptr noundef %ep1_out_buf7.i, i32 noundef 6, ptr noundef nonnull %actual_len.i, i32 noundef 200) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool24.not = icmp eq i32 %call10.i, 0
  br i1 %tobool24.not, label %if.end26, label %snd_usb_caiaq_send_command.exit.cleanup107_crit_edge

snd_usb_caiaq_send_command.exit.cleanup107_crit_edge: ; preds = %snd_usb_caiaq_send_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup107

if.end26:                                         ; preds = %snd_usb_caiaq_send_command.exit
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 274) #7
  %19 = ptrtoint ptr %audio_parm_answer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %audio_parm_answer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp = icmp sgt i32 %20, -1
  br i1 %cmp, label %if.end26.if.end81_crit_edge, label %if.then48

if.end26.if.end81_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then48:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %21 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %ep1_wait_queue = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 11
  %call50148 = call i32 @prepare_to_wait_event(ptr noundef %ep1_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %22 = ptrtoint ptr %audio_parm_answer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audio_parm_answer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp53149 = icmp sgt i32 %23, -1
  br i1 %cmp53149, label %if.end77.thread, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  br label %cleanup

if.end77.thread:                                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %ep1_wait_queue, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end81thread-pre-split

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then48.cleanup_crit_edge
  %__ret49.1150 = phi i32 [ %__ret49.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then48.cleanup_crit_edge ]
  %call74 = call i32 @schedule_timeout(i32 noundef %__ret49.1150) #7
  %call50 = call i32 @prepare_to_wait_event(ptr noundef %ep1_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %24 = ptrtoint ptr %audio_parm_answer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %audio_parm_answer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp53 = icmp sgt i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool59.not = icmp eq i32 %call74, 0
  %26 = select i1 %cmp53, i1 %tobool59.not, i1 false
  %__ret49.1 = select i1 %26, i32 1, i32 %call74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret49.1)
  %tobool66.not = icmp eq i32 %__ret49.1, 0
  %27 = select i1 %cmp53, i1 true, i1 %tobool66.not
  br i1 %27, label %if.end77, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret49.1)
  %phi.cmp = icmp eq i32 %__ret49.1, 0
  call void @finish_wait(ptr noundef %ep1_wait_queue, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %if.end77.cleanup107_crit_edge, label %if.end77.if.end81thread-pre-split_crit_edge

if.end77.if.end81thread-pre-split_crit_edge:      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81thread-pre-split

if.end77.cleanup107_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup107

if.end81thread-pre-split:                         ; preds = %if.end77.if.end81thread-pre-split_crit_edge, %if.end77.thread
  %28 = ptrtoint ptr %audio_parm_answer to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %audio_parm_answer, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end81thread-pre-split, %if.end26.if.end81_crit_edge
  %29 = phi i32 [ %.pr, %if.end81thread-pre-split ], [ %20, %if.end26.if.end81_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp83.not = icmp eq i32 %29, 1
  br i1 %cmp83.not, label %if.else, label %do.body86

do.body86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_set_audio_params.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_set_audio_params, %if.then98)) #7
          to label %if.end103 [label %if.then98], !srcloc !129

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_set_audio_params.__UNIQUE_ID_ddebug251, ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %if.end103

if.else:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %bpp102 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 34
  %30 = ptrtoint ptr %bpp102 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bpp, ptr %bpp102, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then98, %do.body86
  %31 = ptrtoint ptr %audio_parm_answer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %audio_parm_answer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp105 = icmp eq i32 %32, 1
  %cond = select i1 %cmp105, i32 0, i32 -22
  br label %cleanup107

cleanup107:                                       ; preds = %if.end103, %if.end77.cleanup107_crit_edge, %snd_usb_caiaq_send_command.exit.cleanup107_crit_edge, %snd_usb_caiaq_send_command.exit.thread, %sw.epilog.cleanup107_crit_edge, %entry.cleanup107_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end103 ], [ -22, %entry.cleanup107_crit_edge ], [ -22, %sw.epilog.cleanup107_crit_edge ], [ %call10.i, %snd_usb_caiaq_send_command.exit.cleanup107_crit_edge ], [ -32, %if.end77.cleanup107_crit_edge ], [ -5, %snd_usb_caiaq_send_command.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_caiaq_set_auto_msg(ptr noundef %cdev, i32 noundef %digital, i32 noundef %analog, i32 noundef %erp) local_unnamed_addr #0 align 64 {
entry:
  %actual_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i) #7
  %0 = ptrtoint ptr %actual_len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len.i, align 4, !annotation !128
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.snd_usb_caiaq_send_command.exit_crit_edge, label %if.end.i

entry.snd_usb_caiaq_send_command.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_usb_caiaq_send_command.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3 = trunc i32 %erp to i8
  %conv1 = trunc i32 %analog to i8
  %conv = trunc i32 %digital to i8
  %add.ptr.i = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %add.ptr.i, align 1
  %tmp.sroa.5.0.add.ptr.i.sroa_idx = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %tmp.sroa.5.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %tmp.sroa.5.0.add.ptr.i.sroa_idx, align 1
  %tmp.sroa.7.0.add.ptr.i.sroa_idx = getelementptr %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %tmp.sroa.7.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3, ptr %tmp.sroa.7.0.add.ptr.i.sroa_idx, align 1
  %ep1_out_buf7.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 7
  %6 = ptrtoint ptr %ep1_out_buf7.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 11, ptr %ep1_out_buf7.i, align 8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %call10.i = call i32 @usb_bulk_msg(ptr noundef nonnull %2, i32 noundef %or.i, ptr noundef %ep1_out_buf7.i, i32 noundef 4, ptr noundef nonnull %actual_len.i, i32 noundef 200) #7
  br label %snd_usb_caiaq_send_command.exit

snd_usb_caiaq_send_command.exit:                  ; preds = %if.end.i, %entry.snd_usb_caiaq_send_command.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end.i ], [ -5, %entry.snd_usb_caiaq_send_command.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @snd_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_usb_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @snd_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %actual_len.i250.i.i = alloca i32, align 4
  %actual_len.i240.i.i = alloca i32, align 4
  %actual_len.i.i.i.i = alloca i32, align 4
  %actual_len.i229.i.i = alloca i32, align 4
  %actual_len.i218.i.i = alloca i32, align 4
  %actual_len.i.i.i = alloca i32, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %actual_len.i.i = alloca i32, align 4
  %usbpath.i = alloca [32 x i8], align 1
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %id105.i = alloca [16 x i8], align 1
  %card.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card.i) #7
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %card.i, align 4, !annotation !128
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %devnum.032.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x i8], ptr @enable, i32 0, i32 %devnum.032.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end3.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %devnum.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.create_card.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.create_card.exit.thread_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_card.exit.thread

if.end3.i:                                        ; preds = %for.body.i
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %arrayidx4.i = getelementptr [32 x i32], ptr @index, i32 0, i32 %devnum.032.i
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr [32 x ptr], ptr @id, i32 0, i32 %devnum.032.i
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5.i, align 4
  %call.i = call i32 @snd_card_new(ptr noundef %dev.i, i32 noundef %6, ptr noundef %8, ptr noundef null, i32 noundef 3480, ptr noundef nonnull %card.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %if.end3.i.create_card.exit.thread_crit_edge, label %if.end

if.end3.i.create_card.exit.thread_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_card.exit.thread

create_card.exit.thread:                          ; preds = %if.end3.i.create_card.exit.thread_crit_edge, %for.inc.i.create_card.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end3.i.create_card.exit.thread_crit_edge ], [ -19, %for.inc.i.create_card.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data.i, align 8
  %dev9.i = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %dev9.i, align 4
  %card11.i = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %card11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %card11.i, align 8
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %15 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %idVendor.i, align 8
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %17 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %idProduct.i, align 2
  %19 = zext i16 %16 to i32
  %20 = zext i16 %18 to i32
  %21 = shl nuw i32 %20, 16
  %22 = or i32 %21, %19
  %23 = call i32 @llvm.bswap.i32(i32 %22) #7
  %usb_id.i = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 4
  %24 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %usb_id.i, align 4
  %spinlock.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %12, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %spinlock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @create_card.__key, i16 noundef signext 3) #7
  %25 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 9
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %usbpath.i) #7
  %dev.i16 = getelementptr inbounds %struct.snd_usb_audio, ptr %29, i32 0, i32 1
  %30 = call ptr @memset(ptr %usbpath.i, i32 255, i32 32)
  %31 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i16, align 4
  %card2.i = getelementptr inbounds %struct.snd_usb_audio, ptr %29, i32 0, i32 2
  %33 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card2.i, align 8
  %dev6.i = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev6.i, align 8
  %call.i17 = call i32 @usb_set_interface(ptr noundef %32, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.not.i = icmp eq i32 %call.i17, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.init_card.exit.thread.sink.split_crit_edge

if.end.init_card.exit.thread.sink.split_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_card.exit.thread.sink.split

if.end.i:                                         ; preds = %if.end
  %ep1_in_urb.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 1
  call void @usb_init_urb(ptr noundef %ep1_in_urb.i) #7
  %midi_out_urb.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 2
  call void @usb_init_urb(ptr noundef %midi_out_urb.i) #7
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %32, align 8
  %shl.i.i = shl i32 %38, 8
  %or9.i = or i32 %shl.i.i, -1073708928
  %ep1_in_buf.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 6
  %dev1.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 1, i32 8
  %39 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %32, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 1, i32 10
  %40 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or9.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 1, i32 14
  %41 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ep1_in_buf.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 1, i32 19
  %42 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 64, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 1, i32 28
  %43 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @usb_ep1_command_reply_dispatch, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 1, i32 27
  %44 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %29, ptr %context4.i.i, align 4
  %45 = load i32, ptr %32, align 8
  %shl.i196.i = shl i32 %45, 8
  %or12.i = or i32 %shl.i196.i, -1073709056
  %midi_out_buf.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 8
  %dev1.i198.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 2, i32 8
  %46 = ptrtoint ptr %dev1.i198.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %32, ptr %dev1.i198.i, align 4
  %pipe2.i199.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 2, i32 10
  %47 = ptrtoint ptr %pipe2.i199.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or12.i, ptr %pipe2.i199.i, align 4
  %transfer_buffer3.i200.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 2, i32 14
  %48 = ptrtoint ptr %transfer_buffer3.i200.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %midi_out_buf.i, ptr %transfer_buffer3.i200.i, align 4
  %transfer_buffer_length.i201.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 2, i32 19
  %49 = ptrtoint ptr %transfer_buffer_length.i201.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 64, ptr %transfer_buffer_length.i201.i, align 4
  %complete.i202.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 2, i32 28
  %50 = ptrtoint ptr %complete.i202.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @snd_usb_caiaq_midi_output_done, ptr %complete.i202.i, align 4
  %context4.i203.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 2, i32 27
  %51 = ptrtoint ptr %context4.i203.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %29, ptr %context4.i203.i, align 4
  %call15.i = call i32 @usb_urb_ep_type_check(ptr noundef %ep1_in_urb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i18 = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i18, label %lor.lhs.false.i, label %if.end.i.init_card.exit.thread.sink.split_crit_edge

if.end.i.init_card.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_card.exit.thread.sink.split

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call17.i = call i32 @usb_urb_ep_type_check(ptr noundef %midi_out_urb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %do.body24.i, label %lor.lhs.false.i.init_card.exit.thread.sink.split_crit_edge

lor.lhs.false.i.init_card.exit.thread.sink.split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_card.exit.thread.sink.split

do.body24.i:                                      ; preds = %lor.lhs.false.i
  %ep1_wait_queue.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %ep1_wait_queue.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_card.__key) #7
  %prepare_wait_queue.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 12
  call void @__init_waitqueue_head(ptr noundef %prepare_wait_queue.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_card.__key.17) #7
  %call31.i = call i32 @usb_submit_urb(ptr noundef %ep1_in_urb.i, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.not.i = icmp eq i32 %call31.i, 0
  br i1 %cmp32.not.i, label %if.end34.i, label %do.body24.i.init_card.exit.thread_crit_edge

do.body24.i.init_card.exit.thread_crit_edge:      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_card.exit.thread

if.end34.i:                                       ; preds = %do.body24.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i.i) #7
  %52 = ptrtoint ptr %actual_len.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %actual_len.i.i, align 4, !annotation !128
  %53 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i16, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %snd_usb_caiaq_send_command.exit.thread.i, label %snd_usb_caiaq_send_command.exit.i

snd_usb_caiaq_send_command.exit.thread.i:         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i.i) #7
  br label %init_card.exit.thread37

snd_usb_caiaq_send_command.exit.i:                ; preds = %if.end34.i
  %ep1_out_buf7.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7
  %55 = ptrtoint ptr %ep1_out_buf7.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %ep1_out_buf7.i.i, align 8
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %54, align 8
  %shl.i.i.i = shl i32 %57, 8
  %or.i204.i = or i32 %shl.i.i.i, -1073709056
  %call10.i.i = call i32 @usb_bulk_msg(ptr noundef nonnull %54, i32 noundef %or.i204.i, ptr noundef %ep1_out_buf7.i.i, i32 noundef 1, ptr noundef nonnull %actual_len.i.i, i32 noundef 200) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool36.not.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %init_card.exit

if.end38.i:                                       ; preds = %snd_usb_caiaq_send_command.exit.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 455) #7
  %spec_received.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 13
  %58 = ptrtoint ptr %spec_received.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %spec_received.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool45.not.i = icmp eq i32 %59, 0
  br i1 %tobool45.not.i, label %if.then53.i, label %if.end38.i.if.end83.i_crit_edge

if.end38.i.if.end83.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.then53.i:                                      ; preds = %if.end38.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %60 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call56214.i = call i32 @prepare_to_wait_event(ptr noundef %ep1_wait_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %61 = ptrtoint ptr %spec_received.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %spec_received.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool59.not215.not.i = icmp eq i32 %62, 0
  br i1 %tobool59.not215.not.i, label %if.then53.i.cleanup.i_crit_edge, label %if.end79.thread.i

if.then53.i.cleanup.i_crit_edge:                  ; preds = %if.then53.i
  br label %cleanup.i

if.end79.thread.i:                                ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %ep1_wait_queue.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %if.end83.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then53.i.cleanup.i_crit_edge
  %__ret54.1217.i = phi i32 [ %__ret54.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 100, %if.then53.i.cleanup.i_crit_edge ]
  %call76.i = call i32 @schedule_timeout(i32 noundef %__ret54.1217.i) #7
  %call56.i = call i32 @prepare_to_wait_event(ptr noundef %ep1_wait_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %63 = ptrtoint ptr %spec_received.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %spec_received.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool59.not.i = icmp eq i32 %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool63.not.i = icmp eq i32 %call76.i, 0
  %spec.store.select139.i = select i1 %tobool63.not.i, i32 1, i32 %call76.i
  %__ret54.1.i = select i1 %tobool59.not.i, i32 %call76.i, i32 %spec.store.select139.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret54.1.i)
  %tobool69.not.i = icmp eq i32 %__ret54.1.i, 0
  %not.tobool59.not.i = xor i1 %tobool59.not.i, true
  %65 = select i1 %not.tobool59.not.i, i1 true, i1 %tobool69.not.i
  br i1 %65, label %if.end79.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end79.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %ep1_wait_queue.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br i1 %tobool69.not.i, label %if.end79.i.init_card.exit.thread37_crit_edge, label %if.end79.i.if.end83.i_crit_edge

if.end79.i.if.end83.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.end79.i.init_card.exit.thread37_crit_edge:     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_card.exit.thread37

if.end83.i:                                       ; preds = %if.end79.i.if.end83.i_crit_edge, %if.end79.thread.i, %if.end38.i.if.end83.i_crit_edge
  %iManufacturer.i = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 16, i32 10
  %66 = ptrtoint ptr %iManufacturer.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %iManufacturer.i, align 2
  %conv.i = zext i8 %67 to i32
  %vendor_name.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 16
  %call85.i = call i32 @usb_string(ptr noundef %32, i32 noundef %conv.i, ptr noundef %vendor_name.i, i32 noundef 255) #7
  %iProduct.i = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 16, i32 11
  %68 = ptrtoint ptr %iProduct.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %iProduct.i, align 1
  %conv87.i = zext i8 %69 to i32
  %product_name.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 17
  %call89.i = call i32 @usb_string(ptr noundef %32, i32 noundef %conv87.i, ptr noundef %product_name.i, i32 noundef 255) #7
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 2
  %call91.i = call i32 @strscpy(ptr noundef %driver.i, ptr noundef nonnull @.str.5, i32 noundef 16) #7
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 3
  %call95.i = call i32 @strscpy(ptr noundef %shortname.i, ptr noundef %product_name.i, i32 noundef 32) #7
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 6
  %call99.i = call i32 @strscpy(ptr noundef %mixername.i, ptr noundef %product_name.i, i32 noundef 80) #7
  %id.i = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 1
  %70 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp102.i = icmp eq i8 %71, 0
  br i1 %cmp102.i, label %if.then104.i, label %if.end83.i.if.end121.i_crit_edge

if.end83.i.if.end121.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i

if.then104.i:                                     ; preds = %if.end83.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %id105.i) #7
  %72 = call ptr @memset(ptr %id105.i, i32 0, i32 16)
  %73 = ptrtoint ptr %shortname.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %shortname.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool111.not218.not.i = icmp eq i8 %74, 0
  br i1 %tobool111.not218.not.i, label %if.then104.i.for.end119.i_crit_edge, label %if.then104.i.for.body.i19_crit_edge

if.then104.i.for.body.i19_crit_edge:              ; preds = %if.then104.i
  br label %for.body.i19

if.then104.i.for.end119.i_crit_edge:              ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end119.i

for.body.i19:                                     ; preds = %for.inc.i22.for.body.i19_crit_edge, %if.then104.i.for.body.i19_crit_edge
  %75 = phi i8 [ %78, %for.inc.i22.for.body.i19_crit_edge ], [ %74, %if.then104.i.for.body.i19_crit_edge ]
  %c.0220.i = phi ptr [ %incdec.ptr.i, %for.inc.i22.for.body.i19_crit_edge ], [ %shortname.i, %if.then104.i.for.body.i19_crit_edge ]
  %len.0219.i = phi i32 [ %len.1.i, %for.inc.i22.for.body.i19_crit_edge ], [ 0, %if.then104.i.for.body.i19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %75)
  %cmp115.not.i = icmp eq i8 %75, 32
  br i1 %cmp115.not.i, label %for.body.i19.for.inc.i22_crit_edge, label %if.then117.i

for.body.i19.for.inc.i22_crit_edge:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i22

if.then117.i:                                     ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i20 = add nuw nsw i32 %len.0219.i, 1
  %arrayidx.i21 = getelementptr [16 x i8], ptr %id105.i, i32 0, i32 %len.0219.i
  %76 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx.i21, align 1
  br label %for.inc.i22

for.inc.i22:                                      ; preds = %if.then117.i, %for.body.i19.for.inc.i22_crit_edge
  %len.1.i = phi i32 [ %inc.i20, %if.then117.i ], [ %len.0219.i, %for.body.i19.for.inc.i22_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %c.0220.i, i32 1
  %77 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool111.not.i = icmp ne i8 %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len.1.i)
  %cmp112.i = icmp ult i32 %len.1.i, 16
  %or.cond.i = select i1 %tobool111.not.i, i1 %cmp112.i, i1 false
  br i1 %or.cond.i, label %for.inc.i22.for.body.i19_crit_edge, label %for.inc.i22.for.end119.i_crit_edge

for.inc.i22.for.end119.i_crit_edge:               ; preds = %for.inc.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end119.i

for.inc.i22.for.body.i19_crit_edge:               ; preds = %for.inc.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i19

for.end119.i:                                     ; preds = %for.inc.i22.for.end119.i_crit_edge, %if.then104.i.for.end119.i_crit_edge
  call void @snd_card_set_id(ptr noundef %34, ptr noundef nonnull %id105.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id105.i) #7
  br label %if.end121.i

if.end121.i:                                      ; preds = %for.end119.i, %if.end83.i.if.end121.i_crit_edge
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 12
  %79 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i.i, align 8
  %bus_name.i.i = getelementptr inbounds %struct.usb_bus, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %bus_name.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus_name.i.i, align 4
  %devpath.i.i = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 1
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %usbpath.i, i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef %82, ptr noundef %devpath.i.i) #7
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 4
  %call130.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i, i32 noundef 80, ptr noundef nonnull @.str.19, ptr noundef %vendor_name.i, ptr noundef %product_name.i, ptr noundef nonnull %usbpath.i) #7
  %83 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %card2.i, align 8
  %dev1.i205.i = getelementptr inbounds %struct.snd_card, ptr %84, i32 0, i32 27
  %85 = ptrtoint ptr %dev1.i205.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev1.i205.i, align 8
  %usb_id.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %29, i32 0, i32 4
  %87 = ptrtoint ptr %usb_id.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %usb_id.i.i, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %88, label %if.end121.i.sw.epilog.i.i_crit_edge [
    i32 399251817, label %sw.bb.i.i
    i32 399251776, label %sw.bb5.i.i
    i32 399247381, label %sw.bb12.i.i
    i32 399251832, label %sw.bb16.i.i
  ]

if.end121.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end121.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i.i.i) #7
  %90 = ptrtoint ptr %actual_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %actual_len.i.i.i, align 4, !annotation !128
  %91 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i16, align 4
  %tobool.not.i.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.i.snd_usb_caiaq_send_command.exit.i.i_crit_edge, label %if.end.i.i.i

sw.bb.i.i.snd_usb_caiaq_send_command.exit.i.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_usb_caiaq_send_command.exit.i.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 1
  %93 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  %val.sroa.9.0.add.ptr.i.sroa_idx.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 2
  %94 = ptrtoint ptr %val.sroa.9.0.add.ptr.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %val.sroa.9.0.add.ptr.i.sroa_idx.i.i, align 1
  %val.sroa.12.0.add.ptr.i.sroa_idx.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 3
  %95 = ptrtoint ptr %val.sroa.12.0.add.ptr.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %val.sroa.12.0.add.ptr.i.sroa_idx.i.i, align 1
  %96 = ptrtoint ptr %ep1_out_buf7.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 5, ptr %ep1_out_buf7.i.i, align 8
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %92, align 8
  %shl.i.i.i.i = shl i32 %98, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -1073709056
  %call10.i.i.i = call i32 @usb_bulk_msg(ptr noundef nonnull %92, i32 noundef %or.i.i.i, ptr noundef %ep1_out_buf7.i.i, i32 noundef 4, ptr noundef nonnull %actual_len.i.i.i, i32 noundef 200) #7
  br label %snd_usb_caiaq_send_command.exit.i.i

snd_usb_caiaq_send_command.exit.i.i:              ; preds = %if.end.i.i.i, %sw.bb.i.i.snd_usb_caiaq_send_command.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i.i.i) #7
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.end121.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i218.i.i) #7
  %99 = ptrtoint ptr %actual_len.i218.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %actual_len.i218.i.i, align 4, !annotation !128
  %100 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i16, align 4
  %tobool.not.i220.i.i = icmp eq ptr %101, null
  br i1 %tobool.not.i220.i.i, label %sw.bb5.i.i.snd_usb_caiaq_send_command.exit228.i.i_crit_edge, label %if.end.i221.i.i

sw.bb5.i.i.snd_usb_caiaq_send_command.exit228.i.i_crit_edge: ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_usb_caiaq_send_command.exit228.i.i

if.end.i221.i.i:                                  ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i222.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 1
  %102 = ptrtoint ptr %add.ptr.i222.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %add.ptr.i222.i.i, align 1
  %val.sroa.9.0.add.ptr.i222.sroa_idx.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 2
  %103 = ptrtoint ptr %val.sroa.9.0.add.ptr.i222.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 64, ptr %val.sroa.9.0.add.ptr.i222.sroa_idx.i.i, align 1
  %val.sroa.12.0.add.ptr.i222.sroa_idx.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 3
  %104 = ptrtoint ptr %val.sroa.12.0.add.ptr.i222.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 64, ptr %val.sroa.12.0.add.ptr.i222.sroa_idx.i.i, align 1
  %val.sroa.15.0.add.ptr.i222.sroa_idx.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 4
  %105 = ptrtoint ptr %val.sroa.15.0.add.ptr.i222.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %val.sroa.15.0.add.ptr.i222.sroa_idx.i.i, align 1
  %106 = ptrtoint ptr %ep1_out_buf7.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 5, ptr %ep1_out_buf7.i.i, align 8
  %107 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %101, align 8
  %shl.i.i224.i.i = shl i32 %108, 8
  %or.i225.i.i = or i32 %shl.i.i224.i.i, -1073709056
  %call10.i226.i.i = call i32 @usb_bulk_msg(ptr noundef nonnull %101, i32 noundef %or.i225.i.i, ptr noundef %ep1_out_buf7.i.i, i32 noundef 5, ptr noundef nonnull %actual_len.i218.i.i, i32 noundef 200) #7
  br label %snd_usb_caiaq_send_command.exit228.i.i

snd_usb_caiaq_send_command.exit228.i.i:           ; preds = %if.end.i221.i.i, %sw.bb5.i.i.snd_usb_caiaq_send_command.exit228.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i218.i.i) #7
  br label %sw.epilog.i.i

sw.bb12.i.i:                                      ; preds = %if.end121.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i229.i.i) #7
  %109 = ptrtoint ptr %actual_len.i229.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %actual_len.i229.i.i, align 4, !annotation !128
  %110 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i16, align 4
  %tobool.not.i231.i.i = icmp eq ptr %111, null
  br i1 %tobool.not.i231.i.i, label %sw.bb12.i.i.snd_usb_caiaq_send_command.exit239.i.i_crit_edge, label %if.end.i232.i.i

sw.bb12.i.i.snd_usb_caiaq_send_command.exit239.i.i_crit_edge: ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_usb_caiaq_send_command.exit239.i.i

if.end.i232.i.i:                                  ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i233.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 1
  %112 = ptrtoint ptr %add.ptr.i233.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %add.ptr.i233.i.i, align 1
  %113 = ptrtoint ptr %ep1_out_buf7.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 5, ptr %ep1_out_buf7.i.i, align 8
  %114 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %111, align 8
  %shl.i.i235.i.i = shl i32 %115, 8
  %or.i236.i.i = or i32 %shl.i.i235.i.i, -1073709056
  %call10.i237.i.i = call i32 @usb_bulk_msg(ptr noundef nonnull %111, i32 noundef %or.i236.i.i, ptr noundef %ep1_out_buf7.i.i, i32 noundef 2, ptr noundef nonnull %actual_len.i229.i.i, i32 noundef 200) #7
  br label %snd_usb_caiaq_send_command.exit239.i.i

snd_usb_caiaq_send_command.exit239.i.i:           ; preds = %if.end.i232.i.i, %sw.bb12.i.i.snd_usb_caiaq_send_command.exit239.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i229.i.i) #7
  br label %sw.epilog.i.i

sw.bb16.i.i:                                      ; preds = %if.end121.i
  %control_state.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 38
  %116 = ptrtoint ptr %control_state.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -1, ptr %control_state.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i.i.i.i) #7
  %117 = ptrtoint ptr %actual_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1, ptr %actual_len.i.i.i.i, align 4, !annotation !128
  %118 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i16, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %119, null
  br i1 %tobool.not.i.i.i.i, label %snd_usb_caiaq_set_auto_msg.exit.thread.i.i, label %snd_usb_caiaq_set_auto_msg.exit.i.i

snd_usb_caiaq_set_auto_msg.exit.thread.i.i:       ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i240.i.i) #7
  br label %snd_usb_caiaq_send_command.exit249.i.i

snd_usb_caiaq_set_auto_msg.exit.i.i:              ; preds = %sw.bb16.i.i
  %add.ptr.i.i.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 1
  %120 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %add.ptr.i.i.i.i, align 1
  %tmp.sroa.5.0.add.ptr.i.sroa_idx.i.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 2
  %121 = ptrtoint ptr %tmp.sroa.5.0.add.ptr.i.sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %tmp.sroa.5.0.add.ptr.i.sroa_idx.i.i.i, align 1
  %tmp.sroa.7.0.add.ptr.i.sroa_idx.i.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 3
  %122 = ptrtoint ptr %tmp.sroa.7.0.add.ptr.i.sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %tmp.sroa.7.0.add.ptr.i.sroa_idx.i.i.i, align 1
  %123 = ptrtoint ptr %ep1_out_buf7.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 11, ptr %ep1_out_buf7.i.i, align 8
  %124 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %119, align 8
  %shl.i.i.i.i.i = shl i32 %125, 8
  %or.i.i.i.i = or i32 %shl.i.i.i.i.i, -1073709056
  %call10.i.i.i.i = call i32 @usb_bulk_msg(ptr noundef nonnull %119, i32 noundef %or.i.i.i.i, ptr noundef %ep1_out_buf7.i.i, i32 noundef 4, ptr noundef nonnull %actual_len.i.i.i.i, i32 noundef 200) #7
  %126 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr.i.i = load ptr, ptr %dev.i16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i240.i.i) #7
  %127 = ptrtoint ptr %actual_len.i240.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %actual_len.i240.i.i, align 4, !annotation !128
  %tobool.not.i242.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool.not.i242.i.i, label %snd_usb_caiaq_set_auto_msg.exit.i.i.snd_usb_caiaq_send_command.exit249.i.i_crit_edge, label %if.end.i243.i.i

snd_usb_caiaq_set_auto_msg.exit.i.i.snd_usb_caiaq_send_command.exit249.i.i_crit_edge: ; preds = %snd_usb_caiaq_set_auto_msg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_usb_caiaq_send_command.exit249.i.i

if.end.i243.i.i:                                  ; preds = %snd_usb_caiaq_set_auto_msg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %ep1_out_buf7.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 4, ptr %ep1_out_buf7.i.i, align 8
  %129 = ptrtoint ptr %.pr.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %.pr.i.i, align 8
  %shl.i.i245.i.i = shl i32 %130, 8
  %or.i246.i.i = or i32 %shl.i.i245.i.i, -1073709056
  %call10.i247.i.i = call i32 @usb_bulk_msg(ptr noundef nonnull %.pr.i.i, i32 noundef %or.i246.i.i, ptr noundef %ep1_out_buf7.i.i, i32 noundef 1, ptr noundef nonnull %actual_len.i240.i.i, i32 noundef 200) #7
  br label %snd_usb_caiaq_send_command.exit249.i.i

snd_usb_caiaq_send_command.exit249.i.i:           ; preds = %if.end.i243.i.i, %snd_usb_caiaq_set_auto_msg.exit.i.i.snd_usb_caiaq_send_command.exit249.i.i_crit_edge, %snd_usb_caiaq_set_auto_msg.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i240.i.i) #7
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 328) #7
  %131 = ptrtoint ptr %control_state.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %control_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %132)
  %cmp.not.i.i = icmp eq i8 %132, -1
  br i1 %cmp.not.i.i, label %if.then32.i.i, label %snd_usb_caiaq_send_command.exit249.i.i.if.end66.i.i_crit_edge

snd_usb_caiaq_send_command.exit249.i.i.if.end66.i.i_crit_edge: ; preds = %snd_usb_caiaq_send_command.exit249.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i.i

if.then32.i.i:                                    ; preds = %snd_usb_caiaq_send_command.exit249.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #7
  %133 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #7
  %call34272.i.i = call i32 @prepare_to_wait_event(ptr noundef %ep1_wait_queue.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #7
  %134 = ptrtoint ptr %control_state.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %control_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %135)
  %cmp39.not273.not.i.i = icmp eq i8 %135, -1
  br i1 %cmp39.not273.not.i.i, label %if.then32.i.i.cleanup.i.i_crit_edge, label %if.end62.thread.i.i

if.then32.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then32.i.i
  br label %cleanup.i.i

if.end62.thread.i.i:                              ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %ep1_wait_queue.i, ptr noundef nonnull %__wq_entry.i.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #7
  br label %if.end66.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then32.i.i.cleanup.i.i_crit_edge
  %__ret33.1275.i.i = phi i32 [ %__ret33.1.i.i, %cleanup.i.i.cleanup.i.i_crit_edge ], [ 100, %if.then32.i.i.cleanup.i.i_crit_edge ]
  %call59.i.i = call i32 @schedule_timeout(i32 noundef %__ret33.1275.i.i) #7
  %call34.i.i = call i32 @prepare_to_wait_event(ptr noundef %ep1_wait_queue.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #7
  %136 = ptrtoint ptr %control_state.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %control_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %137)
  %cmp39.not.i.i = icmp eq i8 %137, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool45.not.i.i = icmp eq i32 %call59.i.i, 0
  %spec.store.select166.i.i = select i1 %tobool45.not.i.i, i32 1, i32 %call59.i.i
  %__ret33.1.i.i = select i1 %cmp39.not.i.i, i32 %call59.i.i, i32 %spec.store.select166.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret33.1.i.i)
  %tobool52.not.i.i = icmp eq i32 %__ret33.1.i.i, 0
  %not.cmp39.not.i.i = xor i1 %cmp39.not.i.i, true
  %138 = select i1 %not.cmp39.not.i.i, i1 true, i1 %tobool52.not.i.i
  br i1 %138, label %if.end62.i.i, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

if.end62.i.i:                                     ; preds = %cleanup.i.i
  call void @finish_wait(ptr noundef %ep1_wait_queue.i, ptr noundef nonnull %__wq_entry.i.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #7
  br i1 %tobool52.not.i.i, label %if.end62.i.i.init_card.exit.thread33_crit_edge, label %if.end62.i.i.if.end66.i.i_crit_edge

if.end62.i.i.if.end66.i.i_crit_edge:              ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i.i

if.end62.i.i.init_card.exit.thread33_crit_edge:   ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_card.exit.thread33

if.end66.i.i:                                     ; preds = %if.end62.i.i.if.end66.i.i_crit_edge, %if.end62.thread.i.i, %snd_usb_caiaq_send_command.exit249.i.i.if.end66.i.i_crit_edge
  %arrayidx68.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 38, i32 1
  %139 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx68.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %140)
  %cmp70.not.i.i = icmp eq i8 %140, 2
  br i1 %cmp70.not.i.i, label %lor.lhs.false.i.i, label %if.end66.i.i.if.then83.i.i_crit_edge

if.end66.i.i.if.then83.i.i_crit_edge:             ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83.i.i

lor.lhs.false.i.i:                                ; preds = %if.end66.i.i
  %arrayidx73.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 38, i32 2
  %141 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx73.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %142)
  %cmp75.not.i.i = icmp eq i8 %142, 3
  br i1 %cmp75.not.i.i, label %lor.lhs.false77.i.i, label %lor.lhs.false.i.i.if.then83.i.i_crit_edge

lor.lhs.false.i.i.if.then83.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83.i.i

lor.lhs.false77.i.i:                              ; preds = %lor.lhs.false.i.i
  %arrayidx79.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 38, i32 4
  %143 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx79.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %144)
  %cmp81.not.i.i = icmp eq i8 %144, 2
  br i1 %cmp81.not.i.i, label %lor.lhs.false77.i.i.sw.epilog.i.i_crit_edge, label %lor.lhs.false77.i.i.if.then83.i.i_crit_edge

lor.lhs.false77.i.i.if.then83.i.i_crit_edge:      ; preds = %lor.lhs.false77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83.i.i

lor.lhs.false77.i.i.sw.epilog.i.i_crit_edge:      ; preds = %lor.lhs.false77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

if.then83.i.i:                                    ; preds = %lor.lhs.false77.i.i.if.then83.i.i_crit_edge, %lor.lhs.false.i.i.if.then83.i.i_crit_edge, %if.end66.i.i.if.then83.i.i_crit_edge
  %145 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 2, ptr %arrayidx68.i.i, align 1
  %arrayidx87.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 38, i32 2
  %146 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 3, ptr %arrayidx87.i.i, align 2
  %arrayidx89.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 38, i32 4
  %147 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 2, ptr %arrayidx89.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i250.i.i) #7
  %148 = ptrtoint ptr %actual_len.i250.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %actual_len.i250.i.i, align 4, !annotation !128
  %149 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i16, align 4
  %tobool.not.i252.i.i = icmp eq ptr %150, null
  br i1 %tobool.not.i252.i.i, label %if.then83.i.i.snd_usb_caiaq_send_command.exit260.i.i_crit_edge, label %if.end.i253.i.i

if.then83.i.i.snd_usb_caiaq_send_command.exit260.i.i_crit_edge: ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_usb_caiaq_send_command.exit260.i.i

if.end.i253.i.i:                                  ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i254.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 7, i32 1
  %151 = call ptr @memcpy(ptr %add.ptr.i254.i.i, ptr %control_state.i.i, i32 6)
  %152 = ptrtoint ptr %ep1_out_buf7.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 5, ptr %ep1_out_buf7.i.i, align 8
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %150, align 8
  %shl.i.i256.i.i = shl i32 %154, 8
  %or.i257.i.i = or i32 %shl.i.i256.i.i, -1073709056
  %call10.i258.i.i = call i32 @usb_bulk_msg(ptr noundef nonnull %150, i32 noundef %or.i257.i.i, ptr noundef %ep1_out_buf7.i.i, i32 noundef 7, ptr noundef nonnull %actual_len.i250.i.i, i32 noundef 200) #7
  br label %snd_usb_caiaq_send_command.exit260.i.i

snd_usb_caiaq_send_command.exit260.i.i:           ; preds = %if.end.i253.i.i, %if.then83.i.i.snd_usb_caiaq_send_command.exit260.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i250.i.i) #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %snd_usb_caiaq_send_command.exit260.i.i, %lor.lhs.false77.i.i.sw.epilog.i.i_crit_edge, %snd_usb_caiaq_send_command.exit239.i.i, %snd_usb_caiaq_send_command.exit228.i.i, %snd_usb_caiaq_send_command.exit.i.i, %if.end121.i.sw.epilog.i.i_crit_edge
  %num_analog_audio_out.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 9, i32 6
  %155 = ptrtoint ptr %num_analog_audio_out.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %num_analog_audio_out.i.i, align 1
  %conv94.i.i = zext i8 %156 to i32
  %num_analog_audio_in.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 9, i32 7
  %157 = ptrtoint ptr %num_analog_audio_in.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %num_analog_audio_in.i.i, align 8
  %conv96.i.i = zext i8 %158 to i32
  %add.i.i = add nuw nsw i32 %conv96.i.i, %conv94.i.i
  %num_digital_audio_out.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 9, i32 8
  %159 = ptrtoint ptr %num_digital_audio_out.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %num_digital_audio_out.i.i, align 1
  %conv98.i.i = zext i8 %160 to i32
  %add99.i.i = add nuw nsw i32 %add.i.i, %conv98.i.i
  %num_digital_audio_in.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 9, i32 9
  %161 = ptrtoint ptr %num_digital_audio_in.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %num_digital_audio_in.i.i, align 2
  %conv101.i.i = zext i8 %162 to i32
  %add102.i.i = sub nsw i32 0, %conv101.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add99.i.i, i32 %add102.i.i)
  %cmp103.not.i.i = icmp eq i32 %add99.i.i, %add102.i.i
  br i1 %cmp103.not.i.i, label %sw.epilog.i.i.if.end114.i.i_crit_edge, label %if.then105.i.i

sw.epilog.i.i.if.end114.i.i_crit_edge:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.i.i

if.then105.i.i:                                   ; preds = %sw.epilog.i.i
  %call106.i.i = call i32 @snd_usb_caiaq_audio_init(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i.i)
  %cmp107.i.i = icmp slt i32 %call106.i.i, 0
  br i1 %cmp107.i.i, label %do.end112.i.i, label %if.then105.i.i.if.end114.i.i_crit_edge

if.then105.i.i.if.end114.i.i_crit_edge:           ; preds = %if.then105.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.i.i

do.end112.i.i:                                    ; preds = %if.then105.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.28, i32 noundef %call106.i.i) #10
  br label %if.end114.i.i

if.end114.i.i:                                    ; preds = %do.end112.i.i, %if.then105.i.i.if.end114.i.i_crit_edge, %sw.epilog.i.i.if.end114.i.i_crit_edge
  %num_midi_in.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 9, i32 11
  %163 = ptrtoint ptr %num_midi_in.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %num_midi_in.i.i, align 4
  %conv116.i.i = zext i8 %164 to i32
  %num_midi_out.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %29, i32 0, i32 9, i32 10
  %165 = ptrtoint ptr %num_midi_out.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %num_midi_out.i.i, align 1
  %conv118.i.i = zext i8 %166 to i32
  %add119.i.i = sub nsw i32 0, %conv118.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv116.i.i, i32 %add119.i.i)
  %cmp120.not.i.i = icmp eq i32 %conv116.i.i, %add119.i.i
  br i1 %cmp120.not.i.i, label %if.end114.i.i.if.end131.i.i_crit_edge, label %if.then122.i.i

if.end114.i.i.if.end131.i.i_crit_edge:            ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131.i.i

if.then122.i.i:                                   ; preds = %if.end114.i.i
  %call123.i.i = call i32 @snd_usb_caiaq_midi_init(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i.i)
  %cmp124.i.i = icmp slt i32 %call123.i.i, 0
  br i1 %cmp124.i.i, label %do.end129.i.i, label %if.then122.i.i.if.end131.i.i_crit_edge

if.then122.i.i.if.end131.i.i_crit_edge:           ; preds = %if.then122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131.i.i

do.end129.i.i:                                    ; preds = %if.then122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.31, i32 noundef %call123.i.i) #10
  br label %if.end131.i.i

if.end131.i.i:                                    ; preds = %do.end129.i.i, %if.then122.i.i.if.end131.i.i_crit_edge, %if.end114.i.i.if.end131.i.i_crit_edge
  %call132.i.i = call i32 @snd_usb_caiaq_input_init(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i.i)
  %cmp133.i.i = icmp slt i32 %call132.i.i, 0
  br i1 %cmp133.i.i, label %do.end138.i.i, label %if.end131.i.i.if.end139.i.i_crit_edge

if.end131.i.i.if.end139.i.i_crit_edge:            ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139.i.i

do.end138.i.i:                                    ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.34, i32 noundef %call132.i.i) #10
  br label %if.end139.i.i

if.end139.i.i:                                    ; preds = %do.end138.i.i, %if.end131.i.i.if.end139.i.i_crit_edge
  %167 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %card2.i, align 8
  %call142.i.i = call i32 @snd_card_register(ptr noundef %168) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i.i)
  %cmp143.i.i = icmp slt i32 %call142.i.i, 0
  br i1 %cmp143.i.i, label %do.end148.i.i, label %if.end139.i.i.if.end152.i.i_crit_edge

if.end139.i.i.if.end152.i.i_crit_edge:            ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152.i.i

do.end148.i.i:                                    ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.37, i32 noundef %call142.i.i) #10
  %169 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %card2.i, align 8
  %call151.i.i = call i32 @snd_card_free(ptr noundef %170) #7
  br label %if.end152.i.i

if.end152.i.i:                                    ; preds = %do.end148.i.i, %if.end139.i.i.if.end152.i.i_crit_edge
  %call153.i.i = call i32 @snd_usb_caiaq_control_init(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153.i.i)
  %cmp154.i.i = icmp slt i32 %call153.i.i, 0
  br i1 %cmp154.i.i, label %do.end159.i.i, label %if.end152.i.i.init_card.exit.thread33_crit_edge

if.end152.i.i.init_card.exit.thread33_crit_edge:  ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_card.exit.thread33

do.end159.i.i:                                    ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.40, i32 noundef %call153.i.i) #10
  br label %init_card.exit.thread33

init_card.exit.thread.sink.split:                 ; preds = %lor.lhs.false.i.init_card.exit.thread.sink.split_crit_edge, %if.end.i.init_card.exit.thread.sink.split_crit_edge, %if.end.init_card.exit.thread.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.11, %if.end.init_card.exit.thread.sink.split_crit_edge ], [ @.str.14, %lor.lhs.false.i.init_card.exit.thread.sink.split_crit_edge ], [ @.str.14, %if.end.i.init_card.exit.thread.sink.split_crit_edge ]
  %retval.0.i23.ph.ph = phi i32 [ -5, %if.end.init_card.exit.thread.sink.split_crit_edge ], [ -22, %lor.lhs.false.i.init_card.exit.thread.sink.split_crit_edge ], [ -22, %if.end.i.init_card.exit.thread.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull %.str.11.sink) #10
  br label %init_card.exit.thread

init_card.exit.thread:                            ; preds = %init_card.exit.thread.sink.split, %do.body24.i.init_card.exit.thread_crit_edge
  %retval.0.i23.ph = phi i32 [ -5, %do.body24.i.init_card.exit.thread_crit_edge ], [ %retval.0.i23.ph.ph, %init_card.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %usbpath.i) #7
  br label %do.end

init_card.exit.thread33:                          ; preds = %do.end159.i.i, %if.end152.i.i.init_card.exit.thread33_crit_edge, %if.end62.i.i.init_card.exit.thread33_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %usbpath.i) #7
  br label %cleanup

init_card.exit.thread37:                          ; preds = %if.end79.i.init_card.exit.thread37_crit_edge, %snd_usb_caiaq_send_command.exit.thread.i
  %err.0.i.ph = phi i32 [ -5, %snd_usb_caiaq_send_command.exit.thread.i ], [ -19, %if.end79.i.init_card.exit.thread37_crit_edge ]
  call void @usb_kill_urb(ptr noundef %ep1_in_urb.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %usbpath.i) #7
  br label %do.end

init_card.exit:                                   ; preds = %snd_usb_caiaq_send_command.exit.i
  call void @usb_kill_urb(ptr noundef %ep1_in_urb.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %usbpath.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp3 = icmp slt i32 %call10.i.i, 0
  br i1 %cmp3, label %init_card.exit.do.end_crit_edge, label %init_card.exit.cleanup_crit_edge

init_card.exit.cleanup_crit_edge:                 ; preds = %init_card.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

init_card.exit.do.end_crit_edge:                  ; preds = %init_card.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %init_card.exit.do.end_crit_edge, %init_card.exit.thread37, %init_card.exit.thread
  %retval.0.i2331 = phi i32 [ %retval.0.i23.ph, %init_card.exit.thread ], [ %call10.i.i, %init_card.exit.do.end_crit_edge ], [ %err.0.i.ph, %init_card.exit.thread37 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i2331) #10
  %call5 = call i32 @snd_card_free(ptr noundef %26) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %init_card.exit.cleanup_crit_edge, %init_card.exit.thread33, %create_card.exit.thread
  %retval.0 = phi i32 [ %retval.0.i2331, %do.end ], [ 0, %init_card.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %create_card.exit.thread ], [ 0, %init_card.exit.thread33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb_dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 8
  %2 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_disconnect.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_disconnect, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !129

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_disconnect.__UNIQUE_ID_ddebug252, ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, ptr noundef %intf) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %call7 = tail call i32 @snd_card_disconnect(ptr noundef nonnull %1) #7
  tail call void @snd_usb_caiaq_input_free(ptr noundef %5) #7
  tail call void @snd_usb_caiaq_audio_free(ptr noundef %5) #7
  %ep1_in_urb = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 1
  tail call void @usb_kill_urb(ptr noundef %ep1_in_urb) #7
  %midi_out_urb = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 2
  tail call void @usb_kill_urb(ptr noundef %midi_out_urb) #7
  %call8 = tail call i32 @snd_card_free(ptr noundef nonnull %1) #7
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  %call10 = tail call i32 @usb_reset_device(ptr noundef %add.ptr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_init_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_ep1_command_reply_dispatch(ptr nocapture noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  %tobool3.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.20, i32 noundef %7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %9, label %if.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 9, label %sw.bb29
    i8 6, label %sw.bb33
    i8 4, label %sw.bb39
    i8 2, label %if.end.sw.bb51_crit_edge
    i8 3, label %if.end.sw.bb51_crit_edge104
  ]

if.end.sw.bb51_crit_edge104:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

if.end.sw.bb51_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %spec = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 9
  %add.ptr = getelementptr i8, ptr %5, i32 1
  %11 = call ptr @memcpy(ptr %spec, ptr %add.ptr, i32 14)
  %12 = ptrtoint ptr %spec to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %spec, align 8
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %spec to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %spec, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_ep1_command_reply_dispatch.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_ep1_command_reply_dispatch, %if.then12)) #7
          to label %do.end28 [label %if.then12], !srcloc !129

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %spec to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %spec, align 8
  %conv15 = zext i16 %17 to i32
  %num_analog_audio_in = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 9, i32 7
  %18 = ptrtoint ptr %num_analog_audio_in to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_analog_audio_in, align 8
  %conv17 = zext i8 %19 to i32
  %num_analog_audio_out = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 9, i32 6
  %20 = ptrtoint ptr %num_analog_audio_out to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_analog_audio_out, align 1
  %conv19 = zext i8 %21 to i32
  %num_midi_in = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 9, i32 11
  %22 = ptrtoint ptr %num_midi_in to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_midi_in, align 4
  %conv21 = zext i8 %23 to i32
  %num_midi_out = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 9, i32 10
  %24 = ptrtoint ptr %num_midi_out to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_midi_out, align 1
  %conv23 = zext i8 %25 to i32
  %data_alignment = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 9, i32 12
  %26 = ptrtoint ptr %data_alignment to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data_alignment, align 1
  %conv25 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_ep1_command_reply_dispatch.__UNIQUE_ID_ddebug249, ptr noundef %dev2, ptr noundef nonnull @.str.23, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv25) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then12, %sw.bb
  %spec_received = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 13
  %28 = ptrtoint ptr %spec_received to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %spec_received, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %spec_received, align 4
  %ep1_wait_queue = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %ep1_wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx30 = getelementptr i8, ptr %5, i32 1
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %31 to i32
  %audio_parm_answer = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 14
  %32 = ptrtoint ptr %audio_parm_answer to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv31, ptr %audio_parm_answer, align 8
  %ep1_wait_queue32 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %ep1_wait_queue32, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx34 = getelementptr i8, ptr %5, i32 1
  %33 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %34 to i32
  %add.ptr36 = getelementptr i8, ptr %5, i32 3
  %arrayidx37 = getelementptr i8, ptr %5, i32 2
  %35 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %36 to i32
  tail call void @snd_usb_caiaq_midi_handle_input(ptr noundef nonnull %3, i32 noundef %conv35, ptr noundef %add.ptr36, i32 noundef %conv38) #7
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usb_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 399251832, i32 %38)
  %cmp = icmp eq i32 %38, 399251832
  br i1 %cmp, label %if.then41, label %sw.bb39.sw.bb51_crit_edge

sw.bb39.sw.bb51_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

if.then41:                                        ; preds = %sw.bb39
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %39 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %40)
  %cmp42 = icmp ugt i32 %40, 256
  br i1 %cmp42, label %if.then44, label %if.then41.if.end46_crit_edge

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 256, ptr %actual_length, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then41.if.end46_crit_edge
  %control_state = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 38
  %add.ptr47 = getelementptr i8, ptr %5, i32 1
  %42 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %actual_length, align 4
  %44 = call ptr @memcpy(ptr %control_state, ptr %add.ptr47, i32 %43)
  %ep1_wait_queue49 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %ep1_wait_queue49, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %sw.epilog

sw.bb51:                                          ; preds = %sw.bb39.sw.bb51_crit_edge, %if.end.sw.bb51_crit_edge, %if.end.sw.bb51_crit_edge104
  %actual_length52 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %45 = ptrtoint ptr %actual_length52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %actual_length52, align 4
  tail call void @snd_usb_caiaq_input_dispatch(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %46) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb51, %if.end46, %sw.bb33, %sw.bb29, %do.end28, %if.end.sw.epilog_crit_edge
  %ep1_in_urb = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 1
  %actual_length53 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 1, i32 20
  %47 = ptrtoint ptr %actual_length53 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %actual_length53, align 4
  %call55 = tail call i32 @usb_submit_urb(ptr noundef %ep1_in_urb, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end61, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end61:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.25) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_caiaq_midi_output_done(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_ep_type_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_card_set_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_caiaq_midi_handle_input(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_caiaq_input_dispatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_caiaq_audio_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_caiaq_midi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_caiaq_input_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_caiaq_control_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_caiaq_input_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_caiaq_audio_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !54, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !79, !80, !81, !82, !83, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__UNIQUE_ID_author239, !1, !"__UNIQUE_ID_author239", i1 false, i1 false}
!1 = !{!"../sound/usb/caiaq/device.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description240, !3, !"__UNIQUE_ID_description240", i1 false, i1 false}
!3 = !{!"../sound/usb/caiaq/device.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file241, !5, !"__UNIQUE_ID_file241", i1 false, i1 false}
!5 = !{!"../sound/usb/caiaq/device.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license242, !5, !"__UNIQUE_ID_license242", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/usb/caiaq/device.c", i32 34, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype243, !8, !"__UNIQUE_ID_indextype243", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index244, !11, !"__UNIQUE_ID_index244", i1 false, i1 false}
!11 = !{!"../sound/usb/caiaq/device.c", i32 35, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/usb/caiaq/device.c", i32 36, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype245, !13, !"__UNIQUE_ID_idtype245", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id246, !16, !"__UNIQUE_ID_id246", i1 false, i1 false}
!16 = !{!"../sound/usb/caiaq/device.c", i32 37, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/usb/caiaq/device.c", i32 38, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype247, !18, !"__UNIQUE_ID_enabletype247", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable248, !21, !"__UNIQUE_ID_enable248", i1 false, i1 false}
!21 = !{!"../sound/usb/caiaq/device.c", i32 39, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/usb/caiaq/device.c", i32 263, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @snd_usb_caiaq_set_audio_params.__UNIQUE_ID_ddebug250, !23, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/usb/caiaq/device.c", i32 278, i32 3}
!30 = !{ptr @snd_usb_caiaq_set_audio_params.__UNIQUE_ID_ddebug251, !29, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!31 = !{ptr @__initcall__kmod_snd_usb_caiaq__253_557_snd_usb_driver_init6, !32, !"__initcall__kmod_snd_usb_caiaq__253_557_snd_usb_driver_init6", i1 false, i1 false}
!32 = !{!"../sound/usb/caiaq/device.c", i32 557, i32 1}
!33 = !{ptr @__exitcall_snd_usb_driver_exit, !32, !"__exitcall_snd_usb_driver_exit", i1 false, i1 false}
!34 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!35 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!36 = !{ptr @index, !37, !"index", i1 false, i1 false}
!37 = !{!"../sound/usb/caiaq/device.c", i32 30, i32 12}
!38 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!39 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!40 = !{ptr @id, !41, !"id", i1 false, i1 false}
!41 = !{!"../sound/usb/caiaq/device.c", i32 31, i32 14}
!42 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!43 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!44 = !{ptr @enable, !45, !"enable", i1 false, i1 false}
!45 = !{!"../sound/usb/caiaq/device.c", i32 32, i32 13}
!46 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/usb/caiaq/device.c", i32 551, i32 12}
!48 = !{ptr @snd_usb_driver, !49, !"snd_usb_driver", i1 false, i1 false}
!49 = !{!"../sound/usb/caiaq/device.c", i32 550, i32 26}
!50 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/usb/caiaq/device.c", i32 514, i32 3}
!52 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @snd_probe._entry, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @snd_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @create_card.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../sound/usb/caiaq/device.c", i32 406, i32 2}
!59 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/usb/caiaq/device.c", i32 421, i32 3}
!62 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @init_card._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @init_card._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/usb/caiaq/device.c", i32 441, i32 3}
!67 = !{ptr @init_card._entry.13, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @init_card._entry_ptr.15, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @init_card.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../sound/usb/caiaq/device.c", i32 445, i32 2}
!71 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @init_card.__key.17, !73, !"__key", i1 false, i1 false}
!73 = !{!"../sound/usb/caiaq/device.c", i32 446, i32 2}
!74 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/usb/caiaq/device.c", i32 488, i32 51}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/usb/caiaq/device.c", i32 139, i32 3}
!79 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @usb_ep1_command_reply_dispatch._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @usb_ep1_command_reply_dispatch._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/usb/caiaq/device.c", i32 147, i32 3}
!85 = !{ptr @usb_ep1_command_reply_dispatch.__UNIQUE_ID_ddebug249, !84, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/usb/caiaq/device.c", i32 187, i32 3}
!88 = !{ptr @usb_ep1_command_reply_dispatch._entry.24, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @usb_ep1_command_reply_dispatch._entry_ptr.26, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/usb.h", i32 912, i32 31}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/usb/caiaq/device.c", i32 351, i32 4}
!94 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @setup_card._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @setup_card._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/usb/caiaq/device.c", i32 358, i32 4}
!99 = !{ptr @setup_card._entry.30, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @setup_card._entry_ptr.32, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/usb/caiaq/device.c", i32 364, i32 3}
!103 = !{ptr @setup_card._entry.33, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @setup_card._entry_ptr.35, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/usb/caiaq/device.c", i32 370, i32 3}
!107 = !{ptr @setup_card._entry.36, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @setup_card._entry_ptr.38, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/usb/caiaq/device.c", i32 376, i32 3}
!111 = !{ptr @setup_card._entry.39, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @setup_card._entry_ptr.41, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/usb/caiaq/device.c", i32 532, i32 2}
!115 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @snd_disconnect.__UNIQUE_ID_ddebug252, !114, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!117 = !{ptr @snd_usb_id_table, !118, !"snd_usb_id_table", i1 false, i1 false}
!118 = !{!"../sound/usb/caiaq/device.c", i32 57, i32 35}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"auto-init"}
!129 = !{i64 2148727130, i64 2148727135, i64 2148727148, i64 2148727192, i64 2148727226, i64 2148727247}
!130 = !{i8 0, i8 2}
