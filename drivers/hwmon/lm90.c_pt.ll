; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm90.c_pt.bc'
source_filename = "../drivers/hwmon/lm90.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lm90_params = type { i32, i16, i8, i8 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.reg = type { i8, i8 }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.lm90_data = type { ptr, ptr, [4 x i32], %struct.hwmon_channel_info, [3 x ptr], %struct.hwmon_chip_info, %struct.mutex, i8, i32, i32, i32, i32, i8, i8, i8, i16, i8, i8, [8 x i8], [8 x i16], i8, i16 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@__initcall__kmod_lm90__311_2067_lm90_driver_init6 = internal global ptr @lm90_driver_init, section ".initcall6.init", align 4
@lm90_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm90_probe, ptr null, ptr @lm90_alert, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm90_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lm90_pm_ops, ptr null, ptr null }, ptr @lm90_id, ptr @lm90_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm90_driver_exit = internal global ptr @lm90_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author312 = internal constant [44 x i8] c"lm90.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [37 x i8] c"lm90.description=LM90/ADM1032 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [29 x i8] c"lm90.file=drivers/hwmon/lm90\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [17 x i8] c"lm90.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm90\00", [27 x i8] zeroinitializer }, align 32
@lm90_of_match = internal constant { [25 x %struct.of_device_id], [1244 x i8] } { [25 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adm1032\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7461\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7461a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gmt,g781\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm89\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm99\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6646\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6647\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6649\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6654\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6657\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6658\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6659\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6680\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6681\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6695\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,max6696\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,nct1008\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"winbond,w83l771\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,sa56004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 11 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp451\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp461\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 14 to ptr) }, %struct.of_device_id zeroinitializer], [1244 x i8] zeroinitializer }, align 32
@lm90_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @lm90_suspend, ptr @lm90_resume, ptr @lm90_suspend, ptr @lm90_resume, ptr @lm90_suspend, ptr @lm90_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lm90_id = internal constant { [25 x %struct.i2c_device_id], [136 x i8] } { [25 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm1032\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"adt7461\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"adt7461a\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"g781\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"lm90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"lm89\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"lm99\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max6646\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"max6647\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"max6649\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"max6654\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.i2c_device_id { [20 x i8] c"max6657\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max6658\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max6659\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"max6680\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"max6681\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"max6695\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"max6696\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"nct1008\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"w83l771\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"sa56004\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"tmp451\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"tmp461\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.i2c_device_id zeroinitializer], [136 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 24, i16 25, i16 26, i16 41, i16 42, i16 43, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 -2], [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@lm90_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1875, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lm90_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hwmon/lm90.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm90_probe._entry_ptr = internal global ptr @lm90_probe._entry, section ".printk_index", align 4
@lm90_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@lm90_params = internal constant { [16 x %struct.lm90_params], [32 x i8] } { [16 x %struct.lm90_params] [%struct.lm90_params { i32 1034, i16 123, i8 9, i8 0 }, %struct.lm90_params { i32 1162, i16 124, i8 10, i8 0 }, %struct.lm90_params { i32 1034, i16 123, i8 9, i8 0 }, %struct.lm90_params { i32 1034, i16 123, i8 9, i8 0 }, %struct.lm90_params { i32 1536, i16 124, i8 8, i8 17 }, %struct.lm90_params { i32 1040, i16 124, i8 8, i8 17 }, %struct.lm90_params { i32 1418, i16 124, i8 10, i8 0 }, %struct.lm90_params { i32 3202, i16 124, i8 7, i8 0 }, %struct.lm90_params { i32 1152, i16 124, i8 6, i8 17 }, %struct.lm90_params { i32 1034, i16 124, i8 8, i8 0 }, %struct.lm90_params { i32 1136, i16 7292, i8 6, i8 17 }, %struct.lm90_params { i32 1034, i16 123, i8 9, i8 34 }, %struct.lm90_params { i32 1162, i16 124, i8 7, i8 0 }, %struct.lm90_params { i32 1418, i16 124, i8 9, i8 21 }, %struct.lm90_params { i32 1418, i16 124, i8 9, i8 21 }, %struct.lm90_params { i32 128, i16 124, i8 7, i8 17 }], [32 x i8] zeroinitializer }, align 32
@lm90_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @lm90_is_visible, ptr @lm90_read, ptr null, ptr @lm90_write }, [16 x i8] zeroinitializer }, align 32
@lm90_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1964, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize device\0A\00", [35 x i8] zeroinitializer }, align 32
@lm90_probe._entry_ptr.10 = internal global ptr @lm90_probe._entry.8, section ".printk_index", align 4
@dev_attr_pec = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pec_show, ptr @pec_store }, [36 x i8] zeroinitializer }, align 32
@lm90_probe.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 1, i8 -15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IRQ: %d\0A\00", [23 x i8] zeroinitializer }, align 32
@lm90_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1995, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot request IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@lm90_probe._entry_ptr.14 = internal global ptr @lm90_probe._entry.12, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lm90_update_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 -59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm90_update_device\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Updating lm90 data.\0A\00", [43 x i8] zeroinitializer }, align 32
@lm90_update_device.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.4, ptr @.str.17, i8 0, i8 -43, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Re-enabling ALERT#\0A\00", [44 x i8] zeroinitializer }, align 32
@lm90_temp_index = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\04\00\05", [29 x i8] zeroinitializer }, align 32
@lm90_min_alarm_bits = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\05\03\0B", [29 x i8] zeroinitializer }, align 32
@lm90_max_alarm_bits = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\06\04\0C", [29 x i8] zeroinitializer }, align 32
@lm90_crit_alarm_bits_swapped = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\00\09", [29 x i8] zeroinitializer }, align 32
@lm90_crit_alarm_bits = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\01\09", [29 x i8] zeroinitializer }, align 32
@lm90_emergency_alarm_bits = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0F\0D\0E", [29 x i8] zeroinitializer }, align 32
@lm90_fault_bits = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\02\0A", [29 x i8] zeroinitializer }, align 32
@lm90_temp_min_index = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\01\06", [29 x i8] zeroinitializer }, align 32
@lm90_temp_max_index = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\02\07", [29 x i8] zeroinitializer }, align 32
@lm90_temp_crit_index = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\02\03\06", [29 x i8] zeroinitializer }, align 32
@lm90_temp_emerg_index = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\04\05\07", [29 x i8] zeroinitializer }, align 32
@lm90_set_temp8.reg = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0C\0B \19\17\16\19\16", [24 x i8] zeroinitializer }, align 32
@lm90_set_temp11.reg = internal constant { [8 x %struct.reg], [16 x i8] } { [8 x %struct.reg] [%struct.reg zeroinitializer, %struct.reg { i8 14, i8 20 }, %struct.reg { i8 13, i8 19 }, %struct.reg { i8 17, i8 18 }, %struct.reg zeroinitializer, %struct.reg zeroinitializer, %struct.reg { i8 14, i8 20 }, %struct.reg { i8 13, i8 19 }], [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pec\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@lm90_is_tripped.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 1, i8 -64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lm90_is_tripped\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"temp%d out of range, please check!\0A\00", [60 x i8] zeroinitializer }, align 32
@lm90_is_tripped.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 1, i8 -63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@lm90_is_tripped.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.22, i8 1, i8 -62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"temp%d diode open, please check!\0A\00", [62 x i8] zeroinitializer }, align 32
@lm90_is_tripped.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 1, i8 -61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@lm90_is_tripped.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.22, i8 1, i8 -61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@lm90_alert.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 1, i8 -7, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lm90_alert\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disabling ALERT#\0A\00", [46 x i8] zeroinitializer }, align 32
@lm90_alert.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.4, ptr @.str.25, i8 1, i8 -6, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Everything OK\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm99\00", [27 x i8] zeroinitializer }, align 32
@lm90_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 1504, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Assuming LM99 chip at 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm90_detect\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lm90_detect._entry_ptr = internal global ptr @lm90_detect._entry, section ".printk_index", align 4
@lm90_detect._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.4, i32 1508, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"If it is an LM89, instantiate it with the new_device sysfs interface\0A\00", [58 x i8] zeroinitializer }, align 32
@lm90_detect._entry_ptr.32 = internal global ptr @lm90_detect._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm86\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1032\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7461\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adt7461a\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6657\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6659\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6696\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6680\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6646\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6654\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"w83l771\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sa56004\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"g781\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmp451\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmp461\00", [25 x i8] zeroinitializer }, align 32
@lm90_detect.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.4, ptr @.str.48, i8 1, i8 -90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Unsupported chip at 0x%02x (man_id=0x%02X, chip_id=0x%02X)\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 92, i64 161]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 5, i64 7, i64 9, i64 10, i64 11, i64 12, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.53 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 5, i64 7, i64 9, i64 10, i64 11, i64 12, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 5, i64 7, i64 9, i64 10, i64 11, i64 20]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"lm90_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 2053, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 2056, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"lm90_of_match\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 246, i32 49 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"lm90_pm_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 2051, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [8 x i8] c"lm90_id\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 217, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 111, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1869, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1875, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1889, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"lm90_params\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 358, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant [9 x i8] c"lm90_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1853, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1964, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"dev_attr_pec\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1990, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1995, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 790, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 855, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"lm90_temp_index\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1185, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"lm90_min_alarm_bits\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1205, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"lm90_max_alarm_bits\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1206, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant [29 x i8] c"lm90_crit_alarm_bits_swapped\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1208, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"lm90_crit_alarm_bits\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1207, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant [26 x i8] c"lm90_emergency_alarm_bits\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1209, i32 17 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"lm90_fault_bits\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1210, i32 17 }
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c"lm90_temp_min_index\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1189, i32 17 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c"lm90_temp_max_index\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1193, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant [21 x i8] c"lm90_temp_crit_index\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1197, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"lm90_temp_emerg_index\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1201, i32 17 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1111, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1050, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1024, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 996, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1792, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1799, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 2021, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 2025, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1501, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1502, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1505, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1512, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1521, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1533, i32 11 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1538, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1579, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1581, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1599, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1610, i32 11 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1620, i32 11 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1630, i32 11 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1639, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1653, i32 11 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1661, i32 11 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1679, i32 12 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1681, i32 12 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [24 x i8] c"../drivers/hwmon/lm90.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1686, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_lm90_driver_exit, ptr @__initcall__kmod_lm90__311_2067_lm90_driver_init6, ptr @lm90_detect._entry, ptr @lm90_detect._entry.30, ptr @lm90_detect._entry_ptr, ptr @lm90_detect._entry_ptr.32, ptr @lm90_driver_exit, ptr @lm90_probe._entry, ptr @lm90_probe._entry.12, ptr @lm90_probe._entry.8, ptr @lm90_probe._entry_ptr, ptr @lm90_probe._entry_ptr.10, ptr @lm90_probe._entry_ptr.14, ptr @lm90_driver, ptr @.str, ptr @lm90_of_match, ptr @lm90_pm_ops, ptr @lm90_id, ptr @normal_i2c, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lm90_probe.__key, ptr @.str.7, ptr @lm90_params, ptr @lm90_ops, ptr @.str.9, ptr @dev_attr_pec, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @lm90_temp_index, ptr @lm90_min_alarm_bits, ptr @lm90_max_alarm_bits, ptr @lm90_crit_alarm_bits_swapped, ptr @lm90_crit_alarm_bits, ptr @lm90_emergency_alarm_bits, ptr @lm90_fault_bits, ptr @lm90_temp_min_index, ptr @lm90_temp_max_index, ptr @lm90_temp_crit_index, ptr @lm90_temp_emerg_index, ptr @lm90_set_temp8.reg, ptr @lm90_set_temp11.reg, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_of_match to i32), i32 4900, i32 6144, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_id to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_params to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pec to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_temp_index to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_min_alarm_bits to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_max_alarm_bits to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_crit_alarm_bits_swapped to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_crit_alarm_bits to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_emergency_alarm_bits to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_fault_bits to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_temp_min_index to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_temp_max_index to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_temp_crit_index to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_temp_emerg_index to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_set_temp8.reg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_set_temp11.reg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm90_detect._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm90_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm90_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm90_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @lm90_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm90_probe(ptr noundef %client) #2 align 64 {
entry:
  %.compoundliteral = alloca %struct.hwmon_channel_info, align 4
  %.compoundliteral45 = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter2, align 8
  %call = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @regulator_enable(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call5) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @lm90_regulator_disable, ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call.i271 = tail call i32 @regulator_disable(ptr noundef %call) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call.i257 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 200, i32 noundef 3520) #10
  %tobool12.not = icmp eq ptr %call.i257, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %3 = ptrtoint ptr %call.i257 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %call.i257, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i257, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @lm90_probe.__key) #10
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool20.not = icmp eq ptr %6, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %7 = ptrtoint ptr %call23 to i32
  br label %if.end26

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call ptr @i2c_match_id(ptr noundef nonnull @lm90_id, ptr noundef %client) #10
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call24, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then21
  %.sink = phi i32 [ %9, %if.else ], [ %7, %if.then21 ]
  %10 = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.sink)
  %cmp28 = icmp eq i32 %.sink, 1
  br i1 %cmp28, label %if.then29, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then29:                                        ; preds = %if.end26
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %1) #10
  %and.i = and i32 %call.i.i, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i)
  %cmp.i258.not = icmp eq i32 %and.i, 393216
  br i1 %cmp.i258.not, label %if.then29.if.end35_crit_edge, label %if.then32

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %client, align 8
  %18 = and i16 %17, -5
  store i16 %18, ptr %client, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then29.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %10, align 4
  %alert_alarms = getelementptr [16 x %struct.lm90_params], ptr @lm90_params, i32 0, i32 %20, i32 1
  %21 = ptrtoint ptr %alert_alarms to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %alert_alarms, align 4
  %alert_alarms37 = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 15
  %23 = ptrtoint ptr %alert_alarms37 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %alert_alarms37, align 4
  %arrayidx39 = getelementptr [16 x %struct.lm90_params], ptr @lm90_params, i32 0, i32 %20
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx39, align 4
  %flags41 = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 10
  %26 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flags41, align 4
  %chip = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 5
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @lm90_ops, ptr %chip, align 4
  %info42 = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 4
  %info44 = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %info44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %info42, ptr %info44, align 4
  %29 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %.compoundliteral, align 4
  %config = getelementptr inbounds %struct.hwmon_channel_info, ptr %.compoundliteral, i32 0, i32 1
  %30 = ptrtoint ptr %.compoundliteral45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 112, ptr %.compoundliteral45, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %.compoundliteral45, i32 1
  %31 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayinit.element, align 4
  %32 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.compoundliteral45, ptr %config, align 4
  %33 = ptrtoint ptr %info42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %.compoundliteral, ptr %info42, align 4
  %temp_info = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 3
  %arrayidx50 = getelementptr %struct.lm90_data, ptr %call.i257, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %temp_info, ptr %arrayidx50, align 4
  %35 = ptrtoint ptr %temp_info to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %temp_info, align 4
  %channel_config = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 2
  %config54 = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %config54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %channel_config, ptr %config54, align 4
  %37 = ptrtoint ptr %channel_config to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 98466, ptr %channel_config, align 4
  %arrayidx58 = getelementptr %struct.lm90_data, ptr %call.i257, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 622754, ptr %arrayidx58, align 4
  %and60 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end35.if.end68_crit_edge, label %if.then62

if.end35.if.end68_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then62:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %channel_config to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 231074, ptr %channel_config, align 4
  %40 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 755362, ptr %arrayidx58, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.end35.if.end68_crit_edge
  %41 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags41, align 4
  %and70 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end68.if.end76_crit_edge, label %if.then72

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx58, align 4
  %or75 = or i32 %44, 1048576
  store i32 %or75, ptr %arrayidx58, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end68.if.end76_crit_edge
  %45 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags41, align 4
  %and78 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end87_crit_edge, label %if.then80

if.end76.if.end87_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %channel_config to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channel_config, align 4
  %or83 = or i32 %48, 6144
  store i32 %or83, ptr %channel_config, align 4
  %49 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx58, align 4
  %or86 = or i32 %50, 6144
  store i32 %or86, ptr %arrayidx58, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then80, %if.end76.if.end87_crit_edge
  %51 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags41, align 4
  %and89 = and i32 %52, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end87.if.end98_crit_edge, label %if.then91

if.end87.if.end98_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %channel_config to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channel_config, align 4
  %or94 = or i32 %54, 262144
  store i32 %or94, ptr %channel_config, align 4
  %55 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx58, align 4
  %or97 = or i32 %56, 262144
  store i32 %or97, ptr %arrayidx58, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %if.end87.if.end98_crit_edge
  %57 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags41, align 4
  %and100 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end98.if.end105_crit_edge, label %if.then102

if.end98.if.end105_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx104 = getelementptr %struct.lm90_data, ptr %call.i257, i32 0, i32 2, i32 2
  %59 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1023650, ptr %arrayidx104, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end98.if.end105_crit_edge
  %60 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %10, align 4
  %reg_local_ext = getelementptr [16 x %struct.lm90_params], ptr @lm90_params, i32 0, i32 %61, i32 3
  %62 = ptrtoint ptr %reg_local_ext to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %reg_local_ext, align 1
  %reg_local_ext108 = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 17
  %64 = ptrtoint ptr %reg_local_ext108 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %reg_local_ext108, align 1
  %max_convrate = getelementptr [16 x %struct.lm90_params], ptr @lm90_params, i32 0, i32 %61, i32 2
  %65 = ptrtoint ptr %max_convrate to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %max_convrate, align 2
  %max_convrate111 = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 16
  %67 = ptrtoint ptr %max_convrate111 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %max_convrate111, align 2
  %68 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %client, align 8
  %70 = and i16 %69, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool.not.i.i = icmp eq i16 %70, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end105
  %71 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter2, align 8
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %73 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %addr.i.i.i, align 2
  %75 = and i16 %69, -5
  %call.i.i.i = call i32 @i2c_smbus_xfer(ptr noundef %72, i16 noundef zeroext %74, i16 noundef zeroext %75, i8 noundef zeroext 0, i8 noundef zeroext 4, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.then.i.i.do.end118_crit_edge

if.then.i.i.do.end118_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end118

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = call i32 @i2c_smbus_read_byte(ptr noundef %client) #10
  br label %lm90_read_reg.exit.i

if.else.i.i:                                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #10
  br label %lm90_read_reg.exit.i

lm90_read_reg.exit.i:                             ; preds = %if.else.i.i, %if.then2.i.i
  %err.0.i.i = phi i32 [ %call3.i.i, %if.then2.i.i ], [ %call4.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp.i259 = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp.i259, label %lm90_read_reg.exit.i.do.end118_crit_edge, label %if.end.i

lm90_read_reg.exit.i.do.end118_crit_edge:         ; preds = %lm90_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end118

if.end.i:                                         ; preds = %lm90_read_reg.exit.i
  %conv.i260 = trunc i32 %err.0.i.i to i8
  %convrate_orig.i = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 14
  %76 = ptrtoint ptr %convrate_orig.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv.i260, ptr %convrate_orig.i, align 2
  %77 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %client, align 8
  %79 = and i16 %78, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool.not.i69.i = icmp eq i16 %79, 0
  br i1 %tobool.not.i69.i, label %if.else.i78.i, label %if.then.i74.i

if.then.i74.i:                                    ; preds = %if.end.i
  %80 = ptrtoint ptr %adapter2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter2, align 8
  %addr.i.i71.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %82 = ptrtoint ptr %addr.i.i71.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %addr.i.i71.i, align 2
  %84 = and i16 %78, -5
  %call.i.i72.i = call i32 @i2c_smbus_xfer(ptr noundef %81, i16 noundef zeroext %83, i16 noundef zeroext %84, i8 noundef zeroext 0, i8 noundef zeroext 3, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i72.i)
  %cmp.i73.i = icmp sgt i32 %call.i.i72.i, -1
  br i1 %cmp.i73.i, label %if.then2.i76.i, label %if.then.i74.i.do.end118_crit_edge

if.then.i74.i.do.end118_crit_edge:                ; preds = %if.then.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end118

if.then2.i76.i:                                   ; preds = %if.then.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i75.i = call i32 @i2c_smbus_read_byte(ptr noundef %client) #10
  br label %lm90_read_reg.exit80.i

if.else.i78.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i77.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #10
  br label %lm90_read_reg.exit80.i

lm90_read_reg.exit80.i:                           ; preds = %if.else.i78.i, %if.then2.i76.i
  %err.0.i79.i = phi i32 [ %call3.i75.i, %if.then2.i76.i ], [ %call4.i77.i, %if.else.i78.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i79.i)
  %cmp2.i = icmp slt i32 %err.0.i79.i, 0
  br i1 %cmp2.i, label %lm90_read_reg.exit80.i.do.end118_crit_edge, label %if.end5.i

lm90_read_reg.exit80.i.do.end118_crit_edge:       ; preds = %lm90_read_reg.exit80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end118

if.end5.i:                                        ; preds = %lm90_read_reg.exit80.i
  %conv6.i = trunc i32 %err.0.i79.i to i8
  %config_orig.i = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 13
  %85 = ptrtoint ptr %config_orig.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv6.i, ptr %config_orig.i, align 1
  %config8.i = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 12
  %86 = ptrtoint ptr %config8.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv6.i, ptr %config8.i, align 4
  %87 = call fastcc i32 @lm90_set_convrate(ptr noundef nonnull %call.i257, i32 noundef 500) #10
  %88 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags41, align 4
  %and.i261 = and i32 %89, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i261)
  %tobool.not.i262 = icmp eq i32 %and.i261, 0
  %and11.i = and i32 %err.0.i79.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or.cond.i = select i1 %tobool.not.i262, i1 true, i1 %tobool12.not.i
  br i1 %or.cond.i, label %if.end5.i.if.end16.i_crit_edge, label %if.then13.i

if.end5.i.if.end16.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %89, 1
  %90 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or.i, ptr %flags41, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end5.i.if.end16.i_crit_edge
  %91 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %92)
  %cmp17.i = icmp eq i32 %92, 7
  %or20.i = or i32 %err.0.i79.i, 24
  %spec.select.i = select i1 %cmp17.i, i32 %or20.i, i32 %err.0.i79.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %92)
  %cmp23.i = icmp eq i32 %92, 15
  %or26.i = or i32 %spec.select.i, 32
  %config.1.i = select i1 %cmp23.i, i32 %or26.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %92)
  %cmp29.i = icmp eq i32 %92, 10
  %and32.i = and i32 %config.1.i, -9
  %config.2.i = select i1 %cmp29.i, i32 %and32.i, i32 %config.1.i
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %93 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool34.not.i = icmp eq i32 %94, 0
  %and36.i = and i32 %config.2.i, 63
  %config.3.i = select i1 %tobool34.not.i, i32 %config.2.i, i32 %and36.i
  %95 = trunc i32 %config.3.i to i8
  %conv39.i = and i8 %95, -65
  %96 = ptrtoint ptr %config8.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %config8.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %conv39.i)
  %cmp.not.i.i = icmp eq i8 %97, %conv39.i
  br i1 %cmp.not.i.i, label %if.end16.i.lm90_update_confreg.exit.i_crit_edge, label %if.then.i82.i

if.end16.i.lm90_update_confreg.exit.i_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_update_confreg.exit.i

if.then.i82.i:                                    ; preds = %if.end16.i
  %98 = ptrtoint ptr %call.i257 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i257, align 4
  %call.i.i263 = call i32 @i2c_smbus_write_byte_data(ptr noundef %99, i8 noundef zeroext 9, i8 noundef zeroext %conv39.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i263)
  %tobool.not.i81.i = icmp eq i32 %call.i.i263, 0
  br i1 %tobool.not.i81.i, label %cleanup.thread.i.i, label %if.then.i82.i.lm90_update_confreg.exit.i_crit_edge

if.then.i82.i.lm90_update_confreg.exit.i_crit_edge: ; preds = %if.then.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_update_confreg.exit.i

cleanup.thread.i.i:                               ; preds = %if.then.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %config8.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv39.i, ptr %config8.i, align 4
  br label %lm90_update_confreg.exit.i

lm90_update_confreg.exit.i:                       ; preds = %cleanup.thread.i.i, %if.then.i82.i.lm90_update_confreg.exit.i_crit_edge, %if.end16.i.lm90_update_confreg.exit.i_crit_edge
  %call.i83.i = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @lm90_restore_conf, ptr noundef nonnull %call.i257) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool.not.i84.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool.not.i84.i, label %lm90_update_confreg.exit.i.if.end119_crit_edge, label %lm90_init_client.exit

lm90_update_confreg.exit.i.if.end119_crit_edge:   ; preds = %lm90_update_confreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

