; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-is31fl319x.c_pt.bc'
source_filename = "../drivers/leds/leds-is31fl319x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.reg_default = type { i32, i32 }
%struct.is31fl319x_chipdef = type { i32 }
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
%struct.is31fl319x_chip = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, [9 x %struct.is31fl319x_led] }
%struct.is31fl319x_led = type { ptr, %struct.led_classdev, i32, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_is31fl319x__297_450_is31fl319x_driver_init6 = internal global ptr @is31fl319x_driver_init, section ".initcall6.init", align 4
@is31fl319x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @is31fl319x_probe, ptr @is31fl319x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_is31fl319x_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @is31fl319x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_is31fl319x_driver_exit = internal global ptr @is31fl319x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [64 x i8] c"leds_is31fl319x.author=H. Nikolaus Schaller <hns@goldelico.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [64 x i8] c"leds_is31fl319x.author=Andrey Utkin <andrey_utkin@fastmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [50 x i8] c"leds_is31fl319x.description=IS31FL319X LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [50 x i8] c"leds_is31fl319x.file=drivers/leds/leds-is31fl319x\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [31 x i8] c"leds_is31fl319x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"leds-is31fl319x\00", [16 x i8] zeroinitializer }, align 32
@of_is31fl319x_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"issi,is31fl3190\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3190_cdef }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"issi,is31fl3191\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3190_cdef }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"issi,is31fl3193\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3193_cdef }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"issi,is31fl3196\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3196_cdef }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"issi,is31fl3199\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3199_cdef }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"si-en,sn3199\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3199_cdef }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@is31fl319x_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"is31fl3190\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"is31fl3191\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"is31fl3193\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"is31fl3196\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"is31fl3199\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sn3199\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@is31fl319x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&is31->lock\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@is31fl319x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @is31fl319x_readable_reg, ptr @is31fl319x_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 256, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @is31fl319x_reg_defaults, i32 11, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"leds_is31fl319x:364:(&regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@is31fl319x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 366, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"is31fl319x_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/leds/leds-is31fl319x.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@is31fl319x_probe._entry_ptr = internal global ptr @is31fl319x_probe._entry, section ".printk_index", align 4
@is31fl319x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 377, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"no response from chip write: err = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@is31fl319x_probe._entry_ptr.10 = internal global ptr @is31fl319x_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@is31fl319x_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 217, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get shutdown gpio: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"is31fl319x_parse_dt\00", [44 x i8] zeroinitializer }, align 32
@is31fl319x_parse_dt._entry_ptr = internal global ptr @is31fl319x_parse_dt._entry, section ".printk_index", align 4
@is31fl319x_parse_dt.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.13, ptr @.str.5, ptr @.str.15, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"leds_is31fl319x\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"probing with %d leds defined in DT\0A\00", [60 x i8] zeroinitializer }, align 32
@is31fl319x_parse_dt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.5, i32 229, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Number of leds defined must be between 1 and %u\0A\00", [47 x i8] zeroinitializer }, align 32
@is31fl319x_parse_dt._entry_ptr.18 = internal global ptr @is31fl319x_parse_dt._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@is31fl319x_parse_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.5, i32 239, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read led 'reg' property\0A\00", [61 x i8] zeroinitializer }, align 32
@is31fl319x_parse_dt._entry_ptr.22 = internal global ptr @is31fl319x_parse_dt._entry.20, section ".printk_index", align 4
@is31fl319x_parse_dt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.5, i32 244, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid led reg %u\0A\00", [44 x i8] zeroinitializer }, align 32
@is31fl319x_parse_dt._entry_ptr.25 = internal global ptr @is31fl319x_parse_dt._entry.23, section ".printk_index", align 4
@is31fl319x_parse_dt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.5, i32 252, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"led %u is already configured\0A\00", [34 x i8] zeroinitializer }, align 32
@is31fl319x_parse_dt._entry_ptr.28 = internal global ptr @is31fl319x_parse_dt._entry.26, section ".printk_index", align 4
@is31fl319x_parse_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.5, i32 259, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"led %u DT parsing failed\0A\00", [38 x i8] zeroinitializer }, align 32
@is31fl319x_parse_dt._entry_ptr.31 = internal global ptr @is31fl319x_parse_dt._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio-gain-db\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"linux,default-trigger\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@is31fl319x_reg_defaults = internal constant { [11 x %struct.reg_default], [40 x i8] } { [11 x %struct.reg_default] [%struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }], [40 x i8] zeroinitializer }, align 32
@is31fl319x_brightness_set.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.36, ptr @.str.5, ptr @.str.37, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"is31fl319x_brightness_set\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %d: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@is31fl319x_brightness_set.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.36, ptr @.str.5, ptr @.str.38, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s read %d: ret=%d: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@is31fl319x_brightness_set.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.36, ptr @.str.5, ptr @.str.39, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"power up %02x %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@is31fl319x_brightness_set.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.36, ptr @.str.5, ptr @.str.40, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power down\0A\00", [20 x i8] zeroinitializer }, align 32
@is31fl3190_cdef = internal constant { %struct.is31fl319x_chipdef, [28 x i8] } { %struct.is31fl319x_chipdef { i32 1 }, [28 x i8] zeroinitializer }, align 32
@is31fl3193_cdef = internal constant { %struct.is31fl319x_chipdef, [28 x i8] } { %struct.is31fl319x_chipdef { i32 3 }, [28 x i8] zeroinitializer }, align 32
@is31fl3196_cdef = internal constant { %struct.is31fl319x_chipdef, [28 x i8] } { %struct.is31fl319x_chipdef { i32 6 }, [28 x i8] zeroinitializer }, align 32
@is31fl3199_cdef = internal constant { %struct.is31fl319x_chipdef, [28 x i8] } { %struct.is31fl319x_chipdef { i32 9 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 38, i64 255]
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"is31fl319x_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 440, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 442, i32 21 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"of_is31fl319x_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 99, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"is31fl319x_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 429, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 351, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 310, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 364, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 366, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 376, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 213, i32 7 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 217, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 225, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 228, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 237, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 239, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 244, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 252, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 259, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 267, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 181, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 184, i32 39 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 190, i32 36 }
@___asan_gen_.155 = private unnamed_addr constant [24 x i8] c"is31fl319x_reg_defaults\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 296, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 121, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 141, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 154, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 163, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"is31fl3190_cdef\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 83, i32 40 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"is31fl3193_cdef\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 87, i32 40 }
@___asan_gen_.179 = private unnamed_addr constant [16 x i8] c"is31fl3196_cdef\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 91, i32 40 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"is31fl3199_cdef\00", align 1
@___asan_gen_.183 = private constant [34 x i8] c"../drivers/leds/leds-is31fl319x.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 95, i32 40 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_is31fl319x_driver_exit, ptr @__initcall__kmod_leds_is31fl319x__297_450_is31fl319x_driver_init6, ptr @is31fl319x_driver_exit, ptr @is31fl319x_parse_dt._entry, ptr @is31fl319x_parse_dt._entry.16, ptr @is31fl319x_parse_dt._entry.20, ptr @is31fl319x_parse_dt._entry.23, ptr @is31fl319x_parse_dt._entry.26, ptr @is31fl319x_parse_dt._entry.29, ptr @is31fl319x_parse_dt._entry_ptr, ptr @is31fl319x_parse_dt._entry_ptr.18, ptr @is31fl319x_parse_dt._entry_ptr.22, ptr @is31fl319x_parse_dt._entry_ptr.25, ptr @is31fl319x_parse_dt._entry_ptr.28, ptr @is31fl319x_parse_dt._entry_ptr.31, ptr @is31fl319x_probe._entry, ptr @is31fl319x_probe._entry.8, ptr @is31fl319x_probe._entry_ptr, ptr @is31fl319x_probe._entry_ptr.10, ptr @is31fl319x_driver, ptr @.str, ptr @of_is31fl319x_match, ptr @is31fl319x_id, ptr @is31fl319x_probe.__key, ptr @.str.1, ptr @is31fl319x_probe._key, ptr @regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @is31fl319x_reg_defaults, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @is31fl3190_cdef, ptr @is31fl3193_cdef, ptr @is31fl3196_cdef, ptr @is31fl3199_cdef], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_is31fl319x_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_parse_dt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_parse_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_parse_dt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_parse_dt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_parse_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl319x_reg_defaults to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl3190_cdef to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl3193_cdef to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl3196_cdef to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl3199_cdef to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @is31fl319x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @is31fl319x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @is31fl319x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @is31fl319x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is31fl319x_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup75

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 3820, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup75_crit_edge, label %do.body

if.end.cleanup75_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup75

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @is31fl319x_probe.__key) #7
  %call8 = tail call fastcc i32 @is31fl319x_parse_dt(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.body.free_mutex_crit_edge

do.body.free_mutex_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mutex

if.end11:                                         ; preds = %do.body
  %shutdown_gpio = getelementptr inbounds %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %shutdown_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shutdown_gpio, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end11.if.end19_crit_edge, label %if.then13

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %7, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  %13 = ptrtoint ptr %shutdown_gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shutdown_gpio, align 4
  %call18 = tail call i32 @gpiod_direction_output(ptr noundef %14, i32 noundef 1) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end11.if.end19_crit_edge
  %client20 = getelementptr inbounds %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %client20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %client, ptr %client20, align 4
  %call21 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @regmap_config, ptr noundef nonnull @is31fl319x_probe._key, ptr noundef nonnull @.str.2) #7
  %regmap = getelementptr inbounds %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end31

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %free_mutex

