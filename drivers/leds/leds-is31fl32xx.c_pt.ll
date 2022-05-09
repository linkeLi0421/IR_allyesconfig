; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-is31fl32xx.c_pt.bc'
source_filename = "../drivers/leds/leds-is31fl32xx.c"
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
%struct.is31fl32xx_chipdef = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.is31fl32xx_priv = type { ptr, ptr, i32, [0 x %struct.is31fl32xx_led_data] }
%struct.is31fl32xx_led_data = type { %struct.led_classdev, i8, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_is31fl32xx__290_493_is31fl32xx_driver_init6 = internal global ptr @is31fl32xx_driver_init, section ".initcall6.init", align 4
@is31fl32xx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @is31fl32xx_probe, ptr @is31fl32xx_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_is31fl32xx_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @is31fl32xx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_is31fl32xx_driver_exit = internal global ptr @is31fl32xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [60 x i8] c"leds_is31fl32xx.author=David Rivshin <drivshin@allworx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [55 x i8] c"leds_is31fl32xx.description=ISSI IS31FL32xx LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [50 x i8] c"leds_is31fl32xx.file=drivers/leds/leds-is31fl32xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [31 x i8] c"leds_is31fl32xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"is31fl32xx\00", [21 x i8] zeroinitializer }, align 32
@of_is31fl32xx_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"issi,is31fl3236\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3236_cdef }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"issi,is31fl3235\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3235_cdef }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"issi,is31fl3218\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3218_cdef }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"si-en,sn3218\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3218_cdef }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"issi,is31fl3216\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3216_cdef }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"si-en,sn3216\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @is31fl3216_cdef }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@is31fl32xx_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"is31fl3236\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"is31fl3235\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"is31fl3218\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sn3218\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"is31fl3216\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sn3216\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@is31fl32xx_write.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"leds_is31fl32xx\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"is31fl32xx_write\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/leds/leds-is31fl32xx.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"writing register 0x%02X=0x%02X\00", [33 x i8] zeroinitializer }, align 32
@is31fl32xx_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 148, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"register write to 0x%02X failed (error %d)\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@is31fl32xx_write._entry_ptr = internal global ptr @is31fl32xx_write._entry, section ".printk_index", align 4
@is31fl32xx_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 388, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Node %pOF 'reg' conflicts with another LED\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"is31fl32xx_parse_dt\00", [44 x i8] zeroinitializer }, align 32
@is31fl32xx_parse_dt._entry_ptr = internal global ptr @is31fl32xx_parse_dt._entry, section ".printk_index", align 4
@is31fl32xx_parse_dt._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 399, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register LED for %pOF: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@is31fl32xx_parse_dt._entry_ptr.12 = internal global ptr @is31fl32xx_parse_dt._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@is31fl32xx_parse_child_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 340, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Child node %pOF does not have a valid reg property\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"is31fl32xx_parse_child_dt\00", [38 x i8] zeroinitializer }, align 32
@is31fl32xx_parse_child_dt._entry_ptr = internal global ptr @is31fl32xx_parse_child_dt._entry, section ".printk_index", align 4
@is31fl32xx_brightness_set.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"is31fl32xx_brightness_set\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@is31fl3236_cdef = internal constant { %struct.is31fl32xx_chipdef, [44 x i8] } { %struct.is31fl32xx_chipdef { i8 36, i8 0, i8 37, i8 74, i8 79, i8 1, i8 0, i8 38, i8 1, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@is31fl3235_cdef = internal constant { %struct.is31fl32xx_chipdef, [44 x i8] } { %struct.is31fl32xx_chipdef { i8 28, i8 0, i8 37, i8 74, i8 79, i8 5, i8 0, i8 42, i8 1, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@is31fl3218_cdef = internal constant { %struct.is31fl32xx_chipdef, [44 x i8] } { %struct.is31fl32xx_chipdef { i8 18, i8 0, i8 22, i8 -1, i8 23, i8 1, i8 0, i8 19, i8 6, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@is31fl3216_cdef = internal constant { %struct.is31fl32xx_chipdef, [44 x i8] } { %struct.is31fl32xx_chipdef { i8 16, i8 -1, i8 -80, i8 -1, i8 -1, i8 16, i8 1, i8 1, i8 8, ptr @is31fl3216_reset, ptr @is31fl3216_software_shutdown }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"is31fl32xx_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 483, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 485, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"of_is31fl32xx_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 413, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"is31fl32xx_id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 471, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 142, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 146, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 386, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 398, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 336, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 338, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 232, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"is31fl3236_cdef\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 88, i32 40 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"is31fl3235_cdef\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 99, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"is31fl3218_cdef\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 110, i32 40 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"is31fl3216_cdef\00", align 1
@___asan_gen_.97 = private constant [34 x i8] c"../drivers/leds/leds-is31fl32xx.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 124, i32 40 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_is31fl32xx_driver_exit, ptr @__initcall__kmod_leds_is31fl32xx__290_493_is31fl32xx_driver_init6, ptr @is31fl32xx_driver_exit, ptr @is31fl32xx_parse_child_dt._entry, ptr @is31fl32xx_parse_child_dt._entry_ptr, ptr @is31fl32xx_parse_dt._entry, ptr @is31fl32xx_parse_dt._entry.10, ptr @is31fl32xx_parse_dt._entry_ptr, ptr @is31fl32xx_parse_dt._entry_ptr.12, ptr @is31fl32xx_write._entry, ptr @is31fl32xx_write._entry_ptr, ptr @is31fl32xx_driver, ptr @.str, ptr @of_is31fl32xx_match, ptr @is31fl32xx_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @is31fl3236_cdef, ptr @is31fl3235_cdef, ptr @is31fl3218_cdef, ptr @is31fl3216_cdef], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl32xx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_is31fl32xx_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl32xx_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl32xx_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl32xx_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl32xx_parse_dt._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl32xx_parse_child_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl3236_cdef to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl3235_cdef to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl3218_cdef to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is31fl3216_cdef to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @is31fl32xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @is31fl32xx_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @is31fl32xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @is31fl32xx_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is31fl32xx_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  %init_data.i = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #6
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef null) #6
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %dev_of_node.exit.cleanup_crit_edge, label %dev_of_node.exit.for.body.i_crit_edge

