; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2099.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2099.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cxd = type { %struct.dvb_ca_en50221, %struct.cxd2099_cfg, ptr, ptr, [35 x i8], i8, i8, i8, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, %struct.mutex, [1028 x i8], [1028 x i8] }
%struct.cxd2099_cfg = type { i32, i8, i8, i32, ptr }

@__param_str_buffermode = internal constant [19 x i8] c"cxd2099.buffermode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@buffermode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_buffermode = internal constant %struct.kernel_param { ptr @__param_str_buffermode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @buffermode } }, section "__param", align 4
@__UNIQUE_ID_buffermodetype290 = internal constant [32 x i8] c"cxd2099.parmtype=buffermode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buffermode291 = internal constant [73 x i8] c"cxd2099.parm=buffermode:Enable CXD2099AR buffer mode (default: disabled)\00", section ".modinfo", align 1
@__initcall__kmod_cxd2099__293_692_cxd2099_driver_init6 = internal global ptr @cxd2099_driver_init, section ".initcall6.init", align 4
@cxd2099_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cxd2099_probe, ptr @cxd2099_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cxd2099_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cxd2099_driver_exit = internal global ptr @cxd2099_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [70 x i8] c"cxd2099.description=Sony CXD2099AR Common Interface controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [29 x i8] c"cxd2099.author=Ralph Metzler\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [49 x i8] c"cxd2099.file=drivers/media/dvb-frontends/cxd2099\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [23 x i8] c"cxd2099.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cxd2099\00", [24 x i8] zeroinitializer }, align 32
@cxd2099_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cxd2099\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cxd2099_probe.rm_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cxd2099_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cxd2099:622:(&rm_cfg)->lock\00", [36 x i8] zeroinitializer }, align 32
@cxd2099_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No CXD2099AR detected at 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cxd2099_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/cxd2099.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxd2099_probe._entry_ptr = internal global ptr @cxd2099_probe._entry, section ".printk_index", align 4
@cxd2099_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ci->lock\00", [22 x i8] zeroinitializer }, align 32
@en_templ = internal constant { %struct.dvb_ca_en50221, [44 x i8] } { %struct.dvb_ca_en50221 { ptr null, ptr @read_attribute_mem, ptr @write_attribute_mem, ptr @read_cam_control, ptr @write_cam_control, ptr @read_data, ptr @write_data, ptr @slot_reset, ptr @slot_shutdown, ptr @slot_ts_enable, ptr @poll_slot_status, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@cxd2099_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 643, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Attached CXD2099AR at 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@cxd2099_probe._entry_ptr.10 = internal global ptr @cxd2099_probe._entry.8, section ".printk_index", align 4
@cxd2099_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 651, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Using CXD2099AR buffer mode\00", [36 x i8] zeroinitializer }, align 32
@cxd2099_probe._entry_ptr.13 = internal global ptr @cxd2099_probe._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@campoll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NO CAM\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"campoll\00", [24 x i8] zeroinitializer }, align 32
@campoll._entry_ptr = internal global ptr @campoll._entry, section ".printk_index", align 4
@cam_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enable cam buffer mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cam_mode\00", [23 x i8] zeroinitializer }, align 32
@cam_mode._entry_ptr = internal global ptr @cam_mode._entry, section ".printk_index", align 4
@slot_shutdown.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slot_shutdown\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"buffermode\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 20, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"cxd2099_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 683, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 685, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"cxd2099_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 677, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"rm_cfg\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 606, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 622, i32 15 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 630, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 635, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"en_templ\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 588, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 643, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 651, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 518, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 214, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [41 x i8] c"../drivers/media/dvb-frontends/cxd2099.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 459, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_buffermode291, ptr @__UNIQUE_ID_buffermodetype290, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_cxd2099_driver_exit, ptr @__initcall__kmod_cxd2099__293_692_cxd2099_driver_init6, ptr @__param_buffermode, ptr @cam_mode._entry, ptr @cam_mode._entry_ptr, ptr @campoll._entry, ptr @campoll._entry_ptr, ptr @cxd2099_driver_exit, ptr @cxd2099_probe._entry, ptr @cxd2099_probe._entry.11, ptr @cxd2099_probe._entry.8, ptr @cxd2099_probe._entry_ptr, ptr @cxd2099_probe._entry_ptr.10, ptr @cxd2099_probe._entry_ptr.13, ptr @buffermode, ptr @cxd2099_driver, ptr @.str, ptr @cxd2099_id, ptr @cxd2099_probe.rm_cfg, ptr @cxd2099_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cxd2099_probe.__key, ptr @.str.7, ptr @en_templ, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffermode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2099_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2099_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2099_probe.rm_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2099_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2099_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2099_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @en_templ to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2099_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2099_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @campoll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2099_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cxd2099_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxd2099_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @cxd2099_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2099_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 3316) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %client1 = getelementptr inbounds %struct.cxd, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %client1, align 4
  %cfg2 = getelementptr inbounds %struct.cxd, ptr %call7.i.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %cfg2, ptr %1, i32 16)
  %call3 = tail call ptr @__regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @cxd2099_probe.rm_cfg, ptr noundef nonnull @cxd2099_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.cxd, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call3 to i32
  br label %err_kfree

if.end9:                                          ; preds = %if.end
  %call11 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end, label %do.body15

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr, align 2
  %conv = zext i16 %9 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %conv) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  call void @regmap_exit(ptr noundef %11) #6
  br label %err_kfree

do.body15:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct.cxd, ptr %call7.i.i, i32 0, i32 16
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @cxd2099_probe.__key) #6
  %lastaddress = getelementptr inbounds %struct.cxd, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %lastaddress to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %lastaddress, align 1
  %clk_reg_b = getelementptr inbounds %struct.cxd, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %clk_reg_b to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 74, ptr %clk_reg_b, align 1
  %clk_reg_f = getelementptr inbounds %struct.cxd, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %clk_reg_f to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 27, ptr %clk_reg_f, align 8
  %15 = call ptr @memcpy(ptr %call7.i.i, ptr @en_templ, i32 52)
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %data, align 4
  call fastcc void @init(ptr noundef nonnull %call7.i.i)
  %addr24 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %17 = ptrtoint ptr %addr24 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr24, align 2
  %conv25 = zext i16 %18 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv25) #10
  %en27 = getelementptr inbounds %struct.cxd2099_cfg, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %en27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %en27, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %20, align 4
  %22 = load i32, ptr @buffermode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool28.not = icmp eq i32 %22, 0
  br i1 %tobool28.not, label %if.then29, label %do.end34

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %read_data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %read_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %read_data, align 4
  %write_data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %write_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %write_data, align 8
  br label %if.end36

do.end34:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %if.then29
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_kfree:                                        ; preds = %do.end, %if.then6
  %ret.0 = phi i32 [ %7, %if.then6 ], [ %call11, %do.end ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_kfree, %if.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ %ret.0, %err_kfree ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2099_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regmap_exit(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init(ptr noundef %ci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %mode = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mode, align 4
  %lastaddress.i.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 5
  %1 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.not.i.i = icmp eq i8 %2, 0
  br i1 %cmp.not.i.i, label %entry.if.then32.i.i_crit_edge, label %if.end.i.i

entry.if.then32.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i

if.end.i.i:                                       ; preds = %entry
  %regmap.i.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then32.i.i_crit_edge, label %if.end19.i.i

if.end.i.i.if.then32.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i

if.end19.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx23.i.i, align 1
  br label %write_reg.exit

if.then32.i.i:                                    ; preds = %if.end.i.i.if.then32.i.i_crit_edge, %entry.if.then32.i.i_crit_edge
  %7 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 0
  %8 = ptrtoint ptr %arrayidx23.i2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx23.i2.i, align 1
  %regmap33.i.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %9 = ptrtoint ptr %regmap33.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap33.i.i, align 4
  %call38.i.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 1, i32 noundef 0) #6
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %if.then32.i.i, %if.end19.i.i
  %status.2.i.i = phi i32 [ %call.i.i, %if.end19.i.i ], [ %call38.i.i, %if.then32.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i)
  %cmp = icmp slt i32 %status.2.i.i, 0
  br i1 %cmp, label %write_reg.exit.do.end_crit_edge, label %if.end

write_reg.exit.do.end_crit_edge:                  ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %write_reg.exit
  %11 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.not.i.i2 = icmp eq i8 %12, 1
  br i1 %cmp.not.i.i2, label %if.end.if.then32.i.i12_crit_edge, label %if.end.i.i6

if.end.if.then32.i.i12_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i12

if.end.i.i6:                                      ; preds = %if.end
  %regmap.i.i3 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %13 = ptrtoint ptr %regmap.i.i3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i3, align 4
  %call.i.i4 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %tobool.not.i.i5 = icmp eq i32 %call.i.i4, 0
  br i1 %tobool.not.i.i5, label %if.end.i.i6.if.then32.i.i12_crit_edge, label %if.end19.i.i8

if.end.i.i6.if.then32.i.i12_crit_edge:            ; preds = %if.end.i.i6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i12

if.end19.i.i8:                                    ; preds = %if.end.i.i6
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i7 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx23.i.i7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx23.i.i7, align 1
  br label %write_reg.exit15

if.then32.i.i12:                                  ; preds = %if.end.i.i6.if.then32.i.i12_crit_edge, %if.end.if.then32.i.i12_crit_edge
  %17 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i9 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx23.i2.i9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx23.i2.i9, align 1
  %regmap33.i.i10 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %19 = ptrtoint ptr %regmap33.i.i10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap33.i.i10, align 4
  %call38.i.i11 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 1, i32 noundef 0) #6
  br label %write_reg.exit15

write_reg.exit15:                                 ; preds = %if.then32.i.i12, %if.end19.i.i8
  %status.2.i.i14 = phi i32 [ %call.i.i4, %if.end19.i.i8 ], [ %call38.i.i11, %if.then32.i.i12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i14)
  %cmp2 = icmp slt i32 %status.2.i.i14, 0
  br i1 %cmp2, label %write_reg.exit15.do.end_crit_edge, label %if.end4

write_reg.exit15.do.end_crit_edge:                ; preds = %write_reg.exit15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end4:                                          ; preds = %write_reg.exit15
  %21 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp.not.i.i17 = icmp eq i8 %22, 2
  br i1 %cmp.not.i.i17, label %if.end4.if.then32.i.i27_crit_edge, label %if.end.i.i21

if.end4.if.then32.i.i27_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i27

if.end.i.i21:                                     ; preds = %if.end4
  %regmap.i.i18 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %23 = ptrtoint ptr %regmap.i.i18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i18, align 4
  %call.i.i19 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 0, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool.not.i.i20 = icmp eq i32 %call.i.i19, 0
  br i1 %tobool.not.i.i20, label %if.end.i.i21.if.then32.i.i27_crit_edge, label %if.end19.i.i23

if.end.i.i21.if.then32.i.i27_crit_edge:           ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i27

if.end19.i.i23:                                   ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i22 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx23.i.i22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %arrayidx23.i.i22, align 1
  br label %write_reg.exit30

if.then32.i.i27:                                  ; preds = %if.end.i.i21.if.then32.i.i27_crit_edge, %if.end4.if.then32.i.i27_crit_edge
  %27 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i24 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %arrayidx23.i2.i24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 16, ptr %arrayidx23.i2.i24, align 1
  %regmap33.i.i25 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %29 = ptrtoint ptr %regmap33.i.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap33.i.i25, align 4
  %call38.i.i26 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 1, i32 noundef 16) #6
  br label %write_reg.exit30

write_reg.exit30:                                 ; preds = %if.then32.i.i27, %if.end19.i.i23
  %status.2.i.i29 = phi i32 [ %call.i.i19, %if.end19.i.i23 ], [ %call38.i.i26, %if.then32.i.i27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i29)
  %cmp6 = icmp slt i32 %status.2.i.i29, 0
  br i1 %cmp6, label %write_reg.exit30.do.end_crit_edge, label %if.end8

write_reg.exit30.do.end_crit_edge:                ; preds = %write_reg.exit30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end8:                                          ; preds = %write_reg.exit30
  %31 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp.not.i.i32 = icmp eq i8 %32, 3
  br i1 %cmp.not.i.i32, label %if.end8.if.then32.i.i42_crit_edge, label %if.end.i.i36

if.end8.if.then32.i.i42_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i42

if.end.i.i36:                                     ; preds = %if.end8
  %regmap.i.i33 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %33 = ptrtoint ptr %regmap.i.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i.i33, align 4
  %call.i.i34 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 0, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool.not.i.i35 = icmp eq i32 %call.i.i34, 0
  br i1 %tobool.not.i.i35, label %if.end.i.i36.if.then32.i.i42_crit_edge, label %if.end19.i.i38

if.end.i.i36.if.then32.i.i42_crit_edge:           ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i42

if.end19.i.i38:                                   ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i37 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %arrayidx23.i.i37 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx23.i.i37, align 1
  br label %write_reg.exit45

if.then32.i.i42:                                  ; preds = %if.end.i.i36.if.then32.i.i42_crit_edge, %if.end8.if.then32.i.i42_crit_edge
  %37 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i39 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 3
  %38 = ptrtoint ptr %arrayidx23.i2.i39 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx23.i2.i39, align 1
  %regmap33.i.i40 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %39 = ptrtoint ptr %regmap33.i.i40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap33.i.i40, align 4
  %call38.i.i41 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 1, i32 noundef 0) #6
  br label %write_reg.exit45

write_reg.exit45:                                 ; preds = %if.then32.i.i42, %if.end19.i.i38
  %status.2.i.i44 = phi i32 [ %call.i.i34, %if.end19.i.i38 ], [ %call38.i.i41, %if.then32.i.i42 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i44)
  %cmp10 = icmp slt i32 %status.2.i.i44, 0
  br i1 %cmp10, label %write_reg.exit45.do.end_crit_edge, label %if.end12

write_reg.exit45.do.end_crit_edge:                ; preds = %write_reg.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end12:                                         ; preds = %write_reg.exit45
  %41 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %42)
  %cmp.not.i.i47 = icmp eq i8 %42, 5
  br i1 %cmp.not.i.i47, label %if.end12.if.then32.i.i57_crit_edge, label %if.end.i.i51

if.end12.if.then32.i.i57_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i57