if.end31:                                         ; preds = %if.end19
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %call21, i32 noundef 255, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.end37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end31
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp40133 = icmp sgt i32 %24, 0
  br i1 %cmp40133, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call33) #10
  br label %free_mutex

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %aggregated_led_microamp.0136 = phi i32 [ %aggregated_led_microamp.1, %for.inc.for.body_crit_edge ], [ 40000, %for.cond.preheader.for.body_crit_edge ]
  %i.0134 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %configured = getelementptr %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 6, i32 %i.0134, i32 3
  %25 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %configured, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool41.not = icmp eq i8 %26, 0
  br i1 %tobool41.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %max_microamp = getelementptr %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 6, i32 %i.0134, i32 2
  %27 = ptrtoint ptr %max_microamp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_microamp, align 4
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %aggregated_led_microamp.0136)
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %aggregated_led_microamp.1 = phi i32 [ %aggregated_led_microamp.0136, %for.body.for.inc_crit_edge ], [ %29, %land.lhs.true ]
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %24
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %aggregated_led_microamp.0.lcssa = phi i32 [ 40000, %for.cond.preheader.for.end_crit_edge ], [ %aggregated_led_microamp.1, %for.inc.for.end_crit_edge ]
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %div.i = udiv i32 %aggregated_led_microamp.0.lcssa, 5000
  %.neg.i = mul nuw nsw i32 %div.i, 112
  %and.i126 = add nuw nsw i32 %.neg.i, 64
  %shl.i = and i32 %and.i126, 112
  %audio_gain_db = getelementptr inbounds %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %audio_gain_db to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %audio_gain_db, align 4
  %div.i127 = udiv i32 %33, 3
  %or = or i32 %div.i127, %shl.i
  %call53 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 4, i32 noundef %or) #7
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp57137 = icmp sgt i32 %37, 0
  br i1 %cmp57137, label %for.end.for.body58_crit_edge, label %for.end.cleanup75_crit_edge