dev_of_node.exit.for.body.i_crit_edge:            ; preds = %dev_of_node.exit
  br label %for.body.i

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %dev_of_node.exit.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %dev_of_node.exit.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %dev_of_node.exit.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef nonnull %child.06.i) #6
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  br i1 %tobool.not, label %of_get_available_child_count.exit.cleanup_crit_edge, label %if.end

of_get_available_child_count.exit.cleanup_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %of_get_available_child_count.exit
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 408) #6
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = add nuw i32 %4, 12
  %retval.0.i37 = select i1 %3, i32 -1, i32 %5
  %call.i38 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i37, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i38, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %client9 = getelementptr inbounds %struct.is31fl32xx_priv, ptr %call.i38, i32 0, i32 1
  %6 = ptrtoint ptr %client9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %client9, align 4
  %7 = ptrtoint ptr %call.i38 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %call.i38, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i38, ptr %driver_data.i.i, align 4
  %call11 = tail call fastcc i32 @is31fl32xx_init_regs(ptr noundef nonnull %call.i38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  br i1 %tobool.not.i, label %if.end14.dev_of_node.exit.i_crit_edge, label %if.end.i.i

if.end14.dev_of_node.exit.i_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit.i

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %9 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i.i, align 8
  br label %dev_of_node.exit.i

dev_of_node.exit.i:                               ; preds = %if.end.i.i, %if.end14.dev_of_node.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ null, %if.end14.dev_of_node.exit.i_crit_edge ]
  %call1.i39 = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i.i, ptr noundef null) #6
  %cmp.not68.i = icmp eq ptr %call1.i39, null
  br i1 %cmp.not68.i, label %dev_of_node.exit.i.cleanup_crit_edge, label %for.body.lr.ph.i

dev_of_node.exit.i.cleanup_crit_edge:             ; preds = %dev_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %dev_of_node.exit.i
  %num_leds.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %call.i38, i32 0, i32 2
  %of_node.i52.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  br label %for.body.i40

for.body.i40:                                     ; preds = %dev_of_node.exit55.i.for.body.i40_crit_edge, %for.body.lr.ph.i
  %child.069.i = phi ptr [ %call1.i39, %for.body.lr.ph.i ], [ %call21.i, %dev_of_node.exit55.i.for.body.i40_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #6
  %11 = call ptr @memset(ptr %init_data.i, i32 0, i32 16)
  %12 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_leds.i, align 4
  %arrayidx.i = getelementptr %struct.is31fl32xx_priv, ptr %call.i38, i32 0, i32 3, i32 %13
  %priv2.i = getelementptr %struct.is31fl32xx_priv, ptr %call.i38, i32 0, i32 3, i32 %13, i32 2
  %14 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i38, ptr %priv2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #6
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !67
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.069.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %reg.i.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i46.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i46.i, label %lor.lhs.false.i.i, label %for.body.i40.is31fl32xx_parse_child_dt.exit.i_crit_edge

for.body.i40.is31fl32xx_parse_child_dt.exit.i_crit_edge: ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %is31fl32xx_parse_child_dt.exit.i

lor.lhs.false.i.i:                                ; preds = %for.body.i40
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.is31fl32xx_parse_child_dt.exit.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.is31fl32xx_parse_child_dt.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %is31fl32xx_parse_child_dt.exit.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %18 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv2.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %conv.i.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i.i)
  %cmp3.i.i = icmp ugt i32 %17, %conv.i.i
  br i1 %cmp3.i.i, label %lor.lhs.false2.i.i.is31fl32xx_parse_child_dt.exit.i_crit_edge, label %if.end.i41