if.end.i.i51:                                     ; preds = %if.end12
  %regmap.i.i48 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %43 = ptrtoint ptr %regmap.i.i48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i.i48, align 4
  %call.i.i49 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 0, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %call.i.i49, 0
  br i1 %tobool.not.i.i50, label %if.end.i.i51.if.then32.i.i57_crit_edge, label %if.end19.i.i53

if.end.i.i51.if.then32.i.i57_crit_edge:           ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i57

if.end19.i.i53:                                   ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 5, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i52 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 5
  %46 = ptrtoint ptr %arrayidx23.i.i52 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %arrayidx23.i.i52, align 1
  br label %write_reg.exit60

if.then32.i.i57:                                  ; preds = %if.end.i.i51.if.then32.i.i57_crit_edge, %if.end12.if.then32.i.i57_crit_edge
  %47 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i54 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 5
  %48 = ptrtoint ptr %arrayidx23.i2.i54 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %arrayidx23.i2.i54, align 1
  %regmap33.i.i55 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %49 = ptrtoint ptr %regmap33.i.i55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap33.i.i55, align 4
  %call38.i.i56 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 1, i32 noundef 255) #6
  br label %write_reg.exit60

write_reg.exit60:                                 ; preds = %if.then32.i.i57, %if.end19.i.i53
  %status.2.i.i59 = phi i32 [ %call.i.i49, %if.end19.i.i53 ], [ %call38.i.i56, %if.then32.i.i57 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i59)
  %cmp14 = icmp slt i32 %status.2.i.i59, 0
  br i1 %cmp14, label %write_reg.exit60.do.end_crit_edge, label %if.end16

write_reg.exit60.do.end_crit_edge:                ; preds = %write_reg.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end16:                                         ; preds = %write_reg.exit60
  %51 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %52)
  %cmp.not.i.i62 = icmp eq i8 %52, 6
  br i1 %cmp.not.i.i62, label %if.end16.if.then32.i.i72_crit_edge, label %if.end.i.i66

if.end16.if.then32.i.i72_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i72

if.end.i.i66:                                     ; preds = %if.end16
  %regmap.i.i63 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %53 = ptrtoint ptr %regmap.i.i63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i.i63, align 4
  %call.i.i64 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 0, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %call.i.i64, 0
  br i1 %tobool.not.i.i65, label %if.end.i.i66.if.then32.i.i72_crit_edge, label %if.end19.i.i68

if.end.i.i66.if.then32.i.i72_crit_edge:           ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i72

if.end19.i.i68:                                   ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 6, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i67 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 6
  %56 = ptrtoint ptr %arrayidx23.i.i67 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 31, ptr %arrayidx23.i.i67, align 1
  br label %write_reg.exit75

if.then32.i.i72:                                  ; preds = %if.end.i.i66.if.then32.i.i72_crit_edge, %if.end16.if.then32.i.i72_crit_edge
  %57 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 6, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i69 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 6
  %58 = ptrtoint ptr %arrayidx23.i2.i69 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 31, ptr %arrayidx23.i2.i69, align 1
  %regmap33.i.i70 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %59 = ptrtoint ptr %regmap33.i.i70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap33.i.i70, align 4
  %call38.i.i71 = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 1, i32 noundef 31) #6
  br label %write_reg.exit75

write_reg.exit75:                                 ; preds = %if.then32.i.i72, %if.end19.i.i68
  %status.2.i.i74 = phi i32 [ %call.i.i64, %if.end19.i.i68 ], [ %call38.i.i71, %if.then32.i.i72 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i74)
  %cmp18 = icmp slt i32 %status.2.i.i74, 0
  br i1 %cmp18, label %write_reg.exit75.do.end_crit_edge, label %if.end20

write_reg.exit75.do.end_crit_edge:                ; preds = %write_reg.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end20:                                         ; preds = %write_reg.exit75
  %61 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %62)
  %cmp.not.i.i77 = icmp eq i8 %62, 7
  br i1 %cmp.not.i.i77, label %if.end20.if.then32.i.i87_crit_edge, label %if.end.i.i81

if.end20.if.then32.i.i87_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i87

if.end.i.i81:                                     ; preds = %if.end20
  %regmap.i.i78 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %63 = ptrtoint ptr %regmap.i.i78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i.i78, align 4
  %call.i.i79 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 0, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool.not.i.i80 = icmp eq i32 %call.i.i79, 0
  br i1 %tobool.not.i.i80, label %if.end.i.i81.if.then32.i.i87_crit_edge, label %if.end19.i.i83

if.end.i.i81.if.then32.i.i87_crit_edge:           ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i87

if.end19.i.i83:                                   ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 7, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i82 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 7
  %66 = ptrtoint ptr %arrayidx23.i.i82 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 31, ptr %arrayidx23.i.i82, align 1
  br label %write_reg.exit90

if.then32.i.i87:                                  ; preds = %if.end.i.i81.if.then32.i.i87_crit_edge, %if.end20.if.then32.i.i87_crit_edge
  %67 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 7, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i84 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 7
  %68 = ptrtoint ptr %arrayidx23.i2.i84 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 31, ptr %arrayidx23.i2.i84, align 1
  %regmap33.i.i85 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %69 = ptrtoint ptr %regmap33.i.i85 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap33.i.i85, align 4
  %call38.i.i86 = tail call i32 @regmap_write(ptr noundef %70, i32 noundef 1, i32 noundef 31) #6
  br label %write_reg.exit90

write_reg.exit90:                                 ; preds = %if.then32.i.i87, %if.end19.i.i83
  %status.2.i.i89 = phi i32 [ %call.i.i79, %if.end19.i.i83 ], [ %call38.i.i86, %if.then32.i.i87 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i89)
  %cmp22 = icmp slt i32 %status.2.i.i89, 0
  br i1 %cmp22, label %write_reg.exit90.do.end_crit_edge, label %if.end24

write_reg.exit90.do.end_crit_edge:                ; preds = %write_reg.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end24:                                         ; preds = %write_reg.exit90
  %71 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %72)
  %cmp.not.i.i92 = icmp eq i8 %72, 8
  br i1 %cmp.not.i.i92, label %if.end24.if.then32.i.i102_crit_edge, label %if.end.i.i96

if.end24.if.then32.i.i102_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i102

if.end.i.i96:                                     ; preds = %if.end24
  %regmap.i.i93 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %73 = ptrtoint ptr %regmap.i.i93 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i.i93, align 4
  %call.i.i94 = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 0, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %tobool.not.i.i95 = icmp eq i32 %call.i.i94, 0
  br i1 %tobool.not.i.i95, label %if.end.i.i96.if.then32.i.i102_crit_edge, label %if.end19.i.i98

if.end.i.i96.if.then32.i.i102_crit_edge:          ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i102

if.end19.i.i98:                                   ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 8, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i97 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 8
  %76 = ptrtoint ptr %arrayidx23.i.i97 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 40, ptr %arrayidx23.i.i97, align 1
  br label %write_reg.exit105

if.then32.i.i102:                                 ; preds = %if.end.i.i96.if.then32.i.i102_crit_edge, %if.end24.if.then32.i.i102_crit_edge
  %77 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 8, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i99 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 8
  %78 = ptrtoint ptr %arrayidx23.i2.i99 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 40, ptr %arrayidx23.i2.i99, align 1
  %regmap33.i.i100 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %79 = ptrtoint ptr %regmap33.i.i100 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap33.i.i100, align 4
  %call38.i.i101 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef 1, i32 noundef 40) #6
  br label %write_reg.exit105

write_reg.exit105:                                ; preds = %if.then32.i.i102, %if.end19.i.i98
  %status.2.i.i104 = phi i32 [ %call.i.i94, %if.end19.i.i98 ], [ %call38.i.i101, %if.then32.i.i102 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i104)
  %cmp26 = icmp slt i32 %status.2.i.i104, 0
  br i1 %cmp26, label %write_reg.exit105.do.end_crit_edge, label %if.end28

write_reg.exit105.do.end_crit_edge:               ; preds = %write_reg.exit105
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end28:                                         ; preds = %write_reg.exit105
  %81 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %82)
  %cmp.not.i.i107 = icmp eq i8 %82, 20
  br i1 %cmp.not.i.i107, label %if.end28.if.then32.i.i117_crit_edge, label %if.end.i.i111

if.end28.if.then32.i.i117_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i117

if.end.i.i111:                                    ; preds = %if.end28
  %regmap.i.i108 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %83 = ptrtoint ptr %regmap.i.i108 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i.i108, align 4
  %call.i.i109 = tail call i32 @regmap_write(ptr noundef %84, i32 noundef 0, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %tobool.not.i.i110 = icmp eq i32 %call.i.i109, 0
  br i1 %tobool.not.i.i110, label %if.end.i.i111.if.then32.i.i117_crit_edge, label %if.end19.i.i113

if.end.i.i111.if.then32.i.i117_crit_edge:         ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i117

if.end19.i.i113:                                  ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 20, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i112 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 20
  %86 = ptrtoint ptr %arrayidx23.i.i112 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 32, ptr %arrayidx23.i.i112, align 1
  br label %write_reg.exit120

if.then32.i.i117:                                 ; preds = %if.end.i.i111.if.then32.i.i117_crit_edge, %if.end28.if.then32.i.i117_crit_edge
  %87 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 20, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i114 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 20
  %88 = ptrtoint ptr %arrayidx23.i2.i114 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 32, ptr %arrayidx23.i2.i114, align 1
  %regmap33.i.i115 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %89 = ptrtoint ptr %regmap33.i.i115 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap33.i.i115, align 4
  %call38.i.i116 = tail call i32 @regmap_write(ptr noundef %90, i32 noundef 1, i32 noundef 32) #6
  br label %write_reg.exit120

write_reg.exit120:                                ; preds = %if.then32.i.i117, %if.end19.i.i113
  %status.2.i.i119 = phi i32 [ %call.i.i109, %if.end19.i.i113 ], [ %call38.i.i116, %if.then32.i.i117 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2.i.i119)
  %cmp30 = icmp slt i32 %status.2.i.i119, 0
  br i1 %cmp30, label %write_reg.exit120.do.end_crit_edge, label %if.end32

write_reg.exit120.do.end_crit_edge:               ; preds = %write_reg.exit120
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end32:                                         ; preds = %write_reg.exit120
  %call33 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 10, i8 noundef zeroext -89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.do.end_crit_edge, label %if.end36

if.end32.do.end_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end36:                                         ; preds = %if.end32
  %call37 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 11, i8 noundef zeroext 51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.do.end_crit_edge, label %if.end40

if.end36.do.end_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end40:                                         ; preds = %if.end36
  %call41 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 12, i8 noundef zeroext 51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.do.end_crit_edge, label %if.end44

if.end40.do.end_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end44:                                         ; preds = %if.end40
  %call45 = tail call fastcc i32 @write_regm(ptr noundef %ci, i8 noundef zeroext 20, i8 noundef zeroext 0, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.do.end_crit_edge, label %if.end48

if.end44.do.end_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end48:                                         ; preds = %if.end44
  %clk_reg_b = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 7
  %91 = ptrtoint ptr %clk_reg_b to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %clk_reg_b, align 1
  %call49 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 21, i8 noundef zeroext %92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end48.do.end_crit_edge, label %if.end52

if.end48.do.end_crit_edge:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end52:                                         ; preds = %if.end48
  %call53 = tail call fastcc i32 @write_regm(ptr noundef %ci, i8 noundef zeroext 22, i8 noundef zeroext 0, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.do.end_crit_edge, label %if.end56

if.end52.do.end_crit_edge:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end56:                                         ; preds = %if.end52
  %clk_reg_f = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 6
  %93 = ptrtoint ptr %clk_reg_f to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %clk_reg_f, align 4
  %call57 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 23, i8 noundef zeroext %94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.do.end_crit_edge, label %if.end60

if.end56.do.end_crit_edge:                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end60:                                         ; preds = %if.end56
  %clock_mode = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 1, i32 2
  %95 = ptrtoint ptr %clock_mode to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %clock_mode, align 1
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values)
  switch i8 %96, label %if.else134 [
    i8 2, label %if.then63
    i8 1, label %if.then102
  ]

if.then63:                                        ; preds = %if.end60
  %cfg = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 1
  %98 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cfg, align 4
  %shl = shl i32 %99, 13
  %add = add i32 %shl, 71999
  %div = udiv i32 %add, 72000
  %polarity = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %polarity to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not = icmp eq i8 %101, 0
  br i1 %tobool.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.then63
  %call67 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 9, i8 noundef zeroext 111)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then66.do.end_crit_edge, label %if.then66.if.end77_crit_edge

if.then66.if.end77_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then66.do.end_crit_edge:                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.else:                                          ; preds = %if.then63
  %call72 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 9, i8 noundef zeroext 109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.else.do.end_crit_edge, label %if.else.if.end77_crit_edge

if.else.if.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end77:                                         ; preds = %if.else.if.end77_crit_edge, %if.then66.if.end77_crit_edge
  %call78 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 32, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end77.do.end_crit_edge, label %if.end82

if.end77.do.end_crit_edge:                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end82:                                         ; preds = %if.end77
  %shr = lshr i32 %div, 8
  %conv83 = trunc i32 %shr to i8
  %call84 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 33, i8 noundef zeroext %conv83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end82.do.end_crit_edge, label %if.end88

if.end82.do.end_crit_edge:                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end88:                                         ; preds = %if.end82
  %conv90 = trunc i32 %div to i8
  %call91 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 34, i8 noundef zeroext %conv90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.end88.do.end_crit_edge, label %if.end88.if.end167_crit_edge

if.end88.if.end167_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

if.end88.do.end_crit_edge:                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then102:                                       ; preds = %if.end60
  %polarity104 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 1, i32 1
  %102 = ptrtoint ptr %polarity104 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %polarity104, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool105.not = icmp eq i8 %103, 0
  br i1 %tobool105.not, label %if.else112, label %if.then106

if.then106:                                       ; preds = %if.then102
  %call107 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 9, i8 noundef zeroext 111)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.then106.do.end_crit_edge, label %if.then106.if.end118_crit_edge

