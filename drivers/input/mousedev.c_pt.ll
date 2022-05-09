; ModuleID = '/llk/IR_all_yes/drivers/input/mousedev.c_pt.bc'
source_filename = "../drivers/input/mousedev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.mousedev = type { i32, %struct.input_handle, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.device, %struct.cdev, i8, %struct.list_head, i8, %struct.mousedev_hw_data, i32, [4 x i32], [4 x i32], i32, i32, i32, ptr, ptr }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.mousedev_hw_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.mousedev_client = type { ptr, ptr, %struct.list_head, [16 x %struct.mousedev_motion], i32, i32, %struct.spinlock, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i32, i32 }
%struct.mousedev_motion = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author223 = internal constant [48 x i8] c"mousedev.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [60 x i8] c"mousedev.description=Mouse (ExplorerPS/2) device interfaces\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [37 x i8] c"mousedev.file=drivers/input/mousedev\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [21 x i8] c"mousedev.license=GPL\00", section ".modinfo", align 1
@__param_str_xres = internal constant [14 x i8] c"mousedev.xres\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@xres = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_xres = internal constant %struct.kernel_param { ptr @__param_str_xres, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @xres } }, section "__param", align 4
@__UNIQUE_ID_xrestype227 = internal constant [28 x i8] c"mousedev.parmtype=xres:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_xres228 = internal constant [48 x i8] c"mousedev.parm=xres:Horizontal screen resolution\00", section ".modinfo", align 1
@__param_str_yres = internal constant [14 x i8] c"mousedev.yres\00", align 1
@yres = internal global { i32, [28 x i8] } { i32 768, [28 x i8] zeroinitializer }, align 32
@__param_yres = internal constant %struct.kernel_param { ptr @__param_str_yres, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @yres } }, section "__param", align 4
@__UNIQUE_ID_yrestype229 = internal constant [28 x i8] c"mousedev.parmtype=yres:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_yres230 = internal constant [46 x i8] c"mousedev.parm=yres:Vertical screen resolution\00", section ".modinfo", align 1
@__param_str_tap_time = internal constant [18 x i8] c"mousedev.tap_time\00", align 1
@tap_time = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@__param_tap_time = internal constant %struct.kernel_param { ptr @__param_str_tap_time, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @tap_time } }, section "__param", align 4
@__UNIQUE_ID_tap_timetype231 = internal constant [32 x i8] c"mousedev.parmtype=tap_time:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_tap_time232 = internal constant [71 x i8] c"mousedev.parm=tap_time:Tap time for touchpads in absolute mode (msecs)\00", section ".modinfo", align 1
@psaux_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@psaux_mouse = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 1, ptr @.str, ptr @mousedev_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@mousedev_handler = internal global { %struct.input_handler, [32 x i8] } { %struct.input_handler { ptr null, ptr @mousedev_event, ptr null, ptr null, ptr null, ptr @mousedev_connect, ptr @mousedev_disconnect, ptr null, i8 1, i32 32, ptr @.str.6, ptr @mousedev_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mousedev_mix = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_mousedev__267_1124_mousedev_init6 = internal global ptr @mousedev_init, section ".initcall6.init", align 4
@__exitcall_mousedev_exit = internal global ptr @mousedev_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"psaux\00", [26 x i8] zeroinitializer }, align 32
@mousedev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @mousedev_read, ptr @mousedev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mousedev_poll, ptr null, ptr null, ptr null, i32 0, ptr @mousedev_open, ptr null, ptr @mousedev_release, ptr null, ptr @mousedev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/input/mousedev.c\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mousedev_imex_seq = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F3\C8\F3\C8\F3P", [26 x i8] zeroinitializer }, align 32
@mousedev_imps_seq = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F3\C8\F3d\F3P", [26 x i8] zeroinitializer }, align 32
@mousedev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&client->packet_lock\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mousedev\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mousedev_notify_readers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mousedev_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mousedev->client_lock\00", [41 x i8] zeroinitializer }, align 32
@mousedev_create.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&mousedev->mutex\00", [47 x i8] zeroinitializer }, align 32
@mousedev_create.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mousedev->wait\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mice\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mouse%d\00", [24 x i8] zeroinitializer }, align 32
@input_class = external dso_local global %struct.class, align 4
@mousedev_reserve_minor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.1, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013mousedev: failed to reserve mixdev minor: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mousedev_reserve_minor\00", [41 x i8] zeroinitializer }, align 32
@mousedev_reserve_minor._entry_ptr = internal global ptr @mousedev_reserve_minor._entry, section ".printk_index", align 4
@mousedev_reserve_minor._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.1, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013mousedev: failed to reserve new minor: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mousedev_reserve_minor._entry_ptr.22 = internal global ptr @mousedev_reserve_minor._entry.20, section ".printk_index", align 4
@mousedev_mix_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mousedev_mix_list, ptr @mousedev_mix_list }, [24 x i8] zeroinitializer }, align 32
@mousedev_ids = internal constant { <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [9 x i32], [15 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [9 x i32], [15 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id }>, [232 x i8] } { <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [9 x i32], [15 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [9 x i32], [15 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id }> <{ { i32, i16, i16, i16, i16, [1 x i32], <{ [9 x i32], [15 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 112, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 6], <{ [9 x i32], [15 x i32] }> <{ [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536], [15 x i32] zeroinitializer }>, [1 x i32] [i32 3], [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 80, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 6], [24 x i32] zeroinitializer, [1 x i32] [i32 256], [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 176, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 10], <{ [11 x i32], [13 x i32] }> <{ [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024], [13 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] [i32 3, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [11 x i32], [13 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 176, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 10], <{ [11 x i32], [13 x i32] }> <{ [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32], [13 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] [i32 285212675, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, { i32, i16, i16, i16, i16, [1 x i32], <{ [9 x i32], [15 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 176, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 10], <{ [9 x i32], [15 x i32] }> <{ [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536], [15 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] [i32 3, i32 0], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer }>, [232 x i8] zeroinitializer }, align 32
@mousedev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.1, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016mousedev: PS/2 mouse device common for all mice\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mousedev_init\00", [18 x i8] zeroinitializer }, align 32
@mousedev_init._entry_ptr = internal global ptr @mousedev_init._entry, section ".printk_index", align 4
@mousedev_psaux_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.1, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014mousedev: could not register psaux device, error: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mousedev_psaux_register\00", [40 x i8] zeroinitializer }, align 32
@mousedev_psaux_register._entry_ptr = internal global ptr @mousedev_psaux_register._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 233, i64 235, i64 242, i64 255]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 8]
@__sancov_gen_cov_switch_values.33 = internal global [17 x i64] [i64 15, i64 32, i64 256, i64 257, i64 258, i64 259, i64 260, i64 272, i64 273, i64 274, i64 275, i64 276, i64 277, i64 278, i64 330, i64 331, i64 332]
@___asan_gen_.34 = private unnamed_addr constant [5 x i8] c"xres\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 39, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [5 x i8] c"yres\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 43, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"tap_time\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 47, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"psaux_registered\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"psaux_mouse\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1066, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"mousedev_handler\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1053, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"mousedev_mix\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 116, i32 25 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1068, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"mousedev_fops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 773, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 728, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 230, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 214, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 174, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"mousedev_imex_seq\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 114, i32 22 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"mousedev_imps_seq\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 113, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 550, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1059, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 270, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 695, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 723, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 864, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 865, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 868, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 871, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 880, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 831, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 836, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"mousedev_mix_list\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 117, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"mousedev_ids\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1002, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1112, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [28 x i8] c"../drivers/input/mousedev.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1080, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__UNIQUE_ID_tap_time232, ptr @__UNIQUE_ID_tap_timetype231, ptr @__UNIQUE_ID_xres228, ptr @__UNIQUE_ID_xrestype227, ptr @__UNIQUE_ID_yres230, ptr @__UNIQUE_ID_yrestype229, ptr @__exitcall_mousedev_exit, ptr @__initcall__kmod_mousedev__267_1124_mousedev_init6, ptr @__param_tap_time, ptr @__param_xres, ptr @__param_yres, ptr @mousedev_exit, ptr @mousedev_init._entry, ptr @mousedev_init._entry_ptr, ptr @mousedev_psaux_register._entry, ptr @mousedev_psaux_register._entry_ptr, ptr @mousedev_psaux_unregister, ptr @mousedev_reserve_minor._entry, ptr @mousedev_reserve_minor._entry.20, ptr @mousedev_reserve_minor._entry_ptr, ptr @mousedev_reserve_minor._entry_ptr.22, ptr @xres, ptr @yres, ptr @tap_time, ptr @psaux_registered, ptr @psaux_mouse, ptr @mousedev_handler, ptr @mousedev_mix, ptr @.str, ptr @mousedev_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mousedev_imex_seq, ptr @mousedev_imps_seq, ptr @mousedev_open.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mousedev_create.__key, ptr @.str.11, ptr @mousedev_create.__key.12, ptr @.str.13, ptr @mousedev_create.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @mousedev_mix_list, ptr @mousedev_ids, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tap_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psaux_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psaux_mouse to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_handler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_mix to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_imex_seq to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_imps_seq to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_create.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_create.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_reserve_minor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_reserve_minor._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_mix_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_ids to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousedev_psaux_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mousedev_psaux_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %.b1 = load i1, ptr @psaux_registered, align 1
  br i1 %.b1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @misc_deregister(ptr noundef nonnull @psaux_mouse) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mousedev_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %.b1.i = load i1, ptr @psaux_registered, align 1
  br i1 %.b1.i, label %if.then.i, label %entry.mousedev_psaux_unregister.exit_crit_edge

entry.mousedev_psaux_unregister.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_psaux_unregister.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @misc_deregister(ptr noundef nonnull @psaux_mouse) #10
  br label %mousedev_psaux_unregister.exit

mousedev_psaux_unregister.exit:                   ; preds = %if.then.i, %entry.mousedev_psaux_unregister.exit_crit_edge
  tail call void @input_unregister_handler(ptr noundef nonnull @mousedev_handler) #10
  %0 = load ptr, ptr @mousedev_mix, align 4
  tail call fastcc void @mousedev_destroy(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mousedev_destroy(ptr noundef %mousedev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 7
  %dev = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 6
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #10
  tail call fastcc void @mousedev_cleanup(ptr noundef %mousedev)
  %devt = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 6, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  tail call void @input_free_minor(i32 noundef %and) #10
  %2 = load ptr, ptr @mousedev_mix, align 4
  %cmp.not = icmp eq ptr %2, %mousedev
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 1
  tail call void @input_unregister_handle(ptr noundef %handle) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @put_device(ptr noundef %dev) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mousedev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @mousedev_create(ptr noundef null, ptr noundef nonnull @mousedev_handler, i1 noundef zeroext true)
  store ptr %call, ptr @mousedev_mix, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @input_register_handler(ptr noundef nonnull @mousedev_handler) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load ptr, ptr @mousedev_mix, align 4
  tail call fastcc void @mousedev_destroy(ptr noundef %1)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mousedev_psaux_register() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mousedev_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mousedev1 = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mousedev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mousedev1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #10
  %ready = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 10
  %4 = call ptr @memset(ptr %data, i32 255, i32 6)
  %5 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %buffer3 = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %buffer3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buffer3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %exist = getelementptr inbounds %struct.mousedev, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %exist, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %land.lhs.true5.if.end_crit_edge, label %land.lhs.true7

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %11 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_flags, align 4
  %and = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.end_crit_edge, label %land.lhs.true7.cleanup80_crit_edge

land.lhs.true7.cleanup80_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 729) #10
  %exist12 = getelementptr inbounds %struct.mousedev, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %exist12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %exist12, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool13.not = icmp eq i8 %14, 0
  br i1 %tobool13.not, label %if.end.cleanup80_crit_edge, label %lor.lhs.false

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false.if.end46_crit_edge

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %buffer17 = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %buffer17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buffer17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool19.not = icmp eq i8 %18, 0
  br i1 %tobool19.not, label %if.then20, label %lor.lhs.false16.if.end42_crit_edge

lor.lhs.false16.if.end42_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then20:                                        ; preds = %lor.lhs.false16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait = getelementptr inbounds %struct.mousedev, ptr %3, i32 0, i32 2
  %call134 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %20 = ptrtoint ptr %exist12 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %exist12, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not135 = icmp eq i8 %21, 0
  br i1 %tobool23.not135, label %if.then20.if.end38.thread126_crit_edge, label %if.then20.lor.lhs.false24_crit_edge

if.then20.lor.lhs.false24_crit_edge:              ; preds = %if.then20
  br label %lor.lhs.false24

if.then20.if.end38.thread126_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.thread126

lor.lhs.false24:                                  ; preds = %cleanup.lor.lhs.false24_crit_edge, %if.then20.lor.lhs.false24_crit_edge
  %call136 = phi i32 [ %call, %cleanup.lor.lhs.false24_crit_edge ], [ %call134, %if.then20.lor.lhs.false24_crit_edge ]
  %22 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool27.not = icmp eq i8 %23, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false24.if.end38.thread126_crit_edge

lor.lhs.false24.if.end38.thread126_crit_edge:     ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.thread126

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %24 = ptrtoint ptr %buffer17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buffer17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool31.not = icmp eq i8 %25, 0
  br i1 %tobool31.not, label %if.end33, label %lor.lhs.false28.if.end38.thread126_crit_edge

lor.lhs.false28.if.end38.thread126_crit_edge:     ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.thread126

if.end33:                                         ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool34.not = icmp eq i32 %call136, 0
  br i1 %tobool34.not, label %cleanup, label %if.end38

cleanup:                                          ; preds = %if.end33
  call void @schedule() #10
  %call = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %26 = ptrtoint ptr %exist12 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %exist12, align 8, !range !121
  %tobool23.not = icmp eq i8 %27, 0
  br i1 %tobool23.not, label %cleanup.if.end38.thread126_crit_edge, label %cleanup.lor.lhs.false24_crit_edge

cleanup.lor.lhs.false24_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false24

cleanup.if.end38.thread126_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.thread126

if.end38.thread126:                               ; preds = %cleanup.if.end38.thread126_crit_edge, %lor.lhs.false28.if.end38.thread126_crit_edge, %lor.lhs.false24.if.end38.thread126_crit_edge, %if.then20.if.end38.thread126_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end42

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup80

if.end42:                                         ; preds = %if.end38.thread126, %lor.lhs.false16.if.end42_crit_edge
  %28 = ptrtoint ptr %exist12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr = load i8, ptr %exist12, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool44.not = icmp eq i8 %.pr, 0
  br i1 %tobool44.not, label %if.end42.cleanup80_crit_edge, label %if.end42.if.end46_crit_edge

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end42.cleanup80_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

if.end46:                                         ; preds = %if.end42.if.end46_crit_edge, %lor.lhs.false.if.end46_crit_edge
  %packet_lock = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %packet_lock) #10
  %buffer47 = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %buffer47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buffer47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool48.not = icmp eq i8 %30, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %if.end46.if.end55_crit_edge

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

land.lhs.true49:                                  ; preds = %if.end46
  %31 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool52.not = icmp eq i8 %32, 0
  br i1 %tobool52.not, label %land.lhs.true49.if.end55_crit_edge, label %if.then53

land.lhs.true49.if.end55_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then53:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  %ps2 = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 9
  call fastcc void @mousedev_packet(ptr noundef %1, ptr noundef %ps2)
  %bufsiz = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 12
  %33 = ptrtoint ptr %bufsiz to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bufsiz, align 4
  %35 = ptrtoint ptr %buffer47 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %buffer47, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %land.lhs.true49.if.end55_crit_edge, %if.end46.if.end55_crit_edge
  %36 = ptrtoint ptr %buffer47 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buffer47, align 1
  %conv57 = zext i8 %37 to i32
  %38 = call i32 @llvm.umin.i32(i32 %conv57, i32 %count)
  %ps264 = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 9
  %bufsiz66 = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 12
  %39 = ptrtoint ptr %bufsiz66 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bufsiz66, align 4
  %conv67 = zext i8 %40 to i32
  %add.ptr = getelementptr i8, ptr %ps264, i32 %conv67
  %idx.neg = sub nsw i32 0, %conv57
  %add.ptr70 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %41 = call ptr @memcpy(ptr %data, ptr %add.ptr70, i32 %38)
  %42 = ptrtoint ptr %buffer47 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %buffer47, align 1
  %44 = trunc i32 %38 to i8
  %conv73 = sub i8 %43, %44
  store i8 %conv73, ptr %buffer47, align 1
  call void @_raw_spin_unlock_irq(ptr noundef %packet_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp1.i.i = icmp ugt i32 %38, 6
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !122

if.then3.i.i:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 6, i32 noundef %38) #10
  br label %cleanup80

if.then.i.i.i:                                    ; preds = %if.end55
  call void @__check_object_size(ptr noundef nonnull %data, i32 noundef %38, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %38, i32 -1226833920) #15, !srcloc !123
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data, i32 noundef %38) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef nonnull %data, i32 noundef %38) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %38, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %38, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool77.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool77.not, i32 %38, i32 -14
  br label %cleanup80

cleanup80:                                        ; preds = %copy_to_user.exit, %if.then3.i.i, %if.end42.cleanup80_crit_edge, %if.end38, %if.end.cleanup80_crit_edge, %land.lhs.true7.cleanup80_crit_edge
  %retval.0 = phi i32 [ -11, %land.lhs.true7.cleanup80_crit_edge ], [ %call136, %if.end38 ], [ -19, %if.end42.cleanup80_crit_edge ], [ -19, %if.end.cleanup80_crit_edge ], [ -14, %if.then3.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mousedev_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp62.not = icmp eq i32 %count, 0
  br i1 %cmp62.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %packet_lock = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 6
  %imexseq = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 13
  %mode = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 15
  %impsseq = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 14
  %ps2.i = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 9
  %arrayidx25.i = getelementptr %struct.mousedev_client, ptr %1, i32 0, i32 9, i32 1
  %arrayidx27.i = getelementptr %struct.mousedev_client, ptr %1, i32 0, i32 9, i32 2
  %bufsiz28.i = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 12
  %arrayidx20.i = getelementptr %struct.mousedev_client, ptr %1, i32 0, i32 9, i32 3
  %buffer.i = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %mousedev_generate_response.exit.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc40, %mousedev_generate_response.exit.for.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 683) #10
  %add.ptr = getelementptr i8, ptr %buffer, i32 %i.063
  %2 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !124
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #10, !srcloc !127
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %asmresult1 = extractvalue { i32, i32 } %5, 1
  tail call void @_raw_spin_lock_irq(ptr noundef %packet_lock) #10
  %6 = ptrtoint ptr %imexseq to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %imexseq, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [6 x i8], ptr @mousedev_imex_seq, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = trunc i32 %asmresult1 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %10)
  %cmp5 = icmp eq i8 %9, %10
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %inc = add i8 %7, 1
  %11 = ptrtoint ptr %imexseq to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %inc, ptr %imexseq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc)
  %cmp10 = icmp eq i8 %inc, 6
  br i1 %cmp10, label %if.then12, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %imexseq to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %imexseq, align 1
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %mode, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %imexseq to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %imexseq, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12, %if.then7.if.end16_crit_edge
  %15 = ptrtoint ptr %impsseq to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %impsseq, align 2
  %idxprom18 = zext i8 %16 to i32
  %arrayidx19 = getelementptr [6 x i8], ptr @mousedev_imps_seq, i32 0, i32 %idxprom18
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %10)
  %cmp21 = icmp eq i8 %18, %10
  br i1 %cmp21, label %if.then23, label %if.else33

if.then23:                                        ; preds = %if.end16
  %inc25 = add i8 %16, 1
  %19 = ptrtoint ptr %impsseq to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %inc25, ptr %impsseq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc25)
  %cmp27 = icmp eq i8 %inc25, 6
  br i1 %cmp27, label %if.then29, label %if.then23.if.end35_crit_edge

if.then23.if.end35_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then29:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %impsseq to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %impsseq, align 2
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %mode, align 4
  br label %if.end35

if.else33:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %impsseq to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %impsseq, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then29, %if.then23.if.end35_crit_edge
  %23 = ptrtoint ptr %ps2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -6, ptr %ps2.i, align 4
  %24 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %if.end35.mousedev_generate_response.exit_crit_edge [
    i8 -21, label %sw.bb.i
    i8 -14, label %sw.bb3.i
    i8 -23, label %sw.bb14.i
    i8 -1, label %sw.bb22.i
  ]

if.end35.mousedev_generate_response.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_generate_response.exit

sw.bb.i:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mousedev_packet(ptr noundef %1, ptr noundef %arrayidx25.i) #10
  %25 = ptrtoint ptr %bufsiz28.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bufsiz28.i, align 4
  %inc.i = add i8 %26, 1
  br label %mousedev_generate_response.exit

sw.bb3.i:                                         ; preds = %if.end35
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %29 = icmp ult i32 %28, 3
  br i1 %29, label %switch.lookup, label %sw.bb3.i.mousedev_generate_response.exit_crit_edge

sw.bb3.i.mousedev_generate_response.exit_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_generate_response.exit

switch.lookup:                                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.cast = trunc i32 %28 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 262912, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %30 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %switch.masked, ptr %arrayidx25.i, align 1
  br label %mousedev_generate_response.exit

sw.bb14.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 96, ptr %arrayidx25.i, align 1
  %32 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %arrayidx27.i, align 2
  %33 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -56, ptr %arrayidx20.i, align 1
  br label %mousedev_generate_response.exit

sw.bb22.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %imexseq to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %imexseq, align 1
  %35 = ptrtoint ptr %impsseq to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %impsseq, align 2
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %mode, align 4
  %37 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -86, ptr %arrayidx25.i, align 1
  %38 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx27.i, align 2
  br label %mousedev_generate_response.exit

mousedev_generate_response.exit:                  ; preds = %sw.bb22.i, %sw.bb14.i, %switch.lookup, %sw.bb3.i.mousedev_generate_response.exit_crit_edge, %sw.bb.i, %if.end35.mousedev_generate_response.exit_crit_edge
  %inc.i.sink = phi i8 [ %inc.i, %sw.bb.i ], [ 4, %sw.bb14.i ], [ 3, %sw.bb22.i ], [ 2, %switch.lookup ], [ 2, %sw.bb3.i.mousedev_generate_response.exit_crit_edge ], [ 1, %if.end35.mousedev_generate_response.exit_crit_edge ]
  %39 = ptrtoint ptr %bufsiz28.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %inc.i.sink, ptr %bufsiz28.i, align 4
  %40 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %inc.i.sink, ptr %buffer.i, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %packet_lock) #10
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 707, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  %inc40 = add nuw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc40, %count
  br i1 %exitcond.not, label %mousedev_generate_response.exit.for.end_crit_edge, label %mousedev_generate_response.exit.for.body_crit_edge

mousedev_generate_response.exit.for.body_crit_edge: ; preds = %mousedev_generate_response.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

mousedev_generate_response.exit.for.end_crit_edge: ; preds = %mousedev_generate_response.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %mousedev_generate_response.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kill_fasync(ptr noundef %1, i32 noundef 29, i32 noundef 1) #10
  %mousedev = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %mousedev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mousedev, align 4
  %wait = getelementptr inbounds %struct.mousedev, ptr %42, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ -14, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mousedev_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mousedev1 = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mousedev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mousedev1, align 4
  %wait2 = getelementptr inbounds %struct.mousedev, ptr %3, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %wait2, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wait2, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %exist = getelementptr inbounds %struct.mousedev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %exist, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, i32 24, i32 260
  %ready = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %poll_wait.exit.if.then_crit_edge

poll_wait.exit.if.then_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %poll_wait.exit
  %buffer = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %poll_wait.exit.if.then_crit_edge
  %or = or i32 %cond, 65
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %mask.0 = phi i32 [ %or, %if.then ], [ %cond, %lor.lhs.false.if.end_crit_edge ]
  ret i32 %mask.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mousedev_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %shr.i.mask = and i32 %1, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 10485760, i32 %shr.i.mask)
  %cmp = icmp eq i32 %shr.i.mask, 10485760
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr @mousedev_mix, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -1168
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mousedev.0 = phi ptr [ %2, %if.then ], [ %add.ptr, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 352) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %packet_lock = getelementptr inbounds %struct.mousedev_client, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %packet_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mousedev_open.__key, i16 noundef signext 3) #10
  %7 = load i32, ptr @xres, align 4
  %div = sdiv i32 %7, 2
  %pos_x = getelementptr inbounds %struct.mousedev_client, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %pos_x to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %pos_x, align 4
  %9 = load i32, ptr @yres, align 4
  %div5 = sdiv i32 %9, 2
  %pos_y = getelementptr inbounds %struct.mousedev_client, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %pos_y to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div5, ptr %pos_y, align 8
  %mousedev6 = getelementptr inbounds %struct.mousedev_client, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %mousedev6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mousedev.0, ptr %mousedev6, align 4
  %client_lock.i = getelementptr inbounds %struct.mousedev, ptr %mousedev.0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #10
  %node.i = getelementptr inbounds %struct.mousedev_client, ptr %call7.i.i, i32 0, i32 2
  %client_list.i = getelementptr inbounds %struct.mousedev, ptr %mousedev.0, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.mousedev, ptr %mousedev.0, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %13, ptr noundef %client_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body.mousedev_attach_client.exit_crit_edge