for.end.cleanup75_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup75

for.end.for.body58_crit_edge:                     ; preds = %for.end
  br label %for.body58

for.body58:                                       ; preds = %for.inc71.for.body58_crit_edge, %for.end.for.body58_crit_edge
  %i.1138 = phi i32 [ %inc72, %for.inc71.for.body58_crit_edge ], [ 0, %for.end.for.body58_crit_edge ]
  %configured61 = getelementptr %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 6, i32 %i.1138, i32 3
  %38 = ptrtoint ptr %configured61 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %configured61, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool62.not = icmp eq i8 %39, 0
  br i1 %tobool62.not, label %for.body58.for.inc71_crit_edge, label %if.end64

for.body58.for.inc71_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc71

if.end64:                                         ; preds = %for.body58
  %arrayidx60 = getelementptr %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 6, i32 %i.1138
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %arrayidx60, align 4
  %cdev = getelementptr %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 6, i32 %i.1138, i32 1
  %brightness_set_blocking = getelementptr %struct.is31fl319x_chip, ptr %call.i, i32 0, i32 6, i32 %i.1138, i32 1, i32 6
  %41 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @is31fl319x_brightness_set, ptr %brightness_set_blocking, align 4
  %call.i128 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %cdev, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp68 = icmp slt i32 %call.i128, 0
  br i1 %cmp68, label %if.end64.free_mutex_crit_edge, label %if.end64.for.inc71_crit_edge

if.end64.for.inc71_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc71

if.end64.free_mutex_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mutex

