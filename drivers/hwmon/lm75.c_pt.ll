; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm75.c_pt.bc'
source_filename = "../drivers/hwmon/lm75.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lm75_params = type { i8, i8, i8, i8, ptr, i32, i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lm75_data = type { ptr, ptr, ptr, i8, i8, i8, i32, i32, ptr }

@__initcall__kmod_lm75__299_940_lm75_driver_init6 = internal global ptr @lm75_driver_init, section ".initcall6.init", align 4
@lm75_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm75_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm75_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lm75_dev_pm_ops, ptr null, ptr null }, ptr @lm75_ids, ptr @lm75_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm75_driver_exit = internal global ptr @lm75_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [44 x i8] c"lm75.author=Frodo Looijaard <frodol@dds.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [29 x i8] c"lm75.description=LM75 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [29 x i8] c"lm75.file=drivers/hwmon/lm75\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [17 x i8] c"lm75.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm75\00", [27 x i8] zeroinitializer }, align 32
@lm75_of_match = internal constant { [28 x %struct.of_device_id], [1360 x i8] } { [28 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1775\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds7505\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gmt,g751\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm75a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm75b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6626\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31725\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31726\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,mcp980x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 11 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pct2075\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stds75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stlm75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 14 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,tcn75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 16 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp101\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 17 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp105\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 18 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp112\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 19 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp175\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 20 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp275\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 21 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp75b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 23 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp75c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 24 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp1075\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 25 to ptr) }, %struct.of_device_id zeroinitializer], [1360 x i8] zeroinitializer }, align 32
@lm75_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @lm75_suspend, ptr @lm75_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lm75_ids = internal constant { [28 x %struct.i2c_device_id], [160 x i8] } { [28 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adt75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ds1775\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ds75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ds7505\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"g751\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"lm75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"lm75a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"lm75b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"max6625\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"max6626\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"max31725\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"max31726\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"mcp980x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"pct2075\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"stds75\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"stlm75\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.i2c_device_id { [20 x i8] c"tcn75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.i2c_device_id { [20 x i8] c"tmp100\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"tmp101\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17 }, %struct.i2c_device_id { [20 x i8] c"tmp105\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18 }, %struct.i2c_device_id { [20 x i8] c"tmp112\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 19 }, %struct.i2c_device_id { [20 x i8] c"tmp175\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 20 }, %struct.i2c_device_id { [20 x i8] c"tmp275\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21 }, %struct.i2c_device_id { [20 x i8] c"tmp75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 22 }, %struct.i2c_device_id { [20 x i8] c"tmp75b\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 23 }, %struct.i2c_device_id { [20 x i8] c"tmp75c\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.i2c_device_id { [20 x i8] c"tmp1075\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 25 }, %struct.i2c_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 -2], [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vs\00", [29 x i8] zeroinitializer }, align 32
@lm75_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm75_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr @lm75_is_writeable_reg, ptr null, ptr @lm75_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lm75:592:(&lm75_regmap_config)->lock\00", [59 x i8] zeroinitializer }, align 32
@device_params = internal constant { [26 x %struct.lm75_params], [152 x i8] } { [26 x %struct.lm75_params] [%struct.lm75_params { i8 0, i8 32, i8 12, i8 0, ptr null, i32 100, i8 0, ptr null }, %struct.lm75_params { i8 64, i8 96, i8 11, i8 0, ptr @.compoundliteral, i32 500, i8 4, ptr @.compoundliteral.13 }, %struct.lm75_params { i8 64, i8 96, i8 11, i8 0, ptr @.compoundliteral.14, i32 600, i8 4, ptr @.compoundliteral.15 }, %struct.lm75_params { i8 96, i8 0, i8 12, i8 0, ptr @.compoundliteral.16, i32 200, i8 4, ptr @.compoundliteral.17 }, %struct.lm75_params { i8 0, i8 0, i8 9, i8 0, ptr null, i32 100, i8 0, ptr null }, %struct.lm75_params { i8 0, i8 0, i8 9, i8 0, ptr null, i32 100, i8 0, ptr null }, %struct.lm75_params { i8 0, i8 0, i8 9, i8 0, ptr null, i32 100, i8 0, ptr null }, %struct.lm75_params { i8 0, i8 0, i8 11, i8 0, ptr null, i32 100, i8 0, ptr null }, %struct.lm75_params { i8 0, i8 0, i8 9, i8 0, ptr null, i32 142, i8 0, ptr null }, %struct.lm75_params { i8 0, i8 0, i8 12, i8 9, ptr null, i32 142, i8 0, ptr null }, %struct.lm75_params { i8 0, i8 0, i8 16, i8 0, ptr null, i32 50, i8 0, ptr null }, %struct.lm75_params { i8 96, i8 -128, i8 12, i8 9, ptr @.compoundliteral.18, i32 240, i8 4, ptr @.compoundliteral.19 }, %struct.lm75_params { i8 0, i8 0, i8 11, i8 0, ptr null, i32 100, i8 31, ptr @.compoundliteral.20 }, %struct.lm75_params { i8 64, i8 96, i8 11, i8 0, ptr @.compoundliteral.21, i32 600, i8 4, ptr @.compoundliteral.22 }, %struct.lm75_params { i8 0, i8 0, i8 9, i8 0, ptr null, i32 166, i8 0, ptr null }, %struct.lm75_params { i8 0, i8 0, i8 9, i8 0, ptr null, i32 55, i8 0, ptr null }, %struct.lm75_params { i8 96, i8 -128, i8 12, i8 0, ptr @.compoundliteral.23, i32 320, i8 4, ptr @.compoundliteral.24 }, %struct.lm75_params { i8 96, i8 -128, i8 12, i8 0, ptr @.compoundliteral.25, i32 320, i8 4, ptr @.compoundliteral.26 }, %struct.lm75_params { i8 96, i8 -128, i8 12, i8 0, ptr @.compoundliteral.27, i32 220, i8 4, ptr @.compoundliteral.28 }, %struct.lm75_params { i8 96, i8 -128, i8 12, i8 0, ptr null, i32 125, i8 4, ptr @.compoundliteral.29 }, %struct.lm75_params { i8 96, i8 -128, i8 12, i8 0, ptr @.compoundliteral.30, i32 220, i8 4, ptr @.compoundliteral.31 }, %struct.lm75_params { i8 96, i8 -128, i8 12, i8 0, ptr @.compoundliteral.32, i32 220, i8 4, ptr @.compoundliteral.33 }, %struct.lm75_params { i8 96, i8 -128, i8 12, i8 0, ptr @.compoundliteral.34, i32 220, i8 4, ptr @.compoundliteral.35 }, %struct.lm75_params { i8 0, i8 -32, i8 12, i8 0, ptr null, i32 27, i8 4, ptr @.compoundliteral.36 }, %struct.lm75_params { i8 0, i8 32, i8 12, i8 0, ptr null, i32 83, i8 0, ptr null }, %struct.lm75_params { i8 0, i8 -32, i8 12, i8 0, ptr null, i32 28, i8 4, ptr @.compoundliteral.37 }], [152 x i8] zeroinitializer }, align 32
@lm75_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 609, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lm75_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hwmon/lm75.c\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm75_probe._entry_ptr = internal global ptr @lm75_probe._entry, section ".printk_index", align 4
@lm75_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 -101, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't read config? %d\0A\00", [41 x i8] zeroinitializer }, align 32
@lm75_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @lm75_hwmon_ops, ptr @lm75_info }, [24 x i8] zeroinitializer }, align 32
@lm75_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 641, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: sensor '%s'\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lm75_probe._entry_ptr.12 = internal global ptr @lm75_probe._entry.9, section ".printk_index", align 4
@.compoundliteral = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 125, i32 250, i32 500, i32 1000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 150, i32 300, i32 600, i32 1200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 25, i32 50, i32 100, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 30, i32 60, i32 120, i32 240], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [31 x i32], [36 x i8] } { [31 x i32] [i32 100, i32 200, i32 300, i32 400, i32 500, i32 600, i32 700, i32 800, i32 900, i32 1000, i32 1100, i32 1200, i32 1300, i32 1400, i32 1500, i32 1600, i32 1700, i32 1800, i32 1900, i32 2000, i32 2100, i32 2200, i32 2300, i32 2400, i32 2500, i32 2600, i32 2700, i32 2800, i32 2900, i32 3000, i32 3100], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 150, i32 300, i32 600, i32 1200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 40, i32 80, i32 160, i32 320], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 40, i32 80, i32 160, i32 320], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 28, i32 55, i32 110, i32 220], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 125, i32 250, i32 1000, i32 4000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 28, i32 55, i32 110, i32 220], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 28, i32 55, i32 110, i32 220], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\09\0A\0B\0C", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 28, i32 55, i32 110, i32 220], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 27, i32 55, i32 111, i32 250], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 28, i32 55, i32 110, i32 220], [16 x i8] zeroinitializer }, align 32
@lm75_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @lm75_is_visible, ptr @lm75_read, ptr null, ptr @lm75_write }, [16 x i8] zeroinitializer }, align 32
@lm75_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.39, ptr @.compoundliteral.41, ptr null], [20 x i8] zeroinitializer }, align 32
@lm75_sample_set_masks = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00 @`", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 48, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral.38 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 386, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.40 }, [24 x i8] zeroinitializer }, align 32
@lm75_suspend.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.5, ptr @.str.8, i8 0, i8 -33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm75_suspend\00", [19 x i8] zeroinitializer }, align 32
@lm75_resume.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.5, ptr @.str.8, i8 0, i8 -29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm75_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lm75a\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 19]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"lm75_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 927, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 930, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"lm75_of_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 678, i32 49 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"lm75_dev_pm_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 918, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant [9 x i8] c"lm75_ids\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 646, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 92, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 588, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"lm75_regmap_config\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 535, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 592, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"device_params\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 125, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 609, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 620, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"lm75_chip_info\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 520, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 641, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [15 x i8] c"lm75_hwmon_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 514, i32 31 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"lm75_info\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 506, i32 41 }
@___asan_gen_.149 = private unnamed_addr constant [22 x i8] c"lm75_sample_set_masks\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 117, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 895, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 910, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [24 x i8] c"../drivers/hwmon/lm75.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 882, i32 33 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_lm75_driver_exit, ptr @__initcall__kmod_lm75__299_940_lm75_driver_init6, ptr @lm75_driver_exit, ptr @lm75_probe._entry, ptr @lm75_probe._entry.9, ptr @lm75_probe._entry_ptr, ptr @lm75_probe._entry_ptr.12, ptr @lm75_driver, ptr @.str, ptr @lm75_of_match, ptr @lm75_dev_pm_ops, ptr @lm75_ids, ptr @normal_i2c, ptr @.str.1, ptr @lm75_probe._key, ptr @lm75_regmap_config, ptr @.str.2, ptr @device_params, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @lm75_chip_info, ptr @.str.10, ptr @.str.11, ptr @.compoundliteral, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @lm75_hwmon_ops, ptr @lm75_info, ptr @lm75_sample_set_masks, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_of_match to i32), i32 5488, i32 6848, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_ids to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_params to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm75_sample_set_masks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm75_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm75_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm75_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @lm75_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm75_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %2 = ptrtoint ptr %call to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call ptr @i2c_match_id(ptr noundef nonnull @lm75_ids, ptr noundef %client) #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call4, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %kind.0 = phi i32 [ %2, %if.then ], [ %4, %if.else ]
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %10(ptr noundef %6) #9
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #9
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %call.i, align 4
  %kind14 = getelementptr inbounds %struct.lm75_data, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %kind14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %kind.0, ptr %kind14, align 4
  %call15 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %vs = getelementptr inbounds %struct.lm75_data, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %vs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %vs, align 4
  %cmp.i135 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call22 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm75_regmap_config, ptr noundef nonnull @lm75_probe._key, ptr noundef nonnull @.str.2) #9
  %regmap = getelementptr inbounds %struct.lm75_data, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call22, ptr %regmap, align 4
  %cmp.i136 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %kind14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %kind14, align 4
  %arrayidx = getelementptr [26 x %struct.lm75_params], ptr @device_params, i32 0, i32 %18
  %params = getelementptr inbounds %struct.lm75_data, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx, ptr %params, align 4
  %default_sample_time = getelementptr [26 x %struct.lm75_params], ptr @device_params, i32 0, i32 %18, i32 5
  %20 = ptrtoint ptr %default_sample_time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %default_sample_time, align 4
  %sample_time = getelementptr inbounds %struct.lm75_data, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %sample_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sample_time, align 4
  %default_resolution = getelementptr [26 x %struct.lm75_params], ptr @device_params, i32 0, i32 %18, i32 2
  %23 = ptrtoint ptr %default_resolution to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %default_resolution, align 2
  %resolution = getelementptr inbounds %struct.lm75_data, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %resolution to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %resolution, align 2
  %26 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vs, align 4
  %call33 = tail call i32 @regulator_enable(ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %do.end

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %call33) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call.i137 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @lm75_disable_regulator, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i, label %if.end40, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vs, align 4
  %call.i151 = tail call i32 @regulator_disable(ptr noundef %29) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %do.body43, label %if.end54

do.body43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm75_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm75_probe, %cleanup)) #9
          to label %if.then50 [label %cleanup], !srcloc !72

if.then50:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm75_probe.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call41) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end40
  %conv = trunc i32 %call41 to i8
  %orig_conf = getelementptr inbounds %struct.lm75_data, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %orig_conf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %orig_conf, align 4
  %current_conf = getelementptr inbounds %struct.lm75_data, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %current_conf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %current_conf, align 1
  %32 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %params, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %clr_mask = getelementptr inbounds %struct.lm75_params, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %clr_mask to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %clr_mask, align 1
  %38 = and i8 %37, -2
  %neg.i = xor i8 %38, -2
  %and.i138 = and i8 %neg.i, %conv
  %or725.i = or i8 %and.i138, %35
  call void @__sanitizer_cov_trace_cmp1(i8 %or725.i, i8 %conv)
  %cmp.not.i = icmp eq i8 %or725.i, %conv
  br i1 %cmp.not.i, label %if.end54.if.end61_crit_edge, label %if.then.i141

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then.i141:                                     ; preds = %if.end54
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call.i139 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 1, i8 noundef zeroext %or725.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i140 = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i140, label %if.end.i, label %if.then.i141.cleanup_crit_edge

if.then.i141.cleanup_crit_edge:                   ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %current_conf to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %or725.i, ptr %current_conf, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.end.i, %if.end54.if.end61_crit_edge
  %call.i142 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @lm75_remove, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %if.end65, label %devm_add_action_or_reset.exit146

devm_add_action_or_reset.exit146:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %44 = ptrtoint ptr %orig_conf to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %orig_conf, align 4
  %call.i152 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 1, i8 noundef zeroext %45) #9
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call66 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @lm75_chip_info, ptr noundef null) #9
  %cmp.i147 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then68, label %do.end73

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %call66 to i32
  br label %cleanup

do.end73:                                         ; preds = %if.end65
  %init_name.i = getelementptr inbounds %struct.device, ptr %call66, i32 0, i32 3
  %47 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i148 = icmp eq ptr %48, null
  br i1 %tobool.not.i148, label %if.end.i149, label %do.end73.dev_name.exit_crit_edge

do.end73.dev_name.exit_crit_edge:                 ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i149:                                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %call66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call66, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i149, %do.end73.dev_name.exit_crit_edge
  %retval.0.i150 = phi ptr [ %50, %if.end.i149 ], [ %48, %do.end73.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i150, ptr noundef %name) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.then68, %devm_add_action_or_reset.exit146, %if.then.i141.cleanup_crit_edge, %if.then50, %do.body43, %devm_add_action_or_reset.exit, %do.end, %if.then25, %if.then18, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then18 ], [ %16, %if.then25 ], [ %call33, %do.end ], [ %46, %if.then68 ], [ 0, %dev_name.exit ], [ -5, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %call.i137, %devm_add_action_or_reset.exit ], [ %call41, %if.then50 ], [ %call.i142, %devm_add_action_or_reset.exit146 ], [ %call.i139, %if.then.i141.cleanup_crit_edge ], [ %call41, %do.body43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm75_detect(ptr noundef %new_client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 1) #9
  %and = and i32 %call2, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %call6)
  %cmp = icmp eq i32 %call6, 161
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 255
  br i1 %cmp9.not, label %lor.lhs.false, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then7
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 255
  br i1 %cmp11.not, label %lor.lhs.false12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 255
  br i1 %cmp14.not, label %if.end16, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 2) #9
  %call18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 3) #9
  br label %if.end47

if.else:                                          ; preds = %if.end5
  %call19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 2) #9
  %call20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %call19)
  %cmp21.not = icmp eq i32 %call20, %call19
  br i1 %cmp21.not, label %lor.lhs.false22, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false22:                                  ; preds = %if.else
  %call23 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %call19)
  %cmp24.not = icmp eq i32 %call23, %call19
  br i1 %cmp24.not, label %lor.lhs.false25, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %call19)
  %cmp27.not = icmp eq i32 %call26, %call19
  br i1 %cmp27.not, label %lor.lhs.false28, label %lor.lhs.false25.cleanup_crit_edge

lor.lhs.false25.cleanup_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %call29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %call19)
  %cmp30.not = icmp eq i32 %call29, %call19
  br i1 %cmp30.not, label %if.end32, label %lor.lhs.false28.cleanup_crit_edge

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false28
  %call33 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 3) #9
  %call34 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %call33)
  %cmp35.not = icmp eq i32 %call34, %call33
  br i1 %cmp35.not, label %lor.lhs.false36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false36:                                  ; preds = %if.end32
  %call37 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %call33)
  %cmp38.not = icmp eq i32 %call37, %call33
  br i1 %cmp38.not, label %lor.lhs.false39, label %lor.lhs.false36.cleanup_crit_edge

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %call40 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call40, i32 %call33)
  %cmp41.not = icmp eq i32 %call40, %call33
  br i1 %cmp41.not, label %lor.lhs.false42, label %lor.lhs.false39.cleanup_crit_edge

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %call43 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call43, i32 %call33)
  %cmp44.not = icmp eq i32 %call43, %call33
  br i1 %cmp44.not, label %lor.lhs.false42.if.end47_crit_edge, label %lor.lhs.false42.cleanup_crit_edge

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false42.if.end47_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end47:                                         ; preds = %lor.lhs.false42.if.end47_crit_edge, %if.end16
  %hyst.0 = phi i32 [ %call17, %if.end16 ], [ %call19, %lor.lhs.false42.if.end47_crit_edge ]
  %os.0 = phi i32 [ %call18, %if.end16 ], [ %call33, %lor.lhs.false42.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hyst.0)
  %cmp48 = icmp eq i32 %hyst.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %os.0)
  %cmp49 = icmp eq i32 %os.0, 0
  %or.cond = select i1 %cmp48, i1 %cmp49, i1 false
  br i1 %or.cond, label %if.end47.cleanup_crit_edge, label %if.end47.for.body_crit_edge

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  br label %for.body

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end47.for.body_crit_edge
  %i.0127 = phi i32 [ %add80, %for.inc.for.body_crit_edge ], [ 8, %if.end47.for.body_crit_edge ]
  %6 = trunc i32 %i.0127 to i8
  %conv = or i8 %6, 1
  %call53 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call53, i32 %call2)
  %cmp54.not = icmp eq i32 %call53, %call2
  br i1 %cmp54.not, label %lor.lhs.false56, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false56:                                  ; preds = %for.body
  %conv58 = or i8 %6, 2
  %call59 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext %conv58) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call59, i32 %hyst.0)
  %cmp60.not = icmp eq i32 %call59, %hyst.0
  br i1 %cmp60.not, label %lor.lhs.false62, label %lor.lhs.false56.cleanup_crit_edge

lor.lhs.false56.cleanup_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false62:                                  ; preds = %lor.lhs.false56
  %conv64 = or i8 %6, 3
  %call65 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext %conv64) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call65, i32 %os.0)
  %cmp66.not = icmp eq i32 %call65, %os.0
  br i1 %cmp66.not, label %if.end69, label %lor.lhs.false62.cleanup_crit_edge

lor.lhs.false62.cleanup_crit_edge:                ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false62
  br i1 %cmp, label %land.lhs.true72, label %if.end69.for.inc_crit_edge

if.end69.for.inc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true72:                                  ; preds = %if.end69
  %conv74 = or i8 %6, 7
  %call75 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext %conv74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %call75)
  %cmp76.not = icmp eq i32 %call75, 161
  br i1 %cmp76.not, label %land.lhs.true72.for.inc_crit_edge, label %land.lhs.true72.cleanup_crit_edge

land.lhs.true72.cleanup_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true72.for.inc_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true72.for.inc_crit_edge, %if.end69.for.inc_crit_edge
  %add80 = add nuw nsw i32 %i.0127, 40
  %cmp52 = icmp ult i32 %i.0127, 209
  br i1 %cmp52, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %cmp, ptr @.str.44, ptr @.str
  %call83 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %cond, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true72.cleanup_crit_edge, %lor.lhs.false62.cleanup_crit_edge, %lor.lhs.false56.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %lor.lhs.false42.cleanup_crit_edge, %lor.lhs.false39.cleanup_crit_edge, %lor.lhs.false36.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %lor.lhs.false28.cleanup_crit_edge, %lor.lhs.false25.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %lor.lhs.false12.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.then7.cleanup_crit_edge ], [ -19, %lor.lhs.false28.cleanup_crit_edge ], [ -19, %lor.lhs.false25.cleanup_crit_edge ], [ -19, %lor.lhs.false22.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ], [ -19, %lor.lhs.false42.cleanup_crit_edge ], [ -19, %lor.lhs.false39.cleanup_crit_edge ], [ -19, %lor.lhs.false36.cleanup_crit_edge ], [ -19, %if.end32.cleanup_crit_edge ], [ -19, %if.end47.cleanup_crit_edge ], [ -19, %lor.lhs.false62.cleanup_crit_edge ], [ -19, %lor.lhs.false56.cleanup_crit_edge ], [ -19, %for.body.cleanup_crit_edge ], [ -19, %land.lhs.true72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm75_disable_regulator(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vs = getelementptr inbounds %struct.lm75_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %vs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vs, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm75_remove(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %orig_conf = getelementptr inbounds %struct.lm75_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %orig_conf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %orig_conf, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lm75_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cmp = icmp ne i32 %reg, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lm75_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %0 = icmp ult i32 %reg, 2
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lm75_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog7_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog7_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog7

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond = icmp eq i32 %attr, 5
  br i1 %cond, label %sw.bb1, label %sw.bb.sw.epilog7_crit_edge

sw.bb.sw.epilog7_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog7

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %params = getelementptr inbounds %struct.lm75_data, ptr %data, i32 0, i32 8
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %params, align 4
  %num_sample_times = getelementptr inbounds %struct.lm75_params, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %num_sample_times to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_sample_times, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp ugt i8 %4, 1
  %. = select i1 %cmp, i16 420, i16 292
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %attr, label %sw.bb3.sw.epilog7_crit_edge [
    i32 1, label %sw.bb3.cleanup_crit_edge
    i32 7, label %sw.bb3.sw.bb5_crit_edge
    i32 8, label %sw.bb3.sw.bb5_crit_edge9
  ]

sw.bb3.sw.bb5_crit_edge9:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.bb3.sw.bb5_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3.sw.epilog7_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog7

sw.bb5:                                           ; preds = %sw.bb3.sw.bb5_crit_edge, %sw.bb3.sw.bb5_crit_edge9
  br label %cleanup

sw.epilog7:                                       ; preds = %sw.bb3.sw.epilog7_crit_edge, %sw.bb.sw.epilog7_crit_edge, %entry.sw.epilog7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog7, %sw.bb5, %sw.bb3.cleanup_crit_edge, %sw.bb1
  %retval.0 = phi i16 [ 0, %sw.epilog7 ], [ 420, %sw.bb5 ], [ %., %sw.bb1 ], [ 292, %sw.bb3.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm75_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #9
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !73
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond = icmp eq i32 %attr, 5
  br i1 %cond, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %sample_time = getelementptr inbounds %struct.lm75_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %sample_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sample_time, align 4
  br label %sw.epilog11

sw.bb2:                                           ; preds = %entry
  %6 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %attr, label %sw.bb2.cleanup_crit_edge [
    i32 1, label %sw.bb2.sw.epilog7_crit_edge
    i32 7, label %sw.bb4
    i32 8, label %sw.bb5
  ]

sw.bb2.sw.epilog7_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog7

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog7

sw.bb5:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %sw.bb5, %sw.bb4, %sw.bb2.sw.epilog7_crit_edge
  %reg.0 = phi i32 [ 2, %sw.bb5 ], [ 3, %sw.bb4 ], [ 0, %sw.bb2.sw.epilog7_crit_edge ]
  %regmap = getelementptr inbounds %struct.lm75_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %8, i32 noundef %reg.0, ptr noundef nonnull %regval) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %sw.epilog7.cleanup_crit_edge, label %if.end

sw.epilog7.cleanup_crit_edge:                     ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regval, align 4
  %resolution = getelementptr inbounds %struct.lm75_data, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %resolution, align 2
  %sext = shl i32 %10, 16
  %conv.i = ashr exact i32 %sext, 16
  %conv1.i = zext i8 %12 to i32
  %sub.i = sub nsw i32 16, %conv1.i
  %shr.i = ashr i32 %conv.i, %sub.i
  %mul.i = mul nsw i32 %shr.i, 1000
  %sub3.i = add nsw i32 %conv1.i, -8
  %shr4.i = ashr i32 %mul.i, %sub3.i
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %if.end, %sw.bb1
  %storemerge = phi i32 [ %shr4.i, %if.end ], [ %5, %sw.bb1 ]
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog11, %sw.epilog7.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog11 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ %call8, %sw.epilog7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm75_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond.i = icmp eq i32 %attr, 5
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #9
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !73
  %params.i.i = getelementptr inbounds %struct.lm75_data, ptr %2, i32 0, i32 8
  %4 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params.i.i, align 4
  %num_sample_times.i.i = getelementptr inbounds %struct.lm75_params, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %num_sample_times.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_sample_times.i.i, align 4
  %conv.i.i = zext i8 %7 to i32
  %sample_times.i.i = getelementptr inbounds %struct.lm75_params, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %sample_times.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sample_times.i.i, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %conv.i.i, i32 1) #9
  %smax.i.i = add nsw i32 %10, -1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %sw.bb.i
  %__fc_i.0.i.i = phi i32 [ 0, %sw.bb.i ], [ %add.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %__fc_i.0.i.i, i32 %smax.i.i)
  %exitcond.not.i.i = icmp eq i32 %__fc_i.0.i.i, %smax.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 %__fc_i.0.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add nuw nsw i32 %__fc_i.0.i.i, 1
  %arrayidx3.i.i = getelementptr i32, ptr %9, i32 %add.i.i
  %13 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3.i.i, align 4
  %add4.i.i = add i32 %12, 1
  %add5.i.i = add i32 %add4.i.i, %14
  %div695.i.i = lshr i32 %add5.i.i, 1
  %cmp7.not.i.i = icmp ult i32 %div695.i.i, %val
  br i1 %cmp7.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %__fc_i.0.lcssa.i.i = phi i32 [ %__fc_i.0.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %smax.i.i, %for.cond.i.i.for.end.i.i_crit_edge ]
  %kind.i.i = getelementptr inbounds %struct.lm75_data, ptr %2, i32 0, i32 7
  %15 = ptrtoint ptr %kind.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %kind.i.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %16, label %sw.default.i.i [
    i32 19, label %sw.bb.i.i
    i32 12, label %sw.bb45.i.i
  ]

sw.default.i.i:                                   ; preds = %for.end.i.i
  %idxprom.i.i = and i32 %__fc_i.0.lcssa.i.i, 255
  %arrayidx11.i.i = getelementptr [4 x i8], ptr @lm75_sample_set_masks, i32 0, i32 %idxprom.i.i
  %18 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx11.i.i, align 1
  %current_conf.i.i.i = getelementptr inbounds %struct.lm75_data, ptr %2, i32 0, i32 4
  %20 = ptrtoint ptr %current_conf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %current_conf.i.i.i, align 1
  %and.i.i.i = and i8 %21, -98
  %or725.i.i.i = or i8 %and.i.i.i, %19
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %or725.i.i.i)
  %cmp.not.i.i.i = icmp eq i8 %21, %or725.i.i.i
  br i1 %cmp.not.i.i.i, label %sw.default.i.i.if.end14.i.i_crit_edge, label %if.then.i.i.i

sw.default.i.i.if.end14.i.i_crit_edge:            ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then.i.i.i:                                    ; preds = %sw.default.i.i
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 1, i8 noundef zeroext %or725.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i.lm75_update_interval.exit.i_crit_edge

if.then.i.i.i.lm75_update_interval.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lm75_update_interval.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %current_conf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or725.i.i.i, ptr %current_conf.i.i.i, align 1
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end.i.i.i, %sw.default.i.i.if.end14.i.i_crit_edge
  %25 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %params.i.i, align 4
  %sample_times16.i.i = getelementptr inbounds %struct.lm75_params, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %sample_times16.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sample_times16.i.i, align 4
  %arrayidx18.i.i = getelementptr i32, ptr %28, i32 %idxprom.i.i
  %29 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx18.i.i, align 4
  %sample_time.i.i = getelementptr inbounds %struct.lm75_data, ptr %2, i32 0, i32 6
  %31 = ptrtoint ptr %sample_time.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sample_time.i.i, align 4
  %resolutions.i.i = getelementptr inbounds %struct.lm75_params, ptr %26, i32 0, i32 4
  %32 = ptrtoint ptr %resolutions.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resolutions.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %33, null
  br i1 %tobool20.not.i.i, label %if.end14.i.i.lm75_update_interval.exit.i_crit_edge, label %if.then21.i.i

if.end14.i.i.lm75_update_interval.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lm75_update_interval.exit.i

if.then21.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx25.i.i = getelementptr i8, ptr %33, i32 %idxprom.i.i
  %34 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx25.i.i, align 1
  %resolution.i.i = getelementptr inbounds %struct.lm75_data, ptr %2, i32 0, i32 5
  %36 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %resolution.i.i, align 2
  br label %lm75_update_interval.exit.i

sw.bb.i.i:                                        ; preds = %for.end.i.i
  %regmap.i.i = getelementptr inbounds %struct.lm75_data, ptr %2, i32 0, i32 1
  %37 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i.i, align 4
  %call27.i.i = call i32 @regmap_read(ptr noundef %38, i32 noundef 1, ptr noundef nonnull %reg.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp28.i.i = icmp slt i32 %call27.i.i, 0
  br i1 %cmp28.i.i, label %sw.bb.i.i.lm75_update_interval.exit.i_crit_edge, label %if.end31.i.i

sw.bb.i.i.lm75_update_interval.exit.i_crit_edge:  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lm75_update_interval.exit.i

if.end31.i.i:                                     ; preds = %sw.bb.i.i
  %39 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg.i.i, align 4
  %and.i.i = and i32 %40, -193
  %conv32.i.i = and i32 %__fc_i.0.lcssa.i.i, 255
  %.neg.i.i = mul nsw i32 %conv32.i.i, -64
  %shl.i.i = add nsw i32 %.neg.i.i, 192
  %or.i.i = or i32 %and.i.i, %shl.i.i
  store i32 %or.i.i, ptr %reg.i.i, align 4
  %41 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i.i, align 4
  %call35.i.i = call i32 @regmap_write(ptr noundef %42, i32 noundef 1, i32 noundef %or.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp36.i.i = icmp slt i32 %call35.i.i, 0
  br i1 %cmp36.i.i, label %if.end31.i.i.lm75_update_interval.exit.i_crit_edge, label %if.end39.i.i

if.end31.i.i.lm75_update_interval.exit.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lm75_update_interval.exit.i

if.end39.i.i:                                     ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %params.i.i, align 4
  %sample_times41.i.i = getelementptr inbounds %struct.lm75_params, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %sample_times41.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sample_times41.i.i, align 4
  %arrayidx43.i.i = getelementptr i32, ptr %46, i32 %conv32.i.i
  %47 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx43.i.i, align 4
  %sample_time44.i.i = getelementptr inbounds %struct.lm75_data, ptr %2, i32 0, i32 6
  %49 = ptrtoint ptr %sample_time44.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %sample_time44.i.i, align 4
  br label %lm75_update_interval.exit.i

sw.bb45.i.i:                                      ; preds = %for.end.i.i
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %2, align 4
  %52 = trunc i32 %__fc_i.0.lcssa.i.i to i8
  %conv48.i.i = add i8 %52, 1
  %call49.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 4, i8 noundef zeroext %conv48.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end52.i.i, label %sw.bb45.i.i.lm75_update_interval.exit.i_crit_edge

sw.bb45.i.i.lm75_update_interval.exit.i_crit_edge: ; preds = %sw.bb45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lm75_update_interval.exit.i

if.end52.i.i:                                     ; preds = %sw.bb45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv46.i.i = and i32 %__fc_i.0.lcssa.i.i, 255
  %53 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %params.i.i, align 4
  %sample_times54.i.i = getelementptr inbounds %struct.lm75_params, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %sample_times54.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sample_times54.i.i, align 4
  %arrayidx56.i.i = getelementptr i32, ptr %56, i32 %conv46.i.i
  %57 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx56.i.i, align 4
  %sample_time57.i.i = getelementptr inbounds %struct.lm75_data, ptr %2, i32 0, i32 6
  %59 = ptrtoint ptr %sample_time57.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %sample_time57.i.i, align 4
  br label %lm75_update_interval.exit.i

lm75_update_interval.exit.i:                      ; preds = %if.end52.i.i, %sw.bb45.i.i.lm75_update_interval.exit.i_crit_edge, %if.end39.i.i, %if.end31.i.i.lm75_update_interval.exit.i_crit_edge, %sw.bb.i.i.lm75_update_interval.exit.i_crit_edge, %if.then21.i.i, %if.end14.i.i.lm75_update_interval.exit.i_crit_edge, %if.then.i.i.i.lm75_update_interval.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call27.i.i, %sw.bb.i.i.lm75_update_interval.exit.i_crit_edge ], [ %call35.i.i, %if.end31.i.i.lm75_update_interval.exit.i_crit_edge ], [ %call49.i.i, %sw.bb45.i.i.lm75_update_interval.exit.i_crit_edge ], [ 0, %if.end14.i.i.lm75_update_interval.exit.i_crit_edge ], [ 0, %if.then21.i.i ], [ 0, %if.end52.i.i ], [ 0, %if.end39.i.i ], [ %call.i.i.i, %if.then.i.i.i.lm75_update_interval.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i, align 4
  %62 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %attr, label %sw.bb1.return_crit_edge [
    i32 7, label %sw.bb1.sw.epilog.i_crit_edge
    i32 8, label %sw.bb1.i
  ]

sw.bb1.sw.epilog.i_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb1.sw.epilog.i_crit_edge
  %reg.0.i = phi i32 [ 2, %sw.bb1.i ], [ 3, %sw.bb1.sw.epilog.i_crit_edge ]
  %params.i = getelementptr inbounds %struct.lm75_data, ptr %61, i32 0, i32 8
  %63 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %params.i, align 4
  %resolution_limits.i = getelementptr inbounds %struct.lm75_params, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %resolution_limits.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %resolution_limits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i, label %if.else.i, label %sw.epilog.i.if.end.i_crit_edge

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %resolution4.i = getelementptr inbounds %struct.lm75_data, ptr %61, i32 0, i32 5
  %67 = ptrtoint ptr %resolution4.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %resolution4.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.epilog.i.if.end.i_crit_edge
  %resolution.0.i = phi i8 [ %68, %if.else.i ], [ %66, %sw.epilog.i.if.end.i_crit_edge ]
  %69 = tail call i32 @llvm.smax.i32(i32 %val, i32 -55000) #9
  %70 = tail call i32 @llvm.smin.i32(i32 %69, i32 125000) #9
  %conv.i = zext i8 %resolution.0.i to i32
  %sub.i = add nsw i32 %conv.i, -8
  %shl.i = shl i32 %70, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp12.i = icmp sgt i32 %shl.i, 0
  %cond25.in.v.i = select i1 %cmp12.i, i32 500, i32 -500
  %cond25.in.i = add i32 %cond25.in.v.i, %shl.i
  %cond25.i = sdiv i32 %cond25.in.i, 1000
  %sub27.i = sub nsw i32 16, %conv.i
  %shl28.i = shl i32 %cond25.i, %sub27.i
  %regmap.i = getelementptr inbounds %struct.lm75_data, ptr %61, i32 0, i32 1
  %71 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i, align 4
  %conv30.i = and i32 %shl28.i, 65535
  %call31.i = tail call i32 @regmap_write(ptr noundef %72, i32 noundef %reg.0.i, i32 noundef %conv30.i) #9
  br label %return

return:                                           ; preds = %if.end.i, %sw.bb1.return_crit_edge, %lm75_update_interval.exit.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %retval.0.i.i, %lm75_update_interval.exit.i ], [ -22, %sw.bb.return_crit_edge ], [ %call31.i, %if.end.i ], [ -22, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm75_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm75_suspend.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm75_suspend, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !72

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm75_suspend.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call) #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = trunc i32 %call to i8
  %conv = or i8 %0, 1
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %if.then6 ], [ %call, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm75_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm75_resume.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm75_resume, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !72

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm75_resume.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call) #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = trunc i32 %call to i8
  %conv = and i8 %0, -2
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %if.then6 ], [ %call, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_lm75__299_940_lm75_driver_init6, !1, !"__initcall__kmod_lm75__299_940_lm75_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm75.c", i32 940, i32 1}
!2 = !{ptr @__exitcall_lm75_driver_exit, !1, !"__exitcall_lm75_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author300, !4, !"__UNIQUE_ID_author300", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm75.c", i32 942, i32 1}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lm75.c", i32 943, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lm75.c", i32 944, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm75.c", i32 930, i32 11}
!12 = !{ptr @lm75_driver, !13, !"lm75_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm75.c", i32 927, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm75.c", i32 588, i32 37}
!16 = !{ptr @lm75_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/lm75.c", i32 592, i32 17}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/lm75.c", i32 609, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lm75_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @lm75_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/lm75.c", i32 620, i32 3}
!29 = !{ptr @lm75_probe.__UNIQUE_ID_ddebug296, !28, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/lm75.c", i32 641, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @lm75_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @lm75_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @lm75_regmap_config, !36, !"lm75_regmap_config", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/lm75.c", i32 535, i32 35}
!37 = !{ptr @device_params, !38, !"device_params", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/lm75.c", i32 125, i32 33}
!39 = !{ptr @lm75_chip_info, !40, !"lm75_chip_info", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/lm75.c", i32 520, i32 37}
!41 = !{ptr @lm75_hwmon_ops, !42, !"lm75_hwmon_ops", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/lm75.c", i32 514, i32 31}
!43 = !{ptr @lm75_sample_set_masks, !44, !"lm75_sample_set_masks", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/lm75.c", i32 117, i32 17}
!45 = !{ptr @lm75_info, !46, !"lm75_info", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/lm75.c", i32 506, i32 41}
!47 = !{ptr @lm75_of_match, !48, !"lm75_of_match", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/lm75.c", i32 678, i32 49}
!49 = !{ptr @lm75_dev_pm_ops, !50, !"lm75_dev_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/lm75.c", i32 918, i32 32}
!51 = !{ptr @.str.42, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/lm75.c", i32 895, i32 3}
!53 = !{ptr @lm75_suspend.__UNIQUE_ID_ddebug297, !52, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!54 = !{ptr @.str.43, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/lm75.c", i32 910, i32 3}
!56 = !{ptr @lm75_resume.__UNIQUE_ID_ddebug298, !55, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!57 = !{ptr @lm75_ids, !58, !"lm75_ids", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/lm75.c", i32 646, i32 35}
!59 = !{ptr @.str.44, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/lm75.c", i32 882, i32 33}
!61 = !{ptr @normal_i2c, !62, !"normal_i2c", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/lm75.c", i32 92, i32 29}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148975207, i64 2148975212, i64 2148975225, i64 2148975269, i64 2148975303, i64 2148975324}
!73 = !{!"auto-init"}
