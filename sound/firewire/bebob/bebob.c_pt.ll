; ModuleID = '/llk/IR_all_yes/sound/firewire/bebob/bebob.c_pt.bc'
source_filename = "../sound/firewire/bebob/bebob.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.fw_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_bebob_spec = type { ptr, ptr, ptr }
%struct.snd_bebob_rate_spec = type { ptr, ptr }
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_bebob = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, ptr, i32, i32, i32, %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, [7 x %struct.snd_bebob_stream_formation], [7 x %struct.snd_bebob_stream_formation], i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_bebob_stream_formation = type { i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }

@__UNIQUE_ID_description239 = internal constant [44 x i8] c"snd_bebob.description=BridgeCo BeBoB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [60 x i8] c"snd_bebob.author=Takashi Sakamoto <o-takashi@sakamocchi.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [46 x i8] c"snd_bebob.file=sound/firewire/bebob/snd-bebob\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [25 x i8] c"snd_bebob.license=GPL v2\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_bebob.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype243 = internal constant [38 x i8] c"snd_bebob.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index244 = internal constant [32 x i8] c"snd_bebob.parm=index:card index\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_bebob.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype245 = internal constant [37 x i8] c"snd_bebob.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id246 = internal constant [28 x i8] c"snd_bebob.parm=id:ID string\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_bebob.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype247 = internal constant [40 x i8] c"snd_bebob.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable248 = internal constant [46 x i8] c"snd_bebob.parm=enable:enable BeBoB sound card\00", section ".modinfo", align 1
@bebob_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bebob_probe, ptr @bebob_update, ptr @bebob_remove, ptr @bebob_id_table }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_bebob__249_513_snd_bebob_init6 = internal global ptr @snd_bebob_init, section ".initcall6.init", align 4
@__exitcall_snd_bebob_exit = internal global ptr @snd_bebob_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_bebob\00", [22 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@bebob_id_table = internal constant { [52 x %struct.ieee1394_device_id], [288 x i8] } { [52 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 7, i32 16555, i32 65609, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 16555, i32 65608, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 2706, i32 65536, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 2706, i32 65638, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 2706, i32 65537, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 2037, i32 65608, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 2037, i32 65609, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 4082, i32 65637, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 4082, i32 65639, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 4704, i32 1, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 558, i32 65639, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 5476, i32 4612, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 5476, i32 5636, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 5476, i32 6, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 5476, i32 5654, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 5476, i32 1552, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 987, i32 65608, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 987, i32 126702, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 3867, i32 65636, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 10, i32 196608, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 5270, i32 327680, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 5270, i32 393216, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 5270, i32 458752, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 5270, i32 524288, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 5270, i32 0, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 6629, i32 1, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 6814, i32 1, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 4504, i32 65608, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 4504, i32 44456, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 2732, i32 3, i32 41005, i32 0, i32 ptrtoint (ptr @phase88_rack_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 2732, i32 4, i32 41005, i32 0, i32 ptrtoint (ptr @yamaha_terratec_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 2732, i32 7, i32 41005, i32 0, i32 ptrtoint (ptr @yamaha_terratec_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 2732, i32 5, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 2732, i32 2, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 41182, i32 1048587, i32 41005, i32 0, i32 ptrtoint (ptr @yamaha_terratec_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 41182, i32 1048588, i32 41005, i32 0, i32 ptrtoint (ptr @yamaha_terratec_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 4878, i32 3, i32 41005, i32 0, i32 ptrtoint (ptr @saffirepro_26_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 4878, i32 6, i32 41005, i32 0, i32 ptrtoint (ptr @saffirepro_10_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 4878, i32 0, i32 41005, i32 0, i32 ptrtoint (ptr @saffire_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 2037, i32 65624, i32 41005, i32 0, i32 0 }, %struct.ieee1394_device_id { i32 7, i32 2037, i32 65606, i32 41005, i32 0, i32 ptrtoint (ptr @maudio_fw410_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 3436, i32 65632, i32 41005, i32 0, i32 ptrtoint (ptr @maudio_audiophile_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 3436, i32 65634, i32 41005, i32 0, i32 ptrtoint (ptr @maudio_solo_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 3436, i32 10, i32 41005, i32 0, i32 ptrtoint (ptr @maudio_ozonic_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 3436, i32 65665, i32 41005, i32 0, i32 ptrtoint (ptr @maudio_nrv10_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 3436, i32 65697, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 3436, i32 65648, i32 41005, i32 0, i32 0 }, %struct.ieee1394_device_id { i32 7, i32 3436, i32 65649, i32 41005, i32 0, i32 ptrtoint (ptr @maudio_special_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 3436, i32 65681, i32 41005, i32 0, i32 ptrtoint (ptr @maudio_special_spec to i32) }, %struct.ieee1394_device_id { i32 7, i32 41086, i32 169, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id { i32 7, i32 8999, i32 131074, i32 41005, i32 0, i32 ptrtoint (ptr @spec_normal to i32) }, %struct.ieee1394_device_id zeroinitializer], [288 x i8] zeroinitializer }, align 32
@devices_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devices_mutex, i64 52), ptr getelementptr (i8, ptr @devices_mutex, i64 52) }, ptr @devices_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@devices_used = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@bebob_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&bebob->mutex\00", [18 x i8] zeroinitializer }, align 32
@bebob_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&bebob->lock\00", [19 x i8] zeroinitializer }, align 32
@bebob_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&bebob->hwdep_wait\00", [45 x i8] zeroinitializer }, align 32
@maudio_special_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SaffireLE\00", [22 x i8] zeroinitializer }, align 32
@saffire_le_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@saffire_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FW Audiophile Bootloader\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devices_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"devices_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BeBoB\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s %s (id:%d, rev:%d), GUID %08x%08x at %s, S%d\00", [48 x i8] zeroinitializer }, align 32
@spec_normal = internal constant { %struct.snd_bebob_spec, [20 x i8] } { %struct.snd_bebob_spec { ptr null, ptr @normal_rate_spec, ptr null }, [20 x i8] zeroinitializer }, align 32
@phase88_rack_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@yamaha_terratec_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@saffirepro_26_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@saffirepro_10_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@maudio_fw410_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@maudio_audiophile_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@maudio_solo_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@maudio_ozonic_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@maudio_nrv10_spec = external dso_local constant %struct.snd_bebob_spec, align 4
@normal_rate_spec = internal constant { %struct.snd_bebob_rate_spec, [24 x i8] } { %struct.snd_bebob_rate_spec { ptr @snd_bebob_stream_get_rate, ptr @snd_bebob_stream_set_rate }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3436, i64 4878]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2037, i64 3436]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 65649, i64 65681, i64 65697]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 65649, i64 65681]
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"bebob_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 489, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 20, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 21, i32 14 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 22, i32 13 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 492, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"bebob_id_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 366, i32 40 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"devices_mutex\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"devices_used\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 32, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 237, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 238, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 239, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 143, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 157, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 31, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 108, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 112, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"spec_normal\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 344, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"normal_rate_spec\00", align 1
@___asan_gen_.79 = private constant [32 x i8] c"../sound/firewire/bebob/bebob.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 340, i32 41 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_enable248, ptr @__UNIQUE_ID_enabletype247, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_id246, ptr @__UNIQUE_ID_idtype245, ptr @__UNIQUE_ID_index244, ptr @__UNIQUE_ID_indextype243, ptr @__UNIQUE_ID_license242, ptr @__exitcall_snd_bebob_exit, ptr @__initcall__kmod_snd_bebob__249_513_snd_bebob_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @snd_bebob_exit, ptr @bebob_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @bebob_id_table, ptr @devices_mutex, ptr @devices_used, ptr @bebob_probe.__key, ptr @.str.1, ptr @bebob_probe.__key.2, ptr @.str.3, ptr @bebob_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @spec_normal, ptr @normal_rate_spec], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bebob_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bebob_id_table to i32), i32 1248, i32 1536, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_used to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bebob_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bebob_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bebob_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spec_normal to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_rate_spec to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_bebob_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef nonnull @bebob_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bebob_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef nonnull @bebob_driver) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bebob_probe(ptr noundef %unit, ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  %vendor.i = alloca [24 x i8], align 1
  %model.i = alloca [32 x i8], align 1
  %hw_id.i = alloca i32, align 4
  %data.i = alloca [2 x i32], align 8
  %revision.i = alloca i32, align 4
  %name.i175 = alloca [28 x i8], align 1
  %name.i = alloca [24 x i8], align 1
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #7
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !80
  %vendor_id = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 1
  %1 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vendor_id, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.if.else11_crit_edge [
    i32 4878, label %land.lhs.true
    i32 3436, label %land.lhs.true5
  ]

