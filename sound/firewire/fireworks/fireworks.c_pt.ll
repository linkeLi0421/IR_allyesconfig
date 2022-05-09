; ModuleID = '/llk/IR_all_yes/sound/firewire/fireworks/fireworks.c_pt.bc'
source_filename = "../sound/firewire/fireworks/fireworks.c"
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_efw = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, i32, i8, i8, i8, i32, i32, i32, i32, [3 x i32], [3 x i32], %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, i32, i32, i32, i32, [8 x %struct.snd_efw_phys_grp], [8 x %struct.snd_efw_phys_grp], i32, i8, %struct.wait_queue_head, ptr, ptr, ptr, %struct.amdtp_domain }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_efw_phys_grp = type { i8, i8 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_efw_hwinfo = type { i32, i32, i32, i32, i32, [32 x i8], [32 x i8], i32, i32, i32, i32, i32, i32, [8 x %struct.snd_efw_phys_grp], i32, [8 x %struct.snd_efw_phys_grp], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }

@__UNIQUE_ID_description239 = internal constant [48 x i8] c"snd_fireworks.description=Echo Fireworks driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [64 x i8] c"snd_fireworks.author=Takashi Sakamoto <o-takashi@sakamocchi.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [58 x i8] c"snd_fireworks.file=sound/firewire/fireworks/snd-fireworks\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [29 x i8] c"snd_fireworks.license=GPL v2\00", section ".modinfo", align 1
@snd_efw_resp_buf_size = dso_local global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@snd_efw_resp_buf_debug = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_str_index = internal constant [20 x i8] c"snd_fireworks.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype243 = internal constant [42 x i8] c"snd_fireworks.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index244 = internal constant [36 x i8] c"snd_fireworks.parm=index:card index\00", section ".modinfo", align 1
@__param_str_id = internal constant [17 x i8] c"snd_fireworks.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype245 = internal constant [41 x i8] c"snd_fireworks.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id246 = internal constant [32 x i8] c"snd_fireworks.parm=id:ID string\00", section ".modinfo", align 1
@__param_str_enable = internal constant [21 x i8] c"snd_fireworks.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype247 = internal constant [44 x i8] c"snd_fireworks.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable248 = internal constant [54 x i8] c"snd_fireworks.parm=enable:enable Fireworks sound card\00", section ".modinfo", align 1
@__param_str_resp_buf_size = internal constant [28 x i8] c"snd_fireworks.resp_buf_size\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_resp_buf_size = internal constant %struct.kernel_param { ptr @__param_str_resp_buf_size, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @snd_efw_resp_buf_size } }, section "__param", align 4
@__UNIQUE_ID_resp_buf_sizetype249 = internal constant [42 x i8] c"snd_fireworks.parmtype=resp_buf_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_resp_buf_size250 = internal constant [79 x i8] c"snd_fireworks.parm=resp_buf_size:response buffer size (max 4096, default 1024)\00", section ".modinfo", align 1
@__param_str_resp_buf_debug = internal constant [29 x i8] c"snd_fireworks.resp_buf_debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_resp_buf_debug = internal constant %struct.kernel_param { ptr @__param_str_resp_buf_debug, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @snd_efw_resp_buf_debug } }, section "__param", align 4
@__UNIQUE_ID_resp_buf_debugtype251 = internal constant [43 x i8] c"snd_fireworks.parmtype=resp_buf_debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_resp_buf_debug252 = internal constant [64 x i8] c"snd_fireworks.parm=resp_buf_debug:store all responses to buffer\00", section ".modinfo", align 1
@efw_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @efw_probe, ptr @efw_update, ptr @efw_remove, ptr @efw_id_table }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_fireworks__257_370_snd_efw_init6 = internal global ptr @snd_efw_init, section ".initcall6.init", align 4
@__exitcall_snd_efw_exit = internal global ptr @snd_efw_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_fireworks\00", [18 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@efw_id_table = internal constant { [14 x %struct.ieee1394_device_id], [80 x i8] } { [14 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 15, i32 4082, i32 16399, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 4082, i32 73743, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 5254, i32 2808, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 5254, i32 44818, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 5254, i32 717101, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 5254, i32 717098, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 5254, i32 2802, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 5254, i32 2804, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 5254, i32 2809, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 5254, i32 248, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 5254, i32 45009, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 1883, i32 44978, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 1883, i32 44985, i32 41005, i32 65536, i32 0 }, %struct.ieee1394_device_id zeroinitializer], [80 x i8] zeroinitializer }, align 32
@devices_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devices_mutex, i64 52), ptr getelementptr (i8, ptr @devices_mutex, i64 52) }, ptr @devices_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@devices_used = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@efw_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&efw->mutex\00", [20 x i8] zeroinitializer }, align 32
@efw_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&efw->lock\00", [21 x i8] zeroinitializer }, align 32
@efw_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&efw->hwdep_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devices_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"devices_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u.%u\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Fireworks\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s %s v%s, GUID %08x%08x at %s, S%d\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2802, i64 2804, i64 2809, i64 44978, i64 44985]
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"snd_efw_resp_buf_size\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 26, i32 14 }
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"snd_efw_resp_buf_debug\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 27, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"efw_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 336, i32 25 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 23, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 24, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 25, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 339, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"efw_id_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 318, i32 40 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"devices_mutex\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"devices_used\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 42, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 236, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 237, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 238, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 41, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 88, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 93, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [40 x i8] c"../sound/firewire/fireworks/fireworks.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 97, i32 4 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_enable248, ptr @__UNIQUE_ID_enabletype247, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_id246, ptr @__UNIQUE_ID_idtype245, ptr @__UNIQUE_ID_index244, ptr @__UNIQUE_ID_indextype243, ptr @__UNIQUE_ID_license242, ptr @__UNIQUE_ID_resp_buf_debug252, ptr @__UNIQUE_ID_resp_buf_debugtype251, ptr @__UNIQUE_ID_resp_buf_size250, ptr @__UNIQUE_ID_resp_buf_sizetype249, ptr @__exitcall_snd_efw_exit, ptr @__initcall__kmod_snd_fireworks__257_370_snd_efw_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_resp_buf_debug, ptr @__param_resp_buf_size, ptr @snd_efw_exit, ptr @snd_efw_resp_buf_size, ptr @snd_efw_resp_buf_debug, ptr @efw_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @efw_id_table, ptr @devices_mutex, ptr @devices_used, ptr @efw_probe.__key, ptr @.str.1, ptr @efw_probe.__key.2, ptr @.str.3, ptr @efw_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_efw_resp_buf_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_efw_resp_buf_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efw_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efw_id_table to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_used to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efw_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efw_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efw_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_efw_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_efw_transaction_unregister() #8
  tail call void @driver_unregister(ptr noundef nonnull @efw_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_efw_transaction_unregister() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_efw_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_efw_transaction_register() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @driver_register(ptr noundef nonnull @efw_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_efw_transaction_unregister() #8
  br label %end

end:                                              ; preds = %if.then3, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.end_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efw_probe(ptr noundef %unit, ptr nocapture noundef readnone %entry1) #2 align 64 {
entry:
  %version.i = alloca [12 x i8], align 1
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #8
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !90
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %card_index.0120 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = load volatile i32, ptr @devices_used, align 4
  %2 = shl nuw i32 1, %card_index.0120
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %card_index.0120
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.for.inc_crit_edge, label %if.end5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %card_index.0120, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.then4, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then4:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #8
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true
  %arrayidx6 = getelementptr [32 x i32], ptr @index, i32 0, i32 %card_index.0120
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %card_index.0120
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %call8 = call i32 @snd_card_new(ptr noundef %unit, i32 noundef %7, ptr noundef %9, ptr noundef null, i32 noundef 1496, ptr noundef nonnull %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @efw_card_free, ptr %private_free, align 4
  call void @_set_bit(i32 noundef %card_index.0120, ptr noundef nonnull @devices_used) #8
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #8
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data, align 8
  %call.i = call ptr @get_device(ptr noundef %unit) #8
  %unit13 = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %unit13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %unit, ptr %unit13, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %driver_data.i, align 4
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %16, align 8
  %card_index16 = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 2
  %22 = ptrtoint ptr %card_index16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %card_index.0120, ptr %card_index16, align 8
  %mutex = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 3
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @efw_probe.__key) #8
  %lock = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @efw_probe.__key.2, i16 noundef signext 3) #8
  %hwdep_wait = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 28
  call void @__init_waitqueue_head(ptr noundef %hwdep_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @efw_probe.__key.4) #8
  %23 = load i32, ptr @snd_efw_resp_buf_size, align 4
  %24 = call i32 @llvm.umax.i32(i32 %23, i32 512)
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 4096)
  store i32 %25, ptr @snd_efw_resp_buf_size, align 4
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 28
  %call.i111 = call noalias ptr @devm_kmalloc(ptr noundef %card_dev, i32 noundef %25, i32 noundef 3520) #8
  %resp_buf = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 29
  %28 = ptrtoint ptr %resp_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i111, ptr %resp_buf, align 8
  %tobool33.not = icmp eq ptr %call.i111, null
  br i1 %tobool33.not, label %if.end11.error_crit_edge, label %if.end35

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end35:                                         ; preds = %if.end11
  %push_ptr = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 31
  %29 = ptrtoint ptr %push_ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i111, ptr %push_ptr, align 8
  %pull_ptr = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 30
  %30 = ptrtoint ptr %pull_ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i111, ptr %pull_ptr, align 4
  call void @snd_efw_transaction_add_instance(ptr noundef %16) #8
  %31 = ptrtoint ptr %unit13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %unit13, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %version.i) #8
  %35 = call ptr @memset(ptr %version.i, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 260) #11
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %get_hardware_info.exit.thread, label %if.end.i

