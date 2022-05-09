; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-bcm6328.c_pt.bc'
source_filename = "../drivers/leds/leds-bcm6328.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.bcm6328_led = type { %struct.led_classdev, ptr, ptr, i32, ptr, ptr, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_bcm6328__174_481_bcm6328_leds_driver_init6 = internal global ptr @bcm6328_leds_driver_init, section ".initcall6.init", align 4
@bcm6328_leds_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm6328_leds_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm6328_leds_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm6328_leds_driver_exit = internal global ptr @bcm6328_leds_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [65 x i8] c"leds_bcm6328.author=\C3\81lvaro Fern\C3\A1ndez Rojas <noltari@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [52 x i8] c"leds_bcm6328.author=Jonas Gorski <jogo@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [60 x i8] c"leds_bcm6328.description=LED driver for BCM6328 controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [44 x i8] c"leds_bcm6328.file=drivers/leds/leds-bcm6328\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [28 x i8] c"leds_bcm6328.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias180 = internal constant [41 x i8] c"leds_bcm6328.alias=platform:leds-bcm6328\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds-bcm6328\00", [19 x i8] zeroinitializer }, align 32
@bcm6328_leds_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6328-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm6328_leds_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,serial-leds\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,serial-mux\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm,serial-clk-low\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm,serial-dat-low\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcm,serial-shift-inv\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@bcm6328_leds_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 448, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid LED (%u >= %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm6328_leds_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-bcm6328.c\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm6328_leds_probe._entry_ptr = internal global ptr @bcm6328_leds_probe._entry, section ".printk_index", align 4
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcm,hardware-controlled\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcm,link-signal-sources\00", [39 x i8] zeroinitializer }, align 32
@bcm6328_hwled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.10, i32 286, ptr @.str.17, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid link signal source\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm6328_hwled\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm6328_hwled._entry_ptr = internal global ptr @bcm6328_hwled._entry, section ".printk_index", align 4
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"brcm,activity-signal-sources\00", [35 x i8] zeroinitializer }, align 32
@bcm6328_hwled._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.10, i32 313, ptr @.str.17, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid activity signal source\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm6328_hwled._entry_ptr.21 = internal global ptr @bcm6328_hwled._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"active-low\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@bcm6328_led.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.10, ptr @.str.28, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds_bcm6328\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm6328_led\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"registered LED %s\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm6328_blink_set.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.10, ptr @.str.30, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm6328_blink_set\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"fallback to soft blinking (delay_on != delay_off)\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm6328_blink_set.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.10, ptr @.str.31, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fallback to soft blinking (delay > %ums)\0A\00", [54 x i8] zeroinitializer }, align 32
@bcm6328_blink_set.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.10, ptr @.str.32, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"fallback to soft blinking (delay already set)\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"bcm6328_leds_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 473, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 476, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"bcm6328_leds_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 467, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 419, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 427, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 429, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 431, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 433, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 435, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 443, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 447, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 452, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 271, i32 44 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 286, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 298, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 313, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 346, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 349, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 350, i32 22 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 352, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 387, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 177, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 183, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [31 x i8] c"../drivers/leds/leds-bcm6328.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 246, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias180, ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_bcm6328_leds_driver_exit, ptr @__initcall__kmod_leds_bcm6328__174_481_bcm6328_leds_driver_init6, ptr @bcm6328_hwled._entry, ptr @bcm6328_hwled._entry.19, ptr @bcm6328_hwled._entry_ptr, ptr @bcm6328_hwled._entry_ptr.21, ptr @bcm6328_leds_driver_exit, ptr @bcm6328_leds_probe._entry, ptr @bcm6328_leds_probe._entry_ptr, ptr @bcm6328_leds_driver, ptr @.str, ptr @bcm6328_leds_of_match, ptr @bcm6328_leds_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_leds_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_leds_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_leds_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_leds_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_hwled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm6328_hwled._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6328_leds_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm6328_leds_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm6328_leds_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm6328_leds_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6328_leds_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %sel.i = alloca i32, align 4
  %sel50.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup63

if.end:                                           ; preds = %dev_of_node.exit
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup63_crit_edge, label %if.end8