for.inc71:                                        ; preds = %if.end64.for.inc71_crit_edge, %for.body58.for.inc71_crit_edge
  %inc72 = add nuw nsw i32 %i.1138, 1
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %cmp57 = icmp slt i32 %inc72, %45
  br i1 %cmp57, label %for.inc71.for.body58_crit_edge, label %for.inc71.cleanup75_crit_edge

for.inc71.cleanup75_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup75

for.inc71.for.body58_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body58

free_mutex:                                       ; preds = %if.end64.free_mutex_crit_edge, %do.end37, %do.end27, %do.body.free_mutex_crit_edge
  %err.2 = phi i32 [ %call8, %do.body.free_mutex_crit_edge ], [ %19, %do.end27 ], [ -5, %do.end37 ], [ %call.i128, %if.end64.free_mutex_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %lock) #7
  br label %cleanup75

cleanup75:                                        ; preds = %free_mutex, %for.inc71.cleanup75_crit_edge, %for.end.cleanup75_crit_edge, %if.end.cleanup75_crit_edge, %entry.cleanup75_crit_edge
  %retval.0 = phi i32 [ %err.2, %free_mutex ], [ -5, %entry.cleanup75_crit_edge ], [ -12, %if.end.cleanup75_crit_edge ], [ 0, %for.end.cleanup75_crit_edge ], [ 0, %for.inc71.cleanup75_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is31fl319x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.is31fl319x_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is31fl319x_parse_dt(ptr noundef %dev, ptr noundef %is31) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.cleanup72_crit_edge, label %dev_of_node.exit

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup72

dev_of_node.exit:                                 ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup72_crit_edge, label %if.end

dev_of_node.exit.cleanup72_crit_edge:             ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup72

if.end:                                           ; preds = %dev_of_node.exit
  %call1 = tail call ptr @devm_gpiod_get_optional(ptr noundef nonnull %dev, ptr noundef nonnull @.str.11, i32 noundef 7) #7
  %shutdown_gpio = getelementptr inbounds %struct.is31fl319x_chip, ptr %is31, i32 0, i32 2
  %2 = ptrtoint ptr %shutdown_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %shutdown_gpio, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.12, i32 noundef %3) #10
  br label %cleanup72

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @device_get_match_data(ptr noundef nonnull %dev) #7
  %4 = ptrtoint ptr %is31 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %is31, align 4
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end7.of_get_available_child_count.exit_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.of_get_available_child_count.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_available_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end7.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_available_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.of_get_available_child_count.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_available_child_count.exit

of_get_available_child_count.exit:                ; preds = %for.body.i.of_get_available_child_count.exit_crit_edge, %if.end7.of_get_available_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end7.of_get_available_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_available_child_count.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl319x_parse_dt.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl319x_parse_dt, %if.then15)) #7
          to label %do.end18 [label %if.then15], !srcloc !114

if.then15:                                        ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl319x_parse_dt.__UNIQUE_ID_ddebug294, ptr noundef nonnull %dev, ptr noundef nonnull @.str.15, i32 noundef %num.0.lcssa.i) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.lcssa.i)
  %tobool19.not = icmp eq i32 %num.0.lcssa.i, 0
  br i1 %tobool19.not, label %do.end18.do.end24_crit_edge, label %lor.lhs.false

do.end18.do.end24_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

lor.lhs.false:                                    ; preds = %do.end18
  %5 = ptrtoint ptr %is31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %is31, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0.lcssa.i, i32 %8)
  %cmp = icmp sgt i32 %num.0.lcssa.i, %8
  br i1 %cmp, label %lor.lhs.false.do.end24_crit_edge, label %if.end27

lor.lhs.false.do.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.end24:                                         ; preds = %lor.lhs.false.do.end24_crit_edge, %do.end18.do.end24_crit_edge
  %9 = ptrtoint ptr %is31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %is31, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.17, i32 noundef %12) #10
  br label %cleanup72

if.end27:                                         ; preds = %lor.lhs.false
  %call28 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp29.not142 = icmp eq ptr %call28, null
  br i1 %cmp29.not142, label %if.end27.for.end_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  br label %for.body

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end27.for.body_crit_edge
  %child.0143 = phi ptr [ %call62, %for.inc.for.body_crit_edge ], [ %call28, %if.end27.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reg, align 4, !annotation !115
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.19, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool31.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.21) #10
  br label %put_child_node

if.end36:                                         ; preds = %for.body
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp37 = icmp eq i32 %15, 0
  br i1 %cmp37, label %if.end36.do.end45_crit_edge, label %lor.lhs.false38

