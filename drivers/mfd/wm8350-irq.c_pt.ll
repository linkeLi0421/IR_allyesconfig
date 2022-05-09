; ModuleID = '/llk/IR_all_yes/drivers/mfd/wm8350-irq.c_pt.bc'
source_filename = "../drivers/mfd/wm8350-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wm8350_irq_data = type { i32, i32, i32, i32 }
%struct.wm8350 = type { ptr, ptr, i8, %struct.mutex, %struct.completion, %struct.mutex, i32, i32, [7 x i16], %struct.wm8350_codec, %struct.wm8350_gpio, %struct.wm8350_hwmon, %struct.wm8350_pmic, %struct.wm8350_power, %struct.wm8350_rtc, %struct.wm8350_wdt }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wm8350_codec = type { ptr, ptr }
%struct.wm8350_gpio = type { ptr }
%struct.wm8350_hwmon = type { ptr, ptr }
%struct.wm8350_pmic = type { i32, i32, i32, i32, i16, i16, i16, i16, [12 x ptr], [2 x %struct.wm8350_led] }
%struct.wm8350_led = type { ptr, %struct.work_struct, %struct.spinlock, i32, %struct.led_classdev, i32, i32, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.wm8350_power = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wm8350_rtc = type { ptr, ptr, i32, i32 }
%struct.wm8350_wdt = type { ptr }
%struct.wm8350_platform_data = type { ptr, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@wm8350_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 471, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No interrupt support, no core IRQ\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm8350_irq_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/wm8350-irq.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8350_irq_init._entry_ptr = internal global ptr @wm8350_irq_init._entry, section ".printk_index", align 4
@wm8350_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&wm8350->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@wm8350_irq_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 499, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Allocating irqs failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8350_irq_init._entry_ptr.8 = internal global ptr @wm8350_irq_init._entry.6, section ".printk_index", align 4
@wm8350_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.9, ptr null, ptr null, ptr @wm8350_irq_enable, ptr @wm8350_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8350_irq_lock, ptr @wm8350_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8350\00", [25 x i8] zeroinitializer }, align 32
@wm8350_irq_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 530, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@wm8350_irq_init._entry_ptr.13 = internal global ptr @wm8350_irq_init._entry.10, section ".printk_index", align 4
@wm8350_irqs = internal constant { [63 x %struct.wm8350_irq_data], [240 x i8] } { [63 x %struct.wm8350_irq_data] [%struct.wm8350_irq_data { i32 4, i32 0, i32 32768, i32 0 }, %struct.wm8350_irq_data { i32 4, i32 0, i32 16384, i32 0 }, %struct.wm8350_irq_data { i32 4, i32 0, i32 8192, i32 0 }, %struct.wm8350_irq_data { i32 4, i32 0, i32 4096, i32 0 }, %struct.wm8350_irq_data { i32 4, i32 0, i32 2048, i32 0 }, %struct.wm8350_irq_data { i32 4, i32 0, i32 1024, i32 0 }, %struct.wm8350_irq_data { i32 4, i32 0, i32 512, i32 0 }, %struct.wm8350_irq_data { i32 16, i32 0, i32 128, i32 0 }, %struct.wm8350_irq_data { i32 16, i32 0, i32 64, i32 0 }, %struct.wm8350_irq_data { i32 16, i32 0, i32 32, i32 0 }, %struct.wm8350_irq_data { i32 4, i32 0, i32 4, i32 0 }, %struct.wm8350_irq_data { i32 4, i32 0, i32 2, i32 0 }, %struct.wm8350_irq_data { i32 4, i32 0, i32 1, i32 0 }, %struct.wm8350_irq_data { i32 512, i32 1, i32 8192, i32 0 }, %struct.wm8350_irq_data { i32 512, i32 1, i32 4096, i32 0 }, %struct.wm8350_irq_data { i32 2, i32 1, i32 1024, i32 1 }, %struct.wm8350_irq_data { i32 32, i32 1, i32 256, i32 0 }, %struct.wm8350_irq_data { i32 32, i32 1, i32 128, i32 0 }, %struct.wm8350_irq_data { i32 32, i32 1, i32 64, i32 0 }, %struct.wm8350_irq_data { i32 32, i32 1, i32 32, i32 0 }, %struct.wm8350_irq_data { i32 32, i32 1, i32 16, i32 0 }, %struct.wm8350_irq_data { i32 8, i32 1, i32 8, i32 0 }, %struct.wm8350_irq_data { i32 8, i32 1, i32 4, i32 0 }, %struct.wm8350_irq_data { i32 8, i32 1, i32 2, i32 0 }, %struct.wm8350_irq_data { i32 8, i32 1, i32 1, i32 0 }, %struct.wm8350_irq_data { i32 4096, i32 3, i32 2048, i32 0 }, %struct.wm8350_irq_data { i32 4096, i32 3, i32 1024, i32 0 }, %struct.wm8350_irq_data { i32 4096, i32 3, i32 512, i32 0 }, %struct.wm8350_irq_data { i32 4096, i32 3, i32 256, i32 0 }, %struct.wm8350_irq_data { i32 4096, i32 3, i32 32, i32 0 }, %struct.wm8350_irq_data { i32 4096, i32 3, i32 16, i32 0 }, %struct.wm8350_irq_data { i32 4096, i32 3, i32 8, i32 0 }, %struct.wm8350_irq_data { i32 4096, i32 3, i32 4, i32 0 }, %struct.wm8350_irq_data { i32 4096, i32 3, i32 2, i32 0 }, %struct.wm8350_irq_data { i32 4096, i32 3, i32 1, i32 0 }, %struct.wm8350_irq_data { i32 8192, i32 4, i32 32768, i32 1 }, %struct.wm8350_irq_data { i32 256, i32 6, i32 32768, i32 0 }, %struct.wm8350_irq_data { i32 256, i32 6, i32 16384, i32 0 }, %struct.wm8350_irq_data { i32 256, i32 6, i32 8192, i32 0 }, %struct.wm8350_irq_data { i32 128, i32 6, i32 2048, i32 0 }, %struct.wm8350_irq_data { i32 128, i32 6, i32 1024, i32 0 }, %struct.wm8350_irq_data { i32 128, i32 6, i32 512, i32 0 }, %struct.wm8350_irq_data { i32 128, i32 6, i32 256, i32 0 }, %struct.wm8350_irq_data { i32 1, i32 6, i32 64, i32 0 }, %struct.wm8350_irq_data { i32 1, i32 6, i32 32, i32 0 }, %struct.wm8350_irq_data { i32 1, i32 6, i32 16, i32 0 }, %struct.wm8350_irq_data { i32 1, i32 6, i32 8, i32 0 }, %struct.wm8350_irq_data { i32 1, i32 6, i32 4, i32 0 }, %struct.wm8350_irq_data { i32 1, i32 6, i32 2, i32 0 }, %struct.wm8350_irq_data { i32 1, i32 6, i32 1, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 1, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 2, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 4, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 8, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 16, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 32, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 64, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 128, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 256, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 512, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 1024, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 2048, i32 0 }, %struct.wm8350_irq_data { i32 64, i32 5, i32 4096, i32 0 }], [240 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 471, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 489, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 498, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"wm8350_irq_chip\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 455, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 528, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 530, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"wm8350_irqs\00", align 1
@___asan_gen_.60 = private constant [28 x i8] c"../drivers/mfd/wm8350-irq.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 41, i32 31 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @wm8350_irq_init._entry, ptr @wm8350_irq_init._entry.10, ptr @wm8350_irq_init._entry.6, ptr @wm8350_irq_init._entry_ptr, ptr @wm8350_irq_init._entry_ptr.13, ptr @wm8350_irq_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @wm8350_irq_init.__key, ptr @.str.5, ptr @.str.7, ptr @wm8350_irq_chip, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @wm8350_irqs], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_irq_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_irq_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_irqs to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_irq_init(ptr noundef %wm8350, i32 noundef %irq, ptr noundef readonly %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool.not = icmp eq i32 %irq, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm8350, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 32, i16 noundef zeroext -1) #5
  %call1 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 33, i16 noundef zeroext -1) #5
  %call3 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 33) #5
  %arrayidx = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 8, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call3, ptr %arrayidx, align 2
  %call1.1 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 34, i16 noundef zeroext -1) #5
  %call3.1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 34) #5
  %arrayidx.1 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %call3.1, ptr %arrayidx.1, align 2
  %call1.2 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 35, i16 noundef zeroext -1) #5
  %call3.2 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 35) #5
  %arrayidx.2 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call3.2, ptr %arrayidx.2, align 2
  %call1.3 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 36, i16 noundef zeroext -1) #5
  %call3.3 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 36) #5
  %arrayidx.3 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call3.3, ptr %arrayidx.3, align 2
  %call1.4 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 37, i16 noundef zeroext -1) #5
  %call3.4 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 37) #5
  %arrayidx.4 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call3.4, ptr %arrayidx.4, align 2
  %call1.5 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 38, i16 noundef zeroext -1) #5
  %call3.5 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 38) #5
  %arrayidx.5 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 8, i32 5
  %7 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %call3.5, ptr %arrayidx.5, align 2
  %call1.6 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 39, i16 noundef zeroext -1) #5
  %call3.6 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 39) #5
  %arrayidx.6 = getelementptr %struct.wm8350, ptr %wm8350, i32 0, i32 8, i32 6
  %8 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call3.6, ptr %arrayidx.6, align 2
  %irq_lock = getelementptr inbounds %struct.wm8350, ptr %wm8350, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @wm8350_irq_init.__key) #5
  %chip_irq = getelementptr inbounds %struct.wm8350, ptr %wm8350, i32 0, i32 6
  %9 = ptrtoint ptr %chip_irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %irq, ptr %chip_irq, align 4
  %tobool7.not = icmp eq ptr %pdata, null
  br i1 %tobool7.not, label %if.end12, label %if.end12.thread

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef 63, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %irq_base14 = getelementptr inbounds %struct.wm8350, ptr %wm8350, i32 0, i32 7
  %10 = ptrtoint ptr %irq_base14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call13, ptr %irq_base14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp16 = icmp slt i32 %call13, 0
  br i1 %cmp16, label %if.end12.do.end20_crit_edge, label %if.end12.if.else_crit_edge

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end12.do.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