if.end.cleanup63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end8:                                          ; preds = %if.end
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup63_crit_edge, label %if.end12

if.end8.cleanup63_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end12:                                         ; preds = %if.end8
  %call5.i.i110 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool14.not = icmp eq ptr %call5.i.i110, null
  br i1 %tobool14.not, label %if.end12.cleanup63_crit_edge, label %do.body

if.end12.cleanup63_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

do.body:                                          ; preds = %if.end12
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @bcm6328_leds_probe.__key, i16 noundef signext 3) #6
  %add.ptr = getelementptr i8, ptr %call3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !92
  %add.ptr18 = getelementptr i8, ptr %call3, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #6, !srcloc !92
  %add.ptr19 = getelementptr i8, ptr %call3, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #6, !srcloc !92
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call3) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %and = and i32 %3, -126977
  %call.i111 = tail call ptr @of_find_property(ptr noundef %retval.0.i, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i111, null
  %or = or i32 %and, 4096
  %spec.select = select i1 %tobool.i.not, i32 %and, i32 %or
  %call.i112 = tail call ptr @of_find_property(ptr noundef %retval.0.i, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %tobool.i113.not = icmp eq ptr %call.i112, null
  %or27 = or i32 %spec.select, 8192
  %val.1 = select i1 %tobool.i113.not, i32 %spec.select, i32 %or27
  %call.i114 = tail call ptr @of_find_property(ptr noundef %retval.0.i, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %tobool.i115.not = icmp eq ptr %call.i114, null
  %or31 = or i32 %val.1, 16384
  %val.2 = select i1 %tobool.i115.not, i32 %val.1, i32 %or31
  %call.i116 = tail call ptr @of_find_property(ptr noundef %retval.0.i, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %tobool.i117.not = icmp eq ptr %call.i116, null
  %or35 = or i32 %val.2, 32768
  %val.3 = select i1 %tobool.i117.not, i32 %or35, i32 %val.2
  %call.i118 = tail call ptr @of_find_property(ptr noundef %retval.0.i, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool.i119.not = icmp eq ptr %call.i118, null
  %or39 = or i32 %val.3, 65536
  %val.4 = select i1 %tobool.i119.not, i32 %or39, i32 %val.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call3, i32 %val.4) #6, !srcloc !92
  %call42 = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef null) #6
  %cmp.not129 = icmp eq ptr %call42, null
  br i1 %cmp.not129, label %do.body.cleanup63_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup63_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %child.0130 = phi ptr [ %call62, %for.inc.for.body_crit_edge ], [ %call42, %do.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !95
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0130, ptr noundef nonnull @.str.7, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool44.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool44.not, label %if.end46, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end46:                                         ; preds = %for.body
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %6)
  %cmp47 = icmp ugt i32 %6, 23
  br i1 %cmp47, label %do.end51, label %if.end52

do.end51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %6, i32 noundef 24) #9
  br label %for.inc

if.end52:                                         ; preds = %if.end46
  %call.i120 = call ptr @of_find_property(ptr noundef nonnull %child.0130, ptr noundef nonnull @.str.13, ptr noundef null) #6
  %tobool.i121.not = icmp eq ptr %call.i120, null
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  br i1 %tobool.i121.not, label %if.end57, label %if.then54

if.then54:                                        ; preds = %if.end52
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call.i) #6
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %shl.i = shl nuw i32 1, %8
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %9, %neg.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and.i) #6, !srcloc !92
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call.i, i32 noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp7.i = icmp ugt i32 %8, 7
  br i1 %cmp7.i, label %if.then54.for.inc_crit_edge, label %if.end.i122

if.then54.for.inc_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i122:                                      ; preds = %if.then54
  %call9.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0130, ptr noundef nonnull @.str.14, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp105.i = icmp sgt i32 %call9.i, 0
  br i1 %cmp105.i, label %for.body.lr.ph.i, label %if.end.i122.for.end.i_crit_edge