if.then106.if.end118_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then106.do.end_crit_edge:                      ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.else112:                                       ; preds = %if.then102
  %call113 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 9, i8 noundef zeroext 109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.else112.do.end_crit_edge, label %if.else112.if.end118_crit_edge

if.else112.if.end118_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.else112.do.end_crit_edge:                      ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end118:                                        ; preds = %if.else112.if.end118_crit_edge, %if.then106.if.end118_crit_edge
  %call119 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 32, i8 noundef zeroext 104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.end118.do.end_crit_edge, label %if.end123

if.end118.do.end_crit_edge:                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end123:                                        ; preds = %if.end118
  %call124 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 33, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.end123.do.end_crit_edge, label %if.end128

if.end123.do.end_crit_edge:                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end128:                                        ; preds = %if.end123
  %call129 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 34, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.end128.do.end_crit_edge, label %if.end128.if.end167_crit_edge

if.end128.if.end167_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

if.end128.do.end_crit_edge:                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.else134:                                       ; preds = %if.end60
  %polarity136 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %polarity136 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %polarity136, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool137.not = icmp eq i8 %105, 0
  br i1 %tobool137.not, label %if.else144, label %if.then138

if.then138:                                       ; preds = %if.else134
  %call139 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 9, i8 noundef zeroext 79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.then138.do.end_crit_edge, label %if.then138.if.end150_crit_edge

if.then138.if.end150_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then138.do.end_crit_edge:                      ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.else144:                                       ; preds = %if.else134
  %call145 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 9, i8 noundef zeroext 77)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.else144.do.end_crit_edge, label %if.else144.if.end150_crit_edge

if.else144.if.end150_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.else144.do.end_crit_edge:                      ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end150:                                        ; preds = %if.else144.if.end150_crit_edge, %if.then138.if.end150_crit_edge
  %call151 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 32, i8 noundef zeroext 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %if.end150.do.end_crit_edge, label %if.end155

if.end150.do.end_crit_edge:                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end155:                                        ; preds = %if.end150
  %call156 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 33, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.end155.do.end_crit_edge, label %if.end160

if.end155.do.end_crit_edge:                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end160:                                        ; preds = %if.end155
  %call161 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 34, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %if.end160.do.end_crit_edge, label %if.end160.if.end167_crit_edge

if.end160.if.end167_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

if.end160.do.end_crit_edge:                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end167:                                        ; preds = %if.end160.if.end167_crit_edge, %if.end128.if.end167_crit_edge, %if.end88.if.end167_crit_edge
  %call168 = tail call fastcc i32 @write_regm(ptr noundef %ci, i8 noundef zeroext 32, i8 noundef zeroext -128, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.end167.do.end_crit_edge, label %if.end172

if.end167.do.end_crit_edge:                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end172:                                        ; preds = %if.end167
  %call173 = tail call fastcc i32 @write_regm(ptr noundef %ci, i8 noundef zeroext 3, i8 noundef zeroext 2, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.end172.do.end_crit_edge, label %if.end177

if.end172.do.end_crit_edge:                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end177:                                        ; preds = %if.end172
  %call178 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 1, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.end177.do.end_crit_edge, label %if.end182

if.end177.do.end_crit_edge:                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end182:                                        ; preds = %if.end177
  %call183 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 0, i8 noundef zeroext 49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %cmp184 = icmp slt i32 %call183, 0
  br i1 %cmp184, label %if.end182.do.end_crit_edge, label %if.end187

if.end182.do.end_crit_edge:                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end187:                                        ; preds = %if.end182
  %call188 = tail call fastcc i32 @write_regm(ptr noundef %ci, i8 noundef zeroext 9, i8 noundef zeroext 8, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %cmp189 = icmp slt i32 %call188, 0
  br i1 %cmp189, label %if.end187.do.end_crit_edge, label %if.end192

if.end187.do.end_crit_edge:                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end192:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  %cammode = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 15
  %106 = ptrtoint ptr %cammode to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %cammode, align 4
  tail call fastcc void @cam_mode(ptr noundef %ci, i32 noundef 0)
  br label %do.end

do.end:                                           ; preds = %if.end192, %if.end187.do.end_crit_edge, %if.end182.do.end_crit_edge, %if.end177.do.end_crit_edge, %if.end172.do.end_crit_edge, %if.end167.do.end_crit_edge, %if.end160.do.end_crit_edge, %if.end155.do.end_crit_edge, %if.end150.do.end_crit_edge, %if.else144.do.end_crit_edge, %if.then138.do.end_crit_edge, %if.end128.do.end_crit_edge, %if.end123.do.end_crit_edge, %if.end118.do.end_crit_edge, %if.else112.do.end_crit_edge, %if.then106.do.end_crit_edge, %if.end88.do.end_crit_edge, %if.end82.do.end_crit_edge, %if.end77.do.end_crit_edge, %if.else.do.end_crit_edge, %if.then66.do.end_crit_edge, %if.end56.do.end_crit_edge, %if.end52.do.end_crit_edge, %if.end48.do.end_crit_edge, %if.end44.do.end_crit_edge, %if.end40.do.end_crit_edge, %if.end36.do.end_crit_edge, %if.end32.do.end_crit_edge, %write_reg.exit120.do.end_crit_edge, %write_reg.exit105.do.end_crit_edge, %write_reg.exit90.do.end_crit_edge, %write_reg.exit75.do.end_crit_edge, %write_reg.exit60.do.end_crit_edge, %write_reg.exit45.do.end_crit_edge, %write_reg.exit30.do.end_crit_edge, %write_reg.exit15.do.end_crit_edge, %write_reg.exit.do.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address) #2 align 64 {
entry:
  %addr.i = alloca [2 x i8], align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !73
  %lock = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call fastcc void @set_mode(ptr noundef %1, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %addr.i, i32 0, i32 1
  %conv1.i = trunc i32 %address to i8
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1.i, ptr %addr.i, align 1
  %5 = lshr i32 %address, 8
  %conv3.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3.i, ptr %3, align 1
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %8, i32 noundef 2, ptr noundef nonnull %addr.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.read_pccard.exit_crit_edge

entry.read_pccard.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_pccard.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call6.i = call i32 @regmap_raw_read(ptr noundef %10, i32 noundef 3, ptr noundef nonnull %val, i32 noundef 1) #6
  br label %read_pccard.exit

read_pccard.exit:                                 ; preds = %if.then.i, %entry.read_pccard.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %conv2 = zext i8 %12 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  %addr.i = alloca [2 x i8], align 1
  %buf.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %lock = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call fastcc void @set_mode(ptr noundef %1, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %addr.i, i32 0, i32 1
  %conv1.i = trunc i32 %address to i8
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1.i, ptr %addr.i, align 1
  %4 = lshr i32 %address, 8
  %conv3.i = trunc i32 %4 to i8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3.i, ptr %2, align 1
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %7, i32 noundef 2, ptr noundef nonnull %addr.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.write_pccard.exit_crit_edge

entry.write_pccard.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_pccard.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #6
  %8 = getelementptr inbounds i8, ptr %buf.i, i32 1
  %9 = call ptr @memset(ptr %8, i32 255, i32 255)
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %value, ptr %buf.i, align 1
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call9.i = call i32 @regmap_raw_write(ptr noundef %12, i32 noundef 3, ptr noundef nonnull %buf.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #6
  br label %write_pccard.exit

write_pccard.exit:                                ; preds = %if.then.i, %entry.write_pccard.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address) #2 align 64 {
entry:
  %addr.i = alloca [2 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !73
  %lock = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call fastcc void @set_mode(ptr noundef %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i) #6
  %3 = getelementptr inbounds [2 x i8], ptr %addr.i, i32 0, i32 1
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %address, ptr %addr.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %3, align 1
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %7, i32 noundef 2, ptr noundef nonnull %addr.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.read_io.exit_crit_edge

entry.read_io.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_io.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 3, ptr noundef nonnull %val) #6
  br label %read_io.exit

read_io.exit:                                     ; preds = %if.then.i, %entry.read_io.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  %addr.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %lock = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call fastcc void @set_mode(ptr noundef %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %addr.i, i32 0, i32 1
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %address, ptr %addr.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 1
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %6, i32 noundef 2, ptr noundef nonnull %addr.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.write_io.exit_crit_edge

entry.write_io.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_io.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %conv5.i = zext i8 %value to i32
  %call6.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 3, i32 noundef %conv5.i) #6
  br label %write_io.exit

write_io.exit:                                    ; preds = %if.then.i, %entry.write_io.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_data(ptr nocapture noundef readonly %ca, i32 noundef %slot, ptr noundef %ebuf, i32 noundef %ecount) #2 align 64 {
entry:
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msb) #6
  %2 = ptrtoint ptr %msb to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %msb, align 1, !annotation !73
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lsb) #6
  %3 = ptrtoint ptr %lsb to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %lsb, align 1, !annotation !73
  %lock = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call fastcc void @campoll(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %dr = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %dr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %lastaddress.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %7)
  %cmp.not.i.i = icmp eq i8 %7, 15
  br i1 %cmp.not.i.i, label %if.end.if.then4.i.i_crit_edge, label %if.then.i.i

if.end.if.then4.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i

if.then.i.i:                                      ; preds = %if.end
  %regmap.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %phi.cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %phi.cmp.i.i, label %if.then.i.i.if.then4.i.i_crit_edge, label %if.then.i.i.read_reg.exit_crit_edge

if.then.i.i.read_reg.exit_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

if.then.i.i.if.then4.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i.if.then4.i.i_crit_edge, %if.end.if.then4.i.i_crit_edge
  %10 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 15, ptr %lastaddress.i.i, align 1
  %max_i2c.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 1, i32 3
  %regmap17.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then4.i.i
  %data.addr.0.i.i = phi ptr [ %msb, %if.then4.i.i ], [ %add.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %n.addr.0.i.i = phi i16 [ 1, %if.then4.i.i ], [ %conv23.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %n.addr.0.i.i)
  %tobool6.not.i.i = icmp eq i16 %n.addr.0.i.i, 0
  br i1 %tobool6.not.i.i, label %while.cond.i.i.read_reg.exit_crit_edge, label %while.body.i.i

while.cond.i.i.read_reg.exit_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %conv7.i.i = zext i16 %n.addr.0.i.i to i32
  %11 = ptrtoint ptr %max_i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_i2c.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not.i.i = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv7.i.i)
  %cmp11.i.i = icmp ult i32 %12, %conv7.i.i
  %or.cond.i.i = select i1 %tobool8.not.i.i, i1 %cmp11.i.i, i1 false
  %len.0.i.i = select i1 %or.cond.i.i, i32 %12, i32 %conv7.i.i
  %13 = ptrtoint ptr %regmap17.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap17.i.i, align 4
  %call18.i.i = call i32 @regmap_raw_read(ptr noundef %14, i32 noundef 1, ptr noundef %data.addr.0.i.i, i32 noundef %len.0.i.i) #6
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  %add.ptr.i.i = getelementptr i8, ptr %data.addr.0.i.i, i32 %len.0.i.i
  %15 = trunc i32 %len.0.i.i to i16
  %conv23.i.i = sub i16 %n.addr.0.i.i, %15
  br i1 %tobool19.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.read_reg.exit_crit_edge

while.body.i.i.read_reg.exit_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

read_reg.exit:                                    ; preds = %while.body.i.i.read_reg.exit_crit_edge, %while.cond.i.i.read_reg.exit_crit_edge, %if.then.i.i.read_reg.exit_crit_edge
  %16 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %17)
  %cmp.not.i.i41 = icmp eq i8 %17, 16
  br i1 %cmp.not.i.i41, label %read_reg.exit.if.then4.i.i48_crit_edge, label %if.then.i.i45

read_reg.exit.if.then4.i.i48_crit_edge:           ; preds = %read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i48

if.then.i.i45:                                    ; preds = %read_reg.exit
  %regmap.i.i42 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %regmap.i.i42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i42, align 4
  %call.i.i43 = call i32 @regmap_write(ptr noundef %19, i32 noundef 0, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %phi.cmp.i.i44 = icmp eq i32 %call.i.i43, 0
  br i1 %phi.cmp.i.i44, label %if.then.i.i45.if.then4.i.i48_crit_edge, label %if.then.i.i45.read_reg.exit63_crit_edge

if.then.i.i45.read_reg.exit63_crit_edge:          ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit63

if.then.i.i45.if.then4.i.i48_crit_edge:           ; preds = %if.then.i.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i48

if.then4.i.i48:                                   ; preds = %if.then.i.i45.if.then4.i.i48_crit_edge, %read_reg.exit.if.then4.i.i48_crit_edge
  %20 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %lastaddress.i.i, align 1
  %max_i2c.i.i46 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 1, i32 3
  %regmap17.i.i47 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  br label %while.cond.i.i52

while.cond.i.i52:                                 ; preds = %while.body.i.i62.while.cond.i.i52_crit_edge, %if.then4.i.i48
  %data.addr.0.i.i49 = phi ptr [ %lsb, %if.then4.i.i48 ], [ %add.ptr.i.i60, %while.body.i.i62.while.cond.i.i52_crit_edge ]
  %n.addr.0.i.i50 = phi i16 [ 1, %if.then4.i.i48 ], [ %conv23.i.i61, %while.body.i.i62.while.cond.i.i52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %n.addr.0.i.i50)
  %tobool6.not.i.i51 = icmp eq i16 %n.addr.0.i.i50, 0
  br i1 %tobool6.not.i.i51, label %while.cond.i.i52.read_reg.exit63_crit_edge, label %while.body.i.i62

while.cond.i.i52.read_reg.exit63_crit_edge:       ; preds = %while.cond.i.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit63

while.body.i.i62:                                 ; preds = %while.cond.i.i52
  %conv7.i.i53 = zext i16 %n.addr.0.i.i50 to i32
  %21 = ptrtoint ptr %max_i2c.i.i46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_i2c.i.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool8.not.i.i54 = icmp ne i32 %22, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv7.i.i53)
  %cmp11.i.i55 = icmp ult i32 %22, %conv7.i.i53
  %or.cond.i.i56 = select i1 %tobool8.not.i.i54, i1 %cmp11.i.i55, i1 false
  %len.0.i.i57 = select i1 %or.cond.i.i56, i32 %22, i32 %conv7.i.i53
  %23 = ptrtoint ptr %regmap17.i.i47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap17.i.i47, align 4
  %call18.i.i58 = call i32 @regmap_raw_read(ptr noundef %24, i32 noundef 1, ptr noundef %data.addr.0.i.i49, i32 noundef %len.0.i.i57) #6
  %tobool19.not.i.i59 = icmp eq i32 %call18.i.i58, 0
  %add.ptr.i.i60 = getelementptr i8, ptr %data.addr.0.i.i49, i32 %len.0.i.i57
  %25 = trunc i32 %len.0.i.i57 to i16
  %conv23.i.i61 = sub i16 %n.addr.0.i.i50, %25
  br i1 %tobool19.not.i.i59, label %while.body.i.i62.while.cond.i.i52_crit_edge, label %while.body.i.i62.read_reg.exit63_crit_edge

while.body.i.i62.read_reg.exit63_crit_edge:       ; preds = %while.body.i.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit63

while.body.i.i62.while.cond.i.i52_crit_edge:      ; preds = %while.body.i.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i52

read_reg.exit63:                                  ; preds = %while.body.i.i62.read_reg.exit63_crit_edge, %while.cond.i.i52.read_reg.exit63_crit_edge, %if.then.i.i45.read_reg.exit63_crit_edge
  %26 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %msb, align 1
  %conv5 = zext i8 %27 to i16
  %shl = shl nuw i16 %conv5, 8
  %28 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lsb, align 1
  %conv6 = zext i8 %29 to i16
  %or = or i16 %shl, %conv6
  %conv8 = zext i16 %or to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %ecount)
  %cmp = icmp sgt i32 %conv8, %ecount
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %or)
  %cmp11 = icmp ult i16 %or, 2
  %or.cond = or i1 %cmp11, %cmp
  br i1 %or.cond, label %if.then13, label %if.end16