lor.lhs.false2.i.i.is31fl32xx_parse_child_dt.exit.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %is31fl32xx_parse_child_dt.exit.i

is31fl32xx_parse_child_dt.exit.i:                 ; preds = %lor.lhs.false2.i.i.is31fl32xx_parse_child_dt.exit.i_crit_edge, %lor.lhs.false.i.i.is31fl32xx_parse_child_dt.exit.i_crit_edge, %for.body.i40.is31fl32xx_parse_child_dt.exit.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull %child.069.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  br label %err.i

if.end.i41:                                       ; preds = %lor.lhs.false2.i.i
  %conv5.i.i = trunc i32 %17 to i8
  %channel.i.i = getelementptr %struct.is31fl32xx_priv, ptr %call.i38, i32 0, i32 3, i32 %13, i32 1
  %24 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv5.i.i, ptr %channel.i.i, align 4
  %brightness_set_blocking.i.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx.i, i32 0, i32 6
  %25 = ptrtoint ptr %brightness_set_blocking.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @is31fl32xx_brightness_set, ptr %brightness_set_blocking.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  %26 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_leds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp13.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp13.not.i.i, label %if.end.i41.cond.end.i_crit_edge, label %if.end.i41.for.body.i.i_crit_edge

if.end.i41.for.body.i.i_crit_edge:                ; preds = %if.end.i41
  br label %for.body.i.i

if.end.i41.cond.end.i_crit_edge:                  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i41.for.body.i.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i41.for.body.i.i_crit_edge ]
  %channel1.i.i = getelementptr %struct.is31fl32xx_priv, ptr %call.i38, i32 0, i32 3, i32 %i.014.i.i, i32 1
  %28 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %channel1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %conv5.i.i)
  %cmp3.i49.i = icmp eq i8 %29, %conv5.i.i
  br i1 %cmp3.i49.i, label %is31fl32xx_find_led_data.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %27
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cond.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.cond.end.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

is31fl32xx_find_led_data.exit.i:                  ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.is31fl32xx_priv, ptr %call.i38, i32 0, i32 3, i32 %i.014.i.i
  %tobool5.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool5.not.i, label %is31fl32xx_find_led_data.exit.i.cond.end.i_crit_edge, label %do.end.i

is31fl32xx_find_led_data.exit.i.cond.end.i_crit_edge: ; preds = %is31fl32xx_find_led_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

do.end.i:                                         ; preds = %is31fl32xx_find_led_data.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull %child.069.i) #9
  br label %err.i

cond.end.i:                                       ; preds = %is31fl32xx_find_led_data.exit.i.cond.end.i_crit_edge, %for.inc.i.i.cond.end.i_crit_edge, %if.end.i41.cond.end.i_crit_edge
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %child.069.i, i32 0, i32 3
  %30 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fwnode.i, ptr %init_data.i, align 4
  %call10.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %arrayidx.i, ptr noundef nonnull %init_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.inc.i, label %do.end15.i

do.end15.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull %child.069.i, i32 noundef %call10.i) #9
  br label %err.i

for.inc.i:                                        ; preds = %cond.end.i
  %31 = ptrtoint ptr %num_leds.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_leds.i, align 4
  %inc.i42 = add i32 %32, 1
  store i32 %inc.i42, ptr %num_leds.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  br i1 %tobool.not.i, label %for.inc.i.dev_of_node.exit55.i_crit_edge, label %if.end.i53.i

for.inc.i.dev_of_node.exit55.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit55.i

if.end.i53.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %of_node.i52.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node.i52.i, align 8
  br label %dev_of_node.exit55.i

dev_of_node.exit55.i:                             ; preds = %if.end.i53.i, %for.inc.i.dev_of_node.exit55.i_crit_edge
  %retval.0.i54.i = phi ptr [ %34, %if.end.i53.i ], [ null, %for.inc.i.dev_of_node.exit55.i_crit_edge ]
  %call21.i = call ptr @of_get_next_available_child(ptr noundef %retval.0.i54.i, ptr noundef nonnull %child.069.i) #6
  %cmp.not.i43 = icmp eq ptr %call21.i, null
  br i1 %cmp.not.i43, label %dev_of_node.exit55.i.cleanup_crit_edge, label %dev_of_node.exit55.i.for.body.i40_crit_edge

dev_of_node.exit55.i.for.body.i40_crit_edge:      ; preds = %dev_of_node.exit55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i40

