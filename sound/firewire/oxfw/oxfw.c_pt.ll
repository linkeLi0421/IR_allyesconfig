; ModuleID = '/llk/IR_all_yes/sound/firewire/oxfw/oxfw.c_pt.bc'
source_filename = "../sound/firewire/oxfw/oxfw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32, i32 }
%struct.compat_info = type { ptr, ptr, ptr }
%struct.fw_csr_iterator = type { ptr, ptr }
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_oxfw = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, i8, i8, [10 x ptr], [10 x ptr], i8, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream, %struct.amdtp_stream, i32, i32, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }

@__UNIQUE_ID_description243 = internal constant [59 x i8] c"snd_oxfw.description=Oxford Semiconductor FW970/971 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [53 x i8] c"snd_oxfw.author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [43 x i8] c"snd_oxfw.file=sound/firewire/oxfw/snd-oxfw\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [24 x i8] c"snd_oxfw.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [37 x i8] c"snd_oxfw.alias=snd-firewire-speakers\00", section ".modinfo", align 1
@__UNIQUE_ID_alias248 = internal constant [25 x i8] c"snd_oxfw.alias=snd-scs1x\00", section ".modinfo", align 1
@oxfw_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @oxfw_probe, ptr @oxfw_bus_reset, ptr @oxfw_remove, ptr @oxfw_id_table }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_oxfw__249_396_snd_oxfw_init6 = internal global ptr @snd_oxfw_init, section ".initcall6.init", align 4
@__exitcall_snd_oxfw_exit = internal global ptr @snd_oxfw_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snd_oxfw\00", [23 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@oxfw_id_table = internal constant { [11 x %struct.ieee1394_device_id], [88 x i8] } { [11 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 15, i32 4754, i32 63856, i32 41005, i32 65537, i32 ptrtoint (ptr @griffin_firewave to i32) }, %struct.ieee1394_device_id { i32 15, i32 53323, i32 63856, i32 41005, i32 65537, i32 ptrtoint (ptr @lacie_speakers to i32) }, %struct.ieee1394_device_id { i32 15, i32 5476, i32 64546, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 4082, i32 1120, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 4082, i32 8207, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 13, i32 4082, i32 0, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 558, i32 8388615, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 4704, i32 4096, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 4704, i32 8192, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id { i32 15, i32 987, i32 122333, i32 41005, i32 65537, i32 0 }, %struct.ieee1394_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@oxfw_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&oxfw->mutex\00", [19 x i8] zeroinitializer }, align 32
@oxfw_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&oxfw->lock\00", [20 x i8] zeroinitializer }, align 32
@oxfw_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&oxfw->hwdep_wait\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Onyxi\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Onyx-i\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Onyx 1640i\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"d.Pro\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"U.420\00", [26 x i8] zeroinitializer }, align 32
@__const.detect_loud_models.models = private unnamed_addr constant [5 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OXFW\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s %s (OXFW%x %04x), GUID %08x%08x at %s, S%d\00", [50 x i8] zeroinitializer }, align 32
@griffin_firewave = internal constant { %struct.compat_info, [20 x i8] } { %struct.compat_info { ptr @.str.13, ptr @.str.14, ptr @.str.13 }, [20 x i8] zeroinitializer }, align 32
@lacie_speakers = internal constant { %struct.compat_info, [20 x i8] } { %struct.compat_info { ptr @.str.15, ptr @.str.16, ptr @.str.17 }, [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FireWave\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Griffin\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FWSpeakers\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LaCie\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FireWire Speakers\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4754, i64 53323]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 987, i64 4704, i64 4754, i64 53323]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 23]
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"oxfw_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 374, i32 25 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 377, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"oxfw_id_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 322, i32 40 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 227, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 228, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 229, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 48, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 49, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 50, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 51, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 52, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 102, i32 7 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 112, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"griffin_firewave\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 297, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"lacie_speakers\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 303, i32 33 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 298, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 299, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 304, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 305, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [30 x i8] c"../sound/firewire/oxfw/oxfw.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 306, i32 16 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_snd_oxfw_exit, ptr @__initcall__kmod_snd_oxfw__249_396_snd_oxfw_init6, ptr @snd_oxfw_exit, ptr @oxfw_driver, ptr @.str, ptr @oxfw_id_table, ptr @oxfw_probe.__key, ptr @.str.1, ptr @oxfw_probe.__key.2, ptr @.str.3, ptr @oxfw_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @griffin_firewave, ptr @lacie_speakers, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxfw_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxfw_id_table to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxfw_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxfw_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxfw_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @griffin_firewave to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lacie_speakers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_oxfw_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef nonnull @oxfw_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_oxfw_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef nonnull @oxfw_driver) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxfw_probe(ptr noundef %unit, ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  %it.i = alloca %struct.fw_csr_iterator, align 4
  %key.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %vendor.i = alloca [24 x i8], align 1
  %model.i89 = alloca [32 x i8], align 1
  %firmware.i = alloca i32, align 4
  %models.i = alloca [5 x ptr], align 4
  %model.i = alloca [32 x i8], align 1
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !67
  %vendor_id = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 1
  %1 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vendor_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4082, i32 %2)
  %cmp = icmp eq i32 %2, 4082
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %model_id = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 2
  %3 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %model_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %models.i) #6
  %5 = call ptr @memcpy(ptr %models.i, ptr @__const.detect_loud_models.models, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %model.i) #6
  %directory.i = getelementptr inbounds %struct.fw_unit, ptr %unit, i32 0, i32 1
  %6 = call ptr @memset(ptr %model.i, i32 255, i32 32)
  %7 = ptrtoint ptr %directory.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %directory.i, align 8
  %call.i = call i32 @fw_csr_string(ptr noundef %8, i32 noundef 23, ptr noundef nonnull %model.i, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %detect_loud_models.exit.thread, label %detect_loud_models.exit

detect_loud_models.exit.thread:                   ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %model.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %models.i) #6
  br label %cleanup