lm90_init_client.exit:                            ; preds = %lm90_update_confreg.exit.i
  call void @lm90_restore_conf(ptr noundef nonnull %call.i257) #10, !callees !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %cmp113 = icmp slt i32 %call.i83.i, 0
  br i1 %cmp113, label %lm90_init_client.exit.do.end118_crit_edge, label %lm90_init_client.exit.if.end119_crit_edge

lm90_init_client.exit.if.end119_crit_edge:        ; preds = %lm90_init_client.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

lm90_init_client.exit.do.end118_crit_edge:        ; preds = %lm90_init_client.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end118

do.end118:                                        ; preds = %lm90_init_client.exit.do.end118_crit_edge, %lm90_read_reg.exit80.i.do.end118_crit_edge, %if.then.i74.i.do.end118_crit_edge, %lm90_read_reg.exit.i.do.end118_crit_edge, %if.then.i.i.do.end118_crit_edge
  %retval.0.i264274 = phi i32 [ %call.i83.i, %lm90_init_client.exit.do.end118_crit_edge ], [ %call.i.i72.i, %if.then.i74.i.do.end118_crit_edge ], [ %call.i.i.i, %if.then.i.i.do.end118_crit_edge ], [ %err.0.i79.i, %lm90_read_reg.exit80.i.do.end118_crit_edge ], [ %err.0.i.i, %lm90_read_reg.exit.i.do.end118_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end119:                                        ; preds = %lm90_init_client.exit.if.end119_crit_edge, %lm90_update_confreg.exit.i.if.end119_crit_edge
  %101 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %client, align 8
  %103 = and i16 %102, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool123.not = icmp eq i16 %103, 0
  br i1 %tobool123.not, label %if.end119.if.end133_crit_edge, label %if.then124

if.end119.if.end133_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then124:                                       ; preds = %if.end119
  %call125 = call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_pec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %if.then124.cleanup_crit_edge

if.then124.cleanup_crit_edge:                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end128:                                        ; preds = %if.then124
  %call.i265 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @lm90_remove_pec, ptr noundef %dev1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %tobool.not.i266 = icmp eq i32 %call.i265, 0
  br i1 %tobool.not.i266, label %if.end128.if.end133_crit_edge, label %devm_add_action_or_reset.exit269

if.end128.if.end133_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

devm_add_action_or_reset.exit269:                 ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_pec) #10
  br label %cleanup

if.end133:                                        ; preds = %if.end128.if.end133_crit_edge, %if.end119.if.end133_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call136 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i257, ptr noundef %chip, ptr noundef null) #10
  %cmp.i270 = icmp ugt ptr %call136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i270, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %call136 to i32
  br label %cleanup

if.end140:                                        ; preds = %if.end133
  %hwmon_dev141 = getelementptr inbounds %struct.lm90_data, ptr %call.i257, i32 0, i32 1
  %105 = ptrtoint ptr %hwmon_dev141 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call136, ptr %hwmon_dev141, align 4
  %106 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool142.not = icmp eq i32 %107, 0
  br i1 %tobool142.not, label %if.end140.cleanup_crit_edge, label %do.body144

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body144:                                       ; preds = %if.end140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_probe.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_probe, %do.end154)) #10
          to label %if.then150 [label %do.end154], !srcloc !163

if.then150:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_probe.__UNIQUE_ID_ddebug308, ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %109) #10
  br label %do.end154

do.end154:                                        ; preds = %if.then150, %do.body144
  %110 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq.i, align 4
  %call156 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %111, ptr noundef null, ptr noundef nonnull @lm90_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %client) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %do.end162, label %do.end154.cleanup_crit_edge

do.end154.cleanup_crit_edge:                      ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end162:                                        ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %113) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end162, %do.end154.cleanup_crit_edge, %if.end140.cleanup_crit_edge, %if.then138, %devm_add_action_or_reset.exit269, %if.then124.cleanup_crit_edge, %do.end118, %if.end10.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call5, %do.end ], [ %retval.0.i264274, %do.end118 ], [ %104, %if.then138 ], [ %call156, %do.end162 ], [ %call.i, %devm_add_action_or_reset.exit ], [ -12, %if.end10.cleanup_crit_edge ], [ %call125, %if.then124.cleanup_crit_edge ], [ %call.i265, %devm_add_action_or_reset.exit269 ], [ 0, %do.end154.cleanup_crit_edge ], [ 0, %if.end140.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm90_alert(ptr noundef %client, i32 noundef %type, i32 noundef %flag) #2 align 64 {
entry:
  %alarms = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %alarms) #10
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %alarms, align 2, !annotation !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc zeroext i1 @lm90_is_tripped(ptr noundef %client, ptr noundef nonnull %alarms)
  br i1 %call, label %if.then1, label %do.body18

if.then1:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.lm90_data, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1.cleanup_crit_edge, label %land.lhs.true

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then1
  %5 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %alarms, align 2
  %alert_alarms = getelementptr inbounds %struct.lm90_data, ptr %2, i32 0, i32 15
  %7 = ptrtoint ptr %alert_alarms to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %alert_alarms, align 4
  %and444 = and i16 %8, %6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and444)
  %tobool5.not = icmp eq i16 %and444, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_alert.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_alert, %do.end)) #10
          to label %if.then12 [label %do.end], !srcloc !163

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_alert.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %config = getelementptr inbounds %struct.lm90_data, ptr %2, i32 0, i32 12
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %config, align 4
  %11 = or i8 %10, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %11)
  %cmp.not.i = icmp eq i8 %10, %11
  br i1 %cmp.not.i, label %do.end.cleanup_crit_edge, label %if.then.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %do.end
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 9, i8 noundef zeroext %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cleanup.thread.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %config, align 4
  br label %cleanup

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_alert.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_alert, %cleanup)) #10
          to label %if.then32 [label %cleanup], !srcloc !163

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %dev33 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_alert.__UNIQUE_ID_ddebug310, ptr noundef %dev33, ptr noundef nonnull @.str.25) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body18, %cleanup.thread.i, %if.then.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %alarms) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm90_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %conv = zext i16 %3 to i32
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1) #10
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup383_crit_edge

entry.cleanup383_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup383

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -2) #10
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -1) #10
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #10
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7 = icmp slt i32 %call3, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp10 = icmp slt i32 %call4, 0
  %or.cond495 = select i1 %or.cond, i1 true, i1 %cmp10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp13 = icmp slt i32 %call5, 0
  %or.cond496 = select i1 %or.cond495, i1 true, i1 %cmp13
  br i1 %or.cond496, label %if.end.cleanup383_crit_edge, label %if.end16

if.end.cleanup383_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup383

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp17 = icmp ne i32 %call2, 1
  %8 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %if.end16.if.end31_crit_edge [
    i32 161, label %if.end16.if.then25_crit_edge
    i32 92, label %if.end16.if.then25_crit_edge589
    i32 1, label %if.end16.if.then25_crit_edge590
  ]

if.end16.if.then25_crit_edge590:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.end16.if.then25_crit_edge589:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.end16.if.then25_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then25:                                        ; preds = %if.end16.if.then25_crit_edge, %if.end16.if.then25_crit_edge589, %if.end16.if.then25_crit_edge590
  %call26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then25.cleanup383_crit_edge, label %if.then25.if.end31_crit_edge

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then25.cleanup383_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup383

if.end31:                                         ; preds = %if.then25.if.end31_crit_edge, %if.end16.if.end31_crit_edge
  %config2.0 = phi i32 [ %call26, %if.then25.if.end31_crit_edge ], [ -1, %if.end16.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %3)
  %cmp32 = icmp eq i16 %3, 76
  %9 = and i16 %3, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %9)
  %10 = icmp eq i16 %9, 76
  %or.cond499.not = xor i1 %10, true
  %brmerge = select i1 %or.cond499.not, i1 true, i1 %cmp17
  br i1 %brmerge, label %if.else77, label %if.then39

if.then39:                                        ; preds = %if.end31
  %and = and i32 %call4, 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp40 = icmp eq i32 %and, 0
  %and43 = and i32 %config2.0, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp44 = icmp eq i32 %and43, 0
  %or.cond500 = select i1 %cmp40, i1 %cmp44, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call5)
  %cmp47 = icmp ult i32 %call5, 10
  %or.cond501 = select i1 %or.cond500, i1 %cmp47, i1 false
  br i1 %or.cond501, label %if.then49, label %if.then39.do.body370_crit_edge

if.then39.do.body370_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.then49:                                        ; preds = %if.then39
  %and53 = and i32 %call3, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and53)
  %cmp54 = icmp eq i32 %and53, 32
  %or.cond502 = select i1 %cmp32, i1 %cmp54, i1 false
  br i1 %or.cond502, label %if.then49.if.end381_crit_edge, label %if.else

if.then49.if.end381_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and53)
  %cmp58 = icmp eq i32 %and53, 48
  br i1 %cmp58, label %if.then60, label %if.else65

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv) #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31) #13
  br label %if.end381

if.else65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and53)
  %cmp70 = icmp eq i32 %and53, 16
  %or.cond503 = select i1 %cmp32, i1 %cmp70, i1 false
  br i1 %or.cond503, label %if.else65.if.end381_crit_edge, label %if.else65.do.body370_crit_edge

if.else65.do.body370_crit_edge:                   ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.else65.if.end381_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else77:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call2)
  %cmp84 = icmp eq i32 %call2, 65
  %or.cond505 = select i1 %10, i1 %cmp84, i1 false
  br i1 %or.cond505, label %if.then86, label %if.else129

if.then86:                                        ; preds = %if.else77
  %and87 = and i32 %call3, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and87)
  %cmp88 = icmp eq i32 %and87, 64
  %and91 = and i32 %call4, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %cmp92 = icmp eq i32 %and91, 0
  %or.cond506 = select i1 %cmp88, i1 %cmp92, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call5)
  %cmp95 = icmp ult i32 %call5, 11
  %or.cond507 = select i1 %or.cond506, i1 %cmp95, i1 false
  br i1 %or.cond507, label %if.then97, label %if.else104

if.then97:                                        ; preds = %if.then86
  %11 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i556 = getelementptr inbounds %struct.i2c_algorithm, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %functionality.i.i556 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %functionality.i.i556, align 4
  %call.i.i557 = tail call i32 %14(ptr noundef %1) #10
  %and.i558 = and i32 %call.i.i557, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i558)
  %cmp.i559.not = icmp eq i32 %and.i558, 393216
  br i1 %cmp.i559.not, label %if.then100, label %if.then97.if.end381_crit_edge

if.then97.if.end381_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.then100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 4
  %17 = or i16 %16, 4
  store i16 %17, ptr %flags, align 4
  br label %if.end381

if.else104:                                       ; preds = %if.then86
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %call3)
  %cmp105 = icmp eq i32 %call3, 81
  %and108 = and i32 %call4, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %cmp109 = icmp eq i32 %and108, 0
  %or.cond508 = select i1 %cmp105, i1 %cmp109, i1 false
  %or.cond509 = select i1 %or.cond508, i1 %cmp95, i1 false
  br i1 %or.cond509, label %if.else104.if.end381_crit_edge, label %if.else115

if.else104.if.end381_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else115:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %call3)
  %cmp116 = icmp eq i32 %call3, 87
  %or.cond510 = select i1 %cmp116, i1 %cmp109, i1 false
  %or.cond511 = select i1 %or.cond510, i1 %cmp95, i1 false
  br i1 %or.cond511, label %if.else115.if.end381_crit_edge, label %if.else115.do.body370_crit_edge

if.else115.do.body370_crit_edge:                  ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.else115.if.end381_crit_edge:                   ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else129:                                       ; preds = %if.else77
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %call2)
  %cmp130 = icmp eq i32 %call2, 77
  br i1 %cmp130, label %if.then132, label %if.else233

if.then132:                                       ; preds = %if.else129
  %call133 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 22) #10
  %call134 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -2) #10
  %call135 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 22) #10
  %call136 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp137 = icmp slt i32 %call133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp140 = icmp slt i32 %call134, 0
  %or.cond512 = select i1 %cmp137, i1 true, i1 %cmp140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp143 = icmp slt i32 %call135, 0
  %or.cond513 = select i1 %or.cond512, i1 true, i1 %cmp143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp146 = icmp slt i32 %call136, 0
  %or.cond514 = select i1 %or.cond513, i1 true, i1 %cmp146
  br i1 %or.cond514, label %if.then132.cleanup383_crit_edge, label %if.end149

if.then132.cleanup383_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup383

if.end149:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %call134)
  %cmp150 = icmp eq i32 %call3, %call134
  %.off = add i16 %3, -76
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off)
  %switch = icmp ult i16 %.off, 3
  %or.cond554 = select i1 %cmp150, i1 %switch, i1 false
  br i1 %or.cond554, label %land.lhs.true161, label %if.end149.if.else175_crit_edge

if.end149.if.else175_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else175

land.lhs.true161:                                 ; preds = %if.end149
  %and162 = and i32 %call4, 31
  %and163 = and i32 %call3, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and162, i32 %and163)
  %cmp164 = icmp eq i32 %and162, %and163
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call5)
  %cmp167 = icmp ult i32 %call5, 10
  %or.cond517 = select i1 %cmp164, i1 %cmp167, i1 false
  br i1 %or.cond517, label %if.then169, label %land.lhs.true161.if.else175_crit_edge

land.lhs.true161.if.else175_crit_edge:            ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else175

if.then169:                                       ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #12
  %.str.37..str.38 = select i1 %cmp32, ptr @.str.37, ptr @.str.38
  br label %if.end381

if.else175:                                       ; preds = %land.lhs.true161.if.else175_crit_edge, %if.end149.if.else175_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp176 = icmp eq i32 %call3, 1
  %and179 = and i32 %call4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %cmp180 = icmp eq i32 %and179, 0
  %or.cond518 = select i1 %cmp176, i1 %cmp180, i1 false
  %and183 = and i32 %call136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %cmp184 = icmp eq i32 %and183, 0
  %or.cond519 = select i1 %or.cond518, i1 %cmp184, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %call133, i32 %call135)
  %cmp187 = icmp eq i32 %call133, %call135
  %or.cond520 = select i1 %or.cond519, i1 %cmp187, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call5)
  %cmp190 = icmp ult i32 %call5, 8
  %or.cond521 = select i1 %or.cond520, i1 %cmp190, i1 false
  br i1 %or.cond521, label %if.else175.if.end381_crit_edge, label %if.else193

if.else175.if.end381_crit_edge:                   ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else193:                                       ; preds = %if.else175
  %and197 = and i32 %call4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %cmp198 = icmp eq i32 %and197, 0
  %or.cond522 = select i1 %cmp176, i1 %cmp198, i1 false
  %or.cond523 = select i1 %or.cond522, i1 %cmp190, i1 false
  br i1 %or.cond523, label %if.else193.if.end381_crit_edge, label %if.else204

if.else193.if.end381_crit_edge:                   ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else204:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_const_cmp4(i32 89, i32 %call3)
  %cmp205 = icmp eq i32 %call3, 89
  %and208 = and i32 %call4, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %cmp209 = icmp eq i32 %and208, 0
  %or.cond524 = select i1 %cmp205, i1 %cmp209, i1 false
  %or.cond525 = select i1 %or.cond524, i1 %cmp190, i1 false
  br i1 %or.cond525, label %if.else204.if.end381_crit_edge, label %if.else215

if.else204.if.end381_crit_edge:                   ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else215:                                       ; preds = %if.else204
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call3)
  %cmp216 = icmp eq i32 %call3, 8
  %and219 = and i32 %call4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %cmp220 = icmp eq i32 %and219, 0
  %or.cond526 = select i1 %cmp216, i1 %cmp220, i1 false
  %or.cond527 = select i1 %or.cond526, i1 %cmp190, i1 false
  br i1 %or.cond527, label %if.else215.if.end381_crit_edge, label %if.else215.do.body370_crit_edge

if.else215.do.body370_crit_edge:                  ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.else215.if.end381_crit_edge:                   ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else233:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call2)
  %cmp237 = icmp eq i32 %call2, 92
  %or.cond528 = select i1 %cmp32, i1 %cmp237, i1 false
  br i1 %or.cond528, label %if.then239, label %if.else265

if.then239:                                       ; preds = %if.else233
  %and240 = and i32 %call4, 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %cmp241 = icmp eq i32 %and240, 0
  %and244 = and i32 %config2.0, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %cmp245 = icmp eq i32 %and244, 0
  %or.cond529 = select i1 %cmp241, i1 %cmp245, i1 false
  br i1 %or.cond529, label %if.then247, label %if.then239.do.body370_crit_edge

if.then239.do.body370_crit_edge:                  ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.then247:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp248 = icmp eq i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call5)
  %cmp251 = icmp ult i32 %call5, 10
  %or.cond530 = select i1 %cmp248, i1 %cmp251, i1 false
  br i1 %or.cond530, label %if.then247.if.end381_crit_edge, label %if.else254

if.then247.if.end381_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else254:                                       ; preds = %if.then247
  %and255 = and i32 %call3, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and255)
  %cmp256 = icmp eq i32 %and255, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call5)
  %cmp259 = icmp ult i32 %call5, 9
  %or.cond531 = select i1 %cmp256, i1 %cmp259, i1 false
  br i1 %or.cond531, label %if.else254.if.end381_crit_edge, label %if.else254.do.body370_crit_edge

if.else254.do.body370_crit_edge:                  ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.else254.if.end381_crit_edge:                   ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else265:                                       ; preds = %if.else233
  call void @__sanitizer_cov_trace_const_cmp2(i16 72, i16 %3)
  %cmp266 = icmp ult i16 %3, 72
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %3)
  %cmp269 = icmp ult i16 %3, 80
  %18 = and i16 %3, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 72, i16 %18)
  %19 = icmp eq i16 %18, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %call2)
  %cmp272 = icmp eq i32 %call2, 161
  %or.cond533 = select i1 %19, i1 %cmp272, i1 false
  br i1 %or.cond533, label %if.then274, label %if.else290

if.then274:                                       ; preds = %if.else265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp275 = icmp eq i32 %call3, 0
  %and278 = and i32 %call4, 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %cmp279 = icmp eq i32 %and278, 0
  %or.cond534 = select i1 %cmp275, i1 %cmp279, i1 false
  %and282 = and i32 %config2.0, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %cmp283 = icmp eq i32 %and282, 0
  %or.cond535 = select i1 %or.cond534, i1 %cmp283, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call5)
  %cmp286 = icmp ult i32 %call5, 10
  %or.cond536 = select i1 %or.cond535, i1 %cmp286, i1 false
  br i1 %or.cond536, label %if.then274.if.end381_crit_edge, label %if.then274.do.body370_crit_edge

if.then274.do.body370_crit_edge:                  ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.then274.if.end381_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else290:                                       ; preds = %if.else265
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %call2)
  %cmp297 = icmp eq i32 %call2, 71
  %or.cond538 = select i1 %10, i1 %cmp297, i1 false
  br i1 %or.cond538, label %if.then299, label %if.else311

if.then299:                                       ; preds = %if.else290
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp300 = icmp eq i32 %call3, 1
  %and303 = and i32 %call4, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %cmp304 = icmp eq i32 %and303, 0
  %or.cond539 = select i1 %cmp300, i1 %cmp304, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call5)
  %cmp307 = icmp ult i32 %call5, 9
  %or.cond540 = select i1 %or.cond539, i1 %cmp307, i1 false
  br i1 %or.cond540, label %if.then299.if.end381_crit_edge, label %if.then299.do.body370_crit_edge

if.then299.do.body370_crit_edge:                  ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.then299.if.end381_crit_edge:                   ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.else311:                                       ; preds = %if.else290
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %call2)
  %cmp312 = icmp eq i32 %call2, 85
  br i1 %cmp312, label %land.lhs.true314, label %if.else311.do.body370_crit_edge

if.else311.do.body370_crit_edge:                  ; preds = %if.else311
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

land.lhs.true314:                                 ; preds = %if.else311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp315 = icmp eq i32 %call3, 0
  %and318 = and i32 %call4, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and318)
  %cmp319 = icmp eq i32 %and318, 0
  %or.cond541 = select i1 %cmp315, i1 %cmp319, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call5)
  %cmp322 = icmp ult i32 %call5, 10
  %or.cond542 = select i1 %or.cond541, i1 %cmp322, i1 false
  br i1 %or.cond542, label %if.then324, label %land.lhs.true314.do.body370_crit_edge

land.lhs.true314.do.body370_crit_edge:            ; preds = %land.lhs.true314
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.then324:                                       ; preds = %land.lhs.true314
  %call325 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 21) #10
  %call326 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 34) #10
  %call327 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 22) #10
  %call328 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 36) #10
  %and329 = and i32 %call325, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329)
  %cmp330 = icmp eq i32 %and329, 0
  %and333 = and i32 %call326, 241
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and333)
  %cmp334 = icmp eq i32 %and333, 1
  %or.cond543 = select i1 %cmp330, i1 %cmp334, i1 false
  %and337 = and i32 %call327, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and337)
  %cmp338 = icmp eq i32 %and337, 0
  %or.cond544 = select i1 %or.cond543, i1 %cmp338, i1 false
  %and341 = and i32 %call328, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and341)
  %cmp342 = icmp eq i32 %and341, 0
  %or.cond545 = select i1 %or.cond544, i1 %cmp342, i1 false
  br i1 %or.cond545, label %if.then344, label %if.then324.do.body370_crit_edge

if.then324.do.body370_crit_edge:                  ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.then344:                                       ; preds = %if.then324
  %and348 = and i32 %call327, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and348)
  %tobool349.not = icmp eq i32 %and348, 0
  %or.cond546 = select i1 %cmp32, i1 %tobool349.not, i1 false
  %brmerge547 = or i1 %cmp266, %or.cond546
  br i1 %brmerge547, label %if.end367, label %land.lhs.true354

land.lhs.true354:                                 ; preds = %if.then344
  br i1 %cmp269, label %land.lhs.true354.if.end381_crit_edge, label %land.lhs.true354.do.body370_crit_edge

land.lhs.true354.do.body370_crit_edge:            ; preds = %land.lhs.true354
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

land.lhs.true354.if.end381_crit_edge:             ; preds = %land.lhs.true354
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

if.end367:                                        ; preds = %if.then344
  br i1 %or.cond546, label %if.end367.if.end381_crit_edge, label %if.end367.do.body370_crit_edge

if.end367.do.body370_crit_edge:                   ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body370

if.end367.if.end381_crit_edge:                    ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end381

do.body370:                                       ; preds = %if.end367.do.body370_crit_edge, %land.lhs.true354.do.body370_crit_edge, %if.then324.do.body370_crit_edge, %land.lhs.true314.do.body370_crit_edge, %if.else311.do.body370_crit_edge, %if.then299.do.body370_crit_edge, %if.then274.do.body370_crit_edge, %if.else254.do.body370_crit_edge, %if.then239.do.body370_crit_edge, %if.else215.do.body370_crit_edge, %if.else115.do.body370_crit_edge, %if.else65.do.body370_crit_edge, %if.then39.do.body370_crit_edge
  %man_id.0577 = phi i32 [ 85, %if.end367.do.body370_crit_edge ], [ 71, %if.then299.do.body370_crit_edge ], [ 161, %if.then274.do.body370_crit_edge ], [ 92, %if.else254.do.body370_crit_edge ], [ 65, %if.else115.do.body370_crit_edge ], [ 1, %if.else65.do.body370_crit_edge ], [ 85, %if.then324.do.body370_crit_edge ], [ 85, %land.lhs.true354.do.body370_crit_edge ], [ %call2, %if.else311.do.body370_crit_edge ], [ 85, %land.lhs.true314.do.body370_crit_edge ], [ 92, %if.then239.do.body370_crit_edge ], [ 1, %if.then39.do.body370_crit_edge ], [ %call134, %if.else215.do.body370_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_detect.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_detect, %cleanup383)) #10
          to label %if.then376 [label %cleanup383], !srcloc !163

if.then376:                                       ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #12
  %dev377 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_detect.__UNIQUE_ID_ddebug302, ptr noundef %dev377, ptr noundef nonnull @.str.48, i32 noundef %conv, i32 noundef %man_id.0577, i32 noundef %call3) #10
  br label %cleanup383