entry.if.else11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11

land.lhs.true:                                    ; preds = %entry
  %model_id = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 2
  %4 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.else11_crit_edge

land.lhs.true.if.else11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %name.i) #7
  %6 = call ptr @memset(ptr %name.i, i32 0, i32 24)
  %directory.i = getelementptr inbounds %struct.fw_unit, ptr %unit, i32 0, i32 1
  %7 = ptrtoint ptr %directory.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %directory.i, align 8
  %call.i = call i32 @fw_csr_string(ptr noundef %8, i32 noundef 23, ptr noundef nonnull %name.i, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.get_saffire_spec.exit_crit_edge, label %if.end.i

if.then.get_saffire_spec.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_saffire_spec.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %name.i, ptr noundef nonnull dereferenceable(10) @.str.6, i32 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp3.i = icmp eq i32 %bcmp.i, 0
  %saffire_le_spec.saffire_spec.i = select i1 %cmp3.i, ptr @saffire_le_spec, ptr @saffire_spec
  br label %get_saffire_spec.exit

get_saffire_spec.exit:                            ; preds = %if.end.i, %if.then.get_saffire_spec.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then.get_saffire_spec.exit_crit_edge ], [ %saffire_le_spec.saffire_spec.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %name.i) #7
  br label %if.end12