dev_of_node.exit55.i.cleanup_crit_edge:           ; preds = %dev_of_node.exit55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err.i:                                            ; preds = %do.end15.i, %do.end.i, %is31fl32xx_parse_child_dt.exit.i
  %ret.0.ph.i = phi i32 [ -22, %is31fl32xx_parse_child_dt.exit.i ], [ %call10.i, %do.end15.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  call void @of_node_put(ptr noundef nonnull %child.069.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err.i, %dev_of_node.exit55.i.cleanup_crit_edge, %dev_of_node.exit.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %of_get_available_child_count.exit.cleanup_crit_edge, %dev_of_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %of_get_available_child_count.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ -22, %dev_of_node.exit.cleanup_crit_edge ], [ %ret.0.ph.i, %err.i ], [ 0, %dev_of_node.exit.i.cleanup_crit_edge ], [ 0, %dev_of_node.exit55.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is31fl32xx_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %reset_reg.i = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reset_reg.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reset_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.not.i = icmp eq i8 %5, -1
  br i1 %cmp.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl32xx_remove, %if.then.i.i)) #6
          to label %do.end.i.i [label %if.then.i.i], !srcloc !68

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %conv.i.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i.i, i32 noundef 0) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i
  %client4.i.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %client4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client4.i.i, align 4
  %call5.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext %5, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %do.end.i.i.if.end5.i_crit_edge, label %is31fl32xx_write.exit.i

do.end.i.i.if.end5.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

is31fl32xx_write.exit.i:                          ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %client4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client4.i.i, align 4
  %dev12.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %conv13.i.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i.i, ptr noundef nonnull @.str.5, i32 noundef %conv13.i.i, i32 noundef %call5.i.i) #9
  br label %is31fl32xx_reset_regs.exit

if.end5.i:                                        ; preds = %do.end.i.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %reset_func.i = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %reset_func.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_func.i, align 4
  %tobool6.not.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i, label %if.end5.i.is31fl32xx_reset_regs.exit_crit_edge, label %if.then7.i

if.end5.i.is31fl32xx_reset_regs.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %is31fl32xx_reset_regs.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 %13(ptr noundef %1) #6
  br label %is31fl32xx_reset_regs.exit

is31fl32xx_reset_regs.exit:                       ; preds = %if.then7.i, %if.end5.i.is31fl32xx_reset_regs.exit_crit_edge, %is31fl32xx_write.exit.i
  %retval.0.i = phi i32 [ %call9.i, %if.then7.i ], [ %call5.i.i, %is31fl32xx_write.exit.i ], [ 0, %if.end5.i.is31fl32xx_reset_regs.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @is31fl32xx_init_regs(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %reset_reg.i = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reset_reg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not.i = icmp eq i8 %3, -1
  br i1 %cmp.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl32xx_init_regs, %if.then.i.i)) #6
          to label %do.end.i.i [label %if.then.i.i], !srcloc !68

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %client.i.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %conv.i.i = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i.i, i32 noundef 0) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i
  %client4.i.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %client4.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client4.i.i, align 4
  %call5.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %do.end.i.i.if.end5.i_crit_edge, label %do.end.i.i.cleanup39.sink.split_crit_edge

do.end.i.i.cleanup39.sink.split_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39.sink.split

do.end.i.i.if.end5.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %reset_func.i = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %reset_func.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_func.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end_crit_edge, label %is31fl32xx_reset_regs.exit

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

is31fl32xx_reset_regs.exit:                       ; preds = %if.end5.i
  %call9.i = tail call i32 %9(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not = icmp eq i32 %call9.i, 0
  br i1 %tobool.not, label %is31fl32xx_reset_regs.exit.if.end_crit_edge, label %is31fl32xx_reset_regs.exit.cleanup39_crit_edge

is31fl32xx_reset_regs.exit.cleanup39_crit_edge:   ; preds = %is31fl32xx_reset_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

is31fl32xx_reset_regs.exit.if.end_crit_edge:      ; preds = %is31fl32xx_reset_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %is31fl32xx_reset_regs.exit.if.end_crit_edge, %if.end5.i.if.end_crit_edge
  %led_control_register_base = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %led_control_register_base to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %led_control_register_base, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp.not = icmp eq i8 %11, -1
  br i1 %cmp.not, label %if.end.if.end24_crit_edge, label %if.then3

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then3:                                         ; preds = %if.end
  %enable_bits_per_led_control_register = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %enable_bits_per_led_control_register to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enable_bits_per_led_control_register, align 4
  %conv4 = zext i8 %13 to i32
  %sub5 = sub nsw i32 32, %conv4
  %shr = lshr i32 -1, %sub5
  %conv6 = trunc i32 %shr to i8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp1298.not = icmp ugt i8 %13, %15
  br i1 %cmp1298.not, label %if.then3.if.end24_crit_edge, label %for.body.lr.ph

if.then3.if.end24_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

for.body.lr.ph:                                   ; preds = %if.then3
  %16 = udiv i8 %15, %13
  %client.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %conv3.i = and i32 %shr, 255
  %17 = call i8 @llvm.umax.i8(i8 %16, i8 1)
  %umax = zext i8 %17 to i32
  br label %for.body

for.cond:                                         ; preds = %do.end.i
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.if.end24_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.if.end24_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %18 = ptrtoint ptr %led_control_register_base to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %led_control_register_base, align 1
  %20 = trunc i32 %i.099 to i8
  %conv17 = add i8 %19, %20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl32xx_init_regs, %if.then.i60)) #6
          to label %do.end.i [label %if.then.i60], !srcloc !68