if.end381:                                        ; preds = %if.end367.if.end381_crit_edge, %land.lhs.true354.if.end381_crit_edge, %if.then299.if.end381_crit_edge, %if.then274.if.end381_crit_edge, %if.else254.if.end381_crit_edge, %if.then247.if.end381_crit_edge, %if.else215.if.end381_crit_edge, %if.else204.if.end381_crit_edge, %if.else193.if.end381_crit_edge, %if.else175.if.end381_crit_edge, %if.then169, %if.else115.if.end381_crit_edge, %if.else104.if.end381_crit_edge, %if.then100, %if.then97.if.end381_crit_edge, %if.else65.if.end381_crit_edge, %if.then60, %if.then49.if.end381_crit_edge
  %name.3571 = phi ptr [ @.str.46, %if.end367.if.end381_crit_edge ], [ @.str.43, %if.then247.if.end381_crit_edge ], [ @.str.35, %if.else104.if.end381_crit_edge ], [ @.str, %if.then49.if.end381_crit_edge ], [ @.str.34, %if.then97.if.end381_crit_edge ], [ @.str.34, %if.then100 ], [ @.str.26, %if.then60 ], [ @.str.47, %land.lhs.true354.if.end381_crit_edge ], [ @.str.33, %if.else65.if.end381_crit_edge ], [ @.str.36, %if.else115.if.end381_crit_edge ], [ @.str.43, %if.else254.if.end381_crit_edge ], [ @.str.44, %if.then274.if.end381_crit_edge ], [ @.str.45, %if.then299.if.end381_crit_edge ], [ %.str.37..str.38, %if.then169 ], [ @.str.39, %if.else175.if.end381_crit_edge ], [ @.str.40, %if.else193.if.end381_crit_edge ], [ @.str.41, %if.else204.if.end381_crit_edge ], [ @.str.42, %if.else215.if.end381_crit_edge ]
  %call382 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %name.3571, i32 noundef 20) #10
  br label %cleanup383

cleanup383:                                       ; preds = %if.end381, %if.then376, %do.body370, %if.then132.cleanup383_crit_edge, %if.then25.cleanup383_crit_edge, %if.end.cleanup383_crit_edge, %entry.cleanup383_crit_edge
  %retval.1 = phi i32 [ 0, %if.end381 ], [ -19, %entry.cleanup383_crit_edge ], [ -19, %if.end.cleanup383_crit_edge ], [ -19, %if.then25.cleanup383_crit_edge ], [ -19, %if.then376 ], [ -19, %if.then132.cleanup383_crit_edge ], [ -19, %do.body370 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm90_regulator_disable(ptr noundef %regulator) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %regulator) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm90_remove_pec(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_pec) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm90_irq_thread(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #10
  %call = call fastcc zeroext i1 @lm90_is_tripped(ptr noundef %dev_id, ptr noundef nonnull %status)
  %. = zext i1 %call to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #10
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lm90_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %attr)
  %switch.selectcmp.i = icmp eq i32 %attr, 6
  %switch.select.i = select i1 %switch.selectcmp.i, i16 292, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %switch.selectcmp1.i = icmp eq i32 %attr, 5
  %switch.select2.i = select i1 %switch.selectcmp1.i, i16 420, i16 %switch.select.i
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %attr, label %sw.default.i [
    i32 1, label %sw.bb1.return_crit_edge
    i32 15, label %sw.bb1.return_crit_edge6
    i32 16, label %sw.bb1.return_crit_edge7
    i32 17, label %sw.bb1.return_crit_edge8
    i32 18, label %sw.bb1.return_crit_edge9
    i32 12, label %sw.bb1.return_crit_edge10
    i32 19, label %sw.bb1.return_crit_edge11
    i32 5, label %sw.bb1.sw.bb1.i_crit_edge
    i32 7, label %sw.bb1.sw.bb1.i_crit_edge12
    i32 9, label %sw.bb1.sw.bb1.i_crit_edge13
    i32 11, label %sw.bb1.sw.bb1.i_crit_edge14
    i32 20, label %sw.bb1.sw.bb1.i_crit_edge15
    i32 10, label %sw.bb2.i
  ]

sw.bb1.sw.bb1.i_crit_edge15:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

sw.bb1.sw.bb1.i_crit_edge14:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

sw.bb1.sw.bb1.i_crit_edge13:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

sw.bb1.sw.bb1.i_crit_edge12:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

sw.bb1.sw.bb1.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

sw.bb1.return_crit_edge11:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1.return_crit_edge10:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1.return_crit_edge9:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1.return_crit_edge8:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1.return_crit_edge7:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1.return_crit_edge6:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb1.sw.bb1.i_crit_edge, %sw.bb1.sw.bb1.i_crit_edge12, %sw.bb1.sw.bb1.i_crit_edge13, %sw.bb1.sw.bb1.i_crit_edge14, %sw.bb1.sw.bb1.i_crit_edge15
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i = icmp eq i32 %channel, 0
  %..i = select i1 %cmp.i, i16 420, i16 292
  br label %return

sw.default.i:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb1.return_crit_edge, %sw.bb1.return_crit_edge6, %sw.bb1.return_crit_edge7, %sw.bb1.return_crit_edge8, %sw.bb1.return_crit_edge9, %sw.bb1.return_crit_edge10, %sw.bb1.return_crit_edge11, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i16 [ %switch.select2.i, %sw.bb ], [ 0, %entry.return_crit_edge ], [ 0, %sw.default.i ], [ 420, %sw.bb1.i ], [ 292, %sw.bb1.return_crit_edge ], [ 292, %sw.bb1.return_crit_edge6 ], [ 292, %sw.bb1.return_crit_edge7 ], [ 292, %sw.bb1.return_crit_edge8 ], [ 292, %sw.bb1.return_crit_edge9 ], [ 292, %sw.bb1.return_crit_edge10 ], [ 292, %sw.bb1.return_crit_edge11 ], [ %..i, %sw.bb2.i ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm90_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.lm90_data, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #10
  %call1.i = tail call fastcc i32 @lm90_update_device(ptr noundef %dev) #10
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %attr, label %if.end.i.return_crit_edge [
    i32 5, label %sw.bb.i
    i32 6, label %sw.bb3.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %update_interval.i = getelementptr inbounds %struct.lm90_data, ptr %2, i32 0, i32 11
  %4 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %update_interval.i, align 4
  br label %return.sink.split

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %alarms.i = getelementptr inbounds %struct.lm90_data, ptr %2, i32 0, i32 21
  %6 = ptrtoint ptr %alarms.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %alarms.i, align 2
  %conv.i = zext i16 %7 to i32
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i7, align 4
  %update_lock.i8 = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i8, i32 noundef 0) #10
  %call1.i9 = tail call fastcc i32 @lm90_update_device(ptr noundef %dev) #10
  tail call void @mutex_unlock(ptr noundef %update_lock.i8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %if.end.i11, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i11:                                       ; preds = %sw.bb1
  %10 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %attr, label %if.end.i11.return_crit_edge [
    i32 1, label %sw.bb.i13
    i32 15, label %sw.bb4.i
    i32 16, label %sw.bb8.i
    i32 17, label %sw.bb15.i
    i32 18, label %sw.bb32.i
    i32 19, label %sw.bb39.i
    i32 5, label %sw.bb46.i
    i32 7, label %sw.bb57.i
    i32 9, label %sw.bb69.i
    i32 10, label %sw.bb73.i
    i32 11, label %sw.bb77.i
    i32 12, label %sw.bb81.i
    i32 20, label %sw.bb85.i
  ]

if.end.i11.return_crit_edge:                      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i13:                                        ; preds = %if.end.i11
  %arrayidx.i = getelementptr [3 x i8], ptr @lm90_temp_index, i32 0, i32 %channel
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i12 = zext i8 %12 to i32
  %arrayidx.i.i = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 19, i32 %conv.i12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i.i, align 2
  %flags.i.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i13
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i = zext i16 %14 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -16384
  %div.i.i.i = sdiv i32 %sub.i.i.i, 64
  %mul.i.i.i = mul nsw i32 %div.i.i.i, 250
  br label %lm90_get_temp11.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = sdiv i16 %14, 32
  %div.i.i.i.i = sext i16 %17 to i32
  %mul.i.i.i.i = mul nsw i32 %div.i.i.i.i, 125
  br label %lm90_get_temp11.exit.i

if.else.i.i:                                      ; preds = %sw.bb.i13
  %kind.i.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %18 = ptrtoint ptr %kind.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %kind.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 8
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.else4.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = lshr i16 %14, 5
  %div.i20.i.i = zext i16 %20 to i32
  %mul.i21.i.i = mul nuw nsw i32 %div.i20.i.i, 125
  br label %lm90_get_temp11.exit.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = sdiv i16 %14, 32
  %div.i22.i.i = sext i16 %21 to i32
  %mul.i23.i.i = mul nsw i32 %div.i22.i.i, 125
  br label %lm90_get_temp11.exit.i

lm90_get_temp11.exit.i:                           ; preds = %if.else4.i.i, %if.then2.i.i, %if.end.i.i.i, %if.then.i.i.i
  %temp.0.i.i = phi i32 [ %mul.i21.i.i, %if.then2.i.i ], [ %mul.i23.i.i, %if.else4.i.i ], [ %mul.i.i.i, %if.then.i.i.i ], [ %mul.i.i.i.i, %if.end.i.i.i ]
  %kind7.i.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %22 = ptrtoint ptr %kind7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %kind7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp8.i.i = icmp eq i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp9.i.i = icmp eq i32 %channel, 1
  %or.cond.i.i = and i1 %cmp9.i.i, %cmp8.i.i
  %add.i.i = add nsw i32 %temp.0.i.i, 16000
  %temp.1.i.i = select i1 %or.cond.i.i, i32 %add.i.i, i32 %temp.0.i.i
  br label %return.sink.split

sw.bb4.i:                                         ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #12
  %alarms.i14 = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 21
  %24 = ptrtoint ptr %alarms.i14 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %alarms.i14, align 2
  %conv5.i = zext i16 %25 to i32
  %arrayidx6.i = getelementptr [3 x i8], ptr @lm90_min_alarm_bits, i32 0, i32 %channel
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %27 to i32
  %shr.i = lshr i32 %conv5.i, %conv7.i
  %and.i = and i32 %shr.i, 1
  br label %return.sink.split

sw.bb8.i:                                         ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #12
  %alarms9.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 21
  %28 = ptrtoint ptr %alarms9.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %alarms9.i, align 2
  %conv10.i = zext i16 %29 to i32
  %arrayidx11.i = getelementptr [3 x i8], ptr @lm90_max_alarm_bits, i32 0, i32 %channel
  %30 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %31 to i32
  %shr13.i = lshr i32 %conv10.i, %conv12.i
  %and14.i = and i32 %shr13.i, 1
  br label %return.sink.split

sw.bb15.i:                                        ; preds = %if.end.i11
  %flags.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i, align 4
  %and16.i = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %alarms25.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 21
  %34 = ptrtoint ptr %alarms25.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %alarms25.i, align 2
  %conv26.i = zext i16 %35 to i32
  br i1 %tobool17.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx21.i = getelementptr [3 x i8], ptr @lm90_crit_alarm_bits_swapped, i32 0, i32 %channel
  %36 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %37 to i32
  %shr23.i = lshr i32 %conv26.i, %conv22.i
  %and24.i = and i32 %shr23.i, 1
  br label %return.sink.split

if.else.i:                                        ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27.i = getelementptr [3 x i8], ptr @lm90_crit_alarm_bits, i32 0, i32 %channel
  %38 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = zext i8 %39 to i32
  %shr29.i = lshr i32 %conv26.i, %conv28.i
  %and30.i = and i32 %shr29.i, 1
  br label %return.sink.split

sw.bb32.i:                                        ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #12
  %alarms33.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 21
  %40 = ptrtoint ptr %alarms33.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %alarms33.i, align 2
  %conv34.i = zext i16 %41 to i32
  %arrayidx35.i = getelementptr [3 x i8], ptr @lm90_emergency_alarm_bits, i32 0, i32 %channel
  %42 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %43 to i32
  %shr37.i = lshr i32 %conv34.i, %conv36.i
  %and38.i = and i32 %shr37.i, 1
  br label %return.sink.split

sw.bb39.i:                                        ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #12
  %alarms40.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 21
  %44 = ptrtoint ptr %alarms40.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %alarms40.i, align 2
  %conv41.i = zext i16 %45 to i32
  %arrayidx42.i = getelementptr [3 x i8], ptr @lm90_fault_bits, i32 0, i32 %channel
  %46 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %47 to i32
  %shr44.i = lshr i32 %conv41.i, %conv43.i
  %and45.i = and i32 %shr44.i, 1
  br label %return.sink.split

sw.bb46.i:                                        ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i = icmp eq i32 %channel, 0
  br i1 %cmp.i, label %if.then48.i, label %if.else52.i

if.then48.i:                                      ; preds = %sw.bb46.i
  %arrayidx.i84 = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 18, i32 0
  %48 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i84, align 1
  %flags.i85 = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %50 = ptrtoint ptr %flags.i85 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i85, align 4
  %and.i86 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %tobool.not.i87 = icmp eq i32 %and.i86, 0
  br i1 %tobool.not.i87, label %if.else.i99, label %if.then.i90

if.then.i90:                                      ; preds = %if.then48.i
  %and.i.i88 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i88)
  %tobool.not.i.i89 = icmp eq i32 %and.i.i88, 0
  br i1 %tobool.not.i.i89, label %if.end.i.i96, label %if.then.i.i93

if.then.i.i93:                                    ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i91 = zext i8 %49 to i32
  %52 = mul nuw nsw i32 %conv.i.i91, 1000
  %mul.i.i92 = add nsw i32 %52, -64000
  br label %return.sink.split

if.end.i.i96:                                     ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i94 = sext i8 %49 to i32
  %mul.i.i.i95 = mul nsw i32 %conv.i.i.i94, 1000
  br label %return.sink.split

if.else.i99:                                      ; preds = %if.then48.i
  %kind.i97 = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %53 = ptrtoint ptr %kind.i97 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %kind.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %54)
  %cmp.i98 = icmp eq i32 %54, 8
  br i1 %cmp.i98, label %if.then2.i102, label %if.else4.i105

if.then2.i102:                                    ; preds = %if.else.i99
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i20.i100 = zext i8 %49 to i32
  %mul.i21.i101 = mul nuw nsw i32 %conv.i20.i100, 1000
  br label %return.sink.split

if.else4.i105:                                    ; preds = %if.else.i99
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i22.i103 = sext i8 %49 to i32
  %mul.i23.i104 = mul nsw i32 %conv.i22.i103, 1000
  br label %return.sink.split

if.else52.i:                                      ; preds = %sw.bb46.i
  %arrayidx53.i = getelementptr [3 x i8], ptr @lm90_temp_min_index, i32 0, i32 %channel
  %55 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %56 to i32
  %arrayidx.i52 = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 19, i32 %conv54.i
  %57 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.i52, align 2
  %flags.i53 = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %59 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i53, align 4
  %and.i54 = and i32 %60, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.not.i55 = icmp eq i32 %and.i54, 0
  br i1 %tobool.not.i55, label %if.else.i69, label %if.then.i58

if.then.i58:                                      ; preds = %if.else52.i
  %and.i.i56 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i56)
  %tobool.not.i.i57 = icmp eq i32 %and.i.i56, 0
  br i1 %tobool.not.i.i57, label %if.end.i.i66, label %if.then.i.i63

if.then.i.i63:                                    ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i59 = zext i16 %58 to i32
  %sub.i.i60 = add nsw i32 %conv.i.i59, -16384
  %div.i.i61 = sdiv i32 %sub.i.i60, 64
  %mul.i.i62 = mul nsw i32 %div.i.i61, 250
  br label %lm90_get_temp11.exit83

if.end.i.i66:                                     ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #12
  %61 = sdiv i16 %58, 32
  %div.i.i.i64 = sext i16 %61 to i32
  %mul.i.i.i65 = mul nsw i32 %div.i.i.i64, 125
  br label %lm90_get_temp11.exit83

if.else.i69:                                      ; preds = %if.else52.i
  %kind.i67 = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %62 = ptrtoint ptr %kind.i67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %kind.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %63)
  %cmp.i68 = icmp eq i32 %63, 8
  br i1 %cmp.i68, label %if.then2.i72, label %if.else4.i75

if.then2.i72:                                     ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #12
  %64 = lshr i16 %58, 5
  %div.i20.i70 = zext i16 %64 to i32
  %mul.i21.i71 = mul nuw nsw i32 %div.i20.i70, 125
  br label %lm90_get_temp11.exit83

if.else4.i75:                                     ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #12
  %65 = sdiv i16 %58, 32
  %div.i22.i73 = sext i16 %65 to i32
  %mul.i23.i74 = mul nsw i32 %div.i22.i73, 125
  br label %lm90_get_temp11.exit83

lm90_get_temp11.exit83:                           ; preds = %if.else4.i75, %if.then2.i72, %if.end.i.i66, %if.then.i.i63
  %temp.0.i76 = phi i32 [ %mul.i21.i71, %if.then2.i72 ], [ %mul.i23.i74, %if.else4.i75 ], [ %mul.i.i62, %if.then.i.i63 ], [ %mul.i.i.i65, %if.end.i.i66 ]
  %kind7.i77 = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %66 = ptrtoint ptr %kind7.i77 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %kind7.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp8.i78 = icmp eq i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %68 = icmp eq i32 %channel, 1
  %or.cond.i80 = and i1 %68, %cmp8.i78
  %add.i81 = add nsw i32 %temp.0.i76, 16000
  %temp.1.i82 = select i1 %or.cond.i80, i32 %add.i81, i32 %temp.0.i76
  br label %return.sink.split

sw.bb57.i:                                        ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp58.i = icmp eq i32 %channel, 0
  br i1 %cmp58.i, label %if.then60.i, label %if.else64.i

if.then60.i:                                      ; preds = %sw.bb57.i
  %arrayidx.i28 = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 18, i32 1
  %69 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i28, align 1
  %flags.i29 = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %71 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i29, align 4
  %and.i30 = and i32 %72, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %if.else.i43, label %if.then.i34

if.then.i34:                                      ; preds = %if.then60.i
  %and.i.i32 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.not.i.i33, label %if.end.i.i40, label %if.then.i.i37

if.then.i.i37:                                    ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i35 = zext i8 %70 to i32
  %73 = mul nuw nsw i32 %conv.i.i35, 1000
  %mul.i.i36 = add nsw i32 %73, -64000
  br label %return.sink.split

if.end.i.i40:                                     ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i38 = sext i8 %70 to i32
  %mul.i.i.i39 = mul nsw i32 %conv.i.i.i38, 1000
  br label %return.sink.split

if.else.i43:                                      ; preds = %if.then60.i
  %kind.i41 = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %74 = ptrtoint ptr %kind.i41 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %kind.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %75)
  %cmp.i42 = icmp eq i32 %75, 8
  br i1 %cmp.i42, label %if.then2.i45, label %if.else4.i47

if.then2.i45:                                     ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i20.i = zext i8 %70 to i32
  %mul.i21.i44 = mul nuw nsw i32 %conv.i20.i, 1000
  br label %return.sink.split

if.else4.i47:                                     ; preds = %if.else.i43
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i22.i = sext i8 %70 to i32
  %mul.i23.i46 = mul nsw i32 %conv.i22.i, 1000
  br label %return.sink.split

if.else64.i:                                      ; preds = %sw.bb57.i
  %arrayidx65.i = getelementptr [3 x i8], ptr @lm90_temp_max_index, i32 0, i32 %channel
  %76 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx65.i, align 1
  %conv66.i = zext i8 %77 to i32
  %arrayidx.i16 = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 19, i32 %conv66.i
  %78 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx.i16, align 2
  %flags.i17 = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %80 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i17, align 4
  %and.i18 = and i32 %81, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19, label %if.else.i27, label %if.then.i

if.then.i:                                        ; preds = %if.else64.i
  %and.i.i20 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i20)
  %tobool.not.i.i21 = icmp eq i32 %and.i.i20, 0
  br i1 %tobool.not.i.i21, label %if.end.i.i, label %if.then.i.i23

if.then.i.i23:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i16 %79 to i32
  %sub.i.i22 = add nsw i32 %conv.i.i, -16384
  %div.i.i = sdiv i32 %sub.i.i22, 64
  %mul.i.i = mul nsw i32 %div.i.i, 250
  br label %lm90_get_temp11.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = sdiv i16 %79, 32
  %div.i.i.i24 = sext i16 %82 to i32
  %mul.i.i.i25 = mul nsw i32 %div.i.i.i24, 125
  br label %lm90_get_temp11.exit

if.else.i27:                                      ; preds = %if.else64.i
  %kind.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %83 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %kind.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %84)
  %cmp.i26 = icmp eq i32 %84, 8
  br i1 %cmp.i26, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i27
  call void @__sanitizer_cov_trace_pc() #12
  %85 = lshr i16 %79, 5
  %div.i20.i = zext i16 %85 to i32
  %mul.i21.i = mul nuw nsw i32 %div.i20.i, 125
  br label %lm90_get_temp11.exit

if.else4.i:                                       ; preds = %if.else.i27
  call void @__sanitizer_cov_trace_pc() #12
  %86 = sdiv i16 %79, 32
  %div.i22.i = sext i16 %86 to i32
  %mul.i23.i = mul nsw i32 %div.i22.i, 125
  br label %lm90_get_temp11.exit

lm90_get_temp11.exit:                             ; preds = %if.else4.i, %if.then2.i, %if.end.i.i, %if.then.i.i23
  %temp.0.i = phi i32 [ %mul.i21.i, %if.then2.i ], [ %mul.i23.i, %if.else4.i ], [ %mul.i.i, %if.then.i.i23 ], [ %mul.i.i.i25, %if.end.i.i ]
  %kind7.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %87 = ptrtoint ptr %kind7.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %kind7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp8.i = icmp eq i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %89 = icmp eq i32 %channel, 1
  %or.cond.i = and i1 %89, %cmp8.i
  %add.i = add nsw i32 %temp.0.i, 16000
  %temp.1.i = select i1 %or.cond.i, i32 %add.i, i32 %temp.0.i
  br label %return.sink.split

sw.bb69.i:                                        ; preds = %if.end.i11
  %arrayidx70.i = getelementptr [3 x i8], ptr @lm90_temp_crit_index, i32 0, i32 %channel
  %90 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx70.i, align 1
  %conv71.i = zext i8 %91 to i32
  %arrayidx.i139.i = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 18, i32 %conv71.i
  %92 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i139.i, align 1
  %flags.i140.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %94 = ptrtoint ptr %flags.i140.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i140.i, align 4
  %and.i141.i = and i32 %95, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141.i)
  %tobool.not.i142.i = icmp eq i32 %and.i141.i, 0
  br i1 %tobool.not.i142.i, label %if.else.i153.i, label %if.then.i145.i

if.then.i145.i:                                   ; preds = %sw.bb69.i
  %and.i.i143.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i143.i)
  %tobool.not.i.i144.i = icmp eq i32 %and.i.i143.i, 0
  br i1 %tobool.not.i.i144.i, label %if.end.i.i150.i, label %if.then.i.i148.i

if.then.i.i148.i:                                 ; preds = %if.then.i145.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i146.i = zext i8 %93 to i32
  %96 = mul nuw nsw i32 %conv.i.i146.i, 1000
  %mul.i.i147.i = add nsw i32 %96, -64000
  br label %lm90_get_temp8.exit.i

if.end.i.i150.i:                                  ; preds = %if.then.i145.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = sext i8 %93 to i32
  %mul.i.i.i149.i = mul nsw i32 %conv.i.i.i.i, 1000
  br label %lm90_get_temp8.exit.i

if.else.i153.i:                                   ; preds = %sw.bb69.i
  %kind.i151.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %97 = ptrtoint ptr %kind.i151.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %kind.i151.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %98)
  %cmp.i152.i = icmp eq i32 %98, 8
  br i1 %cmp.i152.i, label %if.then2.i155.i, label %if.else4.i157.i

if.then2.i155.i:                                  ; preds = %if.else.i153.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i20.i.i = zext i8 %93 to i32
  %mul.i21.i154.i = mul nuw nsw i32 %conv.i20.i.i, 1000
  br label %lm90_get_temp8.exit.i

if.else4.i157.i:                                  ; preds = %if.else.i153.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i22.i.i = sext i8 %93 to i32
  %mul.i23.i156.i = mul nsw i32 %conv.i22.i.i, 1000
  br label %lm90_get_temp8.exit.i

lm90_get_temp8.exit.i:                            ; preds = %if.else4.i157.i, %if.then2.i155.i, %if.end.i.i150.i, %if.then.i.i148.i
  %temp.0.i158.i = phi i32 [ %mul.i21.i154.i, %if.then2.i155.i ], [ %mul.i23.i156.i, %if.else4.i157.i ], [ %mul.i.i147.i, %if.then.i.i148.i ], [ %mul.i.i.i149.i, %if.end.i.i150.i ]
  %kind7.i159.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %99 = ptrtoint ptr %kind7.i159.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %kind7.i159.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp8.i160.i = icmp eq i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp9.i161.i = icmp eq i32 %channel, 1
  %or.cond.i162.i = and i1 %cmp9.i161.i, %cmp8.i160.i
  %add.i163.i = add nsw i32 %temp.0.i158.i, 16000
  %temp.1.i164.i = select i1 %or.cond.i162.i, i32 %add.i163.i, i32 %temp.0.i158.i
  br label %return.sink.split