if.end.i122.for.end.i_crit_edge:                  ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp12.i = icmp ult i32 %8, 4
  %addr.0.v.i = select i1 %cmp12.i, i32 24, i32 20
  %addr.0.i = getelementptr i8, ptr %call3, i32 %addr.0.v.i
  %rem.i = and i32 %8, 3
  %shl41.i = shl nuw nsw i32 1, %rem.i
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i) #6
  %10 = ptrtoint ptr %sel.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %sel.i, align 4, !annotation !95
  %call18.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0130, ptr noundef nonnull @.str.14, i32 noundef %i.06.i, ptr noundef nonnull %sel.i) #6
  %11 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sel.i, align 4
  %cmp20.not.unshifted.i = xor i32 %12, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cmp20.not.unshifted.i)
  %cmp20.not.i = icmp ult i32 %cmp20.not.unshifted.i, 4
  br i1 %cmp20.not.i, label %do.body28.i, label %do.end25.i

do.end25.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %cleanup.i

do.body28.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call35.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call.i) #6
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr.0.i) #6, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %14 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sel.i, align 4
  %rem42.i = shl i32 %15, 2
  %mul.i = and i32 %rem42.i, 12
  %add.i = or i32 %mul.i, 16
  %shl43.i = shl i32 %shl41.i, %add.i
  %or.i = or i32 %shl43.i, %13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr.0.i, i32 %or.i) #6, !srcloc !92
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call.i, i32 noundef %call35.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body28.i, %do.end25.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i) #6
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call9.i
  br i1 %exitcond.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i122.for.end.i_crit_edge
  %call45.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0130, ptr noundef nonnull @.str.18, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp477.i = icmp sgt i32 %call45.i, 0
  br i1 %cmp477.i, label %for.body49.lr.ph.i, label %for.end.i.for.inc_crit_edge

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body49.lr.ph.i:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp52.i = icmp ult i32 %8, 4
  %addr51.0.v.i = select i1 %cmp52.i, i32 24, i32 20
  %addr51.0.i = getelementptr i8, ptr %call3, i32 %addr51.0.v.i
  %rem83.i = and i32 %8, 3
  %shl84.i = shl nuw nsw i32 1, %rem83.i
  br label %for.body49.i

for.body49.i:                                     ; preds = %cleanup89.i.for.body49.i_crit_edge, %for.body49.lr.ph.i
  %i.18.i = phi i32 [ 0, %for.body49.lr.ph.i ], [ %inc94.i, %cleanup89.i.for.body49.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel50.i) #6
  %16 = ptrtoint ptr %sel50.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %sel50.i, align 4, !annotation !95
  %call59.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0130, ptr noundef nonnull @.str.18, i32 noundef %i.18.i, ptr noundef nonnull %sel50.i) #6
  %17 = ptrtoint ptr %sel50.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sel50.i, align 4
  %cmp62.not.unshifted.i = xor i32 %18, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cmp62.not.unshifted.i)
  %cmp62.not.i = icmp ult i32 %cmp62.not.unshifted.i, 4
  br i1 %cmp62.not.i, label %do.body70.i, label %do.end67.i

do.end67.i:                                       ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  br label %cleanup89.i

do.body70.i:                                      ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #8
  %call77.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call.i) #6
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr51.0.i) #6, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %20 = ptrtoint ptr %sel50.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sel50.i, align 4
  %rem85.i = shl i32 %21, 2
  %mul86.i = and i32 %rem85.i, 12
  %shl87.i = shl nuw nsw i32 %shl84.i, %mul86.i
  %or88.i = or i32 %shl87.i, %19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr51.0.i, i32 %or88.i) #6, !srcloc !92
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call.i, i32 noundef %call77.i) #6
  br label %cleanup89.i

cleanup89.i:                                      ; preds = %do.body70.i, %do.end67.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel50.i) #6
  %inc94.i = add nuw nsw i32 %i.18.i, 1
  %exitcond9.not.i = icmp eq i32 %inc94.i, %call45.i
  br i1 %exitcond9.not.i, label %cleanup89.i.for.inc_crit_edge, label %cleanup89.i.for.body49.i_crit_edge

cleanup89.i.for.body49.i_crit_edge:               ; preds = %cleanup89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body49.i