if.then.i60:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %conv.i = zext i8 %conv17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %conv3.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i60, %for.body
  %23 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client.i, align 4
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext %conv17, i8 noundef zeroext %conv6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i61 = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i61, label %for.cond, label %do.end.i.cleanup39.sink.split_crit_edge

do.end.i.cleanup39.sink.split_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39.sink.split

if.end24:                                         ; preds = %for.cond.if.end24_crit_edge, %if.then3.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %shutdown_reg.i = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %shutdown_reg.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %shutdown_reg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp.not.i62 = icmp eq i8 %28, -1
  br i1 %cmp.not.i62, label %if.end24.if.end8.i_crit_edge, label %if.then.i63

if.end24.if.end8.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then.i63:                                      ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl32xx_init_regs, %if.then.i.i67)) #6
          to label %do.end.i.i71 [label %if.then.i.i67], !srcloc !68

if.then.i.i67:                                    ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #8
  %client.i.i64 = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %29 = ptrtoint ptr %client.i.i64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client.i.i64, align 4
  %dev.i.i65 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  %conv.i.i66 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i.i65, ptr noundef nonnull @.str.4, i32 noundef %conv.i.i66, i32 noundef 1) #6
  br label %do.end.i.i71

do.end.i.i71:                                     ; preds = %if.then.i.i67, %if.then.i63
  %client4.i.i68 = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %31 = ptrtoint ptr %client4.i.i68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client4.i.i68, align 4
  %call5.i.i69 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext %28, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i69)
  %tobool6.not.i.i70 = icmp eq i32 %call5.i.i69, 0
  br i1 %tobool6.not.i.i70, label %do.end.i.i71.if.end8.i_crit_edge, label %do.end.i.i71.cleanup39.sink.split_crit_edge

do.end.i.i71.cleanup39.sink.split_crit_edge:      ; preds = %do.end.i.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39.sink.split

do.end.i.i71.if.end8.i_crit_edge:                 ; preds = %do.end.i.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i.i71.if.end8.i_crit_edge, %if.end24.if.end8.i_crit_edge
  %sw_shutdown_func.i = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %26, i32 0, i32 10
  %33 = ptrtoint ptr %sw_shutdown_func.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sw_shutdown_func.i, align 4
  %tobool9.not.i = icmp eq ptr %34, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end28_crit_edge, label %is31fl32xx_software_shutdown.exit

if.end8.i.if.end28_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

is31fl32xx_software_shutdown.exit:                ; preds = %if.end8.i
  %call13.i = tail call i32 %34(ptr noundef %priv, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool26.not = icmp eq i32 %call13.i, 0
  br i1 %tobool26.not, label %is31fl32xx_software_shutdown.exit.if.end28_crit_edge, label %is31fl32xx_software_shutdown.exit.cleanup39_crit_edge

is31fl32xx_software_shutdown.exit.cleanup39_crit_edge: ; preds = %is31fl32xx_software_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

is31fl32xx_software_shutdown.exit.if.end28_crit_edge: ; preds = %is31fl32xx_software_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28:                                         ; preds = %is31fl32xx_software_shutdown.exit.if.end28_crit_edge, %if.end8.i.if.end28_crit_edge
  %global_control_reg = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %global_control_reg to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %global_control_reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp30.not = icmp eq i8 %36, -1
  br i1 %cmp30.not, label %if.end28.cleanup39_crit_edge, label %if.then32

if.end28.cleanup39_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.then32:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl32xx_init_regs, %if.then.i78)) #6
          to label %do.end.i82 [label %if.then.i78], !srcloc !68

if.then.i78:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %client.i75 = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %37 = ptrtoint ptr %client.i75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client.i75, align 4
  %dev.i76 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %conv.i77 = zext i8 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i76, ptr noundef nonnull @.str.4, i32 noundef %conv.i77, i32 noundef 0) #6
  br label %do.end.i82

do.end.i82:                                       ; preds = %if.then.i78, %if.then32
  %client4.i79 = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %39 = ptrtoint ptr %client4.i79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client4.i79, align 4
  %call5.i80 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext %36, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i80)
  %tobool6.not.i81 = icmp eq i32 %call5.i80, 0
  br i1 %tobool6.not.i81, label %do.end.i82.cleanup39_crit_edge, label %do.end.i82.cleanup39.sink.split_crit_edge