sw.bb73.i:                                        ; preds = %if.end.i11
  %arrayidx74.i = getelementptr [3 x i8], ptr @lm90_temp_crit_index, i32 0, i32 %channel
  %101 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx74.i, align 1
  %conv75.i = zext i8 %102 to i32
  %flags.i165.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %103 = ptrtoint ptr %flags.i165.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i165.i, align 4
  %and.i166.i = and i32 %104, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166.i)
  %tobool.not.i167.i = icmp eq i32 %and.i166.i, 0
  br i1 %tobool.not.i167.i, label %if.else.i180.i, label %if.then.i171.i

if.then.i171.i:                                   ; preds = %sw.bb73.i
  %arrayidx.i168.i = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 18, i32 %conv75.i
  %105 = ptrtoint ptr %arrayidx.i168.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i168.i, align 1
  %and.i.i169.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i169.i)
  %tobool.not.i.i170.i = icmp eq i32 %and.i.i169.i, 0
  br i1 %tobool.not.i.i170.i, label %if.end.i.i177.i, label %if.then.i.i174.i

if.then.i.i174.i:                                 ; preds = %if.then.i171.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i172.i = zext i8 %106 to i32
  %107 = mul nuw nsw i32 %conv.i.i172.i, 1000
  %mul.i.i173.i = add nsw i32 %107, -64000
  br label %lm90_get_temphyst.exit.i

if.end.i.i177.i:                                  ; preds = %if.then.i171.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i175.i = sext i8 %106 to i32
  %mul.i.i.i176.i = mul nsw i32 %conv.i.i.i175.i, 1000
  br label %lm90_get_temphyst.exit.i

if.else.i180.i:                                   ; preds = %sw.bb73.i
  %kind.i178.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %108 = ptrtoint ptr %kind.i178.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %kind.i178.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %109)
  %cmp.i179.i = icmp eq i32 %109, 8
  %arrayidx3.i.i = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 18, i32 %conv75.i
  %110 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx3.i.i, align 1
  br i1 %cmp.i179.i, label %if.then1.i.i, label %if.else5.i.i

if.then1.i.i:                                     ; preds = %if.else.i180.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i27.i.i = zext i8 %111 to i32
  %mul.i28.i.i = mul nuw nsw i32 %conv.i27.i.i, 1000
  br label %lm90_get_temphyst.exit.i

if.else5.i.i:                                     ; preds = %if.else.i180.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i29.i.i = sext i8 %111 to i32
  %mul.i30.i.i = mul nsw i32 %conv.i29.i.i, 1000
  br label %lm90_get_temphyst.exit.i

lm90_get_temphyst.exit.i:                         ; preds = %if.else5.i.i, %if.then1.i.i, %if.end.i.i177.i, %if.then.i.i174.i
  %temp.0.i181.i = phi i32 [ %mul.i28.i.i, %if.then1.i.i ], [ %mul.i30.i.i, %if.else5.i.i ], [ %mul.i.i173.i, %if.then.i.i174.i ], [ %mul.i.i.i176.i, %if.end.i.i177.i ]
  %kind10.i.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %112 = ptrtoint ptr %kind10.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %kind10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp11.i.i = icmp eq i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp12.i.i = icmp eq i32 %channel, 1
  %or.cond.i182.i = and i1 %cmp12.i.i, %cmp11.i.i
  %add.i183.i = add nsw i32 %temp.0.i181.i, 16000
  %temp.1.i184.i = select i1 %or.cond.i182.i, i32 %add.i183.i, i32 %temp.0.i181.i
  %temp_hyst.i.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 20
  %114 = ptrtoint ptr %temp_hyst.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %temp_hyst.i.i, align 4
  %conv.i31.i.i = sext i8 %115 to i32
  %mul.i32.neg.i.i = mul nsw i32 %conv.i31.i.i, -1000
  %sub.i.i = add nsw i32 %mul.i32.neg.i.i, %temp.1.i184.i
  br label %return.sink.split

sw.bb77.i:                                        ; preds = %if.end.i11
  %arrayidx78.i = getelementptr [3 x i8], ptr @lm90_temp_emerg_index, i32 0, i32 %channel
  %116 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx78.i, align 1
  %conv79.i = zext i8 %117 to i32
  %arrayidx.i185.i = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 18, i32 %conv79.i
  %118 = ptrtoint ptr %arrayidx.i185.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i185.i, align 1
  %flags.i186.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %120 = ptrtoint ptr %flags.i186.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags.i186.i, align 4
  %and.i187.i = and i32 %121, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187.i)
  %tobool.not.i188.i = icmp eq i32 %and.i187.i, 0
  br i1 %tobool.not.i188.i, label %if.else.i200.i, label %if.then.i191.i

if.then.i191.i:                                   ; preds = %sw.bb77.i
  %and.i.i189.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i189.i)
  %tobool.not.i.i190.i = icmp eq i32 %and.i.i189.i, 0
  br i1 %tobool.not.i.i190.i, label %if.end.i.i197.i, label %if.then.i.i194.i

if.then.i.i194.i:                                 ; preds = %if.then.i191.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i192.i = zext i8 %119 to i32
  %122 = mul nuw nsw i32 %conv.i.i192.i, 1000
  %mul.i.i193.i = add nsw i32 %122, -64000
  br label %return.sink.split

if.end.i.i197.i:                                  ; preds = %if.then.i191.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i195.i = sext i8 %119 to i32
  %mul.i.i.i196.i = mul nsw i32 %conv.i.i.i195.i, 1000
  br label %return.sink.split

if.else.i200.i:                                   ; preds = %sw.bb77.i
  %kind.i198.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %123 = ptrtoint ptr %kind.i198.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %kind.i198.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %124)
  %cmp.i199.i = icmp eq i32 %124, 8
  br i1 %cmp.i199.i, label %if.then2.i203.i, label %if.else4.i206.i

if.then2.i203.i:                                  ; preds = %if.else.i200.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i20.i201.i = zext i8 %119 to i32
  %mul.i21.i202.i = mul nuw nsw i32 %conv.i20.i201.i, 1000
  br label %return.sink.split

if.else4.i206.i:                                  ; preds = %if.else.i200.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i22.i204.i = sext i8 %119 to i32
  %mul.i23.i205.i = mul nsw i32 %conv.i22.i204.i, 1000
  br label %return.sink.split

sw.bb81.i:                                        ; preds = %if.end.i11
  %arrayidx82.i = getelementptr [3 x i8], ptr @lm90_temp_emerg_index, i32 0, i32 %channel
  %125 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx82.i, align 1
  %conv83.i = zext i8 %126 to i32
  %flags.i215.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %127 = ptrtoint ptr %flags.i215.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags.i215.i, align 4
  %and.i216.i = and i32 %128, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i216.i)
  %tobool.not.i217.i = icmp eq i32 %and.i216.i, 0
  br i1 %tobool.not.i217.i, label %if.else.i231.i, label %if.then.i221.i

if.then.i221.i:                                   ; preds = %sw.bb81.i
  %arrayidx.i218.i = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 18, i32 %conv83.i
  %129 = ptrtoint ptr %arrayidx.i218.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i218.i, align 1
  %and.i.i219.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i219.i)
  %tobool.not.i.i220.i = icmp eq i32 %and.i.i219.i, 0
  br i1 %tobool.not.i.i220.i, label %if.end.i.i227.i, label %if.then.i.i224.i

if.then.i.i224.i:                                 ; preds = %if.then.i221.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i222.i = zext i8 %130 to i32
  %131 = mul nuw nsw i32 %conv.i.i222.i, 1000
  %mul.i.i223.i = add nsw i32 %131, -64000
  br label %lm90_get_temphyst.exit249.i

if.end.i.i227.i:                                  ; preds = %if.then.i221.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i225.i = sext i8 %130 to i32
  %mul.i.i.i226.i = mul nsw i32 %conv.i.i.i225.i, 1000
  br label %lm90_get_temphyst.exit249.i

if.else.i231.i:                                   ; preds = %sw.bb81.i
  %kind.i228.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %132 = ptrtoint ptr %kind.i228.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %kind.i228.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %133)
  %cmp.i229.i = icmp eq i32 %133, 8
  %arrayidx3.i230.i = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 18, i32 %conv83.i
  %134 = ptrtoint ptr %arrayidx3.i230.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx3.i230.i, align 1
  br i1 %cmp.i229.i, label %if.then1.i234.i, label %if.else5.i237.i

if.then1.i234.i:                                  ; preds = %if.else.i231.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i27.i232.i = zext i8 %135 to i32
  %mul.i28.i233.i = mul nuw nsw i32 %conv.i27.i232.i, 1000
  br label %lm90_get_temphyst.exit249.i

if.else5.i237.i:                                  ; preds = %if.else.i231.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i29.i235.i = sext i8 %135 to i32
  %mul.i30.i236.i = mul nsw i32 %conv.i29.i235.i, 1000
  br label %lm90_get_temphyst.exit249.i

lm90_get_temphyst.exit249.i:                      ; preds = %if.else5.i237.i, %if.then1.i234.i, %if.end.i.i227.i, %if.then.i.i224.i
  %temp.0.i238.i = phi i32 [ %mul.i28.i233.i, %if.then1.i234.i ], [ %mul.i30.i236.i, %if.else5.i237.i ], [ %mul.i.i223.i, %if.then.i.i224.i ], [ %mul.i.i.i226.i, %if.end.i.i227.i ]
  %temp_hyst.i245.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 20
  %136 = ptrtoint ptr %temp_hyst.i245.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %temp_hyst.i245.i, align 4
  %conv.i31.i246.i = sext i8 %137 to i32
  %mul.i32.neg.i247.i = mul nsw i32 %conv.i31.i246.i, -1000
  %sub.i248.i = add nsw i32 %mul.i32.neg.i247.i, %temp.0.i238.i
  br label %return.sink.split

sw.bb85.i:                                        ; preds = %if.end.i11
  %arrayidx.i250.i = getelementptr %struct.lm90_data, ptr %9, i32 0, i32 19, i32 3
  %138 = ptrtoint ptr %arrayidx.i250.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx.i250.i, align 2
  %flags.i251.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 10
  %140 = ptrtoint ptr %flags.i251.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags.i251.i, align 4
  %and.i252.i = and i32 %141, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i252.i)
  %tobool.not.i253.i = icmp eq i32 %and.i252.i, 0
  br i1 %tobool.not.i253.i, label %if.else.i267.i, label %if.then.i256.i

if.then.i256.i:                                   ; preds = %sw.bb85.i
  %and.i.i254.i = and i32 %141, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i254.i)
  %tobool.not.i.i255.i = icmp eq i32 %and.i.i254.i, 0
  br i1 %tobool.not.i.i255.i, label %if.end.i.i264.i, label %if.then.i.i261.i

if.then.i.i261.i:                                 ; preds = %if.then.i256.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i257.i = zext i16 %139 to i32
  %sub.i.i258.i = add nsw i32 %conv.i.i257.i, -16384
  %div.i.i259.i = sdiv i32 %sub.i.i258.i, 64
  %mul.i.i260.i = mul nsw i32 %div.i.i259.i, 250
  br label %return.sink.split

if.end.i.i264.i:                                  ; preds = %if.then.i256.i
  call void @__sanitizer_cov_trace_pc() #12
  %142 = sdiv i16 %139, 32
  %div.i.i.i262.i = sext i16 %142 to i32
  %mul.i.i.i263.i = mul nsw i32 %div.i.i.i262.i, 125
  br label %return.sink.split

if.else.i267.i:                                   ; preds = %sw.bb85.i
  %kind.i265.i = getelementptr inbounds %struct.lm90_data, ptr %9, i32 0, i32 9
  %143 = ptrtoint ptr %kind.i265.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %kind.i265.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %144)
  %cmp.i266.i = icmp eq i32 %144, 8
  br i1 %cmp.i266.i, label %if.then2.i270.i, label %if.else4.i273.i

if.then2.i270.i:                                  ; preds = %if.else.i267.i
  call void @__sanitizer_cov_trace_pc() #12
  %145 = lshr i16 %139, 5
  %div.i20.i268.i = zext i16 %145 to i32
  %mul.i21.i269.i = mul nuw nsw i32 %div.i20.i268.i, 125
  br label %return.sink.split

if.else4.i273.i:                                  ; preds = %if.else.i267.i
  call void @__sanitizer_cov_trace_pc() #12
  %146 = sdiv i16 %139, 32
  %div.i22.i271.i = sext i16 %146 to i32
  %mul.i23.i272.i = mul nsw i32 %div.i22.i271.i, 125
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else4.i273.i, %if.then2.i270.i, %if.end.i.i264.i, %if.then.i.i261.i, %lm90_get_temphyst.exit249.i, %if.else4.i206.i, %if.then2.i203.i, %if.end.i.i197.i, %if.then.i.i194.i, %lm90_get_temphyst.exit.i, %lm90_get_temp8.exit.i, %lm90_get_temp11.exit, %if.else4.i47, %if.then2.i45, %if.end.i.i40, %if.then.i.i37, %lm90_get_temp11.exit83, %if.else4.i105, %if.then2.i102, %if.end.i.i96, %if.then.i.i93, %sw.bb39.i, %sw.bb32.i, %if.else.i, %if.then18.i, %sw.bb8.i, %sw.bb4.i, %lm90_get_temp11.exit.i, %sw.bb3.i, %sw.bb.i
  %temp.1.i.sink.i.sink = phi i32 [ %conv.i, %sw.bb3.i ], [ %5, %sw.bb.i ], [ %temp.1.i.i, %lm90_get_temp11.exit.i ], [ %and.i, %sw.bb4.i ], [ %and14.i, %sw.bb8.i ], [ %and38.i, %sw.bb32.i ], [ %and45.i, %sw.bb39.i ], [ %temp.1.i164.i, %lm90_get_temp8.exit.i ], [ %sub.i.i, %lm90_get_temphyst.exit.i ], [ %sub.i248.i, %lm90_get_temphyst.exit249.i ], [ %and30.i, %if.else.i ], [ %and24.i, %if.then18.i ], [ %temp.1.i82, %lm90_get_temp11.exit83 ], [ %temp.1.i, %lm90_get_temp11.exit ], [ %mul.i21.i202.i, %if.then2.i203.i ], [ %mul.i23.i205.i, %if.else4.i206.i ], [ %mul.i.i193.i, %if.then.i.i194.i ], [ %mul.i.i.i196.i, %if.end.i.i197.i ], [ %mul.i21.i269.i, %if.then2.i270.i ], [ %mul.i23.i272.i, %if.else4.i273.i ], [ %mul.i.i260.i, %if.then.i.i261.i ], [ %mul.i.i.i263.i, %if.end.i.i264.i ], [ %mul.i21.i101, %if.then2.i102 ], [ %mul.i23.i104, %if.else4.i105 ], [ %mul.i.i92, %if.then.i.i93 ], [ %mul.i.i.i95, %if.end.i.i96 ], [ %mul.i21.i44, %if.then2.i45 ], [ %mul.i23.i46, %if.else4.i47 ], [ %mul.i.i36, %if.then.i.i37 ], [ %mul.i.i.i39, %if.end.i.i40 ]
  %147 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %temp.1.i.sink.i.sink, ptr %val, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.i11.return_crit_edge, %sw.bb1.return_crit_edge, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call1.i, %sw.bb.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ], [ %call1.i9, %sw.bb1.return_crit_edge ], [ -95, %if.end.i11.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm90_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.lm90_data, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #10
  %call2.i = tail call fastcc i32 @lm90_update_device(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.return.sink.split_crit_edge

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond11.i = icmp eq i32 %attr, 5
  br i1 %cond11.i, label %sw.bb.i, label %if.end.i.return.sink.split_crit_edge

if.end.i.return.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #10
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 100000) #10
  %call9.i = tail call fastcc i32 @lm90_set_convrate(ptr noundef %2, i32 noundef %4) #10
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i7, align 4
  %update_lock.i8 = getelementptr inbounds %struct.lm90_data, ptr %6, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i8, i32 noundef 0) #10
  %call1.i = tail call fastcc i32 @lm90_update_device(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i9 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i9, label %if.end.i10, label %sw.bb1.return.sink.split_crit_edge

sw.bb1.return.sink.split_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

if.end.i10:                                       ; preds = %sw.bb1
  %7 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %attr, label %if.end.i10.return.sink.split_crit_edge [
    i32 5, label %sw.bb.i11
    i32 7, label %sw.bb8.i
    i32 9, label %sw.bb20.i
    i32 10, label %sw.bb24.i
    i32 11, label %sw.bb26.i
    i32 20, label %sw.bb30.i
  ]

if.end.i10.return.sink.split_crit_edge:           ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

sw.bb.i11:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i = icmp eq i32 %channel, 0
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %sw.bb.i11
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call fastcc i32 @lm90_set_temp8(ptr noundef %6, i32 noundef 0, i32 noundef %val) #10
  br label %return.sink.split

if.else.i:                                        ; preds = %sw.bb.i11
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4.i = getelementptr [3 x i8], ptr @lm90_temp_min_index, i32 0, i32 %channel
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %9 to i32
  %call6.i = tail call fastcc i32 @lm90_set_temp11(ptr noundef %6, i32 noundef %conv5.i, i32 noundef %val) #10
  br label %return.sink.split

sw.bb8.i:                                         ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp9.i = icmp eq i32 %channel, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.else15.i

if.then11.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = tail call fastcc i32 @lm90_set_temp8(ptr noundef %6, i32 noundef 1, i32 noundef %val) #10
  br label %return.sink.split

if.else15.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16.i = getelementptr [3 x i8], ptr @lm90_temp_max_index, i32 0, i32 %channel
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %11 to i32
  %call18.i = tail call fastcc i32 @lm90_set_temp11(ptr noundef %6, i32 noundef %conv17.i, i32 noundef %val) #10
  br label %return.sink.split

sw.bb20.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx21.i = getelementptr [3 x i8], ptr @lm90_temp_crit_index, i32 0, i32 %channel
  %12 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %13 to i32
  %call23.i = tail call fastcc i32 @lm90_set_temp8(ptr noundef %6, i32 noundef %conv22.i, i32 noundef %val) #10
  br label %return.sink.split

sw.bb24.i:                                        ; preds = %if.end.i10
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 4
  %flags.i.i = getelementptr inbounds %struct.lm90_data, ptr %6, i32 0, i32 10
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb24.i
  %arrayidx.i.i = getelementptr %struct.lm90_data, ptr %6, i32 0, i32 18, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i, align 2
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i = zext i8 %19 to i32
  %20 = mul nuw nsw i32 %conv.i.i.i, 1000
  %mul.i.i.i = add nsw i32 %20, -64000
  br label %if.end10.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = sext i8 %19 to i32
  %mul.i.i.i.i = mul nsw i32 %conv.i.i.i.i, 1000
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %sw.bb24.i
  %kind.i.i = getelementptr inbounds %struct.lm90_data, ptr %6, i32 0, i32 9
  %21 = ptrtoint ptr %kind.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %kind.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %22)
  %cmp.i.i = icmp eq i32 %22, 8
  %arrayidx4.i.i = getelementptr %struct.lm90_data, ptr %6, i32 0, i32 18, i32 2
  %23 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4.i.i, align 2
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.else6.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i34.i.i = zext i8 %24 to i32
  %mul.i35.i.i = mul nuw nsw i32 %conv.i34.i.i, 1000
  br label %if.end10.i.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i36.i.i = sext i8 %24 to i32
  %mul.i37.i.i = mul nsw i32 %conv.i36.i.i, 1000
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else6.i.i, %if.then2.i.i, %if.end.i.i.i, %if.then.i.i.i
  %temp.0.i.i = phi i32 [ %mul.i35.i.i, %if.then2.i.i ], [ %mul.i37.i.i, %if.else6.i.i ], [ %mul.i.i.i, %if.then.i.i.i ], [ %mul.i.i.i.i, %if.end.i.i.i ]
  %25 = tail call i32 @llvm.smax.i32(i32 %val, i32 -128000) #10
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 255000) #10
  %sub.i.i = sub nsw i32 %temp.0.i.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i.i.i, label %if.end10.i.i.lm90_set_temphyst.exit.i_crit_edge, label %if.end.i38.i.i

if.end10.i.i.lm90_set_temphyst.exit.i_crit_edge:  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_set_temphyst.exit.i

if.end.i38.i.i:                                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30499, i32 %sub.i.i)
  %cmp1.i.i.i = icmp ugt i32 %sub.i.i, 30499
  br i1 %cmp1.i.i.i, label %if.end.i38.i.i.lm90_set_temphyst.exit.i_crit_edge, label %if.end3.i.i.i

if.end.i38.i.i.lm90_set_temphyst.exit.i_crit_edge: ; preds = %if.end.i38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_set_temphyst.exit.i

if.end3.i.i.i:                                    ; preds = %if.end.i38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = trunc i32 %sub.i.i to i16
  %div6.lhs.trunc.i.i.i = add nuw nsw i16 %27, 500
  %div67.i.i.i = udiv i16 %div6.lhs.trunc.i.i.i, 1000
  %conv.i39.i.i = trunc i16 %div67.i.i.i to i8
  br label %lm90_set_temphyst.exit.i

lm90_set_temphyst.exit.i:                         ; preds = %if.end3.i.i.i, %if.end.i38.i.i.lm90_set_temphyst.exit.i_crit_edge, %if.end10.i.i.lm90_set_temphyst.exit.i_crit_edge
  %retval.0.i40.i.i = phi i8 [ %conv.i39.i.i, %if.end3.i.i.i ], [ 0, %if.end10.i.i.lm90_set_temphyst.exit.i_crit_edge ], [ 31, %if.end.i38.i.i.lm90_set_temphyst.exit.i_crit_edge ]
  %temp_hyst.i.i = getelementptr inbounds %struct.lm90_data, ptr %6, i32 0, i32 20
  %28 = ptrtoint ptr %temp_hyst.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %retval.0.i40.i.i, ptr %temp_hyst.i.i, align 4
  %call20.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 33, i8 noundef zeroext %retval.0.i40.i.i) #10
  br label %return.sink.split

sw.bb26.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27.i = getelementptr [3 x i8], ptr @lm90_temp_emerg_index, i32 0, i32 %channel
  %29 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = zext i8 %30 to i32
  %call29.i = tail call fastcc i32 @lm90_set_temp8(ptr noundef %6, i32 noundef %conv28.i, i32 noundef %val) #10
  br label %return.sink.split

sw.bb30.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #12
  %call31.i = tail call fastcc i32 @lm90_set_temp11(ptr noundef %6, i32 noundef 3, i32 noundef %val) #10
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb30.i, %sw.bb26.i, %lm90_set_temphyst.exit.i, %sw.bb20.i, %if.else15.i, %if.then11.i, %if.else.i, %if.then2.i, %if.end.i10.return.sink.split_crit_edge, %sw.bb1.return.sink.split_crit_edge, %sw.bb.i, %if.end.i.return.sink.split_crit_edge, %sw.bb.return.sink.split_crit_edge
  %update_lock.i8.sink = phi ptr [ %update_lock.i, %sw.bb.return.sink.split_crit_edge ], [ %update_lock.i, %if.end.i.return.sink.split_crit_edge ], [ %update_lock.i, %sw.bb.i ], [ %update_lock.i8, %sw.bb1.return.sink.split_crit_edge ], [ %update_lock.i8, %if.end.i10.return.sink.split_crit_edge ], [ %update_lock.i8, %if.then2.i ], [ %update_lock.i8, %if.else.i ], [ %update_lock.i8, %if.then11.i ], [ %update_lock.i8, %if.else15.i ], [ %update_lock.i8, %sw.bb20.i ], [ %update_lock.i8, %lm90_set_temphyst.exit.i ], [ %update_lock.i8, %sw.bb26.i ], [ %update_lock.i8, %sw.bb30.i ]
  %retval.0.ph = phi i32 [ %call2.i, %sw.bb.return.sink.split_crit_edge ], [ -95, %if.end.i.return.sink.split_crit_edge ], [ %call9.i, %sw.bb.i ], [ %call1.i, %sw.bb1.return.sink.split_crit_edge ], [ -95, %if.end.i10.return.sink.split_crit_edge ], [ %call3.i, %if.then2.i ], [ %call6.i, %if.else.i ], [ %call14.i, %if.then11.i ], [ %call18.i, %if.else15.i ], [ %call23.i, %sw.bb20.i ], [ %call20.i.i, %lm90_set_temphyst.exit.i ], [ %call29.i, %sw.bb26.i ], [ %call31.i, %sw.bb30.i ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i8.sink) #10
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm90_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %valid = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end18.i_crit_edge, label %if.then.i209