cleanup89.i.for.inc_crit_edge:                    ; preds = %cleanup89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end57:                                         ; preds = %if.end52
  %call56 = call fastcc i32 @bcm6328_led(ptr noundef %dev1, ptr noundef nonnull %child.0130, i32 noundef %8, ptr noundef %call3, ptr noundef nonnull %call.i, ptr noundef nonnull %call5.i.i, ptr noundef nonnull %call5.i.i110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp58 = icmp slt i32 %call56, 0
  br i1 %cmp58, label %cleanup, label %if.end57.for.inc_crit_edge

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %child.0130) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  br label %cleanup63

for.inc:                                          ; preds = %if.end57.for.inc_crit_edge, %cleanup89.i.for.inc_crit_edge, %for.end.i.for.inc_crit_edge, %if.then54.for.inc_crit_edge, %do.end51, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  %call62 = call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef nonnull %child.0130) #6
  %cmp.not = icmp eq ptr %call62, null
  br i1 %cmp.not, label %for.inc.cleanup63_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup63_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

cleanup63:                                        ; preds = %for.inc.cleanup63_crit_edge, %cleanup, %do.body.cleanup63_crit_edge, %if.end12.cleanup63_crit_edge, %if.end8.cleanup63_crit_edge, %if.end.cleanup63_crit_edge, %if.then
  %retval.2 = phi i32 [ %2, %if.then ], [ %call56, %cleanup ], [ -12, %if.end.cleanup63_crit_edge ], [ -12, %if.end8.cleanup63_crit_edge ], [ -12, %if.end12.cleanup63_crit_edge ], [ 0, %do.body.cleanup63_crit_edge ], [ 0, %for.inc.cleanup63_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm6328_led(ptr noundef %dev, ptr noundef %nc, i32 noundef %reg, ptr noundef %mem, ptr noundef %lock, ptr noundef %blink_leds, ptr noundef %blink_delay) unnamed_addr #2 align 64 {
entry:
  %init_data = alloca %struct.led_init_data, align 4
  %state = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %0 = call ptr @memset(ptr %init_data, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #6
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %state, align 4, !annotation !95
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 424, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pin = getelementptr inbounds %struct.bcm6328_led, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %reg, ptr %pin, align 4
  %mem1 = getelementptr inbounds %struct.bcm6328_led, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %mem1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mem, ptr %mem1, align 4
  %lock2 = getelementptr inbounds %struct.bcm6328_led, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lock, ptr %lock2, align 4
  %blink_leds3 = getelementptr inbounds %struct.bcm6328_led, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %blink_leds3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %blink_leds, ptr %blink_leds3, align 4
  %blink_delay4 = getelementptr inbounds %struct.bcm6328_led, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %blink_delay4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %blink_delay, ptr %blink_delay4, align 4
  %call.i103 = tail call ptr @of_find_property(ptr noundef %nc, ptr noundef nonnull @.str.22, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i103, null
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %active_low = getelementptr inbounds %struct.bcm6328_led, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %active_low to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %active_low, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = call i32 @of_property_read_string(ptr noundef %nc, ptr noundef nonnull @.str.23, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end46_crit_edge

if.end7.if.end46_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then10:                                        ; preds = %if.end7
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %call11 = call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(3) @.str.24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end46_crit_edge, label %if.else

if.then10.if.end46_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.else:                                          ; preds = %if.then10
  %call14 = call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(5) @.str.25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else.if.end46_crit_edge

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then16:                                        ; preds = %if.else
  %10 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp.i = icmp ult i32 %11, 8
  %retval.0.v.i = select i1 %cmp.i, i32 16, i32 -8
  %retval.0.i104 = add i32 %retval.0.v.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %retval.0.i104)
  %tobool19.not = icmp ult i32 %retval.0.i104, 16
  %mode.0.v = select i1 %tobool19.not, i32 8, i32 4
  %mode.0 = getelementptr i8, ptr %mem, i32 %mode.0.v
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mode.0) #6, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %rem = shl i32 %retval.0.i104, 1
  %shl = and i32 %rem, 30
  %shr = lshr i32 %12, %shl
  %and = and i32 %shr, 3
  %active_low25 = getelementptr inbounds %struct.bcm6328_led, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %active_low25 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %active_low25, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool26.not = icmp ne i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  %or.cond = select i1 %tobool26.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then16.if.end46_crit_edge, label %lor.lhs.false

if.then16.if.end46_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

lor.lhs.false:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool28.not = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp30 = icmp eq i32 %and, 0
  %or.cond102 = select i1 %tobool28.not, i1 %cmp30, i1 false
  %spec.select106 = select i1 %or.cond102, i32 255, i32 0
  br label %if.end46

if.end46:                                         ; preds = %lor.lhs.false, %if.then16.if.end46_crit_edge, %if.else.if.end46_crit_edge, %if.then10.if.end46_crit_edge, %if.end7.if.end46_crit_edge
  %.sink = phi i32 [ 255, %if.then10.if.end46_crit_edge ], [ 255, %if.then16.if.end46_crit_edge ], [ 0, %if.else.if.end46_crit_edge ], [ 0, %if.end7.if.end46_crit_edge ], [ %spec.select106, %lor.lhs.false ]
  %brightness33 = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %brightness33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %brightness33, align 4
  call void @bcm6328_led_set(ptr noundef nonnull %call.i, i32 noundef %.sink)
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bcm6328_led_set, ptr %brightness_set, align 4
  %blink_set = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bcm6328_blink_set, ptr %blink_set, align 4
  %tobool52.not = icmp eq ptr %nc, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %nc, i32 0, i32 3
  %spec.select = select i1 %tobool52.not, ptr null, ptr %fwnode
  %18 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select, ptr %init_data, align 4
  %call55 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %init_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end46.cleanup_crit_edge, label %do.body

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm6328_led.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm6328_led, %if.then64)) #6
          to label %cleanup [label %if.then64], !srcloc !97