do.body.mousedev_attach_client.exit_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_attach_client.exit

if.end.i.i.i:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %client_list.i, ptr %node.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.mousedev_client, ptr %call7.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !128
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %node.i, ptr %13, align 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node.i, ptr %prev.i.i, align 4
  br label %mousedev_attach_client.exit

mousedev_attach_client.exit:                      ; preds = %if.end.i.i.i, %do.body.mousedev_attach_client.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #10
  %open_device = getelementptr inbounds %struct.mousedev, ptr %mousedev.0, i32 0, i32 18
  %18 = ptrtoint ptr %open_device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %open_device, align 4
  %call7 = tail call i32 %19(ptr noundef %mousedev.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %err_free_client

if.end10:                                         ; preds = %mousedev_attach_client.exit
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call11 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #10
  br label %cleanup

err_free_client:                                  ; preds = %mousedev_attach_client.exit
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #10
  %call.i.i.i32 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #10
  br i1 %call.i.i.i32, label %if.end.i.i.i33, label %err_free_client.mousedev_detach_client.exit_crit_edge

err_free_client.mousedev_detach_client.exit_crit_edge: ; preds = %err_free_client
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_detach_client.exit

if.end.i.i.i33:                                   ; preds = %err_free_client
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.mousedev_client, ptr %call7.i.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %mousedev_detach_client.exit

mousedev_detach_client.exit:                      ; preds = %if.end.i.i.i33, %err_free_client.mousedev_detach_client.exit_crit_edge
  %prev.i.i34 = getelementptr inbounds %struct.mousedev_client, ptr %call7.i.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i34, align 4
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #10
  tail call void @synchronize_rcu() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %mousedev_detach_client.exit, %if.end10, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %mousedev_detach_client.exit ], [ 0, %if.end10 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mousedev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mousedev1 = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mousedev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mousedev1, align 4
  %client_lock.i = getelementptr inbounds %struct.mousedev, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #10
  %node.i = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.mousedev_detach_client.exit_crit_edge

entry.mousedev_detach_client.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_detach_client.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %mousedev_detach_client.exit

mousedev_detach_client.exit:                      ; preds = %if.end.i.i.i, %entry.mousedev_detach_client.exit_crit_edge
  %prev.i.i = getelementptr inbounds %struct.mousedev_client, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #10
  tail call void @synchronize_rcu() #10
  tail call void @kfree(ptr noundef %1) #10
  %close_device = getelementptr inbounds %struct.mousedev, ptr %3, i32 0, i32 19
  %11 = ptrtoint ptr %close_device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %close_device, align 8
  tail call void %12(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mousedev_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mousedev_packet(ptr nocapture noundef %client, ptr nocapture noundef %ps2_data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.mousedev_client, ptr %client, i32 0, i32 5
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr %struct.mousedev_client, ptr %client, i32 0, i32 3, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = tail call i32 @llvm.smax.i32(i32 %3, i32 -127)
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 127)
  %conv = trunc i32 %5 to i8
  %sub = sub i32 %3, %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %arrayidx, align 4
  %dy10 = getelementptr %struct.mousedev_client, ptr %client, i32 0, i32 3, i32 %1, i32 1
  %7 = ptrtoint ptr %dy10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dy10, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 -127)
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 127)
  %conv25 = trunc i32 %10 to i8
  %sub28 = sub i32 %8, %10
  %11 = ptrtoint ptr %dy10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub28, ptr %dy10, align 4
  %and = lshr i32 %5, 3
  %shr = and i32 %and, 16
  %and32 = lshr i32 %10, 2
  %shr33 = and i32 %and32, 32
  %or = or i32 %shr33, %shr
  %12 = trunc i32 %or to i8
  %conv37 = or i8 %12, 8
  %13 = ptrtoint ptr %ps2_data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv37, ptr %ps2_data, align 1
  %buttons = getelementptr %struct.mousedev_client, ptr %client, i32 0, i32 3, i32 %1, i32 3
  %14 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buttons, align 4
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 7
  %conv42 = or i8 %conv37, %17
  store i8 %conv42, ptr %ps2_data, align 1
  %arrayidx43 = getelementptr i8, ptr %ps2_data, i32 1
  %18 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %arrayidx43, align 1
  %arrayidx44 = getelementptr i8, ptr %ps2_data, i32 2
  %19 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv25, ptr %arrayidx44, align 1
  %mode = getelementptr inbounds %struct.mousedev_client, ptr %client, i32 0, i32 15
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %21, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb71
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dz45 = getelementptr %struct.mousedev_client, ptr %client, i32 0, i32 3, i32 %1, i32 2
  %23 = ptrtoint ptr %dz45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dz45, align 4
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 -7)
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 7)
  %sub63 = sub i32 %24, %26
  %27 = ptrtoint ptr %dz45 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub63, ptr %dz45, align 4
  %and65 = and i32 %26, 15
  %28 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buttons, align 4
  %and67 = shl i32 %29, 1
  %shl = and i32 %and67, 48
  %or68 = or i32 %shl, %and65
  %conv69 = trunc i32 %or68 to i8
  %arrayidx70 = getelementptr i8, ptr %ps2_data, i32 3
  %30 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv69, ptr %arrayidx70, align 1
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dz72 = getelementptr %struct.mousedev_client, ptr %client, i32 0, i32 3, i32 %1, i32 2
  %31 = ptrtoint ptr %dz72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dz72, align 4
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 -127)
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 127)
  %conv87 = trunc i32 %34 to i8
  %sub90 = sub i32 %32, %34
  %35 = ptrtoint ptr %dz72 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub90, ptr %dz72, align 4
  %36 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buttons, align 4
  %and92 = lshr i32 %37, 3
  %shr93 = and i32 %and92, 2
  %and95 = lshr i32 %37, 1
  %shr96 = and i32 %and95, 4
  %or97 = or i32 %shr93, %shr96
  %38 = ptrtoint ptr %ps2_data to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ps2_data, align 1
  %40 = trunc i32 %or97 to i8
  %conv101 = or i8 %39, %40
  store i8 %conv101, ptr %ps2_data, align 1
  %arrayidx102 = getelementptr i8, ptr %ps2_data, i32 3
  %41 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv87, ptr %arrayidx102, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dz105 = getelementptr %struct.mousedev_client, ptr %client, i32 0, i32 3, i32 %1, i32 2
  %42 = ptrtoint ptr %dz105 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %dz105, align 4
  %43 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buttons, align 4
  %and107 = lshr i32 %44, 3
  %shr108 = and i32 %and107, 2
  %and110 = lshr i32 %44, 1
  %shr111 = and i32 %and110, 4
  %or112 = or i32 %shr108, %shr111
  %45 = ptrtoint ptr %ps2_data to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ps2_data, align 1
  %47 = trunc i32 %or112 to i8
  %conv116 = or i8 %46, %47
  store i8 %conv116, ptr %ps2_data, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb71, %sw.bb
  %.sink = phi i8 [ 3, %sw.default ], [ 4, %sw.bb71 ], [ 4, %sw.bb ]
  %bufsiz117 = getelementptr inbounds %struct.mousedev_client, ptr %client, i32 0, i32 12
  %48 = ptrtoint ptr %bufsiz117 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.sink, ptr %bufsiz117, align 4
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not = icmp eq i32 %50, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.epilog.if.end131_crit_edge

