; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rs5c372.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rs5c372.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rs5c372 = type { ptr, ptr, i32, i8, [17 x i8], ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_rs5c372__300_929_rs5c372_driver_init6 = internal global ptr @rs5c372_driver_init, section ".initcall6.init", align 4
@rs5c372_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rs5c372_probe, ptr @rs5c372_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rs5c372_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rs5c372_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rs5c372_driver_exit = internal global ptr @rs5c372_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [137 x i8] c"rtc_rs5c372.author=Pavel Mironchik <pmironchik@optifacio.net>, Alessandro Zummo <a.zummo@towertech.it>, Paul Mundt <lethal@linux-sh.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [49 x i8] c"rtc_rs5c372.description=Ricoh RS5C372 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [41 x i8] c"rtc_rs5c372.file=drivers/rtc/rtc-rs5c372\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [24 x i8] c"rtc_rs5c372.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-rs5c372\00", [20 x i8] zeroinitializer }, align 32
@rs5c372_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,r2025sd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,r2221tl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rs5c372a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rs5c372b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rv5c386\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ricoh,rv5c387a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@rs5c372_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"r2025sd\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"r2221tl\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"rs5c372a\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"rs5c372b\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"rv5c386\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"rv5c387a\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@rs5c372_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_rs5c372\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rs5c372_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-rs5c372.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rs5c372_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 864, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown RTC type\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rs5c372_probe._entry_ptr = internal global ptr @rs5c372_probe._entry, section ".printk_index", align 4
@rs5c372_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 876, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"setup error\0A\00", [19 x i8] zeroinitializer }, align 32
@rs5c372_probe._entry_ptr.10 = internal global ptr @rs5c372_probe._entry.8, section ".printk_index", align 4
@rs5c372_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 891, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s found, %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rs5c372_probe._entry_ptr.14 = internal global ptr @rs5c372_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r2025sd\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r2221tl\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rs5c372a\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rs5c372b\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rv5c386\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rv5c387a\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"chip\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"24hr\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"am/pm\00", [26 x i8] zeroinitializer }, align 32
@rs5c372_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @rs5c372_ioctl, ptr @rs5c372_rtc_read_time, ptr @rs5c372_rtc_set_time, ptr @rs5c_read_alarm, ptr @rs5c_set_alarm, ptr @rs5c372_rtc_proc, ptr @rs5c_rtc_alarm_irq_enable, ptr @rs5c372_read_offset, ptr @rs5c372_set_offset, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rs5c_get_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 162, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't read registers\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rs5c_get_regs\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rs5c_get_regs._entry_ptr = internal global ptr @rs5c_get_regs._entry, section ".printk_index", align 4
@rs5c_get_regs._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 167, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@rs5c_get_regs._entry_ptr.28 = internal global ptr @rs5c_get_regs._entry.27, section ".printk_index", align 4
@rs5c_get_regs.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.3, ptr @.str.29, i8 0, i8 44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%3ph (%02x) %3ph (%02x), %3ph, %3ph; %02x %02x\0A\00", [48 x i8] zeroinitializer }, align 32
@rs5c372_ioctl.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rs5c372_ioctl\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: cmd=%x\0A\00", [20 x i8] zeroinitializer }, align 32
@rs5c372_ioctl.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.32, i8 0, i8 -123, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: write error in line %i\0A\00", [36 x i8] zeroinitializer }, align 32
@rs5c372_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 226, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"rtc oscillator interruption detected. Please reset the rtc clock.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rs5c372_rtc_read_time\00", [42 x i8] zeroinitializer }, align 32
@rs5c372_rtc_read_time._entry_ptr = internal global ptr @rs5c372_rtc_read_time._entry, section ".printk_index", align 4
@rs5c372_rtc_read_time._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 232, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@rs5c372_rtc_read_time._entry_ptr.36 = internal global ptr @rs5c372_rtc_read_time._entry.35, section ".printk_index", align 4
@rs5c372_rtc_read_time.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.37, i8 0, i8 63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: tm is secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@rs5c372_rtc_set_time.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rs5c372_rtc_set_time\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: tm is secs=%d, mins=%d, hours=%d mday=%d, mon=%d, year=%d, wday=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@rs5c372_rtc_set_time.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.32, i8 0, i8 71, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@rs5c372_rtc_set_time.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.32, i8 0, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@rs5c_set_alarm.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rs5c_set_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't disable alarm\0A\00", [43 x i8] zeroinitializer }, align 32
@rs5c_set_alarm.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.3, ptr @.str.42, i8 0, i8 114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't set alarm time\0A\00", [42 x i8] zeroinitializer }, align 32
@rs5c_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.3, i32 467, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't enable alarm\0A\00", [44 x i8] zeroinitializer }, align 32
@rs5c_set_alarm._entry_ptr = internal global ptr @rs5c_set_alarm._entry, section ".printk_index", align 4
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"crystal\09\09: %d.%03d KHz\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"trim\09\09: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@rs5c372_get_trim.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rs5c372_get_trim\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: raw trim=%x\0A\00", [47 x i8] zeroinitializer }, align 32
@rs5c_rtc_alarm_irq_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 380, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't update alarm\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rs5c_rtc_alarm_irq_enable\00", [38 x i8] zeroinitializer }, align 32
@rs5c_rtc_alarm_irq_enable._entry_ptr = internal global ptr @rs5c_rtc_alarm_irq_enable._entry, section ".printk_index", align 4
@rs5c372_set_offset.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 -93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rs5c372_set_offset\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"write 0x%x for offset %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@rs5c372_set_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 655, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to write 0x%x to reg %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rs5c372_set_offset._entry_ptr = internal global ptr @rs5c372_set_offset._entry, section ".printk_index", align 4
@dev_attr_trim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rs5c372_sysfs_show_trim, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_osc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rs5c372_sysfs_show_osc, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trim\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d.%03d KHz\0A\00", [19 x i8] zeroinitializer }, align 32
@switch.table.rs5c372_probe = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 28692, i64 2147774483]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"rs5c372_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 919, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 921, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"rs5c372_of_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 88, i32 49 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"rs5c372_id\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 77, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 801, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 864, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 876, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 880, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"rs5c372_rtc_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 664, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 162, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 167, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 172, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 502, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 533, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 226, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 232, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 250, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 267, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 443, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 457, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 467, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 482, i32 19 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 484, i32 19 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 337, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 380, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 652, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 655, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [14 x i8] c"dev_attr_trim\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"dev_attr_osc\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 689, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 687, i32 22 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 702, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [29 x i8] c"../drivers/rtc/rtc-rs5c372.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 700, i32 22 }
@___asan_gen_.259 = private unnamed_addr constant [27 x i8] c"switch.table.rs5c372_probe\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_rs5c372_driver_exit, ptr @__initcall__kmod_rtc_rs5c372__300_929_rs5c372_driver_init6, ptr @rs5c372_driver_exit, ptr @rs5c372_probe._entry, ptr @rs5c372_probe._entry.11, ptr @rs5c372_probe._entry.8, ptr @rs5c372_probe._entry_ptr, ptr @rs5c372_probe._entry_ptr.10, ptr @rs5c372_probe._entry_ptr.14, ptr @rs5c372_rtc_read_time._entry, ptr @rs5c372_rtc_read_time._entry.35, ptr @rs5c372_rtc_read_time._entry_ptr, ptr @rs5c372_rtc_read_time._entry_ptr.36, ptr @rs5c372_set_offset._entry, ptr @rs5c372_set_offset._entry_ptr, ptr @rs5c_get_regs._entry, ptr @rs5c_get_regs._entry.27, ptr @rs5c_get_regs._entry_ptr, ptr @rs5c_get_regs._entry_ptr.28, ptr @rs5c_rtc_alarm_irq_enable._entry, ptr @rs5c_rtc_alarm_irq_enable._entry_ptr, ptr @rs5c_set_alarm._entry, ptr @rs5c_set_alarm._entry_ptr, ptr @rs5c372_driver, ptr @.str, ptr @rs5c372_of_match, ptr @rs5c372_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rs5c372_rtc_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @dev_attr_trim, ptr @dev_attr_osc, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @switch.table.rs5c372_probe], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c372_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c372_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c372_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c372_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c372_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c372_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c372_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c_get_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c_get_regs._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c372_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c372_rtc_read_time._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c_rtc_alarm_irq_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c372_set_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_osc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs5c372_probe to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c372_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rs5c372_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rs5c372_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @rs5c372_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c372_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c372_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c372_probe, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !140

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c372_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #10
  %and.i = and i32 %call.i.i, 202899457
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899457, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 202899457
  br i1 %cmp.i.not, label %do.end.if.end12_crit_edge, label %if.then6

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %do.end
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %algo.i.i136 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %algo.i.i136 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %algo.i.i136, align 8
  %functionality.i.i137 = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %functionality.i.i137 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %functionality.i.i137, align 4
  %call.i.i138 = tail call i32 %11(ptr noundef %7) #10
  %and.i139 = and i32 %call.i.i138, 202899456
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899456, i32 %and.i139)
  %cmp.i140.not = icmp eq i32 %and.i139, 202899456
  br i1 %cmp.i140.not, label %if.then6.if.end12_crit_edge, label %if.then6.exit_crit_edge