if.then13:                                        ; preds = %read_reg.exit63
  %rbuf = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %31)
  %cmp.not.i = icmp eq i8 %31, 18
  br i1 %cmp.not.i, label %if.then13.if.then4.i_crit_edge, label %if.then.i

if.then13.if.then4.i_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.then.i:                                        ; preds = %if.then13
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %33, i32 noundef 0, i32 noundef 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp.i = icmp eq i32 %call.i, 0
  br i1 %phi.cmp.i, label %if.then.i.if.then4.i_crit_edge, label %if.then.i.cleanup.sink.split_crit_edge

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then.i.if.then4.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i.if.then4.i_crit_edge, %if.then13.if.then4.i_crit_edge
  %34 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 18, ptr %lastaddress.i.i, align 1
  %max_i2c.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 1, i32 3
  %regmap17.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then4.i
  %data.addr.0.i = phi ptr [ %rbuf, %if.then4.i ], [ %add.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %n.addr.0.i = phi i16 [ %or, %if.then4.i ], [ %conv23.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %n.addr.0.i)
  %tobool6.not.i = icmp eq i16 %n.addr.0.i, 0
  br i1 %tobool6.not.i, label %while.cond.i.cleanup.sink.split_crit_edge, label %while.body.i

while.cond.i.cleanup.sink.split_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

while.body.i:                                     ; preds = %while.cond.i
  %conv7.i = zext i16 %n.addr.0.i to i32
  %35 = ptrtoint ptr %max_i2c.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_i2c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool8.not.i = icmp ne i32 %36, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv7.i)
  %cmp11.i = icmp ult i32 %36, %conv7.i
  %or.cond.i = select i1 %tobool8.not.i, i1 %cmp11.i, i1 false
  %len.0.i = select i1 %or.cond.i, i32 %36, i32 %conv7.i
  %37 = ptrtoint ptr %regmap17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap17.i, align 4
  %call18.i = call i32 @regmap_raw_read(ptr noundef %38, i32 noundef 1, ptr noundef %data.addr.0.i, i32 noundef %len.0.i) #6
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  %add.ptr.i = getelementptr i8, ptr %data.addr.0.i, i32 %len.0.i
  %39 = trunc i32 %len.0.i to i16
  %conv23.i = sub i16 %n.addr.0.i, %39
  br i1 %tobool19.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.cleanup.sink.split_crit_edge

while.body.i.cleanup.sink.split_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

if.end16:                                         ; preds = %read_reg.exit63
  %40 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %41)
  %cmp.not.i65 = icmp eq i8 %41, 18
  br i1 %cmp.not.i65, label %if.end16.if.then4.i72_crit_edge, label %if.then.i69

if.end16.if.then4.i72_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i72

if.then.i69:                                      ; preds = %if.end16
  %regmap.i66 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %regmap.i66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i66, align 4
  %call.i67 = call i32 @regmap_write(ptr noundef %43, i32 noundef 0, i32 noundef 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %phi.cmp.i68 = icmp eq i32 %call.i67, 0
  br i1 %phi.cmp.i68, label %if.then.i69.if.then4.i72_crit_edge, label %if.then.i69.read_block.exit87_crit_edge

if.then.i69.read_block.exit87_crit_edge:          ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_block.exit87

if.then.i69.if.then4.i72_crit_edge:               ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i72

if.then4.i72:                                     ; preds = %if.then.i69.if.then4.i72_crit_edge, %if.end16.if.then4.i72_crit_edge
  %44 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 18, ptr %lastaddress.i.i, align 1
  %max_i2c.i70 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 1, i32 3
  %regmap17.i71 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  br label %while.cond.i76

while.cond.i76:                                   ; preds = %while.body.i86.while.cond.i76_crit_edge, %if.then4.i72
  %data.addr.0.i73 = phi ptr [ %ebuf, %if.then4.i72 ], [ %add.ptr.i84, %while.body.i86.while.cond.i76_crit_edge ]
  %n.addr.0.i74 = phi i16 [ %or, %if.then4.i72 ], [ %conv23.i85, %while.body.i86.while.cond.i76_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %n.addr.0.i74)
  %tobool6.not.i75 = icmp eq i16 %n.addr.0.i74, 0
  br i1 %tobool6.not.i75, label %while.cond.i76.read_block.exit87_crit_edge, label %while.body.i86

while.cond.i76.read_block.exit87_crit_edge:       ; preds = %while.cond.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_block.exit87

while.body.i86:                                   ; preds = %while.cond.i76
  %conv7.i77 = zext i16 %n.addr.0.i74 to i32
  %45 = ptrtoint ptr %max_i2c.i70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_i2c.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool8.not.i78 = icmp ne i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv7.i77)
  %cmp11.i79 = icmp ult i32 %46, %conv7.i77
  %or.cond.i80 = select i1 %tobool8.not.i78, i1 %cmp11.i79, i1 false
  %len.0.i81 = select i1 %or.cond.i80, i32 %46, i32 %conv7.i77
  %47 = ptrtoint ptr %regmap17.i71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap17.i71, align 4
  %call18.i82 = call i32 @regmap_raw_read(ptr noundef %48, i32 noundef 1, ptr noundef %data.addr.0.i73, i32 noundef %len.0.i81) #6
  %tobool19.not.i83 = icmp eq i32 %call18.i82, 0
  %add.ptr.i84 = getelementptr i8, ptr %data.addr.0.i73, i32 %len.0.i81
  %49 = trunc i32 %len.0.i81 to i16
  %conv23.i85 = sub i16 %n.addr.0.i74, %49
  br i1 %tobool19.not.i83, label %while.body.i86.while.cond.i76_crit_edge, label %while.body.i86.read_block.exit87_crit_edge

while.body.i86.read_block.exit87_crit_edge:       ; preds = %while.body.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_block.exit87

while.body.i86.while.cond.i76_crit_edge:          ; preds = %while.body.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i76

read_block.exit87:                                ; preds = %while.body.i86.read_block.exit87_crit_edge, %while.cond.i76.read_block.exit87_crit_edge, %if.then.i69.read_block.exit87_crit_edge
  %50 = ptrtoint ptr %dr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %dr, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %read_block.exit87, %while.body.i.cleanup.sink.split_crit_edge, %while.cond.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %conv8, %read_block.exit87 ], [ -5, %if.then.i.cleanup.sink.split_crit_edge ], [ -5, %while.cond.i.cleanup.sink.split_crit_edge ], [ -5, %while.body.i.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lsb) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_data(ptr nocapture noundef readonly %ca, i32 noundef %slot, ptr nocapture noundef readonly %ebuf, i32 noundef %ecount) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %write_busy = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %write_busy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = lshr i32 %ecount, 8
  %conv = trunc i32 %4 to i8
  %lastaddress.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %6)
  %cmp.not.i.i = icmp eq i8 %6, 13
  br i1 %cmp.not.i.i, label %if.end.write_reg.exit_crit_edge, label %if.end.i.i

if.end.write_reg.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

if.end.i.i:                                       ; preds = %if.end
  %regmap.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 0, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.write_reg.exit_crit_edge, label %write_reg.exit.thread

if.end.i.i.write_reg.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

write_reg.exit.thread:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 13, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 13
  %10 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx23.i.i, align 1
  %conv132 = trunc i32 %ecount to i8
  br label %if.end.i.i21

write_reg.exit:                                   ; preds = %if.end.i.i.write_reg.exit_crit_edge, %if.end.write_reg.exit_crit_edge
  %11 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 13, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 13
  %12 = ptrtoint ptr %arrayidx23.i2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx23.i2.i, align 1
  %regmap33.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %regmap33.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap33.i.i, align 4
  %conv37.i.i = and i32 %4, 255
  %call38.i.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 1, i32 noundef %conv37.i.i) #6
  %15 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %.pr = load i8, ptr %lastaddress.i.i, align 1
  %conv1 = trunc i32 %ecount to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %.pr)
  %cmp.not.i.i17 = icmp eq i8 %.pr, 14
  br i1 %cmp.not.i.i17, label %write_reg.exit.write_reg.exit31_crit_edge, label %write_reg.exit.if.end.i.i21_crit_edge

write_reg.exit.if.end.i.i21_crit_edge:            ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i21

write_reg.exit.write_reg.exit31_crit_edge:        ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit31

if.end.i.i21:                                     ; preds = %write_reg.exit.if.end.i.i21_crit_edge, %write_reg.exit.thread
  %conv134 = phi i8 [ %conv132, %write_reg.exit.thread ], [ %conv1, %write_reg.exit.if.end.i.i21_crit_edge ]
  %regmap.i.i18 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %regmap.i.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i18, align 4
  %call.i.i19 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 0, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool.not.i.i20 = icmp eq i32 %call.i.i19, 0
  br i1 %tobool.not.i.i20, label %if.end.i.i21.write_reg.exit31_crit_edge, label %write_reg.exit31.thread

if.end.i.i21.write_reg.exit31_crit_edge:          ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit31

write_reg.exit31.thread:                          ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 14, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i22 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 14
  %19 = ptrtoint ptr %arrayidx23.i.i22 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv134, ptr %arrayidx23.i.i22, align 1
  %conv337 = trunc i32 %ecount to i16
  %wbuf.i38 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 18
  br label %if.then.i

write_reg.exit31:                                 ; preds = %if.end.i.i21.write_reg.exit31_crit_edge, %write_reg.exit.write_reg.exit31_crit_edge
  %conv135 = phi i8 [ %conv134, %if.end.i.i21.write_reg.exit31_crit_edge ], [ %conv1, %write_reg.exit.write_reg.exit31_crit_edge ]
  %20 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 14, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i24 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 14
  %21 = ptrtoint ptr %arrayidx23.i2.i24 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv135, ptr %arrayidx23.i2.i24, align 1
  %regmap33.i.i25 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %regmap33.i.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap33.i.i25, align 4
  %conv37.i.i26 = zext i8 %conv135 to i32
  %call38.i.i27 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 1, i32 noundef %conv37.i.i26) #6
  %24 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr36 = load i8, ptr %lastaddress.i.i, align 1
  %conv3 = trunc i32 %ecount to i16
  %wbuf.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %.pr36)
  %cmp.not.i = icmp eq i8 %.pr36, 17
  br i1 %cmp.not.i, label %write_reg.exit31.if.end5.i_crit_edge, label %write_reg.exit31.if.then.i_crit_edge

write_reg.exit31.if.then.i_crit_edge:             ; preds = %write_reg.exit31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