sw.epilog.if.end131_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

land.lhs.true:                                    ; preds = %sw.epilog
  %51 = ptrtoint ptr %dy10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dy10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool120.not = icmp eq i32 %52, 0
  br i1 %tobool120.not, label %land.lhs.true121, label %land.lhs.true.if.end131_crit_edge

land.lhs.true.if.end131_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

land.lhs.true121:                                 ; preds = %land.lhs.true
  %dz122 = getelementptr %struct.mousedev_client, ptr %client, i32 0, i32 3, i32 %1, i32 2
  %53 = ptrtoint ptr %dz122 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dz122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool123.not = icmp eq i32 %54, 0
  br i1 %tobool123.not, label %if.then, label %land.lhs.true121.if.end131_crit_edge

land.lhs.true121.if.end131_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then:                                          ; preds = %land.lhs.true121
  %55 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tail, align 4
  %head = getelementptr inbounds %struct.mousedev_client, ptr %client, i32 0, i32 4
  %57 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp125 = icmp eq i32 %56, %58
  br i1 %cmp125, label %if.then127, label %if.else

if.then127:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ready = getelementptr inbounds %struct.mousedev_client, ptr %client, i32 0, i32 10
  %59 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %ready, align 2
  %60 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buttons, align 4
  %last_buttons = getelementptr inbounds %struct.mousedev_client, ptr %client, i32 0, i32 16
  %62 = ptrtoint ptr %last_buttons to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %last_buttons, align 4
  br label %if.end131

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %56, 1
  %rem = and i32 %add, 15
  %63 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %rem, ptr %tail, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.else, %if.then127, %land.lhs.true121.if.end131_crit_edge, %land.lhs.true.if.end131_crit_edge, %sw.epilog.if.end131_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mousedev_event(ptr nocapture noundef readonly %handle, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb10
    i32 1, label %sw.bb11
    i32 0, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dev = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %arrayidx.i = getelementptr %struct.input_dev, ptr %4, i32 0, i32 6, i32 9
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %arrayidx.i86 = getelementptr %struct.input_dev, ptr %4, i32 0, i32 6, i32 10
  %7 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i86, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %10 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %code, label %if.then6.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb20.i
  ]

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then6
  %pkt_count.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %pkt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pkt_count.i, align 4
  %and.i = and i32 %12, 3
  %arrayidx.i91 = getelementptr %struct.mousedev, ptr %1, i32 0, i32 13, i32 %and.i
  %13 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %value, ptr %arrayidx.i91, align 4
  %touch.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %touch.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %touch.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp ugt i32 %12, 1
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb.i
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 26
  %16 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.then.i.input_abs_get_min.exit.i_crit_edge, label %cond.true.i92.i

if.then.i.input_abs_get_min.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_get_min.exit.i

cond.true.i92.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %maximum.i.i = getelementptr %struct.input_absinfo, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maximum.i.i, align 4
  %minimum.i.i = getelementptr %struct.input_absinfo, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %minimum.i.i, align 4
  br label %input_abs_get_min.exit.i