if.then6.exit_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %smbus_mode.0 = phi i8 [ 0, %do.end.if.end12_crit_edge ], [ 32, %if.then6.if.end12_crit_edge ]
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev13, i32 noundef 36, i32 noundef 3520) #10
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.exit_crit_edge, label %if.end17

if.end12.exit_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end17:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %if.else24, label %if.then21

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call ptr @of_device_get_match_data(ptr noundef %dev13) #10
  %16 = ptrtoint ptr %call23 to i32
  br label %if.end26

if.else24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then21
  %.sink = phi i32 [ %18, %if.else24 ], [ %16, %if.then21 ]
  %19 = getelementptr inbounds %struct.rs5c372, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %19, align 4
  %arrayidx = getelementptr %struct.rs5c372, ptr %call.i, i32 0, i32 4, i32 1
  %regs = getelementptr inbounds %struct.rs5c372, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %regs, align 4
  %smbus = getelementptr inbounds %struct.rs5c372, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %smbus to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %smbus, align 4
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %smbus_mode.0
  store i8 %bf.set, ptr %smbus, align 4
  %call27 = tail call fastcc i32 @rs5c_get_regs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.end26.exit_crit_edge, label %if.end29

if.end26.exit_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end29:                                         ; preds = %if.end26
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %19, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %do.end53 [
    i32 3, label %if.end29.sw.bb_crit_edge
    i32 4, label %if.end29.sw.bb_crit_edge149
    i32 1, label %if.end29.sw.bb39_crit_edge
    i32 2, label %if.end29.sw.bb39_crit_edge150
    i32 5, label %if.end29.sw.bb39_crit_edge151
    i32 6, label %if.end29.sw.bb39_crit_edge152
  ]

if.end29.sw.bb39_crit_edge152:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39

if.end29.sw.bb39_crit_edge151:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39

if.end29.sw.bb39_crit_edge150:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39

if.end29.sw.bb39_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39

if.end29.sw.bb_crit_edge149:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end29.sw.bb_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end29.sw.bb_crit_edge, %if.end29.sw.bb_crit_edge149
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %arrayidx32 = getelementptr i8, ptr %27, i32 15
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx32, align 1
  %30 = and i8 %29, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool33.not = icmp eq i8 %30, 0
  br i1 %tobool33.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end29.sw.bb39_crit_edge, %if.end29.sw.bb39_crit_edge150, %if.end29.sw.bb39_crit_edge151, %if.end29.sw.bb39_crit_edge152
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %arrayidx41 = getelementptr i8, ptr %32, i32 14
  %33 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx41, align 1
  %35 = and i8 %34, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool44.not = icmp eq i8 %35, 0
  br i1 %tobool44.not, label %sw.bb39.sw.epilog_crit_edge, label %sw.bb39.sw.epilog.sink.split_crit_edge

sw.bb39.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end53:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.5) #13
  br label %exit

sw.epilog.sink.split:                             ; preds = %sw.bb39.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %36 = ptrtoint ptr %smbus to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load47 = load i8, ptr %smbus, align 4
  %bf.set49 = or i8 %bf.load47, -128
  store i8 %bf.set49, ptr %smbus, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb39.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %arrayidx.i = getelementptr i8, ptr %38, i32 14
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %38, i32 15
  %41 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx3.i, align 1
  %43 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %19, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %44, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %sw.epilog
  %46 = and i8 %42, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.bb24.i_crit_edge, label %sw.bb.i.sw.epilog82_crit_edge

sw.bb.i.sw.epilog82_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog82

sw.bb.i.sw.bb24.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

sw.bb6.i:                                         ; preds = %sw.epilog
  %47 = and i8 %42, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool10.not.i = icmp eq i8 %47, 0
  br i1 %tobool10.not.i, label %sw.bb6.i.sw.epilog82_crit_edge, label %sw.bb6.i.sw.bb24.i_crit_edge

sw.bb6.i.sw.bb24.i_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

sw.bb6.i.sw.epilog82_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog82

sw.default.i:                                     ; preds = %sw.epilog
  %48 = and i8 %42, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool16.not.i = icmp eq i8 %48, 0
  br i1 %tobool16.not.i, label %sw.default.i.do.end72_crit_edge, label %sw.epilog.i

sw.default.i.do.end72_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

sw.epilog.i:                                      ; preds = %sw.default.i
  %49 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %44, label %sw.epilog.i.sw.epilog34.i_crit_edge [
    i32 3, label %sw.epilog.i.sw.bb20.i_crit_edge
    i32 4, label %sw.epilog.i.sw.bb20.i_crit_edge153
    i32 6, label %sw.epilog.i.sw.bb24.i_crit_edge
    i32 5, label %sw.epilog.i.sw.bb24.i_crit_edge154
  ]