detect_loud_models.exit:                          ; preds = %land.lhs.true3
  %call3.i = call i32 @match_string(ptr noundef nonnull %models.i, i32 noundef 5, ptr noundef nonnull %model.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp4.i = icmp sgt i32 %call3.i, -1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %model.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %models.i) #6
  br i1 %cmp4.i, label %detect_loud_models.exit.if.end_crit_edge, label %detect_loud_models.exit.cleanup_crit_edge

detect_loud_models.exit.cleanup_crit_edge:        ; preds = %detect_loud_models.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

detect_loud_models.exit.if.end_crit_edge:         ; preds = %detect_loud_models.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %detect_loud_models.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = call i32 @snd_card_new(ptr noundef %unit, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 1488, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @oxfw_card_free, ptr %private_free, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 9
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 8
  %call.i88 = call ptr @get_device(ptr noundef %unit) #6
  %unit9 = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %unit9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %unit, ptr %unit9, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %driver_data.i, align 4
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %13, align 8
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 2
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @oxfw_probe.__key) #6
  %lock = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @oxfw_probe.__key.2, i16 noundef signext 3) #6
  %hwdep_wait = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 19
  call void @__init_waitqueue_head(ptr noundef %hwdep_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @oxfw_probe.__key.4) #6
  %19 = ptrtoint ptr %unit9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unit9, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vendor.i) #6
  %23 = call ptr @memset(ptr %vendor.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %model.i89) #6
  %24 = call ptr @memset(ptr %model.i89, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware.i) #6
  %25 = ptrtoint ptr %firmware.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %firmware.i, align 4, !annotation !67
  %config_rom.i = getelementptr i8, ptr %22, i32 1028
  %26 = ptrtoint ptr %config_rom.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config_rom.i, align 4
  %add.ptr.i = getelementptr i32, ptr %27, i32 5
  %call2.i = call i32 @fw_csr_string(ptr noundef %add.ptr.i, i32 noundef 3, ptr noundef nonnull %vendor.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i90 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i90, label %if.end7.name_card.exit.thread_crit_edge, label %if.end.i92

if.end7.name_card.exit.thread_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %name_card.exit.thread

if.end.i92:                                       ; preds = %if.end7
  %28 = ptrtoint ptr %unit9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unit9, align 4
  %directory.i91 = getelementptr inbounds %struct.fw_unit, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %directory.i91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %directory.i91, align 8
  %call5.i = call i32 @fw_csr_string(ptr noundef %31, i32 noundef 23, ptr noundef nonnull %model.i89, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i92.name_card.exit.thread_crit_edge, label %if.end8.i

if.end.i92.name_card.exit.thread_crit_edge:       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %name_card.exit.thread

if.end8.i:                                        ; preds = %if.end.i92
  %32 = ptrtoint ptr %unit9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %unit9, align 4
  %call10.i = call i32 @snd_fw_transaction(ptr noundef %33, i32 noundef 4, i64 noundef 281474708602880, ptr noundef nonnull %firmware.i, i32 noundef 4, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end8.i.name_card.exit.thread_crit_edge, label %do.end.i

if.end8.i.name_card.exit.thread_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %name_card.exit.thread

do.end.i:                                         ; preds = %if.end8.i
  %34 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %firmware.i, align 4
  %shr.mask.i = and i32 %35, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1761607680, i32 %shr.mask.i)
  %cmp14.i = icmp eq i32 %shr.mask.i, -1761607680
  br i1 %cmp14.i, label %if.then15.i, label %do.end.i.if.end16.i_crit_edge

do.end.i.if.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then15.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %quirks.i = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 4
  %36 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks.i, align 8
  %or.i = or i32 %37, 1
  store i32 %or.i, ptr %quirks.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %do.end.i.if.end16.i_crit_edge
  %38 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vendor_id, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %if.end16.i.if.end23.i_crit_edge [
    i32 4754, label %if.end16.i.if.then20.i_crit_edge
    i32 53323, label %if.end16.i.if.then20.i_crit_edge110
  ]

if.end16.i.if.then20.i_crit_edge110:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.i

if.end16.i.if.then20.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end16.i.if.then20.i_crit_edge, %if.end16.i.if.then20.i_crit_edge110
  %driver_data.i93 = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 5
  %41 = ptrtoint ptr %driver_data.i93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %driver_data.i93, align 4
  %43 = inttoptr i32 %42 to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %vendor_name.i = getelementptr inbounds %struct.compat_info, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %vendor_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vendor_name.i, align 4
  %model_name.i = getelementptr inbounds %struct.compat_info, ptr %43, i32 0, i32 2
  %48 = ptrtoint ptr %model_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %model_name.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end23.i_crit_edge
  %d.0.i = phi ptr [ %45, %if.then20.i ], [ @.str.11, %if.end16.i.if.end23.i_crit_edge ]
  %v.0.i = phi ptr [ %47, %if.then20.i ], [ %vendor.i, %if.end16.i.if.end23.i_crit_edge ]
  %m.0.i = phi ptr [ %49, %if.then20.i ], [ %model.i89, %if.end16.i.if.end23.i_crit_edge ]
  %50 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %13, align 8
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 2
  %call25.i = call ptr @strcpy(ptr noundef %driver.i, ptr noundef %d.0.i) #9
  %52 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %13, align 8
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 6
  %call28.i = call ptr @strcpy(ptr noundef %mixername.i, ptr noundef %m.0.i) #9
  %54 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %13, align 8
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 3
  %call31.i = call ptr @strcpy(ptr noundef %shortname.i, ptr noundef %m.0.i) #9
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %13, align 8
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 4
  %shr34.i = lshr i32 %35, 20
  %and.i = and i32 %35, 65535
  %58 = ptrtoint ptr %config_rom.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config_rom.i, align 4
  %arrayidx.i = getelementptr i32, ptr %59, i32 3
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 4
  %arrayidx37.i = getelementptr i32, ptr %59, i32 4
  %62 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx37.i, align 4
  %64 = ptrtoint ptr %unit9 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %unit9, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end23.i.if.end22_crit_edge

if.end23.i.if.end22_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end.i.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %65, align 4
  br label %if.end22

name_card.exit.thread:                            ; preds = %if.end8.i.name_card.exit.thread_crit_edge, %if.end.i92.name_card.exit.thread_crit_edge, %if.end7.name_card.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ %call10.i, %if.end8.i.name_card.exit.thread_crit_edge ], [ %call5.i, %if.end.i92.name_card.exit.thread_crit_edge ], [ %call2.i, %if.end7.name_card.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %model.i89) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vendor.i) #6
  br label %error

