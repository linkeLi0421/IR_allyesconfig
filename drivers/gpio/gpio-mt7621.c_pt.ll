; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-mt7621.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mt7621.c"
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk = type { ptr, ptr, i32, [3 x %struct.mtk_gc] }
%struct.mtk_gc = type { %struct.irq_chip, %struct.gpio_chip, %struct.spinlock, i32, i32, i32, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_mt7621__227_334_mediatek_gpio_driver_init6 = internal global ptr @mediatek_gpio_driver_init, section ".initcall6.init", align 4
@mediatek_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mediatek_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mediatek_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt7621_gpio\00", [20 x i8] zeroinitializer }, align 32
@mediatek_gpio_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7621-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mediatek_gpio_bank_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rg->lock\00", [22 x i8] zeroinitializer }, align 32
@mediatek_gpio_bank_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bgpio_init() failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek_gpio_bank_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-mt7621.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mediatek_gpio_bank_probe._entry_ptr = internal global ptr @mediatek_gpio_bank_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-bank%d\00", [22 x i8] zeroinitializer }, align 32
@mediatek_gpio_bank_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error requesting IRQ %d: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mediatek_gpio_bank_probe._entry_ptr.10 = internal global ptr @mediatek_gpio_bank_probe._entry.8, section ".printk_index", align 4
@mediatek_gpio_bank_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mediatek_gpio_bank_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mediatek_gpio_bank_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not register gpio %d, ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@mediatek_gpio_bank_probe._entry_ptr.13 = internal global ptr @mediatek_gpio_bank_probe._entry.11, section ".printk_index", align 4
@mediatek_gpio_bank_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 285, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"registering %d gpios\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mediatek_gpio_bank_probe._entry_ptr.17 = internal global ptr @mediatek_gpio_bank_probe._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"mediatek_gpio_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 326, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 329, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"mediatek_gpio_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 320, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 218, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 229, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 235, i32 51 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 260, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 275, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 277, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [30 x i8] c"../drivers/gpio/gpio-mt7621.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 285, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__initcall__kmod_gpio_mt7621__227_334_mediatek_gpio_driver_init6, ptr @mediatek_gpio_bank_probe._entry, ptr @mediatek_gpio_bank_probe._entry.11, ptr @mediatek_gpio_bank_probe._entry.14, ptr @mediatek_gpio_bank_probe._entry.8, ptr @mediatek_gpio_bank_probe._entry_ptr, ptr @mediatek_gpio_bank_probe._entry_ptr.10, ptr @mediatek_gpio_bank_probe._entry_ptr.13, ptr @mediatek_gpio_bank_probe._entry_ptr.17, ptr @mediatek_gpio_driver, ptr @.str, ptr @mediatek_gpio_match, ptr @mediatek_gpio_bank_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @mediatek_gpio_bank_probe.lock_key, ptr @mediatek_gpio_bank_probe.request_key, ptr @.str.12, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_gpio_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_gpio_bank_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_gpio_bank_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_gpio_bank_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_gpio_bank_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_gpio_bank_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_gpio_bank_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_gpio_bank_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mediatek_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mediatek_gpio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mediatek_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1656, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.mtk, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #7
  %gpio_irq = getelementptr inbounds %struct.mtk, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %gpio_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call9, ptr %gpio_irq, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8
  %i.045 = phi i32 [ 0, %if.end8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045
  %9 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 548)
  %lock.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @mediatek_gpio_bank_probe.__key, i16 noundef signext 3) #7
  %bank2.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 3
  %10 = ptrtoint ptr %bank2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.045, ptr %bank2.i, align 4
  %base.i = getelementptr inbounds %struct.mtk, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 32
  %mul.i = shl i32 %i.045, 2
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr6.i = getelementptr i8, ptr %12, i32 48
  %add.ptr9.i = getelementptr i8, ptr %add.ptr6.i, i32 %mul.i
  %add.ptr11.i = getelementptr i8, ptr %12, i32 64
  %add.ptr14.i = getelementptr i8, ptr %add.ptr11.i, i32 %mul.i
  %add.ptr19.i = getelementptr i8, ptr %12, i32 %mul.i
  %chip.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1
  %call20.i = tail call i32 @bgpio_init(ptr noundef %chip.i, ptr noundef %dev1, i32 noundef 4, ptr noundef %add.ptr4.i, ptr noundef %add.ptr9.i, ptr noundef %add.ptr14.i, ptr noundef %add.ptr19.i, ptr noundef null, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end23.i

do.end23.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %of_gpio_n_cells.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 40
  %13 = ptrtoint ptr %of_gpio_n_cells.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %of_gpio_n_cells.i, align 4
  %of_xlate.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 41
  %14 = ptrtoint ptr %of_xlate.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mediatek_gpio_xlate, ptr %of_xlate.i, align 4
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.end.i.dev_name.exit.i_crit_edge ]
  %call27.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i, i32 noundef %i.045) #7
  %19 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call27.i, ptr %chip.i, align 4
  %tobool31.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool31.not.i, label %dev_name.exit.i.cleanup_crit_edge, label %if.end33.i