if.end36.do.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

lor.lhs.false38:                                  ; preds = %if.end36
  %16 = ptrtoint ptr %is31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %is31, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp41 = icmp ugt i32 %15, %19
  br i1 %cmp41, label %lor.lhs.false38.do.end45_crit_edge, label %if.end46

lor.lhs.false38.do.end45_crit_edge:               ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.end45:                                         ; preds = %lor.lhs.false38.do.end45_crit_edge, %if.end36.do.end45_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.24, i32 noundef %15) #10
  br label %put_child_node

if.end46:                                         ; preds = %lor.lhs.false38
  %sub = add i32 %15, -1
  %configured = getelementptr %struct.is31fl319x_chip, ptr %is31, i32 0, i32 6, i32 %sub, i32 3
  %20 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %configured, align 4, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool47.not = icmp eq i8 %21, 0
  br i1 %tobool47.not, label %if.end52, label %do.end51

do.end51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.27, i32 noundef %15) #10
  br label %put_child_node

if.end52:                                         ; preds = %if.end46
  %cdev1.i = getelementptr %struct.is31fl319x_chip, ptr %is31, i32 0, i32 6, i32 %sub, i32 1
  %call.i118 = call i32 @of_property_read_string(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.33, ptr noundef %cdev1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool.not.i119 = icmp eq i32 %call.i118, 0
  br i1 %tobool.not.i119, label %if.end52.if.end.i121_crit_edge, label %if.then.i

if.end52.if.end.i121_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i121

if.then.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %child.0143 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %child.0143, align 4
  %24 = ptrtoint ptr %cdev1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %cdev1.i, align 4
  br label %if.end.i121

if.end.i121:                                      ; preds = %if.then.i, %if.end52.if.end.i121_crit_edge
  %default_trigger.i = getelementptr %struct.is31fl319x_chip, ptr %is31, i32 0, i32 6, i32 %sub, i32 1, i32 14
  %call4.i = call i32 @of_property_read_string(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.34, ptr noundef %default_trigger.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp.i120 = icmp sgt i32 %call4.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, -22
  %or.cond.i = or i1 %cmp.i120, %cmp5.not.i
  br i1 %or.cond.i, label %if.end7.i, label %if.end.i121.do.end58_crit_edge

if.end.i121.do.end58_crit_edge:                   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

if.end7.i:                                        ; preds = %if.end.i121
  %max_microamp.i = getelementptr %struct.is31fl319x_chip, ptr %is31, i32 0, i32 6, i32 %sub, i32 2
  %25 = ptrtoint ptr %max_microamp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 20000, ptr %max_microamp.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.35, ptr noundef %max_microamp.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end7.i.for.inc_crit_edge

if.end7.i.for.inc_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11.i:                                      ; preds = %if.end7.i
  %26 = ptrtoint ptr %max_microamp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_microamp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %27)
  %cmp13.i = icmp ult i32 %27, 5000
  br i1 %cmp13.i, label %if.then11.i.do.end58_crit_edge, label %if.end15.i

if.then11.i.do.end58_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

if.end15.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = call i32 @llvm.umin.i32(i32 %27, i32 40000) #7
  %29 = ptrtoint ptr %max_microamp.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max_microamp.i, align 4
  br label %for.inc

do.end58:                                         ; preds = %if.then11.i.do.end58_crit_edge, %if.end.i121.do.end58_crit_edge
  %retval.0.i122 = phi i32 [ %call4.i, %if.end.i121.do.end58_crit_edge ], [ -22, %if.then11.i.do.end58_crit_edge ]
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.30, i32 noundef %31) #10
  br label %put_child_node

for.inc:                                          ; preds = %if.end15.i, %if.end7.i.for.inc_crit_edge
  %32 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %configured, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  %call62 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.0143) #7
  %cmp29.not = icmp eq ptr %call62, null
  br i1 %cmp29.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end27.for.end_crit_edge
  %audio_gain_db = getelementptr inbounds %struct.is31fl319x_chip, ptr %is31, i32 0, i32 5
  %33 = ptrtoint ptr %audio_gain_db to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %audio_gain_db, align 4
  %call.i.i123 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, ptr noundef %audio_gain_db, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i123)
  %tobool65.not = icmp sgt i32 %call.i.i123, -1
  br i1 %tobool65.not, label %if.then66, label %for.end.cleanup72_crit_edge

for.end.cleanup72_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup72