if.end22:                                         ; preds = %if.end.i.i, %if.end23.i.if.end22_crit_edge
  %retval.0.i.i = phi ptr [ %69, %if.end.i.i ], [ %67, %if.end23.i.if.end22_crit_edge ]
  %max_speed.i = getelementptr i8, ptr %22, i32 -8
  %70 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_speed.i, align 8
  %shl.i = shl i32 100, %71
  %call40.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i, i32 noundef 80, ptr noundef nonnull @.str.12, ptr noundef %v.0.i, ptr noundef %m.0.i, i32 noundef %shr34.i, i32 noundef %and.i, i32 noundef %61, i32 noundef %63, ptr noundef %retval.0.i.i, i32 noundef %shl.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %model.i89) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vendor.i) #6
  %call23 = call i32 @snd_oxfw_stream_discover(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.error_crit_edge, label %if.end26

if.end22.error_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end26:                                         ; preds = %if.end22
  %72 = ptrtoint ptr %unit9 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %unit9, align 4
  %parent.i.i95 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %parent.i.i95 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %parent.i.i95, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %it.i) #6
  %76 = ptrtoint ptr %it.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 -1 to ptr), ptr %it.i, align 4, !annotation !67
  %77 = getelementptr inbounds %struct.fw_csr_iterator, ptr %it.i, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 -1 to ptr), ptr %77, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i) #6
  %79 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %key.i, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %80 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %val.i, align 4, !annotation !67
  %81 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vendor_id, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %82, label %if.end26.if.end25.i_crit_edge [
    i32 4754, label %if.then.i
    i32 53323, label %if.then5.i
    i32 4704, label %if.then10.i
    i32 987, label %land.lhs.true.i
  ]