if.end12.thread:                                  ; preds = %if.end
  %irq_base8 = getelementptr inbounds %struct.wm8350_platform_data, ptr %pdata, i32 0, i32 2
  %11 = ptrtoint ptr %irq_base8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_base8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9 = icmp sgt i32 %12, 0
  %spec.select = select i1 %cmp9, i32 %12, i32 -1
  %call1393 = tail call i32 @__irq_alloc_descs(i32 noundef %spec.select, i32 noundef 0, i32 noundef 63, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %irq_base1494 = getelementptr inbounds %struct.wm8350, ptr %wm8350, i32 0, i32 7
  %13 = ptrtoint ptr %irq_base1494 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call1393, ptr %irq_base1494, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1393)
  %cmp1695 = icmp slt i32 %call1393, 0
  br i1 %cmp1695, label %if.end12.thread.do.end20_crit_edge, label %land.lhs.true25

if.end12.thread.do.end20_crit_edge:               ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

do.end20:                                         ; preds = %if.end12.thread.do.end20_crit_edge, %if.end12.do.end20_crit_edge
  %call1396 = phi i32 [ %call1393, %if.end12.thread.do.end20_crit_edge ], [ %call13, %if.end12.do.end20_crit_edge ]
  %14 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wm8350, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.7, i32 noundef %call1396) #8
  br label %cleanup