write_reg.exit31.if.end5.i_crit_edge:             ; preds = %write_reg.exit31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %write_reg.exit31.if.then.i_crit_edge, %write_reg.exit31.thread
  %wbuf.i42 = phi ptr [ %wbuf.i38, %write_reg.exit31.thread ], [ %wbuf.i, %write_reg.exit31.if.then.i_crit_edge ]
  %conv340 = phi i16 [ %conv337, %write_reg.exit31.thread ], [ %conv3, %write_reg.exit31.if.then.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 0, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp.i = icmp eq i32 %call.i, 0
  br i1 %phi.cmp.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.write_block.exit_crit_edge

if.then.i.write_block.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_block.exit

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %write_reg.exit31.if.end5.i_crit_edge
  %wbuf.i43 = phi ptr [ %wbuf.i42, %if.then.i.if.end5.i_crit_edge ], [ %wbuf.i, %write_reg.exit31.if.end5.i_crit_edge ]
  %conv341 = phi i16 [ %conv340, %if.then.i.if.end5.i_crit_edge ], [ %conv3, %write_reg.exit31.if.end5.i_crit_edge ]
  %27 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 17, ptr %lastaddress.i.i, align 1
  %max_i2c.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 1, i32 3
  %regmap18.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end5.i
  %data.addr.0.i = phi ptr [ %ebuf, %if.end5.i ], [ %add.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %n.addr.0.i = phi i16 [ %conv341, %if.end5.i ], [ %conv25.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %n.addr.0.i)
  %tobool7.not.i = icmp eq i16 %n.addr.0.i, 0
  br i1 %tobool7.not.i, label %while.cond.i.write_block.exit_crit_edge, label %while.body.i

while.cond.i.write_block.exit_crit_edge:          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_block.exit

while.body.i:                                     ; preds = %while.cond.i
  %conv8.i = zext i16 %n.addr.0.i to i32
  %28 = ptrtoint ptr %max_i2c.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_i2c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not.i = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv8.i)
  %cmp12.not.i = icmp ugt i32 %29, %conv8.i
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %cmp12.not.i
  %sub.i = add i32 %29, -1
  %len.0.i = select i1 %or.cond.i, i32 %conv8.i, i32 %sub.i
  %30 = call ptr @memcpy(ptr %wbuf.i43, ptr %data.addr.0.i, i32 %len.0.i)
  %31 = ptrtoint ptr %regmap18.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap18.i, align 4
  %call19.i = tail call i32 @regmap_raw_write(ptr noundef %32, i32 noundef 1, ptr noundef %wbuf.i43, i32 noundef %len.0.i) #6
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  %33 = trunc i32 %len.0.i to i16
  %conv25.i = sub i16 %n.addr.0.i, %33
  %add.ptr.i = getelementptr i8, ptr %data.addr.0.i, i32 %len.0.i
  br i1 %tobool20.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.write_block.exit_crit_edge

while.body.i.write_block.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_block.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

write_block.exit:                                 ; preds = %while.body.i.write_block.exit_crit_edge, %while.cond.i.write_block.exit_crit_edge, %if.then.i.write_block.exit_crit_edge
  %34 = ptrtoint ptr %write_busy to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %write_busy, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %write_block.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ecount, %write_block.exit ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slot_reset(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cammode = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %cammode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cammode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rbuf = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 17
  %call = tail call i32 @read_data(ptr noundef %ca, i32 noundef %slot, ptr noundef %rbuf, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %cammode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cammode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end.cam_mode.exit_crit_edge, label %if.end.i

if.end.cam_mode.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cam_mode.exit

if.end.i:                                         ; preds = %if.end
  %lastaddress.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %7)
  %cmp.not.i.i = icmp eq i8 %7, 32
  br i1 %cmp.not.i.i, label %if.end.i.if.then32.i.i_crit_edge, label %if.end.i.i

if.end.i.if.then32.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i

if.end.i.i:                                       ; preds = %if.end.i
  %regmap.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then32.i.i_crit_edge, label %if.end19.i.i

if.end.i.i.if.then32.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i

if.end19.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 32
  %11 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx23.i.i, align 1
  %or.i.i = or i8 %12, -128
  store i8 %or.i.i, ptr %arrayidx23.i.i, align 1
  br label %write_regm.exit.i

if.then32.i.i:                                    ; preds = %if.end.i.i.if.then32.i.i_crit_edge, %if.end.i.if.then32.i.i_crit_edge
  %13 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %lastaddress.i.i, align 1
  %arrayidx23.i23.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 32
  %14 = ptrtoint ptr %arrayidx23.i23.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx23.i23.i, align 1
  %or.i25.i = or i8 %15, -128
  store i8 %or.i25.i, ptr %arrayidx23.i23.i, align 1
  %regmap33.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %regmap33.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap33.i.i, align 4
  %conv37.i.i = zext i8 %or.i25.i to i32
  %call38.i.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 1, i32 noundef %conv37.i.i) #6
  br label %write_regm.exit.i

write_regm.exit.i:                                ; preds = %if.then32.i.i, %if.end19.i.i
  %arrayidx23.i27.i = phi ptr [ %arrayidx23.i.i, %if.end19.i.i ], [ %arrayidx23.i23.i, %if.then32.i.i ]
  %18 = ptrtoint ptr %arrayidx23.i27.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx23.i27.i, align 1
  %20 = and i8 %19, 127
  store i8 %20, ptr %arrayidx23.i27.i, align 1
  %21 = ptrtoint ptr %cammode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cammode, align 4
  br label %cam_mode.exit

cam_mode.exit:                                    ; preds = %write_regm.exit.i, %if.end.cam_mode.exit_crit_edge
  %lastaddress.i.i25 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lastaddress.i.i25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.not.i.i26 = icmp eq i8 %23, 0
  br i1 %cmp.not.i.i26, label %cam_mode.exit.write_reg.exit_crit_edge, label %if.end.i.i30

cam_mode.exit.write_reg.exit_crit_edge:           ; preds = %cam_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

if.end.i.i30:                                     ; preds = %cam_mode.exit
  %regmap.i.i27 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %regmap.i.i27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i27, align 4
  %call.i.i28 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %tobool.not.i.i29 = icmp eq i32 %call.i.i28, 0
  br i1 %tobool.not.i.i29, label %if.end.i.i30.write_reg.exit_crit_edge, label %write_reg.exit.thread

if.end.i.i30.write_reg.exit_crit_edge:            ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

write_reg.exit.thread:                            ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %lastaddress.i.i25, align 1
  %arrayidx23.i.i31 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 0
  %27 = ptrtoint ptr %arrayidx23.i.i31 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 33, ptr %arrayidx23.i.i31, align 1
  br label %if.end.i.i42

write_reg.exit:                                   ; preds = %if.end.i.i30.write_reg.exit_crit_edge, %cam_mode.exit.write_reg.exit_crit_edge
  %28 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %lastaddress.i.i25, align 1
  %arrayidx23.i2.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 0
  %29 = ptrtoint ptr %arrayidx23.i2.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 33, ptr %arrayidx23.i2.i, align 1
  %regmap33.i.i33 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %regmap33.i.i33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap33.i.i33, align 4
  %call38.i.i34 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 1, i32 noundef 33) #6
  %32 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr = load i8, ptr %lastaddress.i.i25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %.pr)
  %cmp.not.i.i38 = icmp eq i8 %.pr, 6
  br i1 %cmp.not.i.i38, label %write_reg.exit.write_reg.exit52_crit_edge, label %write_reg.exit.if.end.i.i42_crit_edge

write_reg.exit.if.end.i.i42_crit_edge:            ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i42

write_reg.exit.write_reg.exit52_crit_edge:        ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit52

if.end.i.i42:                                     ; preds = %write_reg.exit.if.end.i.i42_crit_edge, %write_reg.exit.thread
  %regmap.i.i39 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %regmap.i.i39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i.i39, align 4
  %call.i.i40 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 0, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %call.i.i40, 0
  br i1 %tobool.not.i.i41, label %if.end.i.i42.write_reg.exit52_crit_edge, label %write_reg.exit52.thread

if.end.i.i42.write_reg.exit52_crit_edge:          ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit52

write_reg.exit52.thread:                          ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 6, ptr %lastaddress.i.i25, align 1
  %arrayidx23.i.i43 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 6
  %36 = ptrtoint ptr %arrayidx23.i.i43 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 31, ptr %arrayidx23.i.i43, align 1
  br label %if.end.i.i58

write_reg.exit52:                                 ; preds = %if.end.i.i42.write_reg.exit52_crit_edge, %write_reg.exit.write_reg.exit52_crit_edge
  %37 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 6, ptr %lastaddress.i.i25, align 1
  %arrayidx23.i2.i45 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 6
  %38 = ptrtoint ptr %arrayidx23.i2.i45 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 31, ptr %arrayidx23.i2.i45, align 1
  %regmap33.i.i46 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %regmap33.i.i46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap33.i.i46, align 4
  %call38.i.i47 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 1, i32 noundef 31) #6
  %41 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_load1_noabort(i32 %41)
  %.pr87 = load i8, ptr %lastaddress.i.i25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr87)
  %cmp.not.i.i54 = icmp eq i8 %.pr87, 0
  br i1 %cmp.not.i.i54, label %write_reg.exit52.write_reg.exit68_crit_edge, label %write_reg.exit52.if.end.i.i58_crit_edge

write_reg.exit52.if.end.i.i58_crit_edge:          ; preds = %write_reg.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i58

write_reg.exit52.write_reg.exit68_crit_edge:      ; preds = %write_reg.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit68

if.end.i.i58:                                     ; preds = %write_reg.exit52.if.end.i.i58_crit_edge, %write_reg.exit52.thread
  %regmap.i.i55 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %regmap.i.i55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i.i55, align 4
  %call.i.i56 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool.not.i.i57 = icmp eq i32 %call.i.i56, 0
  br i1 %tobool.not.i.i57, label %if.end.i.i58.write_reg.exit68_crit_edge, label %write_reg.exit68.thread

if.end.i.i58.write_reg.exit68_crit_edge:          ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit68

write_reg.exit68.thread:                          ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %lastaddress.i.i25, align 1
  %arrayidx23.i.i59 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 0
  %45 = ptrtoint ptr %arrayidx23.i.i59 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 49, ptr %arrayidx23.i.i59, align 1
  br label %if.end.i69

write_reg.exit68:                                 ; preds = %if.end.i.i58.write_reg.exit68_crit_edge, %write_reg.exit52.write_reg.exit68_crit_edge
  %46 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %lastaddress.i.i25, align 1
  %arrayidx23.i2.i61 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 0
  %47 = ptrtoint ptr %arrayidx23.i2.i61 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 49, ptr %arrayidx23.i2.i61, align 1
  %regmap33.i.i62 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %regmap33.i.i62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap33.i.i62, align 4
  %call38.i.i63 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 1, i32 noundef 49) #6
  %50 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_load1_noabort(i32 %50)
  %.pr89 = load i8, ptr %lastaddress.i.i25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.pr89)
  %cmp.not.i = icmp eq i8 %.pr89, 32
  br i1 %cmp.not.i, label %write_reg.exit68.write_regm.exit_crit_edge, label %write_reg.exit68.if.end.i69_crit_edge

write_reg.exit68.if.end.i69_crit_edge:            ; preds = %write_reg.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i69

write_reg.exit68.write_regm.exit_crit_edge:       ; preds = %write_reg.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regm.exit

if.end.i69:                                       ; preds = %write_reg.exit68.if.end.i69_crit_edge, %write_reg.exit68.thread
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 0, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i69.write_regm.exit_crit_edge, label %write_regm.exit.thread

if.end.i69.write_regm.exit_crit_edge:             ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regm.exit

write_regm.exit.thread:                           ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 32, ptr %lastaddress.i.i25, align 1
  %arrayidx23.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 32
  %54 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx23.i, align 1
  %56 = and i8 %55, 127
  store i8 %56, ptr %arrayidx23.i, align 1
  br label %if.end.i.i75

write_regm.exit:                                  ; preds = %if.end.i69.write_regm.exit_crit_edge, %write_reg.exit68.write_regm.exit_crit_edge
  %57 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 32, ptr %lastaddress.i.i25, align 1
  %arrayidx23.i92 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 32
  %58 = ptrtoint ptr %arrayidx23.i92 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx23.i92, align 1
  %or.i94 = or i8 %59, -128
  store i8 %or.i94, ptr %arrayidx23.i92, align 1
  %regmap33.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %regmap33.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap33.i, align 4
  %conv37.i = zext i8 %or.i94 to i32
  %call38.i = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 1, i32 noundef %conv37.i) #6
  %62 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_load1_noabort(i32 %62)
  %.pr100 = load i8, ptr %lastaddress.i.i25, align 1
  %63 = ptrtoint ptr %arrayidx23.i92 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx23.i92, align 1
  %65 = and i8 %64, 127
  store i8 %65, ptr %arrayidx23.i92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr100)
  %cmp.not.i.i71 = icmp eq i8 %.pr100, 3
  br i1 %cmp.not.i.i71, label %write_regm.exit.if.then32.i.i81_crit_edge, label %write_regm.exit.if.end.i.i75_crit_edge

write_regm.exit.if.end.i.i75_crit_edge:           ; preds = %write_regm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i75

write_regm.exit.if.then32.i.i81_crit_edge:        ; preds = %write_regm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i81

if.end.i.i75:                                     ; preds = %write_regm.exit.if.end.i.i75_crit_edge, %write_regm.exit.thread
  %regmap.i.i72 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %regmap.i.i72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i.i72, align 4
  %call.i.i73 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 0, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %tobool.not.i.i74 = icmp eq i32 %call.i.i73, 0
  br i1 %tobool.not.i.i74, label %if.end.i.i75.if.then32.i.i81_crit_edge, label %if.end19.i.i77

if.end.i.i75.if.then32.i.i81_crit_edge:           ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i81

if.end19.i.i77:                                   ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %lastaddress.i.i25, align 1
  %arrayidx23.i.i76 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 3
  %69 = ptrtoint ptr %arrayidx23.i.i76 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %arrayidx23.i.i76, align 1
  br label %write_reg.exit85

if.then32.i.i81:                                  ; preds = %if.end.i.i75.if.then32.i.i81_crit_edge, %write_regm.exit.if.then32.i.i81_crit_edge
  %70 = ptrtoint ptr %lastaddress.i.i25 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %lastaddress.i.i25, align 1
  %arrayidx23.i2.i78 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 3
  %71 = ptrtoint ptr %arrayidx23.i2.i78 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 2, ptr %arrayidx23.i2.i78, align 1
  %regmap33.i.i79 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %72 = ptrtoint ptr %regmap33.i.i79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap33.i.i79, align 4
  %call38.i.i80 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 1, i32 noundef 2) #6
  br label %write_reg.exit85

write_reg.exit85:                                 ; preds = %if.then32.i.i81, %if.end19.i.i77
  %ready = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 9
  %74 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %ready, align 4
  %mode = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 8
  %75 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %mode, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %write_reg.exit85
  %i.099 = phi i32 [ 0, %write_reg.exit85 ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %76 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool7.not = icmp ne i32 %77, 0
  %inc = add nuw nsw i32 %i.099, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 100
  %or.cond = select i1 %tobool7.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slot_shutdown(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  %regval.i60 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slot_shutdown.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slot_shutdown, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slot_shutdown.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cammode = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %cammode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cammode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %rbuf = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 17
  %call5 = tail call i32 @read_data(ptr noundef %ca, i32 noundef %slot, ptr noundef %rbuf, i32 noundef 0)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %lock = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %lastaddress.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i.i = icmp eq i8 %7, 0
  br i1 %cmp.not.i.i, label %if.end6.write_reg.exit_crit_edge, label %if.end.i.i

if.end6.write_reg.exit_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

if.end.i.i:                                       ; preds = %if.end6
  %regmap.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.write_reg.exit_crit_edge, label %write_reg.exit.thread

if.end.i.i.write_reg.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

write_reg.exit.thread:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 33, ptr %arrayidx23.i.i, align 1
  br label %if.end.i.i30

write_reg.exit:                                   ; preds = %if.end.i.i.write_reg.exit_crit_edge, %if.end6.write_reg.exit_crit_edge
  %12 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 0
  %13 = ptrtoint ptr %arrayidx23.i2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 33, ptr %arrayidx23.i2.i, align 1
  %regmap33.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %regmap33.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap33.i.i, align 4
  %call38.i.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 1, i32 noundef 33) #6
  %16 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %.pr)
  %cmp.not.i.i26 = icmp eq i8 %.pr, 6
  br i1 %cmp.not.i.i26, label %write_reg.exit.if.then32.i.i36_crit_edge, label %write_reg.exit.if.end.i.i30_crit_edge