land.lhs.true5:                                   ; preds = %entry
  %model_id6 = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 2
  %9 = ptrtoint ptr %model_id6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %model_id6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65632, i32 %10)
  %cmp7 = icmp eq i32 %10, 65632
  br i1 %cmp7, label %land.lhs.true8, label %land.lhs.true5.if.else11_crit_edge

land.lhs.true5.if.else11_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11

land.lhs.true8:                                   ; preds = %land.lhs.true5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %name.i175) #7
  %11 = call ptr @memset(ptr %name.i175, i32 0, i32 28)
  %directory.i176 = getelementptr inbounds %struct.fw_unit, ptr %unit, i32 0, i32 1
  %12 = ptrtoint ptr %directory.i176 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %directory.i176, align 8
  %call.i177 = call i32 @fw_csr_string(ptr noundef %13, i32 noundef 23, ptr noundef nonnull %name.i175, i32 noundef 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp.i178 = icmp slt i32 %call.i177, 0
  br i1 %cmp.i178, label %check_audiophile_booted.exit.thread, label %check_audiophile_booted.exit

check_audiophile_booted.exit.thread:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %name.i175) #7
  br label %if.then14

check_audiophile_booted.exit:                     ; preds = %land.lhs.true8
  %bcmp.i179 = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %name.i175, ptr noundef nonnull dereferenceable(24) @.str.7, i32 24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i179)
  %cmp3.i180.not = icmp eq i32 %bcmp.i179, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %name.i175) #7
  br i1 %cmp3.i180.not, label %check_audiophile_booted.exit.if.then14_crit_edge, label %check_audiophile_booted.exit.if.else11_crit_edge

check_audiophile_booted.exit.if.else11_crit_edge: ; preds = %check_audiophile_booted.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11

check_audiophile_booted.exit.if.then14_crit_edge: ; preds = %check_audiophile_booted.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.else11:                                        ; preds = %check_audiophile_booted.exit.if.else11_crit_edge, %land.lhs.true5.if.else11_crit_edge, %land.lhs.true.if.else11_crit_edge, %entry.if.else11_crit_edge
  %driver_data = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 5
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  %16 = inttoptr i32 %15 to ptr
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %get_saffire_spec.exit
  %spec.0 = phi ptr [ %retval.0.i, %get_saffire_spec.exit ], [ %16, %if.else11 ]
  %cmp13 = icmp eq ptr %spec.0, null
  br i1 %cmp13, label %if.end12.if.then14_crit_edge, label %if.end22

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %check_audiophile_booted.exit.if.then14_crit_edge, %check_audiophile_booted.exit.thread
  %17 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor_id, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %18, label %if.then14.cleanup_crit_edge [
    i32 3436, label %if.then14.if.then19_crit_edge
    i32 2037, label %if.then14.if.then19_crit_edge204
  ]