do.end.i82.cleanup39.sink.split_crit_edge:        ; preds = %do.end.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39.sink.split

do.end.i82.cleanup39_crit_edge:                   ; preds = %do.end.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

cleanup39.sink.split:                             ; preds = %do.end.i82.cleanup39.sink.split_crit_edge, %do.end.i.i71.cleanup39.sink.split_crit_edge, %do.end.i.cleanup39.sink.split_crit_edge, %do.end.i.i.cleanup39.sink.split_crit_edge
  %client4.i79.sink = phi ptr [ %client4.i.i, %do.end.i.i.cleanup39.sink.split_crit_edge ], [ %client4.i.i68, %do.end.i.i71.cleanup39.sink.split_crit_edge ], [ %client4.i79, %do.end.i82.cleanup39.sink.split_crit_edge ], [ %client.i, %do.end.i.cleanup39.sink.split_crit_edge ]
  %.sink = phi i8 [ %3, %do.end.i.i.cleanup39.sink.split_crit_edge ], [ %28, %do.end.i.i71.cleanup39.sink.split_crit_edge ], [ %36, %do.end.i82.cleanup39.sink.split_crit_edge ], [ %conv17, %do.end.i.cleanup39.sink.split_crit_edge ]
  %call5.i80.sink = phi i32 [ %call5.i.i, %do.end.i.i.cleanup39.sink.split_crit_edge ], [ %call5.i.i69, %do.end.i.i71.cleanup39.sink.split_crit_edge ], [ %call5.i80, %do.end.i82.cleanup39.sink.split_crit_edge ], [ %call5.i, %do.end.i.cleanup39.sink.split_crit_edge ]
  %41 = ptrtoint ptr %client4.i79.sink to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client4.i79.sink, align 4
  %dev12.i83 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  %conv13.i84 = zext i8 %.sink to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i83, ptr noundef nonnull @.str.5, i32 noundef %conv13.i84, i32 noundef %call5.i80.sink) #9
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup39.sink.split, %do.end.i82.cleanup39_crit_edge, %if.end28.cleanup39_crit_edge, %is31fl32xx_software_shutdown.exit.cleanup39_crit_edge, %is31fl32xx_reset_regs.exit.cleanup39_crit_edge
  %retval.1 = phi i32 [ %call9.i, %is31fl32xx_reset_regs.exit.cleanup39_crit_edge ], [ %call13.i, %is31fl32xx_software_shutdown.exit.cleanup39_crit_edge ], [ 0, %if.end28.cleanup39_crit_edge ], [ 0, %do.end.i82.cleanup39_crit_edge ], [ %call5.i80.sink, %cleanup39.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is31fl32xx_brightness_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.is31fl32xx_led_data, ptr %led_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_brightness_set.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl32xx_brightness_set, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_brightness_set.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %brightness) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pwm_registers_reversed = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %pwm_registers_reversed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pwm_registers_reversed, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  %channel = getelementptr inbounds %struct.is31fl32xx_led_data, ptr %led_cdev, i32 0, i32 1
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel, align 4
  %sub = sub i8 %9, %11
  br label %if.end13

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %channel9 = getelementptr inbounds %struct.is31fl32xx_led_data, ptr %led_cdev, i32 0, i32 1
  %12 = ptrtoint ptr %channel9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %channel9, align 4
  %sub11 = add i8 %13, -1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6
  %pwm_register_offset.0 = phi i8 [ %sub, %if.then6 ], [ %sub11, %if.else ]
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %pwm_register_base = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %pwm_register_base to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pwm_register_base, align 1
  %add = add i8 %17, %pwm_register_offset.0
  %conv18 = trunc i32 %brightness to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl32xx_brightness_set, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %conv.i = zext i8 %add to i32
  %conv3.i = and i32 %brightness, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %conv3.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end13
  %client4.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client4.i, align 4
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext %add, i8 noundef zeroext %conv18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end22, label %do.end.i.cleanup.sink.split_crit_edge

do.end.i.cleanup.sink.split_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end22:                                         ; preds = %do.end.i
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %pwm_update_reg = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %pwm_update_reg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pwm_update_reg, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl32xx_brightness_set, %if.then.i41)) #6
          to label %do.end.i45 [label %if.then.i41], !srcloc !68

if.then.i41:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %client.i38 = getelementptr inbounds %struct.is31fl32xx_priv, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %client.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client.i38, align 4
  %dev.i39 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %conv.i40 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i39, ptr noundef nonnull @.str.4, i32 noundef %conv.i40, i32 noundef 0) #6
  br label %do.end.i45

do.end.i45:                                       ; preds = %if.then.i41, %if.end22
  %client4.i42 = getelementptr inbounds %struct.is31fl32xx_priv, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %client4.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client4.i42, align 4
  %call5.i43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext %25, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i43)
  %tobool6.not.i44 = icmp eq i32 %call5.i43, 0
  br i1 %tobool6.not.i44, label %do.end.i45.cleanup_crit_edge, label %do.end.i45.cleanup.sink.split_crit_edge