write_reg.exit.if.end.i.i30_crit_edge:            ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i30

write_reg.exit.if.then32.i.i36_crit_edge:         ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i36

if.end.i.i30:                                     ; preds = %write_reg.exit.if.end.i.i30_crit_edge, %write_reg.exit.thread
  %regmap.i.i27 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %regmap.i.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i.i27, align 4
  %call.i.i28 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 0, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %tobool.not.i.i29 = icmp eq i32 %call.i.i28, 0
  br i1 %tobool.not.i.i29, label %if.end.i.i30.if.then32.i.i36_crit_edge, label %if.end19.i.i32

if.end.i.i30.if.then32.i.i36_crit_edge:           ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i36

if.end19.i.i32:                                   ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i31 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %arrayidx23.i.i31 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 31, ptr %arrayidx23.i.i31, align 1
  br label %write_reg.exit39

if.then32.i.i36:                                  ; preds = %if.end.i.i30.if.then32.i.i36_crit_edge, %write_reg.exit.if.then32.i.i36_crit_edge
  %21 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 6, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i33 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %arrayidx23.i2.i33 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 31, ptr %arrayidx23.i2.i33, align 1
  %regmap33.i.i34 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %regmap33.i.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap33.i.i34, align 4
  %call38.i.i35 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 1, i32 noundef 31) #6
  br label %write_reg.exit39

write_reg.exit39:                                 ; preds = %if.then32.i.i36, %if.end19.i.i32
  tail call void @msleep(i32 noundef 300) #6
  %25 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %26)
  %cmp.not.i = icmp eq i8 %26, 9
  br i1 %cmp.not.i, label %write_reg.exit39.write_regm.exit_crit_edge, label %if.end.i

write_reg.exit39.write_regm.exit_crit_edge:       ; preds = %write_reg.exit39
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regm.exit

if.end.i:                                         ; preds = %write_reg.exit39
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 0, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.write_regm.exit_crit_edge, label %write_regm.exit.thread

if.end.i.write_regm.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regm.exit

write_regm.exit.thread:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 9, ptr %lastaddress.i.i, align 1
  %arrayidx23.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 9
  %30 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx23.i, align 1
  %or.i = or i8 %31, 8
  store i8 %or.i, ptr %arrayidx23.i, align 1
  br label %if.end.i46

write_regm.exit:                                  ; preds = %if.end.i.write_regm.exit_crit_edge, %write_reg.exit39.write_regm.exit_crit_edge
  %32 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 9, ptr %lastaddress.i.i, align 1
  %arrayidx23.i83 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 9
  %33 = ptrtoint ptr %arrayidx23.i83 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx23.i83, align 1
  %or.i85 = or i8 %34, 8
  store i8 %or.i85, ptr %arrayidx23.i83, align 1
  %regmap33.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %regmap33.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap33.i, align 4
  %conv37.i = zext i8 %or.i85 to i32
  %call38.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 1, i32 noundef %conv37.i) #6
  %37 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr101 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.pr101)
  %cmp.not.i42 = icmp eq i8 %.pr101, 32
  br i1 %cmp.not.i42, label %write_regm.exit.write_regm.exit59_crit_edge, label %write_regm.exit.if.end.i46_crit_edge

write_regm.exit.if.end.i46_crit_edge:             ; preds = %write_regm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i46

write_regm.exit.write_regm.exit59_crit_edge:      ; preds = %write_regm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regm.exit59

if.end.i46:                                       ; preds = %write_regm.exit.if.end.i46_crit_edge, %write_regm.exit.thread
  %regmap.i43 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %regmap.i43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i43, align 4
  %call.i44 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 0, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %if.end.i46.write_regm.exit59_crit_edge, label %write_regm.exit59.thread

if.end.i46.write_regm.exit59_crit_edge:           ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regm.exit59

write_regm.exit59.thread:                         ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 32, ptr %lastaddress.i.i, align 1
  %arrayidx23.i49 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 32
  %41 = ptrtoint ptr %arrayidx23.i49 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx23.i49, align 1
  %43 = and i8 %42, 127
  store i8 %43, ptr %arrayidx23.i49, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i60) #6
  %44 = ptrtoint ptr %regval.i60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %regval.i60, align 4, !annotation !73
  br label %if.end.i66

write_regm.exit59:                                ; preds = %if.end.i46.write_regm.exit59_crit_edge, %write_regm.exit.write_regm.exit59_crit_edge
  %45 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 32, ptr %lastaddress.i.i, align 1
  %arrayidx23.i4989 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 32
  %46 = ptrtoint ptr %arrayidx23.i4989 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx23.i4989, align 1
  %or.i5191 = or i8 %47, -128
  store i8 %or.i5191, ptr %arrayidx23.i4989, align 1
  %regmap33.i54 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %regmap33.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap33.i54, align 4
  %conv37.i55 = zext i8 %or.i5191 to i32
  %call38.i56 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 1, i32 noundef %conv37.i55) #6
  %50 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %.pr103 = load i8, ptr %lastaddress.i.i, align 1
  %51 = ptrtoint ptr %arrayidx23.i4989 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx23.i4989, align 1
  %53 = and i8 %52, 127
  store i8 %53, ptr %arrayidx23.i4989, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i60) #6
  %54 = ptrtoint ptr %regval.i60 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %regval.i60, align 4, !annotation !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %.pr103)
  %cmp.not.i62 = icmp eq i8 %.pr103, 6
  br i1 %cmp.not.i62, label %write_regm.exit59.if.end19.i73_crit_edge, label %write_regm.exit59.if.end.i66_crit_edge

write_regm.exit59.if.end.i66_crit_edge:           ; preds = %write_regm.exit59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i66

write_regm.exit59.if.end19.i73_crit_edge:         ; preds = %write_regm.exit59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i73

if.end.i66:                                       ; preds = %write_regm.exit59.if.end.i66_crit_edge, %write_regm.exit59.thread
  %regmap.i63 = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %regmap.i63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i63, align 4
  %call.i64 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 0, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool.not.i65, label %if.end.i66.if.end19.i73_crit_edge, label %if.end19.i73.thread

if.end.i66.if.end19.i73_crit_edge:                ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i73

if.end19.i73.thread:                              ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 6, ptr %lastaddress.i.i, align 1
  %arrayidx23.i6997 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 6
  %58 = ptrtoint ptr %arrayidx23.i6997 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx23.i6997, align 1
  %or.i7199 = or i8 %59, 7
  store i8 %or.i7199, ptr %arrayidx23.i6997, align 1
  br label %write_regm.exit79

if.end19.i73:                                     ; preds = %if.end.i66.if.end19.i73_crit_edge, %write_regm.exit59.if.end19.i73_crit_edge
  %regmap16.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %regmap16.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap16.i, align 4
  %call17.i = call i32 @regmap_read(ptr noundef %61, i32 noundef 1, ptr noundef nonnull %regval.i60) #6
  %62 = ptrtoint ptr %regval.i60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %regval.i60, align 4
  %conv18.i = trunc i32 %63 to i8
  %arrayidx.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 6
  %64 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 6, ptr %lastaddress.i.i, align 1
  %or.i71 = or i8 %conv18.i, 7
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %or.i71, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool31.not.i72 = icmp eq i32 %call17.i, 0
  br i1 %tobool31.not.i72, label %if.then32.i77, label %if.end19.i73.write_regm.exit79_crit_edge

if.end19.i73.write_regm.exit79_crit_edge:         ; preds = %if.end19.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regm.exit79

if.then32.i77:                                    ; preds = %if.end19.i73
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %regmap16.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap16.i, align 4
  %conv37.i75 = zext i8 %or.i71 to i32
  %call38.i76 = call i32 @regmap_write(ptr noundef %67, i32 noundef 1, i32 noundef %conv37.i75) #6
  br label %write_regm.exit79

write_regm.exit79:                                ; preds = %if.then32.i77, %if.end19.i73.write_regm.exit79_crit_edge, %if.end19.i73.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i60) #6
  %mode = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 8
  %68 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %mode, align 4
  %write_busy = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 11
  %69 = ptrtoint ptr %write_busy to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %write_busy, align 4
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slot_ts_enable(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %lock = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %lastaddress.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lastaddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 9
  br i1 %cmp.not.i, label %entry.if.then32.i_crit_edge, label %if.end.i

entry.if.then32.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

if.end.i:                                         ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then32.i_crit_edge, label %if.end19.i

if.end.i.if.then32.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %lastaddress.i, align 1
  %arrayidx23.i = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 9
  %7 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx23.i, align 1
  %and.i = and i8 %8, -9
  store i8 %and.i, ptr %arrayidx23.i, align 1
  br label %write_regm.exit

if.then32.i:                                      ; preds = %if.end.i.if.then32.i_crit_edge, %entry.if.then32.i_crit_edge
  %9 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 9, ptr %lastaddress.i, align 1
  %arrayidx23.i7 = getelementptr %struct.cxd, ptr %1, i32 0, i32 4, i32 9
  %10 = ptrtoint ptr %arrayidx23.i7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23.i7, align 1
  %and.i8 = and i8 %11, -9
  store i8 %and.i8, ptr %arrayidx23.i7, align 1
  %regmap33.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %regmap33.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap33.i, align 4
  %conv37.i = zext i8 %and.i8 to i32
  %call38.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 1, i32 noundef %conv37.i) #6
  br label %write_regm.exit

write_regm.exit:                                  ; preds = %if.then32.i, %if.end19.i
  tail call fastcc void @set_mode(ptr noundef %1, i32 noundef 0)
  tail call fastcc void @cam_mode(ptr noundef %1, i32 noundef 1)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @poll_slot_status(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %open) #2 align 64 {
entry:
  %slotstat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slotstat) #6
  %2 = ptrtoint ptr %slotstat to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %slotstat, align 1, !annotation !73
  %lock = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call fastcc void @campoll(ptr noundef %1)
  %lastaddress.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not.i.i = icmp eq i8 %4, 1
  br i1 %cmp.not.i.i, label %entry.if.then4.i.i_crit_edge, label %if.then.i.i

entry.if.then4.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i

if.then.i.i:                                      ; preds = %entry
  %regmap.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %phi.cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %phi.cmp.i.i, label %if.then.i.i.if.then4.i.i_crit_edge, label %if.then.i.i.read_reg.exit_crit_edge

if.then.i.i.read_reg.exit_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

if.then.i.i.if.then4.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i.if.then4.i.i_crit_edge, %entry.if.then4.i.i_crit_edge
  %7 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %lastaddress.i.i, align 1
  %max_i2c.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 1, i32 3
  %regmap17.i.i = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then4.i.i
  %data.addr.0.i.i = phi ptr [ %slotstat, %if.then4.i.i ], [ %add.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %n.addr.0.i.i = phi i16 [ 1, %if.then4.i.i ], [ %conv23.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %n.addr.0.i.i)
  %tobool6.not.i.i = icmp eq i16 %n.addr.0.i.i, 0
  br i1 %tobool6.not.i.i, label %while.cond.i.i.read_reg.exit_crit_edge, label %while.body.i.i

while.cond.i.i.read_reg.exit_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %conv7.i.i = zext i16 %n.addr.0.i.i to i32
  %8 = ptrtoint ptr %max_i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_i2c.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not.i.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv7.i.i)
  %cmp11.i.i = icmp ult i32 %9, %conv7.i.i
  %or.cond.i.i = select i1 %tobool8.not.i.i, i1 %cmp11.i.i, i1 false
  %len.0.i.i = select i1 %or.cond.i.i, i32 %9, i32 %conv7.i.i
  %10 = ptrtoint ptr %regmap17.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap17.i.i, align 4
  %call18.i.i = call i32 @regmap_raw_read(ptr noundef %11, i32 noundef 1, ptr noundef %data.addr.0.i.i, i32 noundef %len.0.i.i) #6
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  %add.ptr.i.i = getelementptr i8, ptr %data.addr.0.i.i, i32 %len.0.i.i
  %12 = trunc i32 %len.0.i.i to i16
  %conv23.i.i = sub i16 %n.addr.0.i.i, %12
  br i1 %tobool19.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.read_reg.exit_crit_edge

while.body.i.i.read_reg.exit_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

read_reg.exit:                                    ; preds = %while.body.i.i.read_reg.exit_crit_edge, %while.cond.i.i.read_reg.exit_crit_edge, %if.then.i.i.read_reg.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  %slot_stat = getelementptr inbounds %struct.cxd, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %slot_stat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slot_stat, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slotstat) #6
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_mode(ptr nocapture noundef %ci, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  %regval.i10 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 8
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mode)
  %cmp = icmp eq i32 %1, %mode
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %mode, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #6
  %3 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %regval.i, align 4, !annotation !73
  %lastaddress.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 5
  %4 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lastaddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 6
  br i1 %cmp.not.i, label %sw.bb.if.end19.i_crit_edge, label %if.end.i

sw.bb.if.end19.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.end.i:                                         ; preds = %sw.bb
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.end19.i.thread

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.end19.i.thread:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %lastaddress.i, align 1
  %arrayidx23.i34 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 6
  %9 = ptrtoint ptr %arrayidx23.i34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx23.i34, align 1
  %and.i35 = and i8 %10, -8
  store i8 %and.i35, ptr %arrayidx23.i34, align 1
  br label %write_regm.exit

if.end19.i:                                       ; preds = %if.end.i.if.end19.i_crit_edge, %sw.bb.if.end19.i_crit_edge
  %regmap16.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %11 = ptrtoint ptr %regmap16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap16.i, align 4
  %call17.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 1, ptr noundef nonnull %regval.i) #6
  %13 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval.i, align 4
  %conv18.i = trunc i32 %14 to i8
  %arrayidx.i = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 6, ptr %lastaddress.i, align 1
  %and.i = and i8 %conv18.i, -8
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %and.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool31.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.end19.i.write_regm.exit_crit_edge

