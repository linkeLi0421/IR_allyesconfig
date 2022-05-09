; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-tlc591xx.c_pt.bc'
source_filename = "../drivers/leds/leds-tlc591xx.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tlc591xx = type { i32, i32 }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.tlc591xx_priv = type { [16 x %struct.tlc591xx_led], ptr, i32 }
%struct.tlc591xx_led = type { i8, i32, %struct.led_classdev, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_tlc591xx__288_238_tlc591xx_driver_init6 = internal global ptr @tlc591xx_driver_init, section ".initcall6.init", align 4
@tlc591xx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tlc591xx_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_tlc591xx_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tlc591xx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tlc591xx_driver_exit = internal global ptr @tlc591xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"leds_tlc591xx.author=Andrew Lunn <andrew@lunn.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [46 x i8] c"leds_tlc591xx.file=drivers/leds/leds-tlc591xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [26 x i8] c"leds_tlc591xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [46 x i8] c"leds_tlc591xx.description=TLC591XX LED driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tlc591xx\00", [23 x i8] zeroinitializer }, align 32
@of_tlc591xx_leds_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlc59116\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tlc59116 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlc59108\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tlc59108 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tlc591xx_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tlc59116\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tlc59108\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tlc591xx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tlc591xx_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"leds_tlc591xx:173:(&tlc591xx_regmap)->lock\00", [53 x i8] zeroinitializer }, align 32
@tlc591xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tlc591xx_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/leds/leds-tlc591xx.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tlc591xx_probe._entry_ptr = internal global ptr @tlc591xx_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't register LED %s\0A\00", [38 x i8] zeroinitializer }, align 32
@tlc59116 = internal constant { %struct.tlc591xx, [24 x i8] } { %struct.tlc591xx { i32 16, i32 20 }, [24 x i8] zeroinitializer }, align 32
@tlc59108 = internal constant { %struct.tlc591xx, [24 x i8] } { %struct.tlc591xx { i32 8, i32 12 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"tlc591xx_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 229, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 231, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [23 x i8] c"of_tlc591xx_leds_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 138, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"tlc591xx_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 222, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"tlc591xx_regmap\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 132, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 173, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 176, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 193, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 215, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"tlc59116\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 61, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"tlc59108\00", align 1
@___asan_gen_.58 = private constant [32 x i8] c"../drivers/leds/leds-tlc591xx.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 66, i32 30 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_tlc591xx_driver_exit, ptr @__initcall__kmod_leds_tlc591xx__288_238_tlc591xx_driver_init6, ptr @tlc591xx_driver_exit, ptr @tlc591xx_probe._entry, ptr @tlc591xx_probe._entry_ptr, ptr @tlc591xx_driver, ptr @.str, ptr @of_tlc591xx_leds_match, ptr @tlc591xx_id, ptr @tlc591xx_probe._key, ptr @tlc591xx_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @tlc59116, ptr @tlc59108], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc591xx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_tlc591xx_leds_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc591xx_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc591xx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc591xx_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc591xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc59116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc59108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tlc591xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tlc591xx_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tlc591xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @tlc591xx_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlc591xx_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %init_data = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !48
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.cleanup58_crit_edge, label %dev_of_node.exit

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

dev_of_node.exit:                                 ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup58_crit_edge, label %if.end

dev_of_node.exit.cleanup58_crit_edge:             ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

if.end:                                           ; preds = %dev_of_node.exit
  %call2 = tail call ptr @device_get_match_data(ptr noundef nonnull %dev1) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup58_crit_edge, label %if.end5

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

if.end5:                                          ; preds = %if.end
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %2, ptr noundef null) #5
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end5.cleanup58_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.cleanup58_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end5.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %2, ptr noundef nonnull %child.06.i) #5
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool7.not = icmp eq i32 %inc.i, 0
  br i1 %tobool7.not, label %of_get_available_child_count.exit.cleanup58_crit_edge, label %lor.lhs.false

of_get_available_child_count.exit.cleanup58_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

lor.lhs.false:                                    ; preds = %of_get_available_child_count.exit
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %4)
  %cmp = icmp ugt i32 %inc.i, %4
  br i1 %cmp, label %lor.lhs.false.cleanup58_crit_edge, label %if.end9