sw.epilog.i.sw.bb24.i_crit_edge154:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

sw.epilog.i.sw.bb24.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

sw.epilog.i.sw.bb20.i_crit_edge153:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20.i

sw.epilog.i.sw.bb20.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20.i

sw.epilog.i.sw.epilog34.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog34.i

sw.bb20.i:                                        ; preds = %sw.epilog.i.sw.bb20.i_crit_edge, %sw.epilog.i.sw.bb20.i_crit_edge153
  %50 = or i8 %42, 32
  br label %sw.epilog34.sink.split.i

sw.bb24.i:                                        ; preds = %sw.epilog.i.sw.bb24.i_crit_edge, %sw.epilog.i.sw.bb24.i_crit_edge154, %sw.bb6.i.sw.bb24.i_crit_edge, %sw.bb.i.sw.bb24.i_crit_edge
  %51 = or i8 %40, 32
  br label %sw.epilog34.sink.split.i

sw.epilog34.sink.split.i:                         ; preds = %sw.bb24.i, %sw.bb20.i
  %buf.sroa.7.0.ph.i = phi i8 [ %50, %sw.bb20.i ], [ %42, %sw.bb24.i ]
  %buf.sroa.0.0.ph.i = phi i8 [ %40, %sw.bb20.i ], [ %51, %sw.bb24.i ]
  %52 = ptrtoint ptr %smbus to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load30.i = load i8, ptr %smbus, align 4
  %bf.set32.i = or i8 %bf.load30.i, -128
  store i8 %bf.set32.i, ptr %smbus, align 4
  br label %sw.epilog34.i

sw.epilog34.i:                                    ; preds = %sw.epilog34.sink.split.i, %sw.epilog.i.sw.epilog34.i_crit_edge
  %buf.sroa.7.0.i = phi i8 [ %42, %sw.epilog.i.sw.epilog34.i_crit_edge ], [ %buf.sroa.7.0.ph.i, %sw.epilog34.sink.split.i ]
  %buf.sroa.0.0.i = phi i8 [ %40, %sw.epilog.i.sw.epilog34.i_crit_edge ], [ %buf.sroa.0.0.ph.i, %sw.epilog34.sink.split.i ]
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %call.i142 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext -32, i8 noundef zeroext %buf.sroa.0.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp39.i = icmp slt i32 %call.i142, 0
  br i1 %cmp39.i, label %sw.epilog34.i.do.end67_crit_edge, label %for.cond.i, !prof !141

sw.epilog34.i.do.end67_crit_edge:                 ; preds = %sw.epilog34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

for.cond.i:                                       ; preds = %sw.epilog34.i
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %call.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext -16, i8 noundef zeroext %buf.sroa.7.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp39.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp39.1.i, label %for.cond.i.do.end67_crit_edge, label %for.cond.1.i, !prof !141

for.cond.i.do.end67_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %arrayidx47.i = getelementptr i8, ptr %58, i32 14
  %59 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %buf.sroa.0.0.i, ptr %arrayidx47.i, align 1
  %60 = load ptr, ptr %regs, align 4
  %arrayidx50.i = getelementptr i8, ptr %60, i32 15
  %61 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %buf.sroa.7.0.i, ptr %arrayidx50.i, align 1
  %62 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load i32, ptr %19, align 4
  br label %do.end72

do.end67:                                         ; preds = %for.cond.i.do.end67_crit_edge, %sw.epilog34.i.do.end67_crit_edge
  %retval.0.i143 = phi i32 [ %call.i142, %sw.epilog34.i.do.end67_crit_edge ], [ %call.1.i, %for.cond.i.do.end67_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.9) #13
  br label %exit

do.end72:                                         ; preds = %for.cond.1.i, %sw.default.i.do.end72_crit_edge
  %63 = phi i32 [ %.pr, %for.cond.1.i ], [ %44, %sw.default.i.do.end72_crit_edge ]
  %switch.tableidx = add i32 %63, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %64 = icmp ult i32 %switch.tableidx, 6
  br i1 %64, label %switch.lookup, label %do.end72.sw.epilog82_crit_edge

do.end72.sw.epilog82_crit_edge:                   ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog82

switch.lookup:                                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.rs5c372_probe, i32 0, i32 %switch.tableidx
  %65 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog82

sw.epilog82:                                      ; preds = %switch.lookup, %do.end72.sw.epilog82_crit_edge, %sw.bb6.i.sw.epilog82_crit_edge, %sw.bb.i.sw.epilog82_crit_edge
  %s.0 = phi ptr [ @.str.15, %sw.bb.i.sw.epilog82_crit_edge ], [ %switch.load, %switch.lookup ], [ @.str.16, %sw.bb6.i.sw.epilog82_crit_edge ], [ @.str.21, %do.end72.sw.epilog82_crit_edge ]
  %66 = ptrtoint ptr %smbus to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load85 = load i8, ptr %smbus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load85)
  %tobool86.not = icmp sgt i8 %bf.load85, -1
  %cond = select i1 %tobool86.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.12, ptr noundef nonnull %s.0, ptr noundef nonnull %cond) #13
  %67 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @rs5c372_driver, i32 0, i32 7), align 4
  %call88 = tail call ptr @devm_rtc_device_register(ptr noundef %dev13, ptr noundef %67, ptr noundef nonnull @rs5c372_rtc_ops, ptr noundef null) #10
  %rtc = getelementptr inbounds %struct.rs5c372, ptr %call.i, i32 0, i32 1
  %68 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call88, ptr %rtc, align 4
  %cmp.i144 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then91, label %if.end94

if.then91:                                        ; preds = %sw.epilog82
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %call88 to i32
  br label %exit

if.end94:                                         ; preds = %sw.epilog82
  %call96 = tail call fastcc i32 @rs5c_sysfs_register(ptr noundef %dev13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end94.cleanup_crit_edge, label %if.end94.exit_crit_edge

if.end94.exit_crit_edge:                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

exit:                                             ; preds = %if.end94.exit_crit_edge, %if.then91, %do.end67, %do.end53, %if.end26.exit_crit_edge, %if.end12.exit_crit_edge, %if.then6.exit_crit_edge
  %err.0 = phi i32 [ %call27, %if.end26.exit_crit_edge ], [ 0, %do.end53 ], [ %retval.0.i143, %do.end67 ], [ %69, %if.then91 ], [ %call96, %if.end94.exit_crit_edge ], [ -19, %if.then6.exit_crit_edge ], [ -12, %if.end12.exit_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end94.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit ], [ 0, %if.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c372_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_trim) #10
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_osc) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs5c_get_regs(ptr noundef %rs5c) unnamed_addr #2 align 64 {
entry:
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rs5c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rs5c, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #10
  %2 = getelementptr inbounds i8, ptr %msgs, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr2, align 2
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 17, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %buf3 = getelementptr inbounds %struct.rs5c372, ptr %rs5c, i32 0, i32 4
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf3, ptr %buf, align 4
  %smbus = getelementptr inbounds %struct.rs5c372, ptr %rs5c, i32 0, i32 3
  %10 = ptrtoint ptr %smbus to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %smbus, align 4
  %11 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.rs5c372, ptr %rs5c, i32 0, i32 4, i32 1
  %call = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp.not = icmp eq i32 %call, 16
  br i1 %cmp.not, label %if.then.do.body22_crit_edge, label %do.end