if.end19.i.write_regm.exit_crit_edge:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regm.exit

if.then32.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %regmap16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap16.i, align 4
  %conv37.i = zext i8 %and.i to i32
  %call38.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 1, i32 noundef %conv37.i) #6
  br label %write_regm.exit

write_regm.exit:                                  ; preds = %if.then32.i, %if.end19.i.write_regm.exit_crit_edge, %if.end19.i.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i10) #6
  %19 = ptrtoint ptr %regval.i10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %regval.i10, align 4, !annotation !73
  %lastaddress.i11 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 5
  %20 = ptrtoint ptr %lastaddress.i11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lastaddress.i11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %cmp.not.i12 = icmp eq i8 %21, 6
  br i1 %cmp.not.i12, label %sw.bb2.if.end19.i26_crit_edge, label %if.end.i16

sw.bb2.if.end19.i26_crit_edge:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i26

if.end.i16:                                       ; preds = %sw.bb2
  %regmap.i13 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %22 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i13, align 4
  %call.i14 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 0, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.end.i16.if.end19.i26_crit_edge, label %if.end19.i26.thread

if.end.i16.if.end19.i26_crit_edge:                ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i26

if.end19.i26.thread:                              ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %lastaddress.i11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %lastaddress.i11, align 1
  %arrayidx23.i2338 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %arrayidx23.i2338 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx23.i2338, align 1
  %and.i2439 = and i8 %26, -8
  %or.i40 = or i8 %and.i2439, 2
  store i8 %or.i40, ptr %arrayidx23.i2338, align 1
  br label %write_regm.exit32

if.end19.i26:                                     ; preds = %if.end.i16.if.end19.i26_crit_edge, %sw.bb2.if.end19.i26_crit_edge
  %regmap16.i18 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %27 = ptrtoint ptr %regmap16.i18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap16.i18, align 4
  %call17.i19 = call i32 @regmap_read(ptr noundef %28, i32 noundef 1, ptr noundef nonnull %regval.i10) #6
  %29 = ptrtoint ptr %regval.i10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regval.i10, align 4
  %conv18.i20 = trunc i32 %30 to i8
  %arrayidx.i21 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %lastaddress.i11 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %lastaddress.i11, align 1
  %and.i24 = and i8 %conv18.i20, -8
  %or.i = or i8 %and.i24, 2
  %32 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or.i, ptr %arrayidx.i21, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i19)
  %tobool31.not.i25 = icmp eq i32 %call17.i19, 0
  br i1 %tobool31.not.i25, label %if.then32.i30, label %if.end19.i26.write_regm.exit32_crit_edge

if.end19.i26.write_regm.exit32_crit_edge:         ; preds = %if.end19.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regm.exit32

if.then32.i30:                                    ; preds = %if.end19.i26
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %regmap16.i18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap16.i18, align 4
  %conv37.i28 = zext i8 %or.i to i32
  %call38.i29 = call i32 @regmap_write(ptr noundef %34, i32 noundef 1, i32 noundef %conv37.i28) #6
  br label %write_regm.exit32

write_regm.exit32:                                ; preds = %if.then32.i30, %if.end19.i26.write_regm.exit32_crit_edge, %if.end19.i26.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i10) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %write_regm.exit32, %write_regm.exit, %if.end.sw.epilog_crit_edge
  %35 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mode, ptr %mode1, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_regm(ptr nocapture noundef %ci, i8 noundef zeroext %reg, i8 noundef zeroext %val, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !73
  %lastaddress = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 5
  %1 = ptrtoint ptr %lastaddress to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %lastaddress, align 1
  %conv1 = zext i8 %reg to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %reg)
  %cmp.not = icmp eq i8 %2, %reg
  br i1 %cmp.not, label %entry.land.lhs.true_crit_edge, label %if.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 0, i32 noundef %conv1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %5 = add i8 %reg, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %5)
  %6 = icmp ult i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %mask)
  %cmp13.not = icmp eq i8 %mask, -1
  %or.cond73 = or i1 %6, %cmp13.not
  br i1 %or.cond73, label %land.lhs.true.if.end19_crit_edge, label %if.then15

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %regmap16 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %7 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap16, align 4
  %call17 = call i32 @regmap_read(ptr noundef %8, i32 noundef 1, ptr noundef nonnull %regval) #6
  %9 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regval, align 4
  %conv18 = trunc i32 %10 to i8
  %arrayidx = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 %conv1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv18, ptr %arrayidx, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %status.1 = phi i32 [ %call, %if.end.if.end19_crit_edge ], [ %call17, %if.then15 ], [ 0, %land.lhs.true.if.end19_crit_edge ]
  %12 = ptrtoint ptr %lastaddress to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %reg, ptr %lastaddress, align 1
  %arrayidx23 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 %conv1
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx23, align 1
  %neg = xor i8 %mask, -1
  %and = and i8 %14, %neg
  %or = or i8 %and, %val
  store i8 %or, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %tobool31.not = icmp eq i32 %status.1, 0
  br i1 %tobool31.not, label %if.then32, label %if.end19.if.end39_crit_edge

if.end19.if.end39_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %regmap33 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %15 = ptrtoint ptr %regmap33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap33, align 4
  %conv37 = zext i8 %or to i32
  %call38 = call i32 @regmap_write(ptr noundef %16, i32 noundef 1, i32 noundef %conv37) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.end19.if.end39_crit_edge
  %status.2 = phi i32 [ %status.1, %if.end19.if.end39_crit_edge ], [ %call38, %if.then32 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %reg)
  %cmp41 = icmp eq i8 %reg, 32
  br i1 %cmp41, label %if.then43, label %if.end39.if.end50_crit_edge

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx23, align 1
  %19 = and i8 %18, 127
  store i8 %19, ptr %arrayidx23, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %if.end39.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %status.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @campoll(ptr noundef %ci) unnamed_addr #2 align 64 {
entry:
  %istat = alloca i8, align 1
  %slotstat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %istat) #6
  %0 = ptrtoint ptr %istat to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %istat, align 1, !annotation !73
  %lastaddress.i.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 5
  %1 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %cmp.not.i.i = icmp eq i8 %2, 4
  br i1 %cmp.not.i.i, label %entry.if.then4.i.i_crit_edge, label %if.then.i.i

entry.if.then4.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i

if.then.i.i:                                      ; preds = %entry
  %regmap.i.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 0, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %phi.cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %phi.cmp.i.i, label %if.then.i.i.if.then4.i.i_crit_edge, label %if.then.i.i.read_reg.exit_crit_edge

if.then.i.i.read_reg.exit_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

if.then.i.i.if.then4.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i.if.then4.i.i_crit_edge, %entry.if.then4.i.i_crit_edge
  %5 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %lastaddress.i.i, align 1
  %max_i2c.i.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 1, i32 3
  %regmap17.i.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then4.i.i
  %data.addr.0.i.i = phi ptr [ %istat, %if.then4.i.i ], [ %add.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %n.addr.0.i.i = phi i16 [ 1, %if.then4.i.i ], [ %conv23.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %n.addr.0.i.i)
  %tobool6.not.i.i = icmp eq i16 %n.addr.0.i.i, 0
  br i1 %tobool6.not.i.i, label %while.cond.i.i.read_reg.exit_crit_edge, label %while.body.i.i

while.cond.i.i.read_reg.exit_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %conv7.i.i = zext i16 %n.addr.0.i.i to i32
  %6 = ptrtoint ptr %max_i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_i2c.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not.i.i = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv7.i.i)
  %cmp11.i.i = icmp ult i32 %7, %conv7.i.i
  %or.cond.i.i = select i1 %tobool8.not.i.i, i1 %cmp11.i.i, i1 false
  %len.0.i.i = select i1 %or.cond.i.i, i32 %7, i32 %conv7.i.i
  %8 = ptrtoint ptr %regmap17.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap17.i.i, align 4
  %call18.i.i = call i32 @regmap_raw_read(ptr noundef %9, i32 noundef 1, ptr noundef %data.addr.0.i.i, i32 noundef %len.0.i.i) #6
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  %add.ptr.i.i = getelementptr i8, ptr %data.addr.0.i.i, i32 %len.0.i.i
  %10 = trunc i32 %len.0.i.i to i16
  %conv23.i.i = sub i16 %n.addr.0.i.i, %10
  br i1 %tobool19.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.read_reg.exit_crit_edge

while.body.i.i.read_reg.exit_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

read_reg.exit:                                    ; preds = %while.body.i.i.read_reg.exit_crit_edge, %while.cond.i.i.read_reg.exit_crit_edge, %if.then.i.i.read_reg.exit_crit_edge
  %11 = ptrtoint ptr %istat to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %istat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %read_reg.exit.cleanup_crit_edge, label %if.end

read_reg.exit.cleanup_crit_edge:                  ; preds = %read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %read_reg.exit
  %13 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %cmp.not.i.i2 = icmp eq i8 %14, 5
  br i1 %cmp.not.i.i2, label %if.end.if.then32.i.i_crit_edge, label %if.end.i.i

if.end.if.then32.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i

if.end.i.i:                                       ; preds = %if.end
  %regmap.i.i3 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %15 = ptrtoint ptr %regmap.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i3, align 4
  %call.i.i4 = call i32 @regmap_write(ptr noundef %16, i32 noundef 0, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %tobool.not.i.i = icmp eq i32 %call.i.i4, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then32.i.i_crit_edge, label %if.end19.i.i

if.end.i.i.if.then32.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i.i

if.end19.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 5, ptr %lastaddress.i.i, align 1
  %arrayidx23.i.i = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 5
  %18 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %12, ptr %arrayidx23.i.i, align 1
  br label %write_reg.exit

if.then32.i.i:                                    ; preds = %if.end.i.i.if.then32.i.i_crit_edge, %if.end.if.then32.i.i_crit_edge
  %19 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %lastaddress.i.i, align 1
  %arrayidx23.i2.i = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 5
  %20 = ptrtoint ptr %arrayidx23.i2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %12, ptr %arrayidx23.i2.i, align 1
  %regmap33.i.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %21 = ptrtoint ptr %regmap33.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap33.i.i, align 4
  %conv37.i.i = zext i8 %12 to i32
  %call38.i.i = call i32 @regmap_write(ptr noundef %22, i32 noundef 1, i32 noundef %conv37.i.i) #6
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %if.then32.i.i, %if.end19.i.i
  %23 = ptrtoint ptr %istat to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %istat, align 1
  %25 = and i8 %24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not = icmp eq i8 %25, 0
  br i1 %tobool2.not, label %write_reg.exit.if.end4_crit_edge, label %if.then3

write_reg.exit.if.end4_crit_edge:                 ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dr = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 10
  %26 = ptrtoint ptr %dr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %dr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %write_reg.exit.if.end4_crit_edge
  %27 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool7.not = icmp eq i8 %27, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %write_busy = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 11
  %28 = ptrtoint ptr %write_busy to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %write_busy, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %29 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool12.not = icmp eq i8 %29, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.then13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slotstat) #6
  %30 = ptrtoint ptr %slotstat to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %slotstat, align 1, !annotation !73
  %31 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp.not.i.i6 = icmp eq i8 %32, 1
  br i1 %cmp.not.i.i6, label %if.then13.if.then4.i.i13_crit_edge, label %if.then.i.i10

if.then13.if.then4.i.i13_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i13

if.then.i.i10:                                    ; preds = %if.then13
  %regmap.i.i7 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %33 = ptrtoint ptr %regmap.i.i7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i.i7, align 4
  %call.i.i8 = call i32 @regmap_write(ptr noundef %34, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %phi.cmp.i.i9 = icmp eq i32 %call.i.i8, 0
  br i1 %phi.cmp.i.i9, label %if.then.i.i10.if.then4.i.i13_crit_edge, label %if.then.i.i10.read_reg.exit28_crit_edge

if.then.i.i10.read_reg.exit28_crit_edge:          ; preds = %if.then.i.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit28

if.then.i.i10.if.then4.i.i13_crit_edge:           ; preds = %if.then.i.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i13

if.then4.i.i13:                                   ; preds = %if.then.i.i10.if.then4.i.i13_crit_edge, %if.then13.if.then4.i.i13_crit_edge
  %35 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %lastaddress.i.i, align 1
  %max_i2c.i.i11 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 1, i32 3
  %regmap17.i.i12 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  br label %while.cond.i.i17

while.cond.i.i17:                                 ; preds = %while.body.i.i27.while.cond.i.i17_crit_edge, %if.then4.i.i13
  %data.addr.0.i.i14 = phi ptr [ %slotstat, %if.then4.i.i13 ], [ %add.ptr.i.i25, %while.body.i.i27.while.cond.i.i17_crit_edge ]
  %n.addr.0.i.i15 = phi i16 [ 1, %if.then4.i.i13 ], [ %conv23.i.i26, %while.body.i.i27.while.cond.i.i17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %n.addr.0.i.i15)
  %tobool6.not.i.i16 = icmp eq i16 %n.addr.0.i.i15, 0
  br i1 %tobool6.not.i.i16, label %while.cond.i.i17.read_reg.exit28_crit_edge, label %while.body.i.i27

while.cond.i.i17.read_reg.exit28_crit_edge:       ; preds = %while.cond.i.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit28

while.body.i.i27:                                 ; preds = %while.cond.i.i17
  %conv7.i.i18 = zext i16 %n.addr.0.i.i15 to i32
  %36 = ptrtoint ptr %max_i2c.i.i11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_i2c.i.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool8.not.i.i19 = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv7.i.i18)
  %cmp11.i.i20 = icmp ult i32 %37, %conv7.i.i18
  %or.cond.i.i21 = select i1 %tobool8.not.i.i19, i1 %cmp11.i.i20, i1 false
  %len.0.i.i22 = select i1 %or.cond.i.i21, i32 %37, i32 %conv7.i.i18
  %38 = ptrtoint ptr %regmap17.i.i12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap17.i.i12, align 4
  %call18.i.i23 = call i32 @regmap_raw_read(ptr noundef %39, i32 noundef 1, ptr noundef %data.addr.0.i.i14, i32 noundef %len.0.i.i22) #6
  %tobool19.not.i.i24 = icmp eq i32 %call18.i.i23, 0
  %add.ptr.i.i25 = getelementptr i8, ptr %data.addr.0.i.i14, i32 %len.0.i.i22
  %40 = trunc i32 %len.0.i.i22 to i16
  %conv23.i.i26 = sub i16 %n.addr.0.i.i15, %40
  br i1 %tobool19.not.i.i24, label %while.body.i.i27.while.cond.i.i17_crit_edge, label %while.body.i.i27.read_reg.exit28_crit_edge