if.then64:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm6328_led.__UNIQUE_ID_ddebug173, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %do.body, %if.end46.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call55, %if.end46.cleanup_crit_edge ], [ 0, %if.then64 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm6328_led_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %pin = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 3
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %blink_leds = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 4
  %4 = ptrtoint ptr %blink_leds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blink_leds, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %5, align 4
  %8 = load i32, ptr %pin, align 4
  %shl7 = shl nuw i32 1, %8
  %neg8 = xor i32 %shl7, -1
  %9 = load ptr, ptr %blink_leds, align 4
  %arrayidx10 = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %and11 = and i32 %11, %neg8
  store i32 %and11, ptr %arrayidx10, align 4
  %active_low = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 6
  %12 = ptrtoint ptr %active_low to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active_low, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp ne i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp13 = icmp eq i32 %value, 0
  %or.cond45 = xor i1 %cmp13, %tobool.not
  %14 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp.i.i33 = icmp ult i32 %15, 8
  %retval.0.v.i.i34 = select i1 %cmp.i.i33, i32 16, i32 -8
  %retval.0.i.i35 = add i32 %retval.0.v.i.i34, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %retval.0.i.i35)
  %tobool.not.i36 = icmp ult i32 %retval.0.i.i35, 16
  %mem1.i37 = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 1
  %16 = ptrtoint ptr %mem1.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem1.i37, align 4
  %..i38 = select i1 %tobool.not.i36, i32 8, i32 4
  %add.ptr2.i39 = getelementptr i8, ptr %17, i32 %..i38
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i39) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %rem.i40 = shl i32 %retval.0.i.i35, 1
  %shl.i41 = and i32 %rem.i40, 30
  %shl4.i42 = shl nuw i32 3, %shl.i41
  br i1 %or.cond45, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %shl4.i42, -1
  %and.i = and i32 %18, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i39, i32 %and.i) #6, !srcloc !92
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %shl4.i42, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i39, i32 %or.i) #6, !srcloc !92
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm6328_blink_set(ptr nocapture noundef readonly %led_cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 500, ptr %delay_on, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 500, ptr %delay_off, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %6 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay_on, align 4
  %add.i = add i32 %7, 10
  %div.i = udiv i32 %add.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %add.i)
  %8 = icmp ult i32 %add.i, 20
  %spec.store.select.i = select i1 %8, i32 1, i32 %div.i
  %9 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay_off, align 4
  %add.i185 = add i32 %10, 10
  %div.i186 = udiv i32 %add.i185, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %add.i185)
  %11 = icmp ult i32 %add.i185, 20
  %spec.store.select.i187 = select i1 %11, i32 1, i32 %div.i186
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %spec.store.select.i187)
  %cmp.not = icmp eq i32 %spec.store.select.i, %spec.store.select.i187
  br i1 %cmp.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm6328_blink_set.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm6328_blink_set, %if.then11)) #6
          to label %cleanup [label %if.then11], !srcloc !97

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm6328_blink_set.__UNIQUE_ID_ddebug170, ptr noundef %13, ptr noundef nonnull @.str.30) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %spec.store.select.i)
  %cmp14 = icmp ugt i32 %spec.store.select.i, 63
  br i1 %cmp14, label %do.body16, label %do.body35