do.end.i45.cleanup.sink.split_crit_edge:          ; preds = %do.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end.i45.cleanup_crit_edge:                     ; preds = %do.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end.i45.cleanup.sink.split_crit_edge, %do.end.i.cleanup.sink.split_crit_edge
  %client4.i42.sink = phi ptr [ %client4.i, %do.end.i.cleanup.sink.split_crit_edge ], [ %client4.i42, %do.end.i45.cleanup.sink.split_crit_edge ]
  %.sink = phi i8 [ %add, %do.end.i.cleanup.sink.split_crit_edge ], [ %25, %do.end.i45.cleanup.sink.split_crit_edge ]
  %call5.i43.sink = phi i32 [ %call5.i, %do.end.i.cleanup.sink.split_crit_edge ], [ %call5.i43, %do.end.i45.cleanup.sink.split_crit_edge ]
  %30 = ptrtoint ptr %client4.i42.sink to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client4.i42.sink, align 4
  %dev12.i46 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  %conv13.i47 = zext i8 %.sink to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i46, ptr noundef nonnull @.str.5, i32 noundef %conv13.i47, i32 noundef %call5.i43.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.i45.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.i45.cleanup_crit_edge ], [ %call5.i43.sink, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is31fl3216_reset(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl3216_reset, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 128) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %client4.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client4.i, align 4
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext -128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %for.cond.preheader, label %is31fl32xx_write.exit.thread

for.cond.preheader:                               ; preds = %do.end.i
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp85.not = icmp eq i8 %7, 0
  br i1 %cmp85.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

is31fl32xx_write.exit.thread:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client4.i, align 4
  %dev12.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef %call5.i) #9
  br label %cleanup

for.cond:                                         ; preds = %do.end.i47
  %inc = add nuw nsw i32 %i.086, 1
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %14 = phi ptr [ %11, %for.cond.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %i.086 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %pwm_register_base = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %pwm_register_base to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pwm_register_base, align 1
  %17 = trunc i32 %i.086 to i8
  %conv4 = add i8 %16, %17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl3216_reset, %if.then.i43)) #6
          to label %do.end.i47 [label %if.then.i43], !srcloc !68

if.then.i43:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client4.i, align 4
  %dev.i42 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %conv.i = zext i8 %conv4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i42, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef 0) #6
  br label %do.end.i47

do.end.i47:                                       ; preds = %if.then.i43, %for.body
  %20 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client4.i, align 4
  %call5.i45 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext %conv4, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i45)
  %tobool6.not.i46 = icmp eq i32 %call5.i45, 0
  br i1 %tobool6.not.i46, label %for.cond, label %is31fl32xx_write.exit50

is31fl32xx_write.exit50:                          ; preds = %do.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client4.i, align 4
  %dev12.i48 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  %conv13.i = zext i8 %conv4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i48, ptr noundef nonnull @.str.5, i32 noundef %conv13.i, i32 noundef %call5.i45) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %5, %for.cond.preheader.for.end_crit_edge ], [ %11, %for.cond.for.end_crit_edge ]
  %pwm_update_reg = getelementptr inbounds %struct.is31fl32xx_chipdef, ptr %.lcssa, i32 0, i32 2
  %24 = ptrtoint ptr %pwm_update_reg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pwm_update_reg, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl3216_reset, %if.then.i54)) #6
          to label %do.end.i58 [label %if.then.i54], !srcloc !68

if.then.i54:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client4.i, align 4
  %dev.i52 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %conv.i53 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i52, ptr noundef nonnull @.str.4, i32 noundef %conv.i53, i32 noundef 0) #6
  br label %do.end.i58

do.end.i58:                                       ; preds = %if.then.i54, %for.end
  %28 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client4.i, align 4
  %call5.i56 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext %25, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i56)
  %tobool6.not.i57 = icmp eq i32 %call5.i56, 0
  br i1 %tobool6.not.i57, label %if.end13, label %is31fl32xx_write.exit62

is31fl32xx_write.exit62:                          ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client4.i, align 4
  %dev12.i59 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  %conv13.i60 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i59, ptr noundef nonnull @.str.5, i32 noundef %conv13.i60, i32 noundef %call5.i56) #9
  br label %cleanup

if.end13:                                         ; preds = %do.end.i58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl3216_reset, %if.then.i65)) #6
          to label %do.end.i69 [label %if.then.i65], !srcloc !68

if.then.i65:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client4.i, align 4
  %dev.i64 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i64, ptr noundef nonnull @.str.4, i32 noundef 3, i32 noundef 0) #6
  br label %do.end.i69