dev_name.exit.i.cleanup_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33.i:                                       ; preds = %dev_name.exit.i
  %bank.tr.i = trunc i32 %i.045 to i16
  %conv.i = shl i16 %bank.tr.i, 5
  %offset.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 21
  %20 = ptrtoint ptr %offset.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %offset.i, align 2
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i144.i = icmp eq ptr %22, null
  br i1 %tobool.not.i144.i, label %if.end.i145.i, label %if.end33.i.dev_name.exit147.i_crit_edge

if.end33.i.dev_name.exit147.i_crit_edge:          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit147.i

if.end.i145.i:                                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit147.i

dev_name.exit147.i:                               ; preds = %if.end.i145.i, %if.end33.i.dev_name.exit147.i_crit_edge
  %retval.0.i146.i = phi ptr [ %24, %if.end.i145.i ], [ %22, %if.end33.i.dev_name.exit147.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.irq_chip, ptr %arrayidx.i, i32 0, i32 1
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i146.i, ptr %name.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev1, ptr %arrayidx.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %arrayidx.i, i32 0, i32 9
  %27 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mediatek_gpio_irq_unmask, ptr %irq_unmask.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %arrayidx.i, i32 0, i32 7
  %28 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mediatek_gpio_irq_mask, ptr %irq_mask.i, align 4
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %arrayidx.i, i32 0, i32 8
  %29 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mediatek_gpio_irq_mask, ptr %irq_mask_ack.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.irq_chip, ptr %arrayidx.i, i32 0, i32 13
  %30 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mediatek_gpio_irq_type, ptr %irq_set_type.i, align 4
  %gpio_irq.i = getelementptr inbounds %struct.mtk, ptr %8, i32 0, i32 2
  %31 = ptrtoint ptr %gpio_irq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gpio_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool42.not.i = icmp eq i32 %32, 0
  br i1 %tobool42.not.i, label %dev_name.exit147.i.if.end59.i_crit_edge, label %if.then43.i

dev_name.exit147.i.if.end59.i_crit_edge:          ; preds = %dev_name.exit147.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.then43.i:                                      ; preds = %dev_name.exit147.i
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %32, ptr noundef nonnull @mediatek_gpio_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call27.i, ptr noundef %chip.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool49.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool49.not.i, label %if.end55.i, label %do.end53.i

do.end53.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_irq.i.le = getelementptr inbounds %struct.mtk, ptr %8, i32 0, i32 2
  %33 = ptrtoint ptr %gpio_irq.i.le to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gpio_irq.i.le, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %34, i32 noundef %call.i.i) #10
  br label %cleanup

if.end55.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 37
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx.i, ptr %irq.i, align 4
  %parent_handler.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 37, i32 13
  %36 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %parent_handler.i, align 4
  %num_parents.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 37, i32 15
  %37 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %num_parents.i, align 4
  %parents.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 37, i32 16
  %38 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %parents.i, align 4
  %default_type.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 37, i32 10
  %39 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %default_type.i, align 4
  %handler.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 37, i32 9
  %40 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @handle_simple_irq, ptr %handler.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end55.i, %dev_name.exit147.i.if.end59.i_crit_edge
  %call61.i = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %chip.i, ptr noundef %8, ptr noundef nonnull @mediatek_gpio_bank_probe.lock_key, ptr noundef nonnull @mediatek_gpio_bank_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp.i34 = icmp slt i32 %call61.i, 0
  br i1 %cmp.i34, label %do.end66.i, label %for.inc