if.then.if.end18.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then.i209:                                     ; preds = %if.then
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 8
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i209
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i.i.i, align 2
  %15 = and i16 %9, -5
  %call.i.i.i = tail call i32 @i2c_smbus_xfer(ptr noundef %12, i16 noundef zeroext %14, i16 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext 32, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit.i

if.else.i.i:                                      ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 32) #10
  br label %lm90_read_reg.exit.i

lm90_read_reg.exit.i:                             ; preds = %if.else.i.i, %if.then2.i.i
  %err.0.i.i = phi i32 [ %call3.i.i, %if.then2.i.i ], [ %call4.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp.i210 = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp.i210, label %lm90_read_reg.exit.i.cleanup_crit_edge, label %if.end.i211

lm90_read_reg.exit.i.cleanup_crit_edge:           ; preds = %lm90_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i211:                                      ; preds = %lm90_read_reg.exit.i
  %conv.i = trunc i32 %err.0.i.i to i8
  %arrayidx.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 18, i32 2
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %arrayidx.i, align 2
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 8
  %19 = and i16 %18, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i224.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i224.i, label %if.else.i233.i, label %if.then.i229.i

if.then.i229.i:                                   ; preds = %if.end.i211
  %adapter.i.i225.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i225.i, align 8
  %addr.i.i226.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %addr.i.i226.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr.i.i226.i, align 2
  %24 = and i16 %18, -5
  %call.i.i227.i = tail call i32 @i2c_smbus_xfer(ptr noundef %21, i16 noundef zeroext %23, i16 noundef zeroext %24, i8 noundef zeroext 0, i8 noundef zeroext 25, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i227.i)
  %cmp.i228.i = icmp sgt i32 %call.i.i227.i, -1
  br i1 %cmp.i228.i, label %if.then2.i231.i, label %if.then.i229.i.cleanup_crit_edge

if.then.i229.i.cleanup_crit_edge:                 ; preds = %if.then.i229.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i231.i:                                  ; preds = %if.then.i229.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i230.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit235.i

if.else.i233.i:                                   ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i232.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 25) #10
  br label %lm90_read_reg.exit235.i

lm90_read_reg.exit235.i:                          ; preds = %if.else.i233.i, %if.then2.i231.i
  %err.0.i234.i = phi i32 [ %call3.i230.i, %if.then2.i231.i ], [ %call4.i232.i, %if.else.i233.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i234.i)
  %cmp5.i = icmp slt i32 %err.0.i234.i, 0
  br i1 %cmp5.i, label %lm90_read_reg.exit235.i.cleanup_crit_edge, label %if.end8.i

lm90_read_reg.exit235.i.cleanup_crit_edge:        ; preds = %lm90_read_reg.exit235.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %lm90_read_reg.exit235.i
  %conv9.i = trunc i32 %err.0.i234.i to i8
  %arrayidx11.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 18, i32 3
  %25 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %3, align 8
  %28 = and i16 %27, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i236.i = icmp eq i16 %28, 0
  br i1 %tobool.not.i236.i, label %if.else.i245.i, label %if.then.i241.i

if.then.i241.i:                                   ; preds = %if.end8.i
  %adapter.i.i237.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %adapter.i.i237.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i.i237.i, align 8
  %addr.i.i238.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %addr.i.i238.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr.i.i238.i, align 2
  %33 = and i16 %27, -5
  %call.i.i239.i = tail call i32 @i2c_smbus_xfer(ptr noundef %30, i16 noundef zeroext %32, i16 noundef zeroext %33, i8 noundef zeroext 0, i8 noundef zeroext 33, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i239.i)
  %cmp.i240.i = icmp sgt i32 %call.i.i239.i, -1
  br i1 %cmp.i240.i, label %if.then2.i243.i, label %if.then.i241.i.cleanup_crit_edge

if.then.i241.i.cleanup_crit_edge:                 ; preds = %if.then.i241.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i243.i:                                  ; preds = %if.then.i241.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i242.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit247.i

if.else.i245.i:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i244.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 33) #10
  br label %lm90_read_reg.exit247.i

lm90_read_reg.exit247.i:                          ; preds = %if.else.i245.i, %if.then2.i243.i
  %err.0.i246.i = phi i32 [ %call3.i242.i, %if.then2.i243.i ], [ %call4.i244.i, %if.else.i245.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i246.i)
  %cmp13.i = icmp slt i32 %err.0.i246.i, 0
  br i1 %cmp13.i, label %lm90_read_reg.exit247.i.cleanup_crit_edge, label %if.end16.i

lm90_read_reg.exit247.i.cleanup_crit_edge:        ; preds = %lm90_read_reg.exit247.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.i:                                       ; preds = %lm90_read_reg.exit247.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv17.i = trunc i32 %err.0.i246.i to i8
  %temp_hyst.i = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 20
  %34 = ptrtoint ptr %temp_hyst.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv17.i, ptr %temp_hyst.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end16.i, %if.then.if.end18.i_crit_edge
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %3, align 8
  %37 = and i16 %36, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i248.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i248.i, label %if.else.i257.i, label %if.then.i253.i

if.then.i253.i:                                   ; preds = %if.end18.i
  %adapter.i.i249.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %38 = ptrtoint ptr %adapter.i.i249.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i.i249.i, align 8
  %addr.i.i250.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %addr.i.i250.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr.i.i250.i, align 2
  %42 = and i16 %36, -5
  %call.i.i251.i = tail call i32 @i2c_smbus_xfer(ptr noundef %39, i16 noundef zeroext %41, i16 noundef zeroext %42, i8 noundef zeroext 0, i8 noundef zeroext 8, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i251.i)
  %cmp.i252.i = icmp sgt i32 %call.i.i251.i, -1
  br i1 %cmp.i252.i, label %if.then2.i255.i, label %if.then.i253.i.cleanup_crit_edge

if.then.i253.i.cleanup_crit_edge:                 ; preds = %if.then.i253.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i255.i:                                  ; preds = %if.then.i253.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i254.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit259.i

if.else.i257.i:                                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i256.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 8) #10
  br label %lm90_read_reg.exit259.i

lm90_read_reg.exit259.i:                          ; preds = %if.else.i257.i, %if.then2.i255.i
  %err.0.i258.i = phi i32 [ %call3.i254.i, %if.then2.i255.i ], [ %call4.i256.i, %if.else.i257.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i258.i)
  %cmp20.i = icmp slt i32 %err.0.i258.i, 0
  br i1 %cmp20.i, label %lm90_read_reg.exit259.i.cleanup_crit_edge, label %if.end23.i

lm90_read_reg.exit259.i.cleanup_crit_edge:        ; preds = %lm90_read_reg.exit259.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23.i:                                       ; preds = %lm90_read_reg.exit259.i
  %call19.tr.i = trunc i32 %err.0.i258.i to i16
  %conv24.i = shl i16 %call19.tr.i, 8
  %arrayidx25.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 19, i32 1
  %43 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv24.i, ptr %arrayidx25.i, align 2
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i, align 4
  %and27.i = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end23.i.if.end39.i_crit_edge, label %if.then29.i

if.end23.i.if.end39.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then29.i:                                      ; preds = %if.end23.i
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %3, align 8
  %48 = and i16 %47, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i260.i = icmp eq i16 %48, 0
  br i1 %tobool.not.i260.i, label %if.else.i269.i, label %if.then.i265.i

if.then.i265.i:                                   ; preds = %if.then29.i
  %adapter.i.i261.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %49 = ptrtoint ptr %adapter.i.i261.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter.i.i261.i, align 8
  %addr.i.i262.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %51 = ptrtoint ptr %addr.i.i262.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %addr.i.i262.i, align 2
  %53 = and i16 %47, -5
  %call.i.i263.i = tail call i32 @i2c_smbus_xfer(ptr noundef %50, i16 noundef zeroext %52, i16 noundef zeroext %53, i8 noundef zeroext 0, i8 noundef zeroext 20, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i263.i)
  %cmp.i264.i = icmp sgt i32 %call.i.i263.i, -1
  br i1 %cmp.i264.i, label %if.then2.i267.i, label %if.then.i265.i.cleanup_crit_edge

if.then.i265.i.cleanup_crit_edge:                 ; preds = %if.then.i265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i267.i:                                  ; preds = %if.then.i265.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i266.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit271.i

if.else.i269.i:                                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i268.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 20) #10
  br label %lm90_read_reg.exit271.i

lm90_read_reg.exit271.i:                          ; preds = %if.else.i269.i, %if.then2.i267.i
  %err.0.i270.i = phi i32 [ %call3.i266.i, %if.then2.i267.i ], [ %call4.i268.i, %if.else.i269.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i270.i)
  %cmp31.i = icmp slt i32 %err.0.i270.i, 0
  br i1 %cmp31.i, label %lm90_read_reg.exit271.i.cleanup_crit_edge, label %if.end34.i

lm90_read_reg.exit271.i.cleanup_crit_edge:        ; preds = %lm90_read_reg.exit271.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34.i:                                       ; preds = %lm90_read_reg.exit271.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx25.i, align 2
  %56 = trunc i32 %err.0.i270.i to i16
  %conv38.i = or i16 %55, %56
  store i16 %conv38.i, ptr %arrayidx25.i, align 2
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end34.i, %if.end23.i.if.end39.i_crit_edge
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %3, align 8
  %59 = and i16 %58, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool.not.i272.i = icmp eq i16 %59, 0
  br i1 %tobool.not.i272.i, label %if.else.i281.i, label %if.then.i277.i

if.then.i277.i:                                   ; preds = %if.end39.i
  %adapter.i.i273.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %60 = ptrtoint ptr %adapter.i.i273.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter.i.i273.i, align 8
  %addr.i.i274.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %62 = ptrtoint ptr %addr.i.i274.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %addr.i.i274.i, align 2
  %64 = and i16 %58, -5
  %call.i.i275.i = tail call i32 @i2c_smbus_xfer(ptr noundef %61, i16 noundef zeroext %63, i16 noundef zeroext %64, i8 noundef zeroext 0, i8 noundef zeroext 7, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i275.i)
  %cmp.i276.i = icmp sgt i32 %call.i.i275.i, -1
  br i1 %cmp.i276.i, label %if.then2.i279.i, label %if.then.i277.i.cleanup_crit_edge

if.then.i277.i.cleanup_crit_edge:                 ; preds = %if.then.i277.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i279.i:                                  ; preds = %if.then.i277.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i278.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit283.i

if.else.i281.i:                                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i280.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 7) #10
  br label %lm90_read_reg.exit283.i

lm90_read_reg.exit283.i:                          ; preds = %if.else.i281.i, %if.then2.i279.i
  %err.0.i282.i = phi i32 [ %call3.i278.i, %if.then2.i279.i ], [ %call4.i280.i, %if.else.i281.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i282.i)
  %cmp41.i = icmp slt i32 %err.0.i282.i, 0
  br i1 %cmp41.i, label %lm90_read_reg.exit283.i.cleanup_crit_edge, label %if.end44.i

lm90_read_reg.exit283.i.cleanup_crit_edge:        ; preds = %lm90_read_reg.exit283.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44.i:                                       ; preds = %lm90_read_reg.exit283.i
  %call40.tr.i = trunc i32 %err.0.i282.i to i16
  %conv46.i = shl i16 %call40.tr.i, 8
  %arrayidx48.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 19, i32 2
  %65 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv46.i, ptr %arrayidx48.i, align 4
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i, align 4
  %and50.i = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end44.i.if.end63.i_crit_edge, label %if.then52.i

if.end44.i.if.end63.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then52.i:                                      ; preds = %if.end44.i
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %3, align 8
  %70 = and i16 %69, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool.not.i284.i = icmp eq i16 %70, 0
  br i1 %tobool.not.i284.i, label %if.else.i293.i, label %if.then.i289.i

if.then.i289.i:                                   ; preds = %if.then52.i
  %adapter.i.i285.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %71 = ptrtoint ptr %adapter.i.i285.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter.i.i285.i, align 8
  %addr.i.i286.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %73 = ptrtoint ptr %addr.i.i286.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %addr.i.i286.i, align 2
  %75 = and i16 %69, -5
  %call.i.i287.i = tail call i32 @i2c_smbus_xfer(ptr noundef %72, i16 noundef zeroext %74, i16 noundef zeroext %75, i8 noundef zeroext 0, i8 noundef zeroext 19, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i287.i)
  %cmp.i288.i = icmp sgt i32 %call.i.i287.i, -1
  br i1 %cmp.i288.i, label %if.then2.i291.i, label %if.then.i289.i.cleanup_crit_edge

if.then.i289.i.cleanup_crit_edge:                 ; preds = %if.then.i289.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i291.i:                                  ; preds = %if.then.i289.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i290.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit295.i

if.else.i293.i:                                   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i292.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 19) #10
  br label %lm90_read_reg.exit295.i

lm90_read_reg.exit295.i:                          ; preds = %if.else.i293.i, %if.then2.i291.i
  %err.0.i294.i = phi i32 [ %call3.i290.i, %if.then2.i291.i ], [ %call4.i292.i, %if.else.i293.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i294.i)
  %cmp54.i = icmp slt i32 %err.0.i294.i, 0
  br i1 %cmp54.i, label %lm90_read_reg.exit295.i.cleanup_crit_edge, label %if.end57.i

lm90_read_reg.exit295.i.cleanup_crit_edge:        ; preds = %lm90_read_reg.exit295.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57.i:                                       ; preds = %lm90_read_reg.exit295.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx48.i, align 4
  %78 = trunc i32 %err.0.i294.i to i16
  %conv62.i = or i16 %77, %78
  store i16 %conv62.i, ptr %arrayidx48.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.end57.i, %if.end44.i.if.end63.i_crit_edge
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i, align 4
  %and65.i = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.end63.i.if.end76.i_crit_edge, label %if.then67.i

if.end63.i.if.end76.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i

if.then67.i:                                      ; preds = %if.end63.i
  %call68.i = tail call fastcc i32 @lm90_read16(ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext 18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.i = icmp slt i32 %call68.i, 0
  br i1 %cmp69.i, label %if.then67.i.cleanup_crit_edge, label %if.end72.i

if.then67.i.cleanup_crit_edge:                    ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end72.i:                                       ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv73.i = trunc i32 %call68.i to i16
  %arrayidx75.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 19, i32 3
  %81 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv73.i, ptr %arrayidx75.i, align 2
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.end72.i, %if.end63.i.if.end76.i_crit_edge
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i, align 4
  %and78.i = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %if.end76.i.if.end97.i_crit_edge, label %if.then80.i

if.end76.i.if.end97.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97.i

if.then80.i:                                      ; preds = %if.end76.i
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %3, align 8
  %86 = and i16 %85, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool.not.i296.i = icmp eq i16 %86, 0
  br i1 %tobool.not.i296.i, label %if.else.i305.i, label %if.then.i301.i

if.then.i301.i:                                   ; preds = %if.then80.i
  %adapter.i.i297.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %87 = ptrtoint ptr %adapter.i.i297.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %adapter.i.i297.i, align 8
  %addr.i.i298.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %89 = ptrtoint ptr %addr.i.i298.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %addr.i.i298.i, align 2
  %91 = and i16 %85, -5
  %call.i.i299.i = tail call i32 @i2c_smbus_xfer(ptr noundef %88, i16 noundef zeroext %90, i16 noundef zeroext %91, i8 noundef zeroext 0, i8 noundef zeroext 23, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i299.i)
  %cmp.i300.i = icmp sgt i32 %call.i.i299.i, -1
  br i1 %cmp.i300.i, label %if.then2.i303.i, label %if.then.i301.i.cleanup_crit_edge

if.then.i301.i.cleanup_crit_edge:                 ; preds = %if.then.i301.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i303.i:                                  ; preds = %if.then.i301.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i302.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit307.i

if.else.i305.i:                                   ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i304.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 23) #10
  br label %lm90_read_reg.exit307.i

lm90_read_reg.exit307.i:                          ; preds = %if.else.i305.i, %if.then2.i303.i
  %err.0.i306.i = phi i32 [ %call3.i302.i, %if.then2.i303.i ], [ %call4.i304.i, %if.else.i305.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i306.i)
  %cmp82.i = icmp slt i32 %err.0.i306.i, 0
  br i1 %cmp82.i, label %lm90_read_reg.exit307.i.cleanup_crit_edge, label %if.end85.i

lm90_read_reg.exit307.i.cleanup_crit_edge:        ; preds = %lm90_read_reg.exit307.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end85.i:                                       ; preds = %lm90_read_reg.exit307.i
  %conv86.i = trunc i32 %err.0.i306.i to i8
  %arrayidx88.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 18, i32 4
  %92 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv86.i, ptr %arrayidx88.i, align 4
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %3, align 8
  %95 = and i16 %94, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool.not.i308.i = icmp eq i16 %95, 0
  br i1 %tobool.not.i308.i, label %if.else.i317.i, label %if.then.i313.i

if.then.i313.i:                                   ; preds = %if.end85.i
  %adapter.i.i309.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %96 = ptrtoint ptr %adapter.i.i309.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adapter.i.i309.i, align 8
  %addr.i.i310.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %98 = ptrtoint ptr %addr.i.i310.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %addr.i.i310.i, align 2
  %100 = and i16 %94, -5
  %call.i.i311.i = tail call i32 @i2c_smbus_xfer(ptr noundef %97, i16 noundef zeroext %99, i16 noundef zeroext %100, i8 noundef zeroext 0, i8 noundef zeroext 22, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i311.i)
  %cmp.i312.i = icmp sgt i32 %call.i.i311.i, -1
  br i1 %cmp.i312.i, label %if.then2.i315.i, label %if.then.i313.i.cleanup_crit_edge

if.then.i313.i.cleanup_crit_edge:                 ; preds = %if.then.i313.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i315.i:                                  ; preds = %if.then.i313.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i314.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit319.i

if.else.i317.i:                                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i316.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 22) #10
  br label %lm90_read_reg.exit319.i

lm90_read_reg.exit319.i:                          ; preds = %if.else.i317.i, %if.then2.i315.i
  %err.0.i318.i = phi i32 [ %call3.i314.i, %if.then2.i315.i ], [ %call4.i316.i, %if.else.i317.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i318.i)
  %cmp90.i = icmp slt i32 %err.0.i318.i, 0
  br i1 %cmp90.i, label %lm90_read_reg.exit319.i.cleanup_crit_edge, label %if.end93.i

lm90_read_reg.exit319.i.cleanup_crit_edge:        ; preds = %lm90_read_reg.exit319.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end93.i:                                       ; preds = %lm90_read_reg.exit319.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv94.i = trunc i32 %err.0.i318.i to i8
  %arrayidx96.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 18, i32 5
  %101 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv94.i, ptr %arrayidx96.i, align 1
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.end93.i, %if.end76.i.if.end97.i_crit_edge
  %kind.i = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 9
  %102 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %kind.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %103)
  %cmp98.i = icmp eq i32 %103, 10
  br i1 %cmp98.i, label %if.then.i321.i, label %if.end97.i.if.end4_crit_edge

if.end97.i.if.end4_crit_edge:                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.i321.i:                                   ; preds = %if.end97.i
  %config1.i.i = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 12
  %104 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %config1.i.i, align 4
  %spec.select.i.i = or i8 %105, 8
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %spec.select.i.i)
  %cmp.not.i.i.i = icmp eq i8 %105, %spec.select.i.i
  br i1 %cmp.not.i.i.i, label %if.then.i321.i.if.end105.i_crit_edge, label %if.then.i.i.i

if.then.i321.i.if.end105.i_crit_edge:             ; preds = %if.then.i321.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

if.then.i.i.i:                                    ; preds = %if.then.i321.i
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %call.i.i322.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext 9, i8 noundef zeroext %spec.select.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i322.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i322.i, 0
  br i1 %tobool.not.i.i.i, label %cleanup.thread.i.i.i, label %lm90_select_remote_channel.exit.i

cleanup.thread.i.i.i:                             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %spec.select.i.i, ptr %config1.i.i, align 4
  br label %if.end105.i

lm90_select_remote_channel.exit.i:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i322.i)
  %cmp102.i = icmp slt i32 %call.i.i322.i, 0
  br i1 %cmp102.i, label %lm90_select_remote_channel.exit.i.cleanup_crit_edge, label %lm90_select_remote_channel.exit.i.if.end105.i_crit_edge

lm90_select_remote_channel.exit.i.if.end105.i_crit_edge: ; preds = %lm90_select_remote_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

lm90_select_remote_channel.exit.i.cleanup_crit_edge: ; preds = %lm90_select_remote_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end105.i:                                      ; preds = %lm90_select_remote_channel.exit.i.if.end105.i_crit_edge, %cleanup.thread.i.i.i, %if.then.i321.i.if.end105.i_crit_edge
  %109 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %3, align 8
  %111 = and i16 %110, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool.not.i324.i = icmp eq i16 %111, 0
  br i1 %tobool.not.i324.i, label %if.else.i333.i, label %if.then.i329.i

if.then.i329.i:                                   ; preds = %if.end105.i
  %adapter.i.i325.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %112 = ptrtoint ptr %adapter.i.i325.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %adapter.i.i325.i, align 8
  %addr.i.i326.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %114 = ptrtoint ptr %addr.i.i326.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %addr.i.i326.i, align 2
  %116 = and i16 %110, -5
  %call.i.i327.i = tail call i32 @i2c_smbus_xfer(ptr noundef %113, i16 noundef zeroext %115, i16 noundef zeroext %116, i8 noundef zeroext 0, i8 noundef zeroext 25, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i327.i)
  %cmp.i328.i = icmp sgt i32 %call.i.i327.i, -1
  br i1 %cmp.i328.i, label %if.then2.i331.i, label %if.then.i329.i.cleanup_crit_edge

if.then.i329.i.cleanup_crit_edge:                 ; preds = %if.then.i329.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i331.i:                                  ; preds = %if.then.i329.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i330.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit335.i

if.else.i333.i:                                   ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i332.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 25) #10
  br label %lm90_read_reg.exit335.i

lm90_read_reg.exit335.i:                          ; preds = %if.else.i333.i, %if.then2.i331.i
  %err.0.i334.i = phi i32 [ %call3.i330.i, %if.then2.i331.i ], [ %call4.i332.i, %if.else.i333.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i334.i)
  %cmp107.i = icmp slt i32 %err.0.i334.i, 0
  br i1 %cmp107.i, label %lm90_read_reg.exit335.i.cleanup_crit_edge, label %if.end110.i

lm90_read_reg.exit335.i.cleanup_crit_edge:        ; preds = %lm90_read_reg.exit335.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end110.i:                                      ; preds = %lm90_read_reg.exit335.i
  %conv111.i = trunc i32 %err.0.i334.i to i8
  %arrayidx113.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 18, i32 6
  %117 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv111.i, ptr %arrayidx113.i, align 2
  %call114.i = tail call fastcc i32 @lm90_read_reg(ptr noundef %3, i8 noundef zeroext 22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %cmp115.i = icmp slt i32 %call114.i, 0
  br i1 %cmp115.i, label %if.end110.i.cleanup_crit_edge, label %if.end118.i

if.end110.i.cleanup_crit_edge:                    ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end118.i:                                      ; preds = %if.end110.i
  %conv119.i = trunc i32 %call114.i to i8
  %arrayidx121.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 18, i32 7
  %118 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv119.i, ptr %arrayidx121.i, align 1
  %call122.i = tail call fastcc i32 @lm90_read_reg(ptr noundef %3, i8 noundef zeroext 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %cmp123.i = icmp slt i32 %call122.i, 0
  br i1 %cmp123.i, label %if.end118.i.cleanup_crit_edge, label %if.end126.i

if.end118.i.cleanup_crit_edge:                    ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end126.i:                                      ; preds = %if.end118.i
  %call122.tr.i = trunc i32 %call122.i to i16
  %conv128.i = shl i16 %call122.tr.i, 8
  %arrayidx130.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 19, i32 6
  %119 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv128.i, ptr %arrayidx130.i, align 4
  %call131.i = tail call fastcc i32 @lm90_read_reg(ptr noundef %3, i8 noundef zeroext 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %cmp132.i = icmp slt i32 %call131.i, 0
  br i1 %cmp132.i, label %if.end126.i.cleanup_crit_edge, label %if.end135.i

if.end126.i.cleanup_crit_edge:                    ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end135.i:                                      ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #12
  %call131.tr.i = trunc i32 %call131.i to i16
  %conv137.i = shl i16 %call131.tr.i, 8
  %arrayidx139.i = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 19, i32 7
  %120 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv137.i, ptr %arrayidx139.i, align 2
  %call140.i = tail call fastcc i32 @lm90_select_remote_channel(ptr noundef %1, i32 noundef 0) #10
  br label %if.end4

if.end4:                                          ; preds = %if.end135.i, %if.end97.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %last_updated = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 8
  %121 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %last_updated, align 4
  %update_interval = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 11
  %123 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %update_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %124) #10
  %add = add i32 %call2.i, %122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %125 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp6 = icmp slt i32 %sub, 0
  br i1 %cmp6, label %if.end4.do.body_crit_edge, label %lor.lhs.false

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end4
  %126 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %valid, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool8.not = icmp eq i8 %127, 0
  br i1 %tobool8.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end4.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_update_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_update_device, %do.end)) #10
          to label %if.then15 [label %do.end], !srcloc !163

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_update_device.__UNIQUE_ID_ddebug288, ptr noundef %dev16, ptr noundef nonnull @.str.16) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %128 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %valid, align 4
  %129 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %3, align 8
  %131 = and i16 %130, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool.not.i213 = icmp eq i16 %131, 0
  br i1 %tobool.not.i213, label %if.else.i216, label %if.then.i215