if.then66:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %audio_gain_db to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %audio_gain_db, align 4
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 21)
  %37 = ptrtoint ptr %audio_gain_db to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %audio_gain_db, align 4
  br label %cleanup72

put_child_node:                                   ; preds = %do.end58, %do.end51, %do.end45, %do.end35
  %ret.0.ph = phi i32 [ %retval.0.i122, %do.end58 ], [ -22, %do.end51 ], [ -22, %do.end45 ], [ %call.i.i, %do.end35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  call void @of_node_put(ptr noundef nonnull %child.0143) #7
  br label %cleanup72

cleanup72:                                        ; preds = %put_child_node, %if.then66, %for.end.cleanup72_crit_edge, %do.end24, %if.then4, %dev_of_node.exit.cleanup72_crit_edge, %entry.cleanup72_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ -19, %do.end24 ], [ %ret.0.ph, %put_child_node ], [ -19, %dev_of_node.exit.cleanup72_crit_edge ], [ 0, %if.then66 ], [ 0, %for.end.cleanup72_crit_edge ], [ -19, %entry.cleanup72_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is31fl319x_brightness_set(ptr noundef %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  %pwm_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %leds = getelementptr inbounds %struct.is31fl319x_chip, ptr %1, i32 0, i32 6
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %leds to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 412
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl319x_brightness_set.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl319x_brightness_set, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.is31fl319x_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl319x_brightness_set.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %sub.ptr.div, i32 noundef %brightness) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.is31fl319x_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.is31fl319x_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %add = add nsw i32 %sub.ptr.div, 7
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add, i32 noundef %brightness) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end.out_crit_edge, label %for.cond.preheader

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.preheader:                               ; preds = %do.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7166 = icmp sgt i32 %9, 0
  br i1 %cmp7166, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %client24 = getelementptr inbounds %struct.is31fl319x_chip, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end55.for.body_crit_edge, %for.body.lr.ph
  %i.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end55.for.body_crit_edge ]
  %ctrl1.0168 = phi i8 [ 0, %for.body.lr.ph ], [ %ctrl1.1, %if.end55.for.body_crit_edge ]
  %ctrl2.0167 = phi i8 [ 0, %for.body.lr.ph ], [ %ctrl2.1, %if.end55.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwm_value) #7
  %10 = ptrtoint ptr %pwm_value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %pwm_value, align 4, !annotation !115
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %add9 = add nuw i32 %i.0169, 7
  %call10 = call i32 @regmap_read(ptr noundef %12, i32 noundef %add9, ptr noundef nonnull %pwm_value) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl319x_brightness_set.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl319x_brightness_set, %if.then23)) #7
          to label %do.end28 [label %if.then23], !srcloc !114

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %client24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client24, align 4
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %pwm_value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pwm_value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl319x_brightness_set.__UNIQUE_ID_ddebug289, ptr noundef %dev25, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %i.0169, i32 noundef %call10, i32 noundef %16) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp29 = icmp sgt i32 %call10, -1
  br i1 %cmp29, label %land.rhs, label %do.end28.land.end_crit_edge

do.end28.land.end_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %pwm_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pwm_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp30 = icmp ne i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end28.land.end_crit_edge
  %19 = phi i1 [ false, %do.end28.land.end_crit_edge ], [ %cmp30, %land.rhs ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0169)
  %cmp32 = icmp ult i32 %i.0169, 3
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i1 %19 to i32
  %shl = shl nuw nsw i32 %conv, %i.0169
  %20 = trunc i32 %shl to i8
  %conv36 = or i8 %ctrl1.0168, %20
  br label %if.end55

if.else:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0169)
  %cmp37 = icmp ult i32 %i.0169, 6
  %conv41 = zext i1 %19 to i32
  br i1 %cmp37, label %if.then39, label %if.else47

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add42 = add nuw nsw i32 %i.0169, 1
  %shl43 = shl nuw nsw i32 %conv41, %add42
  %21 = trunc i32 %shl43 to i8
  %conv46 = or i8 %ctrl1.0168, %21
  br label %if.end55

if.else47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %i.0169, -6
  %shl50 = shl nuw i32 %conv41, %sub
  %22 = trunc i32 %shl50 to i8
  %conv53 = or i8 %ctrl2.0167, %22
  br label %if.end55