if.then14.if.then19_crit_edge204:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then14.if.then19_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.then14.if.then19_crit_edge, %if.then14.if.then19_crit_edge204
  %call20 = call i32 @snd_bebob_maudio_load_firmware(ptr noundef %unit) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22
  %card_index.0197 = phi i32 [ 0, %if.end22 ], [ %inc, %for.inc.for.body_crit_edge ]
  %20 = load volatile i32, ptr @devices_used, align 4
  %21 = shl nuw i32 1, %card_index.0197
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %land.lhs.true25, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true25:                                  ; preds = %for.body
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %card_index.0197
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not = icmp eq i8 %24, 0
  br i1 %tobool26.not, label %land.lhs.true25.for.inc_crit_edge, label %if.end31

land.lhs.true25.for.inc_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true25.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %card_index.0197, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.then30, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then30:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true25
  %arrayidx32 = getelementptr [32 x i32], ptr @index, i32 0, i32 %card_index.0197
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx32, align 4
  %arrayidx33 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %card_index.0197
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx33, align 4
  %call34 = call i32 @snd_card_new(ptr noundef %unit, i32 noundef %26, ptr noundef %28, ptr noundef null, i32 noundef 1528, ptr noundef nonnull %card) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bebob_card_free, ptr %private_free, align 4
  call void @_set_bit(i32 noundef %card_index.0197, ptr noundef nonnull @devices_used) #7
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  %32 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private_data, align 8
  %call.i183 = call ptr @get_device(ptr noundef %unit) #7
  %unit39 = getelementptr inbounds %struct.snd_bebob, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %unit39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %unit, ptr %unit39, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %driver_data.i, align 4
  %38 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card, align 4
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %35, align 8
  %card_index42 = getelementptr inbounds %struct.snd_bebob, ptr %35, i32 0, i32 2
  %41 = ptrtoint ptr %card_index42 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %card_index.0197, ptr %card_index42, align 8
  %spec43 = getelementptr inbounds %struct.snd_bebob, ptr %35, i32 0, i32 5
  %42 = ptrtoint ptr %spec43 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %spec.0, ptr %spec43, align 4
  %mutex = getelementptr inbounds %struct.snd_bebob, ptr %35, i32 0, i32 3
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @bebob_probe.__key) #7
  %lock = getelementptr inbounds %struct.snd_bebob, ptr %35, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @bebob_probe.__key.2, i16 noundef signext 3) #7
  %hwdep_wait = getelementptr inbounds %struct.snd_bebob, ptr %35, i32 0, i32 19
  call void @__init_waitqueue_head(ptr noundef %hwdep_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @bebob_probe.__key.4) #7
  %43 = ptrtoint ptr %unit39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %unit39, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vendor.i) #7
  %47 = call ptr @memset(ptr %vendor.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %model.i) #7
  %48 = call ptr @memset(ptr %model.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_id.i) #7
  %49 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %hw_id.i, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #7
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %revision.i) #7
  %51 = ptrtoint ptr %revision.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %revision.i, align 4, !annotation !80
  %config_rom.i = getelementptr i8, ptr %46, i32 1028
  %52 = ptrtoint ptr %config_rom.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config_rom.i, align 4
  %add.ptr.i = getelementptr i32, ptr %53, i32 5
  %call1.i = call i32 @fw_csr_string(ptr noundef %add.ptr.i, i32 noundef 3, ptr noundef nonnull %vendor.i, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i184 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i184, label %if.end37.name_device.exit.thread_crit_edge, label %if.end.i186

if.end37.name_device.exit.thread_crit_edge:       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %name_device.exit.thread

if.end.i186:                                      ; preds = %if.end37
  %54 = ptrtoint ptr %unit39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %unit39, align 4
  %directory.i185 = getelementptr inbounds %struct.fw_unit, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %directory.i185 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %directory.i185, align 8
  %call4.i = call i32 @fw_csr_string(ptr noundef %57, i32 noundef 23, ptr noundef nonnull %model.i, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i186.name_device.exit.thread_crit_edge, label %if.end7.i

if.end.i186.name_device.exit.thread_crit_edge:    ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %name_device.exit.thread

if.end7.i:                                        ; preds = %if.end.i186
  %58 = ptrtoint ptr %unit39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %unit39, align 4
  %call.i.i = call i32 @snd_fw_transaction(ptr noundef %59, i32 noundef 4, i64 noundef 281474037317656, ptr noundef nonnull %hw_id.i, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp10.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp10.i, label %if.end7.i.name_device.exit.thread_crit_edge, label %if.end12.i

if.end7.i.name_device.exit.thread_crit_edge:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %name_device.exit.thread

if.end12.i:                                       ; preds = %if.end7.i
  %60 = ptrtoint ptr %unit39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %unit39, align 4
  %call.i57.i = call i32 @snd_fw_transaction(ptr noundef %61, i32 noundef 4, i64 noundef 281474037317660, ptr noundef nonnull %revision.i, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %cmp15.i = icmp slt i32 %call.i57.i, 0
  br i1 %cmp15.i, label %if.end12.i.name_device.exit.thread_crit_edge, label %if.end17.i

if.end12.i.name_device.exit.thread_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %name_device.exit.thread

if.end17.i:                                       ; preds = %if.end12.i
  %62 = ptrtoint ptr %unit39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %unit39, align 4
  %call.i58.i = call i32 @snd_fw_transaction(ptr noundef %63, i32 noundef 5, i64 noundef 281474037317648, ptr noundef nonnull %data.i, i32 noundef 8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %cmp21.i = icmp slt i32 %call.i58.i, 0
  br i1 %cmp21.i, label %if.end17.i.name_device.exit.thread_crit_edge, label %if.end23.i

if.end17.i.name_device.exit.thread_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %name_device.exit.thread

if.end23.i:                                       ; preds = %if.end17.i
  %64 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %35, align 8
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %65, i32 0, i32 2
  %66 = call ptr @memcpy(ptr %driver.i, ptr @.str.10, i32 6)
  %67 = load ptr, ptr %35, align 8
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %67, i32 0, i32 3
  %call29.i = call ptr @strcpy(ptr noundef %shortname.i, ptr noundef nonnull %model.i) #10
  %68 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %35, align 8
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %69, i32 0, i32 6
  %call33.i = call ptr @strcpy(ptr noundef %mixername.i, ptr noundef nonnull %model.i) #10
  %70 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %35, align 8
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hw_id.i, align 4
  %74 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %revision.i, align 4
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data.i, align 8
  %arrayidx38.i = getelementptr inbounds [2 x i32], ptr %data.i, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx38.i, align 4
  %80 = ptrtoint ptr %unit39 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %unit39, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end23.i.if.end54_crit_edge

if.end23.i.if.end54_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.end.i.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %81, align 4
  br label %if.end54

name_device.exit.thread:                          ; preds = %if.end17.i.name_device.exit.thread_crit_edge, %if.end12.i.name_device.exit.thread_crit_edge, %if.end7.i.name_device.exit.thread_crit_edge, %if.end.i186.name_device.exit.thread_crit_edge, %if.end37.name_device.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ %call.i58.i, %if.end17.i.name_device.exit.thread_crit_edge ], [ %call.i57.i, %if.end12.i.name_device.exit.thread_crit_edge ], [ %call.i.i, %if.end7.i.name_device.exit.thread_crit_edge ], [ %call4.i, %if.end.i186.name_device.exit.thread_crit_edge ], [ %call1.i, %if.end37.name_device.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revision.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_id.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %model.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vendor.i) #7
  br label %error

if.end54:                                         ; preds = %if.end.i.i, %if.end23.i.if.end54_crit_edge
  %retval.0.i.i = phi ptr [ %85, %if.end.i.i ], [ %83, %if.end23.i.if.end54_crit_edge ]
  %max_speed.i = getelementptr i8, ptr %46, i32 -8
  %86 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_speed.i, align 8
  %shl.i = shl i32 100, %87
  %call41.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i, i32 noundef 80, ptr noundef nonnull @.str.11, ptr noundef nonnull %vendor.i, ptr noundef nonnull %model.i, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, ptr noundef %retval.0.i.i, i32 noundef %shl.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revision.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_id.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %model.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vendor.i) #7
  %88 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vendor_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3436, i32 %89)
  %cmp.i187 = icmp eq i32 %89, 3436
  br i1 %cmp.i187, label %if.then.i, label %if.end54.detect_quirks.exit_crit_edge

if.end54.detect_quirks.exit_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %detect_quirks.exit

if.then.i:                                        ; preds = %if.end54
  %model_id.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 2
  %90 = ptrtoint ptr %model_id.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %model_id.i, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %91, label %if.then.i.detect_quirks.exit_crit_edge [
    i32 65697, label %if.then.i.if.end.sink.split.i_crit_edge
    i32 65649, label %if.then.i.sw.bb2.i_crit_edge
    i32 65681, label %if.then.i.sw.bb2.i_crit_edge205
  ]

if.then.i.sw.bb2.i_crit_edge205:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

if.then.i.detect_quirks.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %detect_quirks.exit

sw.bb2.i:                                         ; preds = %if.then.i.sw.bb2.i_crit_edge, %if.then.i.sw.bb2.i_crit_edge205
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %sw.bb2.i, %if.then.i.if.end.sink.split.i_crit_edge
  %.sink1.i = phi i32 [ 2, %sw.bb2.i ], [ 1, %if.then.i.if.end.sink.split.i_crit_edge ]
  %quirks3.i = getelementptr inbounds %struct.snd_bebob, ptr %35, i32 0, i32 6
  %93 = ptrtoint ptr %quirks3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %quirks3.i, align 8
  %or.i = or i32 %94, %.sink1.i
  store i32 %or.i, ptr %quirks3.i, align 8
  br label %detect_quirks.exit

detect_quirks.exit:                               ; preds = %if.end.sink.split.i, %if.then.i.detect_quirks.exit_crit_edge, %if.end54.detect_quirks.exit_crit_edge
  %95 = ptrtoint ptr %spec43 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %spec43, align 4
  %cmp60 = icmp eq ptr %96, @maudio_special_spec
  br i1 %cmp60, label %if.then61, label %if.else69

if.then61:                                        ; preds = %detect_quirks.exit
  %model_id62 = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 2
  %97 = ptrtoint ptr %model_id62 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %model_id62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65649, i32 %98)
  %cmp63 = icmp eq i32 %98, 65649
  br i1 %cmp63, label %if.then64, label %if.else66

if.then64:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = call i32 @snd_bebob_maudio_special_discover(ptr noundef %35, i1 noundef zeroext true) #7
  br label %if.end71

if.else66:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = call i32 @snd_bebob_maudio_special_discover(ptr noundef %35, i1 noundef zeroext false) #7
  br label %if.end71

if.else69:                                        ; preds = %detect_quirks.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = call i32 @snd_bebob_stream_discover(ptr noundef %35) #7
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.else66, %if.then64
  %err.0 = phi i32 [ %call65, %if.then64 ], [ %call67, %if.else66 ], [ %call70, %if.else69 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp72 = icmp slt i32 %err.0, 0
  br i1 %cmp72, label %if.end71.error_crit_edge, label %if.end74

if.end71.error_crit_edge:                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end74:                                         ; preds = %if.end71
  %call75 = call i32 @snd_bebob_stream_init_duplex(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end74.error_crit_edge, label %if.end78

if.end74.error_crit_edge:                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end78:                                         ; preds = %if.end74
  call void @snd_bebob_proc_init(ptr noundef %35) #7
  %midi_input_ports = getelementptr inbounds %struct.snd_bebob, ptr %35, i32 0, i32 7
  %99 = ptrtoint ptr %midi_input_ports to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %midi_input_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp79.not = icmp eq i32 %100, 0
  br i1 %cmp79.not, label %lor.lhs.false80, label %if.end78.if.then82_crit_edge

if.end78.if.then82_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

lor.lhs.false80:                                  ; preds = %if.end78
  %midi_output_ports = getelementptr inbounds %struct.snd_bebob, ptr %35, i32 0, i32 8
  %101 = ptrtoint ptr %midi_output_ports to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %midi_output_ports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp81.not = icmp eq i32 %102, 0
  br i1 %cmp81.not, label %lor.lhs.false80.if.end87_crit_edge, label %lor.lhs.false80.if.then82_crit_edge

lor.lhs.false80.if.then82_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

lor.lhs.false80.if.end87_crit_edge:               ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then82:                                        ; preds = %lor.lhs.false80.if.then82_crit_edge, %if.end78.if.then82_crit_edge
  %call83 = call i32 @snd_bebob_create_midi_devices(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then82.error_crit_edge, label %if.then82.if.end87_crit_edge

if.then82.if.end87_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then82.error_crit_edge:                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end87:                                         ; preds = %if.then82.if.end87_crit_edge, %lor.lhs.false80.if.end87_crit_edge
  %call88 = call i32 @snd_bebob_create_pcm_devices(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.end87.error_crit_edge, label %if.end91

if.end87.error_crit_edge:                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end91:                                         ; preds = %if.end87
  %call92 = call i32 @snd_bebob_create_hwdep_device(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end91.error_crit_edge, label %if.end95

if.end91.error_crit_edge:                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end95:                                         ; preds = %if.end91
  %103 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %card, align 4
  %call96 = call i32 @snd_card_register(ptr noundef %104) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.end95.error_crit_edge, label %if.end99

if.end95.error_crit_edge:                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end99:                                         ; preds = %if.end95
  %105 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vendor_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3436, i32 %106)
  %cmp101 = icmp eq i32 %106, 3436
  br i1 %cmp101, label %land.lhs.true102, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true102:                                 ; preds = %if.end99
  %model_id103 = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 2
  %107 = ptrtoint ptr %model_id103 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %model_id103, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %108, label %land.lhs.true102.cleanup_crit_edge [
    i32 65649, label %land.lhs.true102.if.then108_crit_edge
    i32 65681, label %land.lhs.true102.if.then108_crit_edge206
  ]

land.lhs.true102.if.then108_crit_edge206:         ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

land.lhs.true102.if.then108_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then108

land.lhs.true102.cleanup_crit_edge:               ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then108:                                       ; preds = %land.lhs.true102.if.then108_crit_edge, %land.lhs.true102.if.then108_crit_edge206
  %110 = ptrtoint ptr %unit39 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %unit39, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %parent.i, align 8
  %card111 = getelementptr i8, ptr %113, i32 -4
  %114 = ptrtoint ptr %card111 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %card111, align 4
  call void @fw_schedule_bus_reset(ptr noundef %115, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %cleanup

error:                                            ; preds = %if.end95.error_crit_edge, %if.end91.error_crit_edge, %if.end87.error_crit_edge, %if.then82.error_crit_edge, %if.end74.error_crit_edge, %if.end71.error_crit_edge, %name_device.exit.thread
  %err.1 = phi i32 [ %err.0, %if.end71.error_crit_edge ], [ %call75, %if.end74.error_crit_edge ], [ %call83, %if.then82.error_crit_edge ], [ %call88, %if.end87.error_crit_edge ], [ %call92, %if.end91.error_crit_edge ], [ %call96, %if.end95.error_crit_edge ], [ %err.0.i.ph, %name_device.exit.thread ]
  %116 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %card, align 4
  %call113 = call i32 @snd_card_free(ptr noundef %117) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then108, %land.lhs.true102.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %if.then36, %if.then30, %if.then19, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then19 ], [ -2, %if.then30 ], [ %call34, %if.then36 ], [ %err.1, %error ], [ -19, %if.then14.cleanup_crit_edge ], [ 0, %land.lhs.true102.cleanup_crit_edge ], [ 0, %if.then108 ], [ 0, %if.end99.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bebob_update(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %unit1 = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit1, align 4
  tail call void @fcp_bus_reset(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bebob_remove(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @snd_card_free(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_maudio_load_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bebob_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #7
  %card_index = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_index, align 8
  tail call void @_clear_bit(i32 noundef %3, ptr noundef nonnull @devices_used) #7
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #7
  tail call void @snd_bebob_stream_destroy_duplex(ptr noundef %1) #7
  %mutex = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  %unit = getelementptr inbounds %struct.snd_bebob, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit, align 4
  tail call void @put_device(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_maudio_special_discover(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_discover(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_init_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_bebob_proc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_create_midi_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_create_pcm_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_create_hwdep_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_schedule_bus_reset(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_bebob_stream_destroy_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcp_bus_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_get_rate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bebob_stream_set_rate(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !47, !48, !50, !51, !53, !55, !57, !58, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__UNIQUE_ID_description239, !1, !"__UNIQUE_ID_description239", i1 false, i1 false}
!1 = !{!"../sound/firewire/bebob/bebob.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_author240, !3, !"__UNIQUE_ID_author240", i1 false, i1 false}
!3 = !{!"../sound/firewire/bebob/bebob.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_file241, !5, !"__UNIQUE_ID_file241", i1 false, i1 false}
!5 = !{!"../sound/firewire/bebob/bebob.c", i32 18, i32 1}
!6 = !{ptr @__UNIQUE_ID_license242, !5, !"__UNIQUE_ID_license242", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/firewire/bebob/bebob.c", i32 24, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype243, !8, !"__UNIQUE_ID_indextype243", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index244, !11, !"__UNIQUE_ID_index244", i1 false, i1 false}
!11 = !{!"../sound/firewire/bebob/bebob.c", i32 25, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/firewire/bebob/bebob.c", i32 26, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype245, !13, !"__UNIQUE_ID_idtype245", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id246, !16, !"__UNIQUE_ID_id246", i1 false, i1 false}
!16 = !{!"../sound/firewire/bebob/bebob.c", i32 27, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/firewire/bebob/bebob.c", i32 28, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype247, !18, !"__UNIQUE_ID_enabletype247", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable248, !21, !"__UNIQUE_ID_enable248", i1 false, i1 false}
!21 = !{!"../sound/firewire/bebob/bebob.c", i32 29, i32 1}
!22 = !{ptr @__initcall__kmod_snd_bebob__249_513_snd_bebob_init6, !23, !"__initcall__kmod_snd_bebob__249_513_snd_bebob_init6", i1 false, i1 false}
!23 = !{!"../sound/firewire/bebob/bebob.c", i32 513, i32 1}
!24 = !{ptr @__exitcall_snd_bebob_exit, !25, !"__exitcall_snd_bebob_exit", i1 false, i1 false}
!25 = !{!"../sound/firewire/bebob/bebob.c", i32 514, i32 1}
!26 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!27 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!28 = !{ptr @index, !29, !"index", i1 false, i1 false}
!29 = !{!"../sound/firewire/bebob/bebob.c", i32 20, i32 12}
!30 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!31 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!32 = !{ptr @id, !33, !"id", i1 false, i1 false}
!33 = !{!"../sound/firewire/bebob/bebob.c", i32 21, i32 14}
!34 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!35 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!36 = !{ptr @enable, !37, !"enable", i1 false, i1 false}
!37 = !{!"../sound/firewire/bebob/bebob.c", i32 22, i32 13}
!38 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/firewire/bebob/bebob.c", i32 492, i32 11}
!40 = !{ptr @bebob_driver, !41, !"bebob_driver", i1 false, i1 false}
!41 = !{!"../sound/firewire/bebob/bebob.c", i32 489, i32 25}
!42 = !{ptr @bebob_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../sound/firewire/bebob/bebob.c", i32 237, i32 2}
!44 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bebob_probe.__key.2, !46, !"__key", i1 false, i1 false}
!46 = !{!"../sound/firewire/bebob/bebob.c", i32 238, i32 2}
!47 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @bebob_probe.__key.4, !49, !"__key", i1 false, i1 false}
!49 = !{!"../sound/firewire/bebob/bebob.c", i32 239, i32 2}
!50 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/firewire/bebob/bebob.c", i32 143, i32 19}
!53 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/firewire/bebob/bebob.c", i32 157, i32 23}
!55 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/firewire/bebob/bebob.c", i32 31, i32 8}
!57 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @devices_mutex, !56, !"devices_mutex", i1 false, i1 false}
!59 = !{ptr @devices_used, !60, !"devices_used", i1 false, i1 false}
!60 = !{!"../sound/firewire/bebob/bebob.c", i32 32, i32 8}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/firewire/bebob/bebob.c", i32 108, i32 30}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/firewire/bebob/bebob.c", i32 112, i32 4}
!65 = !{ptr @bebob_id_table, !66, !"bebob_id_table", i1 false, i1 false}
!66 = !{!"../sound/firewire/bebob/bebob.c", i32 366, i32 40}
!67 = !{ptr @spec_normal, !68, !"spec_normal", i1 false, i1 false}
!68 = !{!"../sound/firewire/bebob/bebob.c", i32 344, i32 36}
!69 = !{ptr @normal_rate_spec, !70, !"normal_rate_spec", i1 false, i1 false}
!70 = !{!"../sound/firewire/bebob/bebob.c", i32 340, i32 41}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{i8 0, i8 2}