if.then.i215:                                     ; preds = %do.end
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %132 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %adapter.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %134 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %addr.i.i, align 2
  %136 = and i16 %130, -5
  %call.i.i = tail call i32 @i2c_smbus_xfer(ptr noundef %133, i16 noundef zeroext %135, i16 noundef zeroext %136, i8 noundef zeroext 0, i8 noundef zeroext 6, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i214 = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i214, label %if.then2.i, label %if.then.i215.cleanup_crit_edge

if.then.i215.cleanup_crit_edge:                   ; preds = %if.then.i215
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %if.then.i215
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit

if.else.i216:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #10
  br label %lm90_read_reg.exit

lm90_read_reg.exit:                               ; preds = %if.else.i216, %if.then2.i
  %err.0.i = phi i32 [ %call3.i, %if.then2.i ], [ %call4.i, %if.else.i216 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp20 = icmp slt i32 %err.0.i, 0
  br i1 %cmp20, label %lm90_read_reg.exit.cleanup_crit_edge, label %if.end22

lm90_read_reg.exit.cleanup_crit_edge:             ; preds = %lm90_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %lm90_read_reg.exit
  %conv = trunc i32 %err.0.i to i8
  %temp8 = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 18
  %137 = ptrtoint ptr %temp8 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv, ptr %temp8, align 4
  %138 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %3, align 8
  %140 = and i16 %139, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool.not.i217 = icmp eq i16 %140, 0
  br i1 %tobool.not.i217, label %if.else.i226, label %if.then.i222

if.then.i222:                                     ; preds = %if.end22
  %adapter.i.i218 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %141 = ptrtoint ptr %adapter.i.i218 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %adapter.i.i218, align 8
  %addr.i.i219 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %143 = ptrtoint ptr %addr.i.i219 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %addr.i.i219, align 2
  %145 = and i16 %139, -5
  %call.i.i220 = tail call i32 @i2c_smbus_xfer(ptr noundef %142, i16 noundef zeroext %144, i16 noundef zeroext %145, i8 noundef zeroext 0, i8 noundef zeroext 5, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i220)
  %cmp.i221 = icmp sgt i32 %call.i.i220, -1
  br i1 %cmp.i221, label %if.then2.i224, label %if.then.i222.cleanup_crit_edge

if.then.i222.cleanup_crit_edge:                   ; preds = %if.then.i222
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i224:                                    ; preds = %if.then.i222
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i223 = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit228

if.else.i226:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i225 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #10
  br label %lm90_read_reg.exit228

lm90_read_reg.exit228:                            ; preds = %if.else.i226, %if.then2.i224
  %err.0.i227 = phi i32 [ %call3.i223, %if.then2.i224 ], [ %call4.i225, %if.else.i226 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i227)
  %cmp24 = icmp slt i32 %err.0.i227, 0
  br i1 %cmp24, label %lm90_read_reg.exit228.cleanup_crit_edge, label %if.end27

lm90_read_reg.exit228.cleanup_crit_edge:          ; preds = %lm90_read_reg.exit228
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %lm90_read_reg.exit228
  %conv28 = trunc i32 %err.0.i227 to i8
  %arrayidx30 = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 18, i32 1
  %146 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv28, ptr %arrayidx30, align 1
  %reg_local_ext = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 17
  %147 = ptrtoint ptr %reg_local_ext to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %reg_local_ext, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool31.not = icmp eq i8 %148, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end27
  %call34 = tail call fastcc i32 @lm90_read16(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %148)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then32.cleanup_crit_edge, label %if.end38

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %conv39 = trunc i32 %call34 to i16
  br label %if.end49

if.else:                                          ; preds = %if.end27
  %149 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %3, align 8
  %151 = and i16 %150, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool.not.i229 = icmp eq i16 %151, 0
  br i1 %tobool.not.i229, label %if.else.i238, label %if.then.i234

if.then.i234:                                     ; preds = %if.else
  %adapter.i.i230 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %152 = ptrtoint ptr %adapter.i.i230 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %adapter.i.i230, align 8
  %addr.i.i231 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %154 = ptrtoint ptr %addr.i.i231 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %addr.i.i231, align 2
  %156 = and i16 %150, -5
  %call.i.i232 = tail call i32 @i2c_smbus_xfer(ptr noundef %153, i16 noundef zeroext %155, i16 noundef zeroext %156, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i232)
  %cmp.i233 = icmp sgt i32 %call.i.i232, -1
  br i1 %cmp.i233, label %if.then2.i236, label %if.then.i234.cleanup_crit_edge

if.then.i234.cleanup_crit_edge:                   ; preds = %if.then.i234
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i236:                                    ; preds = %if.then.i234
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i235 = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit240

if.else.i238:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i237 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #10
  br label %lm90_read_reg.exit240

lm90_read_reg.exit240:                            ; preds = %if.else.i238, %if.then2.i236
  %err.0.i239 = phi i32 [ %call3.i235, %if.then2.i236 ], [ %call4.i237, %if.else.i238 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i239)
  %cmp42 = icmp slt i32 %err.0.i239, 0
  br i1 %cmp42, label %lm90_read_reg.exit240.cleanup_crit_edge, label %if.end45

lm90_read_reg.exit240.cleanup_crit_edge:          ; preds = %lm90_read_reg.exit240
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %lm90_read_reg.exit240
  call void @__sanitizer_cov_trace_pc() #12
  %call41.tr = trunc i32 %err.0.i239 to i16
  %conv46 = shl i16 %call41.tr, 8
  br label %if.end49

if.end49:                                         ; preds = %if.end45, %if.end38
  %conv46.sink = phi i16 [ %conv46, %if.end45 ], [ %conv39, %if.end38 ]
  %arrayidx48 = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 19, i32 4
  %157 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv46.sink, ptr %arrayidx48, align 4
  %call50 = tail call fastcc i32 @lm90_read16(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.cleanup_crit_edge, label %if.end54

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  %conv55 = trunc i32 %call50 to i16
  %temp1156 = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 19
  %158 = ptrtoint ptr %temp1156 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv55, ptr %temp1156, align 4
  %159 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %3, align 8
  %161 = and i16 %160, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %tobool.not.i241 = icmp eq i16 %161, 0
  br i1 %tobool.not.i241, label %if.else.i250, label %if.then.i246

if.then.i246:                                     ; preds = %if.end54
  %adapter.i.i242 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %162 = ptrtoint ptr %adapter.i.i242 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %adapter.i.i242, align 8
  %addr.i.i243 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %164 = ptrtoint ptr %addr.i.i243 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %addr.i.i243, align 2
  %166 = and i16 %160, -5
  %call.i.i244 = tail call i32 @i2c_smbus_xfer(ptr noundef %163, i16 noundef zeroext %165, i16 noundef zeroext %166, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i244)
  %cmp.i245 = icmp sgt i32 %call.i.i244, -1
  br i1 %cmp.i245, label %if.then2.i248, label %if.then.i246.cleanup_crit_edge

if.then.i246.cleanup_crit_edge:                   ; preds = %if.then.i246
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i248:                                    ; preds = %if.then.i246
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i247 = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #10
  br label %lm90_read_reg.exit252

if.else.i250:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i249 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #10
  br label %lm90_read_reg.exit252

lm90_read_reg.exit252:                            ; preds = %if.else.i250, %if.then2.i248
  %err.0.i251 = phi i32 [ %call3.i247, %if.then2.i248 ], [ %call4.i249, %if.else.i250 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i251)
  %cmp59 = icmp slt i32 %err.0.i251, 0
  br i1 %cmp59, label %lm90_read_reg.exit252.cleanup_crit_edge, label %if.end62

lm90_read_reg.exit252.cleanup_crit_edge:          ; preds = %lm90_read_reg.exit252
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62:                                         ; preds = %lm90_read_reg.exit252
  %167 = trunc i32 %err.0.i251 to i16
  %conv63 = and i16 %167, -129
  %alarms = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 21
  %168 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv63, ptr %alarms, align 2
  %kind = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 9
  %169 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %170)
  %cmp64 = icmp eq i32 %170, 10
  br i1 %cmp64, label %if.then.i255, label %if.end62.if.end91_crit_edge

if.end62.if.end91_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then.i255:                                     ; preds = %if.end62
  %config1.i = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 12
  %171 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %config1.i, align 4
  %spec.select.i = or i8 %172, 8
  call void @__sanitizer_cov_trace_cmp1(i8 %172, i8 %spec.select.i)
  %cmp.not.i.i = icmp eq i8 %172, %spec.select.i
  br i1 %cmp.not.i.i, label %if.then.i255.if.end71_crit_edge, label %if.then.i.i258

if.then.i255.if.end71_crit_edge:                  ; preds = %if.then.i255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then.i.i258:                                   ; preds = %if.then.i255
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 4
  %call.i.i256 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %174, i8 noundef zeroext 9, i8 noundef zeroext %spec.select.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256)
  %tobool.not.i.i257 = icmp eq i32 %call.i.i256, 0
  br i1 %tobool.not.i.i257, label %cleanup.thread.i.i, label %lm90_select_remote_channel.exit

cleanup.thread.i.i:                               ; preds = %if.then.i.i258
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %config1.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %spec.select.i, ptr %config1.i, align 4
  br label %if.end71

lm90_select_remote_channel.exit:                  ; preds = %if.then.i.i258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256)
  %cmp68 = icmp slt i32 %call.i.i256, 0
  br i1 %cmp68, label %lm90_select_remote_channel.exit.cleanup_crit_edge, label %lm90_select_remote_channel.exit.if.end71_crit_edge

lm90_select_remote_channel.exit.if.end71_crit_edge: ; preds = %lm90_select_remote_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

lm90_select_remote_channel.exit.cleanup_crit_edge: ; preds = %lm90_select_remote_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end71:                                         ; preds = %lm90_select_remote_channel.exit.if.end71_crit_edge, %cleanup.thread.i.i, %if.then.i255.if.end71_crit_edge
  %call72 = tail call fastcc i32 @lm90_read16(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = tail call fastcc i32 @lm90_select_remote_channel(ptr noundef %1, i32 noundef 0)
  br label %cleanup

if.end77:                                         ; preds = %if.end71
  %conv78 = trunc i32 %call72 to i16
  %arrayidx80 = getelementptr %struct.lm90_data, ptr %1, i32 0, i32 19, i32 5
  %176 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv78, ptr %arrayidx80, align 2
  %call81 = tail call fastcc i32 @lm90_select_remote_channel(ptr noundef %1, i32 noundef 0)
  %call82 = tail call fastcc i32 @lm90_read_reg(ptr noundef %3, i8 noundef zeroext 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end77.cleanup_crit_edge, label %if.end86

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %alarms, align 2
  %call82.tr = trunc i32 %call82 to i16
  %179 = shl i16 %call82.tr, 8
  %conv90 = or i16 %178, %179
  store i16 %conv90, ptr %alarms, align 2
  br label %if.end91

if.end91:                                         ; preds = %if.end86, %if.end62.if.end91_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %180 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool92.not = icmp eq i32 %181, 0
  br i1 %tobool92.not, label %lor.lhs.false93, label %if.end91.land.lhs.true_crit_edge

if.end91.land.lhs.true_crit_edge:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

lor.lhs.false93:                                  ; preds = %if.end91
  %config_orig = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 13
  %182 = ptrtoint ptr %config_orig to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %config_orig, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %183)
  %tobool96.not = icmp sgt i8 %183, -1
  br i1 %tobool96.not, label %lor.lhs.false93.land.lhs.true_crit_edge, label %lor.lhs.false93.if.end132_crit_edge

lor.lhs.false93.if.end132_crit_edge:              ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

lor.lhs.false93.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false93.land.lhs.true_crit_edge, %if.end91.land.lhs.true_crit_edge
  %184 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %alarms, align 2
  %alert_alarms = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 15
  %186 = ptrtoint ptr %alert_alarms to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %alert_alarms, align 4
  %and100204 = and i16 %187, %185
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and100204)
  %tobool101.not = icmp eq i16 %and100204, 0
  br i1 %tobool101.not, label %if.then102, label %land.lhs.true.if.end132_crit_edge

land.lhs.true.if.end132_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then102:                                       ; preds = %land.lhs.true
  %config = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 12
  %188 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %189)
  %tobool105.not = icmp sgt i8 %189, -1
  br i1 %tobool105.not, label %if.then102.if.end132_crit_edge, label %do.body107

if.then102.if.end132_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

do.body107:                                       ; preds = %if.then102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_update_device.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_update_device, %do.end125)) #10
          to label %if.then121 [label %do.end125], !srcloc !163

if.then121:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #12
  %dev122 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_update_device.__UNIQUE_ID_ddebug289, ptr noundef %dev122, ptr noundef nonnull @.str.17) #10
  br label %do.end125

do.end125:                                        ; preds = %if.then121, %do.body107
  %190 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %config, align 4
  %192 = and i8 %191, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %191)
  %193 = icmp sgt i8 %191, -1
  br i1 %193, label %do.end125.if.end132_crit_edge, label %if.then.i262

do.end125.if.end132_crit_edge:                    ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then.i262:                                     ; preds = %do.end125
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %195, i8 noundef zeroext 9, i8 noundef zeroext %192) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i261 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i261, label %cleanup.thread.i, label %if.then.i262.if.end132_crit_edge

if.then.i262.if.end132_crit_edge:                 ; preds = %if.then.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

cleanup.thread.i:                                 ; preds = %if.then.i262
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %192, ptr %config, align 4
  br label %if.end132

if.end132:                                        ; preds = %cleanup.thread.i, %if.then.i262.if.end132_crit_edge, %do.end125.if.end132_crit_edge, %if.then102.if.end132_crit_edge, %land.lhs.true.if.end132_crit_edge, %lor.lhs.false93.if.end132_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %197 = load volatile i32, ptr @jiffies, align 128
  %198 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %last_updated, align 4
  %199 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.end77.cleanup_crit_edge, %if.then75, %lm90_select_remote_channel.exit.cleanup_crit_edge, %lm90_read_reg.exit252.cleanup_crit_edge, %if.then.i246.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %lm90_read_reg.exit240.cleanup_crit_edge, %if.then.i234.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %lm90_read_reg.exit228.cleanup_crit_edge, %if.then.i222.cleanup_crit_edge, %lm90_read_reg.exit.cleanup_crit_edge, %if.then.i215.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end126.i.cleanup_crit_edge, %if.end118.i.cleanup_crit_edge, %if.end110.i.cleanup_crit_edge, %lm90_read_reg.exit335.i.cleanup_crit_edge, %if.then.i329.i.cleanup_crit_edge, %lm90_select_remote_channel.exit.i.cleanup_crit_edge, %lm90_read_reg.exit319.i.cleanup_crit_edge, %if.then.i313.i.cleanup_crit_edge, %lm90_read_reg.exit307.i.cleanup_crit_edge, %if.then.i301.i.cleanup_crit_edge, %if.then67.i.cleanup_crit_edge, %lm90_read_reg.exit295.i.cleanup_crit_edge, %if.then.i289.i.cleanup_crit_edge, %lm90_read_reg.exit283.i.cleanup_crit_edge, %if.then.i277.i.cleanup_crit_edge, %lm90_read_reg.exit271.i.cleanup_crit_edge, %if.then.i265.i.cleanup_crit_edge, %lm90_read_reg.exit259.i.cleanup_crit_edge, %if.then.i253.i.cleanup_crit_edge, %lm90_read_reg.exit247.i.cleanup_crit_edge, %if.then.i241.i.cleanup_crit_edge, %lm90_read_reg.exit235.i.cleanup_crit_edge, %if.then.i229.i.cleanup_crit_edge, %lm90_read_reg.exit.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call72, %if.then75 ], [ %err.0.i, %lm90_read_reg.exit.cleanup_crit_edge ], [ %err.0.i227, %lm90_read_reg.exit228.cleanup_crit_edge ], [ %call34, %if.then32.cleanup_crit_edge ], [ %err.0.i239, %lm90_read_reg.exit240.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ %err.0.i251, %lm90_read_reg.exit252.cleanup_crit_edge ], [ %call.i.i256, %lm90_select_remote_channel.exit.cleanup_crit_edge ], [ %call82, %if.end77.cleanup_crit_edge ], [ 0, %if.end132 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call.i.i327.i, %if.then.i329.i.cleanup_crit_edge ], [ %call.i.i311.i, %if.then.i313.i.cleanup_crit_edge ], [ %call.i.i299.i, %if.then.i301.i.cleanup_crit_edge ], [ %call.i.i287.i, %if.then.i289.i.cleanup_crit_edge ], [ %call.i.i275.i, %if.then.i277.i.cleanup_crit_edge ], [ %call.i.i263.i, %if.then.i265.i.cleanup_crit_edge ], [ %call.i.i251.i, %if.then.i253.i.cleanup_crit_edge ], [ %call.i.i239.i, %if.then.i241.i.cleanup_crit_edge ], [ %call.i.i227.i, %if.then.i229.i.cleanup_crit_edge ], [ %call.i.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call131.i, %if.end126.i.cleanup_crit_edge ], [ %call122.i, %if.end118.i.cleanup_crit_edge ], [ %call114.i, %if.end110.i.cleanup_crit_edge ], [ %err.0.i334.i, %lm90_read_reg.exit335.i.cleanup_crit_edge ], [ %call.i.i322.i, %lm90_select_remote_channel.exit.i.cleanup_crit_edge ], [ %err.0.i318.i, %lm90_read_reg.exit319.i.cleanup_crit_edge ], [ %err.0.i306.i, %lm90_read_reg.exit307.i.cleanup_crit_edge ], [ %call68.i, %if.then67.i.cleanup_crit_edge ], [ %err.0.i294.i, %lm90_read_reg.exit295.i.cleanup_crit_edge ], [ %err.0.i282.i, %lm90_read_reg.exit283.i.cleanup_crit_edge ], [ %err.0.i270.i, %lm90_read_reg.exit271.i.cleanup_crit_edge ], [ %err.0.i258.i, %lm90_read_reg.exit259.i.cleanup_crit_edge ], [ %err.0.i246.i, %lm90_read_reg.exit247.i.cleanup_crit_edge ], [ %err.0.i234.i, %lm90_read_reg.exit235.i.cleanup_crit_edge ], [ %err.0.i.i, %lm90_read_reg.exit.i.cleanup_crit_edge ], [ %call.i.i, %if.then.i215.cleanup_crit_edge ], [ %call.i.i220, %if.then.i222.cleanup_crit_edge ], [ %call.i.i232, %if.then.i234.cleanup_crit_edge ], [ %call.i.i244, %if.then.i246.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm90_read_reg(ptr noundef %client, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %client, align 8
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i, align 8
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i, align 2
  %7 = and i16 %1, -5
  %call.i = tail call i32 @i2c_smbus_xfer(ptr noundef %4, i16 noundef zeroext %6, i16 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext %reg, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %if.then2, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #10
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %reg) #10
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2, %if.then.if.end5_crit_edge
  %err.0 = phi i32 [ %call3, %if.then2 ], [ %call.i, %if.then.if.end5_crit_edge ], [ %call4, %if.else ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm90_read16(ptr noundef %client, i8 noundef zeroext %regh, i8 noundef zeroext %regl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %client, align 8
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i.i, align 2
  %7 = and i16 %1, -5
  %call.i.i = tail call i32 @i2c_smbus_xfer(ptr noundef %4, i16 noundef zeroext %6, i16 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext %regh, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #10
  br label %lm90_read_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %regh) #10
  br label %lm90_read_reg.exit

lm90_read_reg.exit:                               ; preds = %if.else.i, %if.then2.i
  %err.0.i = phi i32 [ %call3.i, %if.then2.i ], [ %call4.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %lm90_read_reg.exit.cleanup_crit_edge, label %if.end

lm90_read_reg.exit.cleanup_crit_edge:             ; preds = %lm90_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lm90_read_reg.exit
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %client, align 8
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i32 = icmp eq i16 %10, 0
  br i1 %tobool.not.i32, label %if.else.i41, label %if.then.i37

if.then.i37:                                      ; preds = %if.end
  %adapter.i.i33 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %11 = ptrtoint ptr %adapter.i.i33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i.i33, align 8
  %addr.i.i34 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i.i34 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i.i34, align 2
  %15 = and i16 %9, -5
  %call.i.i35 = tail call i32 @i2c_smbus_xfer(ptr noundef %12, i16 noundef zeroext %14, i16 noundef zeroext %15, i8 noundef zeroext 0, i8 noundef zeroext %regl, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i35)
  %cmp.i36 = icmp sgt i32 %call.i.i35, -1
  br i1 %cmp.i36, label %if.then2.i39, label %if.then.i37.cleanup_crit_edge

if.then.i37.cleanup_crit_edge:                    ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i39:                                     ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i38 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #10
  br label %lm90_read_reg.exit43

if.else.i41:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i40 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %regl) #10
  br label %lm90_read_reg.exit43

lm90_read_reg.exit43:                             ; preds = %if.else.i41, %if.then2.i39
  %err.0.i42 = phi i32 [ %call3.i38, %if.then2.i39 ], [ %call4.i40, %if.else.i41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i42)
  %cmp2 = icmp slt i32 %err.0.i42, 0
  br i1 %cmp2, label %lm90_read_reg.exit43.cleanup_crit_edge, label %if.end4

lm90_read_reg.exit43.cleanup_crit_edge:           ; preds = %lm90_read_reg.exit43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %lm90_read_reg.exit43
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %client, align 8
  %18 = and i16 %17, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i44 = icmp eq i16 %18, 0
  br i1 %tobool.not.i44, label %if.else.i53, label %if.then.i49

if.then.i49:                                      ; preds = %if.end4
  %adapter.i.i45 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i.i45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i.i45, align 8
  %addr.i.i46 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %21 = ptrtoint ptr %addr.i.i46 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i.i46, align 2
  %23 = and i16 %17, -5
  %call.i.i47 = tail call i32 @i2c_smbus_xfer(ptr noundef %20, i16 noundef zeroext %22, i16 noundef zeroext %23, i8 noundef zeroext 0, i8 noundef zeroext %regh, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i47)
  %cmp.i48 = icmp sgt i32 %call.i.i47, -1
  br i1 %cmp.i48, label %if.then2.i51, label %if.then.i49.cleanup_crit_edge

if.then.i49.cleanup_crit_edge:                    ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i51:                                     ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i50 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #10
  br label %lm90_read_reg.exit55

if.else.i53:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i52 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %regh) #10
  br label %lm90_read_reg.exit55

lm90_read_reg.exit55:                             ; preds = %if.else.i53, %if.then2.i51
  %err.0.i54 = phi i32 [ %call3.i50, %if.then2.i51 ], [ %call4.i52, %if.else.i53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i54)
  %cmp6 = icmp slt i32 %err.0.i54, 0
  br i1 %cmp6, label %lm90_read_reg.exit55.cleanup_crit_edge, label %if.end8

lm90_read_reg.exit55.cleanup_crit_edge:           ; preds = %lm90_read_reg.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %lm90_read_reg.exit55
  call void @__sanitizer_cov_trace_cmp4(i32 %err.0.i, i32 %err.0.i54)
  %cmp9.not = icmp eq i32 %err.0.i, %err.0.i54
  br i1 %cmp9.not, label %if.end8.if.end15_crit_edge, label %if.then10

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %client, align 8
  %26 = and i16 %25, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i56 = icmp eq i16 %26, 0
  br i1 %tobool.not.i56, label %if.else.i65, label %if.then.i61

if.then.i61:                                      ; preds = %if.then10
  %adapter.i.i57 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i.i57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i.i57, align 8
  %addr.i.i58 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %29 = ptrtoint ptr %addr.i.i58 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr.i.i58, align 2
  %31 = and i16 %25, -5
  %call.i.i59 = tail call i32 @i2c_smbus_xfer(ptr noundef %28, i16 noundef zeroext %30, i16 noundef zeroext %31, i8 noundef zeroext 0, i8 noundef zeroext %regl, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i59)
  %cmp.i60 = icmp sgt i32 %call.i.i59, -1
  br i1 %cmp.i60, label %if.then2.i63, label %if.then.i61.cleanup_crit_edge

if.then.i61.cleanup_crit_edge:                    ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i63:                                     ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i62 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #10
  br label %lm90_read_reg.exit67

if.else.i65:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i64 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %regl) #10
  br label %lm90_read_reg.exit67

lm90_read_reg.exit67:                             ; preds = %if.else.i65, %if.then2.i63
  %err.0.i66 = phi i32 [ %call3.i62, %if.then2.i63 ], [ %call4.i64, %if.else.i65 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i66)
  %cmp12 = icmp slt i32 %err.0.i66, 0
  br i1 %cmp12, label %lm90_read_reg.exit67.cleanup_crit_edge, label %lm90_read_reg.exit67.if.end15_crit_edge

lm90_read_reg.exit67.if.end15_crit_edge:          ; preds = %lm90_read_reg.exit67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

lm90_read_reg.exit67.cleanup_crit_edge:           ; preds = %lm90_read_reg.exit67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %lm90_read_reg.exit67.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %l.0 = phi i32 [ %err.0.i66, %lm90_read_reg.exit67.if.end15_crit_edge ], [ %err.0.i42, %if.end8.if.end15_crit_edge ]
  %shl = shl i32 %err.0.i54, 8
  %or = or i32 %l.0, %shl
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lm90_read_reg.exit67.cleanup_crit_edge, %if.then.i61.cleanup_crit_edge, %lm90_read_reg.exit55.cleanup_crit_edge, %if.then.i49.cleanup_crit_edge, %lm90_read_reg.exit43.cleanup_crit_edge, %if.then.i37.cleanup_crit_edge, %lm90_read_reg.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %if.end15 ], [ %err.0.i, %lm90_read_reg.exit.cleanup_crit_edge ], [ %err.0.i42, %lm90_read_reg.exit43.cleanup_crit_edge ], [ %err.0.i54, %lm90_read_reg.exit55.cleanup_crit_edge ], [ %err.0.i66, %lm90_read_reg.exit67.cleanup_crit_edge ], [ %call.i.i, %if.then.i.cleanup_crit_edge ], [ %call.i.i35, %if.then.i37.cleanup_crit_edge ], [ %call.i.i47, %if.then.i49.cleanup_crit_edge ], [ %call.i.i59, %if.then.i61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm90_select_remote_channel(ptr nocapture noundef %data, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kind = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %config1 = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config1, align 4
  %4 = and i8 %3, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not = icmp eq i32 %channel, 0
  %masksel = select i1 %tobool.not, i8 0, i8 8
  %spec.select = or i8 %4, %masksel
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %spec.select)
  %cmp.not.i = icmp eq i8 %3, %spec.select
  br i1 %cmp.not.i, label %if.then.if.end6_crit_edge, label %if.then.i

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i:                                        ; preds = %if.then
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 9, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cleanup.thread.i, label %if.then.i.if.end6_crit_edge

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %config1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select, ptr %config1, align 4
  br label %if.end6

if.end6:                                          ; preds = %cleanup.thread.i, %if.then.i.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end6_crit_edge ], [ 0, %cleanup.thread.i ], [ 0, %if.then.if.end6_crit_edge ], [ %call.i, %if.then.i.if.end6_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm90_set_convrate(ptr nocapture noundef %data, i32 noundef %interval) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %interval, 6
  %max_convrate = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 16
  %0 = ptrtoint ptr %max_convrate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_convrate, align 2
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp3 = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 768000, i32 %shl)
  %cmp2.not4 = icmp ult i32 %shl, 768000
  %or.cond5 = and i1 %cmp3, %cmp2.not4
  br i1 %or.cond5, label %entry.for.inc_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.inc_crit_edge:                          ; preds = %entry
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %entry.for.inc_crit_edge
  %update_interval.07 = phi i32 [ %shr, %for.inc.for.inc_crit_edge ], [ 1024000, %entry.for.inc_crit_edge ]
  %i.06 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.06, 1
  %shr = lshr i32 %update_interval.07, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp = icmp ult i32 %inc, %conv
  %mul = mul nuw nsw i32 %shr, 3
  %div2 = lshr i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %div2)
  %cmp2.not = icmp ult i32 %shl, %div2
  %or.cond = select i1 %cmp, i1 %cmp2.not, i1 false
  br i1 %or.cond, label %for.inc.for.inc_crit_edge, label %for.end.loopexit

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast = trunc i32 %inc to i8
  %phi.bo = add nuw nsw i32 %shr, 32
  %phi.bo9 = lshr i32 %phi.bo, 6
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %i.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %update_interval.0.lcssa = phi i32 [ 16000, %entry.for.end_crit_edge ], [ %phi.bo9, %for.end.loopexit ]
  %config1.i = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config1.i, align 4
  %flags.i = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.end.if.end5.i_crit_edge, label %if.then.i