get_hardware_info.exit.thread:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %version.i) #8
  br label %error

if.end.i:                                         ; preds = %if.end35
  %call2.i = call i32 @snd_efw_command_get_hwinfo(ptr noundef %16, ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.get_hardware_info.exit.thread116_crit_edge, label %if.end5.i

if.end.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

if.end5.i:                                        ; preds = %if.end.i
  %arm_version.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 21
  %37 = ptrtoint ptr %arm_version.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arm_version.i, align 4
  %shr.i112 = lshr i32 %38, 24
  %shr7.i = lshr i32 %38, 16
  %and8.i = and i32 %shr7.i, 255
  %call9.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %version.i, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef %shr.i112, i32 noundef %and8.i) #8
  %39 = ptrtoint ptr %arm_version.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arm_version.i, align 4
  %firmware_version.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 9
  %41 = ptrtoint ptr %firmware_version.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %firmware_version.i, align 4
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %16, align 8
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 2
  %44 = call ptr @memcpy(ptr %driver.i, ptr @.str.9, i32 10)
  %45 = load ptr, ptr %16, align 8
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %45, i32 0, i32 3
  %model_name.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 6
  %call16.i = call ptr @strcpy(ptr noundef %shortname.i, ptr noundef %model_name.i) #12
  %46 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %16, align 8
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 6
  %call21.i = call ptr @strcpy(ptr noundef %mixername.i, ptr noundef %model_name.i) #12
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %16, align 8
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %49, i32 0, i32 4
  %vendor_name.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 5
  %guid_hi.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %guid_hi.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %guid_hi.i, align 4
  %guid_lo.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %guid_lo.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %guid_lo.i, align 8
  %54 = ptrtoint ptr %unit13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %unit13, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.i.dev_name.exit.i_crit_edge