if.end26.if.end25.i_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i97 = call i32 @snd_oxfw_add_spkr(ptr noundef %13, i1 noundef zeroext false) #6
  br label %detect_quirks.exit

if.then5.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 @snd_oxfw_add_spkr(ptr noundef %13, i1 noundef zeroext true) #6
  br label %detect_quirks.exit

if.then10.i:                                      ; preds = %if.end26
  %quirks.i98 = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 4
  %84 = ptrtoint ptr %quirks.i98 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %quirks.i98, align 8
  %or.i99 = or i32 %85, 8
  store i32 %or.i99, ptr %quirks.i98, align 8
  %model_id.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 2
  %86 = ptrtoint ptr %model_id.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %model_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %87)
  %cmp11.i100 = icmp eq i32 %87, 4096
  br i1 %cmp11.i100, label %if.then12.i, label %if.then10.i.if.end15.i_crit_edge

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %or14.i = or i32 %85, 12
  %88 = ptrtoint ptr %quirks.i98 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or14.i, ptr %quirks.i98, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.then10.i.if.end15.i_crit_edge
  %midi_input_ports.i = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 15
  %89 = ptrtoint ptr %midi_input_ports.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %midi_input_ports.i, align 4
  %midi_output_ports.i = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 16
  %90 = ptrtoint ptr %midi_output_ports.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %midi_output_ports.i, align 8
  %call16.i = call i32 @snd_oxfw_scs1x_add(ptr noundef %13) #6
  br label %detect_quirks.exit

land.lhs.true.i:                                  ; preds = %if.end26
  %model_id20.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %entry1, i32 0, i32 2
  %91 = ptrtoint ptr %model_id20.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %model_id20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 122333, i32 %92)
  %cmp21.i = icmp eq i32 %92, 122333
  br i1 %cmp21.i, label %if.then22.i, label %land.lhs.true.i.if.end32.i_crit_edge

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %quirks23.i = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 4
  %93 = ptrtoint ptr %quirks23.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %quirks23.i, align 8
  %or24.i = or i32 %94, 20
  store i32 %or24.i, ptr %quirks23.i, align 8
  %95 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr.i = load i32, ptr %vendor_id, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end26.if.end25.i_crit_edge
  %96 = phi i32 [ %82, %if.end26.if.end25.i_crit_edge ], [ %.pr.i, %if.then22.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 558, i32 %96)
  %cmp27.i = icmp eq i32 %96, 558
  br i1 %cmp27.i, label %if.then28.i, label %if.end25.i.if.end32.i_crit_edge