do.body16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm6328_blink_set.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm6328_blink_set, %if.then28)) #6
          to label %cleanup [label %if.then28], !srcloc !97

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %dev29 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %14 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm6328_blink_set.__UNIQUE_ID_ddebug171, ptr noundef %15, ptr noundef nonnull @.str.31, i32 noundef 1260) #6
  br label %cleanup

do.body35:                                        ; preds = %if.end13
  %lock = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 2
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #6
  %blink_leds = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 4
  %18 = ptrtoint ptr %blink_leds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %blink_leds, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp44 = icmp eq i32 %21, 0
  br i1 %cmp44, label %do.body35.if.then54_crit_edge, label %lor.lhs.false

do.body35.if.then54_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

lor.lhs.false:                                    ; preds = %do.body35
  %pin = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 3
  %22 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pin, align 4
  %shl = shl nuw i32 1, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %shl)
  %cmp48 = icmp eq i32 %21, %shl
  br i1 %cmp48, label %lor.lhs.false.if.then54_crit_edge, label %lor.lhs.false50

lor.lhs.false.if.then54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

lor.lhs.false50:                                  ; preds = %lor.lhs.false
  %blink_delay = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 5
  %24 = ptrtoint ptr %blink_delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %blink_delay, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %spec.store.select.i)
  %cmp52 = icmp eq i32 %27, %spec.store.select.i
  br i1 %cmp52, label %lor.lhs.false50.if.then54_crit_edge, label %if.else

lor.lhs.false50.if.then54_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

if.then54:                                        ; preds = %lor.lhs.false50.if.then54_crit_edge, %lor.lhs.false.if.then54_crit_edge, %do.body35.if.then54_crit_edge
  %pin55 = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 3
  %28 = ptrtoint ptr %pin55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pin55, align 4
  %shl56 = shl nuw i32 1, %29
  %or = or i32 %shl56, %21
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %19, align 4
  %31 = load i32, ptr %pin55, align 4
  %shl60 = shl nuw i32 1, %31
  %neg = xor i32 %shl60, -1
  %32 = ptrtoint ptr %blink_leds to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %blink_leds, align 4
  %arrayidx62 = getelementptr i32, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx62, align 4
  %and = and i32 %35, %neg
  store i32 %and, ptr %arrayidx62, align 4
  %blink_delay63 = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 5
  %36 = ptrtoint ptr %blink_delay63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %blink_delay63, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.store.select.i, ptr %37, align 4
  %mem = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 1
  %39 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %and67 = and i32 %41, -64
  %or69 = or i32 %and67, %spec.store.select.i
  %42 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mem, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %or69) #6, !srcloc !92
  %44 = ptrtoint ptr %pin55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pin55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %45)
  %cmp.i.i = icmp ult i32 %45, 8
  %retval.0.v.i.i = select i1 %cmp.i.i, i32 16, i32 -8
  %retval.0.i.i = add i32 %retval.0.v.i.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %retval.0.i.i)
  %tobool.not.i = icmp ult i32 %retval.0.i.i, 16
  %46 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mem, align 4
  %..i = select i1 %tobool.not.i, i32 8, i32 4
  %add.ptr2.i = getelementptr i8, ptr %47, i32 %..i
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %rem.i = shl i32 %retval.0.i.i, 1
  %shl.i = and i32 %rem.i, 30
  %shl4.i = shl nuw i32 3, %shl.i
  %neg.i = xor i32 %shl4.i, -1
  %and.i = and i32 %48, %neg.i
  %shl7.i = shl nuw nsw i32 1, %shl.i
  %or.i = or i32 %and.i, %shl7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %or.i) #6, !srcloc !92
  br label %if.end130