if.end5.i.dev_name.exit.i_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end5.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %59, %if.end.i.i ], [ %57, %if.end5.i.dev_name.exit.i_crit_edge ]
  %max_speed.i = getelementptr i8, ptr %34, i32 -8
  %60 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_speed.i, align 8
  %shl.i = shl i32 100, %61
  %call30.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i, i32 noundef 80, ptr noundef nonnull @.str.10, ptr noundef %vendor_name.i, ptr noundef %model_name.i, ptr noundef nonnull %version.i, i32 noundef %51, i32 noundef %53, ptr noundef %retval.0.i.i, i32 noundef %shl.i) #8
  %62 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %call7.i.i.i, align 8
  %and31.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool.not.i, label %dev_name.exit.i.if.end33.i_crit_edge, label %if.then32.i

dev_name.exit.i.if.end33.i_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then32.i:                                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %resp_addr_changable.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 6
  %64 = ptrtoint ptr %resp_addr_changable.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %resp_addr_changable.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %dev_name.exit.i.if.end33.i_crit_edge
  %supported_sampling_rate.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 12
  %65 = ptrtoint ptr %supported_sampling_rate.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %supported_sampling_rate.i, align 8
  %min_sample_rate.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 19
  %66 = ptrtoint ptr %min_sample_rate.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %min_sample_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22051, i32 %67)
  %cmp34.i = icmp ult i32 %67, 22051
  br i1 %cmp34.i, label %land.lhs.true.i, label %if.end38.i

land.lhs.true.i:                                  ; preds = %if.end33.i
  %max_sample_rate.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 18
  %68 = ptrtoint ptr %max_sample_rate.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_sample_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22049, i32 %69)
  %cmp35.i = icmp ugt i32 %69, 22049
  br i1 %cmp35.i, label %if.then36.i, label %land.lhs.true.i.land.lhs.true41.i_crit_edge

land.lhs.true.i.land.lhs.true41.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true41.i

if.then36.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %supported_sampling_rate.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 16, ptr %supported_sampling_rate.i, align 8
  br label %land.lhs.true41.i

if.end38.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32001, i32 %67)
  %cmp40.i = icmp ult i32 %67, 32001
  br i1 %cmp40.i, label %if.end38.i.land.lhs.true41.i_crit_edge, label %if.end47.i

if.end38.i.land.lhs.true41.i_crit_edge:           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true41.i

land.lhs.true41.i:                                ; preds = %if.end38.i.land.lhs.true41.i_crit_edge, %if.then36.i, %land.lhs.true.i.land.lhs.true41.i_crit_edge
  %max_sample_rate42.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 18
  %71 = ptrtoint ptr %max_sample_rate42.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_sample_rate42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31999, i32 %72)
  %cmp43.i = icmp ugt i32 %72, 31999
  br i1 %cmp43.i, label %if.then44.i, label %land.lhs.true41.i.land.lhs.true50.i_crit_edge

land.lhs.true41.i.land.lhs.true50.i_crit_edge:    ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true50.i

if.then44.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %supported_sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %supported_sampling_rate.i, align 8
  %or46.i = or i32 %74, 32
  store i32 %or46.i, ptr %supported_sampling_rate.i, align 8
  br label %land.lhs.true50.i

if.end47.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 44101, i32 %67)
  %cmp49.i = icmp ult i32 %67, 44101
  br i1 %cmp49.i, label %if.end47.i.land.lhs.true50.i_crit_edge, label %if.end56.i

if.end47.i.land.lhs.true50.i_crit_edge:           ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true50.i

land.lhs.true50.i:                                ; preds = %if.end47.i.land.lhs.true50.i_crit_edge, %if.then44.i, %land.lhs.true41.i.land.lhs.true50.i_crit_edge
  %max_sample_rate51.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 18
  %75 = ptrtoint ptr %max_sample_rate51.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_sample_rate51.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 44099, i32 %76)
  %cmp52.i = icmp ugt i32 %76, 44099
  br i1 %cmp52.i, label %if.then53.i, label %land.lhs.true50.i.land.lhs.true59.i_crit_edge

land.lhs.true50.i.land.lhs.true59.i_crit_edge:    ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true59.i

if.then53.i:                                      ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %supported_sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %supported_sampling_rate.i, align 8
  %or55.i = or i32 %78, 64
  store i32 %or55.i, ptr %supported_sampling_rate.i, align 8
  br label %land.lhs.true59.i

if.end56.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %67)
  %cmp58.i = icmp ult i32 %67, 48001
  br i1 %cmp58.i, label %if.end56.i.land.lhs.true59.i_crit_edge, label %if.end65.i

if.end56.i.land.lhs.true59.i_crit_edge:           ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true59.i

land.lhs.true59.i:                                ; preds = %if.end56.i.land.lhs.true59.i_crit_edge, %if.then53.i, %land.lhs.true50.i.land.lhs.true59.i_crit_edge
  %max_sample_rate60.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 18
  %79 = ptrtoint ptr %max_sample_rate60.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_sample_rate60.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 47999, i32 %80)
  %cmp61.i = icmp ugt i32 %80, 47999
  br i1 %cmp61.i, label %if.then62.i, label %land.lhs.true59.i.land.lhs.true68.i_crit_edge