if.end55:                                         ; preds = %if.else47, %if.then39, %if.then33
  %ctrl2.1 = phi i8 [ %ctrl2.0167, %if.then33 ], [ %ctrl2.0167, %if.then39 ], [ %conv53, %if.else47 ]
  %ctrl1.1 = phi i8 [ %conv36, %if.then33 ], [ %conv46, %if.then39 ], [ %ctrl1.0168, %if.else47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_value) #7
  %inc = add nuw nsw i32 %i.0169, 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %cmp7 = icmp slt i32 %inc, %26
  br i1 %cmp7, label %if.end55.for.body_crit_edge, label %if.end55.for.end_crit_edge

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end55.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ctrl2.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ctrl2.1, %if.end55.for.end_crit_edge ]
  %ctrl1.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ctrl1.1, %if.end55.for.end_crit_edge ]
  %conv56 = zext i8 %ctrl1.0.lcssa to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ctrl1.0.lcssa)
  %cmp57.not = icmp eq i8 %ctrl1.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ctrl2.0.lcssa)
  %cmp60.not = icmp eq i8 %ctrl2.0.lcssa, 0
  %or.cond = select i1 %cmp57.not, i1 %cmp60.not, i1 false
  br i1 %or.cond, label %do.body94, label %do.body63

do.body63:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl319x_brightness_set.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl319x_brightness_set, %if.then75)) #7
          to label %do.end82 [label %if.then75], !srcloc !114

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %client76 = getelementptr inbounds %struct.is31fl319x_chip, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %client76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client76, align 4
  %dev77 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %conv79 = zext i8 %ctrl2.0.lcssa to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl319x_brightness_set.__UNIQUE_ID_ddebug290, ptr noundef %dev77, ptr noundef nonnull @.str.39, i32 noundef %conv56, i32 noundef %conv79) #7
  br label %do.end82

do.end82:                                         ; preds = %if.then75, %do.body63
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call85 = call i32 @regmap_write(ptr noundef %30, i32 noundef 1, i32 noundef %conv56) #7
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %conv87 = zext i8 %ctrl2.0.lcssa to i32
  %call88 = call i32 @regmap_write(ptr noundef %32, i32 noundef 2, i32 noundef %conv87) #7
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call90 = call i32 @regmap_write(ptr noundef %34, i32 noundef 16, i32 noundef 0) #7
  br label %out.sink.split

do.body94:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl319x_brightness_set.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl319x_brightness_set, %if.then106)) #7
          to label %out.sink.split [label %if.then106], !srcloc !114

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %client107 = getelementptr inbounds %struct.is31fl319x_chip, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %client107 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client107, align 4
  %dev108 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl319x_brightness_set.__UNIQUE_ID_ddebug291, ptr noundef %dev108, ptr noundef nonnull @.str.40) #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then106, %do.body94, %do.end82
  %.sink172 = phi i32 [ 1, %do.end82 ], [ 0, %do.body94 ], [ 0, %if.then106 ]
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call92 = call i32 @regmap_write(ptr noundef %38, i32 noundef 0, i32 noundef %.sink172) #7
  br label %out