if.then.do.body22_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24) #13
  br label %cleanup51

if.else:                                          ; preds = %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call12 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msgs, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 1
  br i1 %cmp13.not, label %if.else.do.body22_crit_edge, label %do.end18

if.else.do.body22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

do.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19, ptr noundef nonnull @.str.24) #13
  br label %cleanup51

do.body22:                                        ; preds = %if.else.do.body22_crit_edge, %if.then.do.body22_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c_get_regs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c_get_regs, %cleanup51)) #10
          to label %if.then28 [label %cleanup51], !srcloc !140

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %regs = getelementptr inbounds %struct.rs5c372, ptr %rs5c, i32 0, i32 5
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv32 = zext i8 %17 to i32
  %add.ptr34 = getelementptr i8, ptr %15, i32 4
  %arrayidx36 = getelementptr i8, ptr %15, i32 7
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %19 to i32
  %add.ptr39 = getelementptr i8, ptr %15, i32 8
  %add.ptr41 = getelementptr i8, ptr %15, i32 11
  %arrayidx43 = getelementptr i8, ptr %15, i32 14
  %20 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %21 to i32
  %arrayidx46 = getelementptr i8, ptr %15, i32 15
  %22 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %23 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c_get_regs.__UNIQUE_ID_ddebug288, ptr noundef %dev29, ptr noundef nonnull @.str.29, ptr noundef %15, i32 noundef %conv32, ptr noundef %add.ptr34, i32 noundef %conv37, ptr noundef %add.ptr39, ptr noundef %add.ptr41, i32 noundef %conv44, i32 noundef %conv47) #10
  br label %cleanup51

cleanup51:                                        ; preds = %if.then28, %do.body22, %do.end18, %do.end
  %retval.1 = phi i32 [ -5, %do.end18 ], [ -5, %do.end ], [ 0, %if.then28 ], [ 0, %do.body22 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #10
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs5c_sysfs_register(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_trim) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_osc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_trim) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c372_ioctl(ptr noundef %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c372_ioctl.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c372_ioctl, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !140

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c372_ioctl.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %cmd) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -16) #10
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 -2147192813, label %sw.bb
    i32 28692, label %sw.bb40
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %type = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb8, label %sw.default

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %and = and i32 %call6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 %tobool12.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp14 = icmp ne i32 %6, 2
  %or.cond102 = select i1 %cmp14, i1 true, i1 %tobool12.not
  %or.cond102.not = xor i1 %or.cond102, true
  %not.or.cond111 = select i1 %or.cond, i1 true, i1 %or.cond102.not
  %flags.0 = zext i1 %not.or.cond111 to i32
  %and23 = lshr i32 %call6, 5
  %7 = and i32 %and23, 2
  %8 = or i32 %7, %flags.0
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %and29 = lshr i32 %call6, 4
  %and29.lobit = and i32 %and29, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8
  %flags.1 = phi i32 [ %8, %sw.bb8 ], [ %and29.lobit, %sw.default ]
  %9 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 527) #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !130) #10
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !142
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 %flags.1, i32 -1226833921) #10, !srcloc !145
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  br label %cleanup

sw.bb40:                                          ; preds = %do.end
  %type41 = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %type41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type41, align 4
  %.off104 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off104)
  %switch105 = icmp ult i32 %.off104, 2
  br i1 %switch105, label %if.then48, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48:                                        ; preds = %sw.bb40
  %16 = trunc i32 %call6 to i8
  %conv51 = and i8 %16, -65
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call54 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -16, i8 noundef zeroext %conv51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.body58, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body58:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c372_ioctl.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c372_ioctl, %cleanup)) #10
          to label %if.then72 [label %cleanup], !srcloc !140

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev74 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c372_ioctl.__UNIQUE_ID_ddebug297, ptr noundef %dev74, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 534) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body58, %if.then48.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %sw.epilog, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %sw.epilog ], [ -5, %if.then72 ], [ 0, %sw.bb40.cleanup_crit_edge ], [ 0, %if.then48.cleanup_crit_edge ], [ -515, %do.end.cleanup_crit_edge ], [ -5, %do.body58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c372_rtc_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @rs5c_get_regs(ptr noundef %1)
  %regs = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 15
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp eq i32 %7, 1
  %8 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %or.cond = select i1 %cmp3, i1 %tobool.not, i1 false
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp5 = icmp ne i32 %7, 2
  %or.cond246 = select i1 %cmp5, i1 true, i1 %tobool.not
  %or.cond249 = select i1 %or.cond.not, i1 %or.cond246, i1 false
  br i1 %or.cond249, label %sw.bb.cond.end_crit_edge, label %do.end

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %9 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool16.not = icmp eq i8 %9, 0
  br i1 %tobool16.not, label %sw.default.cond.end_crit_edge, label %do.end20

sw.default.cond.end_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

do.end20:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %cleanup

cond.end:                                         ; preds = %sw.default.cond.end_crit_edge, %sw.bb.cond.end_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %12 = and i8 %11, 127
  %call42 = tail call i32 @_bcd2bin(i8 noundef zeroext %12) #14
  %13 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call42, ptr %tm, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %arrayidx44 = getelementptr i8, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx44, align 1
  %18 = and i8 %17, 127
  %call67 = tail call i32 @_bcd2bin(i8 noundef zeroext %18) #14
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call67, ptr %tm_min, align 4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %arrayidx71 = getelementptr i8, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx71, align 1
  %time24.i = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %time24.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %time24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %cond.end19.i, label %cond.false.i

cond.false.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i8 %23, 63
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %and.i) #14
  br label %rs5c_reg2hr.exit

cond.end19.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i = and i8 %23, 31
  %call18.i = tail call i32 @_bcd2bin(i8 noundef zeroext %and6.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call18.i)
  %cmp.i = icmp eq i32 %call18.i, 12
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %call18.i
  %25 = and i8 %23, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool25.not.i = icmp eq i8 %25, 0
  %add27.i = add i32 %spec.store.select.i, 12
  %spec.select.i = select i1 %tobool25.not.i, i32 %spec.store.select.i, i32 %add27.i
  br label %rs5c_reg2hr.exit