land.lhs.true59.i.land.lhs.true68.i_crit_edge:    ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true68.i

if.then62.i:                                      ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %supported_sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %supported_sampling_rate.i, align 8
  %or64.i = or i32 %82, 128
  store i32 %or64.i, ptr %supported_sampling_rate.i, align 8
  br label %land.lhs.true68.i

if.end65.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 88201, i32 %67)
  %cmp67.i = icmp ult i32 %67, 88201
  br i1 %cmp67.i, label %if.end65.i.land.lhs.true68.i_crit_edge, label %if.end74.i

if.end65.i.land.lhs.true68.i_crit_edge:           ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true68.i

land.lhs.true68.i:                                ; preds = %if.end65.i.land.lhs.true68.i_crit_edge, %if.then62.i, %land.lhs.true59.i.land.lhs.true68.i_crit_edge
  %max_sample_rate69.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 18
  %83 = ptrtoint ptr %max_sample_rate69.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max_sample_rate69.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 88199, i32 %84)
  %cmp70.i = icmp ugt i32 %84, 88199
  br i1 %cmp70.i, label %if.then71.i, label %land.lhs.true68.i.land.lhs.true77.i_crit_edge

land.lhs.true68.i.land.lhs.true77.i_crit_edge:    ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true77.i

if.then71.i:                                      ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %supported_sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %supported_sampling_rate.i, align 8
  %or73.i = or i32 %86, 512
  store i32 %or73.i, ptr %supported_sampling_rate.i, align 8
  br label %land.lhs.true77.i

if.end74.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %67)
  %cmp76.i = icmp ult i32 %67, 96001
  br i1 %cmp76.i, label %if.end74.i.land.lhs.true77.i_crit_edge, label %if.end83.i

if.end74.i.land.lhs.true77.i_crit_edge:           ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true77.i

land.lhs.true77.i:                                ; preds = %if.end74.i.land.lhs.true77.i_crit_edge, %if.then71.i, %land.lhs.true68.i.land.lhs.true77.i_crit_edge
  %max_sample_rate78.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 18
  %87 = ptrtoint ptr %max_sample_rate78.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_sample_rate78.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 95999, i32 %88)
  %cmp79.i = icmp ugt i32 %88, 95999
  br i1 %cmp79.i, label %if.then80.i, label %land.lhs.true77.i.land.lhs.true86.i_crit_edge

land.lhs.true77.i.land.lhs.true86.i_crit_edge:    ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true86.i

if.then80.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %supported_sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %supported_sampling_rate.i, align 8
  %or82.i = or i32 %90, 1024
  store i32 %or82.i, ptr %supported_sampling_rate.i, align 8
  br label %land.lhs.true86.i

if.end83.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 176401, i32 %67)
  %cmp85.i = icmp ult i32 %67, 176401
  br i1 %cmp85.i, label %if.end83.i.land.lhs.true86.i_crit_edge, label %if.end92.i

if.end83.i.land.lhs.true86.i_crit_edge:           ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true86.i

land.lhs.true86.i:                                ; preds = %if.end83.i.land.lhs.true86.i_crit_edge, %if.then80.i, %land.lhs.true77.i.land.lhs.true86.i_crit_edge
  %max_sample_rate87.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 18
  %91 = ptrtoint ptr %max_sample_rate87.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_sample_rate87.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 176399, i32 %92)
  %cmp88.i = icmp ugt i32 %92, 176399
  br i1 %cmp88.i, label %if.then89.i, label %land.lhs.true86.i.land.lhs.true95.i_crit_edge

land.lhs.true86.i.land.lhs.true95.i_crit_edge:    ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true95.i

if.then89.i:                                      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %supported_sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %supported_sampling_rate.i, align 8
  %or91.i = or i32 %94, 2048
  store i32 %or91.i, ptr %supported_sampling_rate.i, align 8
  br label %land.lhs.true95.i

if.end92.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 192001, i32 %67)
  %cmp94.i = icmp ult i32 %67, 192001
  br i1 %cmp94.i, label %if.end92.i.land.lhs.true95.i_crit_edge, label %if.end92.i.if.end101.i_crit_edge

if.end92.i.if.end101.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101.i

if.end92.i.land.lhs.true95.i_crit_edge:           ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true95.i

land.lhs.true95.i:                                ; preds = %if.end92.i.land.lhs.true95.i_crit_edge, %if.then89.i, %land.lhs.true86.i.land.lhs.true95.i_crit_edge
  %max_sample_rate96.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 18
  %95 = ptrtoint ptr %max_sample_rate96.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_sample_rate96.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 191999, i32 %96)
  %cmp97.i = icmp ugt i32 %96, 191999
  br i1 %cmp97.i, label %if.then98.i, label %land.lhs.true95.i.if.end101.i_crit_edge

land.lhs.true95.i.if.end101.i_crit_edge:          ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101.i

if.then98.i:                                      ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %supported_sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %supported_sampling_rate.i, align 8
  %or100.i = or i32 %98, 4096
  store i32 %or100.i, ptr %supported_sampling_rate.i, align 8
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then98.i, %land.lhs.true95.i.if.end101.i_crit_edge, %if.end92.i.if.end101.i_crit_edge
  %midi_out_ports.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 16
  %99 = ptrtoint ptr %midi_out_ports.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %midi_out_ports.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp102.i = icmp ugt i32 %100, 2
  br i1 %cmp102.i, label %if.end101.i.get_hardware_info.exit.thread116_crit_edge, label %lor.lhs.false.i

if.end101.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