out:                                              ; preds = %out.sink.split, %do.end.out_crit_edge
  %ret.0 = phi i32 [ %call4, %do.end.out_crit_edge ], [ %call92, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is31fl319x_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is31fl319x_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 16, label %entry.return_crit_edge
    i32 38, label %entry.return_crit_edge1
    i32 255, label %entry.return_crit_edge2
  ]

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !96, !98, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_leds_is31fl319x__297_450_is31fl319x_driver_init6, !1, !"__initcall__kmod_leds_is31fl319x__297_450_is31fl319x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-is31fl319x.c", i32 450, i32 1}
!2 = !{ptr @__exitcall_is31fl319x_driver_exit, !1, !"__exitcall_is31fl319x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-is31fl319x.c", i32 452, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-is31fl319x.c", i32 453, i32 1}
!7 = !{ptr @__UNIQUE_ID_description300, !8, !"__UNIQUE_ID_description300", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-is31fl319x.c", i32 454, i32 1}
!9 = !{ptr @__UNIQUE_ID_file301, !10, !"__UNIQUE_ID_file301", i1 false, i1 false}
!10 = !{!"../drivers/leds/leds-is31fl319x.c", i32 455, i32 1}
!11 = !{ptr @__UNIQUE_ID_license302, !10, !"__UNIQUE_ID_license302", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-is31fl319x.c", i32 442, i32 21}
!14 = !{ptr @is31fl319x_driver, !15, !"is31fl319x_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-is31fl319x.c", i32 440, i32 26}
!16 = !{ptr @is31fl319x_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-is31fl319x.c", i32 351, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @is31fl319x_probe._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/leds/leds-is31fl319x.c", i32 364, i32 17}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-is31fl319x.c", i32 366, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @is31fl319x_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @is31fl319x_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-is31fl319x.c", i32 376, i32 3}
!32 = !{ptr @is31fl319x_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @is31fl319x_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-is31fl319x.c", i32 213, i32 7}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-is31fl319x.c", i32 217, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @is31fl319x_parse_dt._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @is31fl319x_parse_dt._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-is31fl319x.c", i32 225, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @is31fl319x_parse_dt.__UNIQUE_ID_ddebug294, !42, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-is31fl319x.c", i32 228, i32 3}
!47 = !{ptr @is31fl319x_parse_dt._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @is31fl319x_parse_dt._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-is31fl319x.c", i32 237, i32 37}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-is31fl319x.c", i32 239, i32 4}
!53 = !{ptr @is31fl319x_parse_dt._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @is31fl319x_parse_dt._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/leds/leds-is31fl319x.c", i32 244, i32 4}
!57 = !{ptr @is31fl319x_parse_dt._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @is31fl319x_parse_dt._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-is31fl319x.c", i32 252, i32 4}
!61 = !{ptr @is31fl319x_parse_dt._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @is31fl319x_parse_dt._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/leds/leds-is31fl319x.c", i32 259, i32 4}
!65 = !{ptr @is31fl319x_parse_dt._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @is31fl319x_parse_dt._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-is31fl319x.c", i32 267, i32 33}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/leds/leds-is31fl319x.c", i32 181, i32 37}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/leds/leds-is31fl319x.c", i32 184, i32 39}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/leds/leds-is31fl319x.c", i32 190, i32 36}
!75 = !{ptr @regmap_config, !76, !"regmap_config", i1 false, i1 false}
!76 = !{!"../drivers/leds/leds-is31fl319x.c", i32 310, i32 29}
!77 = !{ptr @is31fl319x_reg_defaults, !78, !"is31fl319x_reg_defaults", i1 false, i1 false}
!78 = !{!"../drivers/leds/leds-is31fl319x.c", i32 296, i32 33}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/leds/leds-is31fl319x.c", i32 121, i32 2}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @is31fl319x_brightness_set.__UNIQUE_ID_ddebug288, !80, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/leds/leds-is31fl319x.c", i32 141, i32 3}
!85 = !{ptr @is31fl319x_brightness_set.__UNIQUE_ID_ddebug289, !84, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/leds/leds-is31fl319x.c", i32 154, i32 3}
!88 = !{ptr @is31fl319x_brightness_set.__UNIQUE_ID_ddebug290, !87, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/leds/leds-is31fl319x.c", i32 163, i32 3}
!91 = !{ptr @is31fl319x_brightness_set.__UNIQUE_ID_ddebug291, !90, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!92 = !{ptr @of_is31fl319x_match, !93, !"of_is31fl319x_match", i1 false, i1 false}
!93 = !{!"../drivers/leds/leds-is31fl319x.c", i32 99, i32 34}
!94 = !{ptr @is31fl3190_cdef, !95, !"is31fl3190_cdef", i1 false, i1 false}
!95 = !{!"../drivers/leds/leds-is31fl319x.c", i32 83, i32 40}
!96 = !{ptr @is31fl3193_cdef, !97, !"is31fl3193_cdef", i1 false, i1 false}
!97 = !{!"../drivers/leds/leds-is31fl319x.c", i32 87, i32 40}
!98 = !{ptr @is31fl3196_cdef, !99, !"is31fl3196_cdef", i1 false, i1 false}
!99 = !{!"../drivers/leds/leds-is31fl319x.c", i32 91, i32 40}
!100 = !{ptr @is31fl3199_cdef, !101, !"is31fl3199_cdef", i1 false, i1 false}
!101 = !{!"../drivers/leds/leds-is31fl319x.c", i32 95, i32 40}
!102 = !{ptr @is31fl319x_id, !103, !"is31fl319x_id", i1 false, i1 false}
!103 = !{!"../drivers/leds/leds-is31fl319x.c", i32 429, i32 35}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i8 0, i8 2}
!114 = !{i64 2148997450, i64 2148997455, i64 2148997468, i64 2148997512, i64 2148997546, i64 2148997567}
!115 = !{!"auto-init"}