if.end25.i.if.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %midi_input_ports29.i = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 15
  %97 = ptrtoint ptr %midi_input_ports29.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %midi_input_ports29.i, align 4
  %inc.i = add i32 %98, 1
  store i32 %inc.i, ptr %midi_input_ports29.i, align 4
  %midi_output_ports30.i = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 16
  %99 = ptrtoint ptr %midi_output_ports30.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %midi_output_ports30.i, align 8
  %inc31.i = add i32 %100, 1
  store i32 %inc31.i, ptr %midi_output_ports30.i, align 8
  br label %detect_quirks.exit.thread

if.end32.i:                                       ; preds = %if.end25.i.if.end32.i_crit_edge, %land.lhs.true.i.if.end32.i_crit_edge
  %config_rom.i101 = getelementptr i8, ptr %75, i32 1028
  %101 = ptrtoint ptr %config_rom.i101 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %config_rom.i101, align 4
  %add.ptr.i102 = getelementptr i32, ptr %102, i32 5
  call void @fw_csr_iterator_init(ptr noundef nonnull %it.i, ptr noundef %add.ptr.i102) #6
  %call3383.i = call i32 @fw_csr_iterator_next(ptr noundef nonnull %it.i, ptr noundef nonnull %key.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3383.i)
  %tobool.not84.i = icmp eq i32 %call3383.i, 0
  br i1 %tobool.not84.i, label %if.end32.i.detect_quirks.exit.thread_crit_edge, label %if.end32.i.while.body.i_crit_edge

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  br label %while.body.i

if.end32.i.detect_quirks.exit.thread_crit_edge:   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %detect_quirks.exit.thread

while.body.i:                                     ; preds = %if.end39.i.while.body.i_crit_edge, %if.end32.i.while.body.i_crit_edge
  %model.086.i = phi i32 [ %model.1.i, %if.end39.i.while.body.i_crit_edge ], [ 0, %if.end32.i.while.body.i_crit_edge ]
  %vendor.085.i = phi i32 [ %vendor.1.i, %if.end39.i.while.body.i_crit_edge ], [ 0, %if.end32.i.while.body.i_crit_edge ]
  %103 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %key.i, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %104, label %while.body.i.if.end39.i_crit_edge [
    i32 3, label %if.then35.i
    i32 23, label %if.then37.i
  ]

while.body.i.if.end39.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then35.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val.i, align 4
  br label %if.end39.i

if.then37.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then37.i, %if.then35.i, %while.body.i.if.end39.i_crit_edge
  %vendor.1.i = phi i32 [ %107, %if.then35.i ], [ %vendor.085.i, %if.then37.i ], [ %vendor.085.i, %while.body.i.if.end39.i_crit_edge ]
  %model.1.i = phi i32 [ %model.086.i, %if.then35.i ], [ %109, %if.then37.i ], [ %model.086.i, %while.body.i.if.end39.i_crit_edge ]
  %call33.i = call i32 @fw_csr_iterator_next(ptr noundef nonnull %it.i, ptr noundef nonnull %key.i, ptr noundef nonnull %val.i) #6
  %tobool.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %if.end39.i.while.body.i_crit_edge

if.end39.i.while.body.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4082, i32 %vendor.1.i)
  %cmp40.i = icmp eq i32 %vendor.1.i, 4082
  br i1 %cmp40.i, label %if.then41.i, label %while.end.i.detect_quirks.exit.thread_crit_edge

while.end.i.detect_quirks.exit.thread_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %detect_quirks.exit.thread

if.then41.i:                                      ; preds = %while.end.i
  %quirks42.i = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 4
  %110 = ptrtoint ptr %quirks42.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %quirks42.i, align 8
  %and.i103 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool45.not.i = icmp eq i32 %and.i103, 0
  %spec.select.v.i = select i1 %tobool45.not.i, i32 6, i32 2
  %spec.select.i = or i32 %spec.select.v.i, %111
  %112 = ptrtoint ptr %quirks42.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %spec.select.i, ptr %quirks42.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5696, i32 %model.1.i)
  %cmp50.i = icmp eq i32 %model.1.i, 5696
  br i1 %cmp50.i, label %if.then51.i, label %if.then41.i.detect_quirks.exit.thread_crit_edge

if.then41.i.detect_quirks.exit.thread_crit_edge:  ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %detect_quirks.exit.thread