lor.lhs.false.i:                                  ; preds = %if.end101.i
  %midi_in_ports.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 17
  %101 = ptrtoint ptr %midi_in_ports.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %midi_in_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp103.i = icmp ugt i32 %102, 2
  br i1 %cmp103.i, label %lor.lhs.false.i.get_hardware_info.exit.thread116_crit_edge, label %if.end105.i

lor.lhs.false.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

if.end105.i:                                      ; preds = %lor.lhs.false.i
  %midi_out_ports107.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 11
  %103 = ptrtoint ptr %midi_out_ports107.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %100, ptr %midi_out_ports107.i, align 4
  %midi_in_ports109.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 10
  %104 = ptrtoint ptr %midi_in_ports109.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %102, ptr %midi_in_ports109.i, align 8
  %amdtp_tx_pcm_channels.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 9
  %105 = ptrtoint ptr %amdtp_tx_pcm_channels.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %amdtp_tx_pcm_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %106)
  %cmp110.i = icmp ugt i32 %106, 64
  br i1 %cmp110.i, label %if.end105.i.get_hardware_info.exit.thread116_crit_edge, label %lor.lhs.false111.i

if.end105.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

lor.lhs.false111.i:                               ; preds = %if.end105.i
  %amdtp_tx_pcm_channels_2x.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 26
  %107 = ptrtoint ptr %amdtp_tx_pcm_channels_2x.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %amdtp_tx_pcm_channels_2x.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %108)
  %cmp112.i = icmp ugt i32 %108, 64
  br i1 %cmp112.i, label %lor.lhs.false111.i.get_hardware_info.exit.thread116_crit_edge, label %lor.lhs.false113.i

lor.lhs.false111.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %lor.lhs.false111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

lor.lhs.false113.i:                               ; preds = %lor.lhs.false111.i
  %amdtp_tx_pcm_channels_4x.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 28
  %109 = ptrtoint ptr %amdtp_tx_pcm_channels_4x.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %amdtp_tx_pcm_channels_4x.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %110)
  %cmp114.i = icmp ugt i32 %110, 64
  br i1 %cmp114.i, label %lor.lhs.false113.i.get_hardware_info.exit.thread116_crit_edge, label %lor.lhs.false115.i

lor.lhs.false113.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %lor.lhs.false113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

lor.lhs.false115.i:                               ; preds = %lor.lhs.false113.i
  %amdtp_rx_pcm_channels.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 8
  %111 = ptrtoint ptr %amdtp_rx_pcm_channels.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %amdtp_rx_pcm_channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %112)
  %cmp116.i = icmp ugt i32 %112, 64
  br i1 %cmp116.i, label %lor.lhs.false115.i.get_hardware_info.exit.thread116_crit_edge, label %lor.lhs.false117.i

lor.lhs.false115.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %lor.lhs.false115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

lor.lhs.false117.i:                               ; preds = %lor.lhs.false115.i
  %amdtp_rx_pcm_channels_2x.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 25
  %113 = ptrtoint ptr %amdtp_rx_pcm_channels_2x.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %amdtp_rx_pcm_channels_2x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %114)
  %cmp118.i = icmp ugt i32 %114, 64
  br i1 %cmp118.i, label %lor.lhs.false117.i.get_hardware_info.exit.thread116_crit_edge, label %lor.lhs.false119.i

lor.lhs.false117.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %lor.lhs.false117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

lor.lhs.false119.i:                               ; preds = %lor.lhs.false117.i
  %amdtp_rx_pcm_channels_4x.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 27
  %115 = ptrtoint ptr %amdtp_rx_pcm_channels_4x.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %amdtp_rx_pcm_channels_4x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %116)
  %cmp120.i = icmp ugt i32 %116, 64
  br i1 %cmp120.i, label %lor.lhs.false119.i.get_hardware_info.exit.thread116_crit_edge, label %if.end122.i

lor.lhs.false119.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %lor.lhs.false119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

if.end122.i:                                      ; preds = %lor.lhs.false119.i
  %pcm_capture_channels.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 13
  %117 = ptrtoint ptr %pcm_capture_channels.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %106, ptr %pcm_capture_channels.i, align 4
  %arrayidx126.i = getelementptr %struct.snd_efw, ptr %16, i32 0, i32 13, i32 1
  %118 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %108, ptr %arrayidx126.i, align 4
  %arrayidx129.i = getelementptr %struct.snd_efw, ptr %16, i32 0, i32 13, i32 2
  %119 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %110, ptr %arrayidx129.i, align 4
  %pcm_playback_channels.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 14
  %120 = ptrtoint ptr %pcm_playback_channels.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %112, ptr %pcm_playback_channels.i, align 8
  %arrayidx134.i = getelementptr %struct.snd_efw, ptr %16, i32 0, i32 14, i32 1
  %121 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %114, ptr %arrayidx134.i, align 4
  %arrayidx137.i = getelementptr %struct.snd_efw, ptr %16, i32 0, i32 14, i32 2
  %122 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %116, ptr %arrayidx137.i, align 8
  %phys_in_grp_count.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 14
  %123 = ptrtoint ptr %phys_in_grp_count.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %phys_in_grp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %124)
  %cmp138.i = icmp ugt i32 %124, 8
  br i1 %cmp138.i, label %if.end122.i.get_hardware_info.exit.thread116_crit_edge, label %lor.lhs.false139.i

if.end122.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

lor.lhs.false139.i:                               ; preds = %if.end122.i
  %phys_out_grp_count.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 12
  %125 = ptrtoint ptr %phys_out_grp_count.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %phys_out_grp_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %126)
  %cmp140.i = icmp ugt i32 %126, 8
  br i1 %cmp140.i, label %lor.lhs.false139.i.get_hardware_info.exit.thread116_crit_edge, label %if.end142.i