input_abs_get_min.exit.i:                         ; preds = %cond.true.i92.i, %if.then.i.input_abs_get_min.exit.i_crit_edge
  %cond.i107.i = phi i32 [ %19, %cond.true.i92.i ], [ 0, %if.then.i.input_abs_get_min.exit.i_crit_edge ]
  %cond.i93.i = phi i32 [ %21, %cond.true.i92.i ], [ 0, %if.then.i.input_abs_get_min.exit.i_crit_edge ]
  %sub3.i = sub i32 %cond.i107.i, %cond.i93.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i107.i, i32 %cond.i93.i)
  %cmp4.i = icmp eq i32 %cond.i107.i, %cond.i93.i
  %spec.store.select.i = select i1 %cmp4.i, i32 512, i32 %sub3.i
  %sub8.i = add i32 %12, 2
  %and9.i = and i32 %sub8.i, 3
  %arrayidx10.i = getelementptr %struct.mousedev, ptr %1, i32 0, i32 13, i32 %and9.i
  %22 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx10.i, align 4
  %sub11.i = sub i32 %value, %23
  %mul12.i = shl i32 %sub11.i, 15
  %div.i = sdiv i32 %mul12.i, %spec.store.select.i
  %frac_dx.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %frac_dx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frac_dx.i, align 8
  %add.i = add i32 %25, %div.i
  %div13.i = sdiv i32 %add.i, 128
  %packet.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %packet.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div13.i, ptr %packet.i, align 8
  %mul16.neg.i = mul i32 %div13.i, -128
  %sub17.i = add i32 %mul16.neg.i, %add.i
  store i32 %sub17.i, ptr %frac_dx.i, align 8
  br label %cleanup

sw.bb20.i:                                        ; preds = %if.then6
  %pkt_count21.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %pkt_count21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pkt_count21.i, align 4
  %and23.i = and i32 %28, 3
  %arrayidx24.i = getelementptr %struct.mousedev, ptr %1, i32 0, i32 14, i32 %and23.i
  %29 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %value, ptr %arrayidx24.i, align 4
  %touch25.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %touch25.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %touch25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool26.not.i = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp29.i = icmp ugt i32 %28, 1
  %or.cond110.i = select i1 %tobool26.not.i, i1 %cmp29.i, i1 false
  br i1 %or.cond110.i, label %if.then30.i, label %sw.bb20.i.cleanup_crit_edge

sw.bb20.i.cleanup_crit_edge:                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30.i:                                      ; preds = %sw.bb20.i
  %absinfo.i94.i = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 26
  %32 = ptrtoint ptr %absinfo.i94.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %absinfo.i94.i, align 8
  %tobool.not.i95.i = icmp eq ptr %33, null
  br i1 %tobool.not.i95.i, label %if.then30.i.input_abs_get_min.exit105.i_crit_edge, label %cond.true.i103.i

if.then30.i.input_abs_get_min.exit105.i_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_get_min.exit105.i

cond.true.i103.i:                                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  %maximum.i96.i = getelementptr %struct.input_absinfo, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %maximum.i96.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %maximum.i96.i, align 4
  %minimum.i102.i = getelementptr %struct.input_absinfo, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %minimum.i102.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %minimum.i102.i, align 4
  br label %input_abs_get_min.exit105.i

input_abs_get_min.exit105.i:                      ; preds = %cond.true.i103.i, %if.then30.i.input_abs_get_min.exit105.i_crit_edge
  %cond.i98109.i = phi i32 [ %35, %cond.true.i103.i ], [ 0, %if.then30.i.input_abs_get_min.exit105.i_crit_edge ]
  %cond.i104.i = phi i32 [ %37, %cond.true.i103.i ], [ 0, %if.then30.i.input_abs_get_min.exit105.i_crit_edge ]
  %sub33.i = sub i32 %cond.i98109.i, %cond.i104.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i98109.i, i32 %cond.i104.i)
  %cmp34.i = icmp eq i32 %cond.i98109.i, %cond.i104.i
  %spec.store.select56.i = select i1 %cmp34.i, i32 512, i32 %sub33.i
  %sub39.i = add i32 %28, 2
  %and40.i = and i32 %sub39.i, 3
  %arrayidx41.i = getelementptr %struct.mousedev, ptr %1, i32 0, i32 14, i32 %and40.i
  %38 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx41.i, align 4
  %sub42.neg.i = sub i32 %39, %value
  %mul44.neg.i = shl i32 %sub42.neg.i, 15
  %div46.i = sdiv i32 %mul44.neg.i, %spec.store.select56.i
  %frac_dy.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %frac_dy.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frac_dy.i, align 4
  %add47.i = add i32 %41, %div46.i
  %div48.i = sdiv i32 %add47.i, 128
  %dy.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %dy.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div48.i, ptr %dy.i, align 4
  %mul52.neg.i = mul i32 %div48.i, -128
  %sub53.i = add i32 %mul52.neg.i, %add47.i
  store i32 %sub53.i, ptr %frac_dy.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %43 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %code, label %if.else.cleanup_crit_edge [
    i32 0, label %sw.bb.i94
    i32 1, label %sw.bb15.i
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i94:                                        ; preds = %if.else
  %absinfo.i.i92 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 26
  %44 = ptrtoint ptr %absinfo.i.i92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %absinfo.i.i92, align 8
  %tobool.not.i.i93 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i93, label %sw.bb.i94.input_abs_get_max.exit.i_crit_edge, label %cond.true.i77.i

sw.bb.i94.input_abs_get_max.exit.i_crit_edge:     ; preds = %sw.bb.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_get_max.exit.i

cond.true.i77.i:                                  ; preds = %sw.bb.i94
  call void @__sanitizer_cov_trace_pc() #12
  %minimum.i.i95 = getelementptr %struct.input_absinfo, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %minimum.i.i95 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %minimum.i.i95, align 4
  %maximum.i.i96 = getelementptr %struct.input_absinfo, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %maximum.i.i96 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %maximum.i.i96, align 4
  br label %input_abs_get_max.exit.i

input_abs_get_max.exit.i:                         ; preds = %cond.true.i77.i, %sw.bb.i94.input_abs_get_max.exit.i_crit_edge
  %cond.i92.i = phi i32 [ %47, %cond.true.i77.i ], [ 0, %sw.bb.i94.input_abs_get_max.exit.i_crit_edge ]
  %cond.i78.i = phi i32 [ %49, %cond.true.i77.i ], [ 0, %sw.bb.i94.input_abs_get_max.exit.i_crit_edge ]
  %sub.i = sub i32 %cond.i78.i, %cond.i92.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i97 = icmp eq i32 %sub.i, 0
  br i1 %cmp.i97, label %if.then.i99, label %input_abs_get_max.exit.i.if.end.i_crit_edge

input_abs_get_max.exit.i.if.end.i_crit_edge:      ; preds = %input_abs_get_max.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i99:                                      ; preds = %input_abs_get_max.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = load i32, ptr @xres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i98 = icmp eq i32 %50, 0
  %..i = select i1 %tobool.not.i98, i32 1, i32 %50
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i99, %input_abs_get_max.exit.i.if.end.i_crit_edge
  %size.0.i = phi i32 [ %..i, %if.then.i99 ], [ %sub.i, %input_abs_get_max.exit.i.if.end.i_crit_edge ]
  %51 = tail call i32 @llvm.smax.i32(i32 %cond.i92.i, i32 %value) #10
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 %cond.i78.i) #10
  %sub13.i = sub i32 %52, %cond.i92.i
  %53 = load i32, ptr @xres, align 4
  %mul.i = mul i32 %53, %sub13.i
  %div.i100 = sdiv i32 %mul.i, %size.0.i
  %x.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 3
  %54 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div.i100, ptr %x.i, align 4
  br label %sw.epilog.sink.split.i

sw.bb15.i:                                        ; preds = %if.else
  %absinfo.i79.i = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 26
  %55 = ptrtoint ptr %absinfo.i79.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %absinfo.i79.i, align 8
  %tobool.not.i80.i = icmp eq ptr %56, null
  br i1 %tobool.not.i80.i, label %sw.bb15.i.input_abs_get_max.exit90.i_crit_edge, label %cond.true.i88.i

sw.bb15.i.input_abs_get_max.exit90.i_crit_edge:   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_abs_get_max.exit90.i

cond.true.i88.i:                                  ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #12
  %minimum.i81.i = getelementptr %struct.input_absinfo, ptr %56, i32 1, i32 1
  %57 = ptrtoint ptr %minimum.i81.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %minimum.i81.i, align 4
  %maximum.i87.i = getelementptr %struct.input_absinfo, ptr %56, i32 1, i32 2
  %59 = ptrtoint ptr %maximum.i87.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %maximum.i87.i, align 4
  br label %input_abs_get_max.exit90.i

input_abs_get_max.exit90.i:                       ; preds = %cond.true.i88.i, %sw.bb15.i.input_abs_get_max.exit90.i_crit_edge
  %cond.i8394.i = phi i32 [ %58, %cond.true.i88.i ], [ 0, %sw.bb15.i.input_abs_get_max.exit90.i_crit_edge ]
  %cond.i89.i = phi i32 [ %60, %cond.true.i88.i ], [ 0, %sw.bb15.i.input_abs_get_max.exit90.i_crit_edge ]
  %sub18.i = sub i32 %cond.i89.i, %cond.i8394.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i)
  %cmp19.i = icmp eq i32 %sub18.i, 0
  br i1 %cmp19.i, label %if.then20.i, label %input_abs_get_max.exit90.i.if.end26.i_crit_edge

input_abs_get_max.exit90.i.if.end26.i_crit_edge:  ; preds = %input_abs_get_max.exit90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then20.i:                                      ; preds = %input_abs_get_max.exit90.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = load i32, ptr @yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool21.not.i = icmp eq i32 %61, 0
  %.46.i = select i1 %tobool21.not.i, i32 1, i32 %61
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i, %input_abs_get_max.exit90.i.if.end26.i_crit_edge
  %size.1.i = phi i32 [ %.46.i, %if.then20.i ], [ %sub18.i, %input_abs_get_max.exit90.i.if.end26.i_crit_edge ]
  %62 = tail call i32 @llvm.smax.i32(i32 %cond.i8394.i, i32 %value) #10
  %63 = tail call i32 @llvm.smin.i32(i32 %62, i32 %cond.i89.i) #10
  %64 = load i32, ptr @yres, align 4
  %sub39.i101 = sub i32 %63, %cond.i8394.i
  %mul40.i = mul i32 %64, %sub39.i101
  %div41.i = sdiv i32 %mul40.i, %size.1.i
  %sub42.i = sub i32 %64, %div41.i
  %y.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 4
  %65 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub42.i, ptr %y.i, align 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.end26.i, %if.end.i
  %abs_event45.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 5
  %66 = ptrtoint ptr %abs_event45.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %abs_event45.i, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %67 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %code, label %sw.bb10.cleanup_crit_edge [
    i32 0, label %sw.bb.i104
    i32 1, label %sw.bb1.i
    i32 8, label %sw.bb3.i
  ]

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i104:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %packet.i102 = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11
  %68 = ptrtoint ptr %packet.i102 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %packet.i102, align 8
  %add.i103 = add i32 %69, %value
  store i32 %add.i103, ptr %packet.i102, align 8
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %dy.i105 = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 1
  %70 = ptrtoint ptr %dy.i105 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dy.i105, align 4
  %sub.i106 = sub i32 %71, %value
  store i32 %sub.i106, ptr %dy.i105, align 4
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %dz.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 2
  %72 = ptrtoint ptr %dz.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dz.i, align 8
  %sub5.i = sub i32 %73, %value
  store i32 %sub5.i, ptr %dz.i, align 8
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %value)
  %cmp.not = icmp eq i32 %value, 2
  br i1 %cmp.not, label %sw.bb11.cleanup_crit_edge, label %if.then12

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %sw.bb11
  %74 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %code, label %if.then12.cleanup_crit_edge [
    i32 330, label %land.lhs.true
    i32 276, label %if.then12.sw.bb4.i_crit_edge
    i32 256, label %if.then12.sw.epilog.i_crit_edge
    i32 272, label %if.then12.sw.epilog.i_crit_edge122
    i32 331, label %if.then12.sw.bb1.i116_crit_edge
    i32 257, label %if.then12.sw.bb1.i116_crit_edge123
    i32 273, label %if.then12.sw.bb1.i116_crit_edge124
    i32 258, label %if.then12.sw.bb2.i_crit_edge
    i32 277, label %if.then12.sw.bb2.i_crit_edge125
    i32 332, label %if.then12.sw.bb2.i_crit_edge126
    i32 274, label %if.then12.sw.bb2.i_crit_edge127
    i32 259, label %if.then12.sw.bb3.i117_crit_edge
    i32 278, label %if.then12.sw.bb3.i117_crit_edge128
    i32 275, label %if.then12.sw.bb3.i117_crit_edge129
    i32 260, label %if.then12.sw.bb4.i_crit_edge130
  ]