rs5c_reg2hr.exit:                                 ; preds = %cond.end19.i, %cond.false.i
  %retval.0.i247 = phi i32 [ %spec.select.i, %cond.end19.i ], [ %call.i, %cond.false.i ]
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %26 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i247, ptr %tm_hour, align 4
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %arrayidx75 = getelementptr i8, ptr %28, i32 3
  %29 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx75, align 1
  %31 = and i8 %30, 7
  %call98 = tail call i32 @_bcd2bin(i8 noundef zeroext %31) #14
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %32 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call98, ptr %tm_wday, align 4
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %arrayidx102 = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx102, align 1
  %37 = and i8 %36, 63
  %call125 = tail call i32 @_bcd2bin(i8 noundef zeroext %37) #14
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %38 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call125, ptr %tm_mday, align 4
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %arrayidx129 = getelementptr i8, ptr %40, i32 5
  %41 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx129, align 1
  %43 = and i8 %42, 31
  %call152 = tail call i32 @_bcd2bin(i8 noundef zeroext %43) #14
  %sub = add i32 %call152, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %44 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub, ptr %tm_mon, align 4
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %arrayidx156 = getelementptr i8, ptr %46, i32 6
  %47 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx156, align 1
  %call171 = tail call i32 @_bcd2bin(i8 noundef zeroext %48) #14
  %add174 = add i32 %call171, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %49 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add174, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c372_rtc_read_time.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c372_rtc_read_time, %cleanup)) #10
          to label %if.then182 [label %cleanup], !srcloc !140

if.then182:                                       ; preds = %rs5c_reg2hr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm, align 4
  %52 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tm_min, align 4
  %54 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tm_hour, align 4
  %56 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_mday, align 4
  %58 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tm_mon, align 4
  %60 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tm_year, align 4
  %62 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c372_rtc_read_time.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.34, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then182, %rs5c_reg2hr.exit, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end20 ], [ -22, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then182 ], [ 0, %rs5c_reg2hr.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c372_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #10
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c372_rtc_set_time.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c372_rtc_set_time, %cond.end)) #10
          to label %if.then [label %cond.end], !srcloc !140

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %16 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %18 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %20 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c372_rtc_set_time.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #10
  br label %cond.end

cond.end:                                         ; preds = %if.then, %entry
  %22 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm, align 4
  %call11 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #14
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call11, ptr %buf, align 1
  %tm_min14 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %25 = ptrtoint ptr %tm_min14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_min14, align 4
  %call25 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #14
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call25, ptr %2, align 1
  %tm_hour31 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %28 = ptrtoint ptr %tm_hour31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_hour31, align 4
  %time24.i = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %time24.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %time24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #14
  br label %rs5c_hr2reg.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %29)
  %cmp.i = icmp ugt i32 %29, 12
  br i1 %cmp.i, label %cond.end16.i, label %if.end18.i

cond.end16.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %29, -12
  %call14.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #14
  %or.i = or i8 %call14.i, 32
  br label %rs5c_hr2reg.exit

if.end18.i:                                       ; preds = %if.end.i
  %31 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %29, label %cond.false33.i [
    i32 12, label %if.end18.i.rs5c_hr2reg.exit_crit_edge
    i32 0, label %if.then25.i
  ]

if.end18.i.rs5c_hr2reg.exit_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rs5c_hr2reg.exit

if.then25.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rs5c_hr2reg.exit

cond.false33.i:                                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call34.i = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #14
  br label %rs5c_hr2reg.exit

rs5c_hr2reg.exit:                                 ; preds = %cond.false33.i, %if.then25.i, %if.end18.i.rs5c_hr2reg.exit_crit_edge, %cond.end16.i, %cond.false.i
  %retval.0.i232 = phi i8 [ %or.i, %cond.end16.i ], [ 18, %if.then25.i ], [ %call.i, %cond.false.i ], [ 50, %if.end18.i.rs5c_hr2reg.exit_crit_edge ], [ %call34.i, %cond.false33.i ]
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %retval.0.i232, ptr %3, align 1
  %tm_wday35 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %33 = ptrtoint ptr %tm_wday35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_wday35, align 4
  %call46 = tail call zeroext i8 @_bin2bcd(i32 noundef %34) #14
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %call46, ptr %4, align 1
  %tm_mday52 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %36 = ptrtoint ptr %tm_mday52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_mday52, align 4
  %call63 = tail call zeroext i8 @_bin2bcd(i32 noundef %37) #14
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call63, ptr %5, align 1
  %tm_mon69 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %39 = ptrtoint ptr %tm_mon69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_mon69, align 4
  %add70 = add i32 %40, 1
  %call84 = tail call zeroext i8 @_bin2bcd(i32 noundef %add70) #14
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %call84, ptr %6, align 1
  %tm_year90 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %42 = ptrtoint ptr %tm_year90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_year90, align 4
  %sub = add i32 %43, -100
  %call104 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #14
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call104, ptr %7, align 1
  %call111 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp = icmp slt i32 %call111, 0
  br i1 %cmp, label %do.body114, label %if.end133

do.body114:                                       ; preds = %rs5c_hr2reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c372_rtc_set_time.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c372_rtc_set_time, %cleanup)) #10
          to label %if.then128 [label %cleanup], !srcloc !140

if.then128:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c372_rtc_set_time.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.38, i32 noundef 284) #10
  br label %cleanup

if.end133:                                        ; preds = %rs5c_hr2reg.exit
  %call135 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -16) #10
  %type = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type, align 4
  %.off = add i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp140 = icmp eq i32 %46, 1
  %47 = trunc i32 %call135 to i8
  %48 = and i8 %47, -113
  %conv144 = or i8 %48, 32
  %spec.select = select i1 %cmp140, i8 %conv144, i8 %48
  br label %sw.epilog

sw.default:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  %49 = trunc i32 %call135 to i8
  %conv151 = and i8 %49, -17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %ctrl2.0 = phi i8 [ %conv151, %sw.default ], [ %spec.select, %sw.bb ]
  %call153 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -16, i8 noundef zeroext %ctrl2.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %do.body157, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body157:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c372_rtc_set_time.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c372_rtc_set_time, %cleanup)) #10
          to label %if.then171 [label %cleanup], !srcloc !140

if.then171:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c372_rtc_set_time.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.38, i32 noundef 308) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %do.body157, %sw.epilog.cleanup_crit_edge, %if.then128, %do.body114
  %retval.0 = phi i32 [ -5, %if.then128 ], [ -5, %if.then171 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -5, %do.body114 ], [ -5, %do.body157 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @rs5c_get_regs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %time, align 4
  %regs = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %4, i32 8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 127
  %call17 = tail call i32 @_bcd2bin(i8 noundef zeroext %7) #14
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call17, ptr %tm_min, align 4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %arrayidx20 = getelementptr i8, ptr %10, i32 9
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %time24.i = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %time24.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %time24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %cond.end19.i, label %cond.false.i

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i8 %12, 63
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %and.i) #14
  br label %rs5c_reg2hr.exit