land.lhs.true25:                                  ; preds = %if.end12.thread
  %irq_high = getelementptr inbounds %struct.wm8350_platform_data, ptr %pdata, i32 0, i32 1
  %16 = ptrtoint ptr %irq_high to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  br i1 %tobool26.not, label %land.lhs.true25.if.else_crit_edge, label %if.then27

land.lhs.true25.if.else_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 @wm8350_set_bits(ptr noundef %wm8350, i16 noundef zeroext 3, i16 noundef zeroext 1) #5
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true25.if.else_crit_edge, %if.end12.if.else_crit_edge
  %irq_base1497101 = phi ptr [ %irq_base1494, %land.lhs.true25.if.else_crit_edge ], [ %irq_base14, %if.end12.if.else_crit_edge ]
  %call30 = tail call i32 @wm8350_clear_bits(ptr noundef %wm8350, i16 noundef zeroext 3, i16 noundef zeroext 1) #5
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  %irq_base149799 = phi ptr [ %irq_base1494, %if.then27 ], [ %irq_base1497101, %if.else ]
  %flags.0 = phi i32 [ 8196, %if.then27 ], [ 8200, %if.else ]
  %18 = ptrtoint ptr %irq_base149799 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_base149799, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %19)
  %cmp36104 = icmp ult i32 %19, -63
  br i1 %cmp36104, label %if.end31.for.body37_crit_edge, label %if.end31.for.end41_crit_edge

if.end31.for.end41_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end41