do.end66.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  %ngpio.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 20
  %41 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ngpio.i, align 4
  %conv68.i = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %conv68.i, i32 noundef %call61.i) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end59.i
  %call.i148.i = tail call ptr @gpiochip_get_data(ptr noundef %chip.i) #7
  %43 = ptrtoint ptr %bank2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bank2.i, align 4
  %mul.i.i = shl i32 %44, 2
  %add.i.i = add i32 %mul.i.i, 16
  %write_reg.i.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 25
  %45 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_reg.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mtk, ptr %call.i148.i, i32 0, i32 1
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 %add.i.i
  tail call void %46(ptr noundef %add.ptr.i.i, i32 noundef 0) #7
  %ngpio74.i = getelementptr %struct.mtk, ptr %8, i32 0, i32 3, i32 %i.045, i32 1, i32 20
  %49 = ptrtoint ptr %ngpio74.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ngpio74.i, align 4
  %conv75.i = zext i16 %50 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %conv75.i) #10
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end66.i, %do.end53.i, %dev_name.exit.i.cleanup_crit_edge, %do.end23.i, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end53.i ], [ %call61.i, %do.end66.i ], [ %call20.i, %do.end23.i ], [ -12, %dev_name.exit.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mediatek_gpio_xlate(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %spec, ptr noundef writeonly %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %bank = getelementptr i8, ptr %chip, i32 392
  %2 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank, align 4
  %.frozen = freeze i32 %1
  %div = sdiv i32 %.frozen, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div)
  %cmp.not = icmp eq i32 %3, %div
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %flags, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %7 = mul i32 %div, 32
  %rem.decomposed = sub i32 %.frozen, %7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rem.decomposed, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mediatek_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %lock = getelementptr i8, ptr %1, i32 348
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %bank.i = getelementptr i8, ptr %1, i32 392
  %4 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %5, 2
  %add.i = add i32 %mul.i, 80
  %read_reg.i = getelementptr i8, ptr %1, i32 92
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 4
  %base.i = getelementptr inbounds %struct.mtk, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %9, i32 %add.i
  %call1.i = tail call i32 %7(ptr noundef %add.ptr.i38) #7
  %call.i40 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank.i, align 4
  %mul.i42 = shl i32 %11, 2
  %add.i43 = add i32 %mul.i42, 96
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 4
  %base.i45 = getelementptr inbounds %struct.mtk, ptr %call.i40, i32 0, i32 1
  %14 = ptrtoint ptr %base.i45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i45, align 4
  %add.ptr.i46 = getelementptr i8, ptr %15, i32 %add.i43
  %call1.i47 = tail call i32 %13(ptr noundef %add.ptr.i46) #7
  %call.i49 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %16 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bank.i, align 4
  %mul.i51 = shl i32 %17, 2
  %add.i52 = add i32 %mul.i51, 112
  %18 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg.i, align 4
  %base.i54 = getelementptr inbounds %struct.mtk, ptr %call.i49, i32 0, i32 1
  %20 = ptrtoint ptr %base.i54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %21, i32 %add.i52
  %call1.i56 = tail call i32 %19(ptr noundef %add.ptr.i55) #7
  %call.i58 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %22 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bank.i, align 4
  %mul.i60 = shl i32 %23, 2
  %add.i61 = add i32 %mul.i60, 128
  %24 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg.i, align 4
  %base.i63 = getelementptr inbounds %struct.mtk, ptr %call.i58, i32 0, i32 1
  %26 = ptrtoint ptr %base.i63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i63, align 4
  %add.ptr.i64 = getelementptr i8, ptr %27, i32 %add.i61
  %call1.i65 = tail call i32 %25(ptr noundef %add.ptr.i64) #7
  %shl = shl nuw i32 1, %3
  %rising = getelementptr i8, ptr %1, i32 396
  %28 = ptrtoint ptr %rising to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rising, align 4
  %and = and i32 %29, %shl
  %or = or i32 %and, %call1.i
  %call.i67 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %30 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bank.i, align 4
  %mul.i69 = shl i32 %31, 2
  %add.i70 = add i32 %mul.i69, 80
  %write_reg.i = getelementptr i8, ptr %1, i32 96
  %32 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg.i, align 4
  %base.i71 = getelementptr inbounds %struct.mtk, ptr %call.i67, i32 0, i32 1
  %34 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %35, i32 %add.i70
  tail call void %33(ptr noundef %add.ptr.i72, i32 noundef %or) #7
  %falling = getelementptr i8, ptr %1, i32 400
  %36 = ptrtoint ptr %falling to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %falling, align 4
  %and12 = and i32 %37, %shl
  %or13 = or i32 %and12, %call1.i47
  %call.i74 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %38 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bank.i, align 4
  %mul.i76 = shl i32 %39, 2
  %add.i77 = add i32 %mul.i76, 96
  %40 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg.i, align 4
  %base.i79 = getelementptr inbounds %struct.mtk, ptr %call.i74, i32 0, i32 1
  %42 = ptrtoint ptr %base.i79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i79, align 4
  %add.ptr.i80 = getelementptr i8, ptr %43, i32 %add.i77
  tail call void %41(ptr noundef %add.ptr.i80, i32 noundef %or13) #7
  %hlevel = getelementptr i8, ptr %1, i32 404
  %44 = ptrtoint ptr %hlevel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hlevel, align 4
  %and15 = and i32 %45, %shl
  %or16 = or i32 %and15, %call1.i56
  %call.i82 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %46 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bank.i, align 4
  %mul.i84 = shl i32 %47, 2
  %add.i85 = add i32 %mul.i84, 112
  %48 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg.i, align 4
  %base.i87 = getelementptr inbounds %struct.mtk, ptr %call.i82, i32 0, i32 1
  %50 = ptrtoint ptr %base.i87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %51, i32 %add.i85
  tail call void %49(ptr noundef %add.ptr.i88, i32 noundef %or16) #7
  %llevel = getelementptr i8, ptr %1, i32 408
  %52 = ptrtoint ptr %llevel to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %llevel, align 4
  %and18 = and i32 %53, %shl
  %or19 = or i32 %and18, %call1.i65
  %call.i90 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %54 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bank.i, align 4
  %mul.i92 = shl i32 %55, 2
  %add.i93 = add i32 %mul.i92, 128
  %56 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg.i, align 4
  %base.i95 = getelementptr inbounds %struct.mtk, ptr %call.i90, i32 0, i32 1
  %58 = ptrtoint ptr %base.i95 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %59, i32 %add.i93
  tail call void %57(ptr noundef %add.ptr.i96, i32 noundef %or19) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mediatek_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %lock = getelementptr i8, ptr %1, i32 348
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %bank.i = getelementptr i8, ptr %1, i32 392
  %4 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %5, 2
  %add.i = add i32 %mul.i, 80
  %read_reg.i = getelementptr i8, ptr %1, i32 92
  %6 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg.i, align 4
  %base.i = getelementptr inbounds %struct.mtk, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %9, i32 %add.i
  %call1.i = tail call i32 %7(ptr noundef %add.ptr.i34) #7
  %call.i36 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank.i, align 4
  %mul.i38 = shl i32 %11, 2
  %add.i39 = add i32 %mul.i38, 96
  %12 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_reg.i, align 4
  %base.i41 = getelementptr inbounds %struct.mtk, ptr %call.i36, i32 0, i32 1
  %14 = ptrtoint ptr %base.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %15, i32 %add.i39
  %call1.i43 = tail call i32 %13(ptr noundef %add.ptr.i42) #7
  %call.i45 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %16 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bank.i, align 4
  %mul.i47 = shl i32 %17, 2
  %add.i48 = add i32 %mul.i47, 112
  %18 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg.i, align 4
  %base.i50 = getelementptr inbounds %struct.mtk, ptr %call.i45, i32 0, i32 1
  %20 = ptrtoint ptr %base.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i50, align 4
  %add.ptr.i51 = getelementptr i8, ptr %21, i32 %add.i48
  %call1.i52 = tail call i32 %19(ptr noundef %add.ptr.i51) #7
  %call.i54 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %22 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bank.i, align 4
  %mul.i56 = shl i32 %23, 2
  %add.i57 = add i32 %mul.i56, 128
  %24 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg.i, align 4
  %base.i59 = getelementptr inbounds %struct.mtk, ptr %call.i54, i32 0, i32 1
  %26 = ptrtoint ptr %base.i59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i59, align 4
  %add.ptr.i60 = getelementptr i8, ptr %27, i32 %add.i57
  %call1.i61 = tail call i32 %25(ptr noundef %add.ptr.i60) #7
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %and = and i32 %call1.i43, %neg
  %call.i63 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %28 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bank.i, align 4
  %mul.i65 = shl i32 %29, 2
  %add.i66 = add i32 %mul.i65, 96
  %write_reg.i = getelementptr i8, ptr %1, i32 96
  %30 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg.i, align 4
  %base.i67 = getelementptr inbounds %struct.mtk, ptr %call.i63, i32 0, i32 1
  %32 = ptrtoint ptr %base.i67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %33, i32 %add.i66
  tail call void %31(ptr noundef %add.ptr.i68, i32 noundef %and) #7
  %and13 = and i32 %call1.i, %neg
  %call.i70 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %34 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bank.i, align 4
  %mul.i72 = shl i32 %35, 2
  %add.i73 = add i32 %mul.i72, 80
  %36 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg.i, align 4
  %base.i75 = getelementptr inbounds %struct.mtk, ptr %call.i70, i32 0, i32 1
  %38 = ptrtoint ptr %base.i75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i75, align 4
  %add.ptr.i76 = getelementptr i8, ptr %39, i32 %add.i73
  tail call void %37(ptr noundef %add.ptr.i76, i32 noundef %and13) #7
  %and16 = and i32 %call1.i52, %neg
  %call.i78 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %40 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bank.i, align 4
  %mul.i80 = shl i32 %41, 2
  %add.i81 = add i32 %mul.i80, 112
  %42 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg.i, align 4
  %base.i83 = getelementptr inbounds %struct.mtk, ptr %call.i78, i32 0, i32 1
  %44 = ptrtoint ptr %base.i83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i83, align 4
  %add.ptr.i84 = getelementptr i8, ptr %45, i32 %add.i81
  tail call void %43(ptr noundef %add.ptr.i84, i32 noundef %and16) #7
  %and19 = and i32 %call1.i61, %neg
  %call.i86 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %46 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bank.i, align 4
  %mul.i88 = shl i32 %47, 2
  %add.i89 = add i32 %mul.i88, 128
  %48 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg.i, align 4
  %base.i91 = getelementptr inbounds %struct.mtk, ptr %call.i86, i32 0, i32 1
  %50 = ptrtoint ptr %base.i91 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %51, i32 %add.i89
  tail call void %49(ptr noundef %add.ptr.i92, i32 noundef %and19) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mediatek_gpio_irq_type(ptr nocapture noundef readonly %d, i32 noundef %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %type)
  %cmp = icmp eq i32 %type, 16
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %rising = getelementptr i8, ptr %1, i32 396
  %4 = ptrtoint ptr %rising to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rising, align 4
  %falling = getelementptr i8, ptr %1, i32 400
  %6 = ptrtoint ptr %falling to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %falling, align 4
  %or = or i32 %7, %5
  %hlevel = getelementptr i8, ptr %1, i32 404
  %8 = ptrtoint ptr %hlevel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hlevel, align 4
  %or2 = or i32 %or, %9
  %llevel = getelementptr i8, ptr %1, i32 408
  %10 = ptrtoint ptr %llevel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %llevel, align 4
  %or3 = or i32 %or2, %11
  %and = and i32 %or3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %type.addr.0 = phi i32 [ %type, %entry.if.end5_crit_edge ], [ 3, %if.then.if.end5_crit_edge ]
  %neg = xor i32 %shl, -1
  %rising6 = getelementptr i8, ptr %1, i32 396
  %12 = ptrtoint ptr %rising6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rising6, align 4
  %and7 = and i32 %13, %neg
  store i32 %and7, ptr %rising6, align 4
  %falling9 = getelementptr i8, ptr %1, i32 400
  %14 = ptrtoint ptr %falling9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %falling9, align 4
  %and10 = and i32 %15, %neg
  store i32 %and10, ptr %falling9, align 4
  %hlevel12 = getelementptr i8, ptr %1, i32 404
  %16 = ptrtoint ptr %hlevel12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hlevel12, align 4
  %and13 = and i32 %17, %neg
  store i32 %and13, ptr %hlevel12, align 4
  %llevel15 = getelementptr i8, ptr %1, i32 408
  %18 = ptrtoint ptr %llevel15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %llevel15, align 4
  %and16 = and i32 %19, %neg
  store i32 %and16, ptr %llevel15, align 4
  %and17 = and i32 %type.addr.0, 15
  %20 = zext i32 %and17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and17, label %if.end5.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %if.end5.cleanup.sink.split_crit_edge
    i32 2, label %sw.bb25
    i32 4, label %sw.bb28
    i32 8, label %sw.bb31
  ]

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %or19 = or i32 %13, %shl
  %21 = ptrtoint ptr %rising6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or19, ptr %rising6, align 4
  br label %cleanup.sink.split