for.end.if.end5.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %for.end
  %6 = or i8 %3, 64
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %6)
  %cmp.not.i.i = icmp eq i8 %3, %6
  br i1 %cmp.not.i.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.i

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i.i:                                      ; preds = %if.then.i
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 9, i8 noundef zeroext %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.thread.i.i, label %lm90_update_confreg.exit.i

cleanup.thread.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %config1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %config1.i, align 4
  br label %if.end5.i

lm90_update_confreg.exit.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %lm90_update_confreg.exit.i.lm90_write_convrate.exit_crit_edge, label %lm90_update_confreg.exit.i.if.end5.i_crit_edge

lm90_update_confreg.exit.i.if.end5.i_crit_edge:   ; preds = %lm90_update_confreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

lm90_update_confreg.exit.i.lm90_write_convrate.exit_crit_edge: ; preds = %lm90_update_confreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_write_convrate.exit

if.end5.i:                                        ; preds = %lm90_update_confreg.exit.i.if.end5.i_crit_edge, %cleanup.thread.i.i, %if.then.i.if.end5.i_crit_edge, %for.end.if.end5.i_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 10, i8 noundef zeroext %i.0.lcssa) #10
  %12 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %config1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %3)
  %cmp.not.i18.i = icmp eq i8 %13, %3
  br i1 %cmp.not.i18.i, label %if.end5.i.lm90_write_convrate.exit_crit_edge, label %if.then.i21.i

if.end5.i.lm90_write_convrate.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_write_convrate.exit

if.then.i21.i:                                    ; preds = %if.end5.i
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %call.i19.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 9, i8 noundef zeroext %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool.not.i20.i, label %cleanup.thread.i22.i, label %if.then.i21.i.lm90_write_convrate.exit_crit_edge

if.then.i21.i.lm90_write_convrate.exit_crit_edge: ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_write_convrate.exit

cleanup.thread.i22.i:                             ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %config1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %3, ptr %config1.i, align 4
  br label %lm90_write_convrate.exit

lm90_write_convrate.exit:                         ; preds = %cleanup.thread.i22.i, %if.then.i21.i.lm90_write_convrate.exit_crit_edge, %if.end5.i.lm90_write_convrate.exit_crit_edge, %lm90_update_confreg.exit.i.lm90_write_convrate.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %lm90_update_confreg.exit.i.lm90_write_convrate.exit_crit_edge ], [ %call7.i, %if.end5.i.lm90_write_convrate.exit_crit_edge ], [ %call7.i, %if.then.i21.i.lm90_write_convrate.exit_crit_edge ], [ %call7.i, %cleanup.thread.i22.i ]
  %update_interval6 = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 11
  %17 = ptrtoint ptr %update_interval6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %update_interval.0.lcssa, ptr %update_interval6, align 4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm90_set_temp8(ptr nocapture noundef %data, i32 noundef %index, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %kind = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 9
  %2 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp2 = icmp eq i32 %index, 3
  %or.cond = and i1 %cmp2, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %val)
  %cmp3 = icmp sgt i32 %val, -128000
  %phi.bo = add i32 %val, -16000
  %cond = select i1 %cmp3, i32 %phi.bo, i32 -144000
  %val.addr.0 = select i1 %or.cond, i32 %cond, i32 %val
  %flags = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %entry
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63999, i32 %val.addr.0)
  %cmp.i = icmp slt i32 %val.addr.0, -63999
  br i1 %cmp.i, label %if.then.i.if.end16_crit_edge, label %if.end.i

if.then.i.if.end16_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 190999, i32 %val.addr.0)
  %cmp2.i = icmp sgt i32 %val.addr.0, 190999
  br i1 %cmp2.i, label %if.end.i.if.end16_crit_edge, label %if.end4.i

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add5.i = add nsw i32 %val.addr.0, 64500
  %div24.i = udiv i32 %add5.i, 1000
  %conv.i = trunc i32 %div24.i to i8
  br label %if.end16

if.end6.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val.addr.0)
  %cmp7.i = icmp slt i32 %val.addr.0, 1
  br i1 %cmp7.i, label %if.end6.i.if.end16_crit_edge, label %if.end10.i

if.end6.i.if.end16_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 126999, i32 %val.addr.0)
  %cmp11.i = icmp ugt i32 %val.addr.0, 126999
  br i1 %cmp11.i, label %if.end10.i.if.end16_crit_edge, label %if.end14.i

if.end10.i.if.end16_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %add15.i = add nuw nsw i32 %val.addr.0, 500
  %div1623.i = udiv i32 %add15.i, 1000
  %conv17.i = trunc i32 %div1623.i to i8
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp6 = icmp eq i32 %3, 8
  br i1 %cmp6, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val.addr.0)
  %cmp.i46 = icmp slt i32 %val.addr.0, 1
  br i1 %cmp.i46, label %if.then7.if.end16_crit_edge, label %if.end.i47

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end.i47:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 254999, i32 %val.addr.0)
  %cmp1.i = icmp ugt i32 %val.addr.0, 254999
  br i1 %cmp1.i, label %if.end.i47.if.end16_crit_edge, label %if.end3.i

if.end.i47.if.end16_crit_edge:                    ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end3.i:                                        ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nuw nsw i32 %val.addr.0, 500
  %div6.i = udiv i32 %add.i, 1000
  %conv.i48 = trunc i32 %div6.i to i8
  br label %if.end16

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127999, i32 %val.addr.0)
  %cmp.i50 = icmp slt i32 %val.addr.0, -127999
  br i1 %cmp.i50, label %if.else11.if.end16_crit_edge, label %if.end.i52

if.else11.if.end16_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end.i52:                                       ; preds = %if.else11
  call void @__sanitizer_cov_trace_const_cmp4(i32 126999, i32 %val.addr.0)
  %cmp1.i51 = icmp sgt i32 %val.addr.0, 126999
  br i1 %cmp1.i51, label %if.end.i52.if.end16_crit_edge, label %if.end3.i53

if.end.i52.if.end16_crit_edge:                    ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end3.i53:                                      ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.0)
  %cmp4.i = icmp slt i32 %val.addr.0, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i56

if.then5.i:                                       ; preds = %if.end3.i53
  call void @__sanitizer_cov_trace_pc() #12
  %sub.nonneg.i = sub nsw i32 500, %val.addr.0
  %div13.i = udiv i32 %sub.nonneg.i, 1000
  %6 = trunc i32 %div13.i to i8
  %conv.i54 = sub i8 0, %6
  br label %if.end16

if.end6.i56:                                      ; preds = %if.end3.i53
  call void @__sanitizer_cov_trace_pc() #12
  %add.i55 = add nuw nsw i32 %val.addr.0, 500
  %div714.i = udiv i32 %add.i55, 1000
  %conv8.i = trunc i32 %div714.i to i8
  br label %if.end16

if.end16:                                         ; preds = %if.end6.i56, %if.then5.i, %if.end.i52.if.end16_crit_edge, %if.else11.if.end16_crit_edge, %if.end3.i, %if.end.i47.if.end16_crit_edge, %if.then7.if.end16_crit_edge, %if.end14.i, %if.end10.i.if.end16_crit_edge, %if.end6.i.if.end16_crit_edge, %if.end4.i, %if.end.i.if.end16_crit_edge, %if.then.i.if.end16_crit_edge
  %retval.0.i49.sink = phi i8 [ %conv.i, %if.end4.i ], [ %conv17.i, %if.end14.i ], [ 0, %if.then.i.if.end16_crit_edge ], [ -1, %if.end.i.if.end16_crit_edge ], [ 0, %if.end6.i.if.end16_crit_edge ], [ 127, %if.end10.i.if.end16_crit_edge ], [ %conv.i48, %if.end3.i ], [ 0, %if.then7.if.end16_crit_edge ], [ -1, %if.end.i47.if.end16_crit_edge ], [ %conv.i54, %if.then5.i ], [ %conv8.i, %if.end6.i56 ], [ -128, %if.else11.if.end16_crit_edge ], [ 127, %if.end.i52.if.end16_crit_edge ]
  %arrayidx10 = getelementptr %struct.lm90_data, ptr %data, i32 0, i32 18, i32 %index
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %retval.0.i49.sink, ptr %arrayidx10, align 1
  %8 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp.i58 = icmp eq i32 %9, 10
  br i1 %cmp.i58, label %if.then.i60, label %if.end16.lm90_select_remote_channel.exit_crit_edge

if.end16.lm90_select_remote_channel.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_select_remote_channel.exit

if.then.i60:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %index)
  %cmp17 = icmp slt i32 %index, 6
  %config1.i = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 12
  %10 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config1.i, align 4
  %12 = and i8 %11, -9
  %masksel.i = select i1 %cmp17, i8 0, i8 8
  %spec.select.i = or i8 %12, %masksel.i
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %spec.select.i)
  %cmp.not.i.i = icmp eq i8 %11, %spec.select.i
  br i1 %cmp.not.i.i, label %if.then.i60.lm90_select_remote_channel.exit_crit_edge, label %if.then.i.i

if.then.i60.lm90_select_remote_channel.exit_crit_edge: ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_select_remote_channel.exit

if.then.i.i:                                      ; preds = %if.then.i60
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 9, i8 noundef zeroext %spec.select.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.thread.i.i, label %if.then.i.i.lm90_select_remote_channel.exit_crit_edge

if.then.i.i.lm90_select_remote_channel.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_select_remote_channel.exit

cleanup.thread.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %config1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select.i, ptr %config1.i, align 4
  br label %lm90_select_remote_channel.exit

lm90_select_remote_channel.exit:                  ; preds = %cleanup.thread.i.i, %if.then.i.i.lm90_select_remote_channel.exit_crit_edge, %if.then.i60.lm90_select_remote_channel.exit_crit_edge, %if.end16.lm90_select_remote_channel.exit_crit_edge
  %arrayidx19 = getelementptr [8 x i8], ptr @lm90_set_temp8.reg, i32 0, i32 %index
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr %struct.lm90_data, ptr %data, i32 0, i32 18, i32 %index
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx21, align 1
  %call22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %17, i8 noundef zeroext %19) #10
  %20 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %21)
  %cmp.i63 = icmp eq i32 %21, 10
  br i1 %cmp.i63, label %if.then.i66, label %lm90_select_remote_channel.exit.lm90_select_remote_channel.exit73_crit_edge

lm90_select_remote_channel.exit.lm90_select_remote_channel.exit73_crit_edge: ; preds = %lm90_select_remote_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_select_remote_channel.exit73

if.then.i66:                                      ; preds = %lm90_select_remote_channel.exit
  %config1.i64 = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 12
  %22 = ptrtoint ptr %config1.i64 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %config1.i64, align 4
  %24 = and i8 %23, -9
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %24)
  %cmp.not.i.i65 = icmp eq i8 %23, %24
  br i1 %cmp.not.i.i65, label %if.then.i66.lm90_select_remote_channel.exit73_crit_edge, label %if.then.i.i69

if.then.i66.lm90_select_remote_channel.exit73_crit_edge: ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_select_remote_channel.exit73

if.then.i.i69:                                    ; preds = %if.then.i66
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %call.i.i67 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 9, i8 noundef zeroext %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %tobool.not.i.i68 = icmp eq i32 %call.i.i67, 0
  br i1 %tobool.not.i.i68, label %cleanup.thread.i.i70, label %if.then.i.i69.lm90_select_remote_channel.exit73_crit_edge

if.then.i.i69.lm90_select_remote_channel.exit73_crit_edge: ; preds = %if.then.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_select_remote_channel.exit73

cleanup.thread.i.i70:                             ; preds = %if.then.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %config1.i64 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %config1.i64, align 4
  br label %lm90_select_remote_channel.exit73

lm90_select_remote_channel.exit73:                ; preds = %cleanup.thread.i.i70, %if.then.i.i69.lm90_select_remote_channel.exit73_crit_edge, %if.then.i66.lm90_select_remote_channel.exit73_crit_edge, %lm90_select_remote_channel.exit.lm90_select_remote_channel.exit73_crit_edge
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm90_set_temp11(ptr nocapture noundef %data, i32 noundef %index, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr [8 x %struct.reg], ptr @lm90_set_temp11.reg, i32 0, i32 %index
  %kind = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 9
  %2 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp2 = icmp slt i32 %index, 3
  %or.cond = and i1 %cmp2, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %val)
  %cmp3 = icmp sgt i32 %val, -128000
  %phi.bo = add i32 %val, -16000
  %cond = select i1 %cmp3, i32 %phi.bo, i32 -144000
  %val.addr.0 = select i1 %or.cond, i32 %cond, i32 %val
  %flags = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %entry
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63999, i32 %val.addr.0)
  %cmp.i = icmp slt i32 %val.addr.0, -63999
  br i1 %cmp.i, label %if.then.i.if.end30_crit_edge, label %if.end.i

if.then.i.if.end30_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 191749, i32 %val.addr.0)
  %cmp2.i = icmp sgt i32 %val.addr.0, 191749
  br i1 %cmp2.i, label %if.end.i.if.end30_crit_edge, label %if.end4.i

if.end.i.if.end30_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add5.i = add nsw i32 %val.addr.0, 64125
  %div25.i = udiv i32 %add5.i, 250
  %div.tr.i = trunc i32 %div25.i to i16
  %conv.i = shl nuw i16 %div.tr.i, 6
  br label %if.end30

if.end6.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val.addr.0)
  %cmp7.i = icmp slt i32 %val.addr.0, 1
  br i1 %cmp7.i, label %if.end6.i.if.end30_crit_edge, label %if.end10.i

if.end6.i.if.end30_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127749, i32 %val.addr.0)
  %cmp11.i = icmp ugt i32 %val.addr.0, 127749
  br i1 %cmp11.i, label %if.end10.i.if.end30_crit_edge, label %if.end14.i

if.end10.i.if.end30_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %add15.i = add nuw nsw i32 %val.addr.0, 125
  %div1624.i = udiv i32 %add15.i, 250
  %div16.tr.i = trunc i32 %div1624.i to i16
  %conv18.i = shl nuw nsw i16 %div16.tr.i, 6
  br label %if.end30

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp7 = icmp eq i32 %3, 8
  br i1 %cmp7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val.addr.0)
  %cmp.i92 = icmp slt i32 %val.addr.0, 1
  br i1 %cmp.i92, label %if.then8.temp_to_u8.exit_crit_edge, label %if.end.i93

if.then8.temp_to_u8.exit_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %temp_to_u8.exit

if.end.i93:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 254999, i32 %val.addr.0)
  %cmp1.i = icmp ugt i32 %val.addr.0, 254999
  br i1 %cmp1.i, label %if.end.i93.temp_to_u8.exit_crit_edge, label %if.end3.i

if.end.i93.temp_to_u8.exit_crit_edge:             ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %temp_to_u8.exit

if.end3.i:                                        ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nuw nsw i32 %val.addr.0, 500
  %div6.i = udiv i32 %add.i, 1000
  %conv.i94 = trunc i32 %div6.i to i8
  br label %temp_to_u8.exit

temp_to_u8.exit:                                  ; preds = %if.end3.i, %if.end.i93.temp_to_u8.exit_crit_edge, %if.then8.temp_to_u8.exit_crit_edge
  %retval.0.i95 = phi i8 [ %conv.i94, %if.end3.i ], [ 0, %if.then8.temp_to_u8.exit_crit_edge ], [ -1, %if.end.i93.temp_to_u8.exit_crit_edge ]
  %conv = zext i8 %retval.0.i95 to i16
  %shl = shl nuw i16 %conv, 8
  br label %if.end30

if.else13:                                        ; preds = %if.else
  %and15 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127999, i32 %val.addr.0)
  %cmp.i103 = icmp slt i32 %val.addr.0, -127999
  br i1 %tobool16.not, label %if.else21, label %if.then17

if.then17:                                        ; preds = %if.else13
  br i1 %cmp.i103, label %if.then17.if.end30_crit_edge, label %if.end.i98

if.then17.if.end30_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end.i98:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 127874, i32 %val.addr.0)
  %cmp1.i97 = icmp sgt i32 %val.addr.0, 127874
  br i1 %cmp1.i97, label %if.end.i98.if.end30_crit_edge, label %if.end3.i99

if.end.i98.if.end30_crit_edge:                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end3.i99:                                      ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.0)
  %cmp4.i = icmp slt i32 %val.addr.0, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i101

if.then5.i:                                       ; preds = %if.end3.i99
  call void @__sanitizer_cov_trace_pc() #12
  %sub.nonneg.i = sub nsw i32 62, %val.addr.0
  %div14.i = udiv i32 %sub.nonneg.i, 125
  %6 = trunc i32 %div14.i to i16
  %.neg.i = mul nsw i16 %6, -32
  br label %if.end30

if.end6.i101:                                     ; preds = %if.end3.i99
  call void @__sanitizer_cov_trace_pc() #12
  %add.i100 = add nuw nsw i32 %val.addr.0, 62
  %div715.i = udiv i32 %add.i100, 125
  %div7.tr.i = trunc i32 %div715.i to i16
  %conv9.i = shl nuw nsw i16 %div7.tr.i, 5
  br label %if.end30

if.else21:                                        ; preds = %if.else13
  br i1 %cmp.i103, label %if.else21.temp_to_s8.exit_crit_edge, label %if.end.i105

if.else21.temp_to_s8.exit_crit_edge:              ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %temp_to_s8.exit

if.end.i105:                                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 126999, i32 %val.addr.0)
  %cmp1.i104 = icmp sgt i32 %val.addr.0, 126999
  br i1 %cmp1.i104, label %if.end.i105.temp_to_s8.exit_crit_edge, label %if.end3.i107

if.end.i105.temp_to_s8.exit_crit_edge:            ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %temp_to_s8.exit

if.end3.i107:                                     ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.0)
  %cmp4.i106 = icmp slt i32 %val.addr.0, 0
  br i1 %cmp4.i106, label %if.then5.i110, label %if.end6.i112

if.then5.i110:                                    ; preds = %if.end3.i107
  call void @__sanitizer_cov_trace_pc() #12
  %sub.nonneg.i108 = sub nsw i32 500, %val.addr.0
  %div13.i = udiv i32 %sub.nonneg.i108, 1000
  %7 = trunc i32 %div13.i to i8
  %conv.i109 = sub i8 0, %7
  br label %temp_to_s8.exit

if.end6.i112:                                     ; preds = %if.end3.i107
  call void @__sanitizer_cov_trace_pc() #12
  %add.i111 = add nuw nsw i32 %val.addr.0, 500
  %div714.i = udiv i32 %add.i111, 1000
  %conv8.i = trunc i32 %div714.i to i8
  br label %temp_to_s8.exit

temp_to_s8.exit:                                  ; preds = %if.end6.i112, %if.then5.i110, %if.end.i105.temp_to_s8.exit_crit_edge, %if.else21.temp_to_s8.exit_crit_edge
  %retval.0.i113 = phi i8 [ %conv.i109, %if.then5.i110 ], [ %conv8.i, %if.end6.i112 ], [ -128, %if.else21.temp_to_s8.exit_crit_edge ], [ 127, %if.end.i105.temp_to_s8.exit_crit_edge ]
  %conv2390 = zext i8 %retval.0.i113 to i16
  %shl24 = shl nuw i16 %conv2390, 8
  br label %if.end30