lor.lhs.false.cleanup58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

if.end9:                                          ; preds = %lor.lhs.false
  %call.i110 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev1, i32 noundef 6600, i32 noundef 3520) #5
  %tobool11.not = icmp eq ptr %call.i110, null
  br i1 %tobool11.not, label %if.end9.cleanup58_crit_edge, label %if.end13

if.end9.cleanup58_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tlc591xx_regmap, ptr noundef nonnull @tlc591xx_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.tlc591xx_priv, ptr %call.i110, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.2, i32 noundef %6) #8
  br label %cleanup58

if.end20:                                         ; preds = %if.end13
  %reg_ledout_offset = getelementptr inbounds %struct.tlc591xx, ptr %call2, i32 0, i32 1
  %7 = ptrtoint ptr %reg_ledout_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_ledout_offset, align 4
  %reg_ledout_offset21 = getelementptr inbounds %struct.tlc591xx_priv, ptr %call.i110, i32 0, i32 2
  %9 = ptrtoint ptr %reg_ledout_offset21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg_ledout_offset21, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i110, ptr %driver_data.i.i, align 4
  %call.i111 = tail call i32 @regmap_write(ptr noundef %call14, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i112 = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i112, label %if.end.i113, label %if.end20.tlc591xx_set_mode.exit_crit_edge

if.end20.tlc591xx_set_mode.exit_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %tlc591xx_set_mode.exit

if.end.i113:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @regmap_write(ptr noundef %call14, i32 noundef 1, i32 noundef 0) #5
  br label %tlc591xx_set_mode.exit

tlc591xx_set_mode.exit:                           ; preds = %if.end.i113, %if.end20.tlc591xx_set_mode.exit_crit_edge
  %retval.0.i114 = phi i32 [ %call3.i, %if.end.i113 ], [ %call.i111, %if.end20.tlc591xx_set_mode.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i114)
  %cmp24 = icmp slt i32 %retval.0.i114, 0
  br i1 %cmp24, label %tlc591xx_set_mode.exit.cleanup58_crit_edge, label %if.end26

tlc591xx_set_mode.exit.cleanup58_crit_edge:       ; preds = %tlc591xx_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

if.end26:                                         ; preds = %tlc591xx_set_mode.exit
  %call27 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %2, ptr noundef null) #5
  %cmp28.not126 = icmp eq ptr %call27, null
  br i1 %cmp28.not126, label %if.end26.cleanup58_crit_edge, label %for.body.preheader

if.end26.cleanup58_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

for.body.preheader:                               ; preds = %if.end26
  %11 = getelementptr inbounds i8, ptr %init_data, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %child.0127 = phi ptr [ %call57, %for.inc.for.body_crit_edge ], [ %call27, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #5
  %12 = call ptr @memset(ptr %11, i32 0, i32 12)
  %fwnode = getelementptr inbounds %struct.device_node, ptr %child.0127, i32 0, i32 3
  %13 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fwnode, ptr %init_data, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0127, ptr noundef nonnull @.str.7, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool33.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %child.0127) #5
  br label %cleanup.thread

if.end35:                                         ; preds = %for.body
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp36 = icmp slt i32 %15, 0
  br i1 %cmp36, label %if.end35.if.then42_crit_edge, label %lor.lhs.false37

if.end35.if.then42_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false37:                                  ; preds = %if.end35
  %16 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp39.not = icmp ult i32 %15, %17
  br i1 %cmp39.not, label %lor.lhs.false40, label %lor.lhs.false37.if.then42_crit_edge

lor.lhs.false37.if.then42_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %arrayidx = getelementptr [16 x %struct.tlc591xx_led], ptr %call.i110, i32 0, i32 %15
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool41.not = icmp eq i8 %19, 0
  br i1 %tobool41.not, label %if.end43, label %lor.lhs.false40.if.then42_crit_edge

lor.lhs.false40.if.then42_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false40.if.then42_crit_edge, %lor.lhs.false37.if.then42_crit_edge, %if.end35.if.then42_crit_edge
  call void @of_node_put(ptr noundef nonnull %child.0127) #5
  br label %cleanup.thread