if.then12.sw.bb4.i_crit_edge130:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.then12.sw.bb3.i117_crit_edge129:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i117

if.then12.sw.bb3.i117_crit_edge128:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i117

if.then12.sw.bb3.i117_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i117

if.then12.sw.bb2.i_crit_edge127:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

if.then12.sw.bb2.i_crit_edge126:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

if.then12.sw.bb2.i_crit_edge125:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

if.then12.sw.bb2.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2.i

if.then12.sw.bb1.i116_crit_edge124:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i116

if.then12.sw.bb1.i116_crit_edge123:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i116

if.then12.sw.bb1.i116_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i116

if.then12.sw.epilog.i_crit_edge122:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then12.sw.epilog.i_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then12.sw.bb4.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then12
  %dev14 = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %75 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev14, align 4
  %arrayidx.i88 = getelementptr %struct.input_dev, ptr %76, i32 0, i32 6, i32 10
  %77 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %arrayidx.i88, align 4
  %79 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool18.not = icmp eq i32 %79, 0
  br i1 %tobool18.not, label %land.lhs.true.sw.epilog.i_crit_edge, label %if.then19

land.lhs.true.sw.epilog.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i107 = icmp eq i32 %value, 0
  %touch.i108 = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 17
  %80 = ptrtoint ptr %touch.i108 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %touch.i108, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool1.not.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i107, label %if.then.i109, label %if.else.i

if.then.i109:                                     ; preds = %if.then19
  br i1 %tobool1.not.i, label %if.then.i109.if.end.i115_crit_edge, label %land.lhs.true.i

if.then.i109.if.end.i115_crit_edge:               ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115

land.lhs.true.i:                                  ; preds = %if.then.i109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %83 = load i32, ptr @tap_time, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %83) #10
  %84 = add i32 %81, %call2.i.i
  %sub.i110 = sub i32 %82, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i110)
  %cmp.i111 = icmp slt i32 %sub.i110, 0
  br i1 %cmp.i111, label %if.then3.i, label %land.lhs.true.i.if.end.i115_crit_edge

land.lhs.true.i.if.end.i115_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %buttons.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %buttons.i) #10
  %85 = load ptr, ptr @mousedev_mix, align 4
  %buttons5.i = getelementptr inbounds %struct.mousedev, ptr %85, i32 0, i32 11, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %buttons5.i) #10
  %86 = load ptr, ptr @mousedev_mix, align 4
  %packet6.i = getelementptr inbounds %struct.mousedev, ptr %86, i32 0, i32 11
  tail call fastcc void @mousedev_notify_readers(ptr noundef %1, ptr noundef %packet6.i) #10
  %87 = load ptr, ptr @mousedev_mix, align 4
  %packet7.i = getelementptr inbounds %struct.mousedev, ptr %87, i32 0, i32 11
  tail call fastcc void @mousedev_notify_readers(ptr noundef %87, ptr noundef %packet7.i) #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %buttons.i) #10
  %88 = load ptr, ptr @mousedev_mix, align 4
  %buttons11.i = getelementptr inbounds %struct.mousedev, ptr %88, i32 0, i32 11, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %buttons11.i) #10
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then3.i, %land.lhs.true.i.if.end.i115_crit_edge, %if.then.i109.if.end.i115_crit_edge
  %pkt_count.i112 = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 12
  %89 = ptrtoint ptr %pkt_count.i112 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %pkt_count.i112, align 4
  %90 = ptrtoint ptr %touch.i108 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %touch.i108, align 8
  %frac_dx.i113 = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 15
  %91 = ptrtoint ptr %frac_dx.i113 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %frac_dx.i113, align 8
  %frac_dy.i114 = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 16
  %92 = ptrtoint ptr %frac_dy.i114 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %frac_dy.i114, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.then19
  br i1 %tobool1.not.i, label %if.then15.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %94 = ptrtoint ptr %touch.i108 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %touch.i108, align 8
  br label %cleanup

sw.bb1.i116:                                      ; preds = %if.then12.sw.bb1.i116_crit_edge, %if.then12.sw.bb1.i116_crit_edge123, %if.then12.sw.bb1.i116_crit_edge124
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then12.sw.bb2.i_crit_edge, %if.then12.sw.bb2.i_crit_edge125, %if.then12.sw.bb2.i_crit_edge126, %if.then12.sw.bb2.i_crit_edge127
  br label %sw.epilog.i

sw.bb3.i117:                                      ; preds = %if.then12.sw.bb3.i117_crit_edge, %if.then12.sw.bb3.i117_crit_edge128, %if.then12.sw.bb3.i117_crit_edge129
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then12.sw.bb4.i_crit_edge, %if.then12.sw.bb4.i_crit_edge130
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i117, %sw.bb2.i, %sw.bb1.i116, %land.lhs.true.sw.epilog.i_crit_edge, %if.then12.sw.epilog.i_crit_edge, %if.then12.sw.epilog.i_crit_edge122
  %index.0.i = phi i32 [ 4, %sw.bb4.i ], [ 3, %sw.bb3.i117 ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i116 ], [ 0, %land.lhs.true.sw.epilog.i_crit_edge ], [ 0, %if.then12.sw.epilog.i_crit_edge ], [ 0, %if.then12.sw.epilog.i_crit_edge122 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i118 = icmp eq i32 %value, 0
  %buttons8.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 6
  br i1 %tobool.not.i118, label %if.else.i120, label %if.then.i119

if.then.i119:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %index.0.i, ptr noundef %buttons8.i) #10
  %95 = load ptr, ptr @mousedev_mix, align 4
  %buttons6.i = getelementptr inbounds %struct.mousedev, ptr %95, i32 0, i32 11, i32 6
  tail call void @_set_bit(i32 noundef %index.0.i, ptr noundef %buttons6.i) #10
  br label %cleanup

if.else.i120:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef %index.0.i, ptr noundef %buttons8.i) #10
  %96 = load ptr, ptr @mousedev_mix, align 4
  %buttons10.i = getelementptr inbounds %struct.mousedev, ptr %96, i32 0, i32 11, i32 6
  tail call void @_clear_bit(i32 noundef %index.0.i, ptr noundef %buttons10.i) #10
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %code)
  %cmp24 = icmp eq i32 %code, 0
  br i1 %cmp24, label %if.then25, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %sw.bb23
  %touch = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 17
  %97 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %touch, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool26.not = icmp eq i32 %98, 0
  br i1 %tobool26.not, label %if.then25.if.end43_crit_edge, label %if.then27