do.end.i69:                                       ; preds = %if.then.i65, %if.end13
  %34 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client4.i, align 4
  %call5.i67 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i67)
  %tobool6.not.i68 = icmp eq i32 %call5.i67, 0
  br i1 %tobool6.not.i68, label %if.end17, label %is31fl32xx_write.exit72

is31fl32xx_write.exit72:                          ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client4.i, align 4
  %dev12.i70 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i70, ptr noundef nonnull @.str.5, i32 noundef 3, i32 noundef %call5.i67) #9
  br label %cleanup

if.end17:                                         ; preds = %do.end.i69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl3216_reset, %if.then.i75)) #6
          to label %do.end.i79 [label %if.then.i75], !srcloc !68

if.then.i75:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client4.i, align 4
  %dev.i74 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i74, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef 0) #6
  br label %do.end.i79

do.end.i79:                                       ; preds = %if.then.i75, %if.end17
  %40 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client4.i, align 4
  %call5.i77 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 4, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i77)
  %tobool6.not.i78 = icmp eq i32 %call5.i77, 0
  br i1 %tobool6.not.i78, label %do.end.i79.cleanup_crit_edge, label %do.end10.i81

do.end.i79.cleanup_crit_edge:                     ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end10.i81:                                     ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client4.i, align 4
  %dev12.i80 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i80, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef %call5.i77) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end10.i81, %do.end.i79.cleanup_crit_edge, %is31fl32xx_write.exit72, %is31fl32xx_write.exit62, %is31fl32xx_write.exit50, %is31fl32xx_write.exit.thread
  %retval.0 = phi i32 [ %call5.i45, %is31fl32xx_write.exit50 ], [ %call5.i56, %is31fl32xx_write.exit62 ], [ %call5.i67, %is31fl32xx_write.exit72 ], [ %call5.i, %is31fl32xx_write.exit.thread ], [ 0, %do.end.i79.cleanup_crit_edge ], [ %call5.i77, %do.end10.i81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is31fl3216_software_shutdown(ptr nocapture noundef readonly %priv, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %enable, i8 -128, i8 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is31fl3216_software_shutdown, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv3.i = zext i8 %conv to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @is31fl32xx_write.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv3.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %client4.i = getelementptr inbounds %struct.is31fl32xx_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client4.i, align 4
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.end.i.is31fl32xx_write.exit_crit_edge, label %do.end10.i

do.end.i.is31fl32xx_write.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %is31fl32xx_write.exit

do.end10.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %client4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client4.i, align 4
  %dev12.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef %call5.i) #9
  br label %is31fl32xx_write.exit

is31fl32xx_write.exit:                            ; preds = %do.end10.i, %do.end.i.is31fl32xx_write.exit_crit_edge
  ret i32 %call5.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_leds_is31fl32xx__290_493_is31fl32xx_driver_init6, !1, !"__initcall__kmod_leds_is31fl32xx__290_493_is31fl32xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 493, i32 1}
!2 = !{ptr @__exitcall_is31fl32xx_driver_exit, !1, !"__exitcall_is31fl32xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 495, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 496, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 497, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 485, i32 11}
!12 = !{ptr @is31fl32xx_driver, !13, !"is31fl32xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 483, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 142, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @is31fl32xx_write.__UNIQUE_ID_ddebug288, !15, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 146, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @is31fl32xx_write._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @is31fl32xx_write._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 386, i32 4}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @is31fl32xx_parse_dt._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @is31fl32xx_parse_dt._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 398, i32 4}
!33 = !{ptr @is31fl32xx_parse_dt._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @is31fl32xx_parse_dt._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 336, i32 36}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 338, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @is31fl32xx_parse_child_dt._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @is31fl32xx_parse_child_dt._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 232, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @is31fl32xx_brightness_set.__UNIQUE_ID_ddebug289, !43, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!46 = !{ptr @of_is31fl32xx_match, !47, !"of_is31fl32xx_match", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 413, i32 34}
!48 = !{ptr @is31fl3236_cdef, !49, !"is31fl3236_cdef", i1 false, i1 false}
!49 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 88, i32 40}
!50 = !{ptr @is31fl3235_cdef, !51, !"is31fl3235_cdef", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 99, i32 40}
!52 = !{ptr @is31fl3218_cdef, !53, !"is31fl3218_cdef", i1 false, i1 false}
!53 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 110, i32 40}
!54 = !{ptr @is31fl3216_cdef, !55, !"is31fl3216_cdef", i1 false, i1 false}
!55 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 124, i32 40}
!56 = !{ptr @is31fl32xx_id, !57, !"is31fl32xx_id", i1 false, i1 false}
!57 = !{!"../drivers/leds/leds-is31fl32xx.c", i32 471, i32 35}
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
!68 = !{i64 2148288875, i64 2148288880, i64 2148288893, i64 2148288937, i64 2148288971, i64 2148288992}
!69 = !{i8 0, i8 2}