while.body.i.i27.read_reg.exit28_crit_edge:       ; preds = %while.body.i.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit28

while.body.i.i27.while.cond.i.i17_crit_edge:      ; preds = %while.body.i.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i17

read_reg.exit28:                                  ; preds = %while.body.i.i27.read_reg.exit28_crit_edge, %while.cond.i.i17.read_reg.exit28_crit_edge, %if.then.i.i10.read_reg.exit28_crit_edge
  %41 = ptrtoint ptr %slotstat to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %slotstat, align 1
  %43 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool17.not = icmp eq i8 %43, 0
  %slot_stat = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 12
  %44 = ptrtoint ptr %slot_stat to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %slot_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool19.not = icmp eq i32 %45, 0
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %read_reg.exit28
  br i1 %tobool19.not, label %if.then20, label %if.then18.if.end30_crit_edge

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then20:                                        ; preds = %if.then18
  %46 = ptrtoint ptr %slot_stat to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %slot_stat, align 4
  %47 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %lastaddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %48)
  %cmp.not.i = icmp eq i8 %48, 3
  br i1 %cmp.not.i, label %if.then20.if.then32.i_crit_edge, label %if.end.i

if.then20.if.then32.i_crit_edge:                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

if.end.i:                                         ; preds = %if.then20
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 0, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then32.i_crit_edge, label %if.end19.i

if.end.i.if.then32.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %lastaddress.i.i, align 1
  %arrayidx23.i = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 3
  %52 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx23.i, align 1
  %or.i = or i8 %53, 8
  store i8 %or.i, ptr %arrayidx23.i, align 1
  br label %if.end30

if.then32.i:                                      ; preds = %if.end.i.if.then32.i_crit_edge, %if.then20.if.then32.i_crit_edge
  %54 = ptrtoint ptr %lastaddress.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %lastaddress.i.i, align 1
  %arrayidx23.i30 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 3
  %55 = ptrtoint ptr %arrayidx23.i30 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx23.i30, align 1
  %or.i32 = or i8 %56, 8
  store i8 %or.i32, ptr %arrayidx23.i30, align 1
  %regmap33.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %57 = ptrtoint ptr %regmap33.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap33.i, align 4
  %conv37.i = zext i8 %or.i32 to i32
  %call38.i = call i32 @regmap_write(ptr noundef %58, i32 noundef 1, i32 noundef %conv37.i) #6
  br label %if.end30

if.else:                                          ; preds = %read_reg.exit28
  br i1 %tobool19.not, label %if.else.if.end30_crit_edge, label %if.then26

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %slot_stat to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %slot_stat, align 4
  %call28 = call fastcc i32 @write_regm(ptr noundef %ci, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 8)
  %client = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 2
  %60 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  %ready = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 9
  %62 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %ready, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.else.if.end30_crit_edge, %if.then32.i, %if.end19.i, %if.then18.if.end30_crit_edge
  %63 = ptrtoint ptr %istat to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %istat, align 1
  %65 = and i8 %64, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool33.not = icmp eq i8 %65, 0
  br i1 %tobool33.not, label %if.end30.if.end40_crit_edge, label %land.lhs.true

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end30
  %slot_stat34 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 12
  %66 = ptrtoint ptr %slot_stat34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %slot_stat34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp = icmp eq i32 %67, 1
  br i1 %cmp, label %if.then36, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %ready37 = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 9
  %68 = ptrtoint ptr %ready37 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %ready37, align 4
  %69 = ptrtoint ptr %slot_stat34 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 5, ptr %slot_stat34, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %land.lhs.true.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slotstat) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end9.cleanup_crit_edge, %read_reg.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %istat) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_reg(ptr nocapture noundef %ci, i8 noundef zeroext %reg, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lastaddress.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 5
  %0 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lastaddress.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %reg)
  %cmp.not.i = icmp eq i8 %1, %reg
  br i1 %cmp.not.i, label %entry.if.then4.i_crit_edge, label %if.then.i

entry.if.then4.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.then.i:                                        ; preds = %entry
  %conv1.i = zext i8 %reg to i32
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef %conv1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp.i = icmp eq i32 %call.i, 0
  br i1 %phi.cmp.i, label %if.then.i.if.then4.i_crit_edge, label %if.then.i.read_block.exit_crit_edge

if.then.i.read_block.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_block.exit

if.then.i.if.then4.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i.if.then4.i_crit_edge, %entry.if.then4.i_crit_edge
  %4 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %reg, ptr %lastaddress.i, align 1
  %max_i2c.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 1, i32 3
  %regmap17.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then4.i
  %data.addr.0.i = phi ptr [ %val, %if.then4.i ], [ %add.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %n.addr.0.i = phi i16 [ 1, %if.then4.i ], [ %conv23.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %n.addr.0.i)
  %tobool6.not.i = icmp eq i16 %n.addr.0.i, 0
  br i1 %tobool6.not.i, label %while.cond.i.read_block.exit_crit_edge, label %while.body.i

while.cond.i.read_block.exit_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_block.exit

while.body.i:                                     ; preds = %while.cond.i
  %conv7.i = zext i16 %n.addr.0.i to i32
  %5 = ptrtoint ptr %max_i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_i2c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not.i = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv7.i)
  %cmp11.i = icmp ult i32 %6, %conv7.i
  %or.cond.i = select i1 %tobool8.not.i, i1 %cmp11.i, i1 false
  %len.0.i = select i1 %or.cond.i, i32 %6, i32 %conv7.i
  %7 = ptrtoint ptr %regmap17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap17.i, align 4
  %call18.i = tail call i32 @regmap_raw_read(ptr noundef %8, i32 noundef 1, ptr noundef %data.addr.0.i, i32 noundef %len.0.i) #6
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  %add.ptr.i = getelementptr i8, ptr %data.addr.0.i, i32 %len.0.i
  %9 = trunc i32 %len.0.i to i16
  %conv23.i = sub i16 %n.addr.0.i, %9
  br i1 %tobool19.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.read_block.exit_crit_edge

while.body.i.read_block.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_block.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

read_block.exit:                                  ; preds = %while.body.i.read_block.exit_crit_edge, %while.cond.i.read_block.exit_crit_edge, %if.then.i.read_block.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_reg(ptr nocapture noundef %ci, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lastaddress.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 5
  %0 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lastaddress.i, align 1
  %conv1.i = zext i8 %reg to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %reg)
  %cmp.not.i = icmp eq i8 %1, %reg
  br i1 %cmp.not.i, label %entry.if.then32.i_crit_edge, label %if.end.i

entry.if.then32.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

if.end.i:                                         ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef %conv1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then32.i_crit_edge, label %if.end19.i

if.end.i.if.then32.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %reg, ptr %lastaddress.i, align 1
  %arrayidx23.i = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 %conv1.i
  %5 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %val, ptr %arrayidx23.i, align 1
  br label %if.end39.i

if.then32.i:                                      ; preds = %if.end.i.if.then32.i_crit_edge, %entry.if.then32.i_crit_edge
  %6 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %reg, ptr %lastaddress.i, align 1
  %arrayidx23.i2 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 %conv1.i
  %7 = ptrtoint ptr %arrayidx23.i2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %val, ptr %arrayidx23.i2, align 1
  %regmap33.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %8 = ptrtoint ptr %regmap33.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap33.i, align 4
  %conv37.i = zext i8 %val to i32
  %call38.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 1, i32 noundef %conv37.i) #6
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then32.i, %if.end19.i
  %arrayidx23.i4 = phi ptr [ %arrayidx23.i, %if.end19.i ], [ %arrayidx23.i2, %if.then32.i ]
  %status.2.i = phi i32 [ %call.i, %if.end19.i ], [ %call38.i, %if.then32.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %reg)
  %cmp41.i = icmp eq i8 %reg, 32
  br i1 %cmp41.i, label %if.then43.i, label %if.end39.i.write_regm.exit_crit_edge

if.end39.i.write_regm.exit_crit_edge:             ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regm.exit

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx23.i4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23.i4, align 1
  %12 = and i8 %11, 127
  store i8 %12, ptr %arrayidx23.i4, align 1
  br label %write_regm.exit

write_regm.exit:                                  ; preds = %if.then43.i, %if.end39.i.write_regm.exit_crit_edge
  ret i32 %status.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cam_mode(ptr nocapture noundef %ci, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #6
  %0 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %dummy, align 1, !annotation !73
  %cammode = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 15
  %1 = ptrtoint ptr %cammode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cammode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %mode)
  %cmp = icmp eq i32 %2, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mode, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %lastaddress.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 5
  %4 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lastaddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 32
  br i1 %cmp.not.i, label %sw.bb.if.then32.i_crit_edge, label %if.end.i

sw.bb.if.then32.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

if.end.i:                                         ; preds = %sw.bb
  %regmap.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then32.i_crit_edge, label %if.end19.i

if.end.i.if.then32.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %lastaddress.i, align 1
  %arrayidx23.i = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 32
  %9 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx23.i, align 1
  %or.i = or i8 %10, -128
  store i8 %or.i, ptr %arrayidx23.i, align 1
  br label %write_regm.exit

if.then32.i:                                      ; preds = %if.end.i.if.then32.i_crit_edge, %sw.bb.if.then32.i_crit_edge
  %11 = ptrtoint ptr %lastaddress.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 32, ptr %lastaddress.i, align 1
  %arrayidx23.i23 = getelementptr %struct.cxd, ptr %ci, i32 0, i32 4, i32 32
  %12 = ptrtoint ptr %arrayidx23.i23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23.i23, align 1
  %or.i25 = or i8 %13, -128
  store i8 %or.i25, ptr %arrayidx23.i23, align 1
  %regmap33.i = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 3
  %14 = ptrtoint ptr %regmap33.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap33.i, align 4
  %conv37.i = zext i8 %or.i25 to i32
  %call38.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 1, i32 noundef %conv37.i) #6
  br label %write_regm.exit

write_regm.exit:                                  ; preds = %if.then32.i, %if.end19.i
  %arrayidx23.i27 = phi ptr [ %arrayidx23.i, %if.end19.i ], [ %arrayidx23.i23, %if.then32.i ]
  %16 = ptrtoint ptr %arrayidx23.i27 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx23.i27, align 1
  %18 = and i8 %17, 127
  store i8 %18, ptr %arrayidx23.i27, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %read_data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ci, i32 0, i32 5
  %19 = ptrtoint ptr %read_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_data, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %sw.bb1.cleanup_crit_edge, label %if.end3

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %write_busy = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 11
  %21 = ptrtoint ptr %write_busy to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %write_busy, align 4
  %client = getelementptr inbounds %struct.cxd, ptr %ci, i32 0, i32 2
  %22 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  %call4 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 13, i8 noundef zeroext 0)
  %call5 = tail call fastcc i32 @write_reg(ptr noundef %ci, i8 noundef zeroext 14, i8 noundef zeroext 1)
  %call6 = tail call fastcc i32 @write_regm(ptr noundef %ci, i8 noundef zeroext 8, i8 noundef zeroext 64, i8 noundef zeroext 64)
  call fastcc void @read_reg(ptr noundef %ci, i8 noundef zeroext 18, ptr noundef nonnull %dummy)
  %call8 = call fastcc i32 @write_regm(ptr noundef %ci, i8 noundef zeroext 8, i8 noundef zeroext -128, i8 noundef zeroext -128)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end3, %write_regm.exit, %if.end.sw.epilog_crit_edge
  %24 = ptrtoint ptr %cammode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mode, ptr %cammode, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__param_buffermode, !1, !"__param_buffermode", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_buffermodetype290, !1, !"__UNIQUE_ID_buffermodetype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_buffermode291, !4, !"__UNIQUE_ID_buffermode291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 22, i32 1}
!5 = !{ptr @__initcall__kmod_cxd2099__293_692_cxd2099_driver_init6, !6, !"__initcall__kmod_cxd2099__293_692_cxd2099_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 692, i32 1}
!7 = !{ptr @__exitcall_cxd2099_driver_exit, !6, !"__exitcall_cxd2099_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description294, !9, !"__UNIQUE_ID_description294", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 694, i32 1}
!10 = !{ptr @__UNIQUE_ID_author295, !11, !"__UNIQUE_ID_author295", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 695, i32 1}
!12 = !{ptr @__UNIQUE_ID_file296, !13, !"__UNIQUE_ID_file296", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 696, i32 1}
!14 = !{ptr @__UNIQUE_ID_license297, !13, !"__UNIQUE_ID_license297", i1 false, i1 false}
!15 = !{ptr @buffermode, !16, !"buffermode", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 20, i32 12}
!17 = !{ptr @__param_str_buffermode, !1, !"__param_str_buffermode", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 685, i32 11}
!20 = !{ptr @cxd2099_driver, !21, !"cxd2099_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 683, i32 26}
!22 = !{ptr @cxd2099_probe.rm_cfg, !23, !"rm_cfg", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 606, i32 36}
!24 = !{ptr @cxd2099_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 622, i32 15}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 630, i32 3}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cxd2099_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @cxd2099_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @cxd2099_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 635, i32 2}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 643, i32 2}
!40 = !{ptr @cxd2099_probe._entry.8, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cxd2099_probe._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 651, i32 3}
!44 = !{ptr @cxd2099_probe._entry.11, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cxd2099_probe._entry_ptr.13, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @en_templ, !47, !"en_templ", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 588, i32 36}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 518, i32 5}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @campoll._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @campoll._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 214, i32 3}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cam_mode._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @cam_mode._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 459, i32 2}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @slot_shutdown.__UNIQUE_ID_ddebug292, !59, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!62 = !{ptr @cxd2099_id, !63, !"cxd2099_id", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/cxd2099.c", i32 677, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 2148213533, i64 2148213538, i64 2148213551, i64 2148213595, i64 2148213629, i64 2148213650}