lor.lhs.false139.i.get_hardware_info.exit.thread116_crit_edge: ; preds = %lor.lhs.false139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hardware_info.exit.thread116

if.end142.i:                                      ; preds = %lor.lhs.false139.i
  %phys_in.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 11
  %127 = ptrtoint ptr %phys_in.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %phys_in.i, align 4
  %phys_in143.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 21
  %129 = ptrtoint ptr %phys_in143.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %phys_in143.i, align 8
  %phys_out.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 10
  %130 = ptrtoint ptr %phys_out.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %phys_out.i, align 8
  %phys_out144.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 20
  %132 = ptrtoint ptr %phys_out144.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %phys_out144.i, align 4
  %phys_in_grp_count146.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 23
  %133 = ptrtoint ptr %phys_in_grp_count146.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %124, ptr %phys_in_grp_count146.i, align 8
  %phys_out_grp_count148.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 22
  %134 = ptrtoint ptr %phys_out_grp_count148.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %126, ptr %phys_out_grp_count148.i, align 4
  %phys_in_grps.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 25
  %phys_in_grps149.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 15
  %mul.i = shl nuw nsw i32 %124, 1
  %135 = call ptr @memcpy(ptr %phys_in_grps.i, ptr %phys_in_grps149.i, i32 %mul.i)
  %phys_out_grps.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 24
  %phys_out_grps152.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 13
  %mul155.i = shl nuw nsw i32 %126, 1
  %136 = call ptr @memcpy(ptr %phys_out_grps.i, ptr %phys_out_grps152.i, i32 %mul155.i)
  %type.i = getelementptr inbounds %struct.snd_efw_hwinfo, ptr %call7.i.i.i, i32 0, i32 3
  %137 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %type.i, align 4
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values)
  switch i32 %138, label %if.end142.i.if.end40_crit_edge [
    i32 2809, label %if.end158.thread.i
    i32 2802, label %if.end142.i.if.then173.i_crit_edge
    i32 2804, label %if.end142.i.if.then173.i_crit_edge127
    i32 44985, label %if.end142.i.if.then173.i_crit_edge128
    i32 44978, label %if.end142.i.if.then173.i_crit_edge129
  ]

if.end142.i.if.then173.i_crit_edge129:            ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then173.i

if.end142.i.if.then173.i_crit_edge128:            ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then173.i

if.end142.i.if.then173.i_crit_edge127:            ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then173.i

if.end142.i.if.then173.i_crit_edge:               ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then173.i

if.end142.i.if.end40_crit_edge:                   ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end158.thread.i:                               ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #10
  %is_af9.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 7
  %140 = ptrtoint ptr %is_af9.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %is_af9.i, align 1
  br label %if.then173.i

if.then173.i:                                     ; preds = %if.end158.thread.i, %if.end142.i.if.then173.i_crit_edge, %if.end142.i.if.then173.i_crit_edge127, %if.end142.i.if.then173.i_crit_edge128, %if.end142.i.if.then173.i_crit_edge129
  %is_fireworks3.i = getelementptr inbounds %struct.snd_efw, ptr %16, i32 0, i32 8
  %141 = ptrtoint ptr %is_fireworks3.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %is_fireworks3.i, align 2
  br label %if.end40

get_hardware_info.exit.thread116:                 ; preds = %lor.lhs.false139.i.get_hardware_info.exit.thread116_crit_edge, %if.end122.i.get_hardware_info.exit.thread116_crit_edge, %lor.lhs.false119.i.get_hardware_info.exit.thread116_crit_edge, %lor.lhs.false117.i.get_hardware_info.exit.thread116_crit_edge, %lor.lhs.false115.i.get_hardware_info.exit.thread116_crit_edge, %lor.lhs.false113.i.get_hardware_info.exit.thread116_crit_edge, %lor.lhs.false111.i.get_hardware_info.exit.thread116_crit_edge, %if.end105.i.get_hardware_info.exit.thread116_crit_edge, %lor.lhs.false.i.get_hardware_info.exit.thread116_crit_edge, %if.end101.i.get_hardware_info.exit.thread116_crit_edge, %if.end.i.get_hardware_info.exit.thread116_crit_edge
  %err.0.i.ph = phi i32 [ -5, %if.end122.i.get_hardware_info.exit.thread116_crit_edge ], [ -5, %lor.lhs.false139.i.get_hardware_info.exit.thread116_crit_edge ], [ -38, %if.end105.i.get_hardware_info.exit.thread116_crit_edge ], [ -38, %lor.lhs.false111.i.get_hardware_info.exit.thread116_crit_edge ], [ -38, %lor.lhs.false113.i.get_hardware_info.exit.thread116_crit_edge ], [ -38, %lor.lhs.false115.i.get_hardware_info.exit.thread116_crit_edge ], [ -38, %lor.lhs.false117.i.get_hardware_info.exit.thread116_crit_edge ], [ -38, %lor.lhs.false119.i.get_hardware_info.exit.thread116_crit_edge ], [ -5, %if.end101.i.get_hardware_info.exit.thread116_crit_edge ], [ -5, %lor.lhs.false.i.get_hardware_info.exit.thread116_crit_edge ], [ %call2.i, %if.end.i.get_hardware_info.exit.thread116_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %version.i) #8
  br label %error