if.end31.for.body37_crit_edge:                    ; preds = %if.end31
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %if.end31.for.body37_crit_edge
  %cur_irq.0105 = phi i32 [ %inc40, %for.body37.for.body37_crit_edge ], [ %19, %if.end31.for.body37_crit_edge ]
  %call38 = tail call i32 @irq_set_chip_data(i32 noundef %cur_irq.0105, ptr noundef %wm8350) #5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %cur_irq.0105, ptr noundef nonnull @wm8350_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %cur_irq.0105, i32 noundef 0, i32 noundef 32768) #5
  tail call void @irq_modify_status(i32 noundef %cur_irq.0105, i32 noundef 3072, i32 noundef 0) #5
  %inc40 = add nuw i32 %cur_irq.0105, 1
  %20 = ptrtoint ptr %irq_base149799 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_base149799, align 4
  %add35 = add i32 %21, 63
  %cmp36 = icmp ult i32 %inc40, %add35
  br i1 %cmp36, label %for.body37.for.body37_crit_edge, label %for.body37.for.end41_crit_edge

for.body37.for.end41_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end41

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37

for.end41:                                        ; preds = %for.body37.for.end41_crit_edge, %if.end31.for.end41_crit_edge
  %call42 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef null, ptr noundef nonnull @wm8350_irq, i32 noundef %flags.0, ptr noundef nonnull @.str.9, ptr noundef %wm8350) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %for.end41.if.end49_crit_edge, label %do.end47

for.end41.if.end49_crit_edge:                     ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.end47:                                         ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wm8350, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11, i32 noundef %call42) #8
  br label %if.end49