if.end43:                                         ; preds = %lor.lhs.false40
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %arrayidx, align 4
  %priv47 = getelementptr [16 x %struct.tlc591xx_led], ptr %call.i110, i32 0, i32 %15, i32 3
  %21 = ptrtoint ptr %priv47 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i110, ptr %priv47, align 4
  %led_no = getelementptr [16 x %struct.tlc591xx_led], ptr %call.i110, i32 0, i32 %15, i32 1
  %22 = ptrtoint ptr %led_no to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %led_no, align 4
  %ldev = getelementptr [16 x %struct.tlc591xx_led], ptr %call.i110, i32 0, i32 %15, i32 2
  %brightness_set_blocking = getelementptr [16 x %struct.tlc591xx_led], ptr %call.i110, i32 0, i32 %15, i32 2, i32 6
  %23 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tlc591xx_brightness_set, ptr %brightness_set_blocking, align 4
  %max_brightness = getelementptr [16 x %struct.tlc591xx_led], ptr %call.i110, i32 0, i32 %15, i32 2, i32 2
  %24 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %max_brightness, align 4
  %call50 = call i32 @devm_led_classdev_register_ext(ptr noundef nonnull %dev1, ptr noundef %ldev, ptr noundef nonnull %init_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %for.inc

if.then52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %child.0127) #5
  %25 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ldev, align 4
  %call54 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef nonnull %dev1, i32 noundef %call50, ptr noundef nonnull @.str.8, ptr noundef %26) #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then52, %if.then42, %if.then34
  %retval.1.ph = phi i32 [ %call.i.i, %if.then34 ], [ -22, %if.then42 ], [ %call54, %if.then52 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #5
  br label %cleanup58

for.inc:                                          ; preds = %if.end43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #5
  %call57 = call ptr @of_get_next_available_child(ptr noundef nonnull %2, ptr noundef nonnull %child.0127) #5
  %cmp28.not = icmp eq ptr %call57, null
  br i1 %cmp28.not, label %for.inc.cleanup58_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup58_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

cleanup58:                                        ; preds = %for.inc.cleanup58_crit_edge, %cleanup.thread, %if.end26.cleanup58_crit_edge, %tlc591xx_set_mode.exit.cleanup58_crit_edge, %if.then17, %if.end9.cleanup58_crit_edge, %lor.lhs.false.cleanup58_crit_edge, %of_get_available_child_count.exit.cleanup58_crit_edge, %if.end5.cleanup58_crit_edge, %if.end.cleanup58_crit_edge, %dev_of_node.exit.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.2 = phi i32 [ %6, %if.then17 ], [ -19, %dev_of_node.exit.cleanup58_crit_edge ], [ -19, %if.end.cleanup58_crit_edge ], [ -22, %lor.lhs.false.cleanup58_crit_edge ], [ -22, %of_get_available_child_count.exit.cleanup58_crit_edge ], [ -12, %if.end9.cleanup58_crit_edge ], [ %retval.0.i114, %tlc591xx_set_mode.exit.cleanup58_crit_edge ], [ %retval.1.ph, %cleanup.thread ], [ -19, %entry.cleanup58_crit_edge ], [ -22, %if.end5.cleanup58_crit_edge ], [ 0, %if.end26.cleanup58_crit_edge ], [ 0, %for.inc.cleanup58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlc591xx_brightness_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %led_cdev, i32 400
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = zext i32 %brightness to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %brightness, label %sw.default [
    i32 0, label %sw.bb
    i32 256, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %led_no.i = getelementptr i8, ptr %led_cdev, i32 -4
  %3 = ptrtoint ptr %led_no.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %led_no.i, align 4
  %rem.i = shl i32 %4, 1
  %mul.i = and i32 %rem.i, 6
  %shl.i = shl nuw nsw i32 3, %mul.i
  %reg_ledout_offset.i = getelementptr inbounds %struct.tlc591xx_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %reg_ledout_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_ledout_offset.i, align 4
  %shr.i = lshr i32 %4, 2
  %add.i = add i32 %6, %shr.i
  %regmap.i = getelementptr inbounds %struct.tlc591xx_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %led_no.i15 = getelementptr i8, ptr %led_cdev, i32 -4
  %9 = ptrtoint ptr %led_no.i15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %led_no.i15, align 4
  %rem.i16 = shl i32 %10, 1
  %mul.i17 = and i32 %rem.i16, 6
  %shl.i18 = shl nuw nsw i32 3, %mul.i17
  %reg_ledout_offset.i19 = getelementptr inbounds %struct.tlc591xx_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %reg_ledout_offset.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_ledout_offset.i19, align 4
  %shr.i20 = lshr i32 %10, 2
  %add.i21 = add i32 %12, %shr.i20
  %shl2.i = shl nuw nsw i32 1, %mul.i17
  %regmap.i22 = getelementptr inbounds %struct.tlc591xx_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i22, align 4
  %call.i.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %add.i21, i32 noundef %shl.i18, i32 noundef %shl2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %led_no.i24 = getelementptr i8, ptr %led_cdev, i32 -4
  %15 = ptrtoint ptr %led_no.i24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %led_no.i24, align 4
  %rem.i25 = shl i32 %16, 1
  %mul.i26 = and i32 %rem.i25, 6
  %shl.i27 = shl nuw nsw i32 3, %mul.i26
  %reg_ledout_offset.i28 = getelementptr inbounds %struct.tlc591xx_priv, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %reg_ledout_offset.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_ledout_offset.i28, align 4
  %shr.i29 = lshr i32 %16, 2
  %add.i30 = add i32 %18, %shr.i29
  %shl2.i31 = shl nuw nsw i32 2, %mul.i26
  %regmap.i32 = getelementptr inbounds %struct.tlc591xx_priv, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i32, align 4
  %call.i.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %add.i30, i32 noundef %shl.i27, i32 noundef %shl2.i31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool.not = icmp eq i32 %call.i.i34, 0
  br i1 %tobool.not, label %if.then, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %led_no.i24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %led_no.i24, align 4
  %conv.i = add i32 %22, 2
  %23 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i32, align 4
  %conv1.i = and i32 %conv.i, 255
  %conv2.i = and i32 %brightness, 255
  %call.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef %conv1.i, i32 noundef %conv2.i) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default.sw.epilog_crit_edge, %sw.bb2, %sw.bb
  %err.0 = phi i32 [ %call.i.i34, %sw.default.sw.epilog_crit_edge ], [ %call.i, %if.then ], [ %call.i.i23, %sw.bb2 ], [ %call.i.i, %sw.bb ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_leds_tlc591xx__288_238_tlc591xx_driver_init6, !1, !"__initcall__kmod_leds_tlc591xx__288_238_tlc591xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-tlc591xx.c", i32 238, i32 1}
!2 = !{ptr @__exitcall_tlc591xx_driver_exit, !1, !"__exitcall_tlc591xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-tlc591xx.c", i32 240, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-tlc591xx.c", i32 241, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/leds/leds-tlc591xx.c", i32 242, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-tlc591xx.c", i32 231, i32 11}
!12 = !{ptr @tlc591xx_driver, !13, !"tlc591xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-tlc591xx.c", i32 229, i32 26}
!14 = !{ptr @tlc591xx_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-tlc591xx.c", i32 173, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/leds/leds-tlc591xx.c", i32 176, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tlc591xx_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tlc591xx_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-tlc591xx.c", i32 193, i32 37}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-tlc591xx.c", i32 215, i32 11}
!29 = !{ptr @tlc591xx_regmap, !30, !"tlc591xx_regmap", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-tlc591xx.c", i32 132, i32 35}
!31 = !{ptr @of_tlc591xx_leds_match, !32, !"of_tlc591xx_leds_match", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-tlc591xx.c", i32 138, i32 34}
!33 = !{ptr @tlc59116, !34, !"tlc59116", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-tlc591xx.c", i32 61, i32 30}
!35 = !{ptr @tlc59108, !36, !"tlc59108", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-tlc591xx.c", i32 66, i32 30}
!37 = !{ptr @tlc591xx_id, !38, !"tlc591xx_id", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-tlc591xx.c", i32 222, i32 35}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i8 0, i8 2}