if.end40:                                         ; preds = %if.then173.i, %if.end142.i.if.end40_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %version.i) #8
  %call41 = call i32 @snd_efw_stream_init_duplex(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.error_crit_edge, label %if.end44

if.end40.error_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end44:                                         ; preds = %if.end40
  call void @snd_efw_proc_init(ptr noundef %16) #8
  %142 = ptrtoint ptr %midi_out_ports107.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %midi_out_ports107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool45.not = icmp eq i32 %143, 0
  br i1 %tobool45.not, label %lor.lhs.false, label %if.end44.if.then47_crit_edge

if.end44.if.then47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

lor.lhs.false:                                    ; preds = %if.end44
  %144 = ptrtoint ptr %midi_in_ports109.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %midi_in_ports109.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool46.not = icmp eq i32 %145, 0
  br i1 %tobool46.not, label %lor.lhs.false.if.end52_crit_edge, label %lor.lhs.false.if.then47_crit_edge

lor.lhs.false.if.then47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then47:                                        ; preds = %lor.lhs.false.if.then47_crit_edge, %if.end44.if.then47_crit_edge
  %call48 = call i32 @snd_efw_create_midi_devices(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then47.error_crit_edge, label %if.then47.if.end52_crit_edge

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then47.error_crit_edge:                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end52:                                         ; preds = %if.then47.if.end52_crit_edge, %lor.lhs.false.if.end52_crit_edge
  %call53 = call i32 @snd_efw_create_pcm_devices(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.error_crit_edge, label %if.end56

if.end52.error_crit_edge:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end56:                                         ; preds = %if.end52
  %call57 = call i32 @snd_efw_create_hwdep_device(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.error_crit_edge, label %if.end60

if.end56.error_crit_edge:                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end60:                                         ; preds = %if.end56
  %146 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %card, align 4
  %call61 = call i32 @snd_card_register(ptr noundef %147) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end60.error_crit_edge, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60.error_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end60.error_crit_edge, %if.end56.error_crit_edge, %if.end52.error_crit_edge, %if.then47.error_crit_edge, %if.end40.error_crit_edge, %get_hardware_info.exit.thread116, %get_hardware_info.exit.thread, %if.end11.error_crit_edge
  %err.0 = phi i32 [ %call41, %if.end40.error_crit_edge ], [ %call48, %if.then47.error_crit_edge ], [ %call53, %if.end52.error_crit_edge ], [ %call57, %if.end56.error_crit_edge ], [ %call61, %if.end60.error_crit_edge ], [ -12, %if.end11.error_crit_edge ], [ -12, %get_hardware_info.exit.thread ], [ %err.0.i.ph, %get_hardware_info.exit.thread116 ]
  %148 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %card, align 4
  %call65 = call i32 @snd_card_free(ptr noundef %149) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end60.cleanup_crit_edge, %if.then10, %if.then4
  %retval.0 = phi i32 [ -2, %if.then4 ], [ %call8, %if.then10 ], [ %err.0, %error ], [ 0, %if.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efw_update(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %unit1 = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit1, align 4
  tail call void @snd_efw_transaction_bus_reset(ptr noundef %3) #8
  %mutex = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @snd_efw_stream_update_duplex(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efw_remove(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @snd_card_free(ptr noundef %3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efw_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #8
  %card_index = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_index, align 8
  tail call void @_clear_bit(i32 noundef %3, ptr noundef nonnull @devices_used) #8
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #8
  tail call void @snd_efw_stream_destroy_duplex(ptr noundef %1) #8
  tail call void @snd_efw_transaction_remove_instance(ptr noundef %1) #8
  %mutex = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  %unit = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit, align 4
  tail call void @put_device(ptr noundef %5) #8
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_efw_transaction_add_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_stream_init_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_efw_proc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_create_midi_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_create_pcm_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_create_hwdep_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_efw_stream_destroy_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_efw_transaction_remove_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_command_get_hwinfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_efw_transaction_bus_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_efw_stream_update_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_transaction_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !63, !64, !66, !67, !69, !70, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__UNIQUE_ID_description239, !1, !"__UNIQUE_ID_description239", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireworks/fireworks.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_author240, !3, !"__UNIQUE_ID_author240", i1 false, i1 false}
!3 = !{!"../sound/firewire/fireworks/fireworks.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file241, !5, !"__UNIQUE_ID_file241", i1 false, i1 false}
!5 = !{!"../sound/firewire/fireworks/fireworks.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license242, !5, !"__UNIQUE_ID_license242", i1 false, i1 false}
!7 = !{ptr @snd_efw_resp_buf_size, !8, !"snd_efw_resp_buf_size", i1 false, i1 false}
!8 = !{!"../sound/firewire/fireworks/fireworks.c", i32 26, i32 14}
!9 = !{ptr @snd_efw_resp_buf_debug, !10, !"snd_efw_resp_buf_debug", i1 false, i1 false}
!10 = !{!"../sound/firewire/fireworks/fireworks.c", i32 27, i32 6}
!11 = !{ptr @__param_index, !12, !"__param_index", i1 false, i1 false}
!12 = !{!"../sound/firewire/fireworks/fireworks.c", i32 29, i32 1}
!13 = !{ptr @__UNIQUE_ID_indextype243, !12, !"__UNIQUE_ID_indextype243", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_index244, !15, !"__UNIQUE_ID_index244", i1 false, i1 false}
!15 = !{!"../sound/firewire/fireworks/fireworks.c", i32 30, i32 1}
!16 = !{ptr @__param_id, !17, !"__param_id", i1 false, i1 false}
!17 = !{!"../sound/firewire/fireworks/fireworks.c", i32 31, i32 1}
!18 = !{ptr @__UNIQUE_ID_idtype245, !17, !"__UNIQUE_ID_idtype245", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_id246, !20, !"__UNIQUE_ID_id246", i1 false, i1 false}
!20 = !{!"../sound/firewire/fireworks/fireworks.c", i32 32, i32 1}
!21 = !{ptr @__param_enable, !22, !"__param_enable", i1 false, i1 false}
!22 = !{!"../sound/firewire/fireworks/fireworks.c", i32 33, i32 1}
!23 = !{ptr @__UNIQUE_ID_enabletype247, !22, !"__UNIQUE_ID_enabletype247", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_enable248, !25, !"__UNIQUE_ID_enable248", i1 false, i1 false}
!25 = !{!"../sound/firewire/fireworks/fireworks.c", i32 34, i32 1}
!26 = !{ptr @__param_resp_buf_size, !27, !"__param_resp_buf_size", i1 false, i1 false}
!27 = !{!"../sound/firewire/fireworks/fireworks.c", i32 35, i32 1}
!28 = !{ptr @__UNIQUE_ID_resp_buf_sizetype249, !27, !"__UNIQUE_ID_resp_buf_sizetype249", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_resp_buf_size250, !30, !"__UNIQUE_ID_resp_buf_size250", i1 false, i1 false}
!30 = !{!"../sound/firewire/fireworks/fireworks.c", i32 36, i32 1}
!31 = !{ptr @__param_resp_buf_debug, !32, !"__param_resp_buf_debug", i1 false, i1 false}
!32 = !{!"../sound/firewire/fireworks/fireworks.c", i32 38, i32 1}
!33 = !{ptr @__UNIQUE_ID_resp_buf_debugtype251, !32, !"__UNIQUE_ID_resp_buf_debugtype251", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_resp_buf_debug252, !35, !"__UNIQUE_ID_resp_buf_debug252", i1 false, i1 false}
!35 = !{!"../sound/firewire/fireworks/fireworks.c", i32 39, i32 1}
!36 = !{ptr @__initcall__kmod_snd_fireworks__257_370_snd_efw_init6, !37, !"__initcall__kmod_snd_fireworks__257_370_snd_efw_init6", i1 false, i1 false}
!37 = !{!"../sound/firewire/fireworks/fireworks.c", i32 370, i32 1}
!38 = !{ptr @__exitcall_snd_efw_exit, !39, !"__exitcall_snd_efw_exit", i1 false, i1 false}
!39 = !{!"../sound/firewire/fireworks/fireworks.c", i32 371, i32 1}
!40 = !{ptr @__param_str_index, !12, !"__param_str_index", i1 false, i1 false}
!41 = !{ptr @__param_arr_index, !12, !"__param_arr_index", i1 false, i1 false}
!42 = !{ptr @index, !43, !"index", i1 false, i1 false}
!43 = !{!"../sound/firewire/fireworks/fireworks.c", i32 23, i32 12}
!44 = !{ptr @__param_str_id, !17, !"__param_str_id", i1 false, i1 false}
!45 = !{ptr @__param_arr_id, !17, !"__param_arr_id", i1 false, i1 false}
!46 = !{ptr @id, !47, !"id", i1 false, i1 false}
!47 = !{!"../sound/firewire/fireworks/fireworks.c", i32 24, i32 14}
!48 = !{ptr @__param_str_enable, !22, !"__param_str_enable", i1 false, i1 false}
!49 = !{ptr @__param_arr_enable, !22, !"__param_arr_enable", i1 false, i1 false}
!50 = !{ptr @enable, !51, !"enable", i1 false, i1 false}
!51 = !{!"../sound/firewire/fireworks/fireworks.c", i32 25, i32 13}
!52 = !{ptr @__param_str_resp_buf_size, !27, !"__param_str_resp_buf_size", i1 false, i1 false}
!53 = !{ptr @__param_str_resp_buf_debug, !32, !"__param_str_resp_buf_debug", i1 false, i1 false}
!54 = !{ptr @.str, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/firewire/fireworks/fireworks.c", i32 339, i32 11}
!56 = !{ptr @efw_driver, !57, !"efw_driver", i1 false, i1 false}
!57 = !{!"../sound/firewire/fireworks/fireworks.c", i32 336, i32 25}
!58 = !{ptr @efw_probe.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../sound/firewire/fireworks/fireworks.c", i32 236, i32 2}
!60 = !{ptr @.str.1, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @efw_probe.__key.2, !62, !"__key", i1 false, i1 false}
!62 = !{!"../sound/firewire/fireworks/fireworks.c", i32 237, i32 2}
!63 = !{ptr @.str.3, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @efw_probe.__key.4, !65, !"__key", i1 false, i1 false}
!65 = !{!"../sound/firewire/fireworks/fireworks.c", i32 238, i32 2}
!66 = !{ptr @.str.5, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.6, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/firewire/fireworks/fireworks.c", i32 41, i32 8}
!69 = !{ptr @.str.7, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @devices_mutex, !68, !"devices_mutex", i1 false, i1 false}
!71 = !{ptr @devices_used, !72, !"devices_used", i1 false, i1 false}
!72 = !{!"../sound/firewire/fireworks/fireworks.c", i32 42, i32 8}
!73 = !{ptr @.str.8, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/firewire/fireworks/fireworks.c", i32 88, i32 37}
!75 = !{ptr @.str.9, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/firewire/fireworks/fireworks.c", i32 93, i32 28}
!77 = !{ptr @.str.10, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/firewire/fireworks/fireworks.c", i32 97, i32 4}
!79 = !{ptr @efw_id_table, !80, !"efw_id_table", i1 false, i1 false}
!80 = !{!"../sound/firewire/fireworks/fireworks.c", i32 318, i32 40}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{i8 0, i8 2}