if.then51.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #8
  %or53.i = or i32 %spec.select.i, 48
  %113 = ptrtoint ptr %quirks42.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or53.i, ptr %quirks42.i, align 8
  br label %detect_quirks.exit.thread

detect_quirks.exit.thread:                        ; preds = %if.then51.i, %if.then41.i.detect_quirks.exit.thread_crit_edge, %while.end.i.detect_quirks.exit.thread_crit_edge, %if.end32.i.detect_quirks.exit.thread_crit_edge, %if.then28.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %it.i) #6
  br label %if.end30

detect_quirks.exit:                               ; preds = %if.end15.i, %if.then5.i, %if.then.i
  %retval.0.i104 = phi i32 [ %call2.i97, %if.then.i ], [ %call6.i, %if.then5.i ], [ %call16.i, %if.end15.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %it.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i104)
  %cmp28 = icmp slt i32 %retval.0.i104, 0
  br i1 %cmp28, label %detect_quirks.exit.error_crit_edge, label %detect_quirks.exit.if.end30_crit_edge

detect_quirks.exit.if.end30_crit_edge:            ; preds = %detect_quirks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

detect_quirks.exit.error_crit_edge:               ; preds = %detect_quirks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end30:                                         ; preds = %detect_quirks.exit.if.end30_crit_edge, %detect_quirks.exit.thread
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 5
  %114 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %has_output, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not = icmp eq i8 %115, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end30.if.then32_crit_edge

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end30
  %has_input = getelementptr inbounds %struct.snd_oxfw, ptr %13, i32 0, i32 6
  %116 = ptrtoint ptr %has_input to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %has_input, align 1, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool31.not = icmp eq i8 %117, 0
  br i1 %tobool31.not, label %lor.lhs.false.if.end49_crit_edge, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end30.if.then32_crit_edge
  %call33 = call i32 @snd_oxfw_stream_init_duplex(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then32.error_crit_edge, label %if.end36

if.then32.error_crit_edge:                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end36:                                         ; preds = %if.then32
  %call37 = call i32 @snd_oxfw_create_pcm(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.error_crit_edge, label %if.end40

if.end36.error_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end40:                                         ; preds = %if.end36
  call void @snd_oxfw_proc_init(ptr noundef %13) #6
  %call41 = call i32 @snd_oxfw_create_midi(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.error_crit_edge, label %if.end44

if.end40.error_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @snd_oxfw_create_hwdep(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.error_crit_edge, label %if.end44.if.end49_crit_edge

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end44.error_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end49:                                         ; preds = %if.end44.if.end49_crit_edge, %lor.lhs.false.if.end49_crit_edge
  %118 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %card, align 4
  %call50 = call i32 @snd_card_register(ptr noundef %119) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.error_crit_edge, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49.error_crit_edge:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

error:                                            ; preds = %if.end49.error_crit_edge, %if.end44.error_crit_edge, %if.end40.error_crit_edge, %if.end36.error_crit_edge, %if.then32.error_crit_edge, %detect_quirks.exit.error_crit_edge, %if.end22.error_crit_edge, %name_card.exit.thread
  %err.0 = phi i32 [ %call23, %if.end22.error_crit_edge ], [ %retval.0.i104, %detect_quirks.exit.error_crit_edge ], [ %call33, %if.then32.error_crit_edge ], [ %call37, %if.end36.error_crit_edge ], [ %call41, %if.end40.error_crit_edge ], [ %call45, %if.end44.error_crit_edge ], [ %call50, %if.end49.error_crit_edge ], [ %err.0.i.ph, %name_card.exit.thread ]
  %120 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %card, align 4
  %call54 = call i32 @snd_card_free(ptr noundef %121) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end49.cleanup_crit_edge, %if.end.cleanup_crit_edge, %detect_loud_models.exit.cleanup_crit_edge, %detect_loud_models.exit.thread
  %retval.0 = phi i32 [ %err.0, %error ], [ -19, %detect_loud_models.exit.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ -19, %detect_loud_models.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxfw_bus_reset(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %unit1 = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit1, align 4
  tail call void @fcp_bus_reset(ptr noundef %3) #6
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_output, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %has_input = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %has_input to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_input, align 1, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  tail call void @snd_oxfw_stream_update_duplex(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %quirks = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks, align 8
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_oxfw_scs1x_update(ptr noundef %1) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxfw_remove(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @snd_card_free(ptr noundef %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxfw_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_output, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %has_input = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %has_input to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_input, align 1, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @snd_oxfw_stream_destroy_duplex(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %mutex) #6
  %unit = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit, align 4
  tail call void @put_device(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_stream_discover(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_stream_init_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_create_pcm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_oxfw_proc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_create_midi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_create_hwdep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_oxfw_stream_destroy_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_add_spkr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_scs1x_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_csr_iterator_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_iterator_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fcp_bus_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_oxfw_stream_update_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_oxfw_scs1x_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__UNIQUE_ID_description243, !1, !"__UNIQUE_ID_description243", i1 false, i1 false}
!1 = !{!"../sound/firewire/oxfw/oxfw.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_author244, !3, !"__UNIQUE_ID_author244", i1 false, i1 false}
!3 = !{!"../sound/firewire/oxfw/oxfw.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file245, !5, !"__UNIQUE_ID_file245", i1 false, i1 false}
!5 = !{!"../sound/firewire/oxfw/oxfw.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license246, !5, !"__UNIQUE_ID_license246", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias247, !8, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!8 = !{!"../sound/firewire/oxfw/oxfw.c", i32 36, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias248, !10, !"__UNIQUE_ID_alias248", i1 false, i1 false}
!10 = !{!"../sound/firewire/oxfw/oxfw.c", i32 37, i32 1}
!11 = !{ptr @__initcall__kmod_snd_oxfw__249_396_snd_oxfw_init6, !12, !"__initcall__kmod_snd_oxfw__249_396_snd_oxfw_init6", i1 false, i1 false}
!12 = !{!"../sound/firewire/oxfw/oxfw.c", i32 396, i32 1}
!13 = !{ptr @__exitcall_snd_oxfw_exit, !14, !"__exitcall_snd_oxfw_exit", i1 false, i1 false}
!14 = !{!"../sound/firewire/oxfw/oxfw.c", i32 397, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/firewire/oxfw/oxfw.c", i32 377, i32 11}
!17 = !{ptr @oxfw_driver, !18, !"oxfw_driver", i1 false, i1 false}
!18 = !{!"../sound/firewire/oxfw/oxfw.c", i32 374, i32 25}
!19 = !{ptr @oxfw_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../sound/firewire/oxfw/oxfw.c", i32 227, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @oxfw_probe.__key.2, !23, !"__key", i1 false, i1 false}
!23 = !{!"../sound/firewire/oxfw/oxfw.c", i32 228, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @oxfw_probe.__key.4, !26, !"__key", i1 false, i1 false}
!26 = !{!"../sound/firewire/oxfw/oxfw.c", i32 229, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/oxfw/oxfw.c", i32 48, i32 3}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/firewire/oxfw/oxfw.c", i32 49, i32 3}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/firewire/oxfw/oxfw.c", i32 50, i32 3}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/firewire/oxfw/oxfw.c", i32 51, i32 3}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/firewire/oxfw/oxfw.c", i32 52, i32 3}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/firewire/oxfw/oxfw.c", i32 102, i32 7}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/firewire/oxfw/oxfw.c", i32 112, i32 4}
!42 = !{ptr @oxfw_id_table, !43, !"oxfw_id_table", i1 false, i1 false}
!43 = !{!"../sound/firewire/oxfw/oxfw.c", i32 322, i32 40}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/firewire/oxfw/oxfw.c", i32 298, i32 17}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/firewire/oxfw/oxfw.c", i32 299, i32 17}
!48 = !{ptr @griffin_firewave, !49, !"griffin_firewave", i1 false, i1 false}
!49 = !{!"../sound/firewire/oxfw/oxfw.c", i32 297, i32 33}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/firewire/oxfw/oxfw.c", i32 304, i32 17}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/firewire/oxfw/oxfw.c", i32 305, i32 17}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/firewire/oxfw/oxfw.c", i32 306, i32 16}
!56 = !{ptr @lacie_speakers, !57, !"lacie_speakers", i1 false, i1 false}
!57 = !{!"../sound/firewire/oxfw/oxfw.c", i32 303, i32 33}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{i8 0, i8 2}