if.then25.if.end43_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %pkt_count = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 12
  %99 = ptrtoint ptr %pkt_count to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pkt_count, align 4
  %inc = add i32 %100, 1
  store i32 %inc, ptr %pkt_count, align 4
  %and = and i32 %100, 3
  %arrayidx = getelementptr %struct.mousedev, ptr %1, i32 0, i32 13, i32 %and
  %101 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx, align 4
  %and32 = and i32 %inc, 3
  %arrayidx33 = getelementptr %struct.mousedev, ptr %1, i32 0, i32 13, i32 %and32
  %103 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx33, align 4
  %arrayidx37 = getelementptr %struct.mousedev, ptr %1, i32 0, i32 14, i32 %and
  %104 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx37, align 4
  %arrayidx42 = getelementptr %struct.mousedev, ptr %1, i32 0, i32 14, i32 %and32
  %106 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then27, %if.then25.if.end43_crit_edge
  %packet = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11
  tail call fastcc void @mousedev_notify_readers(ptr noundef %1, ptr noundef %packet)
  %107 = load ptr, ptr @mousedev_mix, align 4
  tail call fastcc void @mousedev_notify_readers(ptr noundef %107, ptr noundef %packet)
  %dz = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 2
  %108 = ptrtoint ptr %dz to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %dz, align 8
  %dy = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 1
  %109 = ptrtoint ptr %dy to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %dy, align 4
  %110 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %packet, align 8
  %abs_event = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 11, i32 5
  %111 = ptrtoint ptr %abs_event to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %abs_event, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %sw.bb23.cleanup_crit_edge, %if.else.i120, %if.then.i119, %if.then15.i, %if.else.i.cleanup_crit_edge, %if.end.i115, %if.then12.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb3.i, %sw.bb1.i, %sw.bb.i104, %sw.bb10.cleanup_crit_edge, %sw.epilog.sink.split.i, %if.else.cleanup_crit_edge, %input_abs_get_min.exit105.i, %sw.bb20.i.cleanup_crit_edge, %input_abs_get_min.exit.i, %sw.bb.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mousedev_connect(ptr noundef %handler, ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @mousedev_create(ptr noundef %dev, ptr noundef %handler, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @mousedev_mix, align 4
  %mutex.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %2 = load ptr, ptr @mousedev_mix, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not.i = icmp eq i32 %4, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then3.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  %mutex.i.i = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 5
  %call.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then3.i.mixdev_add_device.exit_crit_edge

if.then3.i.mixdev_add_device.exit_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mixdev_add_device.exit

if.end.i.i:                                       ; preds = %if.then3.i
  %exist.i.i = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %exist.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %exist.i.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.mousedev_open_device.exit.i_crit_edge, label %if.else.i.i

if.end.i.i.mousedev_open_device.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_open_device.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 8
  %inc.i.i = add i32 %8, 1
  store i32 %inc.i.i, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.else.i.i.if.end7.i_crit_edge

if.else.i.i.if.end7.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  %handle.i.i = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 1
  %call6.i.i = tail call i32 @input_open_device(ptr noundef %handle.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then5.i.i.if.end7.i_crit_edge, label %if.then8.i.i

if.then5.i.i.if.end7.i_crit_edge:                 ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then8.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 8
  %dec.i.i = add i32 %10, -1
  store i32 %dec.i.i, ptr %call, align 8
  br label %mousedev_open_device.exit.i

mousedev_open_device.exit.i:                      ; preds = %if.then8.i.i, %if.end.i.i.mousedev_open_device.exit.i_crit_edge
  %retval1.0.i.i = phi i32 [ %call6.i.i, %if.then8.i.i ], [ -19, %if.end.i.i.mousedev_open_device.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  br label %mixdev_add_device.exit

if.end7.i:                                        ; preds = %if.then5.i.i.if.end7.i_crit_edge, %if.else.i.i.if.end7.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  %opened_by_mixdev.i = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 10
  %11 = ptrtoint ptr %opened_by_mixdev.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %opened_by_mixdev.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end7.i, %if.end.i.if.end8.i_crit_edge
  %dev.i = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 6
  %call9.i = tail call ptr @get_device(ptr noundef %dev.i) #10
  %mixdev_node.i = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 9
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mousedev_mix_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mixdev_node.i, ptr noundef %12, ptr noundef nonnull @mousedev_mix_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.i.mixdev_add_device.exit_crit_edge

if.end8.i.mixdev_add_device.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mixdev_add_device.exit

if.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %mixdev_node.i, ptr getelementptr inbounds (%struct.list_head, ptr @mousedev_mix_list, i32 0, i32 1), align 4
  %13 = ptrtoint ptr %mixdev_node.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mousedev_mix_list, ptr %mixdev_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %mixdev_node.i, ptr %12, align 4
  br label %mixdev_add_device.exit

mixdev_add_device.exit:                           ; preds = %if.end.i.i.i, %if.end8.i.mixdev_add_device.exit_crit_edge, %mousedev_open_device.exit.i, %if.then3.i.mixdev_add_device.exit_crit_edge
  %retval1.1.i = phi i32 [ %retval1.0.i.i, %mousedev_open_device.exit.i ], [ 0, %if.end8.i.mixdev_add_device.exit_crit_edge ], [ 0, %if.end.i.i.i ], [ %call.i.i, %if.then3.i.mixdev_add_device.exit_crit_edge ]
  %16 = load ptr, ptr @mousedev_mix, align 4
  %mutex10.i = getelementptr inbounds %struct.mousedev, ptr %16, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %mutex10.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1.i)
  %tobool.not = icmp eq i32 %retval1.1.i, 0
  br i1 %tobool.not, label %mixdev_add_device.exit.cleanup_crit_edge, label %mixdev_add_device.exit.if.then4_crit_edge

mixdev_add_device.exit.if.then4_crit_edge:        ; preds = %mixdev_add_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

mixdev_add_device.exit.cleanup_crit_edge:         ; preds = %mixdev_add_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %mixdev_add_device.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i15 = phi i32 [ %retval1.1.i, %mixdev_add_device.exit.if.then4_crit_edge ], [ %call.i, %if.end.if.then4_crit_edge ]
  %cdev.i = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 7
  %dev.i11 = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 6
  tail call void @cdev_device_del(ptr noundef %cdev.i, ptr noundef %dev.i11) #10
  tail call fastcc void @mousedev_cleanup(ptr noundef %call) #10
  %devt.i = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 6, i32 29
  %17 = ptrtoint ptr %devt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devt.i, align 8
  %and.i = and i32 %18, 1048575
  tail call void @input_free_minor(i32 noundef %and.i) #10
  %19 = load ptr, ptr @mousedev_mix, align 4
  %cmp.not.i = icmp eq ptr %19, %call
  br i1 %cmp.not.i, label %if.then4.mousedev_destroy.exit_crit_edge, label %if.then.i

if.then4.mousedev_destroy.exit_crit_edge:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_destroy.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %handle.i = getelementptr inbounds %struct.mousedev, ptr %call, i32 0, i32 1
  tail call void @input_unregister_handle(ptr noundef %handle.i) #10
  br label %mousedev_destroy.exit

mousedev_destroy.exit:                            ; preds = %if.then.i, %if.then4.mousedev_destroy.exit_crit_edge
  tail call void @put_device(ptr noundef %dev.i11) #10
  br label %cleanup

cleanup:                                          ; preds = %mousedev_destroy.exit, %mixdev_add_device.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %retval.0.i15, %mousedev_destroy.exit ], [ 0, %mixdev_add_device.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mousedev_disconnect(ptr nocapture noundef readonly %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %2 = load ptr, ptr @mousedev_mix, align 4
  %mutex.i = getelementptr inbounds %struct.mousedev, ptr %2, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %opened_by_mixdev.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %opened_by_mixdev.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %opened_by_mixdev.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %5 = ptrtoint ptr %opened_by_mixdev.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %opened_by_mixdev.i, align 4
  %mutex.i.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %exist.i.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %exist.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %exist.i.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.then.i.mousedev_close_device.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.mousedev_close_device.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_close_device.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %dec.i.i = add i32 %9, -1
  store i32 %dec.i.i, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool1.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.mousedev_close_device.exit.i_crit_edge

land.lhs.true.i.i.mousedev_close_device.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_close_device.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %handle.i.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 1
  tail call void @input_close_device(ptr noundef %handle.i.i) #10
  br label %mousedev_close_device.exit.i

mousedev_close_device.exit.i:                     ; preds = %if.then.i.i, %land.lhs.true.i.i.mousedev_close_device.exit.i_crit_edge, %if.then.i.mousedev_close_device.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %mousedev_close_device.exit.i, %entry.if.end.i_crit_edge
  %mixdev_node.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mixdev_node.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.mixdev_remove_device.exit_crit_edge

if.end.i.mixdev_remove_device.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mixdev_remove_device.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %mixdev_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mixdev_node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %mixdev_remove_device.exit

mixdev_remove_device.exit:                        ; preds = %if.end.i.i.i, %if.end.i.mixdev_remove_device.exit_crit_edge
  %16 = ptrtoint ptr %mixdev_node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %mixdev_node.i, ptr %mixdev_node.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mixdev_node.i, ptr %prev.i3.i.i, align 4
  %18 = load ptr, ptr @mousedev_mix, align 4
  %mutex2.i = getelementptr inbounds %struct.mousedev, ptr %18, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %mutex2.i) #10
  %dev.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 6
  tail call void @put_device(ptr noundef %dev.i) #10
  %cdev.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 7
  tail call void @cdev_device_del(ptr noundef %cdev.i, ptr noundef %dev.i) #10
  tail call fastcc void @mousedev_cleanup(ptr noundef %1) #10
  %devt.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 6, i32 29
  %19 = ptrtoint ptr %devt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %devt.i, align 8
  %and.i = and i32 %20, 1048575
  tail call void @input_free_minor(i32 noundef %and.i) #10
  %21 = load ptr, ptr @mousedev_mix, align 4
  %cmp.not.i = icmp eq ptr %21, %1
  br i1 %cmp.not.i, label %mixdev_remove_device.exit.mousedev_destroy.exit_crit_edge, label %if.then.i3

mixdev_remove_device.exit.mousedev_destroy.exit_crit_edge: ; preds = %mixdev_remove_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_destroy.exit

if.then.i3:                                       ; preds = %mixdev_remove_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  %handle.i = getelementptr inbounds %struct.mousedev, ptr %1, i32 0, i32 1
  tail call void @input_unregister_handle(ptr noundef %handle.i) #10
  br label %mousedev_destroy.exit

mousedev_destroy.exit:                            ; preds = %if.then.i3, %mixdev_remove_device.exit.mousedev_destroy.exit_crit_edge
  tail call void @put_device(ptr noundef %dev.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mousedev_notify_readers(ptr noundef %mousedev, ptr nocapture noundef readonly %packet) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !129
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b170 = load i1, ptr @mousedev_notify_readers.__warned, align 1
  br i1 %.b170, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mousedev_notify_readers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 270, ptr noundef nonnull @.str.7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %client_list = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 3
  %4 = ptrtoint ptr %client_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn182 = load volatile ptr, ptr %client_list, align 4
  %cmp.not184 = icmp eq ptr %.pn182, %client_list
  br i1 %cmp.not184, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %buttons13 = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 11, i32 6
  %abs_event = getelementptr inbounds %struct.mousedev_hw_data, ptr %packet, i32 0, i32 5
  %x = getelementptr inbounds %struct.mousedev_hw_data, ptr %packet, i32 0, i32 3
  %y = getelementptr inbounds %struct.mousedev_hw_data, ptr %packet, i32 0, i32 4
  %dy51 = getelementptr inbounds %struct.mousedev_hw_data, ptr %packet, i32 0, i32 1
  %dz = getelementptr inbounds %struct.mousedev_hw_data, ptr %packet, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn186 = phi ptr [ %.pn182, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %wake_readers.0185 = phi i32 [ 0, %for.body.lr.ph ], [ %wake_readers.1, %for.inc.for.body_crit_edge ]
  %client.0187 = getelementptr i8, ptr %.pn186, i32 -8
  %packet_lock = getelementptr i8, ptr %.pn186, i32 272
  tail call void @_raw_spin_lock(ptr noundef %packet_lock) #10
  %packets = getelementptr i8, ptr %.pn186, i32 8
  %head = getelementptr i8, ptr %.pn186, i32 264
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %head, align 4
  %arrayidx = getelementptr [16 x %struct.mousedev_motion], ptr %packets, i32 0, i32 %6
  %ready = getelementptr i8, ptr %.pn186, i32 330
  %7 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  br i1 %tobool10.not, label %for.body.if.end25_crit_edge, label %land.lhs.true11

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true11:                                  ; preds = %for.body
  %buttons = getelementptr inbounds %struct.mousedev_motion, ptr %arrayidx, i32 0, i32 3
  %9 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buttons, align 4
  %11 = ptrtoint ptr %buttons13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buttons13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp14.not = icmp eq i32 %10, %12
  br i1 %cmp14.not, label %land.lhs.true11.if.end25_crit_edge, label %if.then16

land.lhs.true11.if.end25_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then16:                                        ; preds = %land.lhs.true11
  %add = add i32 %6, 1
  %rem = and i32 %add, 15
  %tail = getelementptr i8, ptr %.pn186, i32 268
  %13 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %14)
  %cmp18.not = icmp eq i32 %rem, %14
  br i1 %cmp18.not, label %if.then16.if.end25_crit_edge, label %if.then20

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %rem, ptr %head, align 4
  %arrayidx23 = getelementptr [16 x %struct.mousedev_motion], ptr %packets, i32 0, i32 %rem
  %16 = call ptr @memset(ptr %arrayidx23, i32 0, i32 16)
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then16.if.end25_crit_edge, %land.lhs.true11.if.end25_crit_edge, %for.body.if.end25_crit_edge
  %p.0 = phi ptr [ %arrayidx23, %if.then20 ], [ %arrayidx, %if.then16.if.end25_crit_edge ], [ %arrayidx, %land.lhs.true11.if.end25_crit_edge ], [ %arrayidx, %for.body.if.end25_crit_edge ]
  %17 = ptrtoint ptr %abs_event to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %abs_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool26.not = icmp eq i32 %18, 0
  br i1 %tobool26.not, label %if.end25.if.end35_crit_edge, label %if.then27

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %x, align 4
  %pos_x = getelementptr i8, ptr %.pn186, i32 316
  %21 = ptrtoint ptr %pos_x to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pos_x, align 4
  %sub = sub i32 %20, %22
  %23 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %p.0, align 4
  %add28 = add i32 %sub, %24
  store i32 %add28, ptr %p.0, align 4
  %25 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %y, align 4
  %pos_y = getelementptr i8, ptr %.pn186, i32 320
  %27 = ptrtoint ptr %pos_y to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pos_y, align 4
  %sub29 = sub i32 %26, %28
  %dy = getelementptr inbounds %struct.mousedev_motion, ptr %p.0, i32 0, i32 1
  %29 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dy, align 4
  %add30 = add i32 %sub29, %30
  store i32 %add30, ptr %dy, align 4
  %31 = load i32, ptr %x, align 4
  store i32 %31, ptr %pos_x, align 4
  %32 = load i32, ptr %y, align 4
  store i32 %32, ptr %pos_y, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %if.end25.if.end35_crit_edge
  %33 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %packet, align 4
  %pos_x37 = getelementptr i8, ptr %.pn186, i32 316
  %35 = ptrtoint ptr %pos_x37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pos_x37, align 4
  %add38 = add i32 %36, %34
  store i32 %add38, ptr %pos_x37, align 4
  %37 = tail call i32 @llvm.smax.i32(i32 %add38, i32 0)
  %38 = load i32, ptr @xres, align 4
  %39 = tail call i32 @llvm.smin.i32(i32 %37, i32 %38)
  %40 = ptrtoint ptr %pos_x37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %pos_x37, align 4
  %41 = ptrtoint ptr %dy51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dy51, align 4
  %pos_y52 = getelementptr i8, ptr %.pn186, i32 320
  %43 = ptrtoint ptr %pos_y52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pos_y52, align 4
  %add53 = add i32 %44, %42
  store i32 %add53, ptr %pos_y52, align 4
  %45 = tail call i32 @llvm.smax.i32(i32 %add53, i32 0)
  %46 = load i32, ptr @yres, align 4
  %47 = tail call i32 @llvm.smin.i32(i32 %45, i32 %46)
  %48 = ptrtoint ptr %pos_y52 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %pos_y52, align 4
  %49 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %packet, align 4
  %51 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %p.0, align 4
  %add72 = add i32 %52, %50
  store i32 %add72, ptr %p.0, align 4
  %53 = ptrtoint ptr %dy51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dy51, align 4
  %dy74 = getelementptr inbounds %struct.mousedev_motion, ptr %p.0, i32 0, i32 1
  %55 = ptrtoint ptr %dy74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dy74, align 4
  %add75 = add i32 %56, %54
  store i32 %add75, ptr %dy74, align 4
  %57 = ptrtoint ptr %dz to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dz, align 4
  %dz76 = getelementptr inbounds %struct.mousedev_motion, ptr %p.0, i32 0, i32 2
  %59 = ptrtoint ptr %dz76 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dz76, align 4
  %add77 = add i32 %60, %58
  store i32 %add77, ptr %dz76, align 4
  %61 = ptrtoint ptr %buttons13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buttons13, align 8
  %buttons80 = getelementptr inbounds %struct.mousedev_motion, ptr %p.0, i32 0, i32 3
  %63 = ptrtoint ptr %buttons80 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %buttons80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add72)
  %tobool82.not = icmp eq i32 %add72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add75)
  %tobool84.not = icmp eq i32 %add75, 0
  %or.cond = select i1 %tobool82.not, i1 %tobool84.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add77)
  %tobool87.not = icmp eq i32 %add77, 0
  %or.cond180 = select i1 %or.cond, i1 %tobool87.not, i1 false
  br i1 %or.cond180, label %lor.lhs.false88, label %if.end35.if.then92_crit_edge

if.end35.if.then92_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then92

lor.lhs.false88:                                  ; preds = %if.end35
  %last_buttons = getelementptr i8, ptr %.pn186, i32 340
  %64 = ptrtoint ptr %last_buttons to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %last_buttons, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %65)
  %cmp90.not = icmp eq i32 %62, %65
  br i1 %cmp90.not, label %lor.lhs.false88.if.end94_crit_edge, label %lor.lhs.false88.if.then92_crit_edge