cond.end19.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i = and i8 %12, 31
  %call18.i = tail call i32 @_bcd2bin(i8 noundef zeroext %and6.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call18.i)
  %cmp.i = icmp eq i32 %call18.i, 12
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %call18.i
  %14 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool25.not.i = icmp eq i8 %14, 0
  %add27.i = add i32 %spec.store.select.i, 12
  %spec.select.i = select i1 %tobool25.not.i, i32 %spec.store.select.i, i32 %add27.i
  br label %rs5c_reg2hr.exit

rs5c_reg2hr.exit:                                 ; preds = %cond.end19.i, %cond.false.i
  %retval.0.i = phi i32 [ %spec.select.i, %cond.end19.i ], [ %call.i, %cond.false.i ]
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %tm_hour, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %arrayidx25 = getelementptr i8, ptr %17, i32 14
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx25, align 1
  %.lobit = lshr i8 %19, 7
  %20 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.lobit, ptr %t, align 4
  %21 = load ptr, ptr %regs, align 4
  %arrayidx31 = getelementptr i8, ptr %21, i32 15
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx31, align 1
  %24 = lshr i8 %23, 1
  %.lobit55 = and i8 %24, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 1
  %25 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.lobit55, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %rs5c_reg2hr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rs5c_reg2hr.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_mday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_mon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp2.not = icmp eq i32 %5, -1
  br i1 %cmp2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp5.not = icmp eq i32 %7, -1
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call fastcc i32 @rs5c_get_regs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %regs = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 14
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool.not = icmp sgt i8 %11, -1
  br i1 %tobool.not, label %if.end9.cond.end_crit_edge, label %if.then10

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.then10:                                        ; preds = %if.end9
  %and14 = and i8 %11, 127
  %call19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -32, i8 noundef zeroext %and14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.body, label %if.end31

do.body:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c_set_alarm.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c_set_alarm, %cleanup)) #10
          to label %if.then29 [label %cleanup], !srcloc !140

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c_set_alarm.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end31:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %arrayidx34 = getelementptr i8, ptr %13, i32 14
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and14, ptr %arrayidx34, align 1
  br label %cond.end

cond.end:                                         ; preds = %if.end31, %if.end9.cond.end_crit_edge
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_min, align 4
  %call44 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #14
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_hour, align 4
  %time24.i = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %time24.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %time24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #14
  br label %rs5c_hr2reg.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %18)
  %cmp.i = icmp ugt i32 %18, 12
  br i1 %cmp.i, label %cond.end16.i, label %if.end18.i

cond.end16.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %18, -12
  %call14.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #14
  %or.i = or i8 %call14.i, 32
  br label %rs5c_hr2reg.exit

if.end18.i:                                       ; preds = %if.end.i
  %20 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %18, label %cond.false33.i [
    i32 12, label %if.end18.i.rs5c_hr2reg.exit_crit_edge
    i32 0, label %if.then25.i
  ]

if.end18.i.rs5c_hr2reg.exit_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rs5c_hr2reg.exit

if.then25.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rs5c_hr2reg.exit

cond.false33.i:                                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call34.i = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #14
  br label %rs5c_hr2reg.exit

rs5c_hr2reg.exit:                                 ; preds = %cond.false33.i, %if.then25.i, %if.end18.i.rs5c_hr2reg.exit_crit_edge, %cond.end16.i, %cond.false.i
  %retval.0.i138 = phi i8 [ %or.i, %cond.end16.i ], [ 18, %if.then25.i ], [ %call.i, %cond.false.i ], [ 50, %if.end18.i.rs5c_hr2reg.exit_crit_edge ], [ %call34.i, %cond.false33.i ]
  %call59 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -128, i8 noundef zeroext %call44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %rs5c_hr2reg.exit.do.body63_crit_edge, label %for.cond

rs5c_hr2reg.exit.do.body63_crit_edge:             ; preds = %rs5c_hr2reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

for.cond:                                         ; preds = %rs5c_hr2reg.exit
  %call59.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -112, i8 noundef zeroext %retval.0.i138) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.1)
  %cmp60.1 = icmp slt i32 %call59.1, 0
  br i1 %cmp60.1, label %for.cond.do.body63_crit_edge, label %for.cond.1

for.cond.do.body63_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

for.cond.1:                                       ; preds = %for.cond
  %call59.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -96, i8 noundef zeroext 127) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.2)
  %cmp60.2 = icmp slt i32 %call59.2, 0
  br i1 %cmp60.2, label %for.cond.1.do.body63_crit_edge, label %for.cond.2

for.cond.1.do.body63_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

for.cond.2:                                       ; preds = %for.cond.1
  %21 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool82.not = icmp eq i8 %22, 0
  br i1 %tobool82.not, label %for.cond.2.cleanup_crit_edge, label %if.then83

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body63:                                        ; preds = %for.cond.1.do.body63_crit_edge, %for.cond.do.body63_crit_edge, %rs5c_hr2reg.exit.do.body63_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c_set_alarm.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c_set_alarm, %cleanup)) #10
          to label %if.then77 [label %cleanup], !srcloc !140

if.then77:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c_set_alarm.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.then83:                                        ; preds = %for.cond.2
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %arrayidx85 = getelementptr i8, ptr %24, i32 14
  %25 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx85, align 1
  %27 = or i8 %26, -128
  %call92 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -32, i8 noundef zeroext %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.end98, label %if.then83.if.end99_crit_edge

if.then83.if.end99_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

do.end98:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43) #13
  br label %if.end99

if.end99:                                         ; preds = %do.end98, %if.then83.if.end99_crit_edge
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %arrayidx102 = getelementptr i8, ptr %29, i32 14
  %30 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %arrayidx102, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then77, %do.body63, %for.cond.2.cleanup_crit_edge, %if.then29, %do.body, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ -5, %if.then29 ], [ -5, %if.then77 ], [ 0, %if.end99 ], [ 0, %for.cond.2.cleanup_crit_edge ], [ -5, %do.body ], [ -5, %do.body63 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c372_rtc_proc(ptr noundef %dev, ptr noundef %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %regs.i = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %type.i = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c372_get_trim.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c372_rtc_proc, %do.end.i)) #10
          to label %if.then14.i [label %do.end.i], !srcloc !140

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv15.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c372_get_trim.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv15.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %entry
  %8 = and i8 %5, 127
  %conv20.i = zext i8 %8 to i32
  %and21.i = and i32 %conv20.i, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.end.i.rs5c372_get_trim.exit_crit_edge, label %if.then23.i

do.end.i.rs5c372_get_trim.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rs5c372_get_trim.exit

if.then23.i:                                      ; preds = %do.end.i
  %and27.i = and i32 %conv20.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else30.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i = xor i32 %conv20.i, -1
  %or.i = or i32 %neg.i, -64
  %add.i = add nsw i32 %or.i, 1
  br label %if.end31.i

if.else30.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %and25.i = and i32 %conv20.i, 63
  %sub.i = add nsw i32 %and25.i, -1
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else30.i, %if.then29.i
  %t.0.i = phi i32 [ %add.i, %if.then29.i ], [ %sub.i, %if.else30.i ]
  %mul.i = shl nsw i32 %t.0.i, 1
  %phi.cast.i = and i32 %mul.i, 254
  br label %rs5c372_get_trim.exit