if.end30:                                         ; preds = %temp_to_s8.exit, %if.end6.i101, %if.then5.i, %if.end.i98.if.end30_crit_edge, %if.then17.if.end30_crit_edge, %temp_to_u8.exit, %if.end14.i, %if.end10.i.if.end30_crit_edge, %if.end6.i.if.end30_crit_edge, %if.end4.i, %if.end.i.if.end30_crit_edge, %if.then.i.if.end30_crit_edge
  %shl.sink = phi i16 [ %shl, %temp_to_u8.exit ], [ %shl24, %temp_to_s8.exit ], [ %conv.i, %if.end4.i ], [ %conv18.i, %if.end14.i ], [ 0, %if.then.i.if.end30_crit_edge ], [ -64, %if.end.i.if.end30_crit_edge ], [ 0, %if.end6.i.if.end30_crit_edge ], [ 32704, %if.end10.i.if.end30_crit_edge ], [ %.neg.i, %if.then5.i ], [ %conv9.i, %if.end6.i101 ], [ -32768, %if.then17.if.end30_crit_edge ], [ 32736, %if.end.i98.if.end30_crit_edge ]
  %arrayidx12 = getelementptr %struct.lm90_data, ptr %data, i32 0, i32 19, i32 %index
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %shl.sink, ptr %arrayidx12, align 2
  %9 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %cmp.i114 = icmp eq i32 %10, 10
  br i1 %cmp.i114, label %if.then.i116, label %if.end30.lm90_select_remote_channel.exit_crit_edge

if.end30.lm90_select_remote_channel.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_select_remote_channel.exit

if.then.i116:                                     ; preds = %if.end30
  %config1.i = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 12
  %11 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %config1.i, align 4
  %13 = and i8 %12, -9
  %masksel.i = select i1 %cmp2, i8 0, i8 8
  %spec.select.i = or i8 %13, %masksel.i
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %spec.select.i)
  %cmp.not.i.i = icmp eq i8 %12, %spec.select.i
  br i1 %cmp.not.i.i, label %if.then.i116.lm90_select_remote_channel.exit_crit_edge, label %if.then.i.i

if.then.i116.lm90_select_remote_channel.exit_crit_edge: ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_select_remote_channel.exit

if.then.i.i:                                      ; preds = %if.then.i116
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 9, i8 noundef zeroext %spec.select.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.thread.i.i, label %if.then.i.i.lm90_select_remote_channel.exit_crit_edge

if.then.i.i.lm90_select_remote_channel.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_select_remote_channel.exit

cleanup.thread.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %config1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select.i, ptr %config1.i, align 4
  br label %lm90_select_remote_channel.exit

lm90_select_remote_channel.exit:                  ; preds = %cleanup.thread.i.i, %if.then.i.i.lm90_select_remote_channel.exit_crit_edge, %if.then.i116.lm90_select_remote_channel.exit_crit_edge, %if.end30.lm90_select_remote_channel.exit_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %arrayidx35 = getelementptr %struct.lm90_data, ptr %data, i32 0, i32 19, i32 %index
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx35, align 2
  %21 = lshr i16 %20, 8
  %conv37 = trunc i16 %21 to i8
  %call38 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %18, i8 noundef zeroext %conv37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %lm90_select_remote_channel.exit.cleanup_crit_edge, label %if.end42

lm90_select_remote_channel.exit.cleanup_crit_edge: ; preds = %lm90_select_remote_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %lm90_select_remote_channel.exit
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and44 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end53_crit_edge, label %if.then46

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %low = getelementptr [8 x %struct.reg], ptr @lm90_set_temp11.reg, i32 0, i32 %index, i32 1
  %24 = ptrtoint ptr %low to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %low, align 1
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx35, align 2
  %conv51 = trunc i16 %27 to i8
  %call52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %25, i8 noundef zeroext %conv51) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then46, %if.end42.if.end53_crit_edge
  %err.0 = phi i32 [ %call52, %if.then46 ], [ %call38, %if.end42.if.end53_crit_edge ]
  %28 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %29)
  %cmp.i119 = icmp eq i32 %29, 10
  br i1 %cmp.i119, label %if.then.i122, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i122:                                     ; preds = %if.end53
  %config1.i120 = getelementptr inbounds %struct.lm90_data, ptr %data, i32 0, i32 12
  %30 = ptrtoint ptr %config1.i120 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %config1.i120, align 4
  %32 = and i8 %31, -9
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %32)
  %cmp.not.i.i121 = icmp eq i8 %31, %32
  br i1 %cmp.not.i.i121, label %if.then.i122.cleanup_crit_edge, label %if.then.i.i125

if.then.i122.cleanup_crit_edge:                   ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i125:                                   ; preds = %if.then.i122
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %call.i.i123 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 9, i8 noundef zeroext %32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %tobool.not.i.i124 = icmp eq i32 %call.i.i123, 0
  br i1 %tobool.not.i.i124, label %cleanup.thread.i.i126, label %if.then.i.i125.cleanup_crit_edge

if.then.i.i125.cleanup_crit_edge:                 ; preds = %if.then.i.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.thread.i.i126:                            ; preds = %if.then.i.i125
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %config1.i120 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %config1.i120, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.thread.i.i126, %if.then.i.i125.cleanup_crit_edge, %if.then.i122.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %lm90_select_remote_channel.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %lm90_select_remote_channel.exit.cleanup_crit_edge ], [ %err.0, %if.end53.cleanup_crit_edge ], [ %err.0, %if.then.i122.cleanup_crit_edge ], [ %err.0, %if.then.i.i125.cleanup_crit_edge ], [ %err.0, %cleanup.thread.i.i126 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm90_restore_conf(ptr nocapture noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_data, align 4
  %convrate_orig = getelementptr inbounds %struct.lm90_data, ptr %_data, i32 0, i32 14
  %2 = ptrtoint ptr %convrate_orig to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %convrate_orig, align 2
  %config1.i = getelementptr inbounds %struct.lm90_data, ptr %_data, i32 0, i32 12
  %4 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config1.i, align 4
  %flags.i = getelementptr inbounds %struct.lm90_data, ptr %_data, i32 0, i32 10
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  %8 = or i8 %5, 64
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %8)
  %cmp.not.i.i = icmp eq i8 %5, %8
  br i1 %cmp.not.i.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.i

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 9, i8 noundef zeroext %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.thread.i.i, label %lm90_update_confreg.exit.i

cleanup.thread.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %config1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %config1.i, align 4
  br label %if.end5.i

lm90_update_confreg.exit.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %lm90_update_confreg.exit.i.lm90_write_convrate.exit_crit_edge, label %lm90_update_confreg.exit.i.if.end5.i_crit_edge

lm90_update_confreg.exit.i.if.end5.i_crit_edge:   ; preds = %lm90_update_confreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

lm90_update_confreg.exit.i.lm90_write_convrate.exit_crit_edge: ; preds = %lm90_update_confreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_write_convrate.exit

if.end5.i:                                        ; preds = %lm90_update_confreg.exit.i.if.end5.i_crit_edge, %cleanup.thread.i.i, %if.then.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %10 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_data, align 4
  %call7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 10, i8 noundef zeroext %3) #10
  %12 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %config1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %5)
  %cmp.not.i18.i = icmp eq i8 %13, %5
  br i1 %cmp.not.i18.i, label %if.end5.i.lm90_write_convrate.exit_crit_edge, label %if.then.i21.i

if.end5.i.lm90_write_convrate.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_write_convrate.exit

if.then.i21.i:                                    ; preds = %if.end5.i
  %14 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_data, align 4
  %call.i19.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 9, i8 noundef zeroext %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool.not.i20.i, label %cleanup.thread.i22.i, label %if.then.i21.i.lm90_write_convrate.exit_crit_edge

if.then.i21.i.lm90_write_convrate.exit_crit_edge: ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm90_write_convrate.exit

cleanup.thread.i22.i:                             ; preds = %if.then.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %config1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %5, ptr %config1.i, align 4
  br label %lm90_write_convrate.exit

lm90_write_convrate.exit:                         ; preds = %cleanup.thread.i22.i, %if.then.i21.i.lm90_write_convrate.exit_crit_edge, %if.end5.i.lm90_write_convrate.exit_crit_edge, %lm90_update_confreg.exit.i.lm90_write_convrate.exit_crit_edge
  %config_orig = getelementptr inbounds %struct.lm90_data, ptr %_data, i32 0, i32 13
  %17 = ptrtoint ptr %config_orig to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %config_orig, align 1
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 9, i8 noundef zeroext %18) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pec_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr, align 8
  %2 = lshr i16 %1, 2
  %.lobit = and i16 %2, 1
  %3 = zext i16 %.lobit to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pec_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %dummy, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !164
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %2, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 8
  %6 = and i16 %5, -5
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr, align 8
  %9 = or i16 %8, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %storemerge = phi i16 [ %9, %sw.bb2 ], [ %6, %sw.bb ]
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %storemerge, ptr %add.ptr, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @lm90_is_tripped(ptr noundef %client, ptr nocapture noundef writeonly %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %client, align 8
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i.i, align 2
  %9 = and i16 %3, -5
  %call.i.i = tail call i32 @i2c_smbus_xfer(ptr noundef %6, i16 noundef zeroext %8, i16 noundef zeroext %9, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #10
  br label %lm90_read_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #10
  br label %lm90_read_reg.exit

lm90_read_reg.exit:                               ; preds = %if.else.i, %if.then2.i
  %err.0.i = phi i32 [ %call3.i, %if.then2.i ], [ %call4.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %lm90_read_reg.exit.cleanup_crit_edge, label %if.end

lm90_read_reg.exit.cleanup_crit_edge:             ; preds = %lm90_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lm90_read_reg.exit
  %kind = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp2 = icmp eq i32 %11, 10
  br i1 %cmp2, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %client, align 8
  %14 = and i16 %13, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i204 = icmp eq i16 %14, 0
  br i1 %tobool.not.i204, label %if.else.i213, label %if.then.i209

if.then.i209:                                     ; preds = %if.then3
  %adapter.i.i205 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i.i205 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i.i205, align 8
  %addr.i.i206 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %17 = ptrtoint ptr %addr.i.i206 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i.i206, align 2
  %19 = and i16 %13, -5
  %call.i.i207 = tail call i32 @i2c_smbus_xfer(ptr noundef %16, i16 noundef zeroext %18, i16 noundef zeroext %19, i8 noundef zeroext 0, i8 noundef zeroext 18, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i207)
  %cmp.i208 = icmp sgt i32 %call.i.i207, -1
  br i1 %cmp.i208, label %if.then2.i211, label %if.then.i209.cleanup_crit_edge

if.then.i209.cleanup_crit_edge:                   ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i211:                                    ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i210 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #10
  br label %lm90_read_reg.exit215

if.else.i213:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i212 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 18) #10
  br label %lm90_read_reg.exit215

lm90_read_reg.exit215:                            ; preds = %if.else.i213, %if.then2.i211
  %err.0.i214 = phi i32 [ %call3.i210, %if.then2.i211 ], [ %call4.i212, %if.else.i213 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i214)
  %cmp5 = icmp slt i32 %err.0.i214, 0
  br i1 %cmp5, label %lm90_read_reg.exit215.cleanup_crit_edge, label %lm90_read_reg.exit215.if.end8_crit_edge

lm90_read_reg.exit215.if.end8_crit_edge:          ; preds = %lm90_read_reg.exit215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

lm90_read_reg.exit215.cleanup_crit_edge:          ; preds = %lm90_read_reg.exit215
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %lm90_read_reg.exit215.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %st2.0 = phi i32 [ %err.0.i214, %lm90_read_reg.exit215.if.end8_crit_edge ], [ 0, %if.end.if.end8_crit_edge ]
  %shl = shl i32 %st2.0, 8
  %or = or i32 %shl, %err.0.i
  %conv = trunc i32 %or to i16
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %status, align 2
  %and = and i32 %err.0.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  %and11 = and i32 %st2.0, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 0
  %or.cond = select i1 %cmp9, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %and16 = and i32 %err.0.i, 97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  %and17 = and i32 %st2.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond190 = select i1 %tobool.not, i1 %tobool18.not, i1 false
  br i1 %or.cond190, label %if.end15.if.end27_crit_edge, label %do.body

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.body:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_is_tripped.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_is_tripped, %if.end27)) #10
          to label %if.then25 [label %if.end27], !srcloc !163

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_is_tripped.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 1) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %do.body, %if.end15.if.end27_crit_edge
  %and28 = and i32 %err.0.i, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %and31 = and i32 %st2.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %or.cond191 = select i1 %tobool29.not, i1 %tobool32.not, i1 false
  br i1 %or.cond191, label %if.end27.if.end53_crit_edge, label %do.body34

if.end27.if.end53_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.body34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_is_tripped.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_is_tripped, %if.end53)) #10
          to label %if.then48 [label %if.end53], !srcloc !163

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %dev49 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_is_tripped.__UNIQUE_ID_ddebug304, ptr noundef %dev49, ptr noundef nonnull @.str.21, i32 noundef 2) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %do.body34, %if.end27.if.end53_crit_edge
  %and54 = and i32 %err.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end76_crit_edge, label %do.body57

if.end53.if.end76_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

do.body57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_is_tripped.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_is_tripped, %if.end76)) #10
          to label %if.then71 [label %if.end76], !srcloc !163

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %dev72 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_is_tripped.__UNIQUE_ID_ddebug305, ptr noundef %dev72, ptr noundef nonnull @.str.22, i32 noundef 2) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %do.body57, %if.end53.if.end76_crit_edge
  %and77 = and i32 %st2.0, 90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end99_crit_edge, label %do.body80

if.end76.if.end99_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

do.body80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_is_tripped.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_is_tripped, %if.end99)) #10
          to label %if.then94 [label %if.end99], !srcloc !163

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %dev95 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_is_tripped.__UNIQUE_ID_ddebug306, ptr noundef %dev95, ptr noundef nonnull @.str.21, i32 noundef 3) #10
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %do.body80, %if.end76.if.end99_crit_edge
  %and100 = and i32 %st2.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end122_crit_edge, label %do.body103

if.end99.if.end122_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

do.body103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm90_is_tripped.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm90_is_tripped, %if.end122)) #10
          to label %if.then117 [label %if.end122], !srcloc !163

if.then117:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  %dev118 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm90_is_tripped.__UNIQUE_ID_ddebug307, ptr noundef %dev118, ptr noundef nonnull @.str.22, i32 noundef 3) #10
  br label %if.end122

if.end122:                                        ; preds = %if.then117, %do.body103, %if.end99.if.end122_crit_edge
  %and123 = and i32 %err.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end122.if.end127_crit_edge, label %if.then125

if.end122.if.end127_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %hwmon_dev = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwmon_dev, align 4
  %call126 = tail call i32 @hwmon_notify_event(ptr noundef %22, i32 noundef 1, i32 noundef 15, i32 noundef 0) #10
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end122.if.end127_crit_edge
  %and128 = and i32 %err.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end133_crit_edge, label %if.then130

if.end127.if.end133_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %hwmon_dev131 = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %hwmon_dev131 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hwmon_dev131, align 4
  %call132 = tail call i32 @hwmon_notify_event(ptr noundef %24, i32 noundef 1, i32 noundef 15, i32 noundef 1) #10
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.end127.if.end133_crit_edge
  %and134 = and i32 %st2.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end133.if.end139_crit_edge, label %if.then136

if.end133.if.end139_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then136:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  %hwmon_dev137 = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %hwmon_dev137 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwmon_dev137, align 4
  %call138 = tail call i32 @hwmon_notify_event(ptr noundef %26, i32 noundef 1, i32 noundef 15, i32 noundef 2) #10
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end133.if.end139_crit_edge
  %and140 = and i32 %err.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end139.if.end145_crit_edge, label %if.then142

if.end139.if.end145_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  %hwmon_dev143 = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %hwmon_dev143 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwmon_dev143, align 4
  %call144 = tail call i32 @hwmon_notify_event(ptr noundef %28, i32 noundef 1, i32 noundef 16, i32 noundef 0) #10
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.end139.if.end145_crit_edge
  %and146 = and i32 %err.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end145.if.end151_crit_edge, label %if.then148

if.end145.if.end151_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  %hwmon_dev149 = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %hwmon_dev149 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hwmon_dev149, align 4
  %call150 = tail call i32 @hwmon_notify_event(ptr noundef %30, i32 noundef 1, i32 noundef 16, i32 noundef 1) #10
  br label %if.end151

if.end151:                                        ; preds = %if.then148, %if.end145.if.end151_crit_edge
  %and152 = and i32 %st2.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end151.cleanup_crit_edge, label %if.then154

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then154:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  %hwmon_dev155 = getelementptr inbounds %struct.lm90_data, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %hwmon_dev155 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwmon_dev155, align 4
  %call156 = tail call i32 @hwmon_notify_event(ptr noundef %32, i32 noundef 1, i32 noundef 16, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then154, %if.end151.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lm90_read_reg.exit215.cleanup_crit_edge, %if.then.i209.cleanup_crit_edge, %lm90_read_reg.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lm90_read_reg.exit.cleanup_crit_edge ], [ false, %lm90_read_reg.exit215.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ true, %if.then154 ], [ true, %if.end151.cleanup_crit_edge ], [ false, %if.then.i.cleanup_crit_edge ], [ false, %if.then.i209.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmon_notify_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm90_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @disable_irq(i32 noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm90_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @enable_irq(i32 noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !83, !84, !86, !88, !89, !91, !93, !95, !96, !97, !99, !100, !102, !104, !106, !108, !110, !111, !112, !113, !114, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_lm90__311_2067_lm90_driver_init6, !1, !"__initcall__kmod_lm90__311_2067_lm90_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm90.c", i32 2067, i32 1}
!2 = !{ptr @__exitcall_lm90_driver_exit, !1, !"__exitcall_lm90_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author312, !4, !"__UNIQUE_ID_author312", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm90.c", i32 2069, i32 1}
!5 = !{ptr @__UNIQUE_ID_description313, !6, !"__UNIQUE_ID_description313", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lm90.c", i32 2070, i32 1}
!7 = !{ptr @__UNIQUE_ID_file314, !8, !"__UNIQUE_ID_file314", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lm90.c", i32 2071, i32 1}
!9 = !{ptr @__UNIQUE_ID_license315, !8, !"__UNIQUE_ID_license315", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm90.c", i32 2056, i32 11}
!12 = !{ptr @lm90_driver, !13, !"lm90_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm90.c", i32 2053, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm90.c", i32 1869, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/lm90.c", i32 1875, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lm90_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lm90_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lm90_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/lm90.c", i32 1889, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/lm90.c", i32 1964, i32 3}
!29 = !{ptr @lm90_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lm90_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/lm90.c", i32 1990, i32 3}
!33 = !{ptr @lm90_probe.__UNIQUE_ID_ddebug308, !32, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/lm90.c", i32 1995, i32 4}
!36 = !{ptr @lm90_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @lm90_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @lm90_params, !39, !"lm90_params", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/lm90.c", i32 358, i32 33}
!40 = !{ptr @lm90_ops, !41, !"lm90_ops", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/lm90.c", i32 1853, i32 31}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/lm90.c", i32 790, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @lm90_update_device.__UNIQUE_ID_ddebug288, !43, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/lm90.c", i32 855, i32 5}
!48 = !{ptr @lm90_update_device.__UNIQUE_ID_ddebug289, !47, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!49 = !{ptr @lm90_temp_index, !50, !"lm90_temp_index", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/lm90.c", i32 1185, i32 17}
!51 = !{ptr @lm90_min_alarm_bits, !52, !"lm90_min_alarm_bits", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/lm90.c", i32 1205, i32 17}
!53 = !{ptr @lm90_max_alarm_bits, !54, !"lm90_max_alarm_bits", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/lm90.c", i32 1206, i32 17}
!55 = !{ptr @lm90_crit_alarm_bits_swapped, !56, !"lm90_crit_alarm_bits_swapped", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/lm90.c", i32 1208, i32 17}
!57 = !{ptr @lm90_crit_alarm_bits, !58, !"lm90_crit_alarm_bits", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/lm90.c", i32 1207, i32 17}
!59 = !{ptr @lm90_emergency_alarm_bits, !60, !"lm90_emergency_alarm_bits", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/lm90.c", i32 1209, i32 17}
!61 = !{ptr @lm90_fault_bits, !62, !"lm90_fault_bits", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/lm90.c", i32 1210, i32 17}
!63 = !{ptr @lm90_temp_min_index, !64, !"lm90_temp_min_index", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/lm90.c", i32 1189, i32 17}
!65 = !{ptr @lm90_temp_max_index, !66, !"lm90_temp_max_index", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/lm90.c", i32 1193, i32 17}
!67 = !{ptr @lm90_temp_crit_index, !68, !"lm90_temp_crit_index", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/lm90.c", i32 1197, i32 17}
!69 = !{ptr @lm90_temp_emerg_index, !70, !"lm90_temp_emerg_index", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/lm90.c", i32 1201, i32 17}
!71 = !{ptr @lm90_set_temp8.reg, !72, !"reg", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/lm90.c", i32 1111, i32 18}
!73 = !{ptr @lm90_set_temp11.reg, !74, !"reg", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/lm90.c", i32 1050, i32 4}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/lm90.c", i32 1024, i32 8}
!77 = !{ptr @dev_attr_pec, !76, !"dev_attr_pec", i1 false, i1 false}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/lm90.c", i32 996, i32 22}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/lm90.c", i32 1792, i32 3}
!82 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @lm90_is_tripped.__UNIQUE_ID_ddebug303, !81, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!84 = !{ptr @lm90_is_tripped.__UNIQUE_ID_ddebug304, !85, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/lm90.c", i32 1796, i32 3}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/lm90.c", i32 1799, i32 3}
!88 = !{ptr @lm90_is_tripped.__UNIQUE_ID_ddebug305, !87, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!89 = !{ptr @lm90_is_tripped.__UNIQUE_ID_ddebug306, !90, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/lm90.c", i32 1803, i32 3}
!91 = !{ptr @lm90_is_tripped.__UNIQUE_ID_ddebug307, !92, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/lm90.c", i32 1806, i32 3}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/lm90.c", i32 2021, i32 4}
!95 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lm90_alert.__UNIQUE_ID_ddebug309, !94, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/lm90.c", i32 2025, i32 3}
!99 = !{ptr @lm90_alert.__UNIQUE_ID_ddebug310, !98, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!100 = !{ptr @lm90_of_match, !101, !"lm90_of_match", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/lm90.c", i32 246, i32 49}
!102 = !{ptr @lm90_pm_ops, !103, !"lm90_pm_ops", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/lm90.c", i32 2051, i32 8}
!104 = !{ptr @lm90_id, !105, !"lm90_id", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/lm90.c", i32 217, i32 35}
!106 = !{ptr @.str.26, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/lm90.c", i32 1501, i32 12}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/lm90.c", i32 1502, i32 5}
!110 = !{ptr @.str.28, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.29, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @lm90_detect._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @lm90_detect._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.31, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/lm90.c", i32 1505, i32 5}
!116 = !{ptr @lm90_detect._entry.30, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @lm90_detect._entry_ptr.32, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.33, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/lm90.c", i32 1512, i32 12}
!120 = !{ptr @.str.34, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/lm90.c", i32 1521, i32 11}
!122 = !{ptr @.str.35, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/lm90.c", i32 1533, i32 11}
!124 = !{ptr @.str.36, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/lm90.c", i32 1538, i32 11}
!126 = !{ptr @.str.37, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/lm90.c", i32 1579, i32 12}
!128 = !{ptr @.str.38, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/lm90.c", i32 1581, i32 12}
!130 = !{ptr @.str.39, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/lm90.c", i32 1599, i32 11}
!132 = !{ptr @.str.40, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/lm90.c", i32 1610, i32 11}
!134 = !{ptr @.str.41, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/lm90.c", i32 1620, i32 11}
!136 = !{ptr @.str.42, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/lm90.c", i32 1630, i32 11}
!138 = !{ptr @.str.43, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/lm90.c", i32 1639, i32 12}
!140 = !{ptr @.str.44, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/lm90.c", i32 1653, i32 11}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/lm90.c", i32 1661, i32 11}
!144 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/lm90.c", i32 1679, i32 12}
!146 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/lm90.c", i32 1681, i32 12}
!148 = !{ptr @.str.48, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/lm90.c", i32 1686, i32 3}
!150 = !{ptr @lm90_detect.__UNIQUE_ID_ddebug302, !149, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!151 = !{ptr @normal_i2c, !152, !"normal_i2c", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/lm90.c", i32 111, i32 29}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{ptr @lm90_regulator_disable, ptr @lm90_remove_pec, ptr @lm90_restore_conf}
!163 = !{i64 2149007414, i64 2149007419, i64 2149007432, i64 2149007476, i64 2149007510, i64 2149007531}
!164 = !{!"auto-init"}
!165 = !{i8 0, i8 2}