lor.lhs.false88.if.then92_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then92

lor.lhs.false88.if.end94_crit_edge:               ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then92:                                        ; preds = %lor.lhs.false88.if.then92_crit_edge, %if.end35.if.then92_crit_edge
  %66 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %ready, align 2
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %lor.lhs.false88.if.end94_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %packet_lock) #10
  %67 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool97.not = icmp eq i8 %68, 0
  br i1 %tobool97.not, label %if.end94.for.inc_crit_edge, label %if.then98

if.end94.for.inc_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kill_fasync(ptr noundef %client.0187, i32 noundef 29, i32 noundef 1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then98, %if.end94.for.inc_crit_edge
  %wake_readers.1 = phi i32 [ 1, %if.then98 ], [ %wake_readers.0185, %if.end94.for.inc_crit_edge ]
  %69 = ptrtoint ptr %.pn186 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn = load volatile ptr, ptr %.pn186, align 4
  %cmp.not = icmp eq ptr %.pn, %client_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %wake_readers.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %wake_readers.1, %for.inc.for.end_crit_edge ]
  %call.i171 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i171, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i174

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i174:                               ; preds = %for.end
  %call1.i172 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i172)
  %tobool.not.i173 = icmp eq i32 %call1.i172, 0
  br i1 %tobool.not.i173, label %land.lhs.true.i174.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i176

land.lhs.true.i174.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i176:                              ; preds = %land.lhs.true.i174
  %.b4.i175 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i175, label %land.lhs.true2.i176.rcu_read_unlock.exit_crit_edge, label %if.then.i177

land.lhs.true2.i176.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i177:                                     ; preds = %land.lhs.true2.i176
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i177, %land.lhs.true2.i176.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i174.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !130
  %70 = tail call i32 @llvm.read_register.i32(metadata !111) #10
  %and.i.i.i.i.i178 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i178 to ptr
  %preempt_count.i.i.i.i179 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i179, align 4
  %sub.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i179, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wake_readers.0.lcssa)
  %tobool109.not = icmp eq i32 %wake_readers.0.lcssa, 0
  br i1 %tobool109.not, label %rcu_read_unlock.exit.if.end111_crit_edge, label %if.then110

rcu_read_unlock.exit.if.end111_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then110:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wait = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %rcu_read_unlock.exit.if.end111_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mousedev_create(ptr noundef %dev, ptr noundef %handler, i1 noundef zeroext %mixdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %mixdev, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @input_get_new_minor(i32 noundef 63, i32 noundef 1, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call.i) #14
  br label %err_out

if.else.i:                                        ; preds = %entry
  %call3.i = tail call i32 @input_get_new_minor(i32 noundef 32, i32 noundef 31, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end8.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call3.i) #14
  br label %err_out

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %minor.0.i = phi i32 [ %call.i, %if.then.i.if.end_crit_edge ], [ %call3.i, %if.else.i.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1432) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.err_free_minor_crit_edge, label %if.end4

if.end.err_free_minor_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_minor

if.end4:                                          ; preds = %if.end
  %client_list = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %client_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %client_list, ptr %client_list, align 4
  %prev.i = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client_list, ptr %prev.i, align 8
  %mixdev_node = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %mixdev_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %mixdev_node, ptr %mixdev_node, align 4
  %prev.i120 = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %prev.i120 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mixdev_node, ptr %prev.i120, align 8
  %client_lock = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %client_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @mousedev_create.__key, i16 noundef signext 3) #10
  %mutex = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @mousedev_create.__key.12) #10
  %dep_map = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 5, i32 5
  %5 = ptrtoint ptr %dep_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dep_map, align 8
  %cond = zext i1 %mixdev to i32
  %wait_type_inner = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 4
  %7 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.13, ptr noundef %6, i32 noundef %cond, i8 noundef zeroext %8, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %wait = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.15, ptr noundef nonnull @mousedev_create.__key.14) #10
  br i1 %mixdev, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 6
  %call23 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev22, ptr noundef nonnull @.str.16) #10
  br label %if.end31

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %minor.0.i)
  %cmp24 = icmp ult i32 %minor.0.i, 63
  %sub = add nsw i32 %minor.0.i, -32
  %spec.select = select i1 %cmp24, i32 %sub, i32 %minor.0.i
  %dev27 = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 6
  %call28 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev27, ptr noundef nonnull @.str.17, i32 noundef %spec.select) #10
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then21
  %mousedev_open_device.sink = phi ptr [ @mixdev_open_devices, %if.then21 ], [ @mousedev_open_device, %if.else ]
  %mousedev_close_device.sink = phi ptr [ @mixdev_close_devices, %if.then21 ], [ @mousedev_close_device, %if.else ]
  %9 = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 18
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mousedev_open_device.sink, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mousedev_close_device.sink, ptr %11, align 8
  %exist = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %exist to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %exist, align 8
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end31.input_get_device.exit_crit_edge, label %cond.true.i

if.end31.input_get_device.exit_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_get_device.exit

cond.true.i:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %call.i121 = tail call ptr @get_device(ptr noundef %dev1.i) #10
  %add.ptr.i = getelementptr i8, ptr %call.i121, i32 -544
  br label %input_get_device.exit

input_get_device.exit:                            ; preds = %cond.true.i, %if.end31.input_get_device.exit_crit_edge
  %cond.i = phi ptr [ %add.ptr.i, %cond.true.i ], [ null, %if.end31.input_get_device.exit_crit_edge ]
  %handle = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 1
  %dev33 = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cond.i, ptr %dev33, align 8
  %dev34 = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 6
  %init_name.i = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i122 = icmp eq ptr %16, null
  br i1 %tobool.not.i122, label %if.end.i, label %input_get_device.exit.dev_name.exit_crit_edge

input_get_device.exit.dev_name.exit_crit_edge:    ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %input_get_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev34, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %input_get_device.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %input_get_device.exit.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i, ptr %name, align 4
  %handler38 = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %handler38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %handler, ptr %handler38, align 4
  %21 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %handle, align 4
  %class = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 6, i32 33
  %22 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @input_class, ptr %class, align 4
  br i1 %tobool.not.i, label %dev_name.exit.if.end45_crit_edge, label %if.then42

dev_name.exit.if.end45_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then42:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev43 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %parent = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev43, ptr %parent, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %dev_name.exit.if.end45_crit_edge
  %or = or i32 %minor.0.i, 13631488
  %devt = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 6, i32 29
  %24 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %devt, align 8
  %release = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 6, i32 35
  %25 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mousedev_free, ptr %release, align 4
  tail call void @device_initialize(ptr noundef %dev34) #10
  br i1 %mixdev, label %if.end45.if.end56_crit_edge, label %if.then50

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then50:                                        ; preds = %if.end45
  %call52 = tail call i32 @input_register_handle(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then50.if.end56_crit_edge, label %if.then50.err_free_mousedev_crit_edge

if.then50.err_free_mousedev_crit_edge:            ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_mousedev

if.then50.if.end56_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end56:                                         ; preds = %if.then50.if.end56_crit_edge, %if.end45.if.end56_crit_edge
  %cdev = getelementptr inbounds %struct.mousedev, ptr %call7.i.i, i32 0, i32 7
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @mousedev_fops) #10
  %call59 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end56.cleanup_crit_edge, label %err_cleanup_mousedev

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_cleanup_mousedev:                             ; preds = %if.end56
  tail call fastcc void @mousedev_cleanup(ptr noundef nonnull %call7.i.i)
  br i1 %mixdev, label %err_cleanup_mousedev.err_free_mousedev_crit_edge, label %if.then64

err_cleanup_mousedev.err_free_mousedev_crit_edge: ; preds = %err_cleanup_mousedev
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_mousedev

if.then64:                                        ; preds = %err_cleanup_mousedev
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_unregister_handle(ptr noundef %handle) #10
  br label %err_free_mousedev

err_free_mousedev:                                ; preds = %if.then64, %err_cleanup_mousedev.err_free_mousedev_crit_edge, %if.then50.err_free_mousedev_crit_edge
  %error.0 = phi i32 [ %call59, %err_cleanup_mousedev.err_free_mousedev_crit_edge ], [ %call59, %if.then64 ], [ %call52, %if.then50.err_free_mousedev_crit_edge ]
  tail call void @put_device(ptr noundef %dev34) #10
  br label %err_free_minor

err_free_minor:                                   ; preds = %err_free_mousedev, %if.end.err_free_minor_crit_edge
  %error.1 = phi i32 [ %error.0, %err_free_mousedev ], [ -12, %if.end.err_free_minor_crit_edge ]
  tail call void @input_free_minor(i32 noundef %minor.0.i) #10
  br label %err_out