rs5c372_get_trim.exit:                            ; preds = %if.end31.i, %do.end.i.rs5c372_get_trim.exit_crit_edge
  %tmp.0.i = phi i32 [ %phi.cast.i, %if.end31.i ], [ 0, %do.end.i.rs5c372_get_trim.exit_crit_edge ]
  %.off.i = add i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool4.not.i = icmp sgt i8 %5, -1
  %9 = select i1 %tobool4.not.i, i32 768, i32 0
  %rem2.zext = select i1 %switch.i, i32 %9, i32 768
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.44, i32 noundef 32, i32 noundef %rem2.zext) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.45, i32 noundef %tmp.0.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %has_irq = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %has_irq to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %has_irq, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @rs5c_get_regs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool4.not = icmp eq i32 %enabled, 0
  %8 = and i8 %5, 127
  %masksel = select i1 %tobool4.not, i8 0, i8 -128
  %buf.0 = or i8 %8, %masksel
  %call11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -32, i8 noundef zeroext %buf.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end, label %if.else15

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.else15:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %arrayidx17 = getelementptr i8, ptr %10, i32 14
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %buf.0, ptr %arrayidx17, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else15, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -5, %do.end ], [ 0, %if.else15 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rs5c372_read_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %type = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %entry.sw.bb4_crit_edge
    i32 4, label %entry.sw.bb4_crit_edge34
  ]

entry.sw.bb4_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and2 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %cond = select i1 %tobool3.not, i32 3051, i32 1017
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge34
  %and6 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond8 = select i1 %tobool7.not, i32 3051, i32 3125
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %ppb_per_step.0 = phi i32 [ %cond8, %sw.bb4 ], [ %cond, %sw.bb ], [ 3051, %entry.sw.epilog_crit_edge ]
  %and10 = and i8 %5, 63
  %conv12 = zext i8 %and10 to i32
  %and13 = and i32 %conv12, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %sw.epilog.if.end23_crit_edge, label %if.else

sw.epilog.if.end23_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.else:                                          ; preds = %sw.epilog
  br i1 %tobool.not, label %if.else19, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.neg = or i32 %conv12, -64
  %mul = mul nsw i32 %ppb_per_step.0, %add.neg
  br label %if.end23

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sub21 = add nsw i32 %conv12, -1
  %mul22 = mul nuw nsw i32 %ppb_per_step.0, %sub21
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.then16, %sw.epilog.if.end23_crit_edge
  %mul.sink = phi i32 [ %mul, %if.then16 ], [ %mul22, %if.else19 ], [ 0, %sw.epilog.if.end23_crit_edge ]
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul.sink, ptr %offset, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c372_set_offset(ptr nocapture noundef readonly %dev, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %entry.if.then25_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge174
    i32 2, label %sw.bb4
  ]

entry.sw.bb_crit_edge174:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.if.then25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge174
  %regs = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %6, i32 7
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool.not = icmp sgt i8 %8, -1
  %spec.select = select i1 %tobool.not, i32 3051, i32 3125
  %9 = and i8 %8, -128
  %10 = zext i8 %9 to i32
  br label %if.then25

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp = icmp sgt i32 %offset, 0
  %cond.in.v = select i1 %cmp, i32 508, i32 -508
  %cond.in = add i32 %cond.in.v, %offset
  %cond = sdiv i32 %cond.in, 1017
  %11 = add i32 %cond.in, 64070
  call void @__sanitizer_cov_trace_const_cmp4(i32 128141, i32 %11)
  %12 = icmp ult i32 %11, 128141
  br i1 %12, label %sw.bb4.if.end51_crit_edge, label %sw.bb4.if.then25_crit_edge

sw.bb4.if.then25_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25

sw.bb4.if.end51_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then25:                                        ; preds = %sw.bb4.if.then25_crit_edge, %sw.bb, %entry.if.then25_crit_edge
  %ppb_per_step.0.ph = phi i32 [ %spec.select, %sw.bb ], [ 3051, %entry.if.then25_crit_edge ], [ 3051, %sw.bb4.if.then25_crit_edge ]
  %val.0.ph = phi i32 [ %10, %sw.bb ], [ 0, %entry.if.then25_crit_edge ], [ 0, %sw.bb4.if.then25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp29 = icmp sgt i32 %offset, 0
  %div36161 = lshr i32 %ppb_per_step.0.ph, 1
  %13 = sub nsw i32 0, %div36161
  %add37.pn.p = select i1 %cmp29, i32 %div36161, i32 %13
  %add37.pn = add i32 %add37.pn.p, %offset
  %cond44 = sdiv i32 %add37.pn, %ppb_per_step.0.ph
  %14 = add nsw i32 %cond44, -63
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %14)
  %15 = icmp ult i32 %14, -125
  br i1 %15, label %if.then25.cleanup_crit_edge, label %if.then25.if.end51_crit_edge

if.then25.if.end51_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51:                                         ; preds = %if.then25.if.end51_crit_edge, %sw.bb4.if.end51_crit_edge
  %val.0171 = phi i32 [ %val.0.ph, %if.then25.if.end51_crit_edge ], [ 128, %sw.bb4.if.end51_crit_edge ]
  %steps.1 = phi i32 [ %cond44, %if.then25.if.end51_crit_edge ], [ %cond, %sw.bb4.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %steps.1)
  %cmp52 = icmp sgt i32 %steps.1, 0
  br i1 %cmp52, label %if.then54, label %if.else59

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %add55 = add nuw nsw i32 %steps.1, 1
  %or57 = or i32 %add55, %val.0171
  %conv58 = trunc i32 %or57 to i8
  br label %if.end69

if.else59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %and65 = and i32 %steps.1, 63
  %conv62 = or i32 %and65, %val.0171
  %16 = trunc i32 %conv62 to i8
  %conv68 = or i8 %16, 64
  br label %if.end69

if.end69:                                         ; preds = %if.else59, %if.then54
  %val.1 = phi i8 [ %conv58, %if.then54 ], [ %conv68, %if.else59 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %steps.1)
  %tobool70.not = icmp eq i32 %steps.1, 0
  %17 = and i8 %val.1, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool74.not = icmp eq i8 %17, 0
  %or.cond164 = select i1 %tobool70.not, i1 true, i1 %tobool74.not
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %18 = and i8 %val.1, -128
  %spec.select165 = select i1 %switch, i8 %18, i8 0
  %val.2 = select i1 %or.cond164, i8 %spec.select165, i8 %val.1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c372_set_offset.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c372_set_offset, %do.end)) #10
          to label %if.then96 [label %do.end], !srcloc !140