if.else:                                          ; preds = %lor.lhs.false50
  %arrayidx73 = getelementptr i32, ptr %19, i32 1
  %49 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp74 = icmp eq i32 %50, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %shl)
  %cmp81 = icmp eq i32 %50, %shl
  %or.cond = select i1 %cmp74, i1 true, i1 %cmp81
  br i1 %or.cond, label %if.else.if.then88_crit_edge, label %lor.lhs.false83

if.else.if.then88_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

lor.lhs.false83:                                  ; preds = %if.else
  %arrayidx85 = getelementptr i32, ptr %25, i32 1
  %51 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %spec.store.select.i)
  %cmp86 = icmp eq i32 %52, %spec.store.select.i
  br i1 %cmp86, label %lor.lhs.false83.if.then88_crit_edge, label %do.body112

lor.lhs.false83.if.then88_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

if.then88:                                        ; preds = %lor.lhs.false83.if.then88_crit_edge, %if.else.if.then88_crit_edge
  %neg92 = xor i32 %shl, -1
  %and95 = and i32 %21, %neg92
  %53 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and95, ptr %19, align 4
  %54 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pin, align 4
  %shl97 = shl nuw i32 1, %55
  %56 = ptrtoint ptr %blink_leds to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %blink_leds, align 4
  %arrayidx99 = getelementptr i32, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx99, align 4
  %or100 = or i32 %59, %shl97
  store i32 %or100, ptr %arrayidx99, align 4
  %60 = ptrtoint ptr %blink_delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %blink_delay, align 4
  %arrayidx102 = getelementptr i32, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %spec.store.select.i, ptr %arrayidx102, align 4
  %mem103 = getelementptr inbounds %struct.bcm6328_led, ptr %led_cdev, i32 0, i32 1
  %63 = ptrtoint ptr %mem103 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mem103, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %and106 = and i32 %65, -4033
  %shl107 = shl nuw nsw i32 %spec.store.select.i, 6
  %or108 = or i32 %and106, %shl107
  %66 = ptrtoint ptr %mem103 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mem103, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %or108) #6, !srcloc !92
  %68 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %69)
  %cmp.i.i189 = icmp ult i32 %69, 8
  %retval.0.v.i.i190 = select i1 %cmp.i.i189, i32 16, i32 -8
  %retval.0.i.i191 = add i32 %retval.0.v.i.i190, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %retval.0.i.i191)
  %tobool.not.i192 = icmp ult i32 %retval.0.i.i191, 16
  %70 = ptrtoint ptr %mem103 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mem103, align 4
  %..i194 = select i1 %tobool.not.i192, i32 8, i32 4
  %add.ptr2.i195 = getelementptr i8, ptr %71, i32 %..i194
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i195) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %rem.i196 = shl i32 %retval.0.i.i191, 1
  %shl.i197 = and i32 %rem.i196, 30
  %shl4.i198 = shl nuw i32 3, %shl.i197
  %neg.i199 = xor i32 %shl4.i198, -1
  %and.i200 = and i32 %72, %neg.i199
  %shl7.i201 = shl nuw i32 2, %shl.i197
  %or.i202 = or i32 %and.i200, %shl7.i201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i195, i32 %or.i202) #6, !srcloc !92
  br label %if.end130

do.body112:                                       ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm6328_blink_set.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm6328_blink_set, %if.then124)) #6
          to label %if.end130 [label %if.then124], !srcloc !97

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #8
  %dev125 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %73 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev125, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm6328_blink_set.__UNIQUE_ID_ddebug172, ptr noundef %74, ptr noundef nonnull @.str.32) #6
  br label %if.end130