err_out:                                          ; preds = %err_free_minor, %do.end8.i, %do.end.i
  %error.2 = phi i32 [ %error.1, %err_free_minor ], [ %call3.i, %do.end8.i ], [ %call.i, %do.end.i ]
  %26 = inttoptr i32 %error.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end56.cleanup_crit_edge
  %retval.0 = phi ptr [ %26, %err_out ], [ %call7.i.i, %if.end56.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mixdev_open_devices(ptr noundef %mixdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.mousedev, ptr %mixdev, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %mixdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mixdev, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %mixdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.cond.preheader:                               ; preds = %if.end
  %.pn29 = load ptr, ptr @mousedev_mix_list, align 4
  %cmp.not31 = icmp eq ptr %.pn29, @mousedev_mix_list
  br i1 %cmp.not31, label %for.cond.preheader.if.end15_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn32 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn29, %for.cond.preheader.for.body_crit_edge ]
  %mousedev.036 = getelementptr i8, ptr %.pn32, i32 -1332
  %opened_by_mixdev = getelementptr i8, ptr %.pn32, i32 8
  %2 = ptrtoint ptr %opened_by_mixdev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opened_by_mixdev, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.then4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %mutex.i = getelementptr i8, ptr %.pn32, i32 -1188
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %if.then4
  %exist.i = getelementptr i8, ptr %.pn32, i32 -4
  %4 = ptrtoint ptr %exist.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %exist.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i = icmp eq i8 %5, 0
  br i1 %tobool2.not.i, label %if.end.i.mousedev_open_device.exit_crit_edge, label %if.else.i

if.end.i.mousedev_open_device.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_open_device.exit

if.else.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %mousedev.036 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mousedev.036, align 8
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %mousedev.036, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i.if.end8_crit_edge

if.else.i.if.end8_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5.i:                                       ; preds = %if.else.i
  %handle.i = getelementptr i8, ptr %.pn32, i32 -1328
  %call6.i = tail call i32 @input_open_device(ptr noundef %handle.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.if.end8_crit_edge, label %if.then8.i

if.then5.i.if.end8_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %mousedev.036 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mousedev.036, align 8
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %mousedev.036, align 8
  br label %mousedev_open_device.exit

mousedev_open_device.exit:                        ; preds = %if.then8.i, %if.end.i.mousedev_open_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %for.inc

if.end8:                                          ; preds = %if.then5.i.if.end8_crit_edge, %if.else.i.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  %10 = ptrtoint ptr %opened_by_mixdev to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %opened_by_mixdev, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %mousedev_open_device.exit, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, @mousedev_mix_list
  br i1 %cmp.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %for.cond.preheader.if.end15_crit_edge, %if.end.if.end15_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mixdev_close_devices(ptr noundef %mixdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.mousedev, ptr %mixdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %0 = ptrtoint ptr %mixdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mixdev, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %mixdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.cond.preheader:                               ; preds = %entry
  %.pn16 = load ptr, ptr @mousedev_mix_list, align 4
  %cmp.not18 = icmp eq ptr %.pn16, @mousedev_mix_list
  br i1 %cmp.not18, label %for.cond.preheader.if.end8_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn19 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn16, %for.cond.preheader.for.body_crit_edge ]
  %mousedev.022 = getelementptr i8, ptr %.pn19, i32 -1332
  %opened_by_mixdev = getelementptr i8, ptr %.pn19, i32 8
  %2 = ptrtoint ptr %opened_by_mixdev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opened_by_mixdev, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then2:                                         ; preds = %for.body
  %4 = ptrtoint ptr %opened_by_mixdev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %opened_by_mixdev, align 4
  %mutex.i = getelementptr i8, ptr %.pn19, i32 -1188
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %exist.i = getelementptr i8, ptr %.pn19, i32 -4
  %5 = ptrtoint ptr %exist.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %exist.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then2.mousedev_close_device.exit_crit_edge, label %land.lhs.true.i

if.then2.mousedev_close_device.exit_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_close_device.exit

land.lhs.true.i:                                  ; preds = %if.then2
  %7 = ptrtoint ptr %mousedev.022 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mousedev.022, align 8
  %dec.i = add i32 %8, -1
  store i32 %dec.i, ptr %mousedev.022, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.mousedev_close_device.exit_crit_edge

land.lhs.true.i.mousedev_close_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_close_device.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %handle.i = getelementptr i8, ptr %.pn19, i32 -1328
  tail call void @input_close_device(ptr noundef %handle.i) #10
  br label %mousedev_close_device.exit

mousedev_close_device.exit:                       ; preds = %if.then.i, %land.lhs.true.i.mousedev_close_device.exit_crit_edge, %if.then2.mousedev_close_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %for.inc

for.inc:                                          ; preds = %mousedev_close_device.exit, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn19, align 4
  %cmp.not = icmp eq ptr %.pn, @mousedev_mix_list
  br i1 %cmp.not, label %for.inc.if.end8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %for.inc.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mousedev_open_device(ptr noundef %mousedev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %exist = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 8
  %0 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exist, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.else

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %if.end
  %2 = ptrtoint ptr %mousedev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mousedev, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %mousedev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then5:                                         ; preds = %if.else
  %handle = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 1
  %call6 = tail call i32 @input_open_device(ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end12_crit_edge, label %if.then8

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mousedev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mousedev, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %mousedev, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then5.if.end12_crit_edge, %if.else.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %retval1.0 = phi i32 [ 0, %if.else.if.end12_crit_edge ], [ %call6, %if.then8 ], [ 0, %if.then5.if.end12_crit_edge ], [ -19, %if.end.if.end12_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %if.end12 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mousedev_close_device(ptr noundef %mousedev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %exist = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 8
  %0 = ptrtoint ptr %exist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %exist, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %mousedev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mousedev, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %mousedev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %handle = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 1
  tail call void @input_close_device(ptr noundef %handle) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mousedev_free(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dev, i32 -224
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.input_put_device.exit_crit_edge, label %if.then.i

entry.input_put_device.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %input_put_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  tail call void @put_device(ptr noundef %dev1.i) #10
  br label %input_put_device.exit

input_put_device.exit:                            ; preds = %if.then.i, %entry.input_put_device.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -240
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mousedev_cleanup(ptr noundef %mousedev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %exist.i = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 8
  %0 = ptrtoint ptr %exist.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %exist.i, align 8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  %client_lock.i = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %client_lock.i) #10
  %client_list.i = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 3
  %1 = ptrtoint ptr %client_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn14.i = load ptr, ptr %client_list.i, align 4
  %cmp.not15.i = icmp eq ptr %.pn14.i, %client_list.i
  br i1 %cmp.not15.i, label %entry.mousedev_hangup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mousedev_hangup.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_hangup.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn14.i, %entry.for.body.i_crit_edge ]
  %client.0.i = getelementptr i8, ptr %.pn16.i, i32 -8
  tail call void @kill_fasync(ptr noundef %client.0.i, i32 noundef 29, i32 noundef 6) #10
  %2 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %client_list.i
  br i1 %cmp.not.i, label %for.body.i.mousedev_hangup.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.mousedev_hangup.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mousedev_hangup.exit

mousedev_hangup.exit:                             ; preds = %for.body.i.mousedev_hangup.exit_crit_edge, %entry.mousedev_hangup.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client_lock.i) #10
  %wait.i = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %3 = ptrtoint ptr %mousedev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mousedev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %mousedev_hangup.exit.if.end_crit_edge, label %if.then

mousedev_hangup.exit.if.end_crit_edge:            ; preds = %mousedev_hangup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %mousedev_hangup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %handle1 = getelementptr inbounds %struct.mousedev, ptr %mousedev, i32 0, i32 1
  tail call void @input_close_device(ptr noundef %handle1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %mousedev_hangup.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_minor(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_new_minor(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mousedev_psaux_register() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @psaux_mouse) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @psaux_registered, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/mousedev.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/mousedev.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/mousedev.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__param_xres, !8, !"__param_xres", i1 false, i1 false}
!8 = !{!"../drivers/input/mousedev.c", i32 40, i32 1}
!9 = !{ptr @__UNIQUE_ID_xrestype227, !8, !"__UNIQUE_ID_xrestype227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_xres228, !11, !"__UNIQUE_ID_xres228", i1 false, i1 false}
!11 = !{!"../drivers/input/mousedev.c", i32 41, i32 1}
!12 = !{ptr @__param_yres, !13, !"__param_yres", i1 false, i1 false}
!13 = !{!"../drivers/input/mousedev.c", i32 44, i32 1}
!14 = !{ptr @__UNIQUE_ID_yrestype229, !13, !"__UNIQUE_ID_yrestype229", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_yres230, !16, !"__UNIQUE_ID_yres230", i1 false, i1 false}
!16 = !{!"../drivers/input/mousedev.c", i32 45, i32 1}
!17 = !{ptr @__param_tap_time, !18, !"__param_tap_time", i1 false, i1 false}
!18 = !{!"../drivers/input/mousedev.c", i32 48, i32 1}
!19 = !{ptr @__UNIQUE_ID_tap_timetype231, !18, !"__UNIQUE_ID_tap_timetype231", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_tap_time232, !21, !"__UNIQUE_ID_tap_time232", i1 false, i1 false}
!21 = !{!"../drivers/input/mousedev.c", i32 49, i32 1}
!22 = !{ptr @__initcall__kmod_mousedev__267_1124_mousedev_init6, !23, !"__initcall__kmod_mousedev__267_1124_mousedev_init6", i1 false, i1 false}
!23 = !{!"../drivers/input/mousedev.c", i32 1124, i32 1}
!24 = !{ptr @__exitcall_mousedev_exit, !25, !"__exitcall_mousedev_exit", i1 false, i1 false}
!25 = !{!"../drivers/input/mousedev.c", i32 1125, i32 1}
!26 = !{ptr @mousedev_mix, !27, !"mousedev_mix", i1 false, i1 false}
!27 = !{!"../drivers/input/mousedev.c", i32 116, i32 25}
!28 = distinct !{null, !29, !"psaux_registered", i1 false, i1 false}
!29 = !{!"../drivers/input/mousedev.c", i32 1072, i32 13}
!30 = !{ptr @__param_str_xres, !8, !"__param_str_xres", i1 false, i1 false}
!31 = !{ptr @xres, !32, !"xres", i1 false, i1 false}
!32 = !{!"../drivers/input/mousedev.c", i32 39, i32 12}
!33 = !{ptr @__param_str_yres, !13, !"__param_str_yres", i1 false, i1 false}
!34 = !{ptr @yres, !35, !"yres", i1 false, i1 false}
!35 = !{!"../drivers/input/mousedev.c", i32 43, i32 12}
!36 = !{ptr @__param_str_tap_time, !18, !"__param_str_tap_time", i1 false, i1 false}
!37 = !{ptr @tap_time, !38, !"tap_time", i1 false, i1 false}
!38 = !{!"../drivers/input/mousedev.c", i32 47, i32 17}
!39 = !{ptr @.str, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/mousedev.c", i32 1068, i32 10}
!41 = !{ptr @psaux_mouse, !42, !"psaux_mouse", i1 false, i1 false}
!42 = !{!"../drivers/input/mousedev.c", i32 1066, i32 26}
!43 = !{ptr @mousedev_fops, !44, !"mousedev_fops", i1 false, i1 false}
!44 = !{!"../drivers/input/mousedev.c", i32 773, i32 37}
!45 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/mousedev.c", i32 728, i32 11}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!49 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.3, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!52 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!54 = !{ptr @mousedev_imex_seq, !55, !"mousedev_imex_seq", i1 false, i1 false}
!55 = !{!"../drivers/input/mousedev.c", i32 114, i32 22}
!56 = !{ptr @mousedev_imps_seq, !57, !"mousedev_imps_seq", i1 false, i1 false}
!57 = !{!"../drivers/input/mousedev.c", i32 113, i32 22}
!58 = !{ptr @mousedev_open.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/input/mousedev.c", i32 550, i32 2}
!60 = !{ptr @.str.5, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.6, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/mousedev.c", i32 1059, i32 11}
!63 = !{ptr @mousedev_handler, !64, !"mousedev_handler", i1 false, i1 false}
!64 = !{!"../drivers/input/mousedev.c", i32 1053, i32 29}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../drivers/input/mousedev.c", i32 270, i32 2}
!67 = !{ptr @.str.7, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!70 = !{ptr @.str.8, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.9, !69, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!74 = !{ptr @.str.10, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mousedev_create.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/input/mousedev.c", i32 864, i32 2}
!77 = !{ptr @.str.11, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mousedev_create.__key.12, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/input/mousedev.c", i32 865, i32 2}
!80 = !{ptr @.str.13, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mousedev_create.__key.14, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/input/mousedev.c", i32 868, i32 2}
!83 = !{ptr @.str.15, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/mousedev.c", i32 871, i32 32}
!86 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/mousedev.c", i32 880, i32 32}
!88 = !{ptr @.str.18, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/mousedev.c", i32 831, i32 4}
!90 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @mousedev_reserve_minor._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @mousedev_reserve_minor._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.21, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/mousedev.c", i32 836, i32 4}
!95 = !{ptr @mousedev_reserve_minor._entry.20, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @mousedev_reserve_minor._entry_ptr.22, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @mousedev_mix_list, !98, !"mousedev_mix_list", i1 false, i1 false}
!98 = !{!"../drivers/input/mousedev.c", i32 117, i32 8}
!99 = !{ptr @mousedev_ids, !100, !"mousedev_ids", i1 false, i1 false}
!100 = !{!"../drivers/input/mousedev.c", i32 1002, i32 37}
!101 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/mousedev.c", i32 1112, i32 2}
!103 = !{ptr @.str.25, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mousedev_init._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @mousedev_init._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.26, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/mousedev.c", i32 1080, i32 3}
!108 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mousedev_psaux_register._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @mousedev_psaux_register._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i8 0, i8 2}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{i64 2152594673, i64 2152594698}
!124 = !{i64 5089547}
!125 = !{i64 5089744}
!126 = !{i64 2152574977}
!127 = !{i64 2153735953, i64 2153736233, i64 2153736567, i64 2153736901}
!128 = !{i64 2149296469}
!129 = !{i64 2149271077}
!130 = !{i64 2149271343}