if.then96:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev97 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  %conv98 = zext i8 %val.2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c372_set_offset.__UNIQUE_ID_ddebug298, ptr noundef %dev97, ptr noundef nonnull @.str.51, i32 noundef %conv98, i32 noundef %offset) #10
  br label %do.end

do.end:                                           ; preds = %if.then96, %if.end69
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call102 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 112, i8 noundef zeroext %val.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %do.end108, label %if.end112

do.end108:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %dev110 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  %conv111 = zext i8 %val.2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev110, ptr noundef nonnull @.str.52, i32 noundef %conv111, i32 noundef 112) #13
  br label %cleanup

if.end112:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %regs113 = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %regs113 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs113, align 4
  %arrayidx114 = getelementptr i8, ptr %26, i32 7
  %27 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %val.2, ptr %arrayidx114, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %do.end108, %if.then25.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end108 ], [ 0, %if.end112 ], [ -34, %if.then25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c372_sysfs_show_trim(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %regs.i = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rs5c372_get_trim.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rs5c372_sysfs_show_trim, %do.end.i)) #10
          to label %if.then14.i [label %do.end.i], !srcloc !140

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv15.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rs5c372_get_trim.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv15.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %entry
  %6 = and i8 %5, 127
  %conv20.i = zext i8 %6 to i32
  %and21.i = and i32 %conv20.i, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.end.i.rs5c372_get_trim.exit_crit_edge, label %if.then23.i

do.end.i.rs5c372_get_trim.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rs5c372_get_trim.exit

if.then23.i:                                      ; preds = %do.end.i
  %and27.i = and i32 %conv20.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else30.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i = xor i32 %conv20.i, -1
  %or.i = or i32 %neg.i, -64
  %add.i = add nsw i32 %or.i, 1
  br label %if.end31.i

if.else30.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %and25.i = and i32 %conv20.i, 63
  %sub.i = add nsw i32 %and25.i, -1
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else30.i, %if.then29.i
  %t.0.i = phi i32 [ %add.i, %if.then29.i ], [ %sub.i, %if.else30.i ]
  %mul.i = shl nsw i32 %t.0.i, 1
  %phi.cast.i = and i32 %mul.i, 254
  br label %rs5c372_get_trim.exit

rs5c372_get_trim.exit:                            ; preds = %if.end31.i, %do.end.i.rs5c372_get_trim.exit_crit_edge
  %tmp.0.i = phi i32 [ %phi.cast.i, %if.end31.i ], [ 0, %do.end.i.rs5c372_get_trim.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef %tmp.0.i)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c372_sysfs_show_osc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %regs.i = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %type.i = getelementptr inbounds %struct.rs5c372, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool4.not.i = icmp sgt i8 %5, -1
  %8 = select i1 %tobool4.not.i, i32 768, i32 0
  %rem4.zext = select i1 %switch.i, i32 %8, i32 768
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef 32, i32 noundef %rem4.zext)
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !123, !124, !126, !128}
!llvm.named.register.sp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_rtc_rs5c372__300_929_rs5c372_driver_init6, !1, !"__initcall__kmod_rtc_rs5c372__300_929_rs5c372_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 929, i32 1}
!2 = !{ptr @__exitcall_rs5c372_driver_exit, !1, !"__exitcall_rs5c372_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author301, !4, !"__UNIQUE_ID_author301", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 931, i32 1}
!5 = !{ptr @__UNIQUE_ID_description302, !6, !"__UNIQUE_ID_description302", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 935, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 936, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 921, i32 11}
!12 = !{ptr @rs5c372_driver, !13, !"rs5c372_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 919, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 801, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rs5c372_probe.__UNIQUE_ID_ddebug299, !15, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 864, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rs5c372_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @rs5c372_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 876, i32 3}
!28 = !{ptr @rs5c372_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rs5c372_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 880, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rs5c372_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rs5c372_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !31, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 162, i32 4}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rs5c_get_regs._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @rs5c_get_regs._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @rs5c_get_regs._entry.27, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 167, i32 4}
!52 = !{ptr @rs5c_get_regs._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 172, i32 2}
!55 = !{ptr @rs5c_get_regs.__UNIQUE_ID_ddebug288, !54, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!56 = !{ptr @rs5c372_rtc_ops, !57, !"rs5c372_rtc_ops", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 664, i32 35}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 502, i32 2}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rs5c372_ioctl.__UNIQUE_ID_ddebug296, !59, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 533, i32 5}
!64 = !{ptr @rs5c372_ioctl.__UNIQUE_ID_ddebug297, !63, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 226, i32 4}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rs5c372_rtc_read_time._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rs5c372_rtc_read_time._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @rs5c372_rtc_read_time._entry.35, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 232, i32 4}
!72 = !{ptr @rs5c372_rtc_read_time._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 250, i32 2}
!75 = !{ptr @rs5c372_rtc_read_time.__UNIQUE_ID_ddebug289, !74, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 267, i32 2}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rs5c372_rtc_set_time.__UNIQUE_ID_ddebug290, !77, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!80 = !{ptr @rs5c372_rtc_set_time.__UNIQUE_ID_ddebug291, !81, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 283, i32 3}
!82 = !{ptr @rs5c372_rtc_set_time.__UNIQUE_ID_ddebug292, !83, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 307, i32 3}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 443, i32 4}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rs5c_set_alarm.__UNIQUE_ID_ddebug294, !85, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 457, i32 4}
!90 = !{ptr @rs5c_set_alarm.__UNIQUE_ID_ddebug295, !89, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 467, i32 4}
!93 = !{ptr @rs5c_set_alarm._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rs5c_set_alarm._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 482, i32 19}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 484, i32 19}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 337, i32 3}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rs5c372_get_trim.__UNIQUE_ID_ddebug293, !100, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 380, i32 3}
!105 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @rs5c_rtc_alarm_irq_enable._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @rs5c_rtc_alarm_irq_enable._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 652, i32 2}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @rs5c372_set_offset.__UNIQUE_ID_ddebug298, !109, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 655, i32 3}
!114 = !{ptr @rs5c372_set_offset._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @rs5c372_set_offset._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 689, i32 8}
!118 = !{ptr @dev_attr_trim, !117, !"dev_attr_trim", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 687, i32 22}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 702, i32 8}
!123 = !{ptr @dev_attr_osc, !122, !"dev_attr_osc", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 700, i32 22}
!126 = !{ptr @rs5c372_of_match, !127, !"rs5c372_of_match", i1 false, i1 false}
!127 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 88, i32 49}
!128 = !{ptr @rs5c372_id, !129, !"rs5c372_id", i1 false, i1 false}
!129 = !{!"../drivers/rtc/rtc-rs5c372.c", i32 77, i32 35}
!130 = !{!"sp"}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 2149008361, i64 2149008366, i64 2149008379, i64 2149008423, i64 2149008457, i64 2149008478}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i64 6361483}
!143 = !{i64 6361680}
!144 = !{i64 2153846913}
!145 = !{i64 2155708328, i64 2155708608, i64 2155708942, i64 2155709276}