if.end130:                                        ; preds = %if.then124, %do.body112, %if.then88, %if.then54
  %rc.0 = phi i32 [ 0, %if.then54 ], [ 0, %if.then88 ], [ -22, %if.then124 ], [ -22, %do.body112 ]
  %75 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %76, i32 noundef %call39) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.then28, %do.body16, %if.then11, %do.body
  %retval.0 = phi i32 [ %rc.0, %if.end130 ], [ -22, %if.then11 ], [ -22, %if.then28 ], [ -22, %do.body ], [ -22, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !45, !47, !48, !49, !50, !51, !53, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_leds_bcm6328__174_481_bcm6328_leds_driver_init6, !1, !"__initcall__kmod_leds_bcm6328__174_481_bcm6328_leds_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-bcm6328.c", i32 481, i32 1}
!2 = !{ptr @__exitcall_bcm6328_leds_driver_exit, !1, !"__exitcall_bcm6328_leds_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author175, !4, !"__UNIQUE_ID_author175", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-bcm6328.c", i32 483, i32 1}
!5 = !{ptr @__UNIQUE_ID_author176, !6, !"__UNIQUE_ID_author176", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-bcm6328.c", i32 484, i32 1}
!7 = !{ptr @__UNIQUE_ID_description177, !8, !"__UNIQUE_ID_description177", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-bcm6328.c", i32 485, i32 1}
!9 = !{ptr @__UNIQUE_ID_file178, !10, !"__UNIQUE_ID_file178", i1 false, i1 false}
!10 = !{!"../drivers/leds/leds-bcm6328.c", i32 486, i32 1}
!11 = !{ptr @__UNIQUE_ID_license179, !10, !"__UNIQUE_ID_license179", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias180, !13, !"__UNIQUE_ID_alias180", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-bcm6328.c", i32 487, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-bcm6328.c", i32 476, i32 11}
!16 = !{ptr @bcm6328_leds_driver, !17, !"bcm6328_leds_driver", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-bcm6328.c", i32 473, i32 31}
!18 = !{ptr @bcm6328_leds_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-bcm6328.c", i32 419, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/leds/leds-bcm6328.c", i32 427, i32 32}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/leds/leds-bcm6328.c", i32 429, i32 32}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/leds-bcm6328.c", i32 431, i32 32}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-bcm6328.c", i32 433, i32 33}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-bcm6328.c", i32 435, i32 33}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-bcm6328.c", i32 443, i32 35}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-bcm6328.c", i32 447, i32 4}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bcm6328_leds_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @bcm6328_leds_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-bcm6328.c", i32 452, i32 36}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-bcm6328.c", i32 271, i32 44}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/leds/leds-bcm6328.c", i32 286, i32 4}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @bcm6328_hwled._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @bcm6328_hwled._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-bcm6328.c", i32 298, i32 12}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/leds-bcm6328.c", i32 313, i32 4}
!55 = !{ptr @bcm6328_hwled._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bcm6328_hwled._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/leds/leds-bcm6328.c", i32 346, i32 32}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-bcm6328.c", i32 349, i32 35}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/leds/leds-bcm6328.c", i32 350, i32 22}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/leds/leds-bcm6328.c", i32 352, i32 29}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/leds/leds-bcm6328.c", i32 387, i32 2}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @bcm6328_led.__UNIQUE_ID_ddebug173, !66, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/leds-bcm6328.c", i32 177, i32 3}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @bcm6328_blink_set.__UNIQUE_ID_ddebug170, !71, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/leds/leds-bcm6328.c", i32 183, i32 3}
!76 = !{ptr @bcm6328_blink_set.__UNIQUE_ID_ddebug171, !75, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/leds/leds-bcm6328.c", i32 246, i32 3}
!79 = !{ptr @bcm6328_blink_set.__UNIQUE_ID_ddebug172, !78, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!80 = !{ptr @bcm6328_leds_of_match, !81, !"bcm6328_leds_of_match", i1 false, i1 false}
!81 = !{!"../drivers/leds/leds-bcm6328.c", i32 467, i32 34}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2152484132}
!92 = !{i64 696208}
!93 = !{i64 696626}
!94 = !{i64 2152484465}
!95 = !{!"auto-init"}
!96 = !{i8 0, i8 2}
!97 = !{i64 2148163365, i64 2148163370, i64 2148163383, i64 2148163427, i64 2148163461, i64 2148163482}