if.end49:                                         ; preds = %do.end47, %for.end41.if.end49_crit_edge
  %call50 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 32, i16 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end20, %do.end
  %retval.0 = phi i32 [ 0, %do.end20 ], [ %call42, %if.end49 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wm8350_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_clear_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_irq(i32 noundef %irq, ptr noundef %irq_data) #0 align 64 {
entry:
  %sub_reg = alloca [7 x i16], align 2
  %read_done = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %sub_reg) #5
  %0 = call ptr @memset(ptr %sub_reg, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %read_done) #5
  %call = tail call zeroext i16 @wm8350_reg_read(ptr noundef %irq_data, i32 noundef 24) #5
  %call1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %irq_data, i32 noundef 32) #5
  %neg = xor i16 %call1, -1
  %and = and i16 %call, %neg
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and)
  %tobool.not = icmp eq i16 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %read_done, i32 0, i32 28)
  %conv5 = zext i16 %and to i32
  %irq_base = getelementptr inbounds %struct.wm8350, ptr %irq_data, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.058 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x %struct.wm8350_irq_data], ptr @wm8350_irqs, i32 0, i32 %i.058
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and6 = and i32 %3, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %reg = getelementptr [63 x %struct.wm8350_irq_data], ptr @wm8350_irqs, i32 0, i32 %i.058, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %arrayidx10 = getelementptr [7 x i32], ptr %read_done, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end28_crit_edge

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %5, 25
  %call14 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %irq_data, i32 noundef %add) #5
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %arrayidx16 = getelementptr [7 x i16], ptr %sub_reg, i32 0, i32 %9
  %arrayidx18 = getelementptr %struct.wm8350, ptr %irq_data, i32 0, i32 8, i32 %9
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx18, align 2
  %neg20 = xor i16 %11, -1
  %and24 = and i16 %call14, %neg20
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %and24, ptr %arrayidx16, align 2
  %arrayidx27 = getelementptr [7 x i32], ptr %read_done, i32 0, i32 %9
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %arrayidx27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then12, %if.end9.if.end28_crit_edge
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %arrayidx30 = getelementptr [7 x i16], ptr %sub_reg, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx30, align 2
  %conv31 = zext i16 %17 to i32
  %mask = getelementptr [63 x %struct.wm8350_irq_data], ptr @wm8350_irqs, i32 0, i32 %i.058, i32 2
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask, align 4
  %and32 = and i32 %19, %conv31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end28.for.inc_crit_edge, label %if.then34

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_base, align 4
  %add35 = add i32 %21, %i.058
  tail call void @handle_nested_irq(i32 noundef %add35) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %if.end28.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %read_done) #5
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %sub_reg) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_irq_exit(ptr noundef %wm8350) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_irq = getelementptr inbounds %struct.wm8350, ptr %wm8350, i32 0, i32 6
  %0 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %wm8350) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wm8350_irq_enable(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base.i = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base.i, align 4
  %sub.i = sub i32 %3, %5
  %mask = getelementptr [63 x %struct.wm8350_irq_data], ptr @wm8350_irqs, i32 0, i32 %sub.i, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %reg = getelementptr [63 x %struct.wm8350_irq_data], ptr @wm8350_irqs, i32 0, i32 %sub.i, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %arrayidx = getelementptr %struct.wm8350, ptr %1, i32 0, i32 8, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %12 = trunc i32 %7 to i16
  %13 = xor i16 %12, -1
  %conv2 = and i16 %11, %13
  store i16 %conv2, ptr %arrayidx, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wm8350_irq_disable(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base.i = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base.i, align 4
  %sub.i = sub i32 %3, %5
  %mask = getelementptr [63 x %struct.wm8350_irq_data], ptr @wm8350_irqs, i32 0, i32 %sub.i, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %reg = getelementptr [63 x %struct.wm8350_irq_data], ptr @wm8350_irqs, i32 0, i32 %sub.i, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %arrayidx = getelementptr %struct.wm8350, ptr %1, i32 0, i32 8, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %12 = trunc i32 %7 to i16
  %conv2 = or i16 %11, %12
  store i16 %conv2, ptr %arrayidx, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8350_irq_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_lock = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8350_irq_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %regmap = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr %struct.wm8350, ptr %1, i32 0, i32 8, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 33, i32 noundef 65535, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !35

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %arrayidx.1 = getelementptr %struct.wm8350, ptr %1, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %9 to i32
  %call.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 34, i32 noundef 65535, i32 noundef %conv.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %do.end.1, !prof !35

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

do.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #5
  br label %if.end.1

if.end.1:                                         ; preds = %do.end.1, %if.end.if.end.1_crit_edge
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %arrayidx.2 = getelementptr %struct.wm8350, ptr %1, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %13 to i32
  %call.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 35, i32 noundef 65535, i32 noundef %conv.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %do.end.2, !prof !35

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2

do.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #5
  br label %if.end.2

if.end.2:                                         ; preds = %do.end.2, %if.end.1.if.end.2_crit_edge
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %arrayidx.3 = getelementptr %struct.wm8350, ptr %1, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %17 to i32
  %call.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 36, i32 noundef 65535, i32 noundef %conv.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %do.end.3, !prof !35

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.3

do.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #5
  br label %if.end.3

if.end.3:                                         ; preds = %do.end.3, %if.end.2.if.end.3_crit_edge
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %arrayidx.4 = getelementptr %struct.wm8350, ptr %1, i32 0, i32 8, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %21 to i32
  %call.i.4 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 37, i32 noundef 65535, i32 noundef %conv.4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %do.end.4, !prof !35

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.4

do.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #5
  br label %if.end.4

if.end.4:                                         ; preds = %do.end.4, %if.end.3.if.end.4_crit_edge
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %arrayidx.5 = getelementptr %struct.wm8350, ptr %1, i32 0, i32 8, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %25 to i32
  %call.i.5 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 38, i32 noundef 65535, i32 noundef %conv.5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool.not.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %do.end.5, !prof !35

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.5

do.end.5:                                         ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #5
  br label %if.end.5

if.end.5:                                         ; preds = %do.end.5, %if.end.4.if.end.5_crit_edge
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %arrayidx.6 = getelementptr %struct.wm8350, ptr %1, i32 0, i32 8, i32 6
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %29 to i32
  %call.i.6 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 39, i32 noundef 65535, i32 noundef %conv.6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %tobool.not.6 = icmp eq i32 %call.i.6, 0
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %do.end.6, !prof !35

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.6

do.end.6:                                         ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #5
  br label %if.end.6

if.end.6:                                         ; preds = %do.end.6, %if.end.5.if.end.6_crit_edge
  %irq_lock = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %irq_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !19, !20, !21, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wm8350-irq.c", i32 471, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wm8350_irq_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wm8350_irq_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @wm8350_irq_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/mfd/wm8350-irq.c", i32 489, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/wm8350-irq.c", i32 498, i32 3}
!13 = !{ptr @wm8350_irq_init._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @wm8350_irq_init._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/wm8350-irq.c", i32 528, i32 8}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/wm8350-irq.c", i32 530, i32 3}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wm8350_irq_init._entry.10, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @wm8350_irq_init._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @wm8350_irq_chip, !23, !"wm8350_irq_chip", i1 false, i1 false}
!23 = !{!"../drivers/mfd/wm8350-irq.c", i32 455, i32 24}
!24 = !{ptr @wm8350_irqs, !25, !"wm8350_irqs", i1 false, i1 false}
!25 = !{!"../drivers/mfd/wm8350-irq.c", i32 41, i32 31}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