sw.bb25:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb28:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb31:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb, %if.end5.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %15, %sw.bb ], [ %15, %sw.bb25 ], [ %17, %sw.bb28 ], [ %19, %sw.bb31 ], [ %13, %if.end5.cleanup.sink.split_crit_edge ]
  %falling9.sink = phi ptr [ %falling9, %sw.bb ], [ %falling9, %sw.bb25 ], [ %hlevel12, %sw.bb28 ], [ %llevel15, %sw.bb31 ], [ %rising6, %if.end5.cleanup.sink.split_crit_edge ]
  %or21 = or i32 %.sink, %shl
  %22 = ptrtoint ptr %falling9.sink to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or21, ptr %falling9.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mediatek_gpio_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %data) #7
  %bank.i = getelementptr i8, ptr %data, i32 392
  %0 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bank.i, align 4
  %mul.i = shl i32 %1, 2
  %add.i = add i32 %mul.i, 144
  %read_reg.i = getelementptr i8, ptr %data, i32 92
  %2 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg.i, align 4
  %base.i = getelementptr inbounds %struct.mtk, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 %add.i
  %call1.i = tail call i32 %3(ptr noundef %add.ptr.i12) #7
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i, ptr %pending, align 4
  %call2 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2)
  %cmp20 = icmp slt i32 %call2, 32
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %data, i32 0, i32 37, i32 1
  %write_reg.i = getelementptr i8, ptr %data, i32 96
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.021 = phi i32 [ %call2, %for.body.lr.ph ], [ %call5, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain, align 4
  %call4 = call i32 @generic_handle_domain_irq(ptr noundef %8, i32 noundef %bit.021) #7
  %shl = shl nuw i32 1, %bit.021
  %call.i14 = call ptr @gpiochip_get_data(ptr noundef %data) #7
  %9 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bank.i, align 4
  %mul.i16 = shl i32 %10, 2
  %add.i17 = add i32 %mul.i16, 144
  %11 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg.i, align 4
  %base.i18 = getelementptr inbounds %struct.mtk, ptr %call.i14, i32 0, i32 1
  %13 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %14, i32 %add.i17
  call void %12(ptr noundef %add.ptr.i19, i32 noundef %shl) #7
  %add = add nsw i32 %bit.021, 1
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef %add) #7
  %cmp = icmp slt i32 %call5, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %for.body.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #7
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_gpio_mt7621__227_334_mediatek_gpio_driver_init6, !1, !"__initcall__kmod_gpio_mt7621__227_334_mediatek_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-mt7621.c", i32 334, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-mt7621.c", i32 329, i32 11}
!4 = !{ptr @mediatek_gpio_driver, !5, !"mediatek_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-mt7621.c", i32 326, i32 31}
!6 = !{ptr @mediatek_gpio_bank_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-mt7621.c", i32 218, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-mt7621.c", i32 229, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mediatek_gpio_bank_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @mediatek_gpio_bank_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-mt7621.c", i32 235, i32 51}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-mt7621.c", i32 260, i32 4}
!21 = !{ptr @mediatek_gpio_bank_probe._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @mediatek_gpio_bank_probe._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @mediatek_gpio_bank_probe.lock_key, !24, !"lock_key", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-mt7621.c", i32 275, i32 8}
!25 = !{ptr @mediatek_gpio_bank_probe.request_key, !24, !"request_key", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-mt7621.c", i32 277, i32 3}
!28 = !{ptr @mediatek_gpio_bank_probe._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mediatek_gpio_bank_probe._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-mt7621.c", i32 285, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mediatek_gpio_bank_probe._entry.14, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mediatek_gpio_bank_probe._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @mediatek_gpio_match, !36, !"mediatek_gpio_match", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-mt7621.c", i32 320, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
